DROP TABLE fy_activity;

CREATE TABLE `fy_activity` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '活动表',
  `main_pic` varchar(255) DEFAULT NULL COMMENT '活动主图',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `name` varchar(32) DEFAULT NULL COMMENT '活动名称',
  `start_date` int(11) DEFAULT NULL COMMENT '活动开始时间 ',
  `end_date` int(11) DEFAULT NULL COMMENT '活动结束时间',
  `url` varchar(255) DEFAULT NULL COMMENT '活动链接',
  `detail` text COMMENT '活动详情描述',
  `lottery_name` varchar(255) DEFAULT NULL COMMENT '奖券名称',
  `lottery_id` int(11) DEFAULT NULL COMMENT '关联奖券id',
  `update_time` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1' COMMENT '0否1是',
  `isdelete` tinyint(1) DEFAULT '0' COMMENT '0否1是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE fy_admin_access;

CREATE TABLE `fy_admin_access` (
  `role_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `node_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0',
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

INSERT INTO fy_admin_access VALUES("3","157","3","153");
INSERT INTO fy_admin_access VALUES("3","156","3","153");
INSERT INTO fy_admin_access VALUES("3","155","3","153");
INSERT INTO fy_admin_access VALUES("3","153","2","1");
INSERT INTO fy_admin_access VALUES("3","149","3","145");
INSERT INTO fy_admin_access VALUES("3","148","3","145");
INSERT INTO fy_admin_access VALUES("3","147","3","145");
INSERT INTO fy_admin_access VALUES("3","146","3","145");
INSERT INTO fy_admin_access VALUES("3","145","2","1");
INSERT INTO fy_admin_access VALUES("3","134","3","130");
INSERT INTO fy_admin_access VALUES("3","133","3","130");
INSERT INTO fy_admin_access VALUES("3","132","3","130");
INSERT INTO fy_admin_access VALUES("3","131","3","130");
INSERT INTO fy_admin_access VALUES("3","130","2","1");
INSERT INTO fy_admin_access VALUES("3","127","3","123");
INSERT INTO fy_admin_access VALUES("3","126","3","123");
INSERT INTO fy_admin_access VALUES("3","125","3","123");
INSERT INTO fy_admin_access VALUES("3","124","3","123");
INSERT INTO fy_admin_access VALUES("3","123","2","1");
INSERT INTO fy_admin_access VALUES("3","121","3","117");
INSERT INTO fy_admin_access VALUES("3","120","3","117");
INSERT INTO fy_admin_access VALUES("3","119","3","117");
INSERT INTO fy_admin_access VALUES("3","118","3","117");
INSERT INTO fy_admin_access VALUES("3","117","2","1");
INSERT INTO fy_admin_access VALUES("3","116","3","112");
INSERT INTO fy_admin_access VALUES("3","115","3","112");
INSERT INTO fy_admin_access VALUES("3","114","3","112");
INSERT INTO fy_admin_access VALUES("3","113","3","112");
INSERT INTO fy_admin_access VALUES("3","112","2","1");
INSERT INTO fy_admin_access VALUES("3","111","3","86");
INSERT INTO fy_admin_access VALUES("3","110","3","86");
INSERT INTO fy_admin_access VALUES("3","109","3","86");
INSERT INTO fy_admin_access VALUES("3","108","3","86");
INSERT INTO fy_admin_access VALUES("3","86","2","1");
INSERT INTO fy_admin_access VALUES("3","89","3","85");
INSERT INTO fy_admin_access VALUES("3","88","3","85");
INSERT INTO fy_admin_access VALUES("3","87","3","85");
INSERT INTO fy_admin_access VALUES("3","85","2","1");
INSERT INTO fy_admin_access VALUES("3","78","3","75");
INSERT INTO fy_admin_access VALUES("3","77","3","75");
INSERT INTO fy_admin_access VALUES("2","1","1","0");
INSERT INTO fy_admin_access VALUES("2","2","2","1");
INSERT INTO fy_admin_access VALUES("2","51","3","2");
INSERT INTO fy_admin_access VALUES("2","52","3","2");
INSERT INTO fy_admin_access VALUES("2","53","3","2");
INSERT INTO fy_admin_access VALUES("2","54","3","2");
INSERT INTO fy_admin_access VALUES("2","55","3","2");
INSERT INTO fy_admin_access VALUES("2","64","3","2");
INSERT INTO fy_admin_access VALUES("2","65","3","2");
INSERT INTO fy_admin_access VALUES("2","66","3","2");
INSERT INTO fy_admin_access VALUES("2","67","3","2");
INSERT INTO fy_admin_access VALUES("2","68","3","2");
INSERT INTO fy_admin_access VALUES("2","69","3","2");
INSERT INTO fy_admin_access VALUES("2","70","3","2");
INSERT INTO fy_admin_access VALUES("2","3","2","1");
INSERT INTO fy_admin_access VALUES("2","45","3","3");
INSERT INTO fy_admin_access VALUES("2","46","3","3");
INSERT INTO fy_admin_access VALUES("2","47","3","3");
INSERT INTO fy_admin_access VALUES("2","48","3","3");
INSERT INTO fy_admin_access VALUES("2","49","3","3");
INSERT INTO fy_admin_access VALUES("2","50","2","3");
INSERT INTO fy_admin_access VALUES("2","4","2","1");
INSERT INTO fy_admin_access VALUES("2","38","3","4");
INSERT INTO fy_admin_access VALUES("2","39","3","4");
INSERT INTO fy_admin_access VALUES("2","40","3","4");
INSERT INTO fy_admin_access VALUES("2","41","3","4");
INSERT INTO fy_admin_access VALUES("2","42","3","4");
INSERT INTO fy_admin_access VALUES("2","43","3","4");
INSERT INTO fy_admin_access VALUES("2","44","3","4");
INSERT INTO fy_admin_access VALUES("2","5","2","1");
INSERT INTO fy_admin_access VALUES("2","29","3","5");
INSERT INTO fy_admin_access VALUES("2","34","3","5");
INSERT INTO fy_admin_access VALUES("2","35","3","5");
INSERT INTO fy_admin_access VALUES("2","36","3","5");
INSERT INTO fy_admin_access VALUES("2","37","3","5");
INSERT INTO fy_admin_access VALUES("2","6","2","1");
INSERT INTO fy_admin_access VALUES("2","7","3","6");
INSERT INTO fy_admin_access VALUES("2","8","3","6");
INSERT INTO fy_admin_access VALUES("2","9","2","1");
INSERT INTO fy_admin_access VALUES("2","32","3","9");
INSERT INTO fy_admin_access VALUES("2","33","3","9");
INSERT INTO fy_admin_access VALUES("2","10","2","1");
INSERT INTO fy_admin_access VALUES("2","11","2","1");
INSERT INTO fy_admin_access VALUES("2","12","2","1");
INSERT INTO fy_admin_access VALUES("2","13","2","1");
INSERT INTO fy_admin_access VALUES("2","14","2","1");
INSERT INTO fy_admin_access VALUES("2","15","2","1");
INSERT INTO fy_admin_access VALUES("2","16","2","1");
INSERT INTO fy_admin_access VALUES("2","17","2","1");
INSERT INTO fy_admin_access VALUES("2","18","2","1");
INSERT INTO fy_admin_access VALUES("2","19","2","1");
INSERT INTO fy_admin_access VALUES("2","20","2","1");
INSERT INTO fy_admin_access VALUES("2","21","2","1");
INSERT INTO fy_admin_access VALUES("2","27","3","21");
INSERT INTO fy_admin_access VALUES("2","28","3","21");
INSERT INTO fy_admin_access VALUES("2","30","3","21");
INSERT INTO fy_admin_access VALUES("2","31","3","21");
INSERT INTO fy_admin_access VALUES("2","22","2","1");
INSERT INTO fy_admin_access VALUES("2","25","3","22");
INSERT INTO fy_admin_access VALUES("2","26","3","22");
INSERT INTO fy_admin_access VALUES("2","23","2","1");
INSERT INTO fy_admin_access VALUES("2","24","3","23");
INSERT INTO fy_admin_access VALUES("2","59","2","1");
INSERT INTO fy_admin_access VALUES("2","56","2","1");
INSERT INTO fy_admin_access VALUES("2","60","3","56");
INSERT INTO fy_admin_access VALUES("2","61","4","60");
INSERT INTO fy_admin_access VALUES("2","62","5","61");
INSERT INTO fy_admin_access VALUES("2","80","2","1");
INSERT INTO fy_admin_access VALUES("2","81","3","80");
INSERT INTO fy_admin_access VALUES("2","82","3","80");
INSERT INTO fy_admin_access VALUES("2","83","3","80");
INSERT INTO fy_admin_access VALUES("2","101","3","80");
INSERT INTO fy_admin_access VALUES("2","90","3","80");
INSERT INTO fy_admin_access VALUES("2","100","3","80");
INSERT INTO fy_admin_access VALUES("2","99","3","80");
INSERT INTO fy_admin_access VALUES("2","98","3","80");
INSERT INTO fy_admin_access VALUES("2","97","3","80");
INSERT INTO fy_admin_access VALUES("2","96","3","80");
INSERT INTO fy_admin_access VALUES("2","75","2","1");
INSERT INTO fy_admin_access VALUES("2","103","3","75");
INSERT INTO fy_admin_access VALUES("2","102","3","75");
INSERT INTO fy_admin_access VALUES("2","76","3","75");
INSERT INTO fy_admin_access VALUES("2","77","3","75");
INSERT INTO fy_admin_access VALUES("2","78","3","75");
INSERT INTO fy_admin_access VALUES("2","107","3","75");
INSERT INTO fy_admin_access VALUES("2","85","2","1");
INSERT INTO fy_admin_access VALUES("2","104","3","85");
INSERT INTO fy_admin_access VALUES("2","87","3","85");
INSERT INTO fy_admin_access VALUES("2","88","3","85");
INSERT INTO fy_admin_access VALUES("2","89","3","85");
INSERT INTO fy_admin_access VALUES("2","105","3","85");
INSERT INTO fy_admin_access VALUES("2","106","3","85");
INSERT INTO fy_admin_access VALUES("2","86","2","1");
INSERT INTO fy_admin_access VALUES("2","108","3","86");
INSERT INTO fy_admin_access VALUES("2","109","3","86");
INSERT INTO fy_admin_access VALUES("2","110","3","86");
INSERT INTO fy_admin_access VALUES("2","111","3","86");
INSERT INTO fy_admin_access VALUES("2","112","2","1");
INSERT INTO fy_admin_access VALUES("2","113","3","112");
INSERT INTO fy_admin_access VALUES("2","114","3","112");
INSERT INTO fy_admin_access VALUES("2","115","3","112");
INSERT INTO fy_admin_access VALUES("2","116","3","112");
INSERT INTO fy_admin_access VALUES("2","117","2","1");
INSERT INTO fy_admin_access VALUES("2","118","3","117");
INSERT INTO fy_admin_access VALUES("2","119","3","117");
INSERT INTO fy_admin_access VALUES("2","120","3","117");
INSERT INTO fy_admin_access VALUES("2","121","3","117");
INSERT INTO fy_admin_access VALUES("2","123","2","1");
INSERT INTO fy_admin_access VALUES("2","124","3","123");
INSERT INTO fy_admin_access VALUES("2","125","3","123");
INSERT INTO fy_admin_access VALUES("2","126","3","123");
INSERT INTO fy_admin_access VALUES("2","127","3","123");
INSERT INTO fy_admin_access VALUES("2","128","2","1");
INSERT INTO fy_admin_access VALUES("2","129","3","128");
INSERT INTO fy_admin_access VALUES("2","130","2","1");
INSERT INTO fy_admin_access VALUES("2","131","3","130");
INSERT INTO fy_admin_access VALUES("2","132","3","130");
INSERT INTO fy_admin_access VALUES("2","133","3","130");
INSERT INTO fy_admin_access VALUES("2","134","3","130");
INSERT INTO fy_admin_access VALUES("2","135","2","1");
INSERT INTO fy_admin_access VALUES("2","136","3","135");
INSERT INTO fy_admin_access VALUES("2","137","3","135");
INSERT INTO fy_admin_access VALUES("2","138","3","135");
INSERT INTO fy_admin_access VALUES("2","139","3","135");
INSERT INTO fy_admin_access VALUES("2","140","2","1");
INSERT INTO fy_admin_access VALUES("2","141","3","140");
INSERT INTO fy_admin_access VALUES("2","142","3","140");
INSERT INTO fy_admin_access VALUES("2","143","3","140");
INSERT INTO fy_admin_access VALUES("2","145","2","1");
INSERT INTO fy_admin_access VALUES("2","146","3","145");
INSERT INTO fy_admin_access VALUES("2","147","3","145");
INSERT INTO fy_admin_access VALUES("2","148","3","145");
INSERT INTO fy_admin_access VALUES("2","149","3","145");
INSERT INTO fy_admin_access VALUES("2","150","2","1");
INSERT INTO fy_admin_access VALUES("2","151","2","1");
INSERT INTO fy_admin_access VALUES("2","152","2","1");
INSERT INTO fy_admin_access VALUES("2","153","2","1");
INSERT INTO fy_admin_access VALUES("3","76","3","75");
INSERT INTO fy_admin_access VALUES("3","75","2","1");
INSERT INTO fy_admin_access VALUES("3","96","3","80");
INSERT INTO fy_admin_access VALUES("3","90","3","80");
INSERT INTO fy_admin_access VALUES("3","83","3","80");
INSERT INTO fy_admin_access VALUES("3","82","3","80");
INSERT INTO fy_admin_access VALUES("3","81","3","80");
INSERT INTO fy_admin_access VALUES("3","80","2","1");
INSERT INTO fy_admin_access VALUES("3","1","1","0");
INSERT INTO fy_admin_access VALUES("3","160","3","153");
INSERT INTO fy_admin_access VALUES("3","161","3","153");
INSERT INTO fy_admin_access VALUES("4","293","3","292");
INSERT INTO fy_admin_access VALUES("4","292","2","1");
INSERT INTO fy_admin_access VALUES("1","245","3","3");
INSERT INTO fy_admin_access VALUES("1","244","3","3");
INSERT INTO fy_admin_access VALUES("1","243","3","3");
INSERT INTO fy_admin_access VALUES("1","241","3","3");
INSERT INTO fy_admin_access VALUES("1","240","3","3");
INSERT INTO fy_admin_access VALUES("1","50","2","3");
INSERT INTO fy_admin_access VALUES("1","49","3","3");
INSERT INTO fy_admin_access VALUES("1","48","3","3");
INSERT INTO fy_admin_access VALUES("1","47","3","3");
INSERT INTO fy_admin_access VALUES("1","46","3","3");
INSERT INTO fy_admin_access VALUES("1","3","2","1");
INSERT INTO fy_admin_access VALUES("1","1","1","0");
INSERT INTO fy_admin_access VALUES("4","275","3","159");
INSERT INTO fy_admin_access VALUES("4","183","3","159");
INSERT INTO fy_admin_access VALUES("4","182","3","159");
INSERT INTO fy_admin_access VALUES("4","181","3","159");
INSERT INTO fy_admin_access VALUES("4","180","3","159");
INSERT INTO fy_admin_access VALUES("4","179","3","159");
INSERT INTO fy_admin_access VALUES("4","178","3","159");
INSERT INTO fy_admin_access VALUES("4","177","3","159");
INSERT INTO fy_admin_access VALUES("4","159","2","1");
INSERT INTO fy_admin_access VALUES("4","285","3","158");
INSERT INTO fy_admin_access VALUES("4","175","3","158");
INSERT INTO fy_admin_access VALUES("4","174","3","158");
INSERT INTO fy_admin_access VALUES("4","173","3","158");
INSERT INTO fy_admin_access VALUES("4","172","3","158");
INSERT INTO fy_admin_access VALUES("4","171","3","158");
INSERT INTO fy_admin_access VALUES("4","170","3","158");
INSERT INTO fy_admin_access VALUES("4","169","3","158");
INSERT INTO fy_admin_access VALUES("4","168","3","158");
INSERT INTO fy_admin_access VALUES("4","158","2","1");
INSERT INTO fy_admin_access VALUES("4","287","3","154");
INSERT INTO fy_admin_access VALUES("4","276","3","154");
INSERT INTO fy_admin_access VALUES("4","192","3","154");
INSERT INTO fy_admin_access VALUES("4","191","3","154");
INSERT INTO fy_admin_access VALUES("4","190","3","154");
INSERT INTO fy_admin_access VALUES("4","189","3","154");
INSERT INTO fy_admin_access VALUES("4","188","3","154");
INSERT INTO fy_admin_access VALUES("4","187","3","154");
INSERT INTO fy_admin_access VALUES("4","186","3","154");
INSERT INTO fy_admin_access VALUES("4","185","3","154");
INSERT INTO fy_admin_access VALUES("4","184","3","154");
INSERT INTO fy_admin_access VALUES("4","154","2","1");
INSERT INTO fy_admin_access VALUES("4","298","3","153");
INSERT INTO fy_admin_access VALUES("4","297","3","153");
INSERT INTO fy_admin_access VALUES("4","289","3","153");
INSERT INTO fy_admin_access VALUES("4","167","3","153");
INSERT INTO fy_admin_access VALUES("4","166","3","153");
INSERT INTO fy_admin_access VALUES("4","165","3","153");
INSERT INTO fy_admin_access VALUES("4","164","3","153");
INSERT INTO fy_admin_access VALUES("4","163","3","153");
INSERT INTO fy_admin_access VALUES("4","162","3","153");
INSERT INTO fy_admin_access VALUES("4","161","3","153");
INSERT INTO fy_admin_access VALUES("4","160","3","153");
INSERT INTO fy_admin_access VALUES("4","157","3","153");
INSERT INTO fy_admin_access VALUES("4","156","3","153");
INSERT INTO fy_admin_access VALUES("4","155","3","153");
INSERT INTO fy_admin_access VALUES("4","153","2","1");
INSERT INTO fy_admin_access VALUES("4","277","3","152");
INSERT INTO fy_admin_access VALUES("4","217","3","152");
INSERT INTO fy_admin_access VALUES("4","212","3","152");
INSERT INTO fy_admin_access VALUES("4","209","3","152");
INSERT INTO fy_admin_access VALUES("4","206","3","152");
INSERT INTO fy_admin_access VALUES("4","203","3","152");
INSERT INTO fy_admin_access VALUES("4","196","3","152");
INSERT INTO fy_admin_access VALUES("4","195","3","152");
INSERT INTO fy_admin_access VALUES("4","194","3","152");
INSERT INTO fy_admin_access VALUES("4","193","3","152");
INSERT INTO fy_admin_access VALUES("4","152","2","1");
INSERT INTO fy_admin_access VALUES("4","278","3","151");
INSERT INTO fy_admin_access VALUES("4","274","3","151");
INSERT INTO fy_admin_access VALUES("4","273","3","151");
INSERT INTO fy_admin_access VALUES("4","272","3","151");
INSERT INTO fy_admin_access VALUES("4","271","3","151");
INSERT INTO fy_admin_access VALUES("4","270","3","151");
INSERT INTO fy_admin_access VALUES("4","269","3","151");
INSERT INTO fy_admin_access VALUES("4","268","3","151");
INSERT INTO fy_admin_access VALUES("4","267","3","151");
INSERT INTO fy_admin_access VALUES("4","266","3","151");
INSERT INTO fy_admin_access VALUES("4","151","2","1");
INSERT INTO fy_admin_access VALUES("4","288","3","150");
INSERT INTO fy_admin_access VALUES("4","282","3","150");
INSERT INTO fy_admin_access VALUES("4","281","3","150");
INSERT INTO fy_admin_access VALUES("4","280","3","150");
INSERT INTO fy_admin_access VALUES("4","279","3","150");
INSERT INTO fy_admin_access VALUES("4","150","2","1");
INSERT INTO fy_admin_access VALUES("4","283","3","135");
INSERT INTO fy_admin_access VALUES("4","254","3","135");
INSERT INTO fy_admin_access VALUES("4","251","3","135");
INSERT INTO fy_admin_access VALUES("4","250","3","135");
INSERT INTO fy_admin_access VALUES("4","249","3","135");
INSERT INTO fy_admin_access VALUES("4","248","3","135");
INSERT INTO fy_admin_access VALUES("4","246","3","135");
INSERT INTO fy_admin_access VALUES("4","176","3","135");
INSERT INTO fy_admin_access VALUES("4","139","3","135");
INSERT INTO fy_admin_access VALUES("4","138","3","135");
INSERT INTO fy_admin_access VALUES("4","137","3","135");
INSERT INTO fy_admin_access VALUES("4","136","3","135");
INSERT INTO fy_admin_access VALUES("4","135","2","1");
INSERT INTO fy_admin_access VALUES("4","286","3","130");
INSERT INTO fy_admin_access VALUES("4","242","3","130");
INSERT INTO fy_admin_access VALUES("4","228","3","130");
INSERT INTO fy_admin_access VALUES("4","225","3","130");
INSERT INTO fy_admin_access VALUES("4","222","3","130");
INSERT INTO fy_admin_access VALUES("4","134","3","130");
INSERT INTO fy_admin_access VALUES("4","133","3","130");
INSERT INTO fy_admin_access VALUES("4","132","3","130");
INSERT INTO fy_admin_access VALUES("4","131","3","130");
INSERT INTO fy_admin_access VALUES("4","130","2","1");
INSERT INTO fy_admin_access VALUES("4","252","3","128");
INSERT INTO fy_admin_access VALUES("4","202","3","128");
INSERT INTO fy_admin_access VALUES("4","201","3","128");
INSERT INTO fy_admin_access VALUES("4","200","3","128");
INSERT INTO fy_admin_access VALUES("4","199","3","128");
INSERT INTO fy_admin_access VALUES("4","198","3","128");
INSERT INTO fy_admin_access VALUES("4","197","3","128");
INSERT INTO fy_admin_access VALUES("4","129","3","128");
INSERT INTO fy_admin_access VALUES("4","128","2","1");
INSERT INTO fy_admin_access VALUES("4","127","3","123");
INSERT INTO fy_admin_access VALUES("4","126","3","123");
INSERT INTO fy_admin_access VALUES("4","125","3","123");
INSERT INTO fy_admin_access VALUES("4","124","3","123");
INSERT INTO fy_admin_access VALUES("4","123","2","1");
INSERT INTO fy_admin_access VALUES("4","208","3","117");
INSERT INTO fy_admin_access VALUES("4","207","3","117");
INSERT INTO fy_admin_access VALUES("4","205","3","117");
INSERT INTO fy_admin_access VALUES("4","204","3","117");
INSERT INTO fy_admin_access VALUES("4","121","3","117");
INSERT INTO fy_admin_access VALUES("4","120","3","117");
INSERT INTO fy_admin_access VALUES("4","119","3","117");
INSERT INTO fy_admin_access VALUES("4","118","3","117");
INSERT INTO fy_admin_access VALUES("4","117","2","1");
INSERT INTO fy_admin_access VALUES("4","291","3","112");
INSERT INTO fy_admin_access VALUES("4","216","3","112");
INSERT INTO fy_admin_access VALUES("4","215","3","112");
INSERT INTO fy_admin_access VALUES("4","214","3","112");
INSERT INTO fy_admin_access VALUES("4","213","3","112");
INSERT INTO fy_admin_access VALUES("4","211","3","112");
INSERT INTO fy_admin_access VALUES("4","210","3","112");
INSERT INTO fy_admin_access VALUES("4","116","3","112");
INSERT INTO fy_admin_access VALUES("4","115","3","112");
INSERT INTO fy_admin_access VALUES("4","114","3","112");
INSERT INTO fy_admin_access VALUES("4","113","3","112");
INSERT INTO fy_admin_access VALUES("4","290","3","112");
INSERT INTO fy_admin_access VALUES("4","112","2","1");
INSERT INTO fy_admin_access VALUES("4","111","3","86");
INSERT INTO fy_admin_access VALUES("4","110","3","86");
INSERT INTO fy_admin_access VALUES("4","109","3","86");
INSERT INTO fy_admin_access VALUES("4","108","3","86");
INSERT INTO fy_admin_access VALUES("4","86","2","1");
INSERT INTO fy_admin_access VALUES("4","232","3","75");
INSERT INTO fy_admin_access VALUES("4","231","3","75");
INSERT INTO fy_admin_access VALUES("4","230","3","75");
INSERT INTO fy_admin_access VALUES("4","229","3","75");
INSERT INTO fy_admin_access VALUES("4","107","3","75");
INSERT INTO fy_admin_access VALUES("4","78","3","75");
INSERT INTO fy_admin_access VALUES("4","77","3","75");
INSERT INTO fy_admin_access VALUES("4","76","3","75");
INSERT INTO fy_admin_access VALUES("4","102","3","75");
INSERT INTO fy_admin_access VALUES("4","103","3","75");
INSERT INTO fy_admin_access VALUES("4","75","2","1");
INSERT INTO fy_admin_access VALUES("4","96","3","80");
INSERT INTO fy_admin_access VALUES("4","97","3","80");
INSERT INTO fy_admin_access VALUES("4","98","3","80");
INSERT INTO fy_admin_access VALUES("4","99","3","80");
INSERT INTO fy_admin_access VALUES("4","100","3","80");
INSERT INTO fy_admin_access VALUES("4","90","3","80");
INSERT INTO fy_admin_access VALUES("4","101","3","80");
INSERT INTO fy_admin_access VALUES("4","83","3","80");
INSERT INTO fy_admin_access VALUES("4","82","3","80");
INSERT INTO fy_admin_access VALUES("4","81","3","80");
INSERT INTO fy_admin_access VALUES("4","80","2","1");
INSERT INTO fy_admin_access VALUES("4","24","3","23");
INSERT INTO fy_admin_access VALUES("4","23","2","1");
INSERT INTO fy_admin_access VALUES("4","26","3","22");
INSERT INTO fy_admin_access VALUES("4","25","3","22");
INSERT INTO fy_admin_access VALUES("4","22","2","1");
INSERT INTO fy_admin_access VALUES("4","8","3","6");
INSERT INTO fy_admin_access VALUES("4","7","3","6");
INSERT INTO fy_admin_access VALUES("4","6","2","1");
INSERT INTO fy_admin_access VALUES("4","1","1","0");



DROP TABLE fy_admin_group;

CREATE TABLE `fy_admin_group` (
  `id` smallint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT 'icon小图标',
  `sort` int(11) unsigned NOT NULL DEFAULT '50',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

INSERT INTO fy_admin_group VALUES("1","系统管理","&#xe61d;","2","1","","0","1450752856","1481180175");
INSERT INTO fy_admin_group VALUES("2","工具","&amp;#xe616;","3","0","","0","1476016712","1532419172");



DROP TABLE fy_admin_node;

CREATE TABLE `fy_admin_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `group_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '节点类型，1-控制器 | 0-方法',
  `sort` smallint(6) unsigned NOT NULL DEFAULT '50',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`),
  KEY `isdelete` (`isdelete`),
  KEY `sort` (`sort`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=310 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

INSERT INTO fy_admin_node VALUES("1","0","1","Admin","后台管理","后台管理，不可更改","1","1","1","1","0");
INSERT INTO fy_admin_node VALUES("2","1","1","AdminGroup","分组管理"," ","2","1","1","1","0");
INSERT INTO fy_admin_node VALUES("3","1","1","AdminNode","节点管理"," ","2","1","2","1","0");
INSERT INTO fy_admin_node VALUES("4","1","1","AdminRole","角色管理"," ","2","1","3","1","0");
INSERT INTO fy_admin_node VALUES("5","1","1","AdminUser","用户管理","","2","1","4","1","0");
INSERT INTO fy_admin_node VALUES("6","1","0","Index","首页","","2","1","50","1","0");
INSERT INTO fy_admin_node VALUES("7","6","0","welcome","欢迎页","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("8","6","0","index","未定义","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("9","1","2","Generate","代码自动生成","","2","1","50","1","0");
INSERT INTO fy_admin_node VALUES("10","1","2","Demo/excel","Excel一键导出","","2","0","2","1","0");
INSERT INTO fy_admin_node VALUES("11","1","2","Demo/download","下载","","2","0","3","1","0");
INSERT INTO fy_admin_node VALUES("12","1","2","Demo/downloadImage","远程图片下载","","2","0","4","1","0");
INSERT INTO fy_admin_node VALUES("13","1","2","Demo/mail","邮件发送","","2","0","5","1","0");
INSERT INTO fy_admin_node VALUES("14","1","2","Demo/qiniu","七牛上传","","2","0","6","1","0");
INSERT INTO fy_admin_node VALUES("15","1","2","Demo/hashids","ID加密","","2","0","7","1","0");
INSERT INTO fy_admin_node VALUES("16","1","2","Demo/layer","丰富弹层","","2","0","8","1","0");
INSERT INTO fy_admin_node VALUES("17","1","2","Demo/tableFixed","表格溢出","","2","0","9","1","0");
INSERT INTO fy_admin_node VALUES("18","1","2","Demo/ueditor","百度编辑器","","2","0","10","1","0");
INSERT INTO fy_admin_node VALUES("19","1","2","Demo/imageUpload","图片上传","","2","0","11","1","0");
INSERT INTO fy_admin_node VALUES("20","1","2","Demo/qrcode","二维码生成","","2","0","12","1","0");
INSERT INTO fy_admin_node VALUES("21","1","1","NodeMap","节点图","","2","1","5","1","0");
INSERT INTO fy_admin_node VALUES("22","1","1","WebLog","操作日志","","2","1","6","1","0");
INSERT INTO fy_admin_node VALUES("23","1","1","LoginLog","登录日志","","2","1","7","1","0");
INSERT INTO fy_admin_node VALUES("59","1","2","one.two.three.Four/index","多级节点","","2","0","50","1","0");
INSERT INTO fy_admin_node VALUES("24","23","0","index","首页","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("25","22","0","index","列表","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("26","22","0","detail","详情","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("27","21","0","load","自动导入","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("28","21","0","index","首页","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("30","21","0","edit","编辑","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("31","21","0","deleteForever","永久删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("32","9","0","index","首页","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("33","9","0","generate","生成方法","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("34","5","0","password","修改密码","","3","0","49","1","0");
INSERT INTO fy_admin_node VALUES("35","5","0","index","首页","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("36","5","0","add","添加","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("37","5","0","edit","编辑","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("38","4","0","user","用户列表","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("39","4","0","access","授权","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("40","4","0","index","首页","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("41","4","0","add","添加","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("42","4","0","edit","编辑","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("43","4","0","forbid","默认禁用操作","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("44","4","0","resume","默认恢复操作","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("290","112","0","getskudata","获取sku数据","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("46","3","0","index","首页","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("47","3","0","add","添加","","3","0","49","1","0");
INSERT INTO fy_admin_node VALUES("48","3","0","edit","编辑","","3","0","48","1","0");
INSERT INTO fy_admin_node VALUES("49","3","0","forbid","默认禁用操作","","3","0","47","1","0");
INSERT INTO fy_admin_node VALUES("50","3","0","resume","默认恢复操作","","2","0","0","1","0");
INSERT INTO fy_admin_node VALUES("51","2","0","index","首页","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("52","2","0","add","添加","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("53","2","0","edit","编辑","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("54","2","0","forbid","默认禁用操作","","3","0","51","1","0");
INSERT INTO fy_admin_node VALUES("55","2","0","resume","默认恢复操作","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("56","1","2","one","一级菜单","","2","1","13","1","0");
INSERT INTO fy_admin_node VALUES("60","56","2","two","二级","","3","1","50","1","0");
INSERT INTO fy_admin_node VALUES("61","60","2","three","三级菜单","","4","1","50","1","0");
INSERT INTO fy_admin_node VALUES("62","61","2","Four","四级菜单","","5","1","50","1","0");
INSERT INTO fy_admin_node VALUES("104","85","0","delete","删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("64","2","0","delete","删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("65","2","0","recycleBin","回收站","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("66","2","0","delete","默认删除操作","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("67","2","0","recycle","从回收站恢复","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("68","2","0","deleteForever","永久删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("69","2","0","clear","清空回收站","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("70","2","0","saveOrder","保存排序","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("103","75","0","resume","默认恢复操作","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("80","1","1","Notice","公告管理","","2","1","50","1","0");
INSERT INTO fy_admin_node VALUES("102","75","0","delete","删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("75","1","1","SildeShow","轮播图","","2","1","50","1","0");
INSERT INTO fy_admin_node VALUES("76","75","0","add","添加","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("77","75","0","edit","编辑","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("78","75","0","index","首页","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("81","80","0","add","添加","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("82","80","0","index","首页","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("83","80","0","edit","编辑","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("101","80","0","resume","默认恢复操作","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("85","1","1","Modular","前端功能模块","","2","1","50","1","0");
INSERT INTO fy_admin_node VALUES("86","1","1","GoodsClass","商品分类","","2","1","50","1","0");
INSERT INTO fy_admin_node VALUES("87","85","0","index","列表","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("88","85","0","add","添加","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("89","85","0","edit","编辑","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("90","80","0","delete","删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("100","80","0","recycle","从回收站恢复","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("99","80","0","deleteForever","永久删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("98","80","0","recycleBin","回收站","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("97","80","0","clear","清空回收站","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("96","80","0","forbid","默认禁用操作","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("105","85","0","resume","默认恢复操作","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("106","85","0","forbid","默认禁用操作","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("107","75","0","forbid","默认禁用操作","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("108","86","0","index","首页","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("109","86","0","add","添加","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("110","86","0","edit","编辑","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("111","86","0","delete","删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("112","1","1","Goods","商品管理","","2","1","50","1","0");
INSERT INTO fy_admin_node VALUES("113","112","0","index","首页","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("114","112","0","add","添加","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("115","112","0","edit","编辑","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("116","112","0","delete","删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("117","1","1","Brand","商品品牌管理","","2","1","50","1","0");
INSERT INTO fy_admin_node VALUES("118","117","0","index","首页","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("119","117","0","add","添加","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("120","117","0","edit","编辑","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("121","117","0","delete","删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("123","1","0","Upload","图片上传","","2","1","50","1","0");
INSERT INTO fy_admin_node VALUES("124","123","0","index","首页","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("125","123","0","upload","文件上传","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("126","123","0","remote","远程图片抓取","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("127","123","0","listImage","图片列表","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("128","1","1","Customer","会员管理","","2","1","50","1","0");
INSERT INTO fy_admin_node VALUES("129","128","0","index","列表","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("130","1","1","Lottery","奖券中心","","2","1","50","1","0");
INSERT INTO fy_admin_node VALUES("131","130","0","add","添加","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("132","130","0","index","首页","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("133","130","0","edit","修改","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("134","130","0","delete","删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("135","1","1","CustomerTask","会员任务管理","","2","1","50","1","0");
INSERT INTO fy_admin_node VALUES("136","135","0","index","列表","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("137","135","0","add","添加","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("138","135","0","delete","删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("139","135","0","edit","编辑","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("140","1","1","CustomerGrade","会员等级管理","","2","1","50","1","0");
INSERT INTO fy_admin_node VALUES("141","140","0","index","列表","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("142","140","0","add","新增","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("143","140","0","edit","编辑","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("294","292","0","recycleBin","回收站","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("145","1","1","CustomerGradeDesc","会员等级规则","","2","1","50","1","0");
INSERT INTO fy_admin_node VALUES("146","145","0","index","列表","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("147","145","0","add","添加","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("148","145","0","edit","编辑","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("149","145","0","delete","删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("150","1","1","LotteryLog","奖券领取详情","","2","1","50","1","0");
INSERT INTO fy_admin_node VALUES("151","1","1","Activity","活动管理","","2","1","50","1","0");
INSERT INTO fy_admin_node VALUES("152","1","1","Transaction","交易设置","","2","1","50","1","0");
INSERT INTO fy_admin_node VALUES("153","1","1","Order","订单管理","","2","1","50","1","0");
INSERT INTO fy_admin_node VALUES("154","1","1","Message","消息中心","","2","1","50","1","0");
INSERT INTO fy_admin_node VALUES("155","153","0","index","列表","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("156","153","0","edit","编辑","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("157","153","0","orderDetail","订单详情","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("158","1","1","GoodsComment","商品评论管理","","2","1","50","1","0");
INSERT INTO fy_admin_node VALUES("159","1","1","WxPayRefundLog","交易记录","","2","1","50","1","0");
INSERT INTO fy_admin_node VALUES("160","153","0","addPost","订单发货","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("161","153","0","refund","订单退款","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("162","153","0","editTotalPrice","修改订单总价","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("163","153","0","delete","删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("164","153","0","recycleBin","回收站","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("165","153","0","deleteForever","永久删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("166","153","0","clear","清空回收站","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("167","153","0","recycle","还原","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("168","158","0","delete","删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("169","158","0","forbid","禁用","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("170","158","0","recyclebin","回收站","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("171","158","0","resume","恢复","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("172","158","0","clear","清空回收站","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("173","158","0","deleteForever","彻底删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("174","158","0","recycle","还原","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("175","158","0","returncomment","回复","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("176","135","0","detail","详情","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("177","159","0","forbid","禁用","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("178","159","0","recyclebin","回收站","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("179","159","0","delete","删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("180","159","0","resume","恢复","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("181","159","0","deleteForever","彻底删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("182","159","0","clear","清空回收站","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("183","159","0","recycle","还原","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("184","154","0","delete","删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("185","154","0","add","添加","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("186","154","0","forbid","禁用","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("187","154","0","resume","恢复","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("188","154","0","recyclebin","回收站","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("189","154","0","edit","编辑","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("190","154","0","clear","清空回收站","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("191","154","0","deleteForever","彻底删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("192","154","0","recycle","还原","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("193","152","0","add","添加","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("194","152","0","eidt","编辑","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("195","152","0","delete","删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("196","152","0","forbid","禁用","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("197","128","0","delete","删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("198","128","0","recycleBin","回收站","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("199","128","0","excel","导出excel","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("200","128","0","recycle","从回收站还原","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("201","128","0","deleteForever","永久删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("202","128","0","clear","清空回收站","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("203","152","0","recyclebin","回收站","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("204","117","0","recycleBin","回收站","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("205","117","0","deleteForever","永久删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("206","152","0","resume","恢复","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("207","117","0","recycle","从回收站还原","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("208","117","0","clear","清空回收站","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("209","152","0","deleteForever","彻底删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("210","112","0","forbid","禁用","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("211","112","0","resume","恢复","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("212","152","0","recycle","还原","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("213","112","0","recycleBin","回收站","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("214","112","0","recycle","从回收站还原","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("215","112","0","deleteForever","永久删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("216","112","0","clear","清空回收站","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("217","152","0","clear","清空回收站","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("222","130","0","recyclebin","回收站","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("223","85","0","recycleBin","回收站","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("224","85","0","recycle","从回收站还原","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("225","130","0","resume","还原","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("226","85","0","deleteForever","永久删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("227","85","0","clear","清空回收站","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("228","130","0","deleteForever","彻底删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("229","75","0","recycleBin","回收站","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("230","75","0","recycle","从回收站还原","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("231","75","0","clear","清空回收站","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("232","75","0","deleteForever","永久删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("233","5","0","forbid","禁用","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("234","5","0","resume","恢复","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("235","4","0","recycleBin","回收站","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("236","4","0","recycle","从回收站还原","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("237","4","0","deleteForever","永久删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("238","4","0","clear","清空回收站","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("293","292","0","index","列表","","3","0","51","1","0");
INSERT INTO fy_admin_node VALUES("239","4","0","delete","删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("240","3","0","delete","删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("241","3","0","recycleBin","回收站","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("242","130","0","clear","清空回收站","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("243","3","0","recycle","从回收站还原","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("244","3","0","deleteForever","永久删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("245","3","0","clear","清空回收站","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("246","135","0","resume","恢复","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("247","21","0","add","添加","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("248","135","0","recycleBin","回收站","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("249","135","0","recycle","还原","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("250","135","0","deleteForever","彻底删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("292","1","1","useLottery","代金券核销记录","","2","1","50","1","0");
INSERT INTO fy_admin_node VALUES("291","112","0","upDownTip","上架下架提醒","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("251","135","0","clear","清空回收站","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("252","128","0","detail","详情","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("253","45","1","edit","编辑","","4","0","50","1","0");
INSERT INTO fy_admin_node VALUES("254","135","0","excel","导出","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("255","140","0","delete","删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("256","140","0","recycleBin","回收站","","3","1","50","1","0");
INSERT INTO fy_admin_node VALUES("257","140","0","recycle","还原","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("258","140","0","deleteForever","彻底删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("259","140","0","clear","清空回收站","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("260","145","0","forbid","禁用","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("261","145","0","resume","恢复","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("262","145","0","recycleBin","回收站","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("263","145","0","recycle","还原","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("264","145","0","deleteForever","彻底删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("265","145","0","clear","清空回收站","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("266","151","0","add","添加","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("267","151","0","forbid","禁用","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("268","151","0","resume","恢复","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("269","151","0","delete","删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("270","151","0","recycleBin","回收站","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("271","151","0","edit","编辑","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("272","151","0","recycle","还原","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("273","151","0","deleteForever","彻底删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("274","151","0","clear","清空回收站","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("275","159","0","index","列表","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("276","154","0","index","列表","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("277","152","0","index","列表","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("278","151","0","index","列表","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("279","150","0","index","列表","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("280","150","0","add","添加","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("281","150","0","forbid","禁用","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("282","150","0","resume","恢复","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("283","135","0","forbid","禁用","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("289","153","0","afterSaleHandle","售后处理","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("285","158","0","index","列表","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("286","130","0","editStatus","发行","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("287","154","0","sendUser","发送","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("288","150","0","detail","领取详情","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("295","292","0","delete","删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("296","1","1","GiftBag","礼包管理","","2","1","50","1","0");
INSERT INTO fy_admin_node VALUES("297","153","0","shopSure","商家退货确认收货","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("298","153","0","shopsSendGoods","商家售后确认发货","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("299","1","1","CustomerRight","会员权益管理","","2","1","50","1","0");
INSERT INTO fy_admin_node VALUES("300","299","0","index","列表","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("301","299","0","add","添加","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("302","299","0","edit","编辑","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("303","299","0","forbid","禁用","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("304","299","0","resume","恢复","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("305","299","0","delete","删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("306","299","0","recycleBin","回收站","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("307","299","0","recycle","从回收站恢复","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("308","299","0","deleteForever","永久删除","","3","0","50","1","0");
INSERT INTO fy_admin_node VALUES("309","299","0","clear","清空回收站","","3","0","50","1","0");



DROP TABLE fy_admin_node_load;

CREATE TABLE `fy_admin_node_load` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `status` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='节点快速导入';

INSERT INTO fy_admin_node_load VALUES("4","编辑","edit","1");
INSERT INTO fy_admin_node_load VALUES("5","添加","add","1");
INSERT INTO fy_admin_node_load VALUES("6","首页","index","1");
INSERT INTO fy_admin_node_load VALUES("7","删除","delete","1");



DROP TABLE fy_admin_role;

CREATE TABLE `fy_admin_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '名称',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parentId` (`pid`),
  KEY `status` (`status`),
  KEY `isdelete` (`isdelete`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

INSERT INTO fy_admin_role VALUES("1","0","领导组"," ","1","0","1208784792","1254325558");
INSERT INTO fy_admin_role VALUES("2","0","网编组"," ","1","0","1215496283","1454049929");
INSERT INTO fy_admin_role VALUES("3","0","test","testsartsrt","1","0","1527663705","1527663705");
INSERT INTO fy_admin_role VALUES("4","0","welcome","市场部","1","0","1533115093","1533115093");
INSERT INTO fy_admin_role VALUES("5","0","啊啊啊","","1","1","1534732490","1534732490");



DROP TABLE fy_admin_role_user;

CREATE TABLE `fy_admin_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

INSERT INTO fy_admin_role_user VALUES("5","23");
INSERT INTO fy_admin_role_user VALUES("2","4");
INSERT INTO fy_admin_role_user VALUES("2","2");
INSERT INTO fy_admin_role_user VALUES("4","21");
INSERT INTO fy_admin_role_user VALUES("4","20");
INSERT INTO fy_admin_role_user VALUES("4","23");



DROP TABLE fy_admin_user;

CREATE TABLE `fy_admin_user` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `account` char(32) NOT NULL DEFAULT '',
  `realname` varchar(255) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `password` char(32) NOT NULL DEFAULT '',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0',
  `last_login_ip` char(15) NOT NULL DEFAULT '',
  `login_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '',
  `mobile` char(11) NOT NULL DEFAULT '',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '50',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `sex` tinyint(1) DEFAULT '1' COMMENT '1男0女',
  `wechat_num` varchar(50) DEFAULT NULL COMMENT '微信号可用于转款',
  `balance` decimal(10,2) DEFAULT '0.00' COMMENT '余额',
  PRIMARY KEY (`id`),
  KEY `accountpassword` (`account`,`password`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

INSERT INTO fy_admin_user VALUES("1","admin","超级管理员","e10adc3949ba59abbe56e057f20f883e","1538028991","220.197.182.87","724","tianpian0805@gmail.comaaa","13121126169","我是超级管理员","1","0","1222907803","1451033528","0","","0.00");
INSERT INTO fy_admin_user VALUES("2","demo","测试","e10adc3949ba59abbe56e057f20f883e","1532331682","10.110.111.23","15","","13111111111","","0","0","1476777133","1477399793","1","weixinnichen","0.00");
INSERT INTO fy_admin_user VALUES("3","test1","罗正波","e10adc3949ba59abbe56e057f20f883e","1530351402","10.110.111.46","11","1060049850@qq.com","18285111561","test","0","0","1527663753","1527663753","1","luozhengbo9850","0.00");
INSERT INTO fy_admin_user VALUES("4","123456","123333","fcea920f7412b5da7be0cf42b8c93759","1529564512","10.110.111.36","1","617641705@qq.com","","","0","0","1529549152","1529549152","1","","0.00");
INSERT INTO fy_admin_user VALUES("21","jyf","江永飞","e10adc3949ba59abbe56e057f20f883e","1535706284","220.197.182.87","2","","","","1","0","1533866369","1533866369","1","","0.01");
INSERT INTO fy_admin_user VALUES("20","welcome","泛亚","e10adc3949ba59abbe56e057f20f883e","1536197715","220.197.182.88","24","","","","1","0","1533806651","1533806651","1","","0.00");
INSERT INTO fy_admin_user VALUES("23","fy","测试商户","e10adc3949ba59abbe56e057f20f883e","1534732619","220.197.182.70","6","","","","1","0","1534469233","1534469233","1","","0.00");



DROP TABLE fy_admin_user_customer;

CREATE TABLE `fy_admin_user_customer` (
  `user_id` mediumint(9) unsigned DEFAULT NULL,
  `customer_id` char(32) DEFAULT NULL,
  KEY `group_id` (`user_id`),
  KEY `user_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

INSERT INTO fy_admin_user_customer VALUES("23","123");
INSERT INTO fy_admin_user_customer VALUES("21","136");
INSERT INTO fy_admin_user_customer VALUES("23","119");
INSERT INTO fy_admin_user_customer VALUES("20","120");



DROP TABLE fy_after_sale_following;

CREATE TABLE `fy_after_sale_following` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '售后跟踪表',
  `goods_id` int(11) NOT NULL COMMENT '售后商品id ',
  `ogid` int(11) NOT NULL COMMENT 'order_goods关联id',
  `mobile` varchar(12) NOT NULL COMMENT '用户联系电话',
  `order_id` varchar(64) NOT NULL COMMENT '订单id',
  `openid` varchar(255) NOT NULL COMMENT '售后用户',
  `after_status` tinyint(4) DEFAULT NULL COMMENT '状态0未申请1,申请中2不同意,,4维修中5换货中,6商家发货中，7用户确认收货,8同意',
  `after_sale_reson` varchar(255) DEFAULT NULL COMMENT '售后原因',
  `after_sale_type` tinyint(1) DEFAULT NULL COMMENT '售后类型1换货2，维修3，退款/退货',
  `after_sale_ask` varchar(255) DEFAULT NULL COMMENT '售后要求',
  `after_sale_remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `after_sale_pic` text COMMENT '售后图片',
  `handle_yes_no_time` int(11) DEFAULT NULL COMMENT '同意货拒绝时间',
  `handle_yes_no_user` varchar(255) DEFAULT NULL COMMENT '处理人',
  `shop_wuliu_address` text COMMENT '商户地址',
  `shop_sure_get_goods` tinyint(1) DEFAULT NULL COMMENT '1商家确认收货',
  `shop_sure_get_time` int(11) DEFAULT NULL COMMENT '商家确认收货时间',
  `apply_time` int(11) DEFAULT NULL COMMENT '申请时间',
  `refused_reason` varchar(255) DEFAULT NULL COMMENT '拒绝售后理由',
  `handle_time` int(11) DEFAULT NULL COMMENT '处理时间',
  `user_wuliu_type_order` varchar(255) DEFAULT NULL COMMENT '用户物流单号',
  `moren_address` text COMMENT '默认寄回地址',
  `huan_wei_handle_time` int(11) DEFAULT NULL COMMENT '确认收货时间换货维修',
  `send_time` int(11) DEFAULT NULL COMMENT '商家发货时间',
  `send_wuliu_type` varchar(255) DEFAULT NULL COMMENT '发送物流类型',
  `send_wuliu_order` varchar(255) DEFAULT NULL COMMENT '发送物流单号',
  `yes_or_no` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO fy_after_sale_following VALUES("1","1","37","18285111561","1441217402201808291344524540","omQYXwNAT5uC15TQqMGxajJzqo4s","8","ffff","3","ddd","","","1535523797","","贵州省贵阳市云岩区大西门海文小学旁","1","1535523866","1535523589","","1535523866","dfsefd1234567098765","{\"id\":2,\"uid\":3,\"name\":\"\\u770b\\u89c1\\u4e86\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e30\\u53f0\\u533a\\u5357\\u82d1\\u8857\\u9053\",\"street\":\"\\u54e6\\u54e6\\u54e6\\u91cc\\u54af\\u6234\\u83ab\\u54ed\\u5462\",\"status\":1,\"addtime\":1535421884,\"updatetime\":1535421884}","","","","","1");
INSERT INTO fy_after_sale_following VALUES("2","1","38","18285111561","1441217402201808291433183541","omQYXwNAT5uC15TQqMGxajJzqo4s","1","wertyw","1","ert","","","","","","","","1535525152","","1535525152","","{\"id\":2,\"uid\":3,\"name\":\"\\u770b\\u89c1\\u4e86\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e30\\u53f0\\u533a\\u5357\\u82d1\\u8857\\u9053\",\"street\":\"\\u54e6\\u54e6\\u54e6\\u91cc\\u54af\\u6234\\u83ab\\u54ed\\u5462\",\"status\":1,\"addtime\":1535421884,\"updatetime\":1535421884}","","","","","0");
INSERT INTO fy_after_sale_following VALUES("3","1","1","13765805489","1441217402201808311656478916","omQYXwM8TEkiBZR7Ldm891OOWbNQ","1","不要了","3","","","","","","","","","1535706860","","1535706860","","{\"id\":2,\"uid\":2,\"name\":\"\\u6bb5\\u6b22\",\"mobile\":\"13765805489\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"\\u4e5f\\u662f\",\"status\":1,\"addtime\":1535705798,\"updatetime\":1535705798}","","","","","0");



DROP TABLE fy_brand;

CREATE TABLE `fy_brand` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '品牌名称',
  `pic` varchar(255) DEFAULT NULL COMMENT '图片',
  `desc` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL COMMENT '所属用户',
  `update_time` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `isdelete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

INSERT INTO fy_brand VALUES("15","ONLY","/pic/uploads/20180817/4708e60a8d639063a68d3621e431afce.png","","20","1534471133","1534471133","0");
INSERT INTO fy_brand VALUES("16","ochirly","/pic/uploads/20180817/0d9222085bdc8a62b30753a9d685191b.png","","21","1534472464","1534472464","0");
INSERT INTO fy_brand VALUES("17","Lee","/pic/uploads/20180817/24566dbf09a88d562f9709b94ea479eb.png","","23","1534473367","1534473367","0");
INSERT INTO fy_brand VALUES("18","李宁","/pic/uploads/20180817/2412232686f7bbcc2e8861c8848a066a.png","","21","1534474516","1534474516","0");
INSERT INTO fy_brand VALUES("19","叮当猫","/pic/uploads/20180820/04b70532101f2e32bc80bf2beca7e1b5.jpg","","20","1534732108","1534730915","0");
INSERT INTO fy_brand VALUES("20","甜可果园","/pic/uploads/20180828/68c227a06d53ab34c46c55efdf2b163d.png","","21","1535418871","1535418871","0");
INSERT INTO fy_brand VALUES("21","易果生鲜","/pic/uploads/20180828/a8a3dde9ae76534705e8b932f3dc2e1c.png","","20","1535419391","1535419391","0");



DROP TABLE fy_car;

CREATE TABLE `fy_car` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '购物车表',
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `openid` varchar(255) DEFAULT NULL COMMENT 'openid',
  `goods_num` smallint(10) NOT NULL COMMENT '商品数量',
  `update_time` int(11) DEFAULT NULL COMMENT '修改时间',
  `create_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `status` tinyint(1) DEFAULT '1' COMMENT '该条商品的状态1表示未结算的商品0表示结算的商品',
  `detail` text COMMENT '商品详情json存储',
  `sku_id` int(10) DEFAULT NULL COMMENT 'skuid',
  `show_status` tinyint(1) DEFAULT '1' COMMENT '默认显示，0否',
  `val` varchar(255) DEFAULT NULL COMMENT '值组合',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO fy_car VALUES("3","1","","omQYXwAasNeXdGSMymd91487Ds1g","1","1535769876","1535769876","1","","3","1","5000g");
INSERT INTO fy_car VALUES("4","1","","omQYXwNAT5uC15TQqMGxajJzqo4s","4","1537926080","1537926080","1","","3","1","5000g");
INSERT INTO fy_car VALUES("5","4","","omQYXwNAT5uC15TQqMGxajJzqo4s","4","1537939032","1537939032","1","","9","1","1kg");



DROP TABLE fy_customer;

CREATE TABLE `fy_customer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户表',
  `username` varchar(255) DEFAULT NULL,
  `openid` varchar(50) DEFAULT NULL COMMENT 'openid',
  `sex` tinyint(1) DEFAULT NULL COMMENT '1男2女3未知',
  `nickname` varchar(50) DEFAULT NULL COMMENT '微信昵称',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `mobile` varchar(12) DEFAULT NULL COMMENT '手机号',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `headimgurl` varchar(512) DEFAULT NULL COMMENT '微信头像',
  `score` int(10) DEFAULT NULL COMMENT '会员积分',
  `experience` int(10) DEFAULT '0' COMMENT '会员经验值',
  `login_ip` varchar(255) DEFAULT NULL COMMENT 'ip地址',
  `continuity_day` int(4) unsigned DEFAULT '0' COMMENT '连续签到天数',
  `status` tinyint(1) DEFAULT '1' COMMENT '1启用|0禁用',
  `isdelete` tinyint(1) DEFAULT '0' COMMENT '1删除|0未删除',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `reg_time` int(11) DEFAULT NULL,
  `language` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO fy_customer VALUES("1","","omQYXwNAT5uC15TQqMGxajJzqo4s","1","葡萄不长牙","","","","http://thirdwx.qlogo.cn/mmopen/vi_32/micicBxD02xCNicL5pYMEttjRkydmsp7bLwqxvacutLxbzE63iaFPXpbicIW0LOaiboW3xnoJMg5HR8sJ0sHH4YicFzgw/132","10","0","220.197.182.69","0","1","0","1535705545","1538031968","","zh_CN","贵阳","贵州","中国");
INSERT INTO fy_customer VALUES("2","","omQYXwM8TEkiBZR7Ldm891OOWbNQ","1","Baymax","","","","http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eq2d8mGwPshVjOWKEqTJJVwShvxIOGrUJW86jogK8FW7SKGg5YuCIibomSo8PrdIPGnywlFHgP8WsQ/132","22","10","220.197.182.87","1","1","0","1535705741","1538029614","","zh_CN","贵阳","贵州","中国");
INSERT INTO fy_customer VALUES("3","","omQYXwAasNeXdGSMymd91487Ds1g","1","DANIEL","","","","http://thirdwx.qlogo.cn/mmopen/vi_32/BpprxVMjsB3m98GlYXgpntu9MMVIov2On3qu7IxJmGlZCmtYO6JoCHPyWZjvDuEaQguMfJg3fsEoaRiaEwibRAFA/132","1","0","183.39.6.10","1","1","0","1535765279","1537005766","","zh_CN","深圳","广东","中国");
INSERT INTO fy_customer VALUES("4","","omQYXwDVsykgBFcCiyYkL4AYJRzw","1","非也非也","","","","http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLVgBQA8jyxneAzVhyMlia3AHgLWWXQ9ClEsHGbibAo0SWautFFvBVlsPY2Gx9Y7pIO3uOIcXu401DQ/132","12","0","223.104.95.164","1","1","0","1535936619","1536829662","","zh_CN","西青","天津","中国");
INSERT INTO fy_customer VALUES("5","","omQYXwMaOPocRq4oIIBJufvIdNkU","2","阿一咕","","","","http://thirdwx.qlogo.cn/mmopen/vi_32/lGT1zc6CeZo35ZCuHpX9ItmBRTfxA8FTVCBCC5Qd7uicicic4sSibrX9W5zG6ZvUl9I5LAUxwiaF7mzCogXSwKZnVQQ/132","10","0","220.197.182.84","0","1","0","1536135123","","","zh_CN","","","希腊");
INSERT INTO fy_customer VALUES("6","","omQYXwMAFZsOxVq19vLvIBw2x514","2","","","","","http://thirdwx.qlogo.cn/mmopen/vi_32/07zIq4qMkyKgYFtAQ4QrypGw23MJ6r7WQXszUNtgMcvVibJI1USRJcXDomia0EEI3H3gLicpzYAaAC1y0fhDvvBdA/132","10","0","220.197.182.88","0","1","0","1536197667","","","zh_CN","","","阿曼");
INSERT INTO fy_customer VALUES("7","","omQYXwIDROiZXZ_Ns30Am5sj7-K8","1","fale","","","","http://thirdwx.qlogo.cn/mmopen/vi_32/PiajxSqBRaELVPJ6vLvW3kglYDTzHdo4AJGLkg7iaBxQADVDZYWAiaibQFetyVJpnficxWMib2KHc34NaiaOMcZ6tERaA/132","10","0","220.197.208.10","0","1","0","1536829695","","","zh_CN","贵阳","贵州","中国");
INSERT INTO fy_customer VALUES("8","","omQYXwNlDXAoTwBwMi3xhgogfaVA","1","軒宇 ! จุ๊บ","","","","http://thirdwx.qlogo.cn/mmopen/vi_32/fqBvy1zeMK2VaafjWhEQgyU4XCck6pcUAmfhq1NlvEM90u364Y7Mr9mA0Xab1gGViaJGiajdHaWZqVVxZUf9c9fg/132","10","0","175.191.117.44","0","1","0","1536829743","","","zh_CN","深圳","广东","中国");
INSERT INTO fy_customer VALUES("9","","omQYXwPRxRKyBc0LOW1jubli1s3o","1","꯭Y꯭","","","","http://thirdwx.qlogo.cn/mmopen/vi_32/Dpsg5QmK7Gcr1UprrIephVNRHic6pG1ic52yWRZAAzse30MVozucJDMrqu2LVTLd0GtLUL7e1odg5uq2hPb0ZeRg/132","10","0","175.191.117.44","0","1","0","1536829808","","","zh_CN","贵阳","贵州","中国");



DROP TABLE fy_customer_activity_log;

CREATE TABLE `fy_customer_activity_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'activitylog表',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `activity_detail` text,
  `status` tinyint(1) DEFAULT NULL COMMENT '1已参与|2参与中',
  `create_time` int(11) DEFAULT NULL COMMENT '开始参与活动时间',
  `update_time` int(11) DEFAULT NULL COMMENT '活动参与完成时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE fy_customer_address;

CREATE TABLE `fy_customer_address` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户地址表',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `name` varchar(32) NOT NULL COMMENT '收货人',
  `mobile` varchar(12) NOT NULL COMMENT '用户电话',
  `address` varchar(512) NOT NULL COMMENT '地址',
  `street` varchar(512) DEFAULT NULL COMMENT '街道',
  `status` tinyint(1) DEFAULT '0' COMMENT '1默认地址|0非默认地址',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  `updatetime` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO fy_customer_address VALUES("1","1","dddd","18285111561","北京市东城区东华门街道","eeeeeeeee","1","1535705561","1535705561");
INSERT INTO fy_customer_address VALUES("2","2","段欢","13765805489","北京市东城区东华门街道","也是","1","1535705798","1535705798");
INSERT INTO fy_customer_address VALUES("3","3","测试人","18988756181","天津市河北区新开河街道","测试","1","1535765409","1535765409");



DROP TABLE fy_customer_collect;

CREATE TABLE `fy_customer_collect` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '收藏表',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  `addtime` int(11) NOT NULL COMMENT '收藏时间',
  `status` tinyint(1) DEFAULT NULL COMMENT '1状态备用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO fy_customer_collect VALUES("1","3","6","1535766209","0");
INSERT INTO fy_customer_collect VALUES("2","1","1","1537866595","0");



DROP TABLE fy_customer_grade;

CREATE TABLE `fy_customer_grade` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '会员等级表',
  `name` varchar(20) NOT NULL COMMENT '等级名称',
  `experience_start` int(10) DEFAULT NULL COMMENT '积分开始值',
  `experience_end` int(10) DEFAULT NULL COMMENT '积分结束值',
  `addtime` int(11) DEFAULT NULL COMMENT '添加时间',
  `updatetime` int(11) DEFAULT NULL COMMENT '修改时间',
  `all` varchar(255) DEFAULT NULL COMMENT '权益id列表',
  `isdelete` tinyint(1) DEFAULT '0' COMMENT '1删除|0未删除',
  `goods_score_rate` decimal(10,2) DEFAULT '1.00' COMMENT '购物返积分倍率',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

INSERT INTO fy_customer_grade VALUES("34","青铜会员","0","1999","1530841065","1532600931","1","0","1.00");
INSERT INTO fy_customer_grade VALUES("35","白银会员","2000","9999","1530841120","1532600928","1<br/>2","0","1.50");
INSERT INTO fy_customer_grade VALUES("36","黄金会员","10000","29999","1530841155","1532600925","1<br/>2<br/>4","0","2.00");
INSERT INTO fy_customer_grade VALUES("37","钻石会员","30000","10000000","1530841210","1534129185","1<br/>2<br/>3<br/>4","0","3.00");



DROP TABLE fy_customer_grade_desc;

CREATE TABLE `fy_customer_grade_desc` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '会员等级规则说明',
  `detail` text NOT NULL,
  `addtime` int(10) DEFAULT NULL COMMENT '添加时间',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态',
  `updatetime` int(10) DEFAULT NULL,
  `isdelete` tinyint(1) DEFAULT '0' COMMENT '1删除|0未删除',
  `type` tinyint(1) DEFAULT NULL COMMENT '1等级规则|2升级攻略|3权益说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO fy_customer_grade_desc VALUES("5","&lt;p style=&quot;text-align: center;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;1.会员共分为4个等级，分别为：青铜会员、白银会员、黄金会员、钻石会员。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;2.会员级别由经验值决定，经验值越高会员等级越高，享受到的会员权益越多。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;3.成长值与消费金额成正比，完成购物后获得与结算金额相对应的成长值。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;4.会员级别的升降均由系统自动处理，无需申请。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;/span&gt;&lt;/p&gt;","1530842063","1","1534478144","0","1");
INSERT INTO fy_customer_grade_desc VALUES("6","&lt;p style=&quot;text-align: center;&quot;&gt;&lt;strong&gt;会员专属特权&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;table width=&quot;613&quot; align=&quot;center&quot;&gt;&lt;tbody&gt;&lt;tr class=&quot;firstRow&quot;&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;126&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;会员专属特权&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;青铜会员&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;79&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;白银会员&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;黄金会员&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;261&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;钻石会员&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;126&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;新人礼包&lt;/span&gt;&lt;/p&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;可享&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;79&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;/&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;/&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;261&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;/&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;126&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;购物积分&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;标准积分&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;79&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;1.5倍积分&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;2倍积分&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;261&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;3倍积分&lt;/span&gt;&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;126&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;会员优惠活动&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;可享&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;79&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;可享&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;可享&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;261&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;可享&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;126&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;游戏抽奖&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;可享&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;79&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;可享&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;可享&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;261&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;可享&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;126&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;会员升级送积分&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;/&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;79&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;100积分&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;500积分&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;261&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;1000积分&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;126&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;免邮券&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;/&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;79&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;三月1张&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;单月1张&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;261&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;每月1张&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;126&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;生日礼包&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;/&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;79&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;可享&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;可享&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;261&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;可享&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;126&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;超值优惠券&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;/&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;79&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;/&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;每月2张&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;261&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;每月5张&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;126&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;钻石会员尊享体验&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;/&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;79&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;/&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;/&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;261&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;包括但不限于新品体验、尊享定制体验等&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;","1530842847","1","1532600984","0","3");
INSERT INTO fy_customer_grade_desc VALUES("7","&lt;p&gt;1.通过经验值计算会员等级；&lt;/p&gt;&lt;p&gt;2.购物送相应的经验值。&lt;br/&gt;&lt;/p&gt;","1532601039","1","1534130353","0","2");



DROP TABLE fy_customer_login_log;

CREATE TABLE `fy_customer_login_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '表ID',
  `uid` mediumint(8) NOT NULL COMMENT '用户ID',
  `openid` varchar(50) NOT NULL COMMENT '用户openid',
  `login_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '登录时间',
  `login_ip` char(15) NOT NULL COMMENT '登录IP',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

INSERT INTO fy_customer_login_log VALUES("1","0","omQYXwNAT5uC15TQqMGxajJzqo4s","2018-08-31 16:50:56","220.197.182.69");
INSERT INTO fy_customer_login_log VALUES("2","0","omQYXwM8TEkiBZR7Ldm891OOWbNQ","2018-08-31 16:53:09","220.197.182.71");
INSERT INTO fy_customer_login_log VALUES("3","2","omQYXwM8TEkiBZR7Ldm891OOWbNQ","2018-08-31 17:13:26","220.197.182.71");
INSERT INTO fy_customer_login_log VALUES("4","3","omQYXwAasNeXdGSMymd91487Ds1g","2018-09-01 09:27:59","220.197.182.86");
INSERT INTO fy_customer_login_log VALUES("5","3","omQYXwAasNeXdGSMymd91487Ds1g","2018-09-01 09:40:36","220.197.182.86");
INSERT INTO fy_customer_login_log VALUES("6","3","omQYXwAasNeXdGSMymd91487Ds1g","2018-09-01 09:57:17","220.197.182.86");
INSERT INTO fy_customer_login_log VALUES("7","3","omQYXwAasNeXdGSMymd91487Ds1g","2018-09-01 10:09:51","220.197.182.86");
INSERT INTO fy_customer_login_log VALUES("8","3","omQYXwAasNeXdGSMymd91487Ds1g","2018-09-01 10:20:33","220.197.182.86");
INSERT INTO fy_customer_login_log VALUES("9","3","omQYXwAasNeXdGSMymd91487Ds1g","2018-09-01 10:43:27","220.197.182.86");
INSERT INTO fy_customer_login_log VALUES("10","4","omQYXwDVsykgBFcCiyYkL4AYJRzw","2018-09-03 09:03:39","220.197.182.85");
INSERT INTO fy_customer_login_log VALUES("11","1","omQYXwNAT5uC15TQqMGxajJzqo4s","2018-09-03 16:56:25","220.197.182.69");
INSERT INTO fy_customer_login_log VALUES("12","1","omQYXwNAT5uC15TQqMGxajJzqo4s","2018-09-03 17:07:58","220.197.182.69");
INSERT INTO fy_customer_login_log VALUES("13","1","omQYXwNAT5uC15TQqMGxajJzqo4s","2018-09-03 17:29:23","223.104.95.197");
INSERT INTO fy_customer_login_log VALUES("14","4","omQYXwDVsykgBFcCiyYkL4AYJRzw","2018-09-03 17:53:50","220.197.182.71");
INSERT INTO fy_customer_login_log VALUES("15","3","omQYXwAasNeXdGSMymd91487Ds1g","2018-09-03 19:32:12","111.121.64.48");
INSERT INTO fy_customer_login_log VALUES("16","4","omQYXwDVsykgBFcCiyYkL4AYJRzw","2018-09-03 22:21:58","220.197.182.71");
INSERT INTO fy_customer_login_log VALUES("17","3","omQYXwAasNeXdGSMymd91487Ds1g","2018-09-03 22:33:17","117.188.5.212");
INSERT INTO fy_customer_login_log VALUES("18","2","omQYXwM8TEkiBZR7Ldm891OOWbNQ","2018-09-04 08:57:10","220.197.182.71");
INSERT INTO fy_customer_login_log VALUES("19","1","omQYXwNAT5uC15TQqMGxajJzqo4s","2018-09-05 10:03:51","220.197.182.69");
INSERT INTO fy_customer_login_log VALUES("20","1","omQYXwNAT5uC15TQqMGxajJzqo4s","2018-09-05 10:14:36","220.197.182.69");
INSERT INTO fy_customer_login_log VALUES("21","1","omQYXwNAT5uC15TQqMGxajJzqo4s","2018-09-05 14:01:46","220.197.182.69");
INSERT INTO fy_customer_login_log VALUES("22","5","omQYXwMaOPocRq4oIIBJufvIdNkU","2018-09-05 16:12:04","220.197.182.84");
INSERT INTO fy_customer_login_log VALUES("23","6","omQYXwMAFZsOxVq19vLvIBw2x514","2018-09-06 09:34:28","220.197.182.88");
INSERT INTO fy_customer_login_log VALUES("24","6","omQYXwMAFZsOxVq19vLvIBw2x514","2018-09-06 09:48:51","220.197.182.88");
INSERT INTO fy_customer_login_log VALUES("25","6","omQYXwMAFZsOxVq19vLvIBw2x514","2018-09-06 10:02:04","220.197.182.88");
INSERT INTO fy_customer_login_log VALUES("26","3","omQYXwAasNeXdGSMymd91487Ds1g","2018-09-07 13:37:55","220.197.182.86");
INSERT INTO fy_customer_login_log VALUES("27","4","omQYXwDVsykgBFcCiyYkL4AYJRzw","2018-09-07 16:01:20","223.104.94.245");
INSERT INTO fy_customer_login_log VALUES("28","1","omQYXwNAT5uC15TQqMGxajJzqo4s","2018-09-07 16:05:07","220.197.182.69");
INSERT INTO fy_customer_login_log VALUES("29","1","omQYXwNAT5uC15TQqMGxajJzqo4s","2018-09-07 16:22:20","220.197.182.69");
INSERT INTO fy_customer_login_log VALUES("30","4","omQYXwDVsykgBFcCiyYkL4AYJRzw","2018-09-11 15:52:58","220.197.182.72");
INSERT INTO fy_customer_login_log VALUES("31","1","omQYXwNAT5uC15TQqMGxajJzqo4s","2018-09-12 13:30:09","220.197.182.69");
INSERT INTO fy_customer_login_log VALUES("32","1","omQYXwNAT5uC15TQqMGxajJzqo4s","2018-09-12 14:23:50","220.197.182.69");
INSERT INTO fy_customer_login_log VALUES("33","1","omQYXwNAT5uC15TQqMGxajJzqo4s","2018-09-12 14:51:03","220.197.182.69");
INSERT INTO fy_customer_login_log VALUES("34","4","omQYXwDVsykgBFcCiyYkL4AYJRzw","2018-09-13 17:05:34","223.104.95.164");
INSERT INTO fy_customer_login_log VALUES("35","7","omQYXwIDROiZXZ_Ns30Am5sj7-K8","2018-09-13 17:08:15","220.197.208.10");
INSERT INTO fy_customer_login_log VALUES("36","8","omQYXwNlDXAoTwBwMi3xhgogfaVA","2018-09-13 17:09:10","175.191.117.44");
INSERT INTO fy_customer_login_log VALUES("37","9","omQYXwPRxRKyBc0LOW1jubli1s3o","2018-09-13 17:10:14","175.191.117.44");
INSERT INTO fy_customer_login_log VALUES("38","4","omQYXwDVsykgBFcCiyYkL4AYJRzw","2018-09-13 17:17:33","223.104.95.164");
INSERT INTO fy_customer_login_log VALUES("39","1","omQYXwNAT5uC15TQqMGxajJzqo4s","2018-09-25 17:01:40","220.197.182.69");
INSERT INTO fy_customer_login_log VALUES("40","1","omQYXwNAT5uC15TQqMGxajJzqo4s","2018-09-26 09:41:33","220.197.182.69");
INSERT INTO fy_customer_login_log VALUES("41","1","omQYXwNAT5uC15TQqMGxajJzqo4s","2018-09-26 10:36:24","220.197.182.69");
INSERT INTO fy_customer_login_log VALUES("42","1","omQYXwNAT5uC15TQqMGxajJzqo4s","2018-09-26 11:47:53","220.197.182.69");
INSERT INTO fy_customer_login_log VALUES("43","1","omQYXwNAT5uC15TQqMGxajJzqo4s","2018-09-26 13:16:48","220.197.182.69");
INSERT INTO fy_customer_login_log VALUES("44","1","omQYXwNAT5uC15TQqMGxajJzqo4s","2018-09-27 09:25:34","220.197.182.69");
INSERT INTO fy_customer_login_log VALUES("45","1","omQYXwNAT5uC15TQqMGxajJzqo4s","2018-09-27 09:43:26","220.197.182.69");
INSERT INTO fy_customer_login_log VALUES("46","1","omQYXwNAT5uC15TQqMGxajJzqo4s","2018-09-27 10:13:32","220.197.182.69");
INSERT INTO fy_customer_login_log VALUES("47","1","omQYXwNAT5uC15TQqMGxajJzqo4s","2018-09-27 10:32:08","220.197.182.69");
INSERT INTO fy_customer_login_log VALUES("48","2","omQYXwM8TEkiBZR7Ldm891OOWbNQ","2018-09-27 10:49:53","220.197.182.87");
INSERT INTO fy_customer_login_log VALUES("49","2","omQYXwM8TEkiBZR7Ldm891OOWbNQ","2018-09-27 13:30:45","220.197.182.87");
INSERT INTO fy_customer_login_log VALUES("50","2","omQYXwM8TEkiBZR7Ldm891OOWbNQ","2018-09-27 14:02:22","220.197.182.87");
INSERT INTO fy_customer_login_log VALUES("51","2","omQYXwM8TEkiBZR7Ldm891OOWbNQ","2018-09-27 14:17:00","220.197.182.87");
INSERT INTO fy_customer_login_log VALUES("52","1","omQYXwNAT5uC15TQqMGxajJzqo4s","2018-09-27 15:06:09","220.197.182.69");
INSERT INTO fy_customer_login_log VALUES("53","1","omQYXwNAT5uC15TQqMGxajJzqo4s","2018-09-27 16:01:18","220.197.182.69");
INSERT INTO fy_customer_login_log VALUES("54","1","omQYXwNAT5uC15TQqMGxajJzqo4s","2018-09-27 16:15:02","220.197.182.69");



DROP TABLE fy_customer_right;

CREATE TABLE `fy_customer_right` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '会员特权表',
  `name` varchar(50) DEFAULT NULL COMMENT '权益名称',
  `pic` varchar(255) DEFAULT NULL COMMENT '权益图',
  `desc` varchar(255) DEFAULT NULL COMMENT '权益描述',
  `instruction` varchar(255) DEFAULT NULL COMMENT '权益说明',
  `status` tinyint(1) DEFAULT '1' COMMENT '1启用|0禁用',
  `isdelete` tinyint(1) DEFAULT '0' COMMENT '1删除|0未删除 ',
  `create_time` int(11) DEFAULT NULL COMMENT '增加时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO fy_customer_right VALUES("1","新人礼包","/pic/uploads/20180903/2b2e90ff2b073b544240a3152c7416ff.jpg","新人专享","&lt;p&gt;礼包包含一张优惠券、一张抵用券、一张积分券&lt;/p&gt;","1","0","1532339953","1535936878");
INSERT INTO fy_customer_right VALUES("2","生日礼包","/pic/uploads/20180723/00b284f74955a532c941f0d4d061c7fd.jpg","生日会员专享","&lt;p&gt;生日会员专享&lt;/p&gt;","1","0","1532340075","1535772767");
INSERT INTO fy_customer_right VALUES("3","钻石会员专享","/pic/uploads/20180723/6486343a125aabff9602a9e54715d5dc.png","钻石会员专享","&lt;p&gt;钻石会员专享&lt;/p&gt;","1","0","1532340098","1535772763");
INSERT INTO fy_customer_right VALUES("4","升级送积分","/pic/uploads/20180901/ad61a9b50e7d2b918618a29c9d7db9c8.png","升级送积分","&lt;p&gt;升级送积分&lt;/p&gt;","1","0","1532340122","1535773687");
INSERT INTO fy_customer_right VALUES("5","fff","/pic/uploads/20180901/216be9b0a3218cc416d95c39e00e52ed.png","ffff","&lt;p&gt;ffffff&lt;/p&gt;","1","0","1535772748","1535772748");



DROP TABLE fy_customer_sign;

CREATE TABLE `fy_customer_sign` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '会员签到表',
  `uid` int(11) NOT NULL COMMENT '签到用户',
  `score` decimal(10,2) DEFAULT NULL COMMENT '签到积分',
  `reward_score` decimal(10,2) DEFAULT NULL COMMENT '奖励积分',
  `addtime` int(11) NOT NULL COMMENT '签到时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO fy_customer_sign VALUES("1","3","2.00","0.00","1535766078");
INSERT INTO fy_customer_sign VALUES("2","2","2.00","0.00","1536022695");
INSERT INTO fy_customer_sign VALUES("3","4","2.00","0.00","1536830322");



DROP TABLE fy_customer_sign_rule;

CREATE TABLE `fy_customer_sign_rule` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '会员签到规则表',
  `continuous_days_one` int(255) DEFAULT NULL,
  `continuous_days_two` int(11) NOT NULL COMMENT '连续签到天数',
  `continuous_days_three` int(11) NOT NULL,
  `get_score_one` decimal(10,2) NOT NULL COMMENT '获得积分',
  `get_score_two` decimal(10,2) NOT NULL,
  `get_score_three` decimal(10,2) NOT NULL,
  `addtime` int(11) NOT NULL COMMENT '时间',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  `desc` varchar(255) DEFAULT NULL COMMENT '详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE fy_customer_task;

CREATE TABLE `fy_customer_task` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `main_pic` varchar(255) DEFAULT NULL COMMENT '主图',
  `display` int(1) DEFAULT NULL COMMENT '1图片|2图片+文字',
  `reward_score` decimal(10,2) DEFAULT NULL COMMENT '奖励积分',
  `name` varchar(255) DEFAULT NULL COMMENT '任务名称',
  `url` varchar(255) DEFAULT NULL COMMENT '链接',
  `start_date` int(10) DEFAULT NULL COMMENT '任务开始时间',
  `end_date` int(10) DEFAULT NULL COMMENT '结束时间',
  `detail` text COMMENT '内容详情',
  `desc` text COMMENT '活动说明',
  `status` tinyint(1) DEFAULT NULL COMMENT '1启用|0禁用',
  `isdelete` tinyint(1) DEFAULT '0' COMMENT '1删除|0未删除',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE fy_customer_task_log;

CREATE TABLE `fy_customer_task_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '会员任务完成明细表',
  `uid` int(10) NOT NULL COMMENT '用户ID',
  `task_id` int(11) NOT NULL COMMENT '任务ID',
  `time` int(11) DEFAULT NULL COMMENT '参与时间',
  `status` tinyint(1) NOT NULL COMMENT '1完成|0未完成',
  `reward_score` decimal(10,2) NOT NULL COMMENT '奖励积分',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;




DROP TABLE fy_file;

CREATE TABLE `fy_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '文件类型，1-image | 2-file',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '文件名',
  `original` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `domain` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `size` int(10) unsigned NOT NULL DEFAULT '0',
  `mtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=735 DEFAULT CHARSET=utf8;

INSERT INTO fy_file VALUES("674","3","/tmp/uploads/20180822/7a2570970d3d8229dcf3deca8903d946.png","微信图片_20180807145703.png","","image/png","172212","1534924480");
INSERT INTO fy_file VALUES("675","3","/tmp/uploads/20180823/e7f06b85a02fbc3c57b06d42ff297224.png","23BFF577-AA70-4613-BF68-4FDA2C6D7203.png","","image/png","117804","1534989751");
INSERT INTO fy_file VALUES("676","3","/tmp/uploads/20180823/bbf287373028bc77056ad3328d11d4d7.jpeg","660436E6-ABD0-4ACC-A562-1D4A99CB5B99.jpeg","","image/jpeg","230375","1534989770");
INSERT INTO fy_file VALUES("677","3","/tmp/uploads/20180823/a31f0d6a1d54066e45309e35d936241d.png","86BFDD88-55C5-434B-96A2-B406A8C4C9C9.png","","image/png","197234","1534989793");
INSERT INTO fy_file VALUES("678","3","/tmp/uploads/20180823/d16f4b25c83f76982a894098c0ffbded.jpeg","A8392A56-7F2B-4E28-92E7-B9E34D22FFF4.jpeg","","image/jpeg","661051","1534989793");
INSERT INTO fy_file VALUES("679","3","/tmp/uploads/20180823/5a8007d0f2cd281cbd1474c068dd157a.png","DED2B0F3-A9A9-4DDF-9132-8E78893ECE19.png","","image/png","117804","1534989862");
INSERT INTO fy_file VALUES("680","3","/tmp/uploads/20180823/7f4d2e22ccb9dfbfe190eed1559b9749.jpeg","0733EED8-0034-4409-99D8-50BC06BC2DED.jpeg","","image/jpeg","83728","1534989862");
INSERT INTO fy_file VALUES("681","3","/tmp/uploads/20180823/6d23b382bce06b971bcec6565cf82cec.jpeg","2C3D9447-A9BB-4EBF-B6B5-26A63DA70C3A.jpeg","","image/jpeg","264262","1534989862");
INSERT INTO fy_file VALUES("682","3","/tmp/uploads/20180823/1c753914e5fd1b45dfe99cfa41d47485.jpeg","94CB142A-AFAC-4F1B-9446-3901032F1486.jpeg","","image/jpeg","661051","1534989862");
INSERT INTO fy_file VALUES("683","3","/tmp/uploads/20180823/fbac4558997b2d555673bdf29427b89d.png","5BCC1473-BF15-4CCD-8983-4D064AEC8CB9.png","","image/png","197234","1534989862");
INSERT INTO fy_file VALUES("684","3","/tmp/uploads/20180823/1ff0415401dd35672a17d0bd8c1edf48.png","59669F98-126A-4356-8360-DE3DEEEEC0D2.png","","image/png","117804","1534989872");
INSERT INTO fy_file VALUES("685","3","/tmp/uploads/20180828/e55b86ee3d35c7f152e9a64783a56d44.png","QQ截图20180828091055.png","","image/png","208617","1535418730");
INSERT INTO fy_file VALUES("686","3","/tmp/uploads/20180828/68c227a06d53ab34c46c55efdf2b163d.png","QQ截图20180828091250.png","","image/png","22563","1535418866");
INSERT INTO fy_file VALUES("687","3","/tmp/uploads/20180828/a11731d4b01a6dd41cdc21d3fdabf0cf.png","QQ截图20180828091328.png","","image/png","243390","1535418881");
INSERT INTO fy_file VALUES("688","3","/tmp/uploads/20180828/5fc1332916aee8884f8095dcb76365ba.png","QQ截图201808280911251.png","","image/png","282306","1535418895");
INSERT INTO fy_file VALUES("689","3","/tmp/uploads/20180828/db0bcda4a25dc457e29484b6b142504e.png","QQ截图20180828091328.png","","image/png","243390","1535418897");
INSERT INTO fy_file VALUES("690","3","/tmp/uploads/20180828/f20a29f350023a47de051e85f22a019c.png","QQ截图20180828091339.png","","image/png","218819","1535418898");
INSERT INTO fy_file VALUES("691","3","/tmp/uploads/20180828/1bde95e73b98544bc2de8d64ba1af22a.png","QQ截图20180828091354.png","","image/png","203993","1535418900");
INSERT INTO fy_file VALUES("692","3","/tmp/uploads/20180828/a8a3dde9ae76534705e8b932f3dc2e1c.png","QQ截图20180828092202.png","","image/png","15068","1535419386");
INSERT INTO fy_file VALUES("693","3","/tmp/uploads/20180828/71b30d3af10a39e896908eacfb343a70.png","QQ截图20180828092325.png","","image/png","169555","1535419460");
INSERT INTO fy_file VALUES("694","3","/tmp/uploads/20180828/c045d562f15a442f6a1f43cc5ed8ef1d.png","QQ截图20180828092336.png","","image/png","342611","1535419462");
INSERT INTO fy_file VALUES("695","3","/tmp/uploads/20180828/506f6fbc6072a1aac31e855b119870c2.png","QQ截图20180828092345.png","","image/png","313856","1535419464");
INSERT INTO fy_file VALUES("696","3","/tmp/uploads/20180828/72ec56580efd36a9c26379cfb4596237.png","QQ截图20180828092353.png","","image/png","344568","1535419466");
INSERT INTO fy_file VALUES("697","3","/tmp/uploads/20180828/e9e0eb39e98c6a3f34f255d1560ea838.png","QQ截图20180828092325.png","","image/png","169555","1535419672");
INSERT INTO fy_file VALUES("698","3","/tmp/uploads/20180828/1703f293be77eeb90b78533b9778d25e.png","QQ截图20180828092325.png","","image/png","169555","1535419912");
INSERT INTO fy_file VALUES("699","3","/tmp/uploads/20180828/482e772aa624a6168b9f60cfea70c603.png","QQ截图20180828091328.png","","image/png","243390","1535421366");
INSERT INTO fy_file VALUES("700","3","/tmp/uploads/20180828/5c1f977d8b6c7720f0e41a3085fe6725.jpg","mmexport1535421394617.jpg","","image/jpeg","218819","1535421440");
INSERT INTO fy_file VALUES("701","3","/tmp/uploads/20180828/7d52afafc59ce80ff6823ea9f0ae818c.jpg","mmexport1535421391168.jpg","","image/jpeg","243390","1535421446");
INSERT INTO fy_file VALUES("702","3","/tmp/uploads/20180828/67d3e57d568a4623e2af7ff04bd168f2.jpg","微信图片_20180814113948.jpg","","image/jpeg","45519","1535428426");
INSERT INTO fy_file VALUES("703","3","/tmp/uploads/20180828/a5b545db813421d75aaecfcd42d8a777.jpg","微信图片_20180814115907.jpg","","image/jpeg","36604","1535428426");
INSERT INTO fy_file VALUES("704","3","/tmp/uploads/20180828/eddbd53897f5e2bb6ad54472d7a8c698.jpg","u=214273920,3494333795&fm=200&gp=0.jpg","","image/jpeg","22394","1535444368");
INSERT INTO fy_file VALUES("705","3","/tmp/uploads/20180828/89c9a66a8fc734649e15a75ab7408024.jpg","u=214273920,3494333795&fm=200&gp=0.jpg","","image/jpeg","22394","1535444375");
INSERT INTO fy_file VALUES("706","3","/tmp/uploads/20180828/30a0caede7a7f351efdfc6a40437e7de.jpg","u=3323704405,62374999&fm=202&src=762&mola=new&crop=v1.jpg","","image/jpeg","9142","1535444375");
INSERT INTO fy_file VALUES("707","3","/tmp/uploads/20180828/9a2e1e360b51b0eb8ae7a7a7ac02fd63.jpg","u=1950348361,3686672964&fm=77&src=1002.jpg","","image/jpeg","7341","1535444376");
INSERT INTO fy_file VALUES("708","3","/tmp/uploads/20180828/dacbf091fa632f201a0a514d77cd61a7.jpg","u=4065688865,1655321373&fm=202.jpg","","image/jpeg","69530","1535444376");
INSERT INTO fy_file VALUES("709","3","/tmp/uploads/20180829/620e8b0e42fc5f40b6a25f14d2bc1aaf.jpg","O1CN011l4Phoe3KtdIeIz_!!917264765.jpg_60x60q90.jpg","","image/jpeg","2122","1535528982");
INSERT INTO fy_file VALUES("710","3","/tmp/uploads/20180829/4acc86019b036b0f8343ea773f01ff9f.jpg","O1CN011l4Phoe3KtdIeIz_!!917264765.jpg_60x60q90.jpg","","image/jpeg","2122","1535529107");
INSERT INTO fy_file VALUES("711","3","/tmp/uploads/20180829/82e7853f93e108fa216bb00defb1c47a.jpg","O1CN011l4PhpX7LJx0ruH_!!917264765.jpg_60x60q90.jpg","","image/jpeg","2476","1535529107");
INSERT INTO fy_file VALUES("712","3","/tmp/uploads/20180829/f9b8f57aa202464606723cbeb3636513.jpg","TB2U8_prCYTBKNjSZKbXXXJ8pXa_!!917264765.jpg_430x430q90.jpg","","image/jpeg","54429","1535529107");
INSERT INTO fy_file VALUES("713","3","/tmp/uploads/20180829/8e3196c747bc38c0f48246700aac1534.jpg","O1CN011l4PhpX7LJx0ruH_!!917264765.jpg_430x430q90.jpg","","image/jpeg","62967","1535529394");
INSERT INTO fy_file VALUES("714","3","/tmp/uploads/20180829/95e825fba136594ebfa7993a1b0c6c23.jpg","O1CN011l4PhpX7LJx0ruH_!!917264765.jpg_430x430q90.jpg","","image/jpeg","62967","1535529404");
INSERT INTO fy_file VALUES("715","3","/tmp/uploads/20180829/83df97b84fee562c38be9c1ac040d009.jpg","TB2U8_prCYTBKNjSZKbXXXJ8pXa_!!917264765.jpg_430x430q90.jpg","","image/jpeg","54429","1535529471");
INSERT INTO fy_file VALUES("716","3","/tmp/uploads/20180829/aef56645484fe050e6be48a7d29e187f.jpg","O1CN011l4PhpX7LJx0ruH_!!917264765.jpg_430x430q90.jpg","","image/jpeg","62967","1535529471");
INSERT INTO fy_file VALUES("717","3","/tmp/uploads/20180829/ff52a9827eae2d3b49ef19bae36a8756.jpg","TB2U8_prCYTBKNjSZKbXXXJ8pXa_!!917264765.jpg_430x430q90.jpg","","image/jpeg","54429","1535529539");
INSERT INTO fy_file VALUES("718","3","/tmp/uploads/20180830/ea1de0a49c95ce254cd599ec2fdae29e.png","QQ截图20180830092404.png","","image/png","257741","1535592307");
INSERT INTO fy_file VALUES("719","3","/tmp/uploads/20180830/ea45e2935e48ced0a4d5d41e0747b67f.png","QQ截图20180830092404.png","","image/png","257741","1535592325");
INSERT INTO fy_file VALUES("720","3","/tmp/uploads/20180830/4391e2482ec76691700cd515c9345bdb.png","QQ截图20180830092445.png","","image/png","188156","1535592325");
INSERT INTO fy_file VALUES("721","3","/tmp/uploads/20180830/c6aeb8f410cffb7177176664f22faeca.png","QQ截图20180830092427.png","","image/png","300680","1535592325");
INSERT INTO fy_file VALUES("722","3","/tmp/uploads/20180830/e36a0b9370ce4cc1f5253ecbe60965d3.png","QQ截图20180830092419.png","","image/png","272543","1535592325");
INSERT INTO fy_file VALUES("723","3","/tmp/uploads/20180830/2acd8620b35b3002254d1efe262bd616.png","QQ截图20180830092427.png","","image/png","300680","1535592336");
INSERT INTO fy_file VALUES("724","3","/tmp/uploads/20180830/e1cb7a1a90efbff95611e80dd15bb476.png","QQ截图20180830092445.png","","image/png","188156","1535592338");
INSERT INTO fy_file VALUES("725","3","/tmp/uploads/20180831/64d622707bdba1b080aafa78023e9939.jpg","timg (2).jpg","","image/jpeg","28989","1535685769");
INSERT INTO fy_file VALUES("726","3","/tmp/uploads/20180831/35cb42fbfe509141499aab67a3a0a680.jpg","timg (2).jpg","","image/jpeg","28989","1535685832");
INSERT INTO fy_file VALUES("727","3","/tmp/uploads/20180831/b7e860b80b4714b627f9d72e6f71d72b.jpg","timg (2).jpg","","image/jpeg","28989","1535685882");
INSERT INTO fy_file VALUES("728","3","/tmp/uploads/20180831/f6f882914e96e541e77f0d3af9e7eb8b.jpg","timg.jpg","","image/jpeg","19117","1535685890");
INSERT INTO fy_file VALUES("729","3","/tmp/uploads/20180831/c9eeb4703eccfd5b46d57249451c0db7.jpg","timg.jpg","","image/jpeg","19117","1535696547");
INSERT INTO fy_file VALUES("730","3","/tmp/uploads/20180831/1d24ff63ce97e98b5bfb4ff2fab9feb9.jpg","timg.jpg","","image/jpeg","19117","1535696577");
INSERT INTO fy_file VALUES("731","3","/tmp/uploads/20180831/443091067af6b9ff229b087de97c04ec.jpg","timg (2).jpg","","image/jpeg","28989","1535696587");
INSERT INTO fy_file VALUES("732","3","/tmp/uploads/20180901/216be9b0a3218cc416d95c39e00e52ed.png","logo.png","","image/png","527314","1535772712");
INSERT INTO fy_file VALUES("733","3","/tmp/uploads/20180901/ad61a9b50e7d2b918618a29c9d7db9c8.png","logo.png","","image/png","527314","1535773681");
INSERT INTO fy_file VALUES("734","3","/tmp/uploads/20180903/2b2e90ff2b073b544240a3152c7416ff.jpg","u=3084703808,4135587305&fm=111&gp=0.jpg","","image/jpeg","40217","1535936877");



DROP TABLE fy_gift_bag;

CREATE TABLE `fy_gift_bag` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '礼包管理表',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `lottery_id` varchar(255) NOT NULL COMMENT '奖券id用逗号拼接',
  `isdelete` tinyint(1) DEFAULT '0',
  `name` varchar(50) DEFAULT NULL COMMENT '名字',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO fy_gift_bag VALUES("3","1534310671","1535419998","1","1,2","0","新人礼包","");
INSERT INTO fy_gift_bag VALUES("4","1534310701","1535419990","1","1,2","0","生日礼包","");



DROP TABLE fy_gift_bag_log;

CREATE TABLE `fy_gift_bag_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '礼包记录',
  `openid` varchar(255) DEFAULT NULL,
  `gift_bag_id` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '0未发送1已经发送',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL COMMENT '1新人礼包2生日礼包3待定',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO fy_gift_bag_log VALUES("1","omQYXwNAT5uC15TQqMGxajJzqo4s","3","1","1535705545","","1");
INSERT INTO fy_gift_bag_log VALUES("2","omQYXwM8TEkiBZR7Ldm891OOWbNQ","3","1","1535705741","","1");
INSERT INTO fy_gift_bag_log VALUES("3","omQYXwAasNeXdGSMymd91487Ds1g","3","1","1535765279","","1");
INSERT INTO fy_gift_bag_log VALUES("4","omQYXwDVsykgBFcCiyYkL4AYJRzw","3","1","1535936619","","1");
INSERT INTO fy_gift_bag_log VALUES("5","omQYXwMaOPocRq4oIIBJufvIdNkU","3","1","1536135123","","1");
INSERT INTO fy_gift_bag_log VALUES("6","omQYXwMAFZsOxVq19vLvIBw2x514","3","1","1536197667","","1");
INSERT INTO fy_gift_bag_log VALUES("7","omQYXwIDROiZXZ_Ns30Am5sj7-K8","3","1","1536829695","","1");
INSERT INTO fy_gift_bag_log VALUES("8","omQYXwNlDXAoTwBwMi3xhgogfaVA","3","1","1536829743","","1");
INSERT INTO fy_gift_bag_log VALUES("9","omQYXwPRxRKyBc0LOW1jubli1s3o","3","1","1536829808","","1");



DROP TABLE fy_goods;

CREATE TABLE `fy_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '商品所属用户',
  `name` varchar(255) NOT NULL COMMENT '商品名称',
  `pic` text COMMENT '商品图片以json格式存储轮播图',
  `original_price` decimal(10,2) unsigned NOT NULL COMMENT '原价',
  `settlement_type` tinyint(4) DEFAULT '1' COMMENT '结算类型1-货币2-积分3-积分+货币',
  `goods_class_id` int(10) NOT NULL COMMENT '商品分类id',
  `goods_brand_id` int(10) DEFAULT NULL COMMENT '品牌id',
  `show_area` tinyint(4) DEFAULT '3' COMMENT '展示区域1-限时抢购2-积分商城3-日常售卖4-热销产品5-积分+现价',
  `detail` text NOT NULL COMMENT '商品详情',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1上架0仓库中',
  `main_image` varchar(255) NOT NULL COMMENT '商品主图',
  `subtitle` varchar(50) DEFAULT NULL COMMENT '商品副标题',
  `create_time` int(10) DEFAULT NULL COMMENT '添加时间',
  `update_time` int(10) DEFAULT NULL COMMENT '修改时间',
  `orderby` int(10) DEFAULT NULL COMMENT '商品排序值',
  `click_count` int(10) DEFAULT NULL COMMENT '商品点击数',
  `goods_weight` decimal(10,3) NOT NULL COMMENT '商品重量',
  `start_date` int(11) DEFAULT NULL COMMENT '开售时间',
  `end_date` int(11) DEFAULT NULL COMMENT '结束时间',
  `is_real` tinyint(1) NOT NULL COMMENT '是否是实物1 是 0 否',
  `return_score` int(10) DEFAULT NULL COMMENT '返现积分',
  `score_price` int(10) DEFAULT NULL COMMENT '积分,价格',
  `price_real` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '价格',
  `score` int(10) DEFAULT NULL COMMENT '积分换价',
  `basic_price` varchar(255) DEFAULT NULL COMMENT '现价',
  `isdelete` tinyint(1) DEFAULT '0' COMMENT '是否添加到回收站',
  `store_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1下单减库存 2拍下减库存',
  `free_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '包邮1不包邮0',
  `postage` decimal(10,2) DEFAULT NULL COMMENT '邮费',
  `after_sale` varchar(255) DEFAULT NULL COMMENT '售后保障',
  `routine` text COMMENT '常规参数以json存',
  `shop_code` varchar(255) DEFAULT NULL COMMENT '商家编码',
  `buy_num` int(11) DEFAULT '0' COMMENT '销量',
  `bar_code` varchar(255) DEFAULT NULL COMMENT '商品条形码',
  `is_return_goods` tinyint(1) DEFAULT '1' COMMENT '1支持，0否',
  `yieldly` varchar(50) DEFAULT NULL COMMENT '生产地',
  `is_comment` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否允许评论',
  `up_tip` tinyint(1) DEFAULT '0' COMMENT '0未提醒1已提醒',
  `up_error_reason` text,
  `service` text COMMENT '字符串存储',
  `service_mobile` varchar(12) DEFAULT NULL COMMENT '商家联系电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO fy_goods VALUES("1","21","陕西嘎啦苹果水果新鲜10斤当季整箱现摘批发包邮小红富士","[\"\\/pic\\/uploads\\/20180828\\/5fc1332916aee8884f8095dcb76365ba.png\",\"\\/pic\\/uploads\\/20180828\\/db0bcda4a25dc457e29484b6b142504e.png\",\"\\/pic\\/uploads\\/20180828\\/f20a29f350023a47de051e85f22a019c.png\",\"\\/pic\\/uploads\\/20180828\\/1bde95e73b98544bc2de8d64ba1af22a.png\"]","30.00","1","1","20","4","&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180828/1535419269999019.jpg&quot; title=&quot;1535419269999019.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180828/1535419269956748.jpg&quot; title=&quot;1535419269956748.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180828/1535419269839241.jpg&quot; title=&quot;1535419269839241.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180828/1535419269460704.jpg&quot; title=&quot;1535419269460704.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180828/1535419269835149.jpg&quot; title=&quot;1535419269835149.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180828/1535419269314509.jpg&quot; title=&quot;1535419269314509.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180828/1535419269170969.jpg&quot; title=&quot;1535419269170969.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180828/1535419270321688.jpg&quot; title=&quot;1535419270321688.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180828/1535419270582547.jpg&quot; title=&quot;1535419270582547.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180828/1535419270622995.jpg&quot; title=&quot;1535419270622995.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;","1","/pic/uploads/20180828/a11731d4b01a6dd41cdc21d3fdabf0cf.png","","1535703801","1535703801","10","","5000.000","","","1","10","","0.00","0","0.01","0","1","1","0.00","&lt;p&gt;坏单包退：签收后24小时内，食品出现腐败变质，商家承诺24小时之内处理。&lt;/p&gt;","{\"\\u54c1\\u724c\":\"\\u751c\\u53ef\\u679c\\u56ed\",\"\\u4fdd\\u8d28\\u671f\":\"7\\u5929\",\"\\u51c0\\u542b\\u91cf\":\"5000g\",\"\\u5305\\u88c5\\u65b9\\u5f0f\":\"\\u5305\\u88c5\",\"\\u662f\\u5426\\u4e3a\\u6709\\u673a\\u98df\\u54c1\":\"\\u5426\",\"\\u4ea7\\u5730\":\"\\u4e2d\\u56fd\\u5927\\u9646\",\"\\u7701\\u4efd\":\"\\u9655\\u897f\\u7701\",\"\\u5957\\u9910\\u4efd\\u91cf\":\"3\\u4eba\\u4efd\",\"\\u914d\\u9001\\u9891\\u6b21\":\"1\\u54682\\u6b21\"}","","18629","","1","","1","0","","[\"\\u574f\\u5355\\u5305\\u9000\"]","86701701");
INSERT INTO fy_goods VALUES("2","20","澳大利亚脐橙10个约140g/个 进口甜橙子新鲜水果","[\"\\/pic\\/uploads\\/20180828\\/71b30d3af10a39e896908eacfb343a70.png\",\"\\/pic\\/uploads\\/20180828\\/c045d562f15a442f6a1f43cc5ed8ef1d.png\",\"\\/pic\\/uploads\\/20180828\\/506f6fbc6072a1aac31e855b119870c2.png\",\"\\/pic\\/uploads\\/20180828\\/72ec56580efd36a9c26379cfb4596237.png\"]","50.00","1","3","21","4","&lt;p&gt;&lt;img src=&quot;http://www.fyxt701.com/ueditor/php/upload/image/20180828/1535419655175110.jpg&quot; title=&quot;1535419655175110.jpg&quot;/&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180828/1535419655490129.jpg&quot; title=&quot;1535419655490129.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180828/1535419656312797.jpg&quot; title=&quot;1535419656312797.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180828/1535419656128199.jpg&quot; title=&quot;1535419656128199.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180828/1535419656973206.jpg&quot; title=&quot;1535419656973206.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;","1","/pic/uploads/20180828/e9e0eb39e98c6a3f34f255d1560ea838.png","","1538029205","1538029205","10","","1400.000","","","1","10","","0.00","1","0.01","0","1","1","0.00","&lt;p&gt;坏单包退：确认收货24小时内，食物发生腐败变质，商家在24小时内处理。&lt;/p&gt;","{\"\\u54c1\\u724c\":\"\\u6613\\u679c\\u751f\\u9c9c\",\"\\u51c0\\u542b\\u91cf\":\"1400g\",\"\\u5305\\u88c5\\u65b9\\u5f0f\":\"\\u5305\\u88c5\",\"\\u4fdd\\u8d28\\u671f\":\"7\\u5929\",\"\\u5957\\u9910\\u4efd\\u91cf\":\"1\\u4eba\\u4efd\",\"\\u914d\\u9001\\u9891\\u6b21\":\"1\\u54682\\u6b21\"}","","10661","","0","","1","0","","[\"\\u574f\\u5355\\u5305\\u9000\"]","86701701");
INSERT INTO fy_goods VALUES("3","21","【新品预售】SK-II skii sk2能量大红瓶面霜套装轻盈型 保湿A","[\"\\/pic\\/uploads\\/20180829\\/83df97b84fee562c38be9c1ac040d009.jpg\",\"\\/pic\\/uploads\\/20180829\\/aef56645484fe050e6be48a7d29e187f.jpg\"]","10.00","1","4","15","1","&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180829/1535529382432667.jpg&quot; title=&quot;1535529382432667.jpg&quot; alt=&quot;O1CN011l4PhpX7LJx0ruH_!!917264765.jpg_430x430q90.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180829/1535529323978093.jpg&quot; title=&quot;1535529323978093.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;","1","/pic/uploads/20180829/ff52a9827eae2d3b49ef19bae36a8756.jpg","【新品预售】SK-II skii sk2能量大红瓶面霜套装轻盈型 保湿A","1535592151","1535592151","10","","10.000","1535530402","1535618143","1","10","","0.00","0","0.2","0","1","1","0.00","&lt;p&gt;质量不好可退换：非人为损坏&lt;/p&gt;","","","12","","1","江苏苏州","1","0","","[\"\\u8d28\\u91cf\\u4e0d\\u597d\\u53ef\\u9000\\u6362\",\"7\\u65e5\\u53ef\\u6362\"]","18302563273");
INSERT INTO fy_goods VALUES("4","21","新疆喀什西梅4斤大果顺丰包邮当季水果 新鲜西梅","[\"\\/pic\\/uploads\\/20180830\\/ea45e2935e48ced0a4d5d41e0747b67f.png\",\"\\/pic\\/uploads\\/20180830\\/4391e2482ec76691700cd515c9345bdb.png\",\"\\/pic\\/uploads\\/20180830\\/c6aeb8f410cffb7177176664f22faeca.png\",\"\\/pic\\/uploads\\/20180830\\/e36a0b9370ce4cc1f5253ecbe60965d3.png\",\"\\/pic\\/uploads\\/20180830\\/2acd8620b35b3002254d1efe262bd616.png\",\"\\/pic\\/uploads\\/20180830\\/e1cb7a1a90efbff95611e80dd15bb476.png\"]","50.00","3","5","20","4","&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180830/1535592715470866.jpg&quot; title=&quot;1535592715470866.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180830/1535592715223950.jpg&quot; title=&quot;1535592715223950.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180830/1535592715131169.jpg&quot; title=&quot;1535592715131169.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180830/1535592715428269.jpg&quot; title=&quot;1535592715428269.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180830/1535592715454974.jpg&quot; title=&quot;1535592715454974.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180830/1535592715724215.jpg&quot; title=&quot;1535592715724215.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180830/1535592715908613.jpg&quot; title=&quot;1535592715908613.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180830/1535592715538300.jpg&quot; title=&quot;1535592715538300.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180830/1535592715682912.jpg&quot; title=&quot;1535592715682912.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;","1","/pic/uploads/20180830/ea1de0a49c95ce254cd599ec2fdae29e.png","","1535593177","1535593177","10","","1000.000","","","1","10","","0.00","1","0.01","0","1","1","0.00","&lt;p&gt;坏单包退：确认收货24小时内食物出现腐败变质，商家承诺24小时内处理。&lt;/p&gt;","{\"\\u54c1\\u724c\":\"\\u751c\\u53ef\\u679c\\u56ed\",\"\\u4fdd\\u8d28\\u671f\":\"5\\u5929\",\"\\u51c0\\u542b\\u91cf\":\"1kg\\uff08\\u542b\\uff09-2.5kg\\uff08\\u542b\\uff09\",\"\\u5305\\u88c5\\u65b9\\u5f0f\":\"\\u5305\\u88c5\",\"\\u552e\\u5356\\u65b9\\u5f0f\":\"\\u5355\\u54c1\",\"\\u662f\\u5426\\u4e3a\\u6709\\u673a\\u98df\\u54c1\":\"\\u5426\",\"\\u751f\\u9c9c\\u50a8\\u5b58\\u6e29\\u5ea6\":\"0-8\\u2103\",\"\\u4ea7\\u5730\":\"\\u4e2d\\u56fd\\u5927\\u9646\",\"\\u7701\\u4efd\":\"\\u65b0\\u7586\\u7ef4\\u543e\\u5c14\\u65cf\\u81ea\\u6cbb\\u533a\",\"\\u57ce\\u5e02\":\"\\u5580\\u4ec0\\u5730\\u533a\",\"\\u5957\\u9910\\u4efd\\u91cf\":\"5\\u4eba\\u4efd\",\"\\u5957\\u9910\\u5468\\u671f\":\"1\\u5468\",\"\\u914d\\u9001\\u9891\\u6b21\":\"1\\u54682\\u6b21\"}","","999","","1","","1","0","","[\"\\u574f\\u5355\\u5305\\u9000\"]","86701701");
INSERT INTO fy_goods VALUES("5","21","苹果手机","[\"\\/pic\\/uploads\\/20180831\\/b7e860b80b4714b627f9d72e6f71d72b.jpg\",\"\\/pic\\/uploads\\/20180831\\/f6f882914e96e541e77f0d3af9e7eb8b.jpg\"]","5200.00","1","6","20","1","&lt;p&gt;苹果手机&lt;/p&gt;","1","/pic/uploads/20180831/35cb42fbfe509141499aab67a3a0a680.jpg","苹果手机","1535768413","1535768413","10","","300.000","1535685661","1536031265","1","0","","0.00","0","0.01","0","1","1","0.00","&lt;p&gt;ok&lt;/p&gt;","","","500","","1","上海","1","0","","[\"\\u6ca1\\u6709\\u670d\\u52a1\"]","");
INSERT INTO fy_goods VALUES("6","21","积分商城苹果手机","[\"\\/pic\\/uploads\\/20180831\\/1d24ff63ce97e98b5bfb4ff2fab9feb9.jpg\",\"\\/pic\\/uploads\\/20180831\\/443091067af6b9ff229b087de97c04ec.jpg\"]","10.00","2","6","20","2","&lt;p&gt;0000&lt;/p&gt;","1","/pic/uploads/20180831/c9eeb4703eccfd5b46d57249451c0db7.jpg","","1535696647","1535696647","10","","300.000","","","1","10","","0.00","10","","0","1","1","","&lt;p&gt;正品&lt;/p&gt;","","","11","","1","","1","0","","[\"\\u6b63\\u54c1\\u4fdd\\u969c\"]","");



DROP TABLE fy_goods_attribute;

CREATE TABLE `fy_goods_attribute` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品属性存储值表',
  `goods_id` int(11) NOT NULL,
  `attribute_name` varchar(255) DEFAULT NULL COMMENT '商品存贮所有属性的值',
  `goods_code` varchar(255) DEFAULT NULL COMMENT '商品编码关联id',
  `store` int(11) DEFAULT '0' COMMENT '库存',
  `price` decimal(10,2) DEFAULT '0.00' COMMENT '价格',
  `bar_code` varchar(255) NOT NULL COMMENT '条形码',
  `point_score` int(10) DEFAULT '0' COMMENT '积分价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

INSERT INTO fy_goods_attribute VALUES("3","1","1535420770059_净含量:1535420787291_5000g","12425425","60","0.01","452754754","1");
INSERT INTO fy_goods_attribute VALUES("6","3","1535529211591_重量:1535529229659_80g","","20","0.50","","0");
INSERT INTO fy_goods_attribute VALUES("8","3","1535529211591_重量:1535534351500_45","","44","234.00","","0");
INSERT INTO fy_goods_attribute VALUES("9","4","1535592549001_净含量:1535592562262_1kg","404524524","998","0.01","4250425401","1");
INSERT INTO fy_goods_attribute VALUES("10","4","1535592549001_净含量:1535592566192_1.5kg","404524524","999","0.02","4250425402","2");
INSERT INTO fy_goods_attribute VALUES("11","4","1535592549001_净含量:1535592569678_2kg","404524524","999","0.03","4250425403","3");
INSERT INTO fy_goods_attribute VALUES("12","4","1535592549001_净含量:1535592573415_2.5kg","404524524","1000","0.04","4250425404","4");
INSERT INTO fy_goods_attribute VALUES("16","5","1535685741914_规格:1535685749337_通用","","10","0.01","","10");
INSERT INTO fy_goods_attribute VALUES("17","6","1535696425476_属性:1535696432758_通用","","98","0.01","","10");
INSERT INTO fy_goods_attribute VALUES("18","2","1535420855229_净含量:1535420870046_1400g,1538028879900_甜度:1538028886495_酸","","20","40.00","","0");
INSERT INTO fy_goods_attribute VALUES("19","2","1535420855229_净含量:1535420870046_1400g,1538028879900_甜度:1538028890560_一般","","30","50.00","","0");
INSERT INTO fy_goods_attribute VALUES("20","2","1535420855229_净含量:1535420870046_1400g,1538028879900_甜度:1538028894275_甜","","50","60.00","","0");
INSERT INTO fy_goods_attribute VALUES("21","2","1535420855229_净含量:1538028834575_100g,1538028879900_甜度:1538028886495_酸","","60","10.00","","0");
INSERT INTO fy_goods_attribute VALUES("22","2","1535420855229_净含量:1538028834575_100g,1538028879900_甜度:1538028890560_一般","","70","20.00","","0");
INSERT INTO fy_goods_attribute VALUES("23","2","1535420855229_净含量:1538028834575_100g,1538028879900_甜度:1538028894275_甜","","80","30.00","","0");



DROP TABLE fy_goods_browse;

CREATE TABLE `fy_goods_browse` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品浏览记录表',
  `uid` int(11) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `num` int(1) DEFAULT NULL COMMENT '浏览次数',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

INSERT INTO fy_goods_browse VALUES("1","","omQYXwM8TEkiBZR7Ldm891OOWbNQ","1","1535705776","6","1535705776");
INSERT INTO fy_goods_browse VALUES("2","","omQYXwNAT5uC15TQqMGxajJzqo4s","1","1535705870","28","1535705870");
INSERT INTO fy_goods_browse VALUES("3","","omQYXwAasNeXdGSMymd91487Ds1g","1","1535765321","11","1535765321");
INSERT INTO fy_goods_browse VALUES("4","","omQYXwAasNeXdGSMymd91487Ds1g","2","1535765540","5","1535765540");
INSERT INTO fy_goods_browse VALUES("5","","omQYXwAasNeXdGSMymd91487Ds1g","5","1535765565","5","1535765565");
INSERT INTO fy_goods_browse VALUES("6","","omQYXwAasNeXdGSMymd91487Ds1g","4","1535765723","8","1535765723");
INSERT INTO fy_goods_browse VALUES("7","","omQYXwAasNeXdGSMymd91487Ds1g","6","1535766098","12","1535766098");
INSERT INTO fy_goods_browse VALUES("8","","omQYXwM8TEkiBZR7Ldm891OOWbNQ","2","1536022664","7","1536022664");
INSERT INTO fy_goods_browse VALUES("9","","omQYXwMAFZsOxVq19vLvIBw2x514","2","1536198279","4","1536198279");
INSERT INTO fy_goods_browse VALUES("10","","omQYXwNAT5uC15TQqMGxajJzqo4s","4","1536735064","5","1536735064");
INSERT INTO fy_goods_browse VALUES("11","","omQYXwDVsykgBFcCiyYkL4AYJRzw","4","1536829557","2","1536829557");
INSERT INTO fy_goods_browse VALUES("12","","omQYXwDVsykgBFcCiyYkL4AYJRzw","1","1536829748","2","1536829748");
INSERT INTO fy_goods_browse VALUES("13","","omQYXwDVsykgBFcCiyYkL4AYJRzw","2","1536829777","3","1536829777");
INSERT INTO fy_goods_browse VALUES("14","","omQYXwIDROiZXZ_Ns30Am5sj7-K8","1","1536829790","1","1536829790");
INSERT INTO fy_goods_browse VALUES("15","","omQYXwIDROiZXZ_Ns30Am5sj7-K8","2","1536829829","1","1536829829");
INSERT INTO fy_goods_browse VALUES("16","","omQYXwIDROiZXZ_Ns30Am5sj7-K8","4","1536829843","1","1536829843");
INSERT INTO fy_goods_browse VALUES("17","","omQYXwNAT5uC15TQqMGxajJzqo4s","2","1537939023","5","1537939023");
INSERT INTO fy_goods_browse VALUES("18","","omQYXwM8TEkiBZR7Ldm891OOWbNQ","4","1538028479","2","1538028479");



DROP TABLE fy_goods_class;

CREATE TABLE `fy_goods_class` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) NOT NULL DEFAULT '0',
  `name` varchar(20) NOT NULL COMMENT '分类名称',
  `path` varchar(255) NOT NULL DEFAULT '0,' COMMENT '路径',
  `pic` varchar(255) DEFAULT NULL COMMENT '分类图片',
  `user_id` int(10) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO fy_goods_class VALUES("1","0","水果","0,","","");
INSERT INTO fy_goods_class VALUES("2","1","苹果","0,1,","","");
INSERT INTO fy_goods_class VALUES("3","1","橙子","0,1,","","");
INSERT INTO fy_goods_class VALUES("4","0","化妆品","0,","","");
INSERT INTO fy_goods_class VALUES("5","1","西梅","0,1,","","");
INSERT INTO fy_goods_class VALUES("6","0","手机","0,","","");



DROP TABLE fy_goods_comment;

CREATE TABLE `fy_goods_comment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品评价表',
  `openid` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `uid` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL COMMENT '商品id',
  `goods_name` varchar(255) NOT NULL COMMENT '商品名称',
  `pic` text COMMENT '评价晒图json存储最多5张',
  `content` text COMMENT '评论内容',
  `create_time` int(11) DEFAULT NULL COMMENT '评论时间',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态，是否显示',
  `similarity_score` decimal(10,2) NOT NULL COMMENT '相似积分',
  `logistics_score` decimal(10,2) NOT NULL COMMENT '物流得分',
  `service_score` decimal(10,2) NOT NULL COMMENT '服务积分',
  `avg_score` decimal(10,2) NOT NULL COMMENT '平均分',
  `isdelete` tinyint(4) NOT NULL DEFAULT '0',
  `return_content` text COMMENT '回复',
  `return_is` tinyint(1) DEFAULT '0' COMMENT '0未回复1已回复',
  `user_id` int(11) DEFAULT NULL COMMENT '所属商户id',
  `ogid` int(11) DEFAULT NULL COMMENT '关联order_goods_id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE fy_goods_comment_reply;

CREATE TABLE `fy_goods_comment_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论回复表',
  `user_id` int(10) NOT NULL COMMENT '回复人id',
  `goods_comment_id` int(10) NOT NULL COMMENT '回复的那条留言',
  `addtime` int(10) DEFAULT NULL COMMENT '回复时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE fy_goods_proprety_name;

CREATE TABLE `fy_goods_proprety_name` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品属性名表',
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  `name` varchar(255) NOT NULL COMMENT '属性名',
  `goods_class_id` int(11) DEFAULT NULL COMMENT '分类id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

INSERT INTO fy_goods_proprety_name VALUES("26","3","1535529211591_重量","");
INSERT INTO fy_goods_proprety_name VALUES("28","4","1535592549001_净含量","");
INSERT INTO fy_goods_proprety_name VALUES("31","6","1535696425476_属性","");
INSERT INTO fy_goods_proprety_name VALUES("33","1","1535420770059_净含量","");
INSERT INTO fy_goods_proprety_name VALUES("35","5","1535685741914_规格","");
INSERT INTO fy_goods_proprety_name VALUES("36","2","1535420855229_净含量","");
INSERT INTO fy_goods_proprety_name VALUES("37","2","1538028879900_甜度","");



DROP TABLE fy_goods_proprety_val;

CREATE TABLE `fy_goods_proprety_val` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品属性值表',
  `propre_name_id` int(11) NOT NULL COMMENT '属性名id',
  `value` varchar(255) NOT NULL COMMENT '属性值',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品id备用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

INSERT INTO fy_goods_proprety_val VALUES("58","26","1535529229659_80g","3");
INSERT INTO fy_goods_proprety_val VALUES("59","26","1535534351500_45","3");
INSERT INTO fy_goods_proprety_val VALUES("68","28","1535592562262_1kg","4");
INSERT INTO fy_goods_proprety_val VALUES("69","28","1535592566192_1.5kg","4");
INSERT INTO fy_goods_proprety_val VALUES("70","28","1535592569678_2kg","4");
INSERT INTO fy_goods_proprety_val VALUES("71","28","1535592573415_2.5kg","4");
INSERT INTO fy_goods_proprety_val VALUES("77","31","1535696432758_通用","6");
INSERT INTO fy_goods_proprety_val VALUES("79","33","1535420787291_5000g","1");
INSERT INTO fy_goods_proprety_val VALUES("81","35","1535685749337_通用","5");
INSERT INTO fy_goods_proprety_val VALUES("82","36","1535420870046_1400g","2");
INSERT INTO fy_goods_proprety_val VALUES("83","36","1538028834575_100g","2");
INSERT INTO fy_goods_proprety_val VALUES("84","37","1538028886495_酸","2");
INSERT INTO fy_goods_proprety_val VALUES("85","37","1538028890560_一般","2");
INSERT INTO fy_goods_proprety_val VALUES("86","37","1538028894275_甜","2");



DROP TABLE fy_kd;

CREATE TABLE `fy_kd` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL COMMENT '快递名称',
  `key` varchar(255) DEFAULT NULL COMMENT '对应的值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=utf8;

INSERT INTO fy_kd VALUES("2","顺丰","shunfeng");
INSERT INTO fy_kd VALUES("3","EMS","ems");
INSERT INTO fy_kd VALUES("4","邮政包裹","youzhengguonei");
INSERT INTO fy_kd VALUES("5","百世汇通","huitongkuaidi");
INSERT INTO fy_kd VALUES("6","申通","shentong");
INSERT INTO fy_kd VALUES("7","中通","zhongtong");
INSERT INTO fy_kd VALUES("8","圆通","yuantong");
INSERT INTO fy_kd VALUES("9","国通","guotongkuaidi");
INSERT INTO fy_kd VALUES("10","韵达","yunda");
INSERT INTO fy_kd VALUES("11","天天","tiantian");
INSERT INTO fy_kd VALUES("12","优速","youshuwuliu");
INSERT INTO fy_kd VALUES("13","快捷","kuaijiesudi");
INSERT INTO fy_kd VALUES("14","全峰","quanfengkuaidi");
INSERT INTO fy_kd VALUES("15","京东","jd");
INSERT INTO fy_kd VALUES("16","宅急送","zhaijisong");
INSERT INTO fy_kd VALUES("17","安能物流","annengwuliu");
INSERT INTO fy_kd VALUES("18","AAE","aae");
INSERT INTO fy_kd VALUES("19","Aramex","aramex");
INSERT INTO fy_kd VALUES("20","百世快运","baishiwuliu");
INSERT INTO fy_kd VALUES("21","包裹/平邮","youzhengguonei");
INSERT INTO fy_kd VALUES("22","邦送物流","bangsongwuliu");
INSERT INTO fy_kd VALUES("23","COE","coe");
INSERT INTO fy_kd VALUES("24","程光快递","flyway");
INSERT INTO fy_kd VALUES("25","传喜物流","chuanxiwuliu");
INSERT INTO fy_kd VALUES("26","DHL","dhl");
INSERT INTO fy_kd VALUES("27","德邦物流","debangwuliu");
INSERT INTO fy_kd VALUES("28","递四方","disifang");
INSERT INTO fy_kd VALUES("29","EMS国际件","emsguoji");
INSERT INTO fy_kd VALUES("30","EWE","ewe");
INSERT INTO fy_kd VALUES("31","FedEx","fedex");
INSERT INTO fy_kd VALUES("32","法国邮政","chronopostfren");
INSERT INTO fy_kd VALUES("33","挂号信","youzhengguonei");
INSERT INTO fy_kd VALUES("34","国通快递","guotongkuaidi");
INSERT INTO fy_kd VALUES("35","韩国邮政","koreapost");
INSERT INTO fy_kd VALUES("36","荷兰邮政","postnl");
INSERT INTO fy_kd VALUES("37","佳吉快运","jiajiwuliu");
INSERT INTO fy_kd VALUES("38","京广快递","jinguangsudikuaijian");
INSERT INTO fy_kd VALUES("39","佳怡物流","jiayiwuliu");
INSERT INTO fy_kd VALUES("40","快捷速递","kuaijiesudi");
INSERT INTO fy_kd VALUES("41","跨越速运","kuayue");
INSERT INTO fy_kd VALUES("42","克罗地亚邮政","hrvatska");
INSERT INTO fy_kd VALUES("43","龙邦快运","longbanwuliu");
INSERT INTO fy_kd VALUES("44","联邦快递","lianbangkuaidi");
INSERT INTO fy_kd VALUES("45","联昊通","lianhaowuliu");
INSERT INTO fy_kd VALUES("46","美国邮政","usps");
INSERT INTO fy_kd VALUES("47","民航快递","minghangkuaidi");
INSERT INTO fy_kd VALUES("48","墨西哥邮政","mexico");
INSERT INTO fy_kd VALUES("49","能达速递","ganzhongnengda");
INSERT INTO fy_kd VALUES("50","挪威邮政","postennorge");
INSERT INTO fy_kd VALUES("51","南非邮政","southafrican");
INSERT INTO fy_kd VALUES("52","OCS","ocs");
INSERT INTO fy_kd VALUES("53","OnTrac","ontrac");
INSERT INTO fy_kd VALUES("54","葡萄牙邮政","portugalctt");
INSERT INTO fy_kd VALUES("55","瑞士邮政","swisspost");
INSERT INTO fy_kd VALUES("56","全峰快递","quanfengkuaidi");
INSERT INTO fy_kd VALUES("57","全一快递","quanyikuaidi");
INSERT INTO fy_kd VALUES("58","全晨快递","quanchenkuaidi");
INSERT INTO fy_kd VALUES("59","日日顺物流","rrs");
INSERT INTO fy_kd VALUES("60","如风达","rufengda");
INSERT INTO fy_kd VALUES("61","日本邮政","japanposten");
INSERT INTO fy_kd VALUES("62","速尔快递","suer");
INSERT INTO fy_kd VALUES("63","盛辉物流","shenghuiwuliu");
INSERT INTO fy_kd VALUES("64","TNT","tnt");
INSERT INTO fy_kd VALUES("65","天地华宇","tiandihuayu");
INSERT INTO fy_kd VALUES("66","泰国邮政","thailand");
INSERT INTO fy_kd VALUES("67","USPS","usps");
INSERT INTO fy_kd VALUES("68","UPS","ups");
INSERT INTO fy_kd VALUES("69","万象物流","wanxiangwuliu");
INSERT INTO fy_kd VALUES("70","万家物流","wanjiawuliu");
INSERT INTO fy_kd VALUES("71","乌克兰邮政","ukrpost");
INSERT INTO fy_kd VALUES("72","新邦物流","xinbangwuliu");
INSERT INTO fy_kd VALUES("73","信丰物流","xinfengwuliu");
INSERT INTO fy_kd VALUES("74","中国香港邮政","hkpost");
INSERT INTO fy_kd VALUES("75","邮政国内","youzhengguonei");
INSERT INTO fy_kd VALUES("76","邮政国际","youzhengguoji");
INSERT INTO fy_kd VALUES("77","优速快递","youshuwuliu");
INSERT INTO fy_kd VALUES("78","中邮物流","zhongyouwuliu");
INSERT INTO fy_kd VALUES("79","中铁物流","ztky");
INSERT INTO fy_kd VALUES("80","中铁快运","zhongtiewuliu");



DROP TABLE fy_login_log;

CREATE TABLE `fy_login_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `login_ip` char(15) NOT NULL DEFAULT '',
  `login_location` varchar(255) NOT NULL DEFAULT '',
  `login_browser` varchar(255) NOT NULL DEFAULT '',
  `login_os` varchar(255) NOT NULL DEFAULT '',
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO fy_login_log VALUES("1","21","220.197.182.87","中国 贵州 贵阳 ","Chrome(68.0.3440.106)","Windows 7","2018-08-31 17:04:44");
INSERT INTO fy_login_log VALUES("2","1","220.197.182.87","中国 贵州 贵阳 ","Chrome(68.0.3440.106)","Windows 7","2018-08-31 17:10:20");
INSERT INTO fy_login_log VALUES("3","1","220.197.182.89","中国 贵州 贵阳 ","Chrome(68.0.3440.106)","Windows 10","2018-09-01 09:54:47");
INSERT INTO fy_login_log VALUES("4","1","117.188.4.196","中国 中国  ","Chrome(64.0.3282.186)","Windows 7","2018-09-01 11:22:50");
INSERT INTO fy_login_log VALUES("5","1","220.197.182.85","中国 贵州 贵阳 ","Chrome(68.0.3440.106)","Windows 10","2018-09-03 09:05:43");
INSERT INTO fy_login_log VALUES("6","1","220.197.182.69","中国 贵州 贵阳 ","Chrome(68.0.3440.106)","Windows NT","2018-09-03 16:17:49");
INSERT INTO fy_login_log VALUES("7","20","220.197.182.88","中国 贵州 贵阳 ","Chrome(39.0.2171.95)","Windows 95","2018-09-06 09:35:15");
INSERT INTO fy_login_log VALUES("8","1","220.197.182.85","中国 贵州 贵阳 ","Chrome(68.0.3440.106)","Windows 10","2018-09-10 08:56:05");
INSERT INTO fy_login_log VALUES("9","1","220.197.182.87","中国 贵州 贵阳 ","Chrome(69.0.3497.100)","Windows 7","2018-09-27 14:16:31");



DROP TABLE fy_lottery;

CREATE TABLE `fy_lottery` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '奖券表',
  `name` varchar(50) NOT NULL COMMENT '奖券名称',
  `pic` text NOT NULL COMMENT '权展示',
  `main_pic` varchar(255) NOT NULL COMMENT '活动主题图',
  `grant_start_date` int(11) DEFAULT NULL COMMENT '开始时间',
  `grant_end_date` int(11) DEFAULT NULL COMMENT '结束时间',
  `expire_start_date` int(11) DEFAULT NULL COMMENT '有效期开始时间',
  `expire_end_date` int(11) DEFAULT NULL COMMENT '有效期截止时间',
  `type` tinyint(1) NOT NULL COMMENT '1抵扣券2优惠券3代金券4积分抵现金',
  `coupon_money` decimal(10,2) NOT NULL COMMENT '优惠金额 减多少 ',
  `coupon_real_money` decimal(10,2) DEFAULT NULL COMMENT '优惠券面额 满多少',
  `receive_number` int(11) DEFAULT '0' COMMENT '领取量',
  `surplus_number` int(11) DEFAULT '0' COMMENT '剩余量',
  `number` int(11) NOT NULL DEFAULT '0' COMMENT '奖券数量',
  `goods_id` varchar(32) DEFAULT NULL COMMENT '0表示所有商品关联商品',
  `goods_name` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `url` varchar(255) DEFAULT NULL COMMENT '链接',
  `desc` text COMMENT '奖券说明',
  `status` tinyint(1) DEFAULT '0' COMMENT '0未发行，1发行中，2领取完状态',
  `update_time` int(11) DEFAULT NULL COMMENT '商户ID',
  `isdelete` tinyint(1) DEFAULT '0' COMMENT '默认值为0表示没有删除',
  `user_id` int(11) DEFAULT NULL COMMENT '商户ID',
  `expire_type` tinyint(1) DEFAULT '0' COMMENT '默认设置有效期，1有效期领取之后',
  `expire_time` int(11) DEFAULT NULL COMMENT '时间戳存储',
  `use_type` tinyint(1) DEFAULT '0' COMMENT '0商品1礼包',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO fy_lottery VALUES("1","优惠券（新人礼包）","","/pic/uploads/20180828/1703f293be77eeb90b78533b9778d25e.png","0","0","0","0","2","1.00","1.00","0","100","100","2","澳大利亚脐橙10个约140g/个 进口甜橙子新鲜水果","","","1","","0","20","1","30","1");
INSERT INTO fy_lottery VALUES("2","新人礼包","","/pic/uploads/20180828/5fc1332916aee8884f8095dcb76365ba.png","0","0","0","0","2","2.00","10.00","0","444","444","all","","","&lt;p&gt;新人礼包&lt;/p&gt;","1","","0","0","1","12","1");
INSERT INTO fy_lottery VALUES("3","测试券","","/pic/uploads/20180822/7a2570970d3d8229dcf3deca8903d946.png","1535426316","1535426771","1535426367","1535426729","2","1.00","1.00","1","9","10","all","","","","0","","1","0","0","0","0");
INSERT INTO fy_lottery VALUES("4","测试用券","[\"\\/pic\\/uploads\\/20180828\\/67d3e57d568a4623e2af7ff04bd168f2.jpg\",\"\\/pic\\/uploads\\/20180828\\/a5b545db813421d75aaecfcd42d8a777.jpg\"]","/pic/uploads/20180822/7a2570970d3d8229dcf3deca8903d946.png","1535426869","1535686432","1535426884","1535779094","2","1.00","1.00","4","20","20","all","","","&lt;p&gt;wertghj&lt;/p&gt;","1","","0","0","0","0","1");
INSERT INTO fy_lottery VALUES("5","北京烤鸭门店","[\"\\/pic\\/uploads\\/20180828\\/89c9a66a8fc734649e15a75ab7408024.jpg\",\"\\/pic\\/uploads\\/20180828\\/30a0caede7a7f351efdfc6a40437e7de.jpg\",\"\\/pic\\/uploads\\/20180828\\/9a2e1e360b51b0eb8ae7a7a7ac02fd63.jpg\",\"\\/pic\\/uploads\\/20180828\\/dacbf091fa632f201a0a514d77cd61a7.jpg\"]","/pic/uploads/20180828/eddbd53897f5e2bb6ad54472d7a8c698.jpg","1970","1970","1970","1970","3","100.00","0.10","0","45","45","","","","","0","","0","21","1","1","0");
INSERT INTO fy_lottery VALUES("6","有代金券","","/pic/uploads/20180823/d16f4b25c83f76982a894098c0ffbded.jpeg","1535530525","1535544931","1535530542","1535616945","3","100.00","1.00","0","10","10","","","","","1","","0","0","0","0","0");
INSERT INTO fy_lottery VALUES("7","测试券","","/pic/uploads/20180828/71b30d3af10a39e896908eacfb343a70.png","0","0","0","0","2","1.00","1.00","4","329","333","all","","","&lt;p&gt;少时诵诗书所所所所所所所所所所所所所所所所所所所所所所所所&lt;/p&gt;","1","","0","0","1","23","0");
INSERT INTO fy_lottery VALUES("8","测试重复券","","/pic/uploads/20180823/e7f06b85a02fbc3c57b06d42ff297224.png","0","0","0","0","2","0.50","0.50","2","98","100","all","","","","0","","1","0","1","10","0");
INSERT INTO fy_lottery VALUES("9","测试测试","","/pic/uploads/20180822/7a2570970d3d8229dcf3deca8903d946.png","0","0","0","0","2","0.10","0.10","2","8","10","all","","","","0","","1","0","1","10","0");
INSERT INTO fy_lottery VALUES("10","测试不花钱券","","/pic/uploads/20180822/7a2570970d3d8229dcf3deca8903d946.png","0","0","0","0","2","0.10","0.10","3","7","10","all","","","","1","","0","0","1","10","0");



DROP TABLE fy_lottery_log;

CREATE TABLE `fy_lottery_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '奖券参与明细表',
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `username` varchar(255) DEFAULT NULL COMMENT '领取用户名',
  `addtime` int(11) DEFAULT NULL COMMENT '领取时间',
  `lottery_id` int(11) DEFAULT NULL COMMENT '奖券id',
  `status` tinyint(1) DEFAULT '1' COMMENT '0禁用，1启用',
  `updatetime` int(11) DEFAULT NULL COMMENT '使用时间',
  `lottery_name` varchar(255) DEFAULT NULL COMMENT '奖券名称',
  `use_num` int(1) DEFAULT '0' COMMENT '使用张数 默认0',
  `openid` varchar(255) NOT NULL COMMENT '用户id',
  `lottery_num` int(11) DEFAULT '1' COMMENT '数量',
  `total_price` decimal(10,2) DEFAULT NULL COMMENT '订单总价',
  `pay_time` int(11) DEFAULT NULL COMMENT '支付时间',
  `pay_status` tinyint(1) DEFAULT '0' COMMENT '0未支付1已经支付',
  `lottery_info` text COMMENT 'lottery信息',
  `js_api_parameters` varchar(255) DEFAULT NULL,
  `prepay_id` varchar(50) DEFAULT NULL,
  `is_tui` tinyint(1) DEFAULT '0' COMMENT '0 否 1是推',
  `order_status` tinyint(1) DEFAULT NULL COMMENT '订单状态',
  `order_id` varchar(64) DEFAULT NULL COMMENT '订单id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

INSERT INTO fy_lottery_log VALUES("1","","","1535705741","1","1","","优惠券（新人礼包）","0","omQYXwM8TEkiBZR7Ldm891OOWbNQ","1","","","0","{\"id\":1,\"name\":\"\\u4f18\\u60e0\\u5238\\uff08\\u65b0\\u4eba\\u793c\\u5305\\uff09\",\"pic\":\"\",\"main_pic\":\"\\/pic\\/uploads\\/20180828\\/1703f293be77eeb90b78533b9778d25e.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"1.00\",\"coupon_real_money\":\"1.00\",\"receive_number\":0,\"surplus_number\":100,\"number\":100,\"goods_id\":\"2\",\"goods_name\":\"\\u6fb3\\u5927\\u5229\\u4e9a\\u8110\\u6a5910\\u4e2a\\u7ea6140g\\/\\u4e2a \\u8fdb\\u53e3\\u751c\\u6a59\\u5b50\\u65b0\\u9c9c\\u6c34\\u679c\",\"url\":\"\",\"desc\":\"\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":20,\"expire_type\":1,\"expire_time\":30,\"use_type\":1}","","","0","","");
INSERT INTO fy_lottery_log VALUES("2","","","1535705741","2","1","","新人礼包","0","omQYXwM8TEkiBZR7Ldm891OOWbNQ","1","","","0","{\"id\":2,\"name\":\"\\u65b0\\u4eba\\u793c\\u5305\",\"pic\":\"\",\"main_pic\":\"\\/pic\\/uploads\\/20180828\\/5fc1332916aee8884f8095dcb76365ba.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"2.00\",\"coupon_real_money\":\"10.00\",\"receive_number\":0,\"surplus_number\":444,\"number\":444,\"goods_id\":\"all\",\"goods_name\":null,\"url\":\"\",\"desc\":\"&lt;p&gt;\\u65b0\\u4eba\\u793c\\u5305&lt;\\/p&gt;\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":0,\"expire_type\":1,\"expire_time\":12,\"use_type\":1}","","","0","","");
INSERT INTO fy_lottery_log VALUES("3","","","1535705865","1","1","","优惠券（新人礼包）","0","omQYXwNAT5uC15TQqMGxajJzqo4s","1","","","0","{\"id\":1,\"name\":\"\\u4f18\\u60e0\\u5238\\uff08\\u65b0\\u4eba\\u793c\\u5305\\uff09\",\"pic\":\"\",\"main_pic\":\"\\/pic\\/uploads\\/20180828\\/1703f293be77eeb90b78533b9778d25e.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"1.00\",\"coupon_real_money\":\"1.00\",\"receive_number\":0,\"surplus_number\":100,\"number\":100,\"goods_id\":\"2\",\"goods_name\":\"\\u6fb3\\u5927\\u5229\\u4e9a\\u8110\\u6a5910\\u4e2a\\u7ea6140g\\/\\u4e2a \\u8fdb\\u53e3\\u751c\\u6a59\\u5b50\\u65b0\\u9c9c\\u6c34\\u679c\",\"url\":\"\",\"desc\":\"\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":20,\"expire_type\":1,\"expire_time\":30,\"use_type\":1}","","","0","","");
INSERT INTO fy_lottery_log VALUES("4","","","1535705865","2","1","","新人礼包","0","omQYXwNAT5uC15TQqMGxajJzqo4s","1","","","0","{\"id\":2,\"name\":\"\\u65b0\\u4eba\\u793c\\u5305\",\"pic\":\"\",\"main_pic\":\"\\/pic\\/uploads\\/20180828\\/5fc1332916aee8884f8095dcb76365ba.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"2.00\",\"coupon_real_money\":\"10.00\",\"receive_number\":0,\"surplus_number\":444,\"number\":444,\"goods_id\":\"all\",\"goods_name\":null,\"url\":\"\",\"desc\":\"&lt;p&gt;\\u65b0\\u4eba\\u793c\\u5305&lt;\\/p&gt;\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":0,\"expire_type\":1,\"expire_time\":12,\"use_type\":1}","","","0","","");
INSERT INTO fy_lottery_log VALUES("5","","","1535765280","1","1","","优惠券（新人礼包）","0","omQYXwAasNeXdGSMymd91487Ds1g","1","","","0","{\"id\":1,\"name\":\"\\u4f18\\u60e0\\u5238\\uff08\\u65b0\\u4eba\\u793c\\u5305\\uff09\",\"pic\":\"\",\"main_pic\":\"\\/pic\\/uploads\\/20180828\\/1703f293be77eeb90b78533b9778d25e.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"1.00\",\"coupon_real_money\":\"1.00\",\"receive_number\":0,\"surplus_number\":100,\"number\":100,\"goods_id\":\"2\",\"goods_name\":\"\\u6fb3\\u5927\\u5229\\u4e9a\\u8110\\u6a5910\\u4e2a\\u7ea6140g\\/\\u4e2a \\u8fdb\\u53e3\\u751c\\u6a59\\u5b50\\u65b0\\u9c9c\\u6c34\\u679c\",\"url\":\"\",\"desc\":\"\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":20,\"expire_type\":1,\"expire_time\":30,\"use_type\":1}","","","0","","");
INSERT INTO fy_lottery_log VALUES("6","","","1535765280","2","1","","新人礼包","0","omQYXwAasNeXdGSMymd91487Ds1g","1","","","0","{\"id\":2,\"name\":\"\\u65b0\\u4eba\\u793c\\u5305\",\"pic\":\"\",\"main_pic\":\"\\/pic\\/uploads\\/20180828\\/5fc1332916aee8884f8095dcb76365ba.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"2.00\",\"coupon_real_money\":\"10.00\",\"receive_number\":0,\"surplus_number\":444,\"number\":444,\"goods_id\":\"all\",\"goods_name\":null,\"url\":\"\",\"desc\":\"&lt;p&gt;\\u65b0\\u4eba\\u793c\\u5305&lt;\\/p&gt;\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":0,\"expire_type\":1,\"expire_time\":12,\"use_type\":1}","","","0","","");
INSERT INTO fy_lottery_log VALUES("7","3","DANIEL","1535766229","7","1","","测试券","0","omQYXwAasNeXdGSMymd91487Ds1g","1","","","0","{\"id\":7,\"name\":\"\\u6d4b\\u8bd5\\u5238\",\"pic\":\"\",\"main_pic\":\"\\/pic\\/uploads\\/20180828\\/71b30d3af10a39e896908eacfb343a70.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"1.00\",\"coupon_real_money\":\"1.00\",\"receive_number\":2,\"surplus_number\":331,\"number\":333,\"goods_id\":\"all\",\"goods_name\":null,\"url\":\"\",\"desc\":\"&lt;p&gt;\\u5c11\\u65f6\\u8bf5\\u8bd7\\u4e66\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240&lt;\\/p&gt;\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":0,\"expire_type\":1,\"expire_time\":23,\"use_type\":0}","","","0","","");
INSERT INTO fy_lottery_log VALUES("8","3","DANIEL","1535766231","10","1","","测试不花钱券","0","omQYXwAasNeXdGSMymd91487Ds1g","1","","","0","{\"id\":10,\"name\":\"\\u6d4b\\u8bd5\\u4e0d\\u82b1\\u94b1\\u5238\",\"pic\":\"\",\"main_pic\":\"\\/pic\\/uploads\\/20180822\\/7a2570970d3d8229dcf3deca8903d946.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"0.10\",\"coupon_real_money\":\"0.10\",\"receive_number\":1,\"surplus_number\":9,\"number\":10,\"goods_id\":\"all\",\"goods_name\":null,\"url\":\"\",\"desc\":\"\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":0,\"expire_type\":1,\"expire_time\":10,\"use_type\":0}","","","0","","");
INSERT INTO fy_lottery_log VALUES("9","","","1535936620","1","1","","优惠券（新人礼包）","0","omQYXwDVsykgBFcCiyYkL4AYJRzw","1","","","0","{\"id\":1,\"name\":\"\\u4f18\\u60e0\\u5238\\uff08\\u65b0\\u4eba\\u793c\\u5305\\uff09\",\"pic\":\"\",\"main_pic\":\"\\/pic\\/uploads\\/20180828\\/1703f293be77eeb90b78533b9778d25e.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"1.00\",\"coupon_real_money\":\"1.00\",\"receive_number\":0,\"surplus_number\":100,\"number\":100,\"goods_id\":\"2\",\"goods_name\":\"\\u6fb3\\u5927\\u5229\\u4e9a\\u8110\\u6a5910\\u4e2a\\u7ea6140g\\/\\u4e2a \\u8fdb\\u53e3\\u751c\\u6a59\\u5b50\\u65b0\\u9c9c\\u6c34\\u679c\",\"url\":\"\",\"desc\":\"\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":20,\"expire_type\":1,\"expire_time\":30,\"use_type\":1}","","","0","","");
INSERT INTO fy_lottery_log VALUES("10","","","1535936620","2","1","","新人礼包","0","omQYXwDVsykgBFcCiyYkL4AYJRzw","1","","","0","{\"id\":2,\"name\":\"\\u65b0\\u4eba\\u793c\\u5305\",\"pic\":\"\",\"main_pic\":\"\\/pic\\/uploads\\/20180828\\/5fc1332916aee8884f8095dcb76365ba.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"2.00\",\"coupon_real_money\":\"10.00\",\"receive_number\":0,\"surplus_number\":444,\"number\":444,\"goods_id\":\"all\",\"goods_name\":null,\"url\":\"\",\"desc\":\"&lt;p&gt;\\u65b0\\u4eba\\u793c\\u5305&lt;\\/p&gt;\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":0,\"expire_type\":1,\"expire_time\":12,\"use_type\":1}","","","0","","");
INSERT INTO fy_lottery_log VALUES("11","","","1536135125","1","1","","优惠券（新人礼包）","0","omQYXwMaOPocRq4oIIBJufvIdNkU","1","","","0","{\"id\":1,\"name\":\"\\u4f18\\u60e0\\u5238\\uff08\\u65b0\\u4eba\\u793c\\u5305\\uff09\",\"pic\":\"\",\"main_pic\":\"\\/pic\\/uploads\\/20180828\\/1703f293be77eeb90b78533b9778d25e.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"1.00\",\"coupon_real_money\":\"1.00\",\"receive_number\":0,\"surplus_number\":100,\"number\":100,\"goods_id\":\"2\",\"goods_name\":\"\\u6fb3\\u5927\\u5229\\u4e9a\\u8110\\u6a5910\\u4e2a\\u7ea6140g\\/\\u4e2a \\u8fdb\\u53e3\\u751c\\u6a59\\u5b50\\u65b0\\u9c9c\\u6c34\\u679c\",\"url\":\"\",\"desc\":\"\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":20,\"expire_type\":1,\"expire_time\":30,\"use_type\":1}","","","0","","");
INSERT INTO fy_lottery_log VALUES("12","","","1536135125","2","1","","新人礼包","0","omQYXwMaOPocRq4oIIBJufvIdNkU","1","","","0","{\"id\":2,\"name\":\"\\u65b0\\u4eba\\u793c\\u5305\",\"pic\":\"\",\"main_pic\":\"\\/pic\\/uploads\\/20180828\\/5fc1332916aee8884f8095dcb76365ba.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"2.00\",\"coupon_real_money\":\"10.00\",\"receive_number\":0,\"surplus_number\":444,\"number\":444,\"goods_id\":\"all\",\"goods_name\":null,\"url\":\"\",\"desc\":\"&lt;p&gt;\\u65b0\\u4eba\\u793c\\u5305&lt;\\/p&gt;\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":0,\"expire_type\":1,\"expire_time\":12,\"use_type\":1}","","","0","","");
INSERT INTO fy_lottery_log VALUES("13","","","1536197669","1","1","","优惠券（新人礼包）","0","omQYXwMAFZsOxVq19vLvIBw2x514","1","","","0","{\"id\":1,\"name\":\"\\u4f18\\u60e0\\u5238\\uff08\\u65b0\\u4eba\\u793c\\u5305\\uff09\",\"pic\":\"\",\"main_pic\":\"\\/pic\\/uploads\\/20180828\\/1703f293be77eeb90b78533b9778d25e.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"1.00\",\"coupon_real_money\":\"1.00\",\"receive_number\":0,\"surplus_number\":100,\"number\":100,\"goods_id\":\"2\",\"goods_name\":\"\\u6fb3\\u5927\\u5229\\u4e9a\\u8110\\u6a5910\\u4e2a\\u7ea6140g\\/\\u4e2a \\u8fdb\\u53e3\\u751c\\u6a59\\u5b50\\u65b0\\u9c9c\\u6c34\\u679c\",\"url\":\"\",\"desc\":\"\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":20,\"expire_type\":1,\"expire_time\":30,\"use_type\":1}","","","0","","");
INSERT INTO fy_lottery_log VALUES("14","","","1536197669","2","1","","新人礼包","0","omQYXwMAFZsOxVq19vLvIBw2x514","1","","","0","{\"id\":2,\"name\":\"\\u65b0\\u4eba\\u793c\\u5305\",\"pic\":\"\",\"main_pic\":\"\\/pic\\/uploads\\/20180828\\/5fc1332916aee8884f8095dcb76365ba.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"2.00\",\"coupon_real_money\":\"10.00\",\"receive_number\":0,\"surplus_number\":444,\"number\":444,\"goods_id\":\"all\",\"goods_name\":null,\"url\":\"\",\"desc\":\"&lt;p&gt;\\u65b0\\u4eba\\u793c\\u5305&lt;\\/p&gt;\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":0,\"expire_type\":1,\"expire_time\":12,\"use_type\":1}","","","0","","");
INSERT INTO fy_lottery_log VALUES("15","","","1536829697","1","1","","优惠券（新人礼包）","0","omQYXwIDROiZXZ_Ns30Am5sj7-K8","1","","","0","{\"id\":1,\"name\":\"\\u4f18\\u60e0\\u5238\\uff08\\u65b0\\u4eba\\u793c\\u5305\\uff09\",\"pic\":\"\",\"main_pic\":\"\\/pic\\/uploads\\/20180828\\/1703f293be77eeb90b78533b9778d25e.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"1.00\",\"coupon_real_money\":\"1.00\",\"receive_number\":0,\"surplus_number\":100,\"number\":100,\"goods_id\":\"2\",\"goods_name\":\"\\u6fb3\\u5927\\u5229\\u4e9a\\u8110\\u6a5910\\u4e2a\\u7ea6140g\\/\\u4e2a \\u8fdb\\u53e3\\u751c\\u6a59\\u5b50\\u65b0\\u9c9c\\u6c34\\u679c\",\"url\":\"\",\"desc\":\"\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":20,\"expire_type\":1,\"expire_time\":30,\"use_type\":1}","","","0","","");
INSERT INTO fy_lottery_log VALUES("16","","","1536829697","2","1","","新人礼包","0","omQYXwIDROiZXZ_Ns30Am5sj7-K8","1","","","0","{\"id\":2,\"name\":\"\\u65b0\\u4eba\\u793c\\u5305\",\"pic\":\"\",\"main_pic\":\"\\/pic\\/uploads\\/20180828\\/5fc1332916aee8884f8095dcb76365ba.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"2.00\",\"coupon_real_money\":\"10.00\",\"receive_number\":0,\"surplus_number\":444,\"number\":444,\"goods_id\":\"all\",\"goods_name\":null,\"url\":\"\",\"desc\":\"&lt;p&gt;\\u65b0\\u4eba\\u793c\\u5305&lt;\\/p&gt;\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":0,\"expire_type\":1,\"expire_time\":12,\"use_type\":1}","","","0","","");
INSERT INTO fy_lottery_log VALUES("17","","","1536829750","1","1","","优惠券（新人礼包）","0","omQYXwNlDXAoTwBwMi3xhgogfaVA","1","","","0","{\"id\":1,\"name\":\"\\u4f18\\u60e0\\u5238\\uff08\\u65b0\\u4eba\\u793c\\u5305\\uff09\",\"pic\":\"\",\"main_pic\":\"\\/pic\\/uploads\\/20180828\\/1703f293be77eeb90b78533b9778d25e.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"1.00\",\"coupon_real_money\":\"1.00\",\"receive_number\":0,\"surplus_number\":100,\"number\":100,\"goods_id\":\"2\",\"goods_name\":\"\\u6fb3\\u5927\\u5229\\u4e9a\\u8110\\u6a5910\\u4e2a\\u7ea6140g\\/\\u4e2a \\u8fdb\\u53e3\\u751c\\u6a59\\u5b50\\u65b0\\u9c9c\\u6c34\\u679c\",\"url\":\"\",\"desc\":\"\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":20,\"expire_type\":1,\"expire_time\":30,\"use_type\":1}","","","0","","");
INSERT INTO fy_lottery_log VALUES("18","","","1536829750","2","1","","新人礼包","0","omQYXwNlDXAoTwBwMi3xhgogfaVA","1","","","0","{\"id\":2,\"name\":\"\\u65b0\\u4eba\\u793c\\u5305\",\"pic\":\"\",\"main_pic\":\"\\/pic\\/uploads\\/20180828\\/5fc1332916aee8884f8095dcb76365ba.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"2.00\",\"coupon_real_money\":\"10.00\",\"receive_number\":0,\"surplus_number\":444,\"number\":444,\"goods_id\":\"all\",\"goods_name\":null,\"url\":\"\",\"desc\":\"&lt;p&gt;\\u65b0\\u4eba\\u793c\\u5305&lt;\\/p&gt;\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":0,\"expire_type\":1,\"expire_time\":12,\"use_type\":1}","","","0","","");
INSERT INTO fy_lottery_log VALUES("19","","","1536829814","1","1","","优惠券（新人礼包）","0","omQYXwPRxRKyBc0LOW1jubli1s3o","1","","","0","{\"id\":1,\"name\":\"\\u4f18\\u60e0\\u5238\\uff08\\u65b0\\u4eba\\u793c\\u5305\\uff09\",\"pic\":\"\",\"main_pic\":\"\\/pic\\/uploads\\/20180828\\/1703f293be77eeb90b78533b9778d25e.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"1.00\",\"coupon_real_money\":\"1.00\",\"receive_number\":0,\"surplus_number\":100,\"number\":100,\"goods_id\":\"2\",\"goods_name\":\"\\u6fb3\\u5927\\u5229\\u4e9a\\u8110\\u6a5910\\u4e2a\\u7ea6140g\\/\\u4e2a \\u8fdb\\u53e3\\u751c\\u6a59\\u5b50\\u65b0\\u9c9c\\u6c34\\u679c\",\"url\":\"\",\"desc\":\"\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":20,\"expire_type\":1,\"expire_time\":30,\"use_type\":1}","","","0","","");
INSERT INTO fy_lottery_log VALUES("20","","","1536829814","2","1","","新人礼包","0","omQYXwPRxRKyBc0LOW1jubli1s3o","1","","","0","{\"id\":2,\"name\":\"\\u65b0\\u4eba\\u793c\\u5305\",\"pic\":\"\",\"main_pic\":\"\\/pic\\/uploads\\/20180828\\/5fc1332916aee8884f8095dcb76365ba.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"2.00\",\"coupon_real_money\":\"10.00\",\"receive_number\":0,\"surplus_number\":444,\"number\":444,\"goods_id\":\"all\",\"goods_name\":null,\"url\":\"\",\"desc\":\"&lt;p&gt;\\u65b0\\u4eba\\u793c\\u5305&lt;\\/p&gt;\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":0,\"expire_type\":1,\"expire_time\":12,\"use_type\":1}","","","0","","");
INSERT INTO fy_lottery_log VALUES("21","4","非也非也","1536830340","7","1","","测试券","0","omQYXwDVsykgBFcCiyYkL4AYJRzw","1","","","0","{\"id\":7,\"name\":\"\\u6d4b\\u8bd5\\u5238\",\"pic\":\"\",\"main_pic\":\"\\/pic\\/uploads\\/20180828\\/71b30d3af10a39e896908eacfb343a70.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"1.00\",\"coupon_real_money\":\"1.00\",\"receive_number\":3,\"surplus_number\":330,\"number\":333,\"goods_id\":\"all\",\"goods_name\":null,\"url\":\"\",\"desc\":\"&lt;p&gt;\\u5c11\\u65f6\\u8bf5\\u8bd7\\u4e66\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240\\u6240&lt;\\/p&gt;\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":0,\"expire_type\":1,\"expire_time\":23,\"use_type\":0}","","","0","","");
INSERT INTO fy_lottery_log VALUES("22","4","非也非也","1536830341","10","1","","测试不花钱券","0","omQYXwDVsykgBFcCiyYkL4AYJRzw","1","","","0","{\"id\":10,\"name\":\"\\u6d4b\\u8bd5\\u4e0d\\u82b1\\u94b1\\u5238\",\"pic\":\"\",\"main_pic\":\"\\/pic\\/uploads\\/20180822\\/7a2570970d3d8229dcf3deca8903d946.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"0.10\",\"coupon_real_money\":\"0.10\",\"receive_number\":2,\"surplus_number\":8,\"number\":10,\"goods_id\":\"all\",\"goods_name\":null,\"url\":\"\",\"desc\":\"\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":0,\"expire_type\":1,\"expire_time\":10,\"use_type\":0}","","","0","","");



DROP TABLE fy_lottery_order;

CREATE TABLE `fy_lottery_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '代金券表',
  `order_id` varchar(50) DEFAULT NULL,
  `order_status` tinyint(1) DEFAULT NULL COMMENT '订单状态',
  `lottery_id` int(11) NOT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `lottery_num` int(11) DEFAULT NULL COMMENT '数量',
  `lottery_info` text COMMENT 'lottery信息',
  `total_price` decimal(10,2) DEFAULT NULL COMMENT '订单总价',
  `pay_status` tinyint(1) DEFAULT '0' COMMENT '0未支付1已经支付',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `js_api_parameters` varchar(255) DEFAULT NULL,
  `prepay_id` varchar(50) DEFAULT NULL,
  `is_tui` tinyint(1) DEFAULT '0' COMMENT '0 否 1是推',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE fy_message;

CREATE TABLE `fy_message` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '消息模板表',
  `title` varchar(255) DEFAULT NULL COMMENT 'title',
  `pic` varchar(255) DEFAULT NULL,
  `detail` text,
  `type` tinyint(1) DEFAULT NULL COMMENT '1积分清零提醒|2积分清零|3生日礼包|4其他',
  `lottery_id` int(11) DEFAULT NULL COMMENT '奖券id',
  `status` tinyint(1) DEFAULT '1',
  `isdelete` tinyint(4) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `is_send` tinyint(1) DEFAULT '0' COMMENT '0否1是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE fy_message_user;

CREATE TABLE `fy_message_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `message_id` int(11) DEFAULT NULL,
  `text` text COMMENT '支付成功、发货、退款消息内容',
  `is_read` tinyint(1) DEFAULT '0' COMMENT '0否1是',
  `create_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `is_send` tinyint(1) DEFAULT '0' COMMENT '0否1是',
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO fy_message_user VALUES("1","2","omQYXwM8TEkiBZR7Ldm891OOWbNQ","","{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.01<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb  5000g\\u00d71<br\\/><br\\/>\"}","0","1535706068","0","");
INSERT INTO fy_message_user VALUES("2","2","omQYXwM8TEkiBZR7Ldm891OOWbNQ","","{\"title\":\"\\u8ba2\\u5355\\u53d1\\u8d27\\u901a\\u77e5\",\"detail\":\"\\u60a8\\u8d2d\\u4e70\\u7684 \\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb 5000g\\u00d71 \\u5df2\\u7ecf\\u53d1\\u8d27\\u5566\\uff0c\\u6b63\\u5feb\\u9a6c\\u52a0\\u97ad\\u5411\\u60a8\\u98de\\u5954\\u800c\\u53bb\\u3002<br\\/>\\u8ba2\\u5355\\u7f16\\u53f7\\uff1a1441217402201808311656478916<br\\/>\\u53d1\\u8d27\\u65f6\\u95f4\\uff1a2018-08-31 17:01:35<br\\/>\\u7269\\u6d41\\u516c\\u53f8\\uff1a\\u987a\\u4e30\\u5feb\\u9012<br\\/>\\u5feb\\u9012\\u5355\\u53f7\\uff1a<br\\/>\\u6536\\u8d27\\u5730\\u5740\\uff1a\\u6bb5\\u6b22   13765805489    \\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\\u4e5f\\u662f<br\\/>\\u8bf7\\u4fdd\\u6301\\u624b\\u673a\\u7545\\u901a\\uff01\"}","0","1535706096","0","");
INSERT INTO fy_message_user VALUES("3","2","omQYXwM8TEkiBZR7Ldm891OOWbNQ","","{\"title\":\"\\u8ba2\\u5355\\u53d1\\u8d27\\u901a\\u77e5\",\"detail\":\"\\u60a8\\u8d2d\\u4e70\\u7684 \\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb 5000g\\u00d71 \\u5df2\\u7ecf\\u53d1\\u8d27\\u5566\\uff0c\\u6b63\\u5feb\\u9a6c\\u52a0\\u97ad\\u5411\\u60a8\\u98de\\u5954\\u800c\\u53bb\\u3002<br\\/>\\u8ba2\\u5355\\u7f16\\u53f7\\uff1a1441217402201808311656478916<br\\/>\\u53d1\\u8d27\\u65f6\\u95f4\\uff1a2018-08-31 17:01:40<br\\/>\\u7269\\u6d41\\u516c\\u53f8\\uff1a\\u987a\\u4e30\\u5feb\\u9012<br\\/>\\u5feb\\u9012\\u5355\\u53f7\\uff1a123<br\\/>\\u6536\\u8d27\\u5730\\u5740\\uff1a\\u6bb5\\u6b22   13765805489    \\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\\u4e5f\\u662f<br\\/>\\u8bf7\\u4fdd\\u6301\\u624b\\u673a\\u7545\\u901a\\uff01\"}","0","1535706100","0","");
INSERT INTO fy_message_user VALUES("4","2","omQYXwM8TEkiBZR7Ldm891OOWbNQ","","{\"title\":\"\\u9000\\u6b3e\\u901a\\u77e5\",\"detail\":\"\\u60a8\\u7684\\u8ba2\\u5355\\u5df2\\u7ecf\\u5b8c\\u6210\\u9000\\u6b3e\\uff0c\\u539f\\u8def\\u9000\\u56de\\u5230\\u60a8\\u7684\\u652f\\u4ed8\\u8d26\\u6237\\uff08\\u96f6\\u94b120\\u5929\\u5185\\u5230\\u8d26\\uff1b\\u50a8\\u84c4\\u53611-3\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff1b\\u4fe1\\u7528\\u53612-5\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff09\\u8bf7\\u7559\\u610f\\u67e5\\u6536\\u3002<br\\/>\\u9000\\u6b3e\\u91d1\\u989d\\uff1a0.01<br\\/>\\u5546\\u54c1\\u540d\\u79f0\\uff1a\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb 5000g\\u00d71<br\\/><br\\/>\\u9000\\u6b3e\\u5355\\u53f7\\uff1a1441217402201808311656478916<br\\/>\\u6709\\u4ec0\\u4e48\\u7591\\u95ee\\u8bf7\\u8054\\u7cfb\\u30100851-86701701\\u3011\\u54a8\\u8be2\"}","0","1535706882","0","");
INSERT INTO fy_message_user VALUES("5","3","omQYXwAasNeXdGSMymd91487Ds1g","","{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.01<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb  5000g\\u00d71<br\\/><br\\/>\"}","0","1535765494","0","");
INSERT INTO fy_message_user VALUES("6","3","omQYXwAasNeXdGSMymd91487Ds1g","","{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe510<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u79ef\\u5206\\u5546\\u57ce\\u82f9\\u679c\\u624b\\u673a  <br\\/>\"}","1","1535766142","0","1535766482");
INSERT INTO fy_message_user VALUES("7","3","omQYXwAasNeXdGSMymd91487Ds1g","","{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.01<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u65b0\\u7586\\u5580\\u4ec0\\u897f\\u68854\\u65a4\\u5927\\u679c\\u987a\\u4e30\\u5305\\u90ae\\u5f53\\u5b63\\u6c34\\u679c \\u65b0\\u9c9c\\u897f\\u6885  1kg\\u00d71<br\\/><br\\/>\"}","0","1535766341","0","");
INSERT INTO fy_message_user VALUES("8","3","omQYXwAasNeXdGSMymd91487Ds1g","","{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.01<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb  5000g\\u00d71<br\\/><br\\/>\"}","1","1536298712","0","1536298753");



DROP TABLE fy_modular;

CREATE TABLE `fy_modular` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '首页模块功能表',
  `pic` varchar(255) NOT NULL COMMENT '图片',
  `title` varchar(20) NOT NULL COMMENT '名称',
  `create_time` int(11) NOT NULL COMMENT '添加时间',
  `status` tinyint(1) DEFAULT '1' COMMENT '1启用0禁用',
  `orderby` int(11) DEFAULT '1' COMMENT '排序值',
  `update_time` int(11) DEFAULT NULL COMMENT '修改时间',
  `url` varchar(255) NOT NULL COMMENT '链接',
  `isdelete` tinyint(1) DEFAULT '0' COMMENT '删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO fy_modular VALUES("5","/pic/uploads/20180815/37997791f696b84d28044c300ffab2c4.png","券集市","1530519950","1","2","1534831696","http://www.fyxt701.com/index.php/index/lottery/market.html","0");
INSERT INTO fy_modular VALUES("6","/pic/uploads/20180815/19bd2c8f934a1d30e29ea800ce8b0f6a.png","积分商城","1530519975","1","3","1534831691","http://www.fyxt701.com/index.php/index/goods/goodsScore.html","0");
INSERT INTO fy_modular VALUES("7","/pic/uploads/20180712/7e9ad7220a395482357dc96e6e065241.png","充值中心","1530519996","0","4","1534831685","http://www.fyxt701.com/index.php/index","0");
INSERT INTO fy_modular VALUES("8","/pic/uploads/20180727/19c301bf9f40b6c29c3d9fda684541bc.png","会员签到","1530520015","1","5","1534831678","http://www.fyxt701.com/index.php/index/customer/my_sign.html","0");
INSERT INTO fy_modular VALUES("9","/pic/uploads/20180815/e554024d8505052d6bb4deaaa2c23a03.png","限时抢购","1531961915","1","6","1534831671","http://www.fyxt701.com/index.php/index/goods/rushPurchase.html","0");



DROP TABLE fy_node_map;

CREATE TABLE `fy_node_map` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(255) NOT NULL DEFAULT '' COMMENT '模块',
  `controller` varchar(255) NOT NULL DEFAULT '' COMMENT '控制器',
  `action` varchar(255) NOT NULL DEFAULT '' COMMENT '方法',
  `method` char(6) NOT NULL DEFAULT '' COMMENT '请求方式',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT '节点图描述',
  PRIMARY KEY (`id`),
  KEY `map` (`method`,`module`,`controller`,`action`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=474 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='节点图';

INSERT INTO fy_node_map VALUES("1","admin","SildeShow","index","ALL","轮播图");
INSERT INTO fy_node_map VALUES("2","admin","AdminGroup","index","ALL","分组管理");
INSERT INTO fy_node_map VALUES("3","admin","AdminGroup","add","ALL","分组添加");
INSERT INTO fy_node_map VALUES("4","admin","Group","forbid","ALL","分组禁止");
INSERT INTO fy_node_map VALUES("5","admin","Group","resume","ALL","分组恢复");
INSERT INTO fy_node_map VALUES("6","admin","Group","delete","ALL","分组删除");
INSERT INTO fy_node_map VALUES("7","admin","Group","saveorder","ALL","分组排序保存");
INSERT INTO fy_node_map VALUES("8","admin","AdminGroup","recycleBin","ALL","AdminGroup 回收站");
INSERT INTO fy_node_map VALUES("9","admin","AdminGroup","edit","ALL","AdminGroup 编辑");
INSERT INTO fy_node_map VALUES("10","admin","AdminGroup","delete","ALL","AdminGroup 默认删除操作");
INSERT INTO fy_node_map VALUES("11","admin","AdminGroup","recycle","ALL","AdminGroup 从回收站恢复");
INSERT INTO fy_node_map VALUES("12","admin","AdminGroup","forbid","ALL","AdminGroup 默认禁用操作");
INSERT INTO fy_node_map VALUES("13","admin","AdminGroup","resume","ALL","AdminGroup 默认恢复操作");
INSERT INTO fy_node_map VALUES("14","admin","AdminGroup","deleteForever","ALL","AdminGroup 永久删除");
INSERT INTO fy_node_map VALUES("15","admin","AdminGroup","clear","ALL","AdminGroup 清空回收站");
INSERT INTO fy_node_map VALUES("16","admin","AdminGroup","saveOrder","ALL","AdminGroup 保存排序");
INSERT INTO fy_node_map VALUES("23","admin","AdminNode","index","ALL","AdminNode 首页");
INSERT INTO fy_node_map VALUES("24","admin","AdminNode","recycleBin","ALL","AdminNode 回收站");
INSERT INTO fy_node_map VALUES("25","admin","AdminNode","sort","ALL","AdminNode 保存排序");
INSERT INTO fy_node_map VALUES("26","admin","AdminNode","load","ALL","AdminNode 节点快速导入");
INSERT INTO fy_node_map VALUES("27","admin","AdminNode","indexOld","ALL","AdminNode 首页");
INSERT INTO fy_node_map VALUES("28","admin","AdminNode","add","ALL","AdminNode 添加");
INSERT INTO fy_node_map VALUES("29","admin","AdminNode","edit","ALL","AdminNode 编辑");
INSERT INTO fy_node_map VALUES("30","admin","AdminNode","delete","ALL","AdminNode 默认删除操作");
INSERT INTO fy_node_map VALUES("31","admin","AdminNode","recycle","ALL","AdminNode 从回收站恢复");
INSERT INTO fy_node_map VALUES("32","admin","AdminNode","forbid","ALL","AdminNode 默认禁用操作");
INSERT INTO fy_node_map VALUES("33","admin","AdminNode","resume","ALL","AdminNode 默认恢复操作");
INSERT INTO fy_node_map VALUES("34","admin","AdminNode","deleteForever","ALL","AdminNode 永久删除");
INSERT INTO fy_node_map VALUES("35","admin","AdminNode","clear","ALL","AdminNode 清空回收站");
INSERT INTO fy_node_map VALUES("36","admin","AdminNode","saveOrder","ALL","AdminNode 保存排序");
INSERT INTO fy_node_map VALUES("38","admin","AdminNodeLoad","index","ALL","AdminNodeLoad 首页");
INSERT INTO fy_node_map VALUES("39","admin","AdminNodeLoad","recycleBin","ALL","AdminNodeLoad 回收站");
INSERT INTO fy_node_map VALUES("40","admin","AdminNodeLoad","add","ALL","AdminNodeLoad 添加");
INSERT INTO fy_node_map VALUES("41","admin","AdminNodeLoad","edit","ALL","AdminNodeLoad 编辑");
INSERT INTO fy_node_map VALUES("42","admin","AdminNodeLoad","forbid","ALL","AdminNodeLoad 默认禁用操作");
INSERT INTO fy_node_map VALUES("43","admin","AdminNodeLoad","resume","ALL","AdminNodeLoad 默认恢复操作");
INSERT INTO fy_node_map VALUES("44","admin","AdminNodeLoad","deleteForever","ALL","AdminNodeLoad 永久删除");
INSERT INTO fy_node_map VALUES("45","admin","AdminNodeLoad","clear","ALL","AdminNodeLoad 清空回收站");
INSERT INTO fy_node_map VALUES("46","admin","AdminNodeLoad","saveOrder","ALL","AdminNodeLoad 保存排序");
INSERT INTO fy_node_map VALUES("53","admin","AdminRole","user","ALL","AdminRole 用户列表");
INSERT INTO fy_node_map VALUES("54","admin","AdminRole","access","ALL","AdminRole 授权");
INSERT INTO fy_node_map VALUES("55","admin","AdminRole","index","ALL","AdminRole 首页");
INSERT INTO fy_node_map VALUES("56","admin","AdminRole","recycleBin","ALL","AdminRole 回收站");
INSERT INTO fy_node_map VALUES("57","admin","AdminRole","add","ALL","AdminRole 添加");
INSERT INTO fy_node_map VALUES("58","admin","AdminRole","edit","ALL","AdminRole 编辑");
INSERT INTO fy_node_map VALUES("59","admin","AdminRole","delete","ALL","AdminRole 默认删除操作");
INSERT INTO fy_node_map VALUES("60","admin","AdminRole","recycle","ALL","AdminRole 从回收站恢复");
INSERT INTO fy_node_map VALUES("61","admin","AdminRole","forbid","ALL","AdminRole 默认禁用操作");
INSERT INTO fy_node_map VALUES("62","admin","AdminRole","resume","ALL","AdminRole 默认恢复操作");
INSERT INTO fy_node_map VALUES("63","admin","AdminRole","deleteForever","ALL","AdminRole 永久删除");
INSERT INTO fy_node_map VALUES("64","admin","AdminRole","clear","ALL","AdminRole 清空回收站");
INSERT INTO fy_node_map VALUES("65","admin","AdminRole","saveOrder","ALL","AdminRole 保存排序");
INSERT INTO fy_node_map VALUES("68","admin","AdminUser","password","ALL","AdminUser 修改密码");
INSERT INTO fy_node_map VALUES("69","admin","AdminUser","index","ALL","AdminUser 首页");
INSERT INTO fy_node_map VALUES("70","admin","AdminUser","recycleBin","ALL","AdminUser 回收站");
INSERT INTO fy_node_map VALUES("71","admin","AdminUser","add","ALL","AdminUser 添加");
INSERT INTO fy_node_map VALUES("72","admin","AdminUser","edit","ALL","AdminUser 编辑");
INSERT INTO fy_node_map VALUES("73","admin","AdminUser","delete","ALL","AdminUser 默认删除操作");
INSERT INTO fy_node_map VALUES("74","admin","AdminUser","recycle","ALL","AdminUser 从回收站恢复");
INSERT INTO fy_node_map VALUES("75","admin","AdminUser","forbid","ALL","AdminUser 默认禁用操作");
INSERT INTO fy_node_map VALUES("76","admin","AdminUser","resume","ALL","AdminUser 默认恢复操作");
INSERT INTO fy_node_map VALUES("77","admin","AdminUser","deleteForever","ALL","AdminUser 永久删除");
INSERT INTO fy_node_map VALUES("78","admin","AdminUser","clear","ALL","AdminUser 清空回收站");
INSERT INTO fy_node_map VALUES("79","admin","AdminUser","saveOrder","ALL","AdminUser 保存排序");
INSERT INTO fy_node_map VALUES("83","admin","Demo","excel","ALL","Demo Excel一键导出");
INSERT INTO fy_node_map VALUES("84","admin","Demo","download","ALL","Demo 下载文件");
INSERT INTO fy_node_map VALUES("85","admin","Demo","downloadImage","ALL","Demo 下载远程图片");
INSERT INTO fy_node_map VALUES("86","admin","Demo","mail","ALL","Demo 发送邮件");
INSERT INTO fy_node_map VALUES("87","admin","Demo","ueditor","ALL","Demo 百度编辑器");
INSERT INTO fy_node_map VALUES("88","admin","Demo","qiniu","ALL","Demo 七牛上传");
INSERT INTO fy_node_map VALUES("89","admin","Demo","hashids","ALL","Demo ID加密");
INSERT INTO fy_node_map VALUES("90","admin","Demo","layer","ALL","Demo 丰富弹层");
INSERT INTO fy_node_map VALUES("91","admin","Demo","tableFixed","ALL","Demo 表格溢出");
INSERT INTO fy_node_map VALUES("92","admin","Demo","imageUpload","ALL","Demo 图片上传回调");
INSERT INTO fy_node_map VALUES("93","admin","Demo","qrcode","ALL","Demo 二维码生成");
INSERT INTO fy_node_map VALUES("98","admin","Index","index","ALL","Index ");
INSERT INTO fy_node_map VALUES("99","admin","Index","welcome","ALL","Index 欢迎页");
INSERT INTO fy_node_map VALUES("101","admin","LoginLog","index","ALL","LoginLog 首页");
INSERT INTO fy_node_map VALUES("102","admin","LoginLog","saveOrder","ALL","LoginLog 保存排序");
INSERT INTO fy_node_map VALUES("104","admin","Modular","index","ALL","Modular ");
INSERT INTO fy_node_map VALUES("105","admin","Modular","recycleBin","ALL","Modular 回收站");
INSERT INTO fy_node_map VALUES("106","admin","Modular","add","ALL","Modular 添加");
INSERT INTO fy_node_map VALUES("107","admin","Modular","edit","ALL","Modular 编辑");
INSERT INTO fy_node_map VALUES("108","admin","Modular","delete","ALL","Modular 默认删除操作");
INSERT INTO fy_node_map VALUES("109","admin","Modular","recycle","ALL","Modular 从回收站恢复");
INSERT INTO fy_node_map VALUES("110","admin","Modular","forbid","ALL","Modular 默认禁用操作");
INSERT INTO fy_node_map VALUES("111","admin","Modular","resume","ALL","Modular 默认恢复操作");
INSERT INTO fy_node_map VALUES("112","admin","Modular","deleteForever","ALL","Modular 永久删除");
INSERT INTO fy_node_map VALUES("113","admin","Modular","clear","ALL","Modular 清空回收站");
INSERT INTO fy_node_map VALUES("114","admin","Modular","saveOrder","ALL","Modular 保存排序");
INSERT INTO fy_node_map VALUES("119","admin","NodeMap","load","ALL","NodeMap 自动导入");
INSERT INTO fy_node_map VALUES("120","admin","NodeMap","index","ALL","NodeMap 首页");
INSERT INTO fy_node_map VALUES("121","admin","NodeMap","recycleBin","ALL","NodeMap 回收站");
INSERT INTO fy_node_map VALUES("122","admin","NodeMap","add","ALL","NodeMap 添加");
INSERT INTO fy_node_map VALUES("123","admin","NodeMap","edit","ALL","NodeMap 编辑");
INSERT INTO fy_node_map VALUES("124","admin","NodeMap","deleteForever","ALL","NodeMap 永久删除");
INSERT INTO fy_node_map VALUES("125","admin","NodeMap","saveOrder","ALL","NodeMap 保存排序");
INSERT INTO fy_node_map VALUES("126","admin","Notice","index","ALL","Notice 首页");
INSERT INTO fy_node_map VALUES("127","admin","Notice","recycleBin","ALL","Notice 回收站");
INSERT INTO fy_node_map VALUES("128","admin","Notice","add","ALL","Notice 添加");
INSERT INTO fy_node_map VALUES("129","admin","Notice","edit","ALL","Notice 编辑");
INSERT INTO fy_node_map VALUES("130","admin","Notice","delete","ALL","Notice 默认删除操作");
INSERT INTO fy_node_map VALUES("131","admin","Notice","recycle","ALL","Notice 从回收站恢复");
INSERT INTO fy_node_map VALUES("132","admin","Notice","forbid","ALL","Notice 默认禁用操作");
INSERT INTO fy_node_map VALUES("133","admin","Notice","resume","ALL","Notice 默认恢复操作");
INSERT INTO fy_node_map VALUES("134","admin","Notice","deleteForever","ALL","Notice 永久删除");
INSERT INTO fy_node_map VALUES("135","admin","Notice","clear","ALL","Notice 清空回收站");
INSERT INTO fy_node_map VALUES("136","admin","Notice","saveOrder","ALL","Notice 保存排序");
INSERT INTO fy_node_map VALUES("141","admin","Pub","login","ALL","Pub 用户登录页面");
INSERT INTO fy_node_map VALUES("142","admin","Pub","loginFrame","ALL","Pub 小窗口登录页面");
INSERT INTO fy_node_map VALUES("143","admin","Pub","index","ALL","Pub 首页");
INSERT INTO fy_node_map VALUES("144","admin","Pub","logout","ALL","Pub 用户登出");
INSERT INTO fy_node_map VALUES("145","admin","Pub","checkLogin","ALL","Pub 登录检测");
INSERT INTO fy_node_map VALUES("146","admin","Pub","password","ALL","Pub 修改密码");
INSERT INTO fy_node_map VALUES("147","admin","Pub","profile","ALL","Pub 查看用户信息|修改资料");
INSERT INTO fy_node_map VALUES("148","admin","SildeShow","recycleBin","ALL","SildeShow 回收站");
INSERT INTO fy_node_map VALUES("149","admin","SildeShow","add","ALL","SildeShow 添加");
INSERT INTO fy_node_map VALUES("150","admin","SildeShow","edit","ALL","SildeShow 编辑");
INSERT INTO fy_node_map VALUES("151","admin","SildeShow","delete","ALL","SildeShow 默认删除操作");
INSERT INTO fy_node_map VALUES("152","admin","SildeShow","recycle","ALL","SildeShow 从回收站恢复");
INSERT INTO fy_node_map VALUES("153","admin","SildeShow","forbid","ALL","SildeShow 默认禁用操作");
INSERT INTO fy_node_map VALUES("154","admin","SildeShow","resume","ALL","SildeShow 默认恢复操作");
INSERT INTO fy_node_map VALUES("155","admin","SildeShow","deleteForever","ALL","SildeShow 永久删除");
INSERT INTO fy_node_map VALUES("156","admin","SildeShow","clear","ALL","SildeShow 清空回收站");
INSERT INTO fy_node_map VALUES("157","admin","SildeShow","saveOrder","ALL","SildeShow 保存排序");
INSERT INTO fy_node_map VALUES("163","admin","Upload","index","ALL","Upload 首页");
INSERT INTO fy_node_map VALUES("164","admin","Upload","upload","ALL","Upload 文件上传");
INSERT INTO fy_node_map VALUES("165","admin","Upload","remote","ALL","Upload 远程图片抓取");
INSERT INTO fy_node_map VALUES("166","admin","Upload","listImage","ALL","Upload 图片列表");
INSERT INTO fy_node_map VALUES("170","admin","WebLog","index","ALL","WebLog 列表");
INSERT INTO fy_node_map VALUES("171","admin","WebLog","detail","ALL","WebLog 详情");
INSERT INTO fy_node_map VALUES("173","admin","one.two.three.Four","index","ALL","Four 首页");
INSERT INTO fy_node_map VALUES("174","admin","one.two.three.Four","recycleBin","ALL","Four 回收站");
INSERT INTO fy_node_map VALUES("175","admin","one.two.three.Four","add","ALL","Four 添加");
INSERT INTO fy_node_map VALUES("176","admin","one.two.three.Four","edit","ALL","Four 编辑");
INSERT INTO fy_node_map VALUES("177","admin","one.two.three.Four","delete","ALL","Four 默认删除操作");
INSERT INTO fy_node_map VALUES("178","admin","one.two.three.Four","recycle","ALL","Four 从回收站恢复");
INSERT INTO fy_node_map VALUES("179","admin","one.two.three.Four","forbid","ALL","Four 默认禁用操作");
INSERT INTO fy_node_map VALUES("180","admin","one.two.three.Four","resume","ALL","Four 默认恢复操作");
INSERT INTO fy_node_map VALUES("181","admin","one.two.three.Four","deleteForever","ALL","Four 永久删除");
INSERT INTO fy_node_map VALUES("182","admin","one.two.three.Four","clear","ALL","Four 清空回收站");
INSERT INTO fy_node_map VALUES("183","admin","one.two.three.Four","saveOrder","ALL","Four 保存排序");
INSERT INTO fy_node_map VALUES("184","admin","GoodsClass","add","ALL","GoodsClass 添加");
INSERT INTO fy_node_map VALUES("185","admin","GoodsClass","edit","ALL","GoodsClass 编辑");
INSERT INTO fy_node_map VALUES("186","admin","GoodsClass","delete","ALL","GoodsClass ");
INSERT INTO fy_node_map VALUES("187","admin","GoodsClass","index","ALL","GoodsClass ");
INSERT INTO fy_node_map VALUES("188","admin","GoodsClass","recycleBin","ALL","GoodsClass 回收站");
INSERT INTO fy_node_map VALUES("189","admin","GoodsClass","recycle","ALL","GoodsClass 从回收站恢复");
INSERT INTO fy_node_map VALUES("190","admin","GoodsClass","forbid","ALL","GoodsClass 默认禁用操作");
INSERT INTO fy_node_map VALUES("191","admin","GoodsClass","resume","ALL","GoodsClass 默认恢复操作");
INSERT INTO fy_node_map VALUES("192","admin","GoodsClass","deleteForever","ALL","GoodsClass 永久删除");
INSERT INTO fy_node_map VALUES("193","admin","GoodsClass","clear","ALL","GoodsClass 清空回收站");
INSERT INTO fy_node_map VALUES("194","admin","GoodsClass","saveOrder","ALL","GoodsClass 保存排序");
INSERT INTO fy_node_map VALUES("199","admin","Brand","index","ALL","Brand 首页");
INSERT INTO fy_node_map VALUES("200","admin","Brand","recycleBin","ALL","Brand 回收站");
INSERT INTO fy_node_map VALUES("201","admin","Brand","add","ALL","Brand 添加");
INSERT INTO fy_node_map VALUES("202","admin","Brand","edit","ALL","Brand 编辑");
INSERT INTO fy_node_map VALUES("203","admin","Brand","delete","ALL","Brand 默认删除操作");
INSERT INTO fy_node_map VALUES("204","admin","Brand","recycle","ALL","Brand 从回收站恢复");
INSERT INTO fy_node_map VALUES("205","admin","Brand","forbid","ALL","Brand 默认禁用操作");
INSERT INTO fy_node_map VALUES("206","admin","Brand","resume","ALL","Brand 默认恢复操作");
INSERT INTO fy_node_map VALUES("207","admin","Brand","deleteForever","ALL","Brand 永久删除");
INSERT INTO fy_node_map VALUES("208","admin","Brand","clear","ALL","Brand 清空回收站");
INSERT INTO fy_node_map VALUES("209","admin","Brand","saveOrder","ALL","Brand 保存排序");
INSERT INTO fy_node_map VALUES("210","admin","Customer","excel","ALL","Customer 会员信息一键导出");
INSERT INTO fy_node_map VALUES("211","admin","Customer","index","ALL","Customer 首页");
INSERT INTO fy_node_map VALUES("212","admin","Customer","recycleBin","ALL","Customer 回收站");
INSERT INTO fy_node_map VALUES("213","admin","Customer","add","ALL","Customer 添加");
INSERT INTO fy_node_map VALUES("214","admin","Customer","edit","ALL","Customer 编辑");
INSERT INTO fy_node_map VALUES("215","admin","Customer","delete","ALL","Customer 默认删除操作");
INSERT INTO fy_node_map VALUES("216","admin","Customer","recycle","ALL","Customer 从回收站恢复");
INSERT INTO fy_node_map VALUES("217","admin","Customer","forbid","ALL","Customer 默认禁用操作");
INSERT INTO fy_node_map VALUES("218","admin","Customer","resume","ALL","Customer 默认恢复操作");
INSERT INTO fy_node_map VALUES("219","admin","Customer","deleteForever","ALL","Customer 永久删除");
INSERT INTO fy_node_map VALUES("220","admin","Customer","clear","ALL","Customer 清空回收站");
INSERT INTO fy_node_map VALUES("221","admin","Customer","saveOrder","ALL","Customer 保存排序");
INSERT INTO fy_node_map VALUES("225","admin","Goods","add","ALL","Goods ");
INSERT INTO fy_node_map VALUES("226","admin","Goods","index","ALL","Goods 首页");
INSERT INTO fy_node_map VALUES("227","admin","Goods","recycleBin","ALL","Goods 回收站");
INSERT INTO fy_node_map VALUES("228","admin","Goods","edit","ALL","Goods 编辑");
INSERT INTO fy_node_map VALUES("229","admin","Goods","delete","ALL","Goods 默认删除操作");
INSERT INTO fy_node_map VALUES("230","admin","Goods","recycle","ALL","Goods 从回收站恢复");
INSERT INTO fy_node_map VALUES("231","admin","Goods","forbid","ALL","Goods 默认禁用操作");
INSERT INTO fy_node_map VALUES("232","admin","Goods","resume","ALL","Goods 默认恢复操作");
INSERT INTO fy_node_map VALUES("233","admin","Goods","deleteForever","ALL","Goods 永久删除");
INSERT INTO fy_node_map VALUES("234","admin","Goods","clear","ALL","Goods 清空回收站");
INSERT INTO fy_node_map VALUES("235","admin","Goods","saveOrder","ALL","Goods 保存排序");
INSERT INTO fy_node_map VALUES("240","admin","CustomerTask","index","ALL","CustomerTask 首页");
INSERT INTO fy_node_map VALUES("241","admin","CustomerTask","recycleBin","ALL","CustomerTask 回收站");
INSERT INTO fy_node_map VALUES("242","admin","CustomerTask","add","ALL","CustomerTask 添加");
INSERT INTO fy_node_map VALUES("243","admin","CustomerTask","edit","ALL","CustomerTask 编辑");
INSERT INTO fy_node_map VALUES("244","admin","CustomerTask","delete","ALL","CustomerTask 默认删除操作");
INSERT INTO fy_node_map VALUES("245","admin","CustomerTask","recycle","ALL","CustomerTask 从回收站恢复");
INSERT INTO fy_node_map VALUES("246","admin","CustomerTask","forbid","ALL","CustomerTask 默认禁用操作");
INSERT INTO fy_node_map VALUES("247","admin","CustomerTask","resume","ALL","CustomerTask 默认恢复操作");
INSERT INTO fy_node_map VALUES("248","admin","CustomerTask","deleteForever","ALL","CustomerTask 永久删除");
INSERT INTO fy_node_map VALUES("249","admin","CustomerTask","clear","ALL","CustomerTask 清空回收站");
INSERT INTO fy_node_map VALUES("250","admin","CustomerTask","saveOrder","ALL","CustomerTask 保存排序");
INSERT INTO fy_node_map VALUES("255","admin","Lottery","index","ALL","Lottery 首页");
INSERT INTO fy_node_map VALUES("256","admin","Lottery","recycleBin","ALL","Lottery 回收站");
INSERT INTO fy_node_map VALUES("257","admin","Lottery","add","ALL","Lottery 添加");
INSERT INTO fy_node_map VALUES("258","admin","Lottery","edit","ALL","Lottery 编辑");
INSERT INTO fy_node_map VALUES("259","admin","Lottery","delete","ALL","Lottery 默认删除操作");
INSERT INTO fy_node_map VALUES("260","admin","Lottery","recycle","ALL","Lottery 从回收站恢复");
INSERT INTO fy_node_map VALUES("261","admin","Lottery","forbid","ALL","Lottery 默认禁用操作");
INSERT INTO fy_node_map VALUES("262","admin","Lottery","resume","ALL","Lottery 默认恢复操作");
INSERT INTO fy_node_map VALUES("263","admin","Lottery","deleteForever","ALL","Lottery 永久删除");
INSERT INTO fy_node_map VALUES("264","admin","Lottery","clear","ALL","Lottery 清空回收站");
INSERT INTO fy_node_map VALUES("265","admin","Lottery","saveOrder","ALL","Lottery 保存排序");
INSERT INTO fy_node_map VALUES("270","admin","Sildeshow","index","ALL","Sildeshow ");
INSERT INTO fy_node_map VALUES("271","admin","Sildeshow","recycleBin","ALL","Sildeshow 回收站");
INSERT INTO fy_node_map VALUES("272","admin","Sildeshow","add","ALL","Sildeshow 添加");
INSERT INTO fy_node_map VALUES("273","admin","Sildeshow","edit","ALL","Sildeshow 编辑");
INSERT INTO fy_node_map VALUES("274","admin","Sildeshow","delete","ALL","Sildeshow 默认删除操作");
INSERT INTO fy_node_map VALUES("275","admin","Sildeshow","recycle","ALL","Sildeshow 从回收站恢复");
INSERT INTO fy_node_map VALUES("276","admin","Sildeshow","forbid","ALL","Sildeshow 默认禁用操作");
INSERT INTO fy_node_map VALUES("277","admin","Sildeshow","resume","ALL","Sildeshow 默认恢复操作");
INSERT INTO fy_node_map VALUES("278","admin","Sildeshow","deleteForever","ALL","Sildeshow 永久删除");
INSERT INTO fy_node_map VALUES("279","admin","Sildeshow","clear","ALL","Sildeshow 清空回收站");
INSERT INTO fy_node_map VALUES("280","admin","Sildeshow","saveOrder","ALL","Sildeshow 保存排序");
INSERT INTO fy_node_map VALUES("285","admin","CustomerGrade","add","ALL","CustomerGrade 添加");
INSERT INTO fy_node_map VALUES("286","admin","CustomerGrade","edit","ALL","CustomerGrade 编辑");
INSERT INTO fy_node_map VALUES("287","admin","CustomerGrade","index","ALL","CustomerGrade 首页");
INSERT INTO fy_node_map VALUES("288","admin","CustomerGrade","recycleBin","ALL","CustomerGrade 回收站");
INSERT INTO fy_node_map VALUES("289","admin","CustomerGrade","delete","ALL","CustomerGrade 默认删除操作");
INSERT INTO fy_node_map VALUES("290","admin","CustomerGrade","recycle","ALL","CustomerGrade 从回收站恢复");
INSERT INTO fy_node_map VALUES("291","admin","CustomerGrade","forbid","ALL","CustomerGrade 默认禁用操作");
INSERT INTO fy_node_map VALUES("292","admin","CustomerGrade","resume","ALL","CustomerGrade 默认恢复操作");
INSERT INTO fy_node_map VALUES("293","admin","CustomerGrade","deleteForever","ALL","CustomerGrade 永久删除");
INSERT INTO fy_node_map VALUES("294","admin","CustomerGrade","clear","ALL","CustomerGrade 清空回收站");
INSERT INTO fy_node_map VALUES("295","admin","CustomerGrade","saveOrder","ALL","CustomerGrade 保存排序");
INSERT INTO fy_node_map VALUES("300","admin","Goods","return_json","ALL","Goods ");
INSERT INTO fy_node_map VALUES("301","admin","CustomerGradeDesc","index","ALL","CustomerGradeDesc 首页");
INSERT INTO fy_node_map VALUES("302","admin","CustomerGradeDesc","recycleBin","ALL","CustomerGradeDesc 回收站");
INSERT INTO fy_node_map VALUES("303","admin","CustomerGradeDesc","add","ALL","CustomerGradeDesc 添加");
INSERT INTO fy_node_map VALUES("304","admin","CustomerGradeDesc","edit","ALL","CustomerGradeDesc 编辑");
INSERT INTO fy_node_map VALUES("305","admin","CustomerGradeDesc","delete","ALL","CustomerGradeDesc 默认删除操作");
INSERT INTO fy_node_map VALUES("306","admin","CustomerGradeDesc","recycle","ALL","CustomerGradeDesc 从回收站恢复");
INSERT INTO fy_node_map VALUES("307","admin","CustomerGradeDesc","forbid","ALL","CustomerGradeDesc 默认禁用操作");
INSERT INTO fy_node_map VALUES("308","admin","CustomerGradeDesc","resume","ALL","CustomerGradeDesc 默认恢复操作");
INSERT INTO fy_node_map VALUES("309","admin","CustomerGradeDesc","deleteForever","ALL","CustomerGradeDesc 永久删除");
INSERT INTO fy_node_map VALUES("310","admin","CustomerGradeDesc","clear","ALL","CustomerGradeDesc 清空回收站");
INSERT INTO fy_node_map VALUES("311","admin","CustomerGradeDesc","saveOrder","ALL","CustomerGradeDesc 保存排序");
INSERT INTO fy_node_map VALUES("316","admin","LotteryLog","index","ALL","LotteryLog ");
INSERT INTO fy_node_map VALUES("317","admin","LotteryLog","detail","ALL","LotteryLog ");
INSERT INTO fy_node_map VALUES("318","admin","LotteryLog","recycleBin","ALL","LotteryLog 回收站");
INSERT INTO fy_node_map VALUES("319","admin","LotteryLog","add","ALL","LotteryLog 添加");
INSERT INTO fy_node_map VALUES("320","admin","LotteryLog","edit","ALL","LotteryLog 编辑");
INSERT INTO fy_node_map VALUES("321","admin","LotteryLog","delete","ALL","LotteryLog 默认删除操作");
INSERT INTO fy_node_map VALUES("322","admin","LotteryLog","recycle","ALL","LotteryLog 从回收站恢复");
INSERT INTO fy_node_map VALUES("323","admin","LotteryLog","forbid","ALL","LotteryLog 默认禁用操作");
INSERT INTO fy_node_map VALUES("324","admin","LotteryLog","resume","ALL","LotteryLog 默认恢复操作");
INSERT INTO fy_node_map VALUES("325","admin","LotteryLog","deleteForever","ALL","LotteryLog 永久删除");
INSERT INTO fy_node_map VALUES("326","admin","LotteryLog","clear","ALL","LotteryLog 清空回收站");
INSERT INTO fy_node_map VALUES("327","admin","LotteryLog","saveOrder","ALL","LotteryLog 保存排序");
INSERT INTO fy_node_map VALUES("331","admin","Activity","add","ALL","Activity ");
INSERT INTO fy_node_map VALUES("332","admin","Activity","index","ALL","Activity 首页");
INSERT INTO fy_node_map VALUES("333","admin","Activity","recycleBin","ALL","Activity 回收站");
INSERT INTO fy_node_map VALUES("334","admin","Activity","edit","ALL","Activity 编辑");
INSERT INTO fy_node_map VALUES("335","admin","Activity","delete","ALL","Activity 默认删除操作");
INSERT INTO fy_node_map VALUES("336","admin","Activity","recycle","ALL","Activity 从回收站恢复");
INSERT INTO fy_node_map VALUES("337","admin","Activity","forbid","ALL","Activity 默认禁用操作");
INSERT INTO fy_node_map VALUES("338","admin","Activity","resume","ALL","Activity 默认恢复操作");
INSERT INTO fy_node_map VALUES("339","admin","Activity","deleteForever","ALL","Activity 永久删除");
INSERT INTO fy_node_map VALUES("340","admin","Activity","clear","ALL","Activity 清空回收站");
INSERT INTO fy_node_map VALUES("341","admin","Activity","saveOrder","ALL","Activity 保存排序");
INSERT INTO fy_node_map VALUES("346","admin","Customer","detail","ALL","Customer 会员信息详情");
INSERT INTO fy_node_map VALUES("347","admin","Customer","getGradeVal","ALL","Customer ");
INSERT INTO fy_node_map VALUES("349","admin","Goods","CreateProductSpecByCustomCidHasPid","ALL","Goods ");
INSERT INTO fy_node_map VALUES("350","admin","Goods","CreateProductSpecValueByCustomCid","ALL","Goods ");
INSERT INTO fy_node_map VALUES("351","admin","Goods","delProductSpecValueByCustomCid","ALL","Goods ");
INSERT INTO fy_node_map VALUES("352","admin","Goods","delProductSpecByCustomCidHasPid","ALL","Goods ");
INSERT INTO fy_node_map VALUES("356","admin","Lottery","editStatus","ALL","Lottery ");
INSERT INTO fy_node_map VALUES("357","admin","CustomerTask","detail","ALL","CustomerTask 会员信息详情");
INSERT INTO fy_node_map VALUES("358","admin","CustomerTask","excel","ALL","CustomerTask 会员参与任务信息一键导出");
INSERT INTO fy_node_map VALUES("360","admin","Goods","getskudata","ALL","Goods ");
INSERT INTO fy_node_map VALUES("361","admin","Order","index","ALL","Order 首页");
INSERT INTO fy_node_map VALUES("362","admin","Order","recycleBin","ALL","Order 回收站");
INSERT INTO fy_node_map VALUES("363","admin","Order","add","ALL","Order 添加");
INSERT INTO fy_node_map VALUES("364","admin","Order","edit","ALL","Order 编辑");
INSERT INTO fy_node_map VALUES("365","admin","Order","delete","ALL","Order 默认删除操作");
INSERT INTO fy_node_map VALUES("366","admin","Order","recycle","ALL","Order 从回收站恢复");
INSERT INTO fy_node_map VALUES("367","admin","Order","forbid","ALL","Order 默认禁用操作");
INSERT INTO fy_node_map VALUES("368","admin","Order","resume","ALL","Order 默认恢复操作");
INSERT INTO fy_node_map VALUES("369","admin","Order","deleteForever","ALL","Order 永久删除");
INSERT INTO fy_node_map VALUES("370","admin","Order","clear","ALL","Order 清空回收站");
INSERT INTO fy_node_map VALUES("371","admin","Order","saveOrder","ALL","Order 保存排序");
INSERT INTO fy_node_map VALUES("376","admin","Transaction","add","ALL","Transaction ");
INSERT INTO fy_node_map VALUES("377","admin","Transaction","edit","ALL","Transaction ");
INSERT INTO fy_node_map VALUES("378","admin","Transaction","index","ALL","Transaction 首页");
INSERT INTO fy_node_map VALUES("379","admin","Transaction","recycleBin","ALL","Transaction 回收站");
INSERT INTO fy_node_map VALUES("380","admin","Transaction","delete","ALL","Transaction 默认删除操作");
INSERT INTO fy_node_map VALUES("381","admin","Transaction","recycle","ALL","Transaction 从回收站恢复");
INSERT INTO fy_node_map VALUES("382","admin","Transaction","forbid","ALL","Transaction 默认禁用操作");
INSERT INTO fy_node_map VALUES("383","admin","Transaction","resume","ALL","Transaction 默认恢复操作");
INSERT INTO fy_node_map VALUES("384","admin","Transaction","deleteForever","ALL","Transaction 永久删除");
INSERT INTO fy_node_map VALUES("385","admin","Transaction","clear","ALL","Transaction 清空回收站");
INSERT INTO fy_node_map VALUES("386","admin","Transaction","saveOrder","ALL","Transaction 保存排序");
INSERT INTO fy_node_map VALUES("391","admin","Goods","editStatus","ALL","Goods ");
INSERT INTO fy_node_map VALUES("392","admin","CustomerRight","index","ALL","CustomerRight 首页");
INSERT INTO fy_node_map VALUES("393","admin","CustomerRight","recycleBin","ALL","CustomerRight 回收站");
INSERT INTO fy_node_map VALUES("394","admin","CustomerRight","add","ALL","CustomerRight 添加");
INSERT INTO fy_node_map VALUES("395","admin","CustomerRight","edit","ALL","CustomerRight 编辑");
INSERT INTO fy_node_map VALUES("396","admin","CustomerRight","delete","ALL","CustomerRight 默认删除操作");
INSERT INTO fy_node_map VALUES("397","admin","CustomerRight","recycle","ALL","CustomerRight 从回收站恢复");
INSERT INTO fy_node_map VALUES("398","admin","CustomerRight","forbid","ALL","CustomerRight ");
INSERT INTO fy_node_map VALUES("399","admin","CustomerRight","resume","ALL","CustomerRight 默认恢复操作");
INSERT INTO fy_node_map VALUES("400","admin","CustomerRight","deleteForever","ALL","CustomerRight 永久删除");
INSERT INTO fy_node_map VALUES("401","admin","CustomerRight","clear","ALL","CustomerRight 清空回收站");
INSERT INTO fy_node_map VALUES("402","admin","CustomerRight","saveOrder","ALL","CustomerRight 保存排序");
INSERT INTO fy_node_map VALUES("407","admin","GoodsComment","returnComment","ALL","GoodsComment ");
INSERT INTO fy_node_map VALUES("408","admin","GoodsComment","index","ALL","GoodsComment 首页");
INSERT INTO fy_node_map VALUES("409","admin","GoodsComment","recycleBin","ALL","GoodsComment 回收站");
INSERT INTO fy_node_map VALUES("410","admin","GoodsComment","add","ALL","GoodsComment 添加");
INSERT INTO fy_node_map VALUES("411","admin","GoodsComment","edit","ALL","GoodsComment 编辑");
INSERT INTO fy_node_map VALUES("412","admin","GoodsComment","delete","ALL","GoodsComment 默认删除操作");
INSERT INTO fy_node_map VALUES("413","admin","GoodsComment","recycle","ALL","GoodsComment 从回收站恢复");
INSERT INTO fy_node_map VALUES("414","admin","GoodsComment","forbid","ALL","GoodsComment ");
INSERT INTO fy_node_map VALUES("415","admin","GoodsComment","resume","ALL","GoodsComment 默认恢复操作");
INSERT INTO fy_node_map VALUES("416","admin","GoodsComment","deleteForever","ALL","GoodsComment 永久删除");
INSERT INTO fy_node_map VALUES("417","admin","GoodsComment","clear","ALL","GoodsComment 清空回收站");
INSERT INTO fy_node_map VALUES("418","admin","GoodsComment","saveOrder","ALL","GoodsComment 保存排序");
INSERT INTO fy_node_map VALUES("422","admin","Message","beforeEdit","ALL","Message ");
INSERT INTO fy_node_map VALUES("423","admin","Message","beforeAdd","ALL","Message ");
INSERT INTO fy_node_map VALUES("424","admin","Message","getLottery","ALL","Message ");
INSERT INTO fy_node_map VALUES("425","admin","Message","add","ALL","Message 添加");
INSERT INTO fy_node_map VALUES("426","admin","Message","edit","ALL","Message 编辑");
INSERT INTO fy_node_map VALUES("427","admin","Message","sendUser","ALL","Message ");
INSERT INTO fy_node_map VALUES("428","admin","Message","index","ALL","Message 首页");
INSERT INTO fy_node_map VALUES("429","admin","Message","recycleBin","ALL","Message 回收站");
INSERT INTO fy_node_map VALUES("430","admin","Message","delete","ALL","Message 默认删除操作");
INSERT INTO fy_node_map VALUES("431","admin","Message","recycle","ALL","Message 从回收站恢复");
INSERT INTO fy_node_map VALUES("432","admin","Message","forbid","ALL","Message ");
INSERT INTO fy_node_map VALUES("433","admin","Message","resume","ALL","Message 默认恢复操作");
INSERT INTO fy_node_map VALUES("434","admin","Message","deleteForever","ALL","Message 永久删除");
INSERT INTO fy_node_map VALUES("435","admin","Message","clear","ALL","Message 清空回收站");
INSERT INTO fy_node_map VALUES("436","admin","Message","saveOrder","ALL","Message 保存排序");
INSERT INTO fy_node_map VALUES("437","admin","Order","orderDetail","ALL","Order ");
INSERT INTO fy_node_map VALUES("438","admin","Order","addPost","ALL","Order ");
INSERT INTO fy_node_map VALUES("439","admin","Order","editTotalPrice","ALL","Order ");
INSERT INTO fy_node_map VALUES("440","admin","Order","afterSaleHandle","ALL","Order ");
INSERT INTO fy_node_map VALUES("441","admin","Order","refund","ALL","Order ");
INSERT INTO fy_node_map VALUES("444","admin","ScoreLog","index","ALL","ScoreLog 首页");
INSERT INTO fy_node_map VALUES("445","admin","ScoreLog","recycleBin","ALL","ScoreLog 回收站");
INSERT INTO fy_node_map VALUES("446","admin","ScoreLog","add","ALL","ScoreLog 添加");
INSERT INTO fy_node_map VALUES("447","admin","ScoreLog","edit","ALL","ScoreLog 编辑");
INSERT INTO fy_node_map VALUES("448","admin","ScoreLog","delete","ALL","ScoreLog 默认删除操作");
INSERT INTO fy_node_map VALUES("449","admin","ScoreLog","recycle","ALL","ScoreLog 从回收站恢复");
INSERT INTO fy_node_map VALUES("450","admin","ScoreLog","forbid","ALL","ScoreLog ");
INSERT INTO fy_node_map VALUES("451","admin","ScoreLog","resume","ALL","ScoreLog 默认恢复操作");
INSERT INTO fy_node_map VALUES("452","admin","ScoreLog","deleteForever","ALL","ScoreLog 永久删除");
INSERT INTO fy_node_map VALUES("453","admin","ScoreLog","clear","ALL","ScoreLog 清空回收站");
INSERT INTO fy_node_map VALUES("454","admin","ScoreLog","saveOrder","ALL","ScoreLog 保存排序");
INSERT INTO fy_node_map VALUES("459","admin","WxPayRefundLog","index","ALL","WxPayRefundLog 首页");
INSERT INTO fy_node_map VALUES("460","admin","WxPayRefundLog","recycleBin","ALL","WxPayRefundLog 回收站");
INSERT INTO fy_node_map VALUES("461","admin","WxPayRefundLog","add","ALL","WxPayRefundLog 添加");
INSERT INTO fy_node_map VALUES("462","admin","WxPayRefundLog","edit","ALL","WxPayRefundLog 编辑");
INSERT INTO fy_node_map VALUES("463","admin","WxPayRefundLog","delete","ALL","WxPayRefundLog 默认删除操作");
INSERT INTO fy_node_map VALUES("464","admin","WxPayRefundLog","recycle","ALL","WxPayRefundLog 从回收站恢复");
INSERT INTO fy_node_map VALUES("465","admin","WxPayRefundLog","forbid","ALL","WxPayRefundLog ");
INSERT INTO fy_node_map VALUES("466","admin","WxPayRefundLog","resume","ALL","WxPayRefundLog 默认恢复操作");
INSERT INTO fy_node_map VALUES("467","admin","WxPayRefundLog","deleteForever","ALL","WxPayRefundLog 永久删除");
INSERT INTO fy_node_map VALUES("468","admin","WxPayRefundLog","clear","ALL","WxPayRefundLog 清空回收站");
INSERT INTO fy_node_map VALUES("469","admin","WxPayRefundLog","saveOrder","ALL","WxPayRefundLog 保存排序");



DROP TABLE fy_notice;

CREATE TABLE `fy_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '公告表',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `detail` varchar(255) DEFAULT NULL COMMENT '概要',
  `create_time` int(10) DEFAULT NULL COMMENT '添加时间',
  `status` tinyint(1) DEFAULT '1' COMMENT '1启用0禁用',
  `orderby` int(11) DEFAULT '1' COMMENT '排序值',
  `update_time` int(11) DEFAULT NULL COMMENT '修改时间',
  `desc` text COMMENT '详情',
  `isdelete` tinyint(1) DEFAULT '0' COMMENT '删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO fy_notice VALUES("7","泛亚商城1.0即将试运营","泛亚商城1.0即将试运营","1532573107","1","7","1535767026","经过不懈的努力，泛亚商城1.0终于完成，将于一周后正式开始试运营，敬请期待！","0");
INSERT INTO fy_notice VALUES("8","欢迎各位同事内部体验,反馈建议","泛亚商城商品即将上线完毕，敬请期待！","1532573355","1","7","1535767197","各位会员，泛亚商城各类商品即将上线完毕，商品类型多种多样，欢迎各位会员体验购买！","0");
INSERT INTO fy_notice VALUES("9","泛亚商城1.0内部体验","","1533258057","1","7","1535767069","泛亚科技是国家大数据战略践行者和新型大数据产业生态圈商业模式引领者。","1");
INSERT INTO fy_notice VALUES("10","内部体验","   泛亚科技是国家大数据战略践行者和新型大数据产业生态圈商业模式引领者。","1533258227","1","7","1535766979","    贵州泛亚信通网络科技有限公司（简称&ldquo;泛亚科技&rdquo;）是一家集泛在无线网络环境建设、数据可视化研究、大数据智能跨界应用为一体的大数据高科技企业，由郑州市讯捷贸易有限公司、阿里巴巴集团、贵阳广电传媒有限公司、贵阳市工业投资（集团）有限公司合资成立，注册资本1.2亿元。\n \n","1");



DROP TABLE fy_one_two_three_four;

CREATE TABLE `fy_one_two_three_four` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '四级控制器主键',
  `field1` varchar(255) DEFAULT NULL COMMENT '字段一',
  `option` varchar(255) DEFAULT NULL COMMENT '选填',
  `select` varchar(255) DEFAULT NULL COMMENT '下拉框',
  `radio` varchar(255) DEFAULT NULL COMMENT '单选',
  `checkbox` varchar(255) DEFAULT NULL COMMENT '复选框',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `textarea` varchar(255) DEFAULT NULL COMMENT '文本域',
  `date` varchar(255) DEFAULT NULL COMMENT '日期',
  `mobile` varchar(255) DEFAULT NULL COMMENT '手机号',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `sort` smallint(5) DEFAULT '50' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态，1-正常 | 0-禁用',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '删除状态，1-删除 | 0-正常',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `sort` (`sort`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='四级控制器';

INSERT INTO fy_one_two_three_four VALUES("1","yuan1994","tpadmin","2","1","","2222","https://github.com/yuan1994/tpadmin","2016-12-07","13012345678","tianpian0805@gmail.com","50","1","0","1481947278","1481947353");



DROP TABLE fy_order;

CREATE TABLE `fy_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单表',
  `order_id` varchar(255) NOT NULL COMMENT '订单编号',
  `order_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0未支付1已支付2待评价，3待回复，4,待退款 5部分退款，6全部退款，7取消订单，8订单完成',
  `buy_list` text COMMENT '商品列表',
  `total_price` decimal(10,2) NOT NULL COMMENT '订单总价',
  `create_time` int(10) NOT NULL COMMENT '时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `openid` varchar(255) NOT NULL COMMENT '用户id',
  `customer_name` varchar(255) DEFAULT NULL,
  `address_id` int(10) DEFAULT NULL COMMENT '地址id',
  `pay_time` int(10) DEFAULT NULL COMMENT '付款时间',
  `js_api_parameters` text COMMENT '微信支付所需参数',
  `prepay_id` varchar(50) DEFAULT NULL COMMENT '统一下单接口返回的预付id',
  `pay_status` tinyint(1) DEFAULT '0' COMMENT '支付状态;0未付款;1已付款 ',
  `inv_payee` varchar(255) DEFAULT NULL COMMENT '发票抬头,用户页面填写 ',
  `inv_content` varchar(255) DEFAULT NULL COMMENT '发票内容,用户页面选择,取值shop_config的code字段的值 为invoice_content的value ',
  `goods_all` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL COMMENT '商户id',
  `isdelete` tinyint(1) NOT NULL DEFAULT '0',
  `lottery_id` int(11) DEFAULT NULL COMMENT '优惠券id',
  `lottery_price` decimal(10,2) DEFAULT NULL COMMENT '优惠券金额',
  `is_lottery` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0没有1有',
  `return_price_all` decimal(10,2) DEFAULT NULL COMMENT '退款金额',
  `total_point` decimal(10,2) DEFAULT NULL COMMENT '积分总价',
  `type` tinyint(1) DEFAULT '0' COMMENT '0表示纯金钱的订单1纯积分，2两种混合',
  `is_settlement` tinyint(1) DEFAULT '0' COMMENT '0未结算 1结算',
  `is_tui` tinyint(1) DEFAULT '0' COMMENT '0为推送支付成功，1已经推送',
  `address_detail` varchar(3000) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

INSERT INTO fy_order VALUES("1","1441217402201808311656478916","8","[{\"goods_name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"sku_val\":\"5000g\",\"num\":1,\"goods_id\":1,\"user_id\":21}]","0.00","1535705807","","","omQYXwM8TEkiBZR7Ldm891OOWbNQ","Baymax","2","1535706068","{\"appId\":\"wxd9da51e6bae6c3c0\",\"nonceStr\":\"qc02xzohg2npyrcwk5tn9w78qe38ddvd\",\"package\":\"prepay_id=wx31170043895566cab672aa4e2083859678\",\"signType\":\"HMAC-SHA256\",\"timeStamp\":\"1535706056\",\"paySign\":\"426B9506D4BEC6C36949922057AFD357CBC98B358698A3241762ADDD4A240B19\"}","wx31170043895566cab672aa4e2083859678","1","","","1","21","0","","","0","","0.00","0","0","1","{\"id\":2,\"uid\":2,\"name\":\"\\u6bb5\\u6b22\",\"mobile\":\"13765805489\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"\\u4e5f\\u662f\",\"status\":1,\"addtime\":1535705798,\"updatetime\":1535705798}");
INSERT INTO fy_order VALUES("2","1441217402201808311657597087","7","[{\"goods_name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"sku_val\":\"5000g\",\"num\":1,\"goods_id\":1,\"user_id\":21}]","0.01","1535705879","","","omQYXwNAT5uC15TQqMGxajJzqo4s","葡萄不长牙","1","","","","0","","","1","21","0","","","0","","0.00","0","0","0","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}");
INSERT INTO fy_order VALUES("3","1441217402201808311658048857","7","[{\"goods_name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"sku_val\":\"5000g\",\"num\":1,\"goods_id\":1,\"user_id\":21}]","0.01","1535705884","","","omQYXwNAT5uC15TQqMGxajJzqo4s","葡萄不长牙","1","","{\"appId\":\"wxd9da51e6bae6c3c0\",\"nonceStr\":\"f4r8agzikuw796ak7rk1fkcage12y3uo\",\"package\":\"prepay_id=wx3116594991176456746ebe250560521679\",\"signType\":\"HMAC-SHA256\",\"timeStamp\":\"1535706002\",\"paySign\":\"DBD1FB796C8292572E2EDF47091CB9B8C78FFEC18BBE54B709DD1AF48E018CF6\"}","wx3116594991176456746ebe250560521679","0","","","1","21","0","","","0","","0.00","0","0","0","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}");
INSERT INTO fy_order VALUES("4","1441217402201809010931086075","1","[{\"goods_name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"sku_val\":\"5000g\",\"num\":1,\"goods_id\":1,\"user_id\":21}]","0.01","1535765468","","","omQYXwAasNeXdGSMymd91487Ds1g","DANIEL","3","1535765494","","","1","","","1","21","0","","","0","","0.00","0","0","0","{\"id\":3,\"uid\":3,\"name\":\"\\u6d4b\\u8bd5\\u4eba\",\"mobile\":\"18988756181\",\"address\":\"\\u5929\\u6d25\\u5e02\\u6cb3\\u5317\\u533a\\u65b0\\u5f00\\u6cb3\\u8857\\u9053\",\"street\":\"\\u6d4b\\u8bd5\",\"status\":1,\"addtime\":1535765409,\"updatetime\":1535765409}");
INSERT INTO fy_order VALUES("5","1441217402201809010933292534","7","[{\"goods_name\":\"\\u82f9\\u679c\\u624b\\u673a\",\"sku_val\":\"\\u901a\\u7528\",\"num\":1,\"goods_id\":5,\"user_id\":21}]","0.01","1535765609","","","omQYXwAasNeXdGSMymd91487Ds1g","DANIEL","3","","{\"appId\":\"wxd9da51e6bae6c3c0\",\"nonceStr\":\"4r3nlm7oytu1qhc1fc0nd4rwpkr0s880\",\"package\":\"prepay_id=wx010934220212221b1d1e30073756940256\",\"signType\":\"HMAC-SHA256\",\"timeStamp\":\"1535765675\",\"paySign\":\"E2E2723C2F53E62CC79098F11B39CB3AC8DF54B7A3BA48B10472223920F6B61A\"}","wx010934220212221b1d1e30073756940256","0","","","5","21","0","","","0","","0.00","0","0","0","{\"id\":3,\"uid\":3,\"name\":\"\\u6d4b\\u8bd5\\u4eba\",\"mobile\":\"18988756181\",\"address\":\"\\u5929\\u6d25\\u5e02\\u6cb3\\u5317\\u533a\\u65b0\\u5f00\\u6cb3\\u8857\\u9053\",\"street\":\"\\u6d4b\\u8bd5\",\"status\":1,\"addtime\":1535765409,\"updatetime\":1535765409}");
INSERT INTO fy_order VALUES("6","1441217402201809010942213958","1","[{\"goods_name\":\"\\u79ef\\u5206\\u5546\\u57ce\\u82f9\\u679c\\u624b\\u673a\",\"sku_val\":\"\\u901a\\u7528\",\"num\":1,\"goods_id\":6,\"user_id\":21}]","0.01","1535766141","","","omQYXwAasNeXdGSMymd91487Ds1g","DANIEL","3","1535766141","","","1","","","6","21","0","","","0","","10.00","1","0","0","{\"id\":3,\"uid\":3,\"name\":\"\\u6d4b\\u8bd5\\u4eba\",\"mobile\":\"18988756181\",\"address\":\"\\u5929\\u6d25\\u5e02\\u6cb3\\u5317\\u533a\\u65b0\\u5f00\\u6cb3\\u8857\\u9053\",\"street\":\"\\u6d4b\\u8bd5\",\"status\":1,\"addtime\":1535765409,\"updatetime\":1535765409}");
INSERT INTO fy_order VALUES("7","1441217402201809010945314726","1","[{\"goods_name\":\"\\u65b0\\u7586\\u5580\\u4ec0\\u897f\\u68854\\u65a4\\u5927\\u679c\\u987a\\u4e30\\u5305\\u90ae\\u5f53\\u5b63\\u6c34\\u679c \\u65b0\\u9c9c\\u897f\\u6885\",\"sku_val\":\"1kg\",\"num\":1,\"goods_id\":4,\"user_id\":21}]","0.01","1535766331","","","omQYXwAasNeXdGSMymd91487Ds1g","DANIEL","3","1535766341","","","1","","","4","21","0","","","0","","1.00","0","0","0","{\"id\":3,\"uid\":3,\"name\":\"\\u6d4b\\u8bd5\\u4eba\",\"mobile\":\"18988756181\",\"address\":\"\\u5929\\u6d25\\u5e02\\u6cb3\\u5317\\u533a\\u65b0\\u5f00\\u6cb3\\u8857\\u9053\",\"street\":\"\\u6d4b\\u8bd5\",\"status\":1,\"addtime\":1535765409,\"updatetime\":1535765409}");
INSERT INTO fy_order VALUES("8","1441217402201809071338223551","1","[{\"goods_name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"sku_val\":\"5000g\",\"num\":1,\"goods_id\":1,\"user_id\":21}]","0.01","1536298702","","","omQYXwAasNeXdGSMymd91487Ds1g","DANIEL","3","1536298711","","","1","","","1","21","0","","","0","","0.00","0","0","0","{\"id\":3,\"uid\":3,\"name\":\"\\u6d4b\\u8bd5\\u4eba\",\"mobile\":\"18988756181\",\"address\":\"\\u5929\\u6d25\\u5e02\\u6cb3\\u5317\\u533a\\u65b0\\u5f00\\u6cb3\\u8857\\u9053\",\"street\":\"\\u6d4b\\u8bd5\",\"status\":1,\"addtime\":1535765409,\"updatetime\":1535765409}");
INSERT INTO fy_order VALUES("9","1441217402201809121331384641","7","[{\"goods_name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"sku_val\":\"5000g\",\"num\":1,\"goods_id\":1,\"user_id\":21}]","0.01","1536730298","","","omQYXwNAT5uC15TQqMGxajJzqo4s","葡萄不长牙","1","","{\"appId\":\"wxd9da51e6bae6c3c0\",\"nonceStr\":\"wmkk0fwpsbkyn2cwgi53f1a1429xws27\",\"package\":\"prepay_id=wx12133132892931e407bcd91c1887335721\",\"signType\":\"HMAC-SHA256\",\"timeStamp\":\"1536730312\",\"paySign\":\"2BADBC157EAF03BFF0B9734B3BB628746A43AFF03EF5043BFA27002FA00B1F5B\"}","wx12133132892931e407bcd91c1887335721","0","","","1","21","0","","","0","","0.00","0","0","0","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}");
INSERT INTO fy_order VALUES("10","1441217402201809121332181627","7","[{\"goods_name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"sku_val\":\"5000g\",\"num\":1,\"goods_id\":1,\"user_id\":21}]","0.01","1536730338","","","omQYXwNAT5uC15TQqMGxajJzqo4s","葡萄不长牙","1","","{\"appId\":\"wxd9da51e6bae6c3c0\",\"nonceStr\":\"oi8btx62uwonw7cbe2wjafm9sqbqasl4\",\"package\":\"prepay_id=wx12133423080519f4f6bd641d1380554331\",\"signType\":\"HMAC-SHA256\",\"timeStamp\":\"1536730483\",\"paySign\":\"56863650812B5AF800309F8D1929886A12C5C6CAF691C9291B47D8F909377036\"}","wx12133423080519f4f6bd641d1380554331","0","","","1","21","0","","","0","","0.00","0","0","0","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}");
INSERT INTO fy_order VALUES("11","1441217402201809121337265333","7","[{\"goods_name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"sku_val\":\"5000g\",\"num\":1,\"goods_id\":1,\"user_id\":21}]","0.01","1536730646","","","omQYXwNAT5uC15TQqMGxajJzqo4s","葡萄不长牙","1","","","","0","","","1","21","0","","","0","","0.00","0","0","0","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}");
INSERT INTO fy_order VALUES("12","1441217402201809121338196029","7","[{\"goods_name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"sku_val\":\"5000g\",\"num\":1,\"goods_id\":1,\"user_id\":21}]","0.01","1536730699","","","omQYXwNAT5uC15TQqMGxajJzqo4s","葡萄不长牙","1","","","","0","","","1","21","0","","","0","","0.00","0","0","0","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}");
INSERT INTO fy_order VALUES("13","1441217402201809121339549195","7","[{\"goods_name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"sku_val\":\"5000g\",\"num\":1,\"goods_id\":1,\"user_id\":21}]","0.01","1536730794","","","omQYXwNAT5uC15TQqMGxajJzqo4s","葡萄不长牙","1","","","","0","","","1","21","0","","","0","","0.00","0","0","0","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}");
INSERT INTO fy_order VALUES("14","1441217402201809121341165751","7","[{\"goods_name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"sku_val\":\"5000g\",\"num\":1,\"goods_id\":1,\"user_id\":21}]","0.01","1536730876","","","omQYXwNAT5uC15TQqMGxajJzqo4s","葡萄不长牙","1","","","","0","","","1","21","0","","","0","","0.00","0","0","0","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}");
INSERT INTO fy_order VALUES("15","1441217402201809121342031459","7","[{\"goods_name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"sku_val\":\"5000g\",\"num\":1,\"goods_id\":1,\"user_id\":21}]","0.01","1536730923","","","omQYXwNAT5uC15TQqMGxajJzqo4s","葡萄不长牙","1","","","","0","","","1","21","0","","","0","","0.00","0","0","0","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}");
INSERT INTO fy_order VALUES("16","1441217402201809121343192015","7","[{\"goods_name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"sku_val\":\"5000g\",\"num\":1,\"goods_id\":1,\"user_id\":21}]","0.01","1536730999","","","omQYXwNAT5uC15TQqMGxajJzqo4s","葡萄不长牙","1","","","","0","","","1","21","0","","","0","","0.00","0","0","0","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}");
INSERT INTO fy_order VALUES("17","1441217402201809121353414105","7","[{\"goods_name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"sku_val\":\"5000g\",\"num\":1,\"goods_id\":1,\"user_id\":21}]","0.01","1536731621","","","omQYXwNAT5uC15TQqMGxajJzqo4s","葡萄不长牙","1","","{\"appId\":\"wxd9da51e6bae6c3c0\",\"nonceStr\":\"1dbly122s8iopeqy4p3j9wu6jpejqni2\",\"package\":\"prepay_id=wx12135404797882b4eddac3161093218941\",\"signType\":\"HMAC-SHA256\",\"timeStamp\":\"1536731664\",\"paySign\":\"D4A78E7F677B8918FB8A2BBF13DCD31F800BA5F3300A635A5DCF056BF4C92591\"}","wx12135404797882b4eddac3161093218941","0","","","1","21","0","","","0","","0.00","0","0","0","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}");
INSERT INTO fy_order VALUES("18","1441217402201809121401405669","7","[{\"goods_name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"sku_val\":\"5000g\",\"num\":1,\"goods_id\":1,\"user_id\":21}]","0.01","1536732100","","","omQYXwNAT5uC15TQqMGxajJzqo4s","葡萄不长牙","1","","","","0","","","1","21","0","","","0","","0.00","0","0","0","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}");
INSERT INTO fy_order VALUES("19","1441217402201809121403594155","7","[{\"goods_name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"sku_val\":\"5000g\",\"num\":1,\"goods_id\":1,\"user_id\":21}]","0.01","1536732239","","","omQYXwNAT5uC15TQqMGxajJzqo4s","葡萄不长牙","1","","","","0","","","1","21","0","","","0","","0.00","0","0","0","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}");
INSERT INTO fy_order VALUES("20","1441217402201809121406189130","7","[{\"goods_name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"sku_val\":\"5000g\",\"num\":1,\"goods_id\":1,\"user_id\":21}]","0.01","1536732378","","","omQYXwNAT5uC15TQqMGxajJzqo4s","葡萄不长牙","1","","","","0","","","1","21","0","","","0","","0.00","0","0","0","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}");
INSERT INTO fy_order VALUES("21","1441217402201809121421157010","7","[{\"goods_name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"sku_val\":\"5000g\",\"num\":1,\"goods_id\":1,\"user_id\":21}]","0.01","1536733275","","","omQYXwNAT5uC15TQqMGxajJzqo4s","葡萄不长牙","1","","","","0","","","1","21","0","","","0","","0.00","0","0","0","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}");
INSERT INTO fy_order VALUES("22","1441217402201809121435517740","7","[{\"goods_name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"sku_val\":\"5000g\",\"num\":1,\"goods_id\":1,\"user_id\":21}]","0.01","1536734151","","","omQYXwNAT5uC15TQqMGxajJzqo4s","葡萄不长牙","1","","","","0","","","1","21","0","","","0","","0.00","0","0","0","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}");
INSERT INTO fy_order VALUES("23","1441217402201809121445528435","7","[{\"goods_name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"sku_val\":\"5000g\",\"num\":1,\"goods_id\":1,\"user_id\":21}]","0.01","1536734752","","","omQYXwNAT5uC15TQqMGxajJzqo4s","葡萄不长牙","1","","{\"appId\":\"wxd9da51e6bae6c3c0\",\"nonceStr\":\"nsi3pw2qruy691r07p14tofpy7fnat3t\",\"package\":\"prepay_id=wx12144613601568e349cabba80615073875\",\"signType\":\"HMAC-SHA256\",\"timeStamp\":\"1536734793\",\"paySign\":\"98AAA301DE54A0B8E8D7706ABDD5001B15BEECCFE597B0C548A3A438B507A7CA\"}","wx12144613601568e349cabba80615073875","0","","","1","21","0","","","0","","0.00","0","0","0","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}");
INSERT INTO fy_order VALUES("24","1441217402201809121451179058","7","[{\"goods_name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"sku_val\":\"5000g\",\"num\":1,\"goods_id\":1,\"user_id\":21}]","0.01","1536735077","","","omQYXwNAT5uC15TQqMGxajJzqo4s","葡萄不长牙","1","","","","0","","","1","21","0","","","0","","0.00","0","0","0","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}");
INSERT INTO fy_order VALUES("25","1441217402201809121451459157","7","[{\"goods_name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"sku_val\":\"5000g\",\"num\":1,\"goods_id\":1,\"user_id\":21}]","0.01","1536735105","","","omQYXwNAT5uC15TQqMGxajJzqo4s","葡萄不长牙","1","","","","0","","","1","21","0","","","0","","0.00","0","0","0","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}");
INSERT INTO fy_order VALUES("26","1441217402201809121452233411","7","[{\"goods_name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"sku_val\":\"5000g\",\"num\":1,\"goods_id\":1,\"user_id\":21}]","0.01","1536735143","","","omQYXwNAT5uC15TQqMGxajJzqo4s","葡萄不长牙","1","","","","0","","","1","21","0","","","0","","0.00","0","0","0","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}");
INSERT INTO fy_order VALUES("27","1441217402201809121453538620","7","[{\"goods_name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"sku_val\":\"5000g\",\"num\":1,\"goods_id\":1,\"user_id\":21}]","0.01","1536735233","","","omQYXwNAT5uC15TQqMGxajJzqo4s","葡萄不长牙","1","","","","0","","","1","21","0","","","0","","0.00","0","0","0","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}");
INSERT INTO fy_order VALUES("28","1441217402201809121455221163","7","[{\"goods_name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"sku_val\":\"5000g\",\"num\":1,\"goods_id\":1,\"user_id\":21}]","0.01","1536735322","","","omQYXwNAT5uC15TQqMGxajJzqo4s","葡萄不长牙","1","","","","0","","","1","21","0","","","0","","0.00","0","0","0","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}");
INSERT INTO fy_order VALUES("29","1441217402201809121455372812","7","[{\"goods_name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"sku_val\":\"5000g\",\"num\":1,\"goods_id\":1,\"user_id\":21}]","0.01","1536735337","","","omQYXwNAT5uC15TQqMGxajJzqo4s","葡萄不长牙","1","","","","0","","","1","21","0","","","0","","0.00","0","0","0","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}");
INSERT INTO fy_order VALUES("30","1441217402201809121456249000","7","[{\"goods_name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"sku_val\":\"5000g\",\"num\":1,\"goods_id\":1,\"user_id\":21}]","0.01","1536735384","","","omQYXwNAT5uC15TQqMGxajJzqo4s","葡萄不长牙","1","","{\"appId\":\"wxd9da51e6bae6c3c0\",\"nonceStr\":\"qexcqveul25xgfz42be0gwcczz3q98xq\",\"package\":\"prepay_id=wx1214563180908547e659c7d53893317007\",\"signType\":\"HMAC-SHA256\",\"timeStamp\":\"1536735411\",\"paySign\":\"1191F7769A746E1E2CD089518F8E91BCEC06D055815BA2E9B0361258EB105F7B\"}","wx1214563180908547e659c7d53893317007","0","","","1","21","0","","","0","","0.00","0","0","0","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}");
INSERT INTO fy_order VALUES("31","1441217402201809121457258503","7","[{\"goods_name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"sku_val\":\"5000g\",\"num\":1,\"goods_id\":1,\"user_id\":21}]","0.01","1536735445","","","omQYXwNAT5uC15TQqMGxajJzqo4s","葡萄不长牙","1","","{\"appId\":\"wxd9da51e6bae6c3c0\",\"nonceStr\":\"rras9iekiopck48k3lgogd80kwge6xqe\",\"package\":\"prepay_id=wx12145815947405bffb7ae6982770273606\",\"signType\":\"HMAC-SHA256\",\"timeStamp\":\"1536735515\",\"paySign\":\"401CAAF2F92B41B2717B8E5CE56555D84F78FD19848366E5E70D3AADF25CA203\"}","wx12145815947405bffb7ae6982770273606","0","","","1","21","0","","","0","","0.00","0","0","0","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}");
INSERT INTO fy_order VALUES("32","1441217402201809121459548354","7","[{\"goods_name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"sku_val\":\"5000g\",\"num\":1,\"goods_id\":1,\"user_id\":21}]","0.01","1536735594","","","omQYXwNAT5uC15TQqMGxajJzqo4s","葡萄不长牙","1","","","","0","","","1","21","0","","","0","","0.00","0","0","0","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}");
INSERT INTO fy_order VALUES("33","1441217402201809121501022548","7","[{\"goods_name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"sku_val\":\"5000g\",\"num\":1,\"goods_id\":1,\"user_id\":21}]","0.01","1536735662","","","omQYXwNAT5uC15TQqMGxajJzqo4s","葡萄不长牙","1","","{\"appId\":\"wxd9da51e6bae6c3c0\",\"nonceStr\":\"nfrhku0obzj1up8n07u6cauahte6hgon\",\"package\":\"prepay_id=wx12150112935646530639b19e2174038008\",\"signType\":\"HMAC-SHA256\",\"timeStamp\":\"1536735692\",\"paySign\":\"1CBADA9389EE0C9CE5096861C1A4D4872C669276E9A101127F9ED2568FB883B2\"}","wx12150112935646530639b19e2174038008","0","","","1","21","0","","","0","","0.00","0","0","0","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}");



DROP TABLE fy_order_all;

CREATE TABLE `fy_order_all` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) DEFAULT NULL COMMENT '总的订单id',
  `son_id` varchar(255) DEFAULT NULL COMMENT '子id',
  `status` tinyint(1) DEFAULT NULL COMMENT '1支付0，未支付',
  `total_price` decimal(10,2) DEFAULT NULL COMMENT '订单总价',
  `create_time` int(11) DEFAULT NULL,
  `is_tui` tinyint(1) DEFAULT '0' COMMENT '1已经推送0为推送',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

INSERT INTO fy_order_all VALUES("1","144121740220180831165647","8916","","0.01","1535705807","0");
INSERT INTO fy_order_all VALUES("2","144121740220180831165759","7087","","0.01","1535705879","0");
INSERT INTO fy_order_all VALUES("3","144121740220180831165804","8857","","0.01","1535705884","0");
INSERT INTO fy_order_all VALUES("4","144121740220180901093108","6075","1","0.01","1535765468","1");
INSERT INTO fy_order_all VALUES("5","144121740220180901093329","2534","","0.01","1535765609","0");
INSERT INTO fy_order_all VALUES("6","144121740220180901094221","3958","","0.01","1535766141","0");
INSERT INTO fy_order_all VALUES("7","144121740220180901094531","4726","1","0.01","1535766331","1");
INSERT INTO fy_order_all VALUES("8","144121740220180907133822","3551","1","0.01","1536298702","1");
INSERT INTO fy_order_all VALUES("9","144121740220180912133138","4641","","0.01","1536730298","0");
INSERT INTO fy_order_all VALUES("10","144121740220180912133218","1627","","0.01","1536730338","0");
INSERT INTO fy_order_all VALUES("11","144121740220180912133726","5333","","0.01","1536730646","0");
INSERT INTO fy_order_all VALUES("12","144121740220180912133819","6029","","0.01","1536730699","0");
INSERT INTO fy_order_all VALUES("13","144121740220180912133954","9195","","0.01","1536730794","0");
INSERT INTO fy_order_all VALUES("14","144121740220180912134116","5751","","0.01","1536730876","0");
INSERT INTO fy_order_all VALUES("15","144121740220180912134203","1459","","0.01","1536730923","0");
INSERT INTO fy_order_all VALUES("16","144121740220180912134319","2015","","0.01","1536730999","0");
INSERT INTO fy_order_all VALUES("17","144121740220180912135341","4105","","0.01","1536731621","0");
INSERT INTO fy_order_all VALUES("18","144121740220180912140140","5669","","0.01","1536732100","0");
INSERT INTO fy_order_all VALUES("19","144121740220180912140359","4155","","0.01","1536732239","0");
INSERT INTO fy_order_all VALUES("20","144121740220180912140618","9130","","0.01","1536732378","0");
INSERT INTO fy_order_all VALUES("21","144121740220180912142115","7010","","0.01","1536733275","0");
INSERT INTO fy_order_all VALUES("22","144121740220180912143551","7740","","0.01","1536734151","0");
INSERT INTO fy_order_all VALUES("23","144121740220180912144552","8435","","0.01","1536734752","0");
INSERT INTO fy_order_all VALUES("24","144121740220180912145117","9058","","0.01","1536735077","0");
INSERT INTO fy_order_all VALUES("25","144121740220180912145145","9157","","0.01","1536735105","0");
INSERT INTO fy_order_all VALUES("26","144121740220180912145223","3411","","0.01","1536735143","0");
INSERT INTO fy_order_all VALUES("27","144121740220180912145353","8620","","0.01","1536735233","0");
INSERT INTO fy_order_all VALUES("28","144121740220180912145522","1163","","0.01","1536735322","0");
INSERT INTO fy_order_all VALUES("29","144121740220180912145537","2812","","0.01","1536735337","0");
INSERT INTO fy_order_all VALUES("30","144121740220180912145624","9000","","0.01","1536735384","0");
INSERT INTO fy_order_all VALUES("31","144121740220180912145725","8503","","0.01","1536735445","0");
INSERT INTO fy_order_all VALUES("32","144121740220180912145954","8354","","0.01","1536735594","0");
INSERT INTO fy_order_all VALUES("33","144121740220180912150102","2548","","0.01","1536735662","0");



DROP TABLE fy_order_goods;

CREATE TABLE `fy_order_goods` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单商品表',
  `goods_id` int(11) NOT NULL,
  `sku_id` int(11) DEFAULT NULL COMMENT 'skuid',
  `order_id` varchar(255) NOT NULL COMMENT '父id 订单id',
  `user_id` int(11) DEFAULT NULL COMMENT '所属商户',
  `goods_detail` text COMMENT '商品详情json存储',
  `is_free` tinyint(1) DEFAULT '0' COMMENT '1包邮0不包邮，3上门自取',
  `shipping_fee` decimal(10,2) DEFAULT NULL COMMENT '配送费用',
  `logistics_name` varchar(255) DEFAULT NULL COMMENT '物流名称',
  `logistics_number` varchar(255) DEFAULT NULL COMMENT '物流单号',
  `send_time` int(11) DEFAULT NULL COMMENT '发货时间',
  `refuse_reson` varchar(255) DEFAULT NULL COMMENT '退款理由',
  `is_send` tinyint(1) DEFAULT '0' COMMENT '0未发货1已发货，2待评价。3退款中，4退款完成,,5待回复，6完成,7退货退款',
  `remind_get` tinyint(1) DEFAULT '0' COMMENT '0否1是 提醒过用户收货',
  `words` varchar(255) DEFAULT NULL COMMENT '订单备注',
  `goods_num` int(10) NOT NULL DEFAULT '1' COMMENT '购买商品数量',
  `sku_val` varchar(255) NOT NULL COMMENT 'sku值',
  `address_id` int(11) NOT NULL COMMENT '地址id',
  `openid` varchar(255) NOT NULL,
  `is_return` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0否1待退款2已退款3退款失败',
  `return_price` decimal(10,2) DEFAULT NULL COMMENT '退款',
  `get_goods_time` int(11) DEFAULT NULL COMMENT '确认收货时间',
  `address_detail` text COMMENT '收货地址',
  `after_sale_is` tinyint(1) DEFAULT '0' COMMENT '0未提交1提交2售后完成',
  `after_handle_is` tinyint(1) DEFAULT '0' COMMENT '0未处理，1已经处理',
  `is_lottery` tinyint(1) DEFAULT '0' COMMENT '0fou 1是',
  `lottery_id` int(10) DEFAULT NULL COMMENT '奖券id',
  `lottery_log_id` int(10) DEFAULT NULL COMMENT '奖券领取id',
  `lottery_detail` text COMMENT '奖券详情',
  `real_pay_price` decimal(10,2) DEFAULT NULL COMMENT '实际支付价格',
  `is_settlement` tinyint(1) DEFAULT '0',
  `real_pay_score` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

INSERT INTO fy_order_goods VALUES("1","1","3","1441217402201808311656478916","21","{\"id\":1,\"user_id\":21,\"name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"pic\":\"[\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/5fc1332916aee8884f8095dcb76365ba.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/db0bcda4a25dc457e29484b6b142504e.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/f20a29f350023a47de051e85f22a019c.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/1bde95e73b98544bc2de8d64ba1af22a.png\\\"]\",\"original_price\":\"30.00\",\"settlement_type\":1,\"goods_class_id\":1,\"goods_brand_id\":20,\"show_area\":4,\"detail\":\"&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269999019.jpg&quot; title=&quot;1535419269999019.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269956748.jpg&quot; title=&quot;1535419269956748.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269839241.jpg&quot; title=&quot;1535419269839241.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269460704.jpg&quot; title=&quot;1535419269460704.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269835149.jpg&quot; title=&quot;1535419269835149.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269314509.jpg&quot; title=&quot;1535419269314509.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269170969.jpg&quot; title=&quot;1535419269170969.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270321688.jpg&quot; title=&quot;1535419270321688.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270582547.jpg&quot; title=&quot;1535419270582547.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270622995.jpg&quot; title=&quot;1535419270622995.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;br\\/&gt;&lt;\\/p&gt;\",\"status\":1,\"main_image\":\"\\/pic\\/uploads\\/20180828\\/a11731d4b01a6dd41cdc21d3fdabf0cf.png\",\"subtitle\":\"\",\"create_time\":1535703801,\"update_time\":1535703801,\"orderby\":10,\"click_count\":null,\"goods_weight\":\"5000.000\",\"start_date\":null,\"end_date\":null,\"is_real\":1,\"return_score\":10,\"score_price\":null,\"price_real\":\"0.00\",\"score\":0,\"basic_price\":\"0.01\",\"isdelete\":0,\"store_type\":1,\"free_type\":1,\"postage\":\"0.00\",\"after_sale\":\"&lt;p&gt;\\u574f\\u5355\\u5305\\u9000\\uff1a\\u7b7e\\u6536\\u540e24\\u5c0f\\u65f6\\u5185\\uff0c\\u98df\\u54c1\\u51fa\\u73b0\\u8150\\u8d25\\u53d8\\u8d28\\uff0c\\u5546\\u5bb6\\u627f\\u8bfa24\\u5c0f\\u65f6\\u4e4b\\u5185\\u5904\\u7406\\u3002&lt;\\/p&gt;\",\"routine\":\"{\\\"\\\\u54c1\\\\u724c\\\":\\\"\\\\u751c\\\\u53ef\\\\u679c\\\\u56ed\\\",\\\"\\\\u4fdd\\\\u8d28\\\\u671f\\\":\\\"7\\\\u5929\\\",\\\"\\\\u51c0\\\\u542b\\\\u91cf\\\":\\\"5000g\\\",\\\"\\\\u5305\\\\u88c5\\\\u65b9\\\\u5f0f\\\":\\\"\\\\u5305\\\\u88c5\\\",\\\"\\\\u662f\\\\u5426\\\\u4e3a\\\\u6709\\\\u673a\\\\u98df\\\\u54c1\\\":\\\"\\\\u5426\\\",\\\"\\\\u4ea7\\\\u5730\\\":\\\"\\\\u4e2d\\\\u56fd\\\\u5927\\\\u9646\\\",\\\"\\\\u7701\\\\u4efd\\\":\\\"\\\\u9655\\\\u897f\\\\u7701\\\",\\\"\\\\u5957\\\\u9910\\\\u4efd\\\\u91cf\\\":\\\"3\\\\u4eba\\\\u4efd\\\",\\\"\\\\u914d\\\\u9001\\\\u9891\\\\u6b21\\\":\\\"1\\\\u54682\\\\u6b21\\\"}\",\"shop_code\":\"\",\"buy_num\":18454,\"bar_code\":\"\",\"is_return_goods\":1,\"yieldly\":\"\",\"is_comment\":1,\"up_tip\":0,\"up_error_reason\":\"\",\"service\":\"[\\\"\\\\u574f\\\\u5355\\\\u5305\\\\u9000\\\"]\",\"service_mobile\":\"86701701\"}","0","","顺丰快递","123","1535706100","","4","0","","1","5000g","2","omQYXwM8TEkiBZR7Ldm891OOWbNQ","2","0.01","1535706110","{\"id\":2,\"uid\":2,\"name\":\"\\u6bb5\\u6b22\",\"mobile\":\"13765805489\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"\\u4e5f\\u662f\",\"status\":1,\"addtime\":1535705798,\"updatetime\":1535705798}","1","0","0","0","0","","0.01","1","1.00");
INSERT INTO fy_order_goods VALUES("2","1","3","1441217402201808311657597087","21","{\"id\":1,\"user_id\":21,\"name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"pic\":\"[\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/5fc1332916aee8884f8095dcb76365ba.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/db0bcda4a25dc457e29484b6b142504e.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/f20a29f350023a47de051e85f22a019c.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/1bde95e73b98544bc2de8d64ba1af22a.png\\\"]\",\"original_price\":\"30.00\",\"settlement_type\":1,\"goods_class_id\":1,\"goods_brand_id\":20,\"show_area\":4,\"detail\":\"&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269999019.jpg&quot; title=&quot;1535419269999019.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269956748.jpg&quot; title=&quot;1535419269956748.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269839241.jpg&quot; title=&quot;1535419269839241.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269460704.jpg&quot; title=&quot;1535419269460704.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269835149.jpg&quot; title=&quot;1535419269835149.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269314509.jpg&quot; title=&quot;1535419269314509.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269170969.jpg&quot; title=&quot;1535419269170969.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270321688.jpg&quot; title=&quot;1535419270321688.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270582547.jpg&quot; title=&quot;1535419270582547.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270622995.jpg&quot; title=&quot;1535419270622995.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;br\\/&gt;&lt;\\/p&gt;\",\"status\":1,\"main_image\":\"\\/pic\\/uploads\\/20180828\\/a11731d4b01a6dd41cdc21d3fdabf0cf.png\",\"subtitle\":\"\",\"create_time\":1535703801,\"update_time\":1535703801,\"orderby\":10,\"click_count\":null,\"goods_weight\":\"5000.000\",\"start_date\":null,\"end_date\":null,\"is_real\":1,\"return_score\":10,\"score_price\":null,\"price_real\":\"0.00\",\"score\":0,\"basic_price\":\"0.01\",\"isdelete\":0,\"store_type\":1,\"free_type\":1,\"postage\":\"0.00\",\"after_sale\":\"&lt;p&gt;\\u574f\\u5355\\u5305\\u9000\\uff1a\\u7b7e\\u6536\\u540e24\\u5c0f\\u65f6\\u5185\\uff0c\\u98df\\u54c1\\u51fa\\u73b0\\u8150\\u8d25\\u53d8\\u8d28\\uff0c\\u5546\\u5bb6\\u627f\\u8bfa24\\u5c0f\\u65f6\\u4e4b\\u5185\\u5904\\u7406\\u3002&lt;\\/p&gt;\",\"routine\":\"{\\\"\\\\u54c1\\\\u724c\\\":\\\"\\\\u751c\\\\u53ef\\\\u679c\\\\u56ed\\\",\\\"\\\\u4fdd\\\\u8d28\\\\u671f\\\":\\\"7\\\\u5929\\\",\\\"\\\\u51c0\\\\u542b\\\\u91cf\\\":\\\"5000g\\\",\\\"\\\\u5305\\\\u88c5\\\\u65b9\\\\u5f0f\\\":\\\"\\\\u5305\\\\u88c5\\\",\\\"\\\\u662f\\\\u5426\\\\u4e3a\\\\u6709\\\\u673a\\\\u98df\\\\u54c1\\\":\\\"\\\\u5426\\\",\\\"\\\\u4ea7\\\\u5730\\\":\\\"\\\\u4e2d\\\\u56fd\\\\u5927\\\\u9646\\\",\\\"\\\\u7701\\\\u4efd\\\":\\\"\\\\u9655\\\\u897f\\\\u7701\\\",\\\"\\\\u5957\\\\u9910\\\\u4efd\\\\u91cf\\\":\\\"3\\\\u4eba\\\\u4efd\\\",\\\"\\\\u914d\\\\u9001\\\\u9891\\\\u6b21\\\":\\\"1\\\\u54682\\\\u6b21\\\"}\",\"shop_code\":\"\",\"buy_num\":18454,\"bar_code\":\"\",\"is_return_goods\":1,\"yieldly\":\"\",\"is_comment\":1,\"up_tip\":0,\"up_error_reason\":\"\",\"service\":\"[\\\"\\\\u574f\\\\u5355\\\\u5305\\\\u9000\\\"]\",\"service_mobile\":\"86701701\"}","0","","","","","","0","0","","1","5000g","1","omQYXwNAT5uC15TQqMGxajJzqo4s","0","","","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}","0","0","0","0","0","","0.01","0","1.00");
INSERT INTO fy_order_goods VALUES("3","1","3","1441217402201808311658048857","21","{\"id\":1,\"user_id\":21,\"name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"pic\":\"[\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/5fc1332916aee8884f8095dcb76365ba.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/db0bcda4a25dc457e29484b6b142504e.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/f20a29f350023a47de051e85f22a019c.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/1bde95e73b98544bc2de8d64ba1af22a.png\\\"]\",\"original_price\":\"30.00\",\"settlement_type\":1,\"goods_class_id\":1,\"goods_brand_id\":20,\"show_area\":4,\"detail\":\"&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269999019.jpg&quot; title=&quot;1535419269999019.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269956748.jpg&quot; title=&quot;1535419269956748.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269839241.jpg&quot; title=&quot;1535419269839241.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269460704.jpg&quot; title=&quot;1535419269460704.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269835149.jpg&quot; title=&quot;1535419269835149.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269314509.jpg&quot; title=&quot;1535419269314509.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269170969.jpg&quot; title=&quot;1535419269170969.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270321688.jpg&quot; title=&quot;1535419270321688.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270582547.jpg&quot; title=&quot;1535419270582547.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270622995.jpg&quot; title=&quot;1535419270622995.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;br\\/&gt;&lt;\\/p&gt;\",\"status\":1,\"main_image\":\"\\/pic\\/uploads\\/20180828\\/a11731d4b01a6dd41cdc21d3fdabf0cf.png\",\"subtitle\":\"\",\"create_time\":1535703801,\"update_time\":1535703801,\"orderby\":10,\"click_count\":null,\"goods_weight\":\"5000.000\",\"start_date\":null,\"end_date\":null,\"is_real\":1,\"return_score\":10,\"score_price\":null,\"price_real\":\"0.00\",\"score\":0,\"basic_price\":\"0.01\",\"isdelete\":0,\"store_type\":1,\"free_type\":1,\"postage\":\"0.00\",\"after_sale\":\"&lt;p&gt;\\u574f\\u5355\\u5305\\u9000\\uff1a\\u7b7e\\u6536\\u540e24\\u5c0f\\u65f6\\u5185\\uff0c\\u98df\\u54c1\\u51fa\\u73b0\\u8150\\u8d25\\u53d8\\u8d28\\uff0c\\u5546\\u5bb6\\u627f\\u8bfa24\\u5c0f\\u65f6\\u4e4b\\u5185\\u5904\\u7406\\u3002&lt;\\/p&gt;\",\"routine\":\"{\\\"\\\\u54c1\\\\u724c\\\":\\\"\\\\u751c\\\\u53ef\\\\u679c\\\\u56ed\\\",\\\"\\\\u4fdd\\\\u8d28\\\\u671f\\\":\\\"7\\\\u5929\\\",\\\"\\\\u51c0\\\\u542b\\\\u91cf\\\":\\\"5000g\\\",\\\"\\\\u5305\\\\u88c5\\\\u65b9\\\\u5f0f\\\":\\\"\\\\u5305\\\\u88c5\\\",\\\"\\\\u662f\\\\u5426\\\\u4e3a\\\\u6709\\\\u673a\\\\u98df\\\\u54c1\\\":\\\"\\\\u5426\\\",\\\"\\\\u4ea7\\\\u5730\\\":\\\"\\\\u4e2d\\\\u56fd\\\\u5927\\\\u9646\\\",\\\"\\\\u7701\\\\u4efd\\\":\\\"\\\\u9655\\\\u897f\\\\u7701\\\",\\\"\\\\u5957\\\\u9910\\\\u4efd\\\\u91cf\\\":\\\"3\\\\u4eba\\\\u4efd\\\",\\\"\\\\u914d\\\\u9001\\\\u9891\\\\u6b21\\\":\\\"1\\\\u54682\\\\u6b21\\\"}\",\"shop_code\":\"\",\"buy_num\":18454,\"bar_code\":\"\",\"is_return_goods\":1,\"yieldly\":\"\",\"is_comment\":1,\"up_tip\":0,\"up_error_reason\":\"\",\"service\":\"[\\\"\\\\u574f\\\\u5355\\\\u5305\\\\u9000\\\"]\",\"service_mobile\":\"86701701\"}","0","","","","","","0","0","","1","5000g","1","omQYXwNAT5uC15TQqMGxajJzqo4s","0","","","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}","0","0","0","0","0","","0.01","0","1.00");
INSERT INTO fy_order_goods VALUES("4","1","3","1441217402201809010931086075","21","{\"id\":1,\"user_id\":21,\"name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"pic\":\"[\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/5fc1332916aee8884f8095dcb76365ba.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/db0bcda4a25dc457e29484b6b142504e.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/f20a29f350023a47de051e85f22a019c.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/1bde95e73b98544bc2de8d64ba1af22a.png\\\"]\",\"original_price\":\"30.00\",\"settlement_type\":1,\"goods_class_id\":1,\"goods_brand_id\":20,\"show_area\":4,\"detail\":\"&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269999019.jpg&quot; title=&quot;1535419269999019.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269956748.jpg&quot; title=&quot;1535419269956748.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269839241.jpg&quot; title=&quot;1535419269839241.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269460704.jpg&quot; title=&quot;1535419269460704.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269835149.jpg&quot; title=&quot;1535419269835149.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269314509.jpg&quot; title=&quot;1535419269314509.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269170969.jpg&quot; title=&quot;1535419269170969.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270321688.jpg&quot; title=&quot;1535419270321688.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270582547.jpg&quot; title=&quot;1535419270582547.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270622995.jpg&quot; title=&quot;1535419270622995.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;br\\/&gt;&lt;\\/p&gt;\",\"status\":1,\"main_image\":\"\\/pic\\/uploads\\/20180828\\/a11731d4b01a6dd41cdc21d3fdabf0cf.png\",\"subtitle\":\"\",\"create_time\":1535703801,\"update_time\":1535703801,\"orderby\":10,\"click_count\":null,\"goods_weight\":\"5000.000\",\"start_date\":null,\"end_date\":null,\"is_real\":1,\"return_score\":10,\"score_price\":null,\"price_real\":\"0.00\",\"score\":0,\"basic_price\":\"0.01\",\"isdelete\":0,\"store_type\":1,\"free_type\":1,\"postage\":\"0.00\",\"after_sale\":\"&lt;p&gt;\\u574f\\u5355\\u5305\\u9000\\uff1a\\u7b7e\\u6536\\u540e24\\u5c0f\\u65f6\\u5185\\uff0c\\u98df\\u54c1\\u51fa\\u73b0\\u8150\\u8d25\\u53d8\\u8d28\\uff0c\\u5546\\u5bb6\\u627f\\u8bfa24\\u5c0f\\u65f6\\u4e4b\\u5185\\u5904\\u7406\\u3002&lt;\\/p&gt;\",\"routine\":\"{\\\"\\\\u54c1\\\\u724c\\\":\\\"\\\\u751c\\\\u53ef\\\\u679c\\\\u56ed\\\",\\\"\\\\u4fdd\\\\u8d28\\\\u671f\\\":\\\"7\\\\u5929\\\",\\\"\\\\u51c0\\\\u542b\\\\u91cf\\\":\\\"5000g\\\",\\\"\\\\u5305\\\\u88c5\\\\u65b9\\\\u5f0f\\\":\\\"\\\\u5305\\\\u88c5\\\",\\\"\\\\u662f\\\\u5426\\\\u4e3a\\\\u6709\\\\u673a\\\\u98df\\\\u54c1\\\":\\\"\\\\u5426\\\",\\\"\\\\u4ea7\\\\u5730\\\":\\\"\\\\u4e2d\\\\u56fd\\\\u5927\\\\u9646\\\",\\\"\\\\u7701\\\\u4efd\\\":\\\"\\\\u9655\\\\u897f\\\\u7701\\\",\\\"\\\\u5957\\\\u9910\\\\u4efd\\\\u91cf\\\":\\\"3\\\\u4eba\\\\u4efd\\\",\\\"\\\\u914d\\\\u9001\\\\u9891\\\\u6b21\\\":\\\"1\\\\u54682\\\\u6b21\\\"}\",\"shop_code\":\"\",\"buy_num\":18511,\"bar_code\":\"\",\"is_return_goods\":1,\"yieldly\":\"\",\"is_comment\":1,\"up_tip\":0,\"up_error_reason\":\"\",\"service\":\"[\\\"\\\\u574f\\\\u5355\\\\u5305\\\\u9000\\\"]\",\"service_mobile\":\"86701701\"}","0","","","","","","0","0","","1","5000g","3","omQYXwAasNeXdGSMymd91487Ds1g","0","","","{\"id\":3,\"uid\":3,\"name\":\"\\u6d4b\\u8bd5\\u4eba\",\"mobile\":\"18988756181\",\"address\":\"\\u5929\\u6d25\\u5e02\\u6cb3\\u5317\\u533a\\u65b0\\u5f00\\u6cb3\\u8857\\u9053\",\"street\":\"\\u6d4b\\u8bd5\",\"status\":1,\"addtime\":1535765409,\"updatetime\":1535765409}","0","0","0","0","0","","0.01","0","1.00");
INSERT INTO fy_order_goods VALUES("5","5","16","1441217402201809010933292534","21","{\"id\":5,\"user_id\":21,\"name\":\"\\u82f9\\u679c\\u624b\\u673a\",\"pic\":\"[\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180831\\\\\\/b7e860b80b4714b627f9d72e6f71d72b.jpg\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180831\\\\\\/f6f882914e96e541e77f0d3af9e7eb8b.jpg\\\"]\",\"original_price\":\"5200.00\",\"settlement_type\":1,\"goods_class_id\":6,\"goods_brand_id\":20,\"show_area\":1,\"detail\":\"&lt;p&gt;\\u6492\\u65e6&lt;\\/p&gt;\",\"status\":1,\"main_image\":\"\\/pic\\/uploads\\/20180831\\/35cb42fbfe509141499aab67a3a0a680.jpg\",\"subtitle\":\"\",\"create_time\":1535686042,\"update_time\":1535686042,\"orderby\":10,\"click_count\":null,\"goods_weight\":\"300.000\",\"start_date\":1535685661,\"end_date\":1536031265,\"is_real\":1,\"return_score\":10,\"score_price\":null,\"price_real\":\"0.00\",\"score\":null,\"basic_price\":\"0.01\",\"isdelete\":0,\"store_type\":1,\"free_type\":1,\"postage\":null,\"after_sale\":\"&lt;p&gt;ok&lt;\\/p&gt;\",\"routine\":null,\"shop_code\":\"\",\"buy_num\":500,\"bar_code\":\"\",\"is_return_goods\":1,\"yieldly\":\"\",\"is_comment\":1,\"up_tip\":0,\"up_error_reason\":\"\",\"service\":\"[\\\"\\\\u6ca1\\\\u6709\\\\u670d\\\\u52a1\\\"]\",\"service_mobile\":\"\"}","0","","","","","","0","0","","1","通用","3","omQYXwAasNeXdGSMymd91487Ds1g","0","","","{\"id\":3,\"uid\":3,\"name\":\"\\u6d4b\\u8bd5\\u4eba\",\"mobile\":\"18988756181\",\"address\":\"\\u5929\\u6d25\\u5e02\\u6cb3\\u5317\\u533a\\u65b0\\u5f00\\u6cb3\\u8857\\u9053\",\"street\":\"\\u6d4b\\u8bd5\",\"status\":1,\"addtime\":1535765409,\"updatetime\":1535765409}","0","0","0","0","0","","0.01","0","10.00");
INSERT INTO fy_order_goods VALUES("6","6","17","1441217402201809010942213958","21","{\"id\":6,\"user_id\":21,\"name\":\"\\u79ef\\u5206\\u5546\\u57ce\\u82f9\\u679c\\u624b\\u673a\",\"pic\":\"[\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180831\\\\\\/1d24ff63ce97e98b5bfb4ff2fab9feb9.jpg\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180831\\\\\\/443091067af6b9ff229b087de97c04ec.jpg\\\"]\",\"original_price\":\"10.00\",\"settlement_type\":2,\"goods_class_id\":6,\"goods_brand_id\":20,\"show_area\":2,\"detail\":\"&lt;p&gt;0000&lt;\\/p&gt;\",\"status\":1,\"main_image\":\"\\/pic\\/uploads\\/20180831\\/c9eeb4703eccfd5b46d57249451c0db7.jpg\",\"subtitle\":\"\",\"create_time\":1535696647,\"update_time\":1535696647,\"orderby\":10,\"click_count\":null,\"goods_weight\":\"300.000\",\"start_date\":null,\"end_date\":null,\"is_real\":1,\"return_score\":10,\"score_price\":null,\"price_real\":\"0.00\",\"score\":10,\"basic_price\":\"\",\"isdelete\":0,\"store_type\":1,\"free_type\":1,\"postage\":null,\"after_sale\":\"&lt;p&gt;\\u6b63\\u54c1&lt;\\/p&gt;\",\"routine\":null,\"shop_code\":\"\",\"buy_num\":10,\"bar_code\":\"\",\"is_return_goods\":1,\"yieldly\":\"\",\"is_comment\":1,\"up_tip\":0,\"up_error_reason\":\"\",\"service\":\"[\\\"\\\\u6b63\\\\u54c1\\\\u4fdd\\\\u969c\\\"]\",\"service_mobile\":\"\"}","0","","","","","","0","0","","1","通用","3","omQYXwAasNeXdGSMymd91487Ds1g","0","","","{\"id\":3,\"uid\":3,\"name\":\"\\u6d4b\\u8bd5\\u4eba\",\"mobile\":\"18988756181\",\"address\":\"\\u5929\\u6d25\\u5e02\\u6cb3\\u5317\\u533a\\u65b0\\u5f00\\u6cb3\\u8857\\u9053\",\"street\":\"\\u6d4b\\u8bd5\",\"status\":1,\"addtime\":1535765409,\"updatetime\":1535765409}","0","0","0","0","0","","0.01","0","10.00");
INSERT INTO fy_order_goods VALUES("7","4","9","1441217402201809010945314726","21","{\"id\":4,\"user_id\":21,\"name\":\"\\u65b0\\u7586\\u5580\\u4ec0\\u897f\\u68854\\u65a4\\u5927\\u679c\\u987a\\u4e30\\u5305\\u90ae\\u5f53\\u5b63\\u6c34\\u679c \\u65b0\\u9c9c\\u897f\\u6885\",\"pic\":\"[\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180830\\\\\\/ea45e2935e48ced0a4d5d41e0747b67f.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180830\\\\\\/4391e2482ec76691700cd515c9345bdb.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180830\\\\\\/c6aeb8f410cffb7177176664f22faeca.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180830\\\\\\/e36a0b9370ce4cc1f5253ecbe60965d3.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180830\\\\\\/2acd8620b35b3002254d1efe262bd616.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180830\\\\\\/e1cb7a1a90efbff95611e80dd15bb476.png\\\"]\",\"original_price\":\"50.00\",\"settlement_type\":3,\"goods_class_id\":5,\"goods_brand_id\":20,\"show_area\":4,\"detail\":\"&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180830\\/1535592715470866.jpg&quot; title=&quot;1535592715470866.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180830\\/1535592715223950.jpg&quot; title=&quot;1535592715223950.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180830\\/1535592715131169.jpg&quot; title=&quot;1535592715131169.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180830\\/1535592715428269.jpg&quot; title=&quot;1535592715428269.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180830\\/1535592715454974.jpg&quot; title=&quot;1535592715454974.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180830\\/1535592715724215.jpg&quot; title=&quot;1535592715724215.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180830\\/1535592715908613.jpg&quot; title=&quot;1535592715908613.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180830\\/1535592715538300.jpg&quot; title=&quot;1535592715538300.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180830\\/1535592715682912.jpg&quot; title=&quot;1535592715682912.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;br\\/&gt;&lt;\\/p&gt;\",\"status\":1,\"main_image\":\"\\/pic\\/uploads\\/20180830\\/ea1de0a49c95ce254cd599ec2fdae29e.png\",\"subtitle\":\"\",\"create_time\":1535593177,\"update_time\":1535593177,\"orderby\":10,\"click_count\":null,\"goods_weight\":\"1000.000\",\"start_date\":null,\"end_date\":null,\"is_real\":1,\"return_score\":10,\"score_price\":null,\"price_real\":\"0.00\",\"score\":1,\"basic_price\":\"0.01\",\"isdelete\":0,\"store_type\":1,\"free_type\":1,\"postage\":\"0.00\",\"after_sale\":\"&lt;p&gt;\\u574f\\u5355\\u5305\\u9000\\uff1a\\u786e\\u8ba4\\u6536\\u8d2724\\u5c0f\\u65f6\\u5185\\u98df\\u7269\\u51fa\\u73b0\\u8150\\u8d25\\u53d8\\u8d28\\uff0c\\u5546\\u5bb6\\u627f\\u8bfa24\\u5c0f\\u65f6\\u5185\\u5904\\u7406\\u3002&lt;\\/p&gt;\",\"routine\":\"{\\\"\\\\u54c1\\\\u724c\\\":\\\"\\\\u751c\\\\u53ef\\\\u679c\\\\u56ed\\\",\\\"\\\\u4fdd\\\\u8d28\\\\u671f\\\":\\\"5\\\\u5929\\\",\\\"\\\\u51c0\\\\u542b\\\\u91cf\\\":\\\"1kg\\\\uff08\\\\u542b\\\\uff09-2.5kg\\\\uff08\\\\u542b\\\\uff09\\\",\\\"\\\\u5305\\\\u88c5\\\\u65b9\\\\u5f0f\\\":\\\"\\\\u5305\\\\u88c5\\\",\\\"\\\\u552e\\\\u5356\\\\u65b9\\\\u5f0f\\\":\\\"\\\\u5355\\\\u54c1\\\",\\\"\\\\u662f\\\\u5426\\\\u4e3a\\\\u6709\\\\u673a\\\\u98df\\\\u54c1\\\":\\\"\\\\u5426\\\",\\\"\\\\u751f\\\\u9c9c\\\\u50a8\\\\u5b58\\\\u6e29\\\\u5ea6\\\":\\\"0-8\\\\u2103\\\",\\\"\\\\u4ea7\\\\u5730\\\":\\\"\\\\u4e2d\\\\u56fd\\\\u5927\\\\u9646\\\",\\\"\\\\u7701\\\\u4efd\\\":\\\"\\\\u65b0\\\\u7586\\\\u7ef4\\\\u543e\\\\u5c14\\\\u65cf\\\\u81ea\\\\u6cbb\\\\u533a\\\",\\\"\\\\u57ce\\\\u5e02\\\":\\\"\\\\u5580\\\\u4ec0\\\\u5730\\\\u533a\\\",\\\"\\\\u5957\\\\u9910\\\\u4efd\\\\u91cf\\\":\\\"5\\\\u4eba\\\\u4efd\\\",\\\"\\\\u5957\\\\u9910\\\\u5468\\\\u671f\\\":\\\"1\\\\u5468\\\",\\\"\\\\u914d\\\\u9001\\\\u9891\\\\u6b21\\\":\\\"1\\\\u54682\\\\u6b21\\\"}\",\"shop_code\":\"\",\"buy_num\":0,\"bar_code\":\"\",\"is_return_goods\":1,\"yieldly\":\"\",\"is_comment\":1,\"up_tip\":0,\"up_error_reason\":\"\",\"service\":\"[\\\"\\\\u574f\\\\u5355\\\\u5305\\\\u9000\\\"]\",\"service_mobile\":\"86701701\"}","0","","","","","","0","0","","1","1kg","3","omQYXwAasNeXdGSMymd91487Ds1g","0","","","{\"id\":3,\"uid\":3,\"name\":\"\\u6d4b\\u8bd5\\u4eba\",\"mobile\":\"18988756181\",\"address\":\"\\u5929\\u6d25\\u5e02\\u6cb3\\u5317\\u533a\\u65b0\\u5f00\\u6cb3\\u8857\\u9053\",\"street\":\"\\u6d4b\\u8bd5\",\"status\":1,\"addtime\":1535765409,\"updatetime\":1535765409}","0","0","0","0","0","","0.01","0","1.00");
INSERT INTO fy_order_goods VALUES("8","1","3","1441217402201809071338223551","21","{\"id\":1,\"user_id\":21,\"name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"pic\":\"[\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/5fc1332916aee8884f8095dcb76365ba.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/db0bcda4a25dc457e29484b6b142504e.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/f20a29f350023a47de051e85f22a019c.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/1bde95e73b98544bc2de8d64ba1af22a.png\\\"]\",\"original_price\":\"30.00\",\"settlement_type\":1,\"goods_class_id\":1,\"goods_brand_id\":20,\"show_area\":4,\"detail\":\"&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269999019.jpg&quot; title=&quot;1535419269999019.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269956748.jpg&quot; title=&quot;1535419269956748.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269839241.jpg&quot; title=&quot;1535419269839241.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269460704.jpg&quot; title=&quot;1535419269460704.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269835149.jpg&quot; title=&quot;1535419269835149.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269314509.jpg&quot; title=&quot;1535419269314509.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269170969.jpg&quot; title=&quot;1535419269170969.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270321688.jpg&quot; title=&quot;1535419270321688.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270582547.jpg&quot; title=&quot;1535419270582547.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270622995.jpg&quot; title=&quot;1535419270622995.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;br\\/&gt;&lt;\\/p&gt;\",\"status\":1,\"main_image\":\"\\/pic\\/uploads\\/20180828\\/a11731d4b01a6dd41cdc21d3fdabf0cf.png\",\"subtitle\":\"\",\"create_time\":1535703801,\"update_time\":1535703801,\"orderby\":10,\"click_count\":null,\"goods_weight\":\"5000.000\",\"start_date\":null,\"end_date\":null,\"is_real\":1,\"return_score\":10,\"score_price\":null,\"price_real\":\"0.00\",\"score\":0,\"basic_price\":\"0.01\",\"isdelete\":0,\"store_type\":1,\"free_type\":1,\"postage\":\"0.00\",\"after_sale\":\"&lt;p&gt;\\u574f\\u5355\\u5305\\u9000\\uff1a\\u7b7e\\u6536\\u540e24\\u5c0f\\u65f6\\u5185\\uff0c\\u98df\\u54c1\\u51fa\\u73b0\\u8150\\u8d25\\u53d8\\u8d28\\uff0c\\u5546\\u5bb6\\u627f\\u8bfa24\\u5c0f\\u65f6\\u4e4b\\u5185\\u5904\\u7406\\u3002&lt;\\/p&gt;\",\"routine\":\"{\\\"\\\\u54c1\\\\u724c\\\":\\\"\\\\u751c\\\\u53ef\\\\u679c\\\\u56ed\\\",\\\"\\\\u4fdd\\\\u8d28\\\\u671f\\\":\\\"7\\\\u5929\\\",\\\"\\\\u51c0\\\\u542b\\\\u91cf\\\":\\\"5000g\\\",\\\"\\\\u5305\\\\u88c5\\\\u65b9\\\\u5f0f\\\":\\\"\\\\u5305\\\\u88c5\\\",\\\"\\\\u662f\\\\u5426\\\\u4e3a\\\\u6709\\\\u673a\\\\u98df\\\\u54c1\\\":\\\"\\\\u5426\\\",\\\"\\\\u4ea7\\\\u5730\\\":\\\"\\\\u4e2d\\\\u56fd\\\\u5927\\\\u9646\\\",\\\"\\\\u7701\\\\u4efd\\\":\\\"\\\\u9655\\\\u897f\\\\u7701\\\",\\\"\\\\u5957\\\\u9910\\\\u4efd\\\\u91cf\\\":\\\"3\\\\u4eba\\\\u4efd\\\",\\\"\\\\u914d\\\\u9001\\\\u9891\\\\u6b21\\\":\\\"1\\\\u54682\\\\u6b21\\\"}\",\"shop_code\":\"\",\"buy_num\":18571,\"bar_code\":\"\",\"is_return_goods\":1,\"yieldly\":\"\",\"is_comment\":1,\"up_tip\":0,\"up_error_reason\":\"\",\"service\":\"[\\\"\\\\u574f\\\\u5355\\\\u5305\\\\u9000\\\"]\",\"service_mobile\":\"86701701\"}","0","","","","","","0","0","","1","5000g","3","omQYXwAasNeXdGSMymd91487Ds1g","0","","","{\"id\":3,\"uid\":3,\"name\":\"\\u6d4b\\u8bd5\\u4eba\",\"mobile\":\"18988756181\",\"address\":\"\\u5929\\u6d25\\u5e02\\u6cb3\\u5317\\u533a\\u65b0\\u5f00\\u6cb3\\u8857\\u9053\",\"street\":\"\\u6d4b\\u8bd5\",\"status\":1,\"addtime\":1535765409,\"updatetime\":1535765409}","0","0","0","0","0","","0.01","0","1.00");
INSERT INTO fy_order_goods VALUES("9","1","3","1441217402201809121331384641","21","{\"id\":1,\"user_id\":21,\"name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"pic\":\"[\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/5fc1332916aee8884f8095dcb76365ba.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/db0bcda4a25dc457e29484b6b142504e.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/f20a29f350023a47de051e85f22a019c.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/1bde95e73b98544bc2de8d64ba1af22a.png\\\"]\",\"original_price\":\"30.00\",\"settlement_type\":1,\"goods_class_id\":1,\"goods_brand_id\":20,\"show_area\":4,\"detail\":\"&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269999019.jpg&quot; title=&quot;1535419269999019.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269956748.jpg&quot; title=&quot;1535419269956748.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269839241.jpg&quot; title=&quot;1535419269839241.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269460704.jpg&quot; title=&quot;1535419269460704.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269835149.jpg&quot; title=&quot;1535419269835149.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269314509.jpg&quot; title=&quot;1535419269314509.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269170969.jpg&quot; title=&quot;1535419269170969.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270321688.jpg&quot; title=&quot;1535419270321688.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270582547.jpg&quot; title=&quot;1535419270582547.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270622995.jpg&quot; title=&quot;1535419270622995.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;br\\/&gt;&lt;\\/p&gt;\",\"status\":1,\"main_image\":\"\\/pic\\/uploads\\/20180828\\/a11731d4b01a6dd41cdc21d3fdabf0cf.png\",\"subtitle\":\"\",\"create_time\":1535703801,\"update_time\":1535703801,\"orderby\":10,\"click_count\":null,\"goods_weight\":\"5000.000\",\"start_date\":null,\"end_date\":null,\"is_real\":1,\"return_score\":10,\"score_price\":null,\"price_real\":\"0.00\",\"score\":0,\"basic_price\":\"0.01\",\"isdelete\":0,\"store_type\":1,\"free_type\":1,\"postage\":\"0.00\",\"after_sale\":\"&lt;p&gt;\\u574f\\u5355\\u5305\\u9000\\uff1a\\u7b7e\\u6536\\u540e24\\u5c0f\\u65f6\\u5185\\uff0c\\u98df\\u54c1\\u51fa\\u73b0\\u8150\\u8d25\\u53d8\\u8d28\\uff0c\\u5546\\u5bb6\\u627f\\u8bfa24\\u5c0f\\u65f6\\u4e4b\\u5185\\u5904\\u7406\\u3002&lt;\\/p&gt;\",\"routine\":\"{\\\"\\\\u54c1\\\\u724c\\\":\\\"\\\\u751c\\\\u53ef\\\\u679c\\\\u56ed\\\",\\\"\\\\u4fdd\\\\u8d28\\\\u671f\\\":\\\"7\\\\u5929\\\",\\\"\\\\u51c0\\\\u542b\\\\u91cf\\\":\\\"5000g\\\",\\\"\\\\u5305\\\\u88c5\\\\u65b9\\\\u5f0f\\\":\\\"\\\\u5305\\\\u88c5\\\",\\\"\\\\u662f\\\\u5426\\\\u4e3a\\\\u6709\\\\u673a\\\\u98df\\\\u54c1\\\":\\\"\\\\u5426\\\",\\\"\\\\u4ea7\\\\u5730\\\":\\\"\\\\u4e2d\\\\u56fd\\\\u5927\\\\u9646\\\",\\\"\\\\u7701\\\\u4efd\\\":\\\"\\\\u9655\\\\u897f\\\\u7701\\\",\\\"\\\\u5957\\\\u9910\\\\u4efd\\\\u91cf\\\":\\\"3\\\\u4eba\\\\u4efd\\\",\\\"\\\\u914d\\\\u9001\\\\u9891\\\\u6b21\\\":\\\"1\\\\u54682\\\\u6b21\\\"}\",\"shop_code\":\"\",\"buy_num\":18629,\"bar_code\":\"\",\"is_return_goods\":1,\"yieldly\":\"\",\"is_comment\":1,\"up_tip\":0,\"up_error_reason\":\"\",\"service\":\"[\\\"\\\\u574f\\\\u5355\\\\u5305\\\\u9000\\\"]\",\"service_mobile\":\"86701701\"}","0","","","","","","0","0","","1","5000g","1","omQYXwNAT5uC15TQqMGxajJzqo4s","0","","","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}","0","0","0","0","0","","0.01","0","1.00");
INSERT INTO fy_order_goods VALUES("10","1","3","1441217402201809121332181627","21","{\"id\":1,\"user_id\":21,\"name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"pic\":\"[\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/5fc1332916aee8884f8095dcb76365ba.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/db0bcda4a25dc457e29484b6b142504e.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/f20a29f350023a47de051e85f22a019c.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/1bde95e73b98544bc2de8d64ba1af22a.png\\\"]\",\"original_price\":\"30.00\",\"settlement_type\":1,\"goods_class_id\":1,\"goods_brand_id\":20,\"show_area\":4,\"detail\":\"&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269999019.jpg&quot; title=&quot;1535419269999019.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269956748.jpg&quot; title=&quot;1535419269956748.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269839241.jpg&quot; title=&quot;1535419269839241.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269460704.jpg&quot; title=&quot;1535419269460704.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269835149.jpg&quot; title=&quot;1535419269835149.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269314509.jpg&quot; title=&quot;1535419269314509.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269170969.jpg&quot; title=&quot;1535419269170969.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270321688.jpg&quot; title=&quot;1535419270321688.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270582547.jpg&quot; title=&quot;1535419270582547.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270622995.jpg&quot; title=&quot;1535419270622995.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;br\\/&gt;&lt;\\/p&gt;\",\"status\":1,\"main_image\":\"\\/pic\\/uploads\\/20180828\\/a11731d4b01a6dd41cdc21d3fdabf0cf.png\",\"subtitle\":\"\",\"create_time\":1535703801,\"update_time\":1535703801,\"orderby\":10,\"click_count\":null,\"goods_weight\":\"5000.000\",\"start_date\":null,\"end_date\":null,\"is_real\":1,\"return_score\":10,\"score_price\":null,\"price_real\":\"0.00\",\"score\":0,\"basic_price\":\"0.01\",\"isdelete\":0,\"store_type\":1,\"free_type\":1,\"postage\":\"0.00\",\"after_sale\":\"&lt;p&gt;\\u574f\\u5355\\u5305\\u9000\\uff1a\\u7b7e\\u6536\\u540e24\\u5c0f\\u65f6\\u5185\\uff0c\\u98df\\u54c1\\u51fa\\u73b0\\u8150\\u8d25\\u53d8\\u8d28\\uff0c\\u5546\\u5bb6\\u627f\\u8bfa24\\u5c0f\\u65f6\\u4e4b\\u5185\\u5904\\u7406\\u3002&lt;\\/p&gt;\",\"routine\":\"{\\\"\\\\u54c1\\\\u724c\\\":\\\"\\\\u751c\\\\u53ef\\\\u679c\\\\u56ed\\\",\\\"\\\\u4fdd\\\\u8d28\\\\u671f\\\":\\\"7\\\\u5929\\\",\\\"\\\\u51c0\\\\u542b\\\\u91cf\\\":\\\"5000g\\\",\\\"\\\\u5305\\\\u88c5\\\\u65b9\\\\u5f0f\\\":\\\"\\\\u5305\\\\u88c5\\\",\\\"\\\\u662f\\\\u5426\\\\u4e3a\\\\u6709\\\\u673a\\\\u98df\\\\u54c1\\\":\\\"\\\\u5426\\\",\\\"\\\\u4ea7\\\\u5730\\\":\\\"\\\\u4e2d\\\\u56fd\\\\u5927\\\\u9646\\\",\\\"\\\\u7701\\\\u4efd\\\":\\\"\\\\u9655\\\\u897f\\\\u7701\\\",\\\"\\\\u5957\\\\u9910\\\\u4efd\\\\u91cf\\\":\\\"3\\\\u4eba\\\\u4efd\\\",\\\"\\\\u914d\\\\u9001\\\\u9891\\\\u6b21\\\":\\\"1\\\\u54682\\\\u6b21\\\"}\",\"shop_code\":\"\",\"buy_num\":18629,\"bar_code\":\"\",\"is_return_goods\":1,\"yieldly\":\"\",\"is_comment\":1,\"up_tip\":0,\"up_error_reason\":\"\",\"service\":\"[\\\"\\\\u574f\\\\u5355\\\\u5305\\\\u9000\\\"]\",\"service_mobile\":\"86701701\"}","0","","","","","","0","0","","1","5000g","1","omQYXwNAT5uC15TQqMGxajJzqo4s","0","","","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}","0","0","0","0","0","","0.01","0","1.00");
INSERT INTO fy_order_goods VALUES("11","1","3","1441217402201809121337265333","21","{\"id\":1,\"user_id\":21,\"name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"pic\":\"[\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/5fc1332916aee8884f8095dcb76365ba.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/db0bcda4a25dc457e29484b6b142504e.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/f20a29f350023a47de051e85f22a019c.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/1bde95e73b98544bc2de8d64ba1af22a.png\\\"]\",\"original_price\":\"30.00\",\"settlement_type\":1,\"goods_class_id\":1,\"goods_brand_id\":20,\"show_area\":4,\"detail\":\"&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269999019.jpg&quot; title=&quot;1535419269999019.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269956748.jpg&quot; title=&quot;1535419269956748.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269839241.jpg&quot; title=&quot;1535419269839241.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269460704.jpg&quot; title=&quot;1535419269460704.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269835149.jpg&quot; title=&quot;1535419269835149.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269314509.jpg&quot; title=&quot;1535419269314509.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269170969.jpg&quot; title=&quot;1535419269170969.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270321688.jpg&quot; title=&quot;1535419270321688.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270582547.jpg&quot; title=&quot;1535419270582547.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270622995.jpg&quot; title=&quot;1535419270622995.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;br\\/&gt;&lt;\\/p&gt;\",\"status\":1,\"main_image\":\"\\/pic\\/uploads\\/20180828\\/a11731d4b01a6dd41cdc21d3fdabf0cf.png\",\"subtitle\":\"\",\"create_time\":1535703801,\"update_time\":1535703801,\"orderby\":10,\"click_count\":null,\"goods_weight\":\"5000.000\",\"start_date\":null,\"end_date\":null,\"is_real\":1,\"return_score\":10,\"score_price\":null,\"price_real\":\"0.00\",\"score\":0,\"basic_price\":\"0.01\",\"isdelete\":0,\"store_type\":1,\"free_type\":1,\"postage\":\"0.00\",\"after_sale\":\"&lt;p&gt;\\u574f\\u5355\\u5305\\u9000\\uff1a\\u7b7e\\u6536\\u540e24\\u5c0f\\u65f6\\u5185\\uff0c\\u98df\\u54c1\\u51fa\\u73b0\\u8150\\u8d25\\u53d8\\u8d28\\uff0c\\u5546\\u5bb6\\u627f\\u8bfa24\\u5c0f\\u65f6\\u4e4b\\u5185\\u5904\\u7406\\u3002&lt;\\/p&gt;\",\"routine\":\"{\\\"\\\\u54c1\\\\u724c\\\":\\\"\\\\u751c\\\\u53ef\\\\u679c\\\\u56ed\\\",\\\"\\\\u4fdd\\\\u8d28\\\\u671f\\\":\\\"7\\\\u5929\\\",\\\"\\\\u51c0\\\\u542b\\\\u91cf\\\":\\\"5000g\\\",\\\"\\\\u5305\\\\u88c5\\\\u65b9\\\\u5f0f\\\":\\\"\\\\u5305\\\\u88c5\\\",\\\"\\\\u662f\\\\u5426\\\\u4e3a\\\\u6709\\\\u673a\\\\u98df\\\\u54c1\\\":\\\"\\\\u5426\\\",\\\"\\\\u4ea7\\\\u5730\\\":\\\"\\\\u4e2d\\\\u56fd\\\\u5927\\\\u9646\\\",\\\"\\\\u7701\\\\u4efd\\\":\\\"\\\\u9655\\\\u897f\\\\u7701\\\",\\\"\\\\u5957\\\\u9910\\\\u4efd\\\\u91cf\\\":\\\"3\\\\u4eba\\\\u4efd\\\",\\\"\\\\u914d\\\\u9001\\\\u9891\\\\u6b21\\\":\\\"1\\\\u54682\\\\u6b21\\\"}\",\"shop_code\":\"\",\"buy_num\":18629,\"bar_code\":\"\",\"is_return_goods\":1,\"yieldly\":\"\",\"is_comment\":1,\"up_tip\":0,\"up_error_reason\":\"\",\"service\":\"[\\\"\\\\u574f\\\\u5355\\\\u5305\\\\u9000\\\"]\",\"service_mobile\":\"86701701\"}","0","","","","","","0","0","","1","5000g","1","omQYXwNAT5uC15TQqMGxajJzqo4s","0","","","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}","0","0","0","0","0","","0.01","0","1.00");
INSERT INTO fy_order_goods VALUES("12","1","3","1441217402201809121338196029","21","{\"id\":1,\"user_id\":21,\"name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"pic\":\"[\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/5fc1332916aee8884f8095dcb76365ba.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/db0bcda4a25dc457e29484b6b142504e.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/f20a29f350023a47de051e85f22a019c.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/1bde95e73b98544bc2de8d64ba1af22a.png\\\"]\",\"original_price\":\"30.00\",\"settlement_type\":1,\"goods_class_id\":1,\"goods_brand_id\":20,\"show_area\":4,\"detail\":\"&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269999019.jpg&quot; title=&quot;1535419269999019.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269956748.jpg&quot; title=&quot;1535419269956748.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269839241.jpg&quot; title=&quot;1535419269839241.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269460704.jpg&quot; title=&quot;1535419269460704.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269835149.jpg&quot; title=&quot;1535419269835149.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269314509.jpg&quot; title=&quot;1535419269314509.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269170969.jpg&quot; title=&quot;1535419269170969.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270321688.jpg&quot; title=&quot;1535419270321688.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270582547.jpg&quot; title=&quot;1535419270582547.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270622995.jpg&quot; title=&quot;1535419270622995.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;br\\/&gt;&lt;\\/p&gt;\",\"status\":1,\"main_image\":\"\\/pic\\/uploads\\/20180828\\/a11731d4b01a6dd41cdc21d3fdabf0cf.png\",\"subtitle\":\"\",\"create_time\":1535703801,\"update_time\":1535703801,\"orderby\":10,\"click_count\":null,\"goods_weight\":\"5000.000\",\"start_date\":null,\"end_date\":null,\"is_real\":1,\"return_score\":10,\"score_price\":null,\"price_real\":\"0.00\",\"score\":0,\"basic_price\":\"0.01\",\"isdelete\":0,\"store_type\":1,\"free_type\":1,\"postage\":\"0.00\",\"after_sale\":\"&lt;p&gt;\\u574f\\u5355\\u5305\\u9000\\uff1a\\u7b7e\\u6536\\u540e24\\u5c0f\\u65f6\\u5185\\uff0c\\u98df\\u54c1\\u51fa\\u73b0\\u8150\\u8d25\\u53d8\\u8d28\\uff0c\\u5546\\u5bb6\\u627f\\u8bfa24\\u5c0f\\u65f6\\u4e4b\\u5185\\u5904\\u7406\\u3002&lt;\\/p&gt;\",\"routine\":\"{\\\"\\\\u54c1\\\\u724c\\\":\\\"\\\\u751c\\\\u53ef\\\\u679c\\\\u56ed\\\",\\\"\\\\u4fdd\\\\u8d28\\\\u671f\\\":\\\"7\\\\u5929\\\",\\\"\\\\u51c0\\\\u542b\\\\u91cf\\\":\\\"5000g\\\",\\\"\\\\u5305\\\\u88c5\\\\u65b9\\\\u5f0f\\\":\\\"\\\\u5305\\\\u88c5\\\",\\\"\\\\u662f\\\\u5426\\\\u4e3a\\\\u6709\\\\u673a\\\\u98df\\\\u54c1\\\":\\\"\\\\u5426\\\",\\\"\\\\u4ea7\\\\u5730\\\":\\\"\\\\u4e2d\\\\u56fd\\\\u5927\\\\u9646\\\",\\\"\\\\u7701\\\\u4efd\\\":\\\"\\\\u9655\\\\u897f\\\\u7701\\\",\\\"\\\\u5957\\\\u9910\\\\u4efd\\\\u91cf\\\":\\\"3\\\\u4eba\\\\u4efd\\\",\\\"\\\\u914d\\\\u9001\\\\u9891\\\\u6b21\\\":\\\"1\\\\u54682\\\\u6b21\\\"}\",\"shop_code\":\"\",\"buy_num\":18629,\"bar_code\":\"\",\"is_return_goods\":1,\"yieldly\":\"\",\"is_comment\":1,\"up_tip\":0,\"up_error_reason\":\"\",\"service\":\"[\\\"\\\\u574f\\\\u5355\\\\u5305\\\\u9000\\\"]\",\"service_mobile\":\"86701701\"}","0","","","","","","0","0","","1","5000g","1","omQYXwNAT5uC15TQqMGxajJzqo4s","0","","","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}","0","0","0","0","0","","0.01","0","1.00");
INSERT INTO fy_order_goods VALUES("13","1","3","1441217402201809121339549195","21","{\"id\":1,\"user_id\":21,\"name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"pic\":\"[\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/5fc1332916aee8884f8095dcb76365ba.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/db0bcda4a25dc457e29484b6b142504e.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/f20a29f350023a47de051e85f22a019c.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/1bde95e73b98544bc2de8d64ba1af22a.png\\\"]\",\"original_price\":\"30.00\",\"settlement_type\":1,\"goods_class_id\":1,\"goods_brand_id\":20,\"show_area\":4,\"detail\":\"&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269999019.jpg&quot; title=&quot;1535419269999019.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269956748.jpg&quot; title=&quot;1535419269956748.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269839241.jpg&quot; title=&quot;1535419269839241.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269460704.jpg&quot; title=&quot;1535419269460704.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269835149.jpg&quot; title=&quot;1535419269835149.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269314509.jpg&quot; title=&quot;1535419269314509.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269170969.jpg&quot; title=&quot;1535419269170969.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270321688.jpg&quot; title=&quot;1535419270321688.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270582547.jpg&quot; title=&quot;1535419270582547.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270622995.jpg&quot; title=&quot;1535419270622995.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;br\\/&gt;&lt;\\/p&gt;\",\"status\":1,\"main_image\":\"\\/pic\\/uploads\\/20180828\\/a11731d4b01a6dd41cdc21d3fdabf0cf.png\",\"subtitle\":\"\",\"create_time\":1535703801,\"update_time\":1535703801,\"orderby\":10,\"click_count\":null,\"goods_weight\":\"5000.000\",\"start_date\":null,\"end_date\":null,\"is_real\":1,\"return_score\":10,\"score_price\":null,\"price_real\":\"0.00\",\"score\":0,\"basic_price\":\"0.01\",\"isdelete\":0,\"store_type\":1,\"free_type\":1,\"postage\":\"0.00\",\"after_sale\":\"&lt;p&gt;\\u574f\\u5355\\u5305\\u9000\\uff1a\\u7b7e\\u6536\\u540e24\\u5c0f\\u65f6\\u5185\\uff0c\\u98df\\u54c1\\u51fa\\u73b0\\u8150\\u8d25\\u53d8\\u8d28\\uff0c\\u5546\\u5bb6\\u627f\\u8bfa24\\u5c0f\\u65f6\\u4e4b\\u5185\\u5904\\u7406\\u3002&lt;\\/p&gt;\",\"routine\":\"{\\\"\\\\u54c1\\\\u724c\\\":\\\"\\\\u751c\\\\u53ef\\\\u679c\\\\u56ed\\\",\\\"\\\\u4fdd\\\\u8d28\\\\u671f\\\":\\\"7\\\\u5929\\\",\\\"\\\\u51c0\\\\u542b\\\\u91cf\\\":\\\"5000g\\\",\\\"\\\\u5305\\\\u88c5\\\\u65b9\\\\u5f0f\\\":\\\"\\\\u5305\\\\u88c5\\\",\\\"\\\\u662f\\\\u5426\\\\u4e3a\\\\u6709\\\\u673a\\\\u98df\\\\u54c1\\\":\\\"\\\\u5426\\\",\\\"\\\\u4ea7\\\\u5730\\\":\\\"\\\\u4e2d\\\\u56fd\\\\u5927\\\\u9646\\\",\\\"\\\\u7701\\\\u4efd\\\":\\\"\\\\u9655\\\\u897f\\\\u7701\\\",\\\"\\\\u5957\\\\u9910\\\\u4efd\\\\u91cf\\\":\\\"3\\\\u4eba\\\\u4efd\\\",\\\"\\\\u914d\\\\u9001\\\\u9891\\\\u6b21\\\":\\\"1\\\\u54682\\\\u6b21\\\"}\",\"shop_code\":\"\",\"buy_num\":18629,\"bar_code\":\"\",\"is_return_goods\":1,\"yieldly\":\"\",\"is_comment\":1,\"up_tip\":0,\"up_error_reason\":\"\",\"service\":\"[\\\"\\\\u574f\\\\u5355\\\\u5305\\\\u9000\\\"]\",\"service_mobile\":\"86701701\"}","0","","","","","","0","0","","1","5000g","1","omQYXwNAT5uC15TQqMGxajJzqo4s","0","","","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}","0","0","0","0","0","","0.01","0","1.00");
INSERT INTO fy_order_goods VALUES("14","1","3","1441217402201809121341165751","21","{\"id\":1,\"user_id\":21,\"name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"pic\":\"[\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/5fc1332916aee8884f8095dcb76365ba.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/db0bcda4a25dc457e29484b6b142504e.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/f20a29f350023a47de051e85f22a019c.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/1bde95e73b98544bc2de8d64ba1af22a.png\\\"]\",\"original_price\":\"30.00\",\"settlement_type\":1,\"goods_class_id\":1,\"goods_brand_id\":20,\"show_area\":4,\"detail\":\"&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269999019.jpg&quot; title=&quot;1535419269999019.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269956748.jpg&quot; title=&quot;1535419269956748.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269839241.jpg&quot; title=&quot;1535419269839241.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269460704.jpg&quot; title=&quot;1535419269460704.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269835149.jpg&quot; title=&quot;1535419269835149.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269314509.jpg&quot; title=&quot;1535419269314509.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269170969.jpg&quot; title=&quot;1535419269170969.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270321688.jpg&quot; title=&quot;1535419270321688.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270582547.jpg&quot; title=&quot;1535419270582547.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270622995.jpg&quot; title=&quot;1535419270622995.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;br\\/&gt;&lt;\\/p&gt;\",\"status\":1,\"main_image\":\"\\/pic\\/uploads\\/20180828\\/a11731d4b01a6dd41cdc21d3fdabf0cf.png\",\"subtitle\":\"\",\"create_time\":1535703801,\"update_time\":1535703801,\"orderby\":10,\"click_count\":null,\"goods_weight\":\"5000.000\",\"start_date\":null,\"end_date\":null,\"is_real\":1,\"return_score\":10,\"score_price\":null,\"price_real\":\"0.00\",\"score\":0,\"basic_price\":\"0.01\",\"isdelete\":0,\"store_type\":1,\"free_type\":1,\"postage\":\"0.00\",\"after_sale\":\"&lt;p&gt;\\u574f\\u5355\\u5305\\u9000\\uff1a\\u7b7e\\u6536\\u540e24\\u5c0f\\u65f6\\u5185\\uff0c\\u98df\\u54c1\\u51fa\\u73b0\\u8150\\u8d25\\u53d8\\u8d28\\uff0c\\u5546\\u5bb6\\u627f\\u8bfa24\\u5c0f\\u65f6\\u4e4b\\u5185\\u5904\\u7406\\u3002&lt;\\/p&gt;\",\"routine\":\"{\\\"\\\\u54c1\\\\u724c\\\":\\\"\\\\u751c\\\\u53ef\\\\u679c\\\\u56ed\\\",\\\"\\\\u4fdd\\\\u8d28\\\\u671f\\\":\\\"7\\\\u5929\\\",\\\"\\\\u51c0\\\\u542b\\\\u91cf\\\":\\\"5000g\\\",\\\"\\\\u5305\\\\u88c5\\\\u65b9\\\\u5f0f\\\":\\\"\\\\u5305\\\\u88c5\\\",\\\"\\\\u662f\\\\u5426\\\\u4e3a\\\\u6709\\\\u673a\\\\u98df\\\\u54c1\\\":\\\"\\\\u5426\\\",\\\"\\\\u4ea7\\\\u5730\\\":\\\"\\\\u4e2d\\\\u56fd\\\\u5927\\\\u9646\\\",\\\"\\\\u7701\\\\u4efd\\\":\\\"\\\\u9655\\\\u897f\\\\u7701\\\",\\\"\\\\u5957\\\\u9910\\\\u4efd\\\\u91cf\\\":\\\"3\\\\u4eba\\\\u4efd\\\",\\\"\\\\u914d\\\\u9001\\\\u9891\\\\u6b21\\\":\\\"1\\\\u54682\\\\u6b21\\\"}\",\"shop_code\":\"\",\"buy_num\":18629,\"bar_code\":\"\",\"is_return_goods\":1,\"yieldly\":\"\",\"is_comment\":1,\"up_tip\":0,\"up_error_reason\":\"\",\"service\":\"[\\\"\\\\u574f\\\\u5355\\\\u5305\\\\u9000\\\"]\",\"service_mobile\":\"86701701\"}","0","","","","","","0","0","","1","5000g","1","omQYXwNAT5uC15TQqMGxajJzqo4s","0","","","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}","0","0","0","0","0","","0.01","0","1.00");
INSERT INTO fy_order_goods VALUES("15","1","3","1441217402201809121342031459","21","{\"id\":1,\"user_id\":21,\"name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"pic\":\"[\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/5fc1332916aee8884f8095dcb76365ba.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/db0bcda4a25dc457e29484b6b142504e.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/f20a29f350023a47de051e85f22a019c.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/1bde95e73b98544bc2de8d64ba1af22a.png\\\"]\",\"original_price\":\"30.00\",\"settlement_type\":1,\"goods_class_id\":1,\"goods_brand_id\":20,\"show_area\":4,\"detail\":\"&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269999019.jpg&quot; title=&quot;1535419269999019.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269956748.jpg&quot; title=&quot;1535419269956748.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269839241.jpg&quot; title=&quot;1535419269839241.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269460704.jpg&quot; title=&quot;1535419269460704.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269835149.jpg&quot; title=&quot;1535419269835149.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269314509.jpg&quot; title=&quot;1535419269314509.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269170969.jpg&quot; title=&quot;1535419269170969.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270321688.jpg&quot; title=&quot;1535419270321688.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270582547.jpg&quot; title=&quot;1535419270582547.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270622995.jpg&quot; title=&quot;1535419270622995.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;br\\/&gt;&lt;\\/p&gt;\",\"status\":1,\"main_image\":\"\\/pic\\/uploads\\/20180828\\/a11731d4b01a6dd41cdc21d3fdabf0cf.png\",\"subtitle\":\"\",\"create_time\":1535703801,\"update_time\":1535703801,\"orderby\":10,\"click_count\":null,\"goods_weight\":\"5000.000\",\"start_date\":null,\"end_date\":null,\"is_real\":1,\"return_score\":10,\"score_price\":null,\"price_real\":\"0.00\",\"score\":0,\"basic_price\":\"0.01\",\"isdelete\":0,\"store_type\":1,\"free_type\":1,\"postage\":\"0.00\",\"after_sale\":\"&lt;p&gt;\\u574f\\u5355\\u5305\\u9000\\uff1a\\u7b7e\\u6536\\u540e24\\u5c0f\\u65f6\\u5185\\uff0c\\u98df\\u54c1\\u51fa\\u73b0\\u8150\\u8d25\\u53d8\\u8d28\\uff0c\\u5546\\u5bb6\\u627f\\u8bfa24\\u5c0f\\u65f6\\u4e4b\\u5185\\u5904\\u7406\\u3002&lt;\\/p&gt;\",\"routine\":\"{\\\"\\\\u54c1\\\\u724c\\\":\\\"\\\\u751c\\\\u53ef\\\\u679c\\\\u56ed\\\",\\\"\\\\u4fdd\\\\u8d28\\\\u671f\\\":\\\"7\\\\u5929\\\",\\\"\\\\u51c0\\\\u542b\\\\u91cf\\\":\\\"5000g\\\",\\\"\\\\u5305\\\\u88c5\\\\u65b9\\\\u5f0f\\\":\\\"\\\\u5305\\\\u88c5\\\",\\\"\\\\u662f\\\\u5426\\\\u4e3a\\\\u6709\\\\u673a\\\\u98df\\\\u54c1\\\":\\\"\\\\u5426\\\",\\\"\\\\u4ea7\\\\u5730\\\":\\\"\\\\u4e2d\\\\u56fd\\\\u5927\\\\u9646\\\",\\\"\\\\u7701\\\\u4efd\\\":\\\"\\\\u9655\\\\u897f\\\\u7701\\\",\\\"\\\\u5957\\\\u9910\\\\u4efd\\\\u91cf\\\":\\\"3\\\\u4eba\\\\u4efd\\\",\\\"\\\\u914d\\\\u9001\\\\u9891\\\\u6b21\\\":\\\"1\\\\u54682\\\\u6b21\\\"}\",\"shop_code\":\"\",\"buy_num\":18629,\"bar_code\":\"\",\"is_return_goods\":1,\"yieldly\":\"\",\"is_comment\":1,\"up_tip\":0,\"up_error_reason\":\"\",\"service\":\"[\\\"\\\\u574f\\\\u5355\\\\u5305\\\\u9000\\\"]\",\"service_mobile\":\"86701701\"}","0","","","","","","0","0","","1","5000g","1","omQYXwNAT5uC15TQqMGxajJzqo4s","0","","","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}","0","0","0","0","0","","0.01","0","1.00");
INSERT INTO fy_order_goods VALUES("16","1","3","1441217402201809121343192015","21","{\"id\":1,\"user_id\":21,\"name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"pic\":\"[\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/5fc1332916aee8884f8095dcb76365ba.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/db0bcda4a25dc457e29484b6b142504e.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/f20a29f350023a47de051e85f22a019c.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/1bde95e73b98544bc2de8d64ba1af22a.png\\\"]\",\"original_price\":\"30.00\",\"settlement_type\":1,\"goods_class_id\":1,\"goods_brand_id\":20,\"show_area\":4,\"detail\":\"&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269999019.jpg&quot; title=&quot;1535419269999019.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269956748.jpg&quot; title=&quot;1535419269956748.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269839241.jpg&quot; title=&quot;1535419269839241.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269460704.jpg&quot; title=&quot;1535419269460704.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269835149.jpg&quot; title=&quot;1535419269835149.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269314509.jpg&quot; title=&quot;1535419269314509.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269170969.jpg&quot; title=&quot;1535419269170969.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270321688.jpg&quot; title=&quot;1535419270321688.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270582547.jpg&quot; title=&quot;1535419270582547.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270622995.jpg&quot; title=&quot;1535419270622995.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;br\\/&gt;&lt;\\/p&gt;\",\"status\":1,\"main_image\":\"\\/pic\\/uploads\\/20180828\\/a11731d4b01a6dd41cdc21d3fdabf0cf.png\",\"subtitle\":\"\",\"create_time\":1535703801,\"update_time\":1535703801,\"orderby\":10,\"click_count\":null,\"goods_weight\":\"5000.000\",\"start_date\":null,\"end_date\":null,\"is_real\":1,\"return_score\":10,\"score_price\":null,\"price_real\":\"0.00\",\"score\":0,\"basic_price\":\"0.01\",\"isdelete\":0,\"store_type\":1,\"free_type\":1,\"postage\":\"0.00\",\"after_sale\":\"&lt;p&gt;\\u574f\\u5355\\u5305\\u9000\\uff1a\\u7b7e\\u6536\\u540e24\\u5c0f\\u65f6\\u5185\\uff0c\\u98df\\u54c1\\u51fa\\u73b0\\u8150\\u8d25\\u53d8\\u8d28\\uff0c\\u5546\\u5bb6\\u627f\\u8bfa24\\u5c0f\\u65f6\\u4e4b\\u5185\\u5904\\u7406\\u3002&lt;\\/p&gt;\",\"routine\":\"{\\\"\\\\u54c1\\\\u724c\\\":\\\"\\\\u751c\\\\u53ef\\\\u679c\\\\u56ed\\\",\\\"\\\\u4fdd\\\\u8d28\\\\u671f\\\":\\\"7\\\\u5929\\\",\\\"\\\\u51c0\\\\u542b\\\\u91cf\\\":\\\"5000g\\\",\\\"\\\\u5305\\\\u88c5\\\\u65b9\\\\u5f0f\\\":\\\"\\\\u5305\\\\u88c5\\\",\\\"\\\\u662f\\\\u5426\\\\u4e3a\\\\u6709\\\\u673a\\\\u98df\\\\u54c1\\\":\\\"\\\\u5426\\\",\\\"\\\\u4ea7\\\\u5730\\\":\\\"\\\\u4e2d\\\\u56fd\\\\u5927\\\\u9646\\\",\\\"\\\\u7701\\\\u4efd\\\":\\\"\\\\u9655\\\\u897f\\\\u7701\\\",\\\"\\\\u5957\\\\u9910\\\\u4efd\\\\u91cf\\\":\\\"3\\\\u4eba\\\\u4efd\\\",\\\"\\\\u914d\\\\u9001\\\\u9891\\\\u6b21\\\":\\\"1\\\\u54682\\\\u6b21\\\"}\",\"shop_code\":\"\",\"buy_num\":18629,\"bar_code\":\"\",\"is_return_goods\":1,\"yieldly\":\"\",\"is_comment\":1,\"up_tip\":0,\"up_error_reason\":\"\",\"service\":\"[\\\"\\\\u574f\\\\u5355\\\\u5305\\\\u9000\\\"]\",\"service_mobile\":\"86701701\"}","0","","","","","","0","0","","1","5000g","1","omQYXwNAT5uC15TQqMGxajJzqo4s","0","","","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}","0","0","0","0","0","","0.01","0","1.00");
INSERT INTO fy_order_goods VALUES("17","1","3","1441217402201809121353414105","21","{\"id\":1,\"user_id\":21,\"name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"pic\":\"[\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/5fc1332916aee8884f8095dcb76365ba.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/db0bcda4a25dc457e29484b6b142504e.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/f20a29f350023a47de051e85f22a019c.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/1bde95e73b98544bc2de8d64ba1af22a.png\\\"]\",\"original_price\":\"30.00\",\"settlement_type\":1,\"goods_class_id\":1,\"goods_brand_id\":20,\"show_area\":4,\"detail\":\"&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269999019.jpg&quot; title=&quot;1535419269999019.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269956748.jpg&quot; title=&quot;1535419269956748.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269839241.jpg&quot; title=&quot;1535419269839241.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269460704.jpg&quot; title=&quot;1535419269460704.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269835149.jpg&quot; title=&quot;1535419269835149.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269314509.jpg&quot; title=&quot;1535419269314509.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269170969.jpg&quot; title=&quot;1535419269170969.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270321688.jpg&quot; title=&quot;1535419270321688.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270582547.jpg&quot; title=&quot;1535419270582547.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270622995.jpg&quot; title=&quot;1535419270622995.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;br\\/&gt;&lt;\\/p&gt;\",\"status\":1,\"main_image\":\"\\/pic\\/uploads\\/20180828\\/a11731d4b01a6dd41cdc21d3fdabf0cf.png\",\"subtitle\":\"\",\"create_time\":1535703801,\"update_time\":1535703801,\"orderby\":10,\"click_count\":null,\"goods_weight\":\"5000.000\",\"start_date\":null,\"end_date\":null,\"is_real\":1,\"return_score\":10,\"score_price\":null,\"price_real\":\"0.00\",\"score\":0,\"basic_price\":\"0.01\",\"isdelete\":0,\"store_type\":1,\"free_type\":1,\"postage\":\"0.00\",\"after_sale\":\"&lt;p&gt;\\u574f\\u5355\\u5305\\u9000\\uff1a\\u7b7e\\u6536\\u540e24\\u5c0f\\u65f6\\u5185\\uff0c\\u98df\\u54c1\\u51fa\\u73b0\\u8150\\u8d25\\u53d8\\u8d28\\uff0c\\u5546\\u5bb6\\u627f\\u8bfa24\\u5c0f\\u65f6\\u4e4b\\u5185\\u5904\\u7406\\u3002&lt;\\/p&gt;\",\"routine\":\"{\\\"\\\\u54c1\\\\u724c\\\":\\\"\\\\u751c\\\\u53ef\\\\u679c\\\\u56ed\\\",\\\"\\\\u4fdd\\\\u8d28\\\\u671f\\\":\\\"7\\\\u5929\\\",\\\"\\\\u51c0\\\\u542b\\\\u91cf\\\":\\\"5000g\\\",\\\"\\\\u5305\\\\u88c5\\\\u65b9\\\\u5f0f\\\":\\\"\\\\u5305\\\\u88c5\\\",\\\"\\\\u662f\\\\u5426\\\\u4e3a\\\\u6709\\\\u673a\\\\u98df\\\\u54c1\\\":\\\"\\\\u5426\\\",\\\"\\\\u4ea7\\\\u5730\\\":\\\"\\\\u4e2d\\\\u56fd\\\\u5927\\\\u9646\\\",\\\"\\\\u7701\\\\u4efd\\\":\\\"\\\\u9655\\\\u897f\\\\u7701\\\",\\\"\\\\u5957\\\\u9910\\\\u4efd\\\\u91cf\\\":\\\"3\\\\u4eba\\\\u4efd\\\",\\\"\\\\u914d\\\\u9001\\\\u9891\\\\u6b21\\\":\\\"1\\\\u54682\\\\u6b21\\\"}\",\"shop_code\":\"\",\"buy_num\":18629,\"bar_code\":\"\",\"is_return_goods\":1,\"yieldly\":\"\",\"is_comment\":1,\"up_tip\":0,\"up_error_reason\":\"\",\"service\":\"[\\\"\\\\u574f\\\\u5355\\\\u5305\\\\u9000\\\"]\",\"service_mobile\":\"86701701\"}","0","","","","","","0","0","","1","5000g","1","omQYXwNAT5uC15TQqMGxajJzqo4s","0","","","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}","0","0","0","0","0","","0.01","0","1.00");
INSERT INTO fy_order_goods VALUES("18","1","3","1441217402201809121401405669","21","{\"id\":1,\"user_id\":21,\"name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"pic\":\"[\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/5fc1332916aee8884f8095dcb76365ba.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/db0bcda4a25dc457e29484b6b142504e.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/f20a29f350023a47de051e85f22a019c.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/1bde95e73b98544bc2de8d64ba1af22a.png\\\"]\",\"original_price\":\"30.00\",\"settlement_type\":1,\"goods_class_id\":1,\"goods_brand_id\":20,\"show_area\":4,\"detail\":\"&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269999019.jpg&quot; title=&quot;1535419269999019.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269956748.jpg&quot; title=&quot;1535419269956748.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269839241.jpg&quot; title=&quot;1535419269839241.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269460704.jpg&quot; title=&quot;1535419269460704.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269835149.jpg&quot; title=&quot;1535419269835149.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269314509.jpg&quot; title=&quot;1535419269314509.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269170969.jpg&quot; title=&quot;1535419269170969.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270321688.jpg&quot; title=&quot;1535419270321688.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270582547.jpg&quot; title=&quot;1535419270582547.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270622995.jpg&quot; title=&quot;1535419270622995.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;br\\/&gt;&lt;\\/p&gt;\",\"status\":1,\"main_image\":\"\\/pic\\/uploads\\/20180828\\/a11731d4b01a6dd41cdc21d3fdabf0cf.png\",\"subtitle\":\"\",\"create_time\":1535703801,\"update_time\":1535703801,\"orderby\":10,\"click_count\":null,\"goods_weight\":\"5000.000\",\"start_date\":null,\"end_date\":null,\"is_real\":1,\"return_score\":10,\"score_price\":null,\"price_real\":\"0.00\",\"score\":0,\"basic_price\":\"0.01\",\"isdelete\":0,\"store_type\":1,\"free_type\":1,\"postage\":\"0.00\",\"after_sale\":\"&lt;p&gt;\\u574f\\u5355\\u5305\\u9000\\uff1a\\u7b7e\\u6536\\u540e24\\u5c0f\\u65f6\\u5185\\uff0c\\u98df\\u54c1\\u51fa\\u73b0\\u8150\\u8d25\\u53d8\\u8d28\\uff0c\\u5546\\u5bb6\\u627f\\u8bfa24\\u5c0f\\u65f6\\u4e4b\\u5185\\u5904\\u7406\\u3002&lt;\\/p&gt;\",\"routine\":\"{\\\"\\\\u54c1\\\\u724c\\\":\\\"\\\\u751c\\\\u53ef\\\\u679c\\\\u56ed\\\",\\\"\\\\u4fdd\\\\u8d28\\\\u671f\\\":\\\"7\\\\u5929\\\",\\\"\\\\u51c0\\\\u542b\\\\u91cf\\\":\\\"5000g\\\",\\\"\\\\u5305\\\\u88c5\\\\u65b9\\\\u5f0f\\\":\\\"\\\\u5305\\\\u88c5\\\",\\\"\\\\u662f\\\\u5426\\\\u4e3a\\\\u6709\\\\u673a\\\\u98df\\\\u54c1\\\":\\\"\\\\u5426\\\",\\\"\\\\u4ea7\\\\u5730\\\":\\\"\\\\u4e2d\\\\u56fd\\\\u5927\\\\u9646\\\",\\\"\\\\u7701\\\\u4efd\\\":\\\"\\\\u9655\\\\u897f\\\\u7701\\\",\\\"\\\\u5957\\\\u9910\\\\u4efd\\\\u91cf\\\":\\\"3\\\\u4eba\\\\u4efd\\\",\\\"\\\\u914d\\\\u9001\\\\u9891\\\\u6b21\\\":\\\"1\\\\u54682\\\\u6b21\\\"}\",\"shop_code\":\"\",\"buy_num\":18629,\"bar_code\":\"\",\"is_return_goods\":1,\"yieldly\":\"\",\"is_comment\":1,\"up_tip\":0,\"up_error_reason\":\"\",\"service\":\"[\\\"\\\\u574f\\\\u5355\\\\u5305\\\\u9000\\\"]\",\"service_mobile\":\"86701701\"}","0","","","","","","0","0","","1","5000g","1","omQYXwNAT5uC15TQqMGxajJzqo4s","0","","","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}","0","0","0","0","0","","0.01","0","1.00");
INSERT INTO fy_order_goods VALUES("19","1","3","1441217402201809121403594155","21","{\"id\":1,\"user_id\":21,\"name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"pic\":\"[\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/5fc1332916aee8884f8095dcb76365ba.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/db0bcda4a25dc457e29484b6b142504e.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/f20a29f350023a47de051e85f22a019c.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/1bde95e73b98544bc2de8d64ba1af22a.png\\\"]\",\"original_price\":\"30.00\",\"settlement_type\":1,\"goods_class_id\":1,\"goods_brand_id\":20,\"show_area\":4,\"detail\":\"&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269999019.jpg&quot; title=&quot;1535419269999019.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269956748.jpg&quot; title=&quot;1535419269956748.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269839241.jpg&quot; title=&quot;1535419269839241.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269460704.jpg&quot; title=&quot;1535419269460704.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269835149.jpg&quot; title=&quot;1535419269835149.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269314509.jpg&quot; title=&quot;1535419269314509.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269170969.jpg&quot; title=&quot;1535419269170969.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270321688.jpg&quot; title=&quot;1535419270321688.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270582547.jpg&quot; title=&quot;1535419270582547.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270622995.jpg&quot; title=&quot;1535419270622995.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;br\\/&gt;&lt;\\/p&gt;\",\"status\":1,\"main_image\":\"\\/pic\\/uploads\\/20180828\\/a11731d4b01a6dd41cdc21d3fdabf0cf.png\",\"subtitle\":\"\",\"create_time\":1535703801,\"update_time\":1535703801,\"orderby\":10,\"click_count\":null,\"goods_weight\":\"5000.000\",\"start_date\":null,\"end_date\":null,\"is_real\":1,\"return_score\":10,\"score_price\":null,\"price_real\":\"0.00\",\"score\":0,\"basic_price\":\"0.01\",\"isdelete\":0,\"store_type\":1,\"free_type\":1,\"postage\":\"0.00\",\"after_sale\":\"&lt;p&gt;\\u574f\\u5355\\u5305\\u9000\\uff1a\\u7b7e\\u6536\\u540e24\\u5c0f\\u65f6\\u5185\\uff0c\\u98df\\u54c1\\u51fa\\u73b0\\u8150\\u8d25\\u53d8\\u8d28\\uff0c\\u5546\\u5bb6\\u627f\\u8bfa24\\u5c0f\\u65f6\\u4e4b\\u5185\\u5904\\u7406\\u3002&lt;\\/p&gt;\",\"routine\":\"{\\\"\\\\u54c1\\\\u724c\\\":\\\"\\\\u751c\\\\u53ef\\\\u679c\\\\u56ed\\\",\\\"\\\\u4fdd\\\\u8d28\\\\u671f\\\":\\\"7\\\\u5929\\\",\\\"\\\\u51c0\\\\u542b\\\\u91cf\\\":\\\"5000g\\\",\\\"\\\\u5305\\\\u88c5\\\\u65b9\\\\u5f0f\\\":\\\"\\\\u5305\\\\u88c5\\\",\\\"\\\\u662f\\\\u5426\\\\u4e3a\\\\u6709\\\\u673a\\\\u98df\\\\u54c1\\\":\\\"\\\\u5426\\\",\\\"\\\\u4ea7\\\\u5730\\\":\\\"\\\\u4e2d\\\\u56fd\\\\u5927\\\\u9646\\\",\\\"\\\\u7701\\\\u4efd\\\":\\\"\\\\u9655\\\\u897f\\\\u7701\\\",\\\"\\\\u5957\\\\u9910\\\\u4efd\\\\u91cf\\\":\\\"3\\\\u4eba\\\\u4efd\\\",\\\"\\\\u914d\\\\u9001\\\\u9891\\\\u6b21\\\":\\\"1\\\\u54682\\\\u6b21\\\"}\",\"shop_code\":\"\",\"buy_num\":18629,\"bar_code\":\"\",\"is_return_goods\":1,\"yieldly\":\"\",\"is_comment\":1,\"up_tip\":0,\"up_error_reason\":\"\",\"service\":\"[\\\"\\\\u574f\\\\u5355\\\\u5305\\\\u9000\\\"]\",\"service_mobile\":\"86701701\"}","0","","","","","","0","0","","1","5000g","1","omQYXwNAT5uC15TQqMGxajJzqo4s","0","","","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}","0","0","0","0","0","","0.01","0","1.00");
INSERT INTO fy_order_goods VALUES("20","1","3","1441217402201809121406189130","21","{\"id\":1,\"user_id\":21,\"name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"pic\":\"[\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/5fc1332916aee8884f8095dcb76365ba.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/db0bcda4a25dc457e29484b6b142504e.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/f20a29f350023a47de051e85f22a019c.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/1bde95e73b98544bc2de8d64ba1af22a.png\\\"]\",\"original_price\":\"30.00\",\"settlement_type\":1,\"goods_class_id\":1,\"goods_brand_id\":20,\"show_area\":4,\"detail\":\"&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269999019.jpg&quot; title=&quot;1535419269999019.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269956748.jpg&quot; title=&quot;1535419269956748.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269839241.jpg&quot; title=&quot;1535419269839241.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269460704.jpg&quot; title=&quot;1535419269460704.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269835149.jpg&quot; title=&quot;1535419269835149.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269314509.jpg&quot; title=&quot;1535419269314509.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269170969.jpg&quot; title=&quot;1535419269170969.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270321688.jpg&quot; title=&quot;1535419270321688.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270582547.jpg&quot; title=&quot;1535419270582547.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270622995.jpg&quot; title=&quot;1535419270622995.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;br\\/&gt;&lt;\\/p&gt;\",\"status\":1,\"main_image\":\"\\/pic\\/uploads\\/20180828\\/a11731d4b01a6dd41cdc21d3fdabf0cf.png\",\"subtitle\":\"\",\"create_time\":1535703801,\"update_time\":1535703801,\"orderby\":10,\"click_count\":null,\"goods_weight\":\"5000.000\",\"start_date\":null,\"end_date\":null,\"is_real\":1,\"return_score\":10,\"score_price\":null,\"price_real\":\"0.00\",\"score\":0,\"basic_price\":\"0.01\",\"isdelete\":0,\"store_type\":1,\"free_type\":1,\"postage\":\"0.00\",\"after_sale\":\"&lt;p&gt;\\u574f\\u5355\\u5305\\u9000\\uff1a\\u7b7e\\u6536\\u540e24\\u5c0f\\u65f6\\u5185\\uff0c\\u98df\\u54c1\\u51fa\\u73b0\\u8150\\u8d25\\u53d8\\u8d28\\uff0c\\u5546\\u5bb6\\u627f\\u8bfa24\\u5c0f\\u65f6\\u4e4b\\u5185\\u5904\\u7406\\u3002&lt;\\/p&gt;\",\"routine\":\"{\\\"\\\\u54c1\\\\u724c\\\":\\\"\\\\u751c\\\\u53ef\\\\u679c\\\\u56ed\\\",\\\"\\\\u4fdd\\\\u8d28\\\\u671f\\\":\\\"7\\\\u5929\\\",\\\"\\\\u51c0\\\\u542b\\\\u91cf\\\":\\\"5000g\\\",\\\"\\\\u5305\\\\u88c5\\\\u65b9\\\\u5f0f\\\":\\\"\\\\u5305\\\\u88c5\\\",\\\"\\\\u662f\\\\u5426\\\\u4e3a\\\\u6709\\\\u673a\\\\u98df\\\\u54c1\\\":\\\"\\\\u5426\\\",\\\"\\\\u4ea7\\\\u5730\\\":\\\"\\\\u4e2d\\\\u56fd\\\\u5927\\\\u9646\\\",\\\"\\\\u7701\\\\u4efd\\\":\\\"\\\\u9655\\\\u897f\\\\u7701\\\",\\\"\\\\u5957\\\\u9910\\\\u4efd\\\\u91cf\\\":\\\"3\\\\u4eba\\\\u4efd\\\",\\\"\\\\u914d\\\\u9001\\\\u9891\\\\u6b21\\\":\\\"1\\\\u54682\\\\u6b21\\\"}\",\"shop_code\":\"\",\"buy_num\":18629,\"bar_code\":\"\",\"is_return_goods\":1,\"yieldly\":\"\",\"is_comment\":1,\"up_tip\":0,\"up_error_reason\":\"\",\"service\":\"[\\\"\\\\u574f\\\\u5355\\\\u5305\\\\u9000\\\"]\",\"service_mobile\":\"86701701\"}","0","","","","","","0","0","","1","5000g","1","omQYXwNAT5uC15TQqMGxajJzqo4s","0","","","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}","0","0","0","0","0","","0.01","0","1.00");
INSERT INTO fy_order_goods VALUES("21","1","3","1441217402201809121421157010","21","{\"id\":1,\"user_id\":21,\"name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"pic\":\"[\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/5fc1332916aee8884f8095dcb76365ba.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/db0bcda4a25dc457e29484b6b142504e.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/f20a29f350023a47de051e85f22a019c.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/1bde95e73b98544bc2de8d64ba1af22a.png\\\"]\",\"original_price\":\"30.00\",\"settlement_type\":1,\"goods_class_id\":1,\"goods_brand_id\":20,\"show_area\":4,\"detail\":\"&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269999019.jpg&quot; title=&quot;1535419269999019.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269956748.jpg&quot; title=&quot;1535419269956748.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269839241.jpg&quot; title=&quot;1535419269839241.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269460704.jpg&quot; title=&quot;1535419269460704.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269835149.jpg&quot; title=&quot;1535419269835149.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269314509.jpg&quot; title=&quot;1535419269314509.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269170969.jpg&quot; title=&quot;1535419269170969.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270321688.jpg&quot; title=&quot;1535419270321688.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270582547.jpg&quot; title=&quot;1535419270582547.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270622995.jpg&quot; title=&quot;1535419270622995.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;br\\/&gt;&lt;\\/p&gt;\",\"status\":1,\"main_image\":\"\\/pic\\/uploads\\/20180828\\/a11731d4b01a6dd41cdc21d3fdabf0cf.png\",\"subtitle\":\"\",\"create_time\":1535703801,\"update_time\":1535703801,\"orderby\":10,\"click_count\":null,\"goods_weight\":\"5000.000\",\"start_date\":null,\"end_date\":null,\"is_real\":1,\"return_score\":10,\"score_price\":null,\"price_real\":\"0.00\",\"score\":0,\"basic_price\":\"0.01\",\"isdelete\":0,\"store_type\":1,\"free_type\":1,\"postage\":\"0.00\",\"after_sale\":\"&lt;p&gt;\\u574f\\u5355\\u5305\\u9000\\uff1a\\u7b7e\\u6536\\u540e24\\u5c0f\\u65f6\\u5185\\uff0c\\u98df\\u54c1\\u51fa\\u73b0\\u8150\\u8d25\\u53d8\\u8d28\\uff0c\\u5546\\u5bb6\\u627f\\u8bfa24\\u5c0f\\u65f6\\u4e4b\\u5185\\u5904\\u7406\\u3002&lt;\\/p&gt;\",\"routine\":\"{\\\"\\\\u54c1\\\\u724c\\\":\\\"\\\\u751c\\\\u53ef\\\\u679c\\\\u56ed\\\",\\\"\\\\u4fdd\\\\u8d28\\\\u671f\\\":\\\"7\\\\u5929\\\",\\\"\\\\u51c0\\\\u542b\\\\u91cf\\\":\\\"5000g\\\",\\\"\\\\u5305\\\\u88c5\\\\u65b9\\\\u5f0f\\\":\\\"\\\\u5305\\\\u88c5\\\",\\\"\\\\u662f\\\\u5426\\\\u4e3a\\\\u6709\\\\u673a\\\\u98df\\\\u54c1\\\":\\\"\\\\u5426\\\",\\\"\\\\u4ea7\\\\u5730\\\":\\\"\\\\u4e2d\\\\u56fd\\\\u5927\\\\u9646\\\",\\\"\\\\u7701\\\\u4efd\\\":\\\"\\\\u9655\\\\u897f\\\\u7701\\\",\\\"\\\\u5957\\\\u9910\\\\u4efd\\\\u91cf\\\":\\\"3\\\\u4eba\\\\u4efd\\\",\\\"\\\\u914d\\\\u9001\\\\u9891\\\\u6b21\\\":\\\"1\\\\u54682\\\\u6b21\\\"}\",\"shop_code\":\"\",\"buy_num\":18629,\"bar_code\":\"\",\"is_return_goods\":1,\"yieldly\":\"\",\"is_comment\":1,\"up_tip\":0,\"up_error_reason\":\"\",\"service\":\"[\\\"\\\\u574f\\\\u5355\\\\u5305\\\\u9000\\\"]\",\"service_mobile\":\"86701701\"}","0","","","","","","0","0","","1","5000g","1","omQYXwNAT5uC15TQqMGxajJzqo4s","0","","","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}","0","0","0","0","0","","0.01","0","1.00");
INSERT INTO fy_order_goods VALUES("22","1","3","1441217402201809121435517740","21","{\"id\":1,\"user_id\":21,\"name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"pic\":\"[\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/5fc1332916aee8884f8095dcb76365ba.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/db0bcda4a25dc457e29484b6b142504e.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/f20a29f350023a47de051e85f22a019c.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/1bde95e73b98544bc2de8d64ba1af22a.png\\\"]\",\"original_price\":\"30.00\",\"settlement_type\":1,\"goods_class_id\":1,\"goods_brand_id\":20,\"show_area\":4,\"detail\":\"&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269999019.jpg&quot; title=&quot;1535419269999019.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269956748.jpg&quot; title=&quot;1535419269956748.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269839241.jpg&quot; title=&quot;1535419269839241.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269460704.jpg&quot; title=&quot;1535419269460704.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269835149.jpg&quot; title=&quot;1535419269835149.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269314509.jpg&quot; title=&quot;1535419269314509.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269170969.jpg&quot; title=&quot;1535419269170969.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270321688.jpg&quot; title=&quot;1535419270321688.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270582547.jpg&quot; title=&quot;1535419270582547.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270622995.jpg&quot; title=&quot;1535419270622995.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;br\\/&gt;&lt;\\/p&gt;\",\"status\":1,\"main_image\":\"\\/pic\\/uploads\\/20180828\\/a11731d4b01a6dd41cdc21d3fdabf0cf.png\",\"subtitle\":\"\",\"create_time\":1535703801,\"update_time\":1535703801,\"orderby\":10,\"click_count\":null,\"goods_weight\":\"5000.000\",\"start_date\":null,\"end_date\":null,\"is_real\":1,\"return_score\":10,\"score_price\":null,\"price_real\":\"0.00\",\"score\":0,\"basic_price\":\"0.01\",\"isdelete\":0,\"store_type\":1,\"free_type\":1,\"postage\":\"0.00\",\"after_sale\":\"&lt;p&gt;\\u574f\\u5355\\u5305\\u9000\\uff1a\\u7b7e\\u6536\\u540e24\\u5c0f\\u65f6\\u5185\\uff0c\\u98df\\u54c1\\u51fa\\u73b0\\u8150\\u8d25\\u53d8\\u8d28\\uff0c\\u5546\\u5bb6\\u627f\\u8bfa24\\u5c0f\\u65f6\\u4e4b\\u5185\\u5904\\u7406\\u3002&lt;\\/p&gt;\",\"routine\":\"{\\\"\\\\u54c1\\\\u724c\\\":\\\"\\\\u751c\\\\u53ef\\\\u679c\\\\u56ed\\\",\\\"\\\\u4fdd\\\\u8d28\\\\u671f\\\":\\\"7\\\\u5929\\\",\\\"\\\\u51c0\\\\u542b\\\\u91cf\\\":\\\"5000g\\\",\\\"\\\\u5305\\\\u88c5\\\\u65b9\\\\u5f0f\\\":\\\"\\\\u5305\\\\u88c5\\\",\\\"\\\\u662f\\\\u5426\\\\u4e3a\\\\u6709\\\\u673a\\\\u98df\\\\u54c1\\\":\\\"\\\\u5426\\\",\\\"\\\\u4ea7\\\\u5730\\\":\\\"\\\\u4e2d\\\\u56fd\\\\u5927\\\\u9646\\\",\\\"\\\\u7701\\\\u4efd\\\":\\\"\\\\u9655\\\\u897f\\\\u7701\\\",\\\"\\\\u5957\\\\u9910\\\\u4efd\\\\u91cf\\\":\\\"3\\\\u4eba\\\\u4efd\\\",\\\"\\\\u914d\\\\u9001\\\\u9891\\\\u6b21\\\":\\\"1\\\\u54682\\\\u6b21\\\"}\",\"shop_code\":\"\",\"buy_num\":18629,\"bar_code\":\"\",\"is_return_goods\":1,\"yieldly\":\"\",\"is_comment\":1,\"up_tip\":0,\"up_error_reason\":\"\",\"service\":\"[\\\"\\\\u574f\\\\u5355\\\\u5305\\\\u9000\\\"]\",\"service_mobile\":\"86701701\"}","0","","","","","","0","0","","1","5000g","1","omQYXwNAT5uC15TQqMGxajJzqo4s","0","","","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}","0","0","0","0","0","","0.01","0","1.00");
INSERT INTO fy_order_goods VALUES("23","1","3","1441217402201809121445528435","21","{\"id\":1,\"user_id\":21,\"name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"pic\":\"[\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/5fc1332916aee8884f8095dcb76365ba.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/db0bcda4a25dc457e29484b6b142504e.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/f20a29f350023a47de051e85f22a019c.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/1bde95e73b98544bc2de8d64ba1af22a.png\\\"]\",\"original_price\":\"30.00\",\"settlement_type\":1,\"goods_class_id\":1,\"goods_brand_id\":20,\"show_area\":4,\"detail\":\"&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269999019.jpg&quot; title=&quot;1535419269999019.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269956748.jpg&quot; title=&quot;1535419269956748.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269839241.jpg&quot; title=&quot;1535419269839241.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269460704.jpg&quot; title=&quot;1535419269460704.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269835149.jpg&quot; title=&quot;1535419269835149.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269314509.jpg&quot; title=&quot;1535419269314509.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269170969.jpg&quot; title=&quot;1535419269170969.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270321688.jpg&quot; title=&quot;1535419270321688.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270582547.jpg&quot; title=&quot;1535419270582547.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270622995.jpg&quot; title=&quot;1535419270622995.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;br\\/&gt;&lt;\\/p&gt;\",\"status\":1,\"main_image\":\"\\/pic\\/uploads\\/20180828\\/a11731d4b01a6dd41cdc21d3fdabf0cf.png\",\"subtitle\":\"\",\"create_time\":1535703801,\"update_time\":1535703801,\"orderby\":10,\"click_count\":null,\"goods_weight\":\"5000.000\",\"start_date\":null,\"end_date\":null,\"is_real\":1,\"return_score\":10,\"score_price\":null,\"price_real\":\"0.00\",\"score\":0,\"basic_price\":\"0.01\",\"isdelete\":0,\"store_type\":1,\"free_type\":1,\"postage\":\"0.00\",\"after_sale\":\"&lt;p&gt;\\u574f\\u5355\\u5305\\u9000\\uff1a\\u7b7e\\u6536\\u540e24\\u5c0f\\u65f6\\u5185\\uff0c\\u98df\\u54c1\\u51fa\\u73b0\\u8150\\u8d25\\u53d8\\u8d28\\uff0c\\u5546\\u5bb6\\u627f\\u8bfa24\\u5c0f\\u65f6\\u4e4b\\u5185\\u5904\\u7406\\u3002&lt;\\/p&gt;\",\"routine\":\"{\\\"\\\\u54c1\\\\u724c\\\":\\\"\\\\u751c\\\\u53ef\\\\u679c\\\\u56ed\\\",\\\"\\\\u4fdd\\\\u8d28\\\\u671f\\\":\\\"7\\\\u5929\\\",\\\"\\\\u51c0\\\\u542b\\\\u91cf\\\":\\\"5000g\\\",\\\"\\\\u5305\\\\u88c5\\\\u65b9\\\\u5f0f\\\":\\\"\\\\u5305\\\\u88c5\\\",\\\"\\\\u662f\\\\u5426\\\\u4e3a\\\\u6709\\\\u673a\\\\u98df\\\\u54c1\\\":\\\"\\\\u5426\\\",\\\"\\\\u4ea7\\\\u5730\\\":\\\"\\\\u4e2d\\\\u56fd\\\\u5927\\\\u9646\\\",\\\"\\\\u7701\\\\u4efd\\\":\\\"\\\\u9655\\\\u897f\\\\u7701\\\",\\\"\\\\u5957\\\\u9910\\\\u4efd\\\\u91cf\\\":\\\"3\\\\u4eba\\\\u4efd\\\",\\\"\\\\u914d\\\\u9001\\\\u9891\\\\u6b21\\\":\\\"1\\\\u54682\\\\u6b21\\\"}\",\"shop_code\":\"\",\"buy_num\":18629,\"bar_code\":\"\",\"is_return_goods\":1,\"yieldly\":\"\",\"is_comment\":1,\"up_tip\":0,\"up_error_reason\":\"\",\"service\":\"[\\\"\\\\u574f\\\\u5355\\\\u5305\\\\u9000\\\"]\",\"service_mobile\":\"86701701\"}","0","","","","","","0","0","","1","5000g","1","omQYXwNAT5uC15TQqMGxajJzqo4s","0","","","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}","0","0","0","0","0","","0.01","0","1.00");
INSERT INTO fy_order_goods VALUES("24","1","3","1441217402201809121451179058","21","{\"id\":1,\"user_id\":21,\"name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"pic\":\"[\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/5fc1332916aee8884f8095dcb76365ba.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/db0bcda4a25dc457e29484b6b142504e.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/f20a29f350023a47de051e85f22a019c.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/1bde95e73b98544bc2de8d64ba1af22a.png\\\"]\",\"original_price\":\"30.00\",\"settlement_type\":1,\"goods_class_id\":1,\"goods_brand_id\":20,\"show_area\":4,\"detail\":\"&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269999019.jpg&quot; title=&quot;1535419269999019.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269956748.jpg&quot; title=&quot;1535419269956748.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269839241.jpg&quot; title=&quot;1535419269839241.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269460704.jpg&quot; title=&quot;1535419269460704.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269835149.jpg&quot; title=&quot;1535419269835149.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269314509.jpg&quot; title=&quot;1535419269314509.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269170969.jpg&quot; title=&quot;1535419269170969.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270321688.jpg&quot; title=&quot;1535419270321688.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270582547.jpg&quot; title=&quot;1535419270582547.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270622995.jpg&quot; title=&quot;1535419270622995.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;br\\/&gt;&lt;\\/p&gt;\",\"status\":1,\"main_image\":\"\\/pic\\/uploads\\/20180828\\/a11731d4b01a6dd41cdc21d3fdabf0cf.png\",\"subtitle\":\"\",\"create_time\":1535703801,\"update_time\":1535703801,\"orderby\":10,\"click_count\":null,\"goods_weight\":\"5000.000\",\"start_date\":null,\"end_date\":null,\"is_real\":1,\"return_score\":10,\"score_price\":null,\"price_real\":\"0.00\",\"score\":0,\"basic_price\":\"0.01\",\"isdelete\":0,\"store_type\":1,\"free_type\":1,\"postage\":\"0.00\",\"after_sale\":\"&lt;p&gt;\\u574f\\u5355\\u5305\\u9000\\uff1a\\u7b7e\\u6536\\u540e24\\u5c0f\\u65f6\\u5185\\uff0c\\u98df\\u54c1\\u51fa\\u73b0\\u8150\\u8d25\\u53d8\\u8d28\\uff0c\\u5546\\u5bb6\\u627f\\u8bfa24\\u5c0f\\u65f6\\u4e4b\\u5185\\u5904\\u7406\\u3002&lt;\\/p&gt;\",\"routine\":\"{\\\"\\\\u54c1\\\\u724c\\\":\\\"\\\\u751c\\\\u53ef\\\\u679c\\\\u56ed\\\",\\\"\\\\u4fdd\\\\u8d28\\\\u671f\\\":\\\"7\\\\u5929\\\",\\\"\\\\u51c0\\\\u542b\\\\u91cf\\\":\\\"5000g\\\",\\\"\\\\u5305\\\\u88c5\\\\u65b9\\\\u5f0f\\\":\\\"\\\\u5305\\\\u88c5\\\",\\\"\\\\u662f\\\\u5426\\\\u4e3a\\\\u6709\\\\u673a\\\\u98df\\\\u54c1\\\":\\\"\\\\u5426\\\",\\\"\\\\u4ea7\\\\u5730\\\":\\\"\\\\u4e2d\\\\u56fd\\\\u5927\\\\u9646\\\",\\\"\\\\u7701\\\\u4efd\\\":\\\"\\\\u9655\\\\u897f\\\\u7701\\\",\\\"\\\\u5957\\\\u9910\\\\u4efd\\\\u91cf\\\":\\\"3\\\\u4eba\\\\u4efd\\\",\\\"\\\\u914d\\\\u9001\\\\u9891\\\\u6b21\\\":\\\"1\\\\u54682\\\\u6b21\\\"}\",\"shop_code\":\"\",\"buy_num\":18629,\"bar_code\":\"\",\"is_return_goods\":1,\"yieldly\":\"\",\"is_comment\":1,\"up_tip\":0,\"up_error_reason\":\"\",\"service\":\"[\\\"\\\\u574f\\\\u5355\\\\u5305\\\\u9000\\\"]\",\"service_mobile\":\"86701701\"}","0","","","","","","0","0","","1","5000g","1","omQYXwNAT5uC15TQqMGxajJzqo4s","0","","","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}","0","0","0","0","0","","0.01","0","1.00");
INSERT INTO fy_order_goods VALUES("25","1","3","1441217402201809121451459157","21","{\"id\":1,\"user_id\":21,\"name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"pic\":\"[\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/5fc1332916aee8884f8095dcb76365ba.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/db0bcda4a25dc457e29484b6b142504e.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/f20a29f350023a47de051e85f22a019c.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/1bde95e73b98544bc2de8d64ba1af22a.png\\\"]\",\"original_price\":\"30.00\",\"settlement_type\":1,\"goods_class_id\":1,\"goods_brand_id\":20,\"show_area\":4,\"detail\":\"&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269999019.jpg&quot; title=&quot;1535419269999019.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269956748.jpg&quot; title=&quot;1535419269956748.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269839241.jpg&quot; title=&quot;1535419269839241.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269460704.jpg&quot; title=&quot;1535419269460704.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269835149.jpg&quot; title=&quot;1535419269835149.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269314509.jpg&quot; title=&quot;1535419269314509.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269170969.jpg&quot; title=&quot;1535419269170969.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270321688.jpg&quot; title=&quot;1535419270321688.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270582547.jpg&quot; title=&quot;1535419270582547.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270622995.jpg&quot; title=&quot;1535419270622995.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;br\\/&gt;&lt;\\/p&gt;\",\"status\":1,\"main_image\":\"\\/pic\\/uploads\\/20180828\\/a11731d4b01a6dd41cdc21d3fdabf0cf.png\",\"subtitle\":\"\",\"create_time\":1535703801,\"update_time\":1535703801,\"orderby\":10,\"click_count\":null,\"goods_weight\":\"5000.000\",\"start_date\":null,\"end_date\":null,\"is_real\":1,\"return_score\":10,\"score_price\":null,\"price_real\":\"0.00\",\"score\":0,\"basic_price\":\"0.01\",\"isdelete\":0,\"store_type\":1,\"free_type\":1,\"postage\":\"0.00\",\"after_sale\":\"&lt;p&gt;\\u574f\\u5355\\u5305\\u9000\\uff1a\\u7b7e\\u6536\\u540e24\\u5c0f\\u65f6\\u5185\\uff0c\\u98df\\u54c1\\u51fa\\u73b0\\u8150\\u8d25\\u53d8\\u8d28\\uff0c\\u5546\\u5bb6\\u627f\\u8bfa24\\u5c0f\\u65f6\\u4e4b\\u5185\\u5904\\u7406\\u3002&lt;\\/p&gt;\",\"routine\":\"{\\\"\\\\u54c1\\\\u724c\\\":\\\"\\\\u751c\\\\u53ef\\\\u679c\\\\u56ed\\\",\\\"\\\\u4fdd\\\\u8d28\\\\u671f\\\":\\\"7\\\\u5929\\\",\\\"\\\\u51c0\\\\u542b\\\\u91cf\\\":\\\"5000g\\\",\\\"\\\\u5305\\\\u88c5\\\\u65b9\\\\u5f0f\\\":\\\"\\\\u5305\\\\u88c5\\\",\\\"\\\\u662f\\\\u5426\\\\u4e3a\\\\u6709\\\\u673a\\\\u98df\\\\u54c1\\\":\\\"\\\\u5426\\\",\\\"\\\\u4ea7\\\\u5730\\\":\\\"\\\\u4e2d\\\\u56fd\\\\u5927\\\\u9646\\\",\\\"\\\\u7701\\\\u4efd\\\":\\\"\\\\u9655\\\\u897f\\\\u7701\\\",\\\"\\\\u5957\\\\u9910\\\\u4efd\\\\u91cf\\\":\\\"3\\\\u4eba\\\\u4efd\\\",\\\"\\\\u914d\\\\u9001\\\\u9891\\\\u6b21\\\":\\\"1\\\\u54682\\\\u6b21\\\"}\",\"shop_code\":\"\",\"buy_num\":18629,\"bar_code\":\"\",\"is_return_goods\":1,\"yieldly\":\"\",\"is_comment\":1,\"up_tip\":0,\"up_error_reason\":\"\",\"service\":\"[\\\"\\\\u574f\\\\u5355\\\\u5305\\\\u9000\\\"]\",\"service_mobile\":\"86701701\"}","0","","","","","","0","0","","1","5000g","1","omQYXwNAT5uC15TQqMGxajJzqo4s","0","","","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}","0","0","0","0","0","","0.01","0","1.00");
INSERT INTO fy_order_goods VALUES("26","1","3","1441217402201809121452233411","21","{\"id\":1,\"user_id\":21,\"name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"pic\":\"[\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/5fc1332916aee8884f8095dcb76365ba.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/db0bcda4a25dc457e29484b6b142504e.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/f20a29f350023a47de051e85f22a019c.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/1bde95e73b98544bc2de8d64ba1af22a.png\\\"]\",\"original_price\":\"30.00\",\"settlement_type\":1,\"goods_class_id\":1,\"goods_brand_id\":20,\"show_area\":4,\"detail\":\"&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269999019.jpg&quot; title=&quot;1535419269999019.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269956748.jpg&quot; title=&quot;1535419269956748.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269839241.jpg&quot; title=&quot;1535419269839241.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269460704.jpg&quot; title=&quot;1535419269460704.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269835149.jpg&quot; title=&quot;1535419269835149.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269314509.jpg&quot; title=&quot;1535419269314509.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269170969.jpg&quot; title=&quot;1535419269170969.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270321688.jpg&quot; title=&quot;1535419270321688.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270582547.jpg&quot; title=&quot;1535419270582547.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270622995.jpg&quot; title=&quot;1535419270622995.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;br\\/&gt;&lt;\\/p&gt;\",\"status\":1,\"main_image\":\"\\/pic\\/uploads\\/20180828\\/a11731d4b01a6dd41cdc21d3fdabf0cf.png\",\"subtitle\":\"\",\"create_time\":1535703801,\"update_time\":1535703801,\"orderby\":10,\"click_count\":null,\"goods_weight\":\"5000.000\",\"start_date\":null,\"end_date\":null,\"is_real\":1,\"return_score\":10,\"score_price\":null,\"price_real\":\"0.00\",\"score\":0,\"basic_price\":\"0.01\",\"isdelete\":0,\"store_type\":1,\"free_type\":1,\"postage\":\"0.00\",\"after_sale\":\"&lt;p&gt;\\u574f\\u5355\\u5305\\u9000\\uff1a\\u7b7e\\u6536\\u540e24\\u5c0f\\u65f6\\u5185\\uff0c\\u98df\\u54c1\\u51fa\\u73b0\\u8150\\u8d25\\u53d8\\u8d28\\uff0c\\u5546\\u5bb6\\u627f\\u8bfa24\\u5c0f\\u65f6\\u4e4b\\u5185\\u5904\\u7406\\u3002&lt;\\/p&gt;\",\"routine\":\"{\\\"\\\\u54c1\\\\u724c\\\":\\\"\\\\u751c\\\\u53ef\\\\u679c\\\\u56ed\\\",\\\"\\\\u4fdd\\\\u8d28\\\\u671f\\\":\\\"7\\\\u5929\\\",\\\"\\\\u51c0\\\\u542b\\\\u91cf\\\":\\\"5000g\\\",\\\"\\\\u5305\\\\u88c5\\\\u65b9\\\\u5f0f\\\":\\\"\\\\u5305\\\\u88c5\\\",\\\"\\\\u662f\\\\u5426\\\\u4e3a\\\\u6709\\\\u673a\\\\u98df\\\\u54c1\\\":\\\"\\\\u5426\\\",\\\"\\\\u4ea7\\\\u5730\\\":\\\"\\\\u4e2d\\\\u56fd\\\\u5927\\\\u9646\\\",\\\"\\\\u7701\\\\u4efd\\\":\\\"\\\\u9655\\\\u897f\\\\u7701\\\",\\\"\\\\u5957\\\\u9910\\\\u4efd\\\\u91cf\\\":\\\"3\\\\u4eba\\\\u4efd\\\",\\\"\\\\u914d\\\\u9001\\\\u9891\\\\u6b21\\\":\\\"1\\\\u54682\\\\u6b21\\\"}\",\"shop_code\":\"\",\"buy_num\":18629,\"bar_code\":\"\",\"is_return_goods\":1,\"yieldly\":\"\",\"is_comment\":1,\"up_tip\":0,\"up_error_reason\":\"\",\"service\":\"[\\\"\\\\u574f\\\\u5355\\\\u5305\\\\u9000\\\"]\",\"service_mobile\":\"86701701\"}","0","","","","","","0","0","","1","5000g","1","omQYXwNAT5uC15TQqMGxajJzqo4s","0","","","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}","0","0","0","0","0","","0.01","0","1.00");
INSERT INTO fy_order_goods VALUES("27","1","3","1441217402201809121453538620","21","{\"id\":1,\"user_id\":21,\"name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"pic\":\"[\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/5fc1332916aee8884f8095dcb76365ba.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/db0bcda4a25dc457e29484b6b142504e.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/f20a29f350023a47de051e85f22a019c.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/1bde95e73b98544bc2de8d64ba1af22a.png\\\"]\",\"original_price\":\"30.00\",\"settlement_type\":1,\"goods_class_id\":1,\"goods_brand_id\":20,\"show_area\":4,\"detail\":\"&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269999019.jpg&quot; title=&quot;1535419269999019.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269956748.jpg&quot; title=&quot;1535419269956748.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269839241.jpg&quot; title=&quot;1535419269839241.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269460704.jpg&quot; title=&quot;1535419269460704.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269835149.jpg&quot; title=&quot;1535419269835149.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269314509.jpg&quot; title=&quot;1535419269314509.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269170969.jpg&quot; title=&quot;1535419269170969.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270321688.jpg&quot; title=&quot;1535419270321688.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270582547.jpg&quot; title=&quot;1535419270582547.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270622995.jpg&quot; title=&quot;1535419270622995.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;br\\/&gt;&lt;\\/p&gt;\",\"status\":1,\"main_image\":\"\\/pic\\/uploads\\/20180828\\/a11731d4b01a6dd41cdc21d3fdabf0cf.png\",\"subtitle\":\"\",\"create_time\":1535703801,\"update_time\":1535703801,\"orderby\":10,\"click_count\":null,\"goods_weight\":\"5000.000\",\"start_date\":null,\"end_date\":null,\"is_real\":1,\"return_score\":10,\"score_price\":null,\"price_real\":\"0.00\",\"score\":0,\"basic_price\":\"0.01\",\"isdelete\":0,\"store_type\":1,\"free_type\":1,\"postage\":\"0.00\",\"after_sale\":\"&lt;p&gt;\\u574f\\u5355\\u5305\\u9000\\uff1a\\u7b7e\\u6536\\u540e24\\u5c0f\\u65f6\\u5185\\uff0c\\u98df\\u54c1\\u51fa\\u73b0\\u8150\\u8d25\\u53d8\\u8d28\\uff0c\\u5546\\u5bb6\\u627f\\u8bfa24\\u5c0f\\u65f6\\u4e4b\\u5185\\u5904\\u7406\\u3002&lt;\\/p&gt;\",\"routine\":\"{\\\"\\\\u54c1\\\\u724c\\\":\\\"\\\\u751c\\\\u53ef\\\\u679c\\\\u56ed\\\",\\\"\\\\u4fdd\\\\u8d28\\\\u671f\\\":\\\"7\\\\u5929\\\",\\\"\\\\u51c0\\\\u542b\\\\u91cf\\\":\\\"5000g\\\",\\\"\\\\u5305\\\\u88c5\\\\u65b9\\\\u5f0f\\\":\\\"\\\\u5305\\\\u88c5\\\",\\\"\\\\u662f\\\\u5426\\\\u4e3a\\\\u6709\\\\u673a\\\\u98df\\\\u54c1\\\":\\\"\\\\u5426\\\",\\\"\\\\u4ea7\\\\u5730\\\":\\\"\\\\u4e2d\\\\u56fd\\\\u5927\\\\u9646\\\",\\\"\\\\u7701\\\\u4efd\\\":\\\"\\\\u9655\\\\u897f\\\\u7701\\\",\\\"\\\\u5957\\\\u9910\\\\u4efd\\\\u91cf\\\":\\\"3\\\\u4eba\\\\u4efd\\\",\\\"\\\\u914d\\\\u9001\\\\u9891\\\\u6b21\\\":\\\"1\\\\u54682\\\\u6b21\\\"}\",\"shop_code\":\"\",\"buy_num\":18629,\"bar_code\":\"\",\"is_return_goods\":1,\"yieldly\":\"\",\"is_comment\":1,\"up_tip\":0,\"up_error_reason\":\"\",\"service\":\"[\\\"\\\\u574f\\\\u5355\\\\u5305\\\\u9000\\\"]\",\"service_mobile\":\"86701701\"}","0","","","","","","0","0","","1","5000g","1","omQYXwNAT5uC15TQqMGxajJzqo4s","0","","","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}","0","0","0","0","0","","0.01","0","1.00");
INSERT INTO fy_order_goods VALUES("28","1","3","1441217402201809121455221163","21","{\"id\":1,\"user_id\":21,\"name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"pic\":\"[\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/5fc1332916aee8884f8095dcb76365ba.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/db0bcda4a25dc457e29484b6b142504e.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/f20a29f350023a47de051e85f22a019c.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/1bde95e73b98544bc2de8d64ba1af22a.png\\\"]\",\"original_price\":\"30.00\",\"settlement_type\":1,\"goods_class_id\":1,\"goods_brand_id\":20,\"show_area\":4,\"detail\":\"&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269999019.jpg&quot; title=&quot;1535419269999019.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269956748.jpg&quot; title=&quot;1535419269956748.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269839241.jpg&quot; title=&quot;1535419269839241.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269460704.jpg&quot; title=&quot;1535419269460704.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269835149.jpg&quot; title=&quot;1535419269835149.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269314509.jpg&quot; title=&quot;1535419269314509.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269170969.jpg&quot; title=&quot;1535419269170969.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270321688.jpg&quot; title=&quot;1535419270321688.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270582547.jpg&quot; title=&quot;1535419270582547.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270622995.jpg&quot; title=&quot;1535419270622995.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;br\\/&gt;&lt;\\/p&gt;\",\"status\":1,\"main_image\":\"\\/pic\\/uploads\\/20180828\\/a11731d4b01a6dd41cdc21d3fdabf0cf.png\",\"subtitle\":\"\",\"create_time\":1535703801,\"update_time\":1535703801,\"orderby\":10,\"click_count\":null,\"goods_weight\":\"5000.000\",\"start_date\":null,\"end_date\":null,\"is_real\":1,\"return_score\":10,\"score_price\":null,\"price_real\":\"0.00\",\"score\":0,\"basic_price\":\"0.01\",\"isdelete\":0,\"store_type\":1,\"free_type\":1,\"postage\":\"0.00\",\"after_sale\":\"&lt;p&gt;\\u574f\\u5355\\u5305\\u9000\\uff1a\\u7b7e\\u6536\\u540e24\\u5c0f\\u65f6\\u5185\\uff0c\\u98df\\u54c1\\u51fa\\u73b0\\u8150\\u8d25\\u53d8\\u8d28\\uff0c\\u5546\\u5bb6\\u627f\\u8bfa24\\u5c0f\\u65f6\\u4e4b\\u5185\\u5904\\u7406\\u3002&lt;\\/p&gt;\",\"routine\":\"{\\\"\\\\u54c1\\\\u724c\\\":\\\"\\\\u751c\\\\u53ef\\\\u679c\\\\u56ed\\\",\\\"\\\\u4fdd\\\\u8d28\\\\u671f\\\":\\\"7\\\\u5929\\\",\\\"\\\\u51c0\\\\u542b\\\\u91cf\\\":\\\"5000g\\\",\\\"\\\\u5305\\\\u88c5\\\\u65b9\\\\u5f0f\\\":\\\"\\\\u5305\\\\u88c5\\\",\\\"\\\\u662f\\\\u5426\\\\u4e3a\\\\u6709\\\\u673a\\\\u98df\\\\u54c1\\\":\\\"\\\\u5426\\\",\\\"\\\\u4ea7\\\\u5730\\\":\\\"\\\\u4e2d\\\\u56fd\\\\u5927\\\\u9646\\\",\\\"\\\\u7701\\\\u4efd\\\":\\\"\\\\u9655\\\\u897f\\\\u7701\\\",\\\"\\\\u5957\\\\u9910\\\\u4efd\\\\u91cf\\\":\\\"3\\\\u4eba\\\\u4efd\\\",\\\"\\\\u914d\\\\u9001\\\\u9891\\\\u6b21\\\":\\\"1\\\\u54682\\\\u6b21\\\"}\",\"shop_code\":\"\",\"buy_num\":18629,\"bar_code\":\"\",\"is_return_goods\":1,\"yieldly\":\"\",\"is_comment\":1,\"up_tip\":0,\"up_error_reason\":\"\",\"service\":\"[\\\"\\\\u574f\\\\u5355\\\\u5305\\\\u9000\\\"]\",\"service_mobile\":\"86701701\"}","0","","","","","","0","0","","1","5000g","1","omQYXwNAT5uC15TQqMGxajJzqo4s","0","","","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}","0","0","0","0","0","","0.01","0","1.00");
INSERT INTO fy_order_goods VALUES("29","1","3","1441217402201809121455372812","21","{\"id\":1,\"user_id\":21,\"name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"pic\":\"[\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/5fc1332916aee8884f8095dcb76365ba.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/db0bcda4a25dc457e29484b6b142504e.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/f20a29f350023a47de051e85f22a019c.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/1bde95e73b98544bc2de8d64ba1af22a.png\\\"]\",\"original_price\":\"30.00\",\"settlement_type\":1,\"goods_class_id\":1,\"goods_brand_id\":20,\"show_area\":4,\"detail\":\"&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269999019.jpg&quot; title=&quot;1535419269999019.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269956748.jpg&quot; title=&quot;1535419269956748.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269839241.jpg&quot; title=&quot;1535419269839241.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269460704.jpg&quot; title=&quot;1535419269460704.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269835149.jpg&quot; title=&quot;1535419269835149.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269314509.jpg&quot; title=&quot;1535419269314509.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269170969.jpg&quot; title=&quot;1535419269170969.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270321688.jpg&quot; title=&quot;1535419270321688.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270582547.jpg&quot; title=&quot;1535419270582547.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270622995.jpg&quot; title=&quot;1535419270622995.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;br\\/&gt;&lt;\\/p&gt;\",\"status\":1,\"main_image\":\"\\/pic\\/uploads\\/20180828\\/a11731d4b01a6dd41cdc21d3fdabf0cf.png\",\"subtitle\":\"\",\"create_time\":1535703801,\"update_time\":1535703801,\"orderby\":10,\"click_count\":null,\"goods_weight\":\"5000.000\",\"start_date\":null,\"end_date\":null,\"is_real\":1,\"return_score\":10,\"score_price\":null,\"price_real\":\"0.00\",\"score\":0,\"basic_price\":\"0.01\",\"isdelete\":0,\"store_type\":1,\"free_type\":1,\"postage\":\"0.00\",\"after_sale\":\"&lt;p&gt;\\u574f\\u5355\\u5305\\u9000\\uff1a\\u7b7e\\u6536\\u540e24\\u5c0f\\u65f6\\u5185\\uff0c\\u98df\\u54c1\\u51fa\\u73b0\\u8150\\u8d25\\u53d8\\u8d28\\uff0c\\u5546\\u5bb6\\u627f\\u8bfa24\\u5c0f\\u65f6\\u4e4b\\u5185\\u5904\\u7406\\u3002&lt;\\/p&gt;\",\"routine\":\"{\\\"\\\\u54c1\\\\u724c\\\":\\\"\\\\u751c\\\\u53ef\\\\u679c\\\\u56ed\\\",\\\"\\\\u4fdd\\\\u8d28\\\\u671f\\\":\\\"7\\\\u5929\\\",\\\"\\\\u51c0\\\\u542b\\\\u91cf\\\":\\\"5000g\\\",\\\"\\\\u5305\\\\u88c5\\\\u65b9\\\\u5f0f\\\":\\\"\\\\u5305\\\\u88c5\\\",\\\"\\\\u662f\\\\u5426\\\\u4e3a\\\\u6709\\\\u673a\\\\u98df\\\\u54c1\\\":\\\"\\\\u5426\\\",\\\"\\\\u4ea7\\\\u5730\\\":\\\"\\\\u4e2d\\\\u56fd\\\\u5927\\\\u9646\\\",\\\"\\\\u7701\\\\u4efd\\\":\\\"\\\\u9655\\\\u897f\\\\u7701\\\",\\\"\\\\u5957\\\\u9910\\\\u4efd\\\\u91cf\\\":\\\"3\\\\u4eba\\\\u4efd\\\",\\\"\\\\u914d\\\\u9001\\\\u9891\\\\u6b21\\\":\\\"1\\\\u54682\\\\u6b21\\\"}\",\"shop_code\":\"\",\"buy_num\":18629,\"bar_code\":\"\",\"is_return_goods\":1,\"yieldly\":\"\",\"is_comment\":1,\"up_tip\":0,\"up_error_reason\":\"\",\"service\":\"[\\\"\\\\u574f\\\\u5355\\\\u5305\\\\u9000\\\"]\",\"service_mobile\":\"86701701\"}","0","","","","","","0","0","","1","5000g","1","omQYXwNAT5uC15TQqMGxajJzqo4s","0","","","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}","0","0","0","0","0","","0.01","0","1.00");
INSERT INTO fy_order_goods VALUES("30","1","3","1441217402201809121456249000","21","{\"id\":1,\"user_id\":21,\"name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"pic\":\"[\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/5fc1332916aee8884f8095dcb76365ba.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/db0bcda4a25dc457e29484b6b142504e.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/f20a29f350023a47de051e85f22a019c.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/1bde95e73b98544bc2de8d64ba1af22a.png\\\"]\",\"original_price\":\"30.00\",\"settlement_type\":1,\"goods_class_id\":1,\"goods_brand_id\":20,\"show_area\":4,\"detail\":\"&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269999019.jpg&quot; title=&quot;1535419269999019.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269956748.jpg&quot; title=&quot;1535419269956748.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269839241.jpg&quot; title=&quot;1535419269839241.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269460704.jpg&quot; title=&quot;1535419269460704.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269835149.jpg&quot; title=&quot;1535419269835149.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269314509.jpg&quot; title=&quot;1535419269314509.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269170969.jpg&quot; title=&quot;1535419269170969.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270321688.jpg&quot; title=&quot;1535419270321688.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270582547.jpg&quot; title=&quot;1535419270582547.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270622995.jpg&quot; title=&quot;1535419270622995.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;br\\/&gt;&lt;\\/p&gt;\",\"status\":1,\"main_image\":\"\\/pic\\/uploads\\/20180828\\/a11731d4b01a6dd41cdc21d3fdabf0cf.png\",\"subtitle\":\"\",\"create_time\":1535703801,\"update_time\":1535703801,\"orderby\":10,\"click_count\":null,\"goods_weight\":\"5000.000\",\"start_date\":null,\"end_date\":null,\"is_real\":1,\"return_score\":10,\"score_price\":null,\"price_real\":\"0.00\",\"score\":0,\"basic_price\":\"0.01\",\"isdelete\":0,\"store_type\":1,\"free_type\":1,\"postage\":\"0.00\",\"after_sale\":\"&lt;p&gt;\\u574f\\u5355\\u5305\\u9000\\uff1a\\u7b7e\\u6536\\u540e24\\u5c0f\\u65f6\\u5185\\uff0c\\u98df\\u54c1\\u51fa\\u73b0\\u8150\\u8d25\\u53d8\\u8d28\\uff0c\\u5546\\u5bb6\\u627f\\u8bfa24\\u5c0f\\u65f6\\u4e4b\\u5185\\u5904\\u7406\\u3002&lt;\\/p&gt;\",\"routine\":\"{\\\"\\\\u54c1\\\\u724c\\\":\\\"\\\\u751c\\\\u53ef\\\\u679c\\\\u56ed\\\",\\\"\\\\u4fdd\\\\u8d28\\\\u671f\\\":\\\"7\\\\u5929\\\",\\\"\\\\u51c0\\\\u542b\\\\u91cf\\\":\\\"5000g\\\",\\\"\\\\u5305\\\\u88c5\\\\u65b9\\\\u5f0f\\\":\\\"\\\\u5305\\\\u88c5\\\",\\\"\\\\u662f\\\\u5426\\\\u4e3a\\\\u6709\\\\u673a\\\\u98df\\\\u54c1\\\":\\\"\\\\u5426\\\",\\\"\\\\u4ea7\\\\u5730\\\":\\\"\\\\u4e2d\\\\u56fd\\\\u5927\\\\u9646\\\",\\\"\\\\u7701\\\\u4efd\\\":\\\"\\\\u9655\\\\u897f\\\\u7701\\\",\\\"\\\\u5957\\\\u9910\\\\u4efd\\\\u91cf\\\":\\\"3\\\\u4eba\\\\u4efd\\\",\\\"\\\\u914d\\\\u9001\\\\u9891\\\\u6b21\\\":\\\"1\\\\u54682\\\\u6b21\\\"}\",\"shop_code\":\"\",\"buy_num\":18629,\"bar_code\":\"\",\"is_return_goods\":1,\"yieldly\":\"\",\"is_comment\":1,\"up_tip\":0,\"up_error_reason\":\"\",\"service\":\"[\\\"\\\\u574f\\\\u5355\\\\u5305\\\\u9000\\\"]\",\"service_mobile\":\"86701701\"}","0","","","","","","0","0","","1","5000g","1","omQYXwNAT5uC15TQqMGxajJzqo4s","0","","","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}","0","0","0","0","0","","0.01","0","1.00");
INSERT INTO fy_order_goods VALUES("31","1","3","1441217402201809121457258503","21","{\"id\":1,\"user_id\":21,\"name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"pic\":\"[\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/5fc1332916aee8884f8095dcb76365ba.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/db0bcda4a25dc457e29484b6b142504e.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/f20a29f350023a47de051e85f22a019c.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/1bde95e73b98544bc2de8d64ba1af22a.png\\\"]\",\"original_price\":\"30.00\",\"settlement_type\":1,\"goods_class_id\":1,\"goods_brand_id\":20,\"show_area\":4,\"detail\":\"&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269999019.jpg&quot; title=&quot;1535419269999019.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269956748.jpg&quot; title=&quot;1535419269956748.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269839241.jpg&quot; title=&quot;1535419269839241.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269460704.jpg&quot; title=&quot;1535419269460704.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269835149.jpg&quot; title=&quot;1535419269835149.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269314509.jpg&quot; title=&quot;1535419269314509.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269170969.jpg&quot; title=&quot;1535419269170969.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270321688.jpg&quot; title=&quot;1535419270321688.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270582547.jpg&quot; title=&quot;1535419270582547.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270622995.jpg&quot; title=&quot;1535419270622995.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;br\\/&gt;&lt;\\/p&gt;\",\"status\":1,\"main_image\":\"\\/pic\\/uploads\\/20180828\\/a11731d4b01a6dd41cdc21d3fdabf0cf.png\",\"subtitle\":\"\",\"create_time\":1535703801,\"update_time\":1535703801,\"orderby\":10,\"click_count\":null,\"goods_weight\":\"5000.000\",\"start_date\":null,\"end_date\":null,\"is_real\":1,\"return_score\":10,\"score_price\":null,\"price_real\":\"0.00\",\"score\":0,\"basic_price\":\"0.01\",\"isdelete\":0,\"store_type\":1,\"free_type\":1,\"postage\":\"0.00\",\"after_sale\":\"&lt;p&gt;\\u574f\\u5355\\u5305\\u9000\\uff1a\\u7b7e\\u6536\\u540e24\\u5c0f\\u65f6\\u5185\\uff0c\\u98df\\u54c1\\u51fa\\u73b0\\u8150\\u8d25\\u53d8\\u8d28\\uff0c\\u5546\\u5bb6\\u627f\\u8bfa24\\u5c0f\\u65f6\\u4e4b\\u5185\\u5904\\u7406\\u3002&lt;\\/p&gt;\",\"routine\":\"{\\\"\\\\u54c1\\\\u724c\\\":\\\"\\\\u751c\\\\u53ef\\\\u679c\\\\u56ed\\\",\\\"\\\\u4fdd\\\\u8d28\\\\u671f\\\":\\\"7\\\\u5929\\\",\\\"\\\\u51c0\\\\u542b\\\\u91cf\\\":\\\"5000g\\\",\\\"\\\\u5305\\\\u88c5\\\\u65b9\\\\u5f0f\\\":\\\"\\\\u5305\\\\u88c5\\\",\\\"\\\\u662f\\\\u5426\\\\u4e3a\\\\u6709\\\\u673a\\\\u98df\\\\u54c1\\\":\\\"\\\\u5426\\\",\\\"\\\\u4ea7\\\\u5730\\\":\\\"\\\\u4e2d\\\\u56fd\\\\u5927\\\\u9646\\\",\\\"\\\\u7701\\\\u4efd\\\":\\\"\\\\u9655\\\\u897f\\\\u7701\\\",\\\"\\\\u5957\\\\u9910\\\\u4efd\\\\u91cf\\\":\\\"3\\\\u4eba\\\\u4efd\\\",\\\"\\\\u914d\\\\u9001\\\\u9891\\\\u6b21\\\":\\\"1\\\\u54682\\\\u6b21\\\"}\",\"shop_code\":\"\",\"buy_num\":18629,\"bar_code\":\"\",\"is_return_goods\":1,\"yieldly\":\"\",\"is_comment\":1,\"up_tip\":0,\"up_error_reason\":\"\",\"service\":\"[\\\"\\\\u574f\\\\u5355\\\\u5305\\\\u9000\\\"]\",\"service_mobile\":\"86701701\"}","0","","","","","","0","0","","1","5000g","1","omQYXwNAT5uC15TQqMGxajJzqo4s","0","","","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}","0","0","0","0","0","","0.01","0","1.00");
INSERT INTO fy_order_goods VALUES("32","1","3","1441217402201809121459548354","21","{\"id\":1,\"user_id\":21,\"name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"pic\":\"[\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/5fc1332916aee8884f8095dcb76365ba.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/db0bcda4a25dc457e29484b6b142504e.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/f20a29f350023a47de051e85f22a019c.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/1bde95e73b98544bc2de8d64ba1af22a.png\\\"]\",\"original_price\":\"30.00\",\"settlement_type\":1,\"goods_class_id\":1,\"goods_brand_id\":20,\"show_area\":4,\"detail\":\"&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269999019.jpg&quot; title=&quot;1535419269999019.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269956748.jpg&quot; title=&quot;1535419269956748.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269839241.jpg&quot; title=&quot;1535419269839241.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269460704.jpg&quot; title=&quot;1535419269460704.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269835149.jpg&quot; title=&quot;1535419269835149.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269314509.jpg&quot; title=&quot;1535419269314509.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269170969.jpg&quot; title=&quot;1535419269170969.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270321688.jpg&quot; title=&quot;1535419270321688.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270582547.jpg&quot; title=&quot;1535419270582547.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270622995.jpg&quot; title=&quot;1535419270622995.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;br\\/&gt;&lt;\\/p&gt;\",\"status\":1,\"main_image\":\"\\/pic\\/uploads\\/20180828\\/a11731d4b01a6dd41cdc21d3fdabf0cf.png\",\"subtitle\":\"\",\"create_time\":1535703801,\"update_time\":1535703801,\"orderby\":10,\"click_count\":null,\"goods_weight\":\"5000.000\",\"start_date\":null,\"end_date\":null,\"is_real\":1,\"return_score\":10,\"score_price\":null,\"price_real\":\"0.00\",\"score\":0,\"basic_price\":\"0.01\",\"isdelete\":0,\"store_type\":1,\"free_type\":1,\"postage\":\"0.00\",\"after_sale\":\"&lt;p&gt;\\u574f\\u5355\\u5305\\u9000\\uff1a\\u7b7e\\u6536\\u540e24\\u5c0f\\u65f6\\u5185\\uff0c\\u98df\\u54c1\\u51fa\\u73b0\\u8150\\u8d25\\u53d8\\u8d28\\uff0c\\u5546\\u5bb6\\u627f\\u8bfa24\\u5c0f\\u65f6\\u4e4b\\u5185\\u5904\\u7406\\u3002&lt;\\/p&gt;\",\"routine\":\"{\\\"\\\\u54c1\\\\u724c\\\":\\\"\\\\u751c\\\\u53ef\\\\u679c\\\\u56ed\\\",\\\"\\\\u4fdd\\\\u8d28\\\\u671f\\\":\\\"7\\\\u5929\\\",\\\"\\\\u51c0\\\\u542b\\\\u91cf\\\":\\\"5000g\\\",\\\"\\\\u5305\\\\u88c5\\\\u65b9\\\\u5f0f\\\":\\\"\\\\u5305\\\\u88c5\\\",\\\"\\\\u662f\\\\u5426\\\\u4e3a\\\\u6709\\\\u673a\\\\u98df\\\\u54c1\\\":\\\"\\\\u5426\\\",\\\"\\\\u4ea7\\\\u5730\\\":\\\"\\\\u4e2d\\\\u56fd\\\\u5927\\\\u9646\\\",\\\"\\\\u7701\\\\u4efd\\\":\\\"\\\\u9655\\\\u897f\\\\u7701\\\",\\\"\\\\u5957\\\\u9910\\\\u4efd\\\\u91cf\\\":\\\"3\\\\u4eba\\\\u4efd\\\",\\\"\\\\u914d\\\\u9001\\\\u9891\\\\u6b21\\\":\\\"1\\\\u54682\\\\u6b21\\\"}\",\"shop_code\":\"\",\"buy_num\":18629,\"bar_code\":\"\",\"is_return_goods\":1,\"yieldly\":\"\",\"is_comment\":1,\"up_tip\":0,\"up_error_reason\":\"\",\"service\":\"[\\\"\\\\u574f\\\\u5355\\\\u5305\\\\u9000\\\"]\",\"service_mobile\":\"86701701\"}","0","","","","","","0","0","","1","5000g","1","omQYXwNAT5uC15TQqMGxajJzqo4s","0","","","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}","0","0","0","0","0","","0.01","0","1.00");
INSERT INTO fy_order_goods VALUES("33","1","3","1441217402201809121501022548","21","{\"id\":1,\"user_id\":21,\"name\":\"\\u9655\\u897f\\u560e\\u5566\\u82f9\\u679c\\u6c34\\u679c\\u65b0\\u9c9c10\\u65a4\\u5f53\\u5b63\\u6574\\u7bb1\\u73b0\\u6458\\u6279\\u53d1\\u5305\\u90ae\\u5c0f\\u7ea2\\u5bcc\\u58eb\",\"pic\":\"[\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/5fc1332916aee8884f8095dcb76365ba.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/db0bcda4a25dc457e29484b6b142504e.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/f20a29f350023a47de051e85f22a019c.png\\\",\\\"\\\\\\/pic\\\\\\/uploads\\\\\\/20180828\\\\\\/1bde95e73b98544bc2de8d64ba1af22a.png\\\"]\",\"original_price\":\"30.00\",\"settlement_type\":1,\"goods_class_id\":1,\"goods_brand_id\":20,\"show_area\":4,\"detail\":\"&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269999019.jpg&quot; title=&quot;1535419269999019.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269956748.jpg&quot; title=&quot;1535419269956748.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269839241.jpg&quot; title=&quot;1535419269839241.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269460704.jpg&quot; title=&quot;1535419269460704.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269835149.jpg&quot; title=&quot;1535419269835149.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269314509.jpg&quot; title=&quot;1535419269314509.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419269170969.jpg&quot; title=&quot;1535419269170969.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270321688.jpg&quot; title=&quot;1535419270321688.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270582547.jpg&quot; title=&quot;1535419270582547.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;img src=&quot;\\/ueditor\\/php\\/upload\\/image\\/20180828\\/1535419270622995.jpg&quot; title=&quot;1535419270622995.jpg&quot;\\/&gt;&lt;\\/p&gt;&lt;p&gt;&lt;br\\/&gt;&lt;\\/p&gt;\",\"status\":1,\"main_image\":\"\\/pic\\/uploads\\/20180828\\/a11731d4b01a6dd41cdc21d3fdabf0cf.png\",\"subtitle\":\"\",\"create_time\":1535703801,\"update_time\":1535703801,\"orderby\":10,\"click_count\":null,\"goods_weight\":\"5000.000\",\"start_date\":null,\"end_date\":null,\"is_real\":1,\"return_score\":10,\"score_price\":null,\"price_real\":\"0.00\",\"score\":0,\"basic_price\":\"0.01\",\"isdelete\":0,\"store_type\":1,\"free_type\":1,\"postage\":\"0.00\",\"after_sale\":\"&lt;p&gt;\\u574f\\u5355\\u5305\\u9000\\uff1a\\u7b7e\\u6536\\u540e24\\u5c0f\\u65f6\\u5185\\uff0c\\u98df\\u54c1\\u51fa\\u73b0\\u8150\\u8d25\\u53d8\\u8d28\\uff0c\\u5546\\u5bb6\\u627f\\u8bfa24\\u5c0f\\u65f6\\u4e4b\\u5185\\u5904\\u7406\\u3002&lt;\\/p&gt;\",\"routine\":\"{\\\"\\\\u54c1\\\\u724c\\\":\\\"\\\\u751c\\\\u53ef\\\\u679c\\\\u56ed\\\",\\\"\\\\u4fdd\\\\u8d28\\\\u671f\\\":\\\"7\\\\u5929\\\",\\\"\\\\u51c0\\\\u542b\\\\u91cf\\\":\\\"5000g\\\",\\\"\\\\u5305\\\\u88c5\\\\u65b9\\\\u5f0f\\\":\\\"\\\\u5305\\\\u88c5\\\",\\\"\\\\u662f\\\\u5426\\\\u4e3a\\\\u6709\\\\u673a\\\\u98df\\\\u54c1\\\":\\\"\\\\u5426\\\",\\\"\\\\u4ea7\\\\u5730\\\":\\\"\\\\u4e2d\\\\u56fd\\\\u5927\\\\u9646\\\",\\\"\\\\u7701\\\\u4efd\\\":\\\"\\\\u9655\\\\u897f\\\\u7701\\\",\\\"\\\\u5957\\\\u9910\\\\u4efd\\\\u91cf\\\":\\\"3\\\\u4eba\\\\u4efd\\\",\\\"\\\\u914d\\\\u9001\\\\u9891\\\\u6b21\\\":\\\"1\\\\u54682\\\\u6b21\\\"}\",\"shop_code\":\"\",\"buy_num\":18629,\"bar_code\":\"\",\"is_return_goods\":1,\"yieldly\":\"\",\"is_comment\":1,\"up_tip\":0,\"up_error_reason\":\"\",\"service\":\"[\\\"\\\\u574f\\\\u5355\\\\u5305\\\\u9000\\\"]\",\"service_mobile\":\"86701701\"}","0","","","","","","0","0","","1","5000g","1","omQYXwNAT5uC15TQqMGxajJzqo4s","0","","","{\"id\":1,\"uid\":1,\"name\":\"dddd\",\"mobile\":\"18285111561\",\"address\":\"\\u5317\\u4eac\\u5e02\\u4e1c\\u57ce\\u533a\\u4e1c\\u534e\\u95e8\\u8857\\u9053\",\"street\":\"eeeeeeeee\",\"status\":1,\"addtime\":1535705561,\"updatetime\":1535705561}","0","0","0","0","0","","0.01","0","1.00");



DROP TABLE fy_score_log;

CREATE TABLE `fy_score_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '积分日志表',
  `uid` int(10) DEFAULT NULL COMMENT '用户ID',
  `openid` varchar(255) DEFAULT NULL COMMENT '用户openid',
  `source_id` int(11) DEFAULT '0' COMMENT '积分来源ID',
  `source` tinyint(1) NOT NULL COMMENT '1注册|2签到|3完成任务|4升级|5购买商品|6参与活动|7兑换商品|8兑换积分抵扣券|9抵扣付款金额|10积分清零11评论',
  `score` decimal(10,2) NOT NULL COMMENT '增减的积分',
  `time` int(11) NOT NULL COMMENT '积分增减时间',
  `status` tinyint(1) DEFAULT '1' COMMENT '1启用|0禁用',
  `isdelete` tinyint(1) DEFAULT '0' COMMENT '1删除|0未删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

INSERT INTO fy_score_log VALUES("1","1","omQYXwNAT5uC15TQqMGxajJzqo4s","0","1","10.00","1535705545","1","0");
INSERT INTO fy_score_log VALUES("2","2","omQYXwM8TEkiBZR7Ldm891OOWbNQ","0","1","10.00","1535705741","1","0");
INSERT INTO fy_score_log VALUES("3","2","omQYXwM8TEkiBZR7Ldm891OOWbNQ","0","7","0.00","1535706068","1","0");
INSERT INTO fy_score_log VALUES("4","","omQYXwM8TEkiBZR7Ldm891OOWbNQ","1","5","10.00","1535706110","1","0");
INSERT INTO fy_score_log VALUES("5","3","omQYXwAasNeXdGSMymd91487Ds1g","0","1","10.00","1535765279","1","0");
INSERT INTO fy_score_log VALUES("6","3","omQYXwAasNeXdGSMymd91487Ds1g","0","7","0.00","1535765494","1","0");
INSERT INTO fy_score_log VALUES("7","3","omQYXwAasNeXdGSMymd91487Ds1g","1","2","2.00","1535766078","1","0");
INSERT INTO fy_score_log VALUES("8","3","omQYXwAasNeXdGSMymd91487Ds1g","0","7","-10.00","1535766141","1","0");
INSERT INTO fy_score_log VALUES("9","3","omQYXwAasNeXdGSMymd91487Ds1g","0","7","-1.00","1535766341","1","0");
INSERT INTO fy_score_log VALUES("10","4","omQYXwDVsykgBFcCiyYkL4AYJRzw","0","1","10.00","1535936619","1","0");
INSERT INTO fy_score_log VALUES("11","2","omQYXwM8TEkiBZR7Ldm891OOWbNQ","2","2","2.00","1536022695","1","0");
INSERT INTO fy_score_log VALUES("12","5","omQYXwMaOPocRq4oIIBJufvIdNkU","0","1","10.00","1536135123","1","0");
INSERT INTO fy_score_log VALUES("13","6","omQYXwMAFZsOxVq19vLvIBw2x514","0","1","10.00","1536197667","1","0");
INSERT INTO fy_score_log VALUES("14","3","omQYXwAasNeXdGSMymd91487Ds1g","0","7","0.00","1536298711","1","0");
INSERT INTO fy_score_log VALUES("15","7","omQYXwIDROiZXZ_Ns30Am5sj7-K8","0","1","10.00","1536829695","1","0");
INSERT INTO fy_score_log VALUES("16","8","omQYXwNlDXAoTwBwMi3xhgogfaVA","0","1","10.00","1536829743","1","0");
INSERT INTO fy_score_log VALUES("17","9","omQYXwPRxRKyBc0LOW1jubli1s3o","0","1","10.00","1536829808","1","0");
INSERT INTO fy_score_log VALUES("18","4","omQYXwDVsykgBFcCiyYkL4AYJRzw","3","2","2.00","1536830322","1","0");



DROP TABLE fy_search;

CREATE TABLE `fy_search` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '搜索关键词表',
  `uid` int(11) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `search` varchar(255) DEFAULT NULL COMMENT '搜索词',
  `create_time` int(11) DEFAULT NULL COMMENT '时间',
  `goods_id` text COMMENT '搜索到的商品id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO fy_search VALUES("1","","omQYXwAasNeXdGSMymd91487Ds1g","我","1535767469","");
INSERT INTO fy_search VALUES("2","","omQYXwAasNeXdGSMymd91487Ds1g","橙子","1535767480","2");
INSERT INTO fy_search VALUES("3","","omQYXwAasNeXdGSMymd91487Ds1g","橙子","1535767480","");
INSERT INTO fy_search VALUES("4","","omQYXwNAT5uC15TQqMGxajJzqo4s","啊","1538014421","");



DROP TABLE fy_silde_show;

CREATE TABLE `fy_silde_show` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pic` varchar(255) NOT NULL COMMENT '图片',
  `name` varchar(50) NOT NULL COMMENT '描述',
  `orderby` int(11) NOT NULL DEFAULT '1' COMMENT '排序值',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1启用0禁用',
  `create_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `update_time` int(11) DEFAULT NULL COMMENT '修改时间',
  `url` varchar(255) NOT NULL COMMENT '跳转链接',
  `isdelete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

INSERT INTO fy_silde_show VALUES("6","/pic/uploads/20180816/a4c15401cd86eaa5a241a8b93a420b86.png","裤子","1","1","1530519761","1535426121","http://www.fyxt701.com/index.php/index/goods/detail/id/2.html","0");
INSERT INTO fy_silde_show VALUES("7","/pic/uploads/20180816/c294033a256277ec75e05f92d702c498.png","手提包","1","1","1530520601","1535426250","http://www.fyxt701.com/index.php/index/goods/detail/id/1.html","0");
INSERT INTO fy_silde_show VALUES("8","/pic/uploads/20180816/b95d11e6b321bb3abfb7267a216c9c3f.png","棉布","1","0","1532572889","1534831633","http://www.fyxt701.com/index.php/index/goods/rushPurchase.html","0");
INSERT INTO fy_silde_show VALUES("10","/pic/uploads/20180816/69e7517edddc65cf02a342cdf76f32b7.png","坚果","1","0","1532575849","1534831647","http://www.fyxt701.com/index.php/index/goods/rushPurchase.html","0");
INSERT INTO fy_silde_show VALUES("12","/pic/uploads/20180822/7a2570970d3d8229dcf3deca8903d946.png","商城","1","0","1534924541","1534924541","https://www.baidu.com/","0");



DROP TABLE fy_sys_event_log;

CREATE TABLE `fy_sys_event_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '系统操作表',
  `addtime` int(11) NOT NULL COMMENT '操作时间',
  `uid` int(11) NOT NULL COMMENT '操作用户',
  `method` varchar(50) DEFAULT NULL COMMENT '操作控制/方法',
  `method_zh` varchar(50) DEFAULT NULL COMMENT '中文描述',
  `group_id` int(11) DEFAULT NULL COMMENT '组id',
  `group_name` varchar(32) DEFAULT NULL COMMENT '组名',
  `object` text COMMENT '操作对象',
  `ip` varchar(32) DEFAULT NULL COMMENT 'ip地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE fy_task_achievement;

CREATE TABLE `fy_task_achievement` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '会员任务完成明细表',
  `uid` int(10) NOT NULL COMMENT '用户ID',
  `task_id` int(11) NOT NULL COMMENT '任务ID',
  `time` int(11) DEFAULT NULL COMMENT '参与时间',
  `status` tinyint(1) NOT NULL COMMENT '1完成|0未完成',
  `reward_score` decimal(10,2) NOT NULL COMMENT '奖励积分',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

INSERT INTO fy_task_achievement VALUES("1","11","7","1530151205","1","30.00","1530151205","1530151205");
INSERT INTO fy_task_achievement VALUES("2","31","7","","0","0.00","1531151205","1531151205");
INSERT INTO fy_task_achievement VALUES("3","21","6","1529747645","1","12.00","1529747645","1529823875");
INSERT INTO fy_task_achievement VALUES("4","41","6","1529823875","1","12.00","1529823875","1529823875");



DROP TABLE fy_transaction;

CREATE TABLE `fy_transaction` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'transaction 交易设置表',
  `group_id` int(11) DEFAULT NULL COMMENT '所属组id',
  `group_name` varchar(50) DEFAULT NULL COMMENT '组名',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `status` tinyint(1) DEFAULT '1' COMMENT '1启用0禁用',
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `rate` decimal(10,2) NOT NULL COMMENT '费率',
  `update_time` int(11) DEFAULT NULL,
  `isdelete` tinyint(1) DEFAULT '0' COMMENT '1删除区回收站0正常',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO fy_transaction VALUES("4","1","领导组","","1","0","","1.00","","0");
INSERT INTO fy_transaction VALUES("5","3","test","","1","0","","12.00","","0");
INSERT INTO fy_transaction VALUES("7","0","","","1","4","123456","3.00","","0");
INSERT INTO fy_transaction VALUES("8","0","","","1","3","","10.00","","1");
INSERT INTO fy_transaction VALUES("9","0","","","1","21","jyf","3.00","","0");



DROP TABLE fy_use_lottery;

CREATE TABLE `fy_use_lottery` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `use_openid` varchar(64) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `create_time` int(10) DEFAULT NULL,
  `num` int(10) DEFAULT '0',
  `lottery_id` int(10) DEFAULT NULL,
  `lottery_log_id` int(10) DEFAULT NULL,
  `shop_openid` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `coupon_real_money` decimal(10,2) DEFAULT NULL,
  `coupon_money` decimal(10,2) DEFAULT NULL,
  `isdelete` tinyint(1) DEFAULT '0',
  `unique_flag` varchar(255) DEFAULT NULL COMMENT '每次核销对应生成的唯一标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE fy_web_log_001;

CREATE TABLE `fy_web_log_001` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `uid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `ip` char(15) NOT NULL DEFAULT '' COMMENT '访客ip',
  `location` varchar(255) NOT NULL DEFAULT '' COMMENT '访客地址',
  `os` varchar(255) NOT NULL DEFAULT '' COMMENT '操作系统',
  `browser` varchar(255) NOT NULL DEFAULT '' COMMENT '浏览器',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT 'url',
  `module` varchar(255) NOT NULL DEFAULT '' COMMENT '模块',
  `controller` varchar(255) NOT NULL DEFAULT '' COMMENT '控制器',
  `action` varchar(255) NOT NULL DEFAULT '' COMMENT '方法',
  `method` char(6) NOT NULL DEFAULT '' COMMENT '请求方式',
  `data` text COMMENT '请求的param数据，serialize后的',
  `create_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `ip` (`ip`),
  KEY `create_at` (`create_at`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=732 DEFAULT CHARSET=utf8 COMMENT='网站日志';

INSERT INTO fy_web_log_001 VALUES("1","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/lottery/index.html","admin","Lottery","index","GET","a:0:{}","1535705332");
INSERT INTO fy_web_log_001 VALUES("2","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1535705332");
INSERT INTO fy_web_log_001 VALUES("3","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535705334");
INSERT INTO fy_web_log_001 VALUES("4","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535705334");
INSERT INTO fy_web_log_001 VALUES("5","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/order/index.html","admin","Order","index","GET","a:0:{}","1535705347");
INSERT INTO fy_web_log_001 VALUES("6","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/lottery/index.html","admin","Lottery","index","GET","a:0:{}","1535705360");
INSERT INTO fy_web_log_001 VALUES("7","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1535705366");
INSERT INTO fy_web_log_001 VALUES("8","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/edit/type/show/id/5.html","admin","Goods","edit","GET","a:2:{s:4:\"type\";s:4:\"show\";s:2:\"id\";s:1:\"5\";}","1535705368");
INSERT INTO fy_web_log_001 VALUES("9","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/getskudata.html","admin","Goods","getskudata","POST","a:1:{s:2:\"id\";s:1:\"5\";}","1535705368");
INSERT INTO fy_web_log_001 VALUES("10","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1535705389");
INSERT INTO fy_web_log_001 VALUES("11","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1535705389");
INSERT INTO fy_web_log_001 VALUES("12","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706077");
INSERT INTO fy_web_log_001 VALUES("13","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706078");
INSERT INTO fy_web_log_001 VALUES("14","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/order/index.html","admin","Order","index","GET","a:0:{}","1535706083");
INSERT INTO fy_web_log_001 VALUES("15","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/order/index.html","admin","Order","index","GET","a:0:{}","1535706088");
INSERT INTO fy_web_log_001 VALUES("16","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/order/orderdetail/order_id/1441217402201808311656478916/id/1.html","admin","Order","orderdetail","GET","a:2:{s:8:\"order_id\";s:28:\"1441217402201808311656478916\";s:2:\"id\";s:1:\"1\";}","1535706093");
INSERT INTO fy_web_log_001 VALUES("17","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/order/addpost.html","admin","Order","addpost","POST","a:3:{s:2:\"id\";s:1:\"1\";s:14:\"logistics_name\";s:12:\"顺丰快递\";s:16:\"logistics_number\";s:0:\"\";}","1535706095");
INSERT INTO fy_web_log_001 VALUES("18","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/order/orderdetail/order_id/1441217402201808311656478916/id/1.html","admin","Order","orderdetail","GET","a:2:{s:8:\"order_id\";s:28:\"1441217402201808311656478916\";s:2:\"id\";s:1:\"1\";}","1535706097");
INSERT INTO fy_web_log_001 VALUES("19","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/order/addpost.html","admin","Order","addpost","POST","a:3:{s:2:\"id\";s:1:\"1\";s:14:\"logistics_name\";s:12:\"顺丰快递\";s:16:\"logistics_number\";s:3:\"123\";}","1535706099");
INSERT INTO fy_web_log_001 VALUES("20","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/order/orderdetail/order_id/1441217402201808311656478916/id/1.html","admin","Order","orderdetail","GET","a:2:{s:8:\"order_id\";s:28:\"1441217402201808311656478916\";s:2:\"id\";s:1:\"1\";}","1535706101");
INSERT INTO fy_web_log_001 VALUES("21","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/order/index.html","admin","Order","index","GET","a:0:{}","1535706112");
INSERT INTO fy_web_log_001 VALUES("22","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706114");
INSERT INTO fy_web_log_001 VALUES("23","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706114");
INSERT INTO fy_web_log_001 VALUES("24","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/transaction/index.html","admin","Transaction","index","GET","a:0:{}","1535706118");
INSERT INTO fy_web_log_001 VALUES("25","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706123");
INSERT INTO fy_web_log_001 VALUES("26","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706123");
INSERT INTO fy_web_log_001 VALUES("27","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706127");
INSERT INTO fy_web_log_001 VALUES("28","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706128");
INSERT INTO fy_web_log_001 VALUES("29","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/brand/index.html","admin","Brand","index","GET","a:0:{}","1535706158");
INSERT INTO fy_web_log_001 VALUES("30","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1535706214");
INSERT INTO fy_web_log_001 VALUES("31","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/brand/index.html","admin","Brand","index","GET","a:0:{}","1535706214");
INSERT INTO fy_web_log_001 VALUES("32","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1535706217");
INSERT INTO fy_web_log_001 VALUES("33","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706221");
INSERT INTO fy_web_log_001 VALUES("34","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706222");
INSERT INTO fy_web_log_001 VALUES("35","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706232");
INSERT INTO fy_web_log_001 VALUES("36","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706232");
INSERT INTO fy_web_log_001 VALUES("37","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/transaction/index.html","admin","Transaction","index","GET","a:0:{}","1535706239");
INSERT INTO fy_web_log_001 VALUES("38","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/wx_pay_refund_log/index.html","admin","WxPayRefundLog","index","GET","a:0:{}","1535706242");
INSERT INTO fy_web_log_001 VALUES("39","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706253");
INSERT INTO fy_web_log_001 VALUES("40","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706253");
INSERT INTO fy_web_log_001 VALUES("41","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/pub/logout.html","admin","Pub","logout","GET","a:0:{}","1535706255");
INSERT INTO fy_web_log_001 VALUES("42","0","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/pub/login.html","admin","Pub","login","GET","a:0:{}","1535706258");
INSERT INTO fy_web_log_001 VALUES("43","0","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/pub/checklogin.html","admin","Pub","checklogin","POST","a:3:{s:7:\"account\";s:3:\"jyf\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"8iw4\";}","1535706278");
INSERT INTO fy_web_log_001 VALUES("44","0","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/pub/checklogin.html","admin","Pub","checklogin","POST","a:3:{s:7:\"account\";s:3:\"jyf\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"t38t\";}","1535706284");
INSERT INTO fy_web_log_001 VALUES("45","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1535706285");
INSERT INTO fy_web_log_001 VALUES("46","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706285");
INSERT INTO fy_web_log_001 VALUES("47","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706295");
INSERT INTO fy_web_log_001 VALUES("48","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706295");
INSERT INTO fy_web_log_001 VALUES("49","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706296");
INSERT INTO fy_web_log_001 VALUES("50","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706296");
INSERT INTO fy_web_log_001 VALUES("51","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706297");
INSERT INTO fy_web_log_001 VALUES("52","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706297");
INSERT INTO fy_web_log_001 VALUES("53","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706302");
INSERT INTO fy_web_log_001 VALUES("54","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706302");
INSERT INTO fy_web_log_001 VALUES("55","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706304");
INSERT INTO fy_web_log_001 VALUES("56","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706305");
INSERT INTO fy_web_log_001 VALUES("57","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706309");
INSERT INTO fy_web_log_001 VALUES("58","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706309");
INSERT INTO fy_web_log_001 VALUES("59","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706312");
INSERT INTO fy_web_log_001 VALUES("60","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706312");
INSERT INTO fy_web_log_001 VALUES("61","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706313");
INSERT INTO fy_web_log_001 VALUES("62","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706313");
INSERT INTO fy_web_log_001 VALUES("63","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706314");
INSERT INTO fy_web_log_001 VALUES("64","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706315");
INSERT INTO fy_web_log_001 VALUES("65","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706315");
INSERT INTO fy_web_log_001 VALUES("66","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706316");
INSERT INTO fy_web_log_001 VALUES("67","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706323");
INSERT INTO fy_web_log_001 VALUES("68","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706323");
INSERT INTO fy_web_log_001 VALUES("69","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706324");
INSERT INTO fy_web_log_001 VALUES("70","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706324");
INSERT INTO fy_web_log_001 VALUES("71","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706325");
INSERT INTO fy_web_log_001 VALUES("72","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706326");
INSERT INTO fy_web_log_001 VALUES("73","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706332");
INSERT INTO fy_web_log_001 VALUES("74","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706332");
INSERT INTO fy_web_log_001 VALUES("75","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706333");
INSERT INTO fy_web_log_001 VALUES("76","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706333");
INSERT INTO fy_web_log_001 VALUES("77","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706334");
INSERT INTO fy_web_log_001 VALUES("78","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706334");
INSERT INTO fy_web_log_001 VALUES("79","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706335");
INSERT INTO fy_web_log_001 VALUES("80","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706336");
INSERT INTO fy_web_log_001 VALUES("81","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706336");
INSERT INTO fy_web_log_001 VALUES("82","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706336");
INSERT INTO fy_web_log_001 VALUES("83","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706338");
INSERT INTO fy_web_log_001 VALUES("84","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706338");
INSERT INTO fy_web_log_001 VALUES("85","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706339");
INSERT INTO fy_web_log_001 VALUES("86","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706339");
INSERT INTO fy_web_log_001 VALUES("87","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706340");
INSERT INTO fy_web_log_001 VALUES("88","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706340");
INSERT INTO fy_web_log_001 VALUES("89","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706341");
INSERT INTO fy_web_log_001 VALUES("90","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706341");
INSERT INTO fy_web_log_001 VALUES("91","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706343");
INSERT INTO fy_web_log_001 VALUES("92","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706343");
INSERT INTO fy_web_log_001 VALUES("93","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706344");
INSERT INTO fy_web_log_001 VALUES("94","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706344");
INSERT INTO fy_web_log_001 VALUES("95","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706347");
INSERT INTO fy_web_log_001 VALUES("96","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706347");
INSERT INTO fy_web_log_001 VALUES("97","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706348");
INSERT INTO fy_web_log_001 VALUES("98","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706348");
INSERT INTO fy_web_log_001 VALUES("99","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706355");
INSERT INTO fy_web_log_001 VALUES("100","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706355");
INSERT INTO fy_web_log_001 VALUES("101","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706356");
INSERT INTO fy_web_log_001 VALUES("102","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706356");
INSERT INTO fy_web_log_001 VALUES("103","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706367");
INSERT INTO fy_web_log_001 VALUES("104","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706367");
INSERT INTO fy_web_log_001 VALUES("105","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706368");
INSERT INTO fy_web_log_001 VALUES("106","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706368");
INSERT INTO fy_web_log_001 VALUES("107","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706369");
INSERT INTO fy_web_log_001 VALUES("108","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706369");
INSERT INTO fy_web_log_001 VALUES("109","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706370");
INSERT INTO fy_web_log_001 VALUES("110","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706370");
INSERT INTO fy_web_log_001 VALUES("111","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706373");
INSERT INTO fy_web_log_001 VALUES("112","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706374");
INSERT INTO fy_web_log_001 VALUES("113","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706375");
INSERT INTO fy_web_log_001 VALUES("114","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706375");
INSERT INTO fy_web_log_001 VALUES("115","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706376");
INSERT INTO fy_web_log_001 VALUES("116","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706376");
INSERT INTO fy_web_log_001 VALUES("117","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706378");
INSERT INTO fy_web_log_001 VALUES("118","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706378");
INSERT INTO fy_web_log_001 VALUES("119","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706379");
INSERT INTO fy_web_log_001 VALUES("120","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706380");
INSERT INTO fy_web_log_001 VALUES("121","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706394");
INSERT INTO fy_web_log_001 VALUES("122","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706394");
INSERT INTO fy_web_log_001 VALUES("123","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706395");
INSERT INTO fy_web_log_001 VALUES("124","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706395");
INSERT INTO fy_web_log_001 VALUES("125","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706395");
INSERT INTO fy_web_log_001 VALUES("126","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706396");
INSERT INTO fy_web_log_001 VALUES("127","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706396");
INSERT INTO fy_web_log_001 VALUES("128","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706396");
INSERT INTO fy_web_log_001 VALUES("129","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706397");
INSERT INTO fy_web_log_001 VALUES("130","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706397");
INSERT INTO fy_web_log_001 VALUES("131","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706397");
INSERT INTO fy_web_log_001 VALUES("132","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706397");
INSERT INTO fy_web_log_001 VALUES("133","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706398");
INSERT INTO fy_web_log_001 VALUES("134","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706398");
INSERT INTO fy_web_log_001 VALUES("135","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706399");
INSERT INTO fy_web_log_001 VALUES("136","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706399");
INSERT INTO fy_web_log_001 VALUES("137","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706400");
INSERT INTO fy_web_log_001 VALUES("138","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706400");
INSERT INTO fy_web_log_001 VALUES("139","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706401");
INSERT INTO fy_web_log_001 VALUES("140","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706401");
INSERT INTO fy_web_log_001 VALUES("141","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706402");
INSERT INTO fy_web_log_001 VALUES("142","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706402");
INSERT INTO fy_web_log_001 VALUES("143","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706403");
INSERT INTO fy_web_log_001 VALUES("144","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706403");
INSERT INTO fy_web_log_001 VALUES("145","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706404");
INSERT INTO fy_web_log_001 VALUES("146","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706404");
INSERT INTO fy_web_log_001 VALUES("147","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706405");
INSERT INTO fy_web_log_001 VALUES("148","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706405");
INSERT INTO fy_web_log_001 VALUES("149","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706407");
INSERT INTO fy_web_log_001 VALUES("150","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706407");
INSERT INTO fy_web_log_001 VALUES("151","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706408");
INSERT INTO fy_web_log_001 VALUES("152","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706408");
INSERT INTO fy_web_log_001 VALUES("153","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706409");
INSERT INTO fy_web_log_001 VALUES("154","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706409");
INSERT INTO fy_web_log_001 VALUES("155","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706410");
INSERT INTO fy_web_log_001 VALUES("156","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706410");
INSERT INTO fy_web_log_001 VALUES("157","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706410");
INSERT INTO fy_web_log_001 VALUES("158","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706410");
INSERT INTO fy_web_log_001 VALUES("159","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706411");
INSERT INTO fy_web_log_001 VALUES("160","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706411");
INSERT INTO fy_web_log_001 VALUES("161","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706412");
INSERT INTO fy_web_log_001 VALUES("162","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706412");
INSERT INTO fy_web_log_001 VALUES("163","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706413");
INSERT INTO fy_web_log_001 VALUES("164","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706413");
INSERT INTO fy_web_log_001 VALUES("165","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706414");
INSERT INTO fy_web_log_001 VALUES("166","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706414");
INSERT INTO fy_web_log_001 VALUES("167","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706414");
INSERT INTO fy_web_log_001 VALUES("168","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706414");
INSERT INTO fy_web_log_001 VALUES("169","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706415");
INSERT INTO fy_web_log_001 VALUES("170","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706415");
INSERT INTO fy_web_log_001 VALUES("171","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706416");
INSERT INTO fy_web_log_001 VALUES("172","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706416");
INSERT INTO fy_web_log_001 VALUES("173","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706416");
INSERT INTO fy_web_log_001 VALUES("174","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706416");
INSERT INTO fy_web_log_001 VALUES("175","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706417");
INSERT INTO fy_web_log_001 VALUES("176","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706417");
INSERT INTO fy_web_log_001 VALUES("177","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706417");
INSERT INTO fy_web_log_001 VALUES("178","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706417");
INSERT INTO fy_web_log_001 VALUES("179","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706418");
INSERT INTO fy_web_log_001 VALUES("180","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706418");
INSERT INTO fy_web_log_001 VALUES("181","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706418");
INSERT INTO fy_web_log_001 VALUES("182","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706419");
INSERT INTO fy_web_log_001 VALUES("183","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706419");
INSERT INTO fy_web_log_001 VALUES("184","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706419");
INSERT INTO fy_web_log_001 VALUES("185","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706419");
INSERT INTO fy_web_log_001 VALUES("186","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706420");
INSERT INTO fy_web_log_001 VALUES("187","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706420");
INSERT INTO fy_web_log_001 VALUES("188","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706420");
INSERT INTO fy_web_log_001 VALUES("189","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706420");
INSERT INTO fy_web_log_001 VALUES("190","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706420");
INSERT INTO fy_web_log_001 VALUES("191","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706421");
INSERT INTO fy_web_log_001 VALUES("192","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706421");
INSERT INTO fy_web_log_001 VALUES("193","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706422");
INSERT INTO fy_web_log_001 VALUES("194","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706422");
INSERT INTO fy_web_log_001 VALUES("195","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706422");
INSERT INTO fy_web_log_001 VALUES("196","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706422");
INSERT INTO fy_web_log_001 VALUES("197","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706423");
INSERT INTO fy_web_log_001 VALUES("198","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706423");
INSERT INTO fy_web_log_001 VALUES("199","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706423");
INSERT INTO fy_web_log_001 VALUES("200","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706423");
INSERT INTO fy_web_log_001 VALUES("201","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706424");
INSERT INTO fy_web_log_001 VALUES("202","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706424");
INSERT INTO fy_web_log_001 VALUES("203","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706424");
INSERT INTO fy_web_log_001 VALUES("204","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706424");
INSERT INTO fy_web_log_001 VALUES("205","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706425");
INSERT INTO fy_web_log_001 VALUES("206","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706425");
INSERT INTO fy_web_log_001 VALUES("207","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706425");
INSERT INTO fy_web_log_001 VALUES("208","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706425");
INSERT INTO fy_web_log_001 VALUES("209","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706426");
INSERT INTO fy_web_log_001 VALUES("210","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706426");
INSERT INTO fy_web_log_001 VALUES("211","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706426");
INSERT INTO fy_web_log_001 VALUES("212","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706426");
INSERT INTO fy_web_log_001 VALUES("213","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706427");
INSERT INTO fy_web_log_001 VALUES("214","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706427");
INSERT INTO fy_web_log_001 VALUES("215","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706427");
INSERT INTO fy_web_log_001 VALUES("216","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706427");
INSERT INTO fy_web_log_001 VALUES("217","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706428");
INSERT INTO fy_web_log_001 VALUES("218","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706428");
INSERT INTO fy_web_log_001 VALUES("219","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706429");
INSERT INTO fy_web_log_001 VALUES("220","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706429");
INSERT INTO fy_web_log_001 VALUES("221","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706429");
INSERT INTO fy_web_log_001 VALUES("222","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706429");
INSERT INTO fy_web_log_001 VALUES("223","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706430");
INSERT INTO fy_web_log_001 VALUES("224","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706430");
INSERT INTO fy_web_log_001 VALUES("225","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706432");
INSERT INTO fy_web_log_001 VALUES("226","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706432");
INSERT INTO fy_web_log_001 VALUES("227","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/message/index.html","admin","Message","index","GET","a:0:{}","1535706435");
INSERT INTO fy_web_log_001 VALUES("228","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/use_lottery/index.html","admin","UseLottery","index","GET","a:0:{}","1535706437");
INSERT INTO fy_web_log_001 VALUES("229","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/brand/index.html","admin","Brand","index","GET","a:0:{}","1535706437");
INSERT INTO fy_web_log_001 VALUES("230","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/use_lottery/index.html","admin","UseLottery","index","GET","a:0:{}","1535706438");
INSERT INTO fy_web_log_001 VALUES("231","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/use_lottery/index.html","admin","UseLottery","index","GET","a:0:{}","1535706439");
INSERT INTO fy_web_log_001 VALUES("232","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/transaction/index.html","admin","Transaction","index","GET","a:0:{}","1535706441");
INSERT INTO fy_web_log_001 VALUES("233","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods_class/index.html","admin","GoodsClass","index","GET","a:0:{}","1535706442");
INSERT INTO fy_web_log_001 VALUES("234","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods_comment/index.html","admin","GoodsComment","index","GET","a:0:{}","1535706443");
INSERT INTO fy_web_log_001 VALUES("235","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer/index.html","admin","Customer","index","GET","a:0:{}","1535706444");
INSERT INTO fy_web_log_001 VALUES("236","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/lottery_log/index.html","admin","LotteryLog","index","GET","a:0:{}","1535706445");
INSERT INTO fy_web_log_001 VALUES("237","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer/index.html","admin","Customer","index","GET","a:0:{}","1535706446");
INSERT INTO fy_web_log_001 VALUES("238","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706462");
INSERT INTO fy_web_log_001 VALUES("239","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706463");
INSERT INTO fy_web_log_001 VALUES("240","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/transaction/index.html","admin","Transaction","index","GET","a:0:{}","1535706466");
INSERT INTO fy_web_log_001 VALUES("241","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/wx_pay_refund_log/index.html","admin","WxPayRefundLog","index","GET","a:0:{}","1535706470");
INSERT INTO fy_web_log_001 VALUES("242","1","220.197.182.69","中国 贵州 贵阳 ","Windows NT","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/wx_pay_refund_log/index.html","admin","WxPayRefundLog","index","GET","a:0:{}","1535706530");
INSERT INTO fy_web_log_001 VALUES("243","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/lottery/index.html","admin","Lottery","index","GET","a:0:{}","1535706597");
INSERT INTO fy_web_log_001 VALUES("244","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/activity/index.html","admin","Activity","index","GET","a:0:{}","1535706600");
INSERT INTO fy_web_log_001 VALUES("245","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/lottery/index.html","admin","Lottery","index","GET","a:0:{}","1535706601");
INSERT INTO fy_web_log_001 VALUES("246","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/activity/index.html","admin","Activity","index","GET","a:0:{}","1535706604");
INSERT INTO fy_web_log_001 VALUES("247","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/silde_show/index.html","admin","SildeShow","index","GET","a:0:{}","1535706605");
INSERT INTO fy_web_log_001 VALUES("248","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/brand/index.html","admin","Brand","index","GET","a:0:{}","1535706606");
INSERT INTO fy_web_log_001 VALUES("249","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/pub/logout.html","admin","Pub","logout","GET","a:0:{}","1535706611");
INSERT INTO fy_web_log_001 VALUES("250","0","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/pub/login.html","admin","Pub","login","GET","a:0:{}","1535706614");
INSERT INTO fy_web_log_001 VALUES("251","0","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/pub/checklogin.html","admin","Pub","checklogin","POST","a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"rhum\";}","1535706620");
INSERT INTO fy_web_log_001 VALUES("252","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1535706620");
INSERT INTO fy_web_log_001 VALUES("253","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706620");
INSERT INTO fy_web_log_001 VALUES("254","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/wx_pay_refund_log/index.html","admin","WxPayRefundLog","index","GET","a:0:{}","1535706628");
INSERT INTO fy_web_log_001 VALUES("255","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/wx_pay_refund_log/index.html?username=&type=1","admin","WxPayRefundLog","index","GET","a:2:{s:8:\"username\";s:0:\"\";s:4:\"type\";s:1:\"1\";}","1535706631");
INSERT INTO fy_web_log_001 VALUES("256","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer/index.html","admin","Customer","index","GET","a:0:{}","1535706692");
INSERT INTO fy_web_log_001 VALUES("257","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/lottery/index.html","admin","Lottery","index","GET","a:0:{}","1535706705");
INSERT INTO fy_web_log_001 VALUES("258","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_task/index.html","admin","CustomerTask","index","GET","a:0:{}","1535706714");
INSERT INTO fy_web_log_001 VALUES("259","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_task/index.html","admin","CustomerTask","index","GET","a:0:{}","1535706716");
INSERT INTO fy_web_log_001 VALUES("260","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_grade/index.html","admin","CustomerGrade","index","GET","a:0:{}","1535706716");
INSERT INTO fy_web_log_001 VALUES("261","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_grade_desc/index.html","admin","CustomerGradeDesc","index","GET","a:0:{}","1535706719");
INSERT INTO fy_web_log_001 VALUES("262","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/lottery_log/index.html","admin","LotteryLog","index","GET","a:0:{}","1535706721");
INSERT INTO fy_web_log_001 VALUES("263","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/activity/index.html","admin","Activity","index","GET","a:0:{}","1535706729");
INSERT INTO fy_web_log_001 VALUES("264","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/transaction/index.html","admin","Transaction","index","GET","a:0:{}","1535706730");
INSERT INTO fy_web_log_001 VALUES("265","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/order/index.html","admin","Order","index","GET","a:0:{}","1535706732");
INSERT INTO fy_web_log_001 VALUES("266","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/message/index.html","admin","Message","index","GET","a:0:{}","1535706736");
INSERT INTO fy_web_log_001 VALUES("267","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/message/index.html","admin","Message","index","GET","a:0:{}","1535706750");
INSERT INTO fy_web_log_001 VALUES("268","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods_comment/index.html","admin","GoodsComment","index","GET","a:0:{}","1535706751");
INSERT INTO fy_web_log_001 VALUES("269","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/wx_pay_refund_log/index.html","admin","WxPayRefundLog","index","GET","a:0:{}","1535706752");
INSERT INTO fy_web_log_001 VALUES("270","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/order/index.html","admin","Order","index","GET","a:0:{}","1535706867");
INSERT INTO fy_web_log_001 VALUES("271","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/order/orderdetail/order_id/1441217402201808311656478916/id/1.html","admin","Order","orderdetail","GET","a:2:{s:8:\"order_id\";s:28:\"1441217402201808311656478916\";s:2:\"id\";s:1:\"1\";}","1535706873");
INSERT INTO fy_web_log_001 VALUES("272","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/order/refund.html","admin","Order","refund","POST","a:3:{s:8:\"order_id\";s:28:\"1441217402201808311656478916\";s:2:\"id\";s:1:\"1\";s:4:\"flag\";s:3:\"yes\";}","1535706880");
INSERT INTO fy_web_log_001 VALUES("273","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/order/orderdetail/order_id/1441217402201808311656478916/id/1.html","admin","Order","orderdetail","GET","a:2:{s:8:\"order_id\";s:28:\"1441217402201808311656478916\";s:2:\"id\";s:1:\"1\";}","1535706883");
INSERT INTO fy_web_log_001 VALUES("274","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/order/index.html","admin","Order","index","GET","a:0:{}","1535706886");
INSERT INTO fy_web_log_001 VALUES("275","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/order/orderdetail/order_id/1441217402201808311656478916/id/1.html","admin","Order","orderdetail","GET","a:2:{s:8:\"order_id\";s:28:\"1441217402201808311656478916\";s:2:\"id\";s:1:\"1\";}","1535706889");
INSERT INTO fy_web_log_001 VALUES("276","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/order/index.html","admin","Order","index","GET","a:0:{}","1535706933");
INSERT INTO fy_web_log_001 VALUES("277","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/transaction/index.html","admin","Transaction","index","GET","a:0:{}","1535706933");
INSERT INTO fy_web_log_001 VALUES("278","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/activity/index.html","admin","Activity","index","GET","a:0:{}","1535706935");
INSERT INTO fy_web_log_001 VALUES("279","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/lottery_log/index.html","admin","LotteryLog","index","GET","a:0:{}","1535706936");
INSERT INTO fy_web_log_001 VALUES("280","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/activity/index.html","admin","Activity","index","GET","a:0:{}","1535706938");
INSERT INTO fy_web_log_001 VALUES("281","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/silde_show/index.html","admin","SildeShow","index","GET","a:0:{}","1535706940");
INSERT INTO fy_web_log_001 VALUES("282","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/modular/index.html","admin","Modular","index","GET","a:0:{}","1535706941");
INSERT INTO fy_web_log_001 VALUES("283","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods_class/index.html","admin","GoodsClass","index","GET","a:0:{}","1535706942");
INSERT INTO fy_web_log_001 VALUES("284","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1535707482");
INSERT INTO fy_web_log_001 VALUES("285","0","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/pub/login.html","admin","Pub","login","GET","a:0:{}","1535766872");
INSERT INTO fy_web_log_001 VALUES("286","0","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/pub/checklogin.html","admin","Pub","checklogin","POST","a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"gs3b\";}","1535766887");
INSERT INTO fy_web_log_001 VALUES("287","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1535766887");
INSERT INTO fy_web_log_001 VALUES("288","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535766887");
INSERT INTO fy_web_log_001 VALUES("289","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/message/index.html","admin","Message","index","GET","a:0:{}","1535766918");
INSERT INTO fy_web_log_001 VALUES("290","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/node_map/index.html","admin","NodeMap","index","GET","a:0:{}","1535766920");
INSERT INTO fy_web_log_001 VALUES("291","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_user/index.html","admin","AdminUser","index","GET","a:0:{}","1535766920");
INSERT INTO fy_web_log_001 VALUES("292","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_role/index.html","admin","AdminRole","index","GET","a:0:{}","1535766921");
INSERT INTO fy_web_log_001 VALUES("293","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_node/index.html","admin","AdminNode","index","GET","a:0:{}","1535766921");
INSERT INTO fy_web_log_001 VALUES("294","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_node/index","admin","AdminNode","index","POST","a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}","1535766921");
INSERT INTO fy_web_log_001 VALUES("295","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_node/index","admin","AdminNode","index","POST","a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}","1535766921");
INSERT INTO fy_web_log_001 VALUES("296","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_group/index.html","admin","AdminGroup","index","GET","a:0:{}","1535766922");
INSERT INTO fy_web_log_001 VALUES("297","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/node_map/index.html","admin","NodeMap","index","GET","a:0:{}","1535766923");
INSERT INTO fy_web_log_001 VALUES("298","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/login_log/index.html","admin","LoginLog","index","GET","a:0:{}","1535766923");
INSERT INTO fy_web_log_001 VALUES("299","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/web_log/index.html","admin","WebLog","index","GET","a:0:{}","1535766924");
INSERT INTO fy_web_log_001 VALUES("300","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/login_log/index.html","admin","LoginLog","index","GET","a:0:{}","1535766924");
INSERT INTO fy_web_log_001 VALUES("301","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1535766925");
INSERT INTO fy_web_log_001 VALUES("302","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/edit/id/8.html","admin","Notice","edit","GET","a:1:{s:2:\"id\";s:1:\"8\";}","1535766936");
INSERT INTO fy_web_log_001 VALUES("303","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/edit/id/10.html","admin","Notice","edit","GET","a:1:{s:2:\"id\";s:2:\"10\";}","1535766953");
INSERT INTO fy_web_log_001 VALUES("304","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/edit/id/10.html","admin","Notice","edit","POST","a:6:{s:2:\"id\";s:2:\"10\";s:5:\"title\";s:12:\"内部体验\";s:6:\"detail\";s:105:\"   泛亚科技是国家大数据战略践行者和新型大数据产业生态圈商业模式引领者。\";s:6:\"status\";s:1:\"1\";s:7:\"orderby\";s:1:\"7\";s:4:\"desc\";s:401:\"    贵州泛亚信通网络科技有限公司（简称&ldquo;泛亚科技&rdquo;）是一家集泛在无线网络环境建设、数据可视化研究、大数据智能跨界应用为一体的大数据高科技企业，由郑州市讯捷贸易有限公司、阿里巴巴集团、贵阳广电传媒有限公司、贵阳市工业投资（集团）有限公司合资成立，注册资本1.2亿元。\n \n\";}","1535766979");
INSERT INTO fy_web_log_001 VALUES("305","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1535766979");
INSERT INTO fy_web_log_001 VALUES("306","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/edit/id/9.html","admin","Notice","edit","GET","a:1:{s:2:\"id\";s:1:\"9\";}","1535766985");
INSERT INTO fy_web_log_001 VALUES("307","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/edit/id/8.html","admin","Notice","edit","GET","a:1:{s:2:\"id\";s:1:\"8\";}","1535766993");
INSERT INTO fy_web_log_001 VALUES("308","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/edit/id/8.html","admin","Notice","edit","POST","a:6:{s:2:\"id\";s:1:\"8\";s:5:\"title\";s:18:\"欢迎内部体验\";s:6:\"detail\";s:54:\"泛亚商城商品即将上线完毕，敬请期待！\";s:6:\"status\";s:1:\"1\";s:7:\"orderby\";s:1:\"7\";s:4:\"desc\";s:120:\"各位会员，泛亚商城各类商品即将上线完毕，商品类型多种多样，欢迎各位会员体验购买！\";}","1535767009");
INSERT INTO fy_web_log_001 VALUES("309","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1535767010");
INSERT INTO fy_web_log_001 VALUES("310","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/edit/id/7.html","admin","Notice","edit","GET","a:1:{s:2:\"id\";s:1:\"7\";}","1535767014");
INSERT INTO fy_web_log_001 VALUES("311","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/edit/id/7.html","admin","Notice","edit","POST","a:6:{s:2:\"id\";s:1:\"7\";s:5:\"title\";s:30:\"泛亚商城1.0即将试运营\";s:6:\"detail\";s:30:\"泛亚商城1.0即将试运营\";s:6:\"status\";s:1:\"1\";s:7:\"orderby\";s:1:\"7\";s:4:\"desc\";s:108:\"经过不懈的努力，泛亚商城1.0终于完成，将于一周后正式开始试运营，敬请期待！\";}","1535767026");
INSERT INTO fy_web_log_001 VALUES("312","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1535767026");
INSERT INTO fy_web_log_001 VALUES("313","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/edit/id/9.html","admin","Notice","edit","GET","a:1:{s:2:\"id\";s:1:\"9\";}","1535767051");
INSERT INTO fy_web_log_001 VALUES("314","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/edit/id/9.html","admin","Notice","edit","POST","a:6:{s:2:\"id\";s:1:\"9\";s:5:\"title\";s:27:\"泛亚商城1.0内部体验\";s:6:\"detail\";s:0:\"\";s:6:\"status\";s:1:\"1\";s:7:\"orderby\";s:1:\"7\";s:4:\"desc\";s:102:\"泛亚科技是国家大数据战略践行者和新型大数据产业生态圈商业模式引领者。\";}","1535767069");
INSERT INTO fy_web_log_001 VALUES("315","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1535767070");
INSERT INTO fy_web_log_001 VALUES("316","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/delete.html","admin","Notice","delete","POST","a:1:{s:2:\"id\";s:1:\"9\";}","1535767105");
INSERT INTO fy_web_log_001 VALUES("317","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/delete.html","admin","Notice","delete","POST","a:1:{s:2:\"id\";s:2:\"10\";}","1535767110");
INSERT INTO fy_web_log_001 VALUES("318","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1535767113");
INSERT INTO fy_web_log_001 VALUES("319","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/edit/id/8.html","admin","Notice","edit","GET","a:1:{s:2:\"id\";s:1:\"8\";}","1535767131");
INSERT INTO fy_web_log_001 VALUES("320","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/edit/id/8.html","admin","Notice","edit","POST","a:6:{s:2:\"id\";s:1:\"8\";s:5:\"title\";s:30:\"欢迎各位同事内部体验\";s:6:\"detail\";s:54:\"泛亚商城商品即将上线完毕，敬请期待！\";s:6:\"status\";s:1:\"1\";s:7:\"orderby\";s:1:\"7\";s:4:\"desc\";s:120:\"各位会员，泛亚商城各类商品即将上线完毕，商品类型多种多样，欢迎各位会员体验购买！\";}","1535767140");
INSERT INTO fy_web_log_001 VALUES("321","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1535767140");
INSERT INTO fy_web_log_001 VALUES("322","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/edit/id/8.html","admin","Notice","edit","GET","a:1:{s:2:\"id\";s:1:\"8\";}","1535767165");
INSERT INTO fy_web_log_001 VALUES("323","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/edit/id/8.html","admin","Notice","edit","POST","a:6:{s:2:\"id\";s:1:\"8\";s:5:\"title\";s:46:\"欢迎各位同事内部体验,反馈建议。\";s:6:\"detail\";s:54:\"泛亚商城商品即将上线完毕，敬请期待！\";s:6:\"status\";s:1:\"1\";s:7:\"orderby\";s:1:\"7\";s:4:\"desc\";s:120:\"各位会员，泛亚商城各类商品即将上线完毕，商品类型多种多样，欢迎各位会员体验购买！\";}","1535767186");
INSERT INTO fy_web_log_001 VALUES("324","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1535767186");
INSERT INTO fy_web_log_001 VALUES("325","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/edit/id/8.html","admin","Notice","edit","GET","a:1:{s:2:\"id\";s:1:\"8\";}","1535767191");
INSERT INTO fy_web_log_001 VALUES("326","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/edit/id/8.html","admin","Notice","edit","POST","a:6:{s:2:\"id\";s:1:\"8\";s:5:\"title\";s:43:\"欢迎各位同事内部体验,反馈建议\";s:6:\"detail\";s:54:\"泛亚商城商品即将上线完毕，敬请期待！\";s:6:\"status\";s:1:\"1\";s:7:\"orderby\";s:1:\"7\";s:4:\"desc\";s:120:\"各位会员，泛亚商城各类商品即将上线完毕，商品类型多种多样，欢迎各位会员体验购买！\";}","1535767197");
INSERT INTO fy_web_log_001 VALUES("327","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1535767197");
INSERT INTO fy_web_log_001 VALUES("328","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1535767218");
INSERT INTO fy_web_log_001 VALUES("329","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1535767219");
INSERT INTO fy_web_log_001 VALUES("330","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1535767220");
INSERT INTO fy_web_log_001 VALUES("331","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1535767220");
INSERT INTO fy_web_log_001 VALUES("332","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1535767220");
INSERT INTO fy_web_log_001 VALUES("333","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1535767220");
INSERT INTO fy_web_log_001 VALUES("334","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/web_log/index.html","admin","WebLog","index","GET","a:0:{}","1535767221");
INSERT INTO fy_web_log_001 VALUES("335","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1535767222");
INSERT INTO fy_web_log_001 VALUES("336","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1535767231");
INSERT INTO fy_web_log_001 VALUES("337","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1535767231");
INSERT INTO fy_web_log_001 VALUES("338","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_role/index.html","admin","AdminRole","index","GET","a:0:{}","1535767232");
INSERT INTO fy_web_log_001 VALUES("339","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_node/index.html","admin","AdminNode","index","GET","a:0:{}","1535767233");
INSERT INTO fy_web_log_001 VALUES("340","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_node/index","admin","AdminNode","index","POST","a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}","1535767233");
INSERT INTO fy_web_log_001 VALUES("341","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_node/index","admin","AdminNode","index","POST","a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}","1535767233");
INSERT INTO fy_web_log_001 VALUES("342","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_group/index.html","admin","AdminGroup","index","GET","a:0:{}","1535767233");
INSERT INTO fy_web_log_001 VALUES("343","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_user/index.html","admin","AdminUser","index","GET","a:0:{}","1535767234");
INSERT INTO fy_web_log_001 VALUES("344","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/web_log/index.html","admin","WebLog","index","GET","a:0:{}","1535767234");
INSERT INTO fy_web_log_001 VALUES("345","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/login_log/index.html","admin","LoginLog","index","GET","a:0:{}","1535767235");
INSERT INTO fy_web_log_001 VALUES("346","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/silde_show/index.html","admin","SildeShow","index","GET","a:0:{}","1535767235");
INSERT INTO fy_web_log_001 VALUES("347","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/modular/index.html","admin","Modular","index","GET","a:0:{}","1535767235");
INSERT INTO fy_web_log_001 VALUES("348","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods_class/index.html","admin","GoodsClass","index","GET","a:0:{}","1535767236");
INSERT INTO fy_web_log_001 VALUES("349","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/modular/index.html","admin","Modular","index","GET","a:0:{}","1535767237");
INSERT INTO fy_web_log_001 VALUES("350","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/lottery/index.html","admin","Lottery","index","GET","a:0:{}","1535767240");
INSERT INTO fy_web_log_001 VALUES("351","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer/index.html","admin","Customer","index","GET","a:0:{}","1535767241");
INSERT INTO fy_web_log_001 VALUES("352","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/lottery/index.html","admin","Lottery","index","GET","a:0:{}","1535767242");
INSERT INTO fy_web_log_001 VALUES("353","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_grade/index.html","admin","CustomerGrade","index","GET","a:0:{}","1535767244");
INSERT INTO fy_web_log_001 VALUES("354","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/activity/index.html","admin","Activity","index","GET","a:0:{}","1535767246");
INSERT INTO fy_web_log_001 VALUES("355","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/order/index.html","admin","Order","index","GET","a:0:{}","1535767247");
INSERT INTO fy_web_log_001 VALUES("356","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/wx_pay_refund_log/index.html","admin","WxPayRefundLog","index","GET","a:0:{}","1535767250");
INSERT INTO fy_web_log_001 VALUES("357","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/gift_bag/index.html","admin","GiftBag","index","GET","a:0:{}","1535767250");
INSERT INTO fy_web_log_001 VALUES("358","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/gift_bag/edit/id/3.html","admin","GiftBag","edit","GET","a:1:{s:2:\"id\";s:1:\"3\";}","1535767254");
INSERT INTO fy_web_log_001 VALUES("359","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods_comment/index.html","admin","GoodsComment","index","GET","a:0:{}","1535767276");
INSERT INTO fy_web_log_001 VALUES("360","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/wx_pay_refund_log/index.html","admin","WxPayRefundLog","index","GET","a:0:{}","1535767277");
INSERT INTO fy_web_log_001 VALUES("361","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/use_lottery/index.html","admin","UseLottery","index","GET","a:0:{}","1535767278");
INSERT INTO fy_web_log_001 VALUES("362","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/gift_bag/index.html","admin","GiftBag","index","GET","a:0:{}","1535767279");
INSERT INTO fy_web_log_001 VALUES("363","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_right/index.html","admin","CustomerRight","index","GET","a:0:{}","1535767281");
INSERT INTO fy_web_log_001 VALUES("364","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/1.html","admin","CustomerRight","edit","GET","a:1:{s:2:\"id\";s:1:\"1\";}","1535767285");
INSERT INTO fy_web_log_001 VALUES("365","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/2.html","admin","CustomerRight","edit","GET","a:1:{s:2:\"id\";s:1:\"2\";}","1535767296");
INSERT INTO fy_web_log_001 VALUES("366","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/3.html","admin","CustomerRight","edit","GET","a:1:{s:2:\"id\";s:1:\"3\";}","1535767306");
INSERT INTO fy_web_log_001 VALUES("367","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/4.html","admin","CustomerRight","edit","GET","a:1:{s:2:\"id\";s:1:\"4\";}","1535767314");
INSERT INTO fy_web_log_001 VALUES("368","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/4.html","admin","CustomerRight","edit","GET","a:1:{s:2:\"id\";s:1:\"4\";}","1535767339");
INSERT INTO fy_web_log_001 VALUES("369","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/4.html","admin","CustomerRight","edit","GET","a:1:{s:2:\"id\";s:1:\"4\";}","1535767397");
INSERT INTO fy_web_log_001 VALUES("370","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1535768151");
INSERT INTO fy_web_log_001 VALUES("371","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/edit/id/5.html","admin","Goods","edit","GET","a:1:{s:2:\"id\";s:1:\"5\";}","1535768156");
INSERT INTO fy_web_log_001 VALUES("372","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/getskudata.html","admin","Goods","getskudata","POST","a:1:{s:2:\"id\";s:1:\"5\";}","1535768156");
INSERT INTO fy_web_log_001 VALUES("373","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/edit/id/5.html","admin","Goods","edit","POST","a:34:{s:2:\"id\";s:1:\"5\";s:7:\"user_id\";s:2:\"21\";s:4:\"name\";s:12:\"苹果手机\";s:8:\"subtitle\";s:0:\"\";s:7:\"yieldly\";s:0:\"\";s:10:\"main_image\";s:58:\"/pic/uploads/20180831/35cb42fbfe509141499aab67a3a0a680.jpg\";s:14:\"goods_class_id\";s:1:\"6\";s:14:\"goods_brand_id\";s:2:\"20\";s:9:\"show_area\";s:1:\"1\";s:10:\"start_date\";s:19:\"2018-08-31 11:21:01\";s:8:\"end_date\";s:19:\"2018-09-04 11:21:05\";s:10:\"store_type\";s:1:\"1\";s:9:\"free_type\";s:1:\"1\";s:7:\"postage\";s:0:\"\";s:12:\"return_score\";s:1:\"0\";s:3:\"pic\";a:2:{i:0;s:58:\"/pic/uploads/20180831/b7e860b80b4714b627f9d72e6f71d72b.jpg\";i:1;s:58:\"/pic/uploads/20180831/f6f882914e96e541e77f0d3af9e7eb8b.jpg\";}s:7:\"orderby\";s:2:\"10\";s:12:\"goods_weight\";s:7:\"300.000\";s:7:\"is_real\";s:1:\"1\";s:15:\"is_return_goods\";s:1:\"1\";s:10:\"is_comment\";s:1:\"1\";s:14:\"service_mobile\";s:0:\"\";s:7:\"service\";a:1:{i:0;s:12:\"没有服务\";}s:10:\"after_sale\";s:21:\"&lt;p&gt;ok&lt;/p&gt;\";s:15:\"settlement_type\";s:1:\"1\";s:11:\"basic_price\";s:4:\"0.01\";s:5:\"score\";s:0:\"\";s:14:\"original_price\";s:7:\"5200.00\";s:7:\"buy_num\";s:3:\"500\";s:9:\"shop_code\";s:0:\"\";s:8:\"bar_code\";s:0:\"\";s:6:\"detail\";s:25:\"&lt;p&gt;撒旦&lt;/p&gt;\";s:11:\"skuZuheData\";s:208:\"[{&quot;id&quot;:&quot;16&quot;,&quot;SkuId&quot;:&quot;1535685741914_规格:1535685749337_通用&quot;,&quot;pointPrice&quot;:&quot;10&quot;,&quot;price&quot;:0.01,&quot;num&quot;:&quot;10&quot;,&quot;code&q\";s:15:\"propty_name_val\";s:57:\"[[&quot;1535685741914_规格:1535685749337_通用&quot;]]\";}","1535768196");
INSERT INTO fy_web_log_001 VALUES("374","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/edit/id/5.html","admin","Goods","edit","GET","a:1:{s:2:\"id\";s:1:\"5\";}","1535768343");
INSERT INTO fy_web_log_001 VALUES("375","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/getskudata.html","admin","Goods","getskudata","POST","a:1:{s:2:\"id\";s:1:\"5\";}","1535768343");
INSERT INTO fy_web_log_001 VALUES("376","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/edit/id/5.html","admin","Goods","edit","POST","a:34:{s:2:\"id\";s:1:\"5\";s:7:\"user_id\";s:2:\"21\";s:4:\"name\";s:12:\"苹果手机\";s:8:\"subtitle\";s:12:\"苹果手机\";s:7:\"yieldly\";s:6:\"上海\";s:10:\"main_image\";s:58:\"/pic/uploads/20180831/35cb42fbfe509141499aab67a3a0a680.jpg\";s:14:\"goods_class_id\";s:1:\"6\";s:14:\"goods_brand_id\";s:2:\"20\";s:9:\"show_area\";s:1:\"1\";s:10:\"start_date\";s:19:\"2018-08-31 11:21:01\";s:8:\"end_date\";s:19:\"2018-09-04 11:21:05\";s:10:\"store_type\";s:1:\"1\";s:9:\"free_type\";s:1:\"1\";s:7:\"postage\";s:4:\"0.00\";s:12:\"return_score\";s:1:\"0\";s:3:\"pic\";a:2:{i:0;s:58:\"/pic/uploads/20180831/b7e860b80b4714b627f9d72e6f71d72b.jpg\";i:1;s:58:\"/pic/uploads/20180831/f6f882914e96e541e77f0d3af9e7eb8b.jpg\";}s:7:\"orderby\";s:2:\"10\";s:12:\"goods_weight\";s:7:\"300.000\";s:7:\"is_real\";s:1:\"1\";s:15:\"is_return_goods\";s:1:\"1\";s:10:\"is_comment\";s:1:\"1\";s:14:\"service_mobile\";s:0:\"\";s:7:\"service\";a:1:{i:0;s:12:\"没有服务\";}s:10:\"after_sale\";s:21:\"&lt;p&gt;ok&lt;/p&gt;\";s:15:\"settlement_type\";s:1:\"1\";s:11:\"basic_price\";s:4:\"0.01\";s:5:\"score\";s:1:\"0\";s:14:\"original_price\";s:7:\"5200.00\";s:7:\"buy_num\";s:3:\"500\";s:9:\"shop_code\";s:0:\"\";s:8:\"bar_code\";s:0:\"\";s:6:\"detail\";s:31:\"&lt;p&gt;苹果手机&lt;/p&gt;\";s:11:\"skuZuheData\";s:208:\"[{&quot;id&quot;:&quot;16&quot;,&quot;SkuId&quot;:&quot;1535685741914_规格:1535685749337_通用&quot;,&quot;pointPrice&quot;:&quot;10&quot;,&quot;price&quot;:0.01,&quot;num&quot;:&quot;10&quot;,&quot;code&q\";s:15:\"propty_name_val\";s:57:\"[[&quot;1535685741914_规格:1535685749337_通用&quot;]]\";}","1535768413");
INSERT INTO fy_web_log_001 VALUES("377","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/edit/id/5.html","admin","Goods","edit","GET","a:1:{s:2:\"id\";s:1:\"5\";}","1535768418");
INSERT INTO fy_web_log_001 VALUES("378","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/getskudata.html","admin","Goods","getskudata","POST","a:1:{s:2:\"id\";s:1:\"5\";}","1535768418");
INSERT INTO fy_web_log_001 VALUES("379","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/brand/index.html","admin","Brand","index","GET","a:0:{}","1535768458");
INSERT INTO fy_web_log_001 VALUES("380","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_task/index.html","admin","CustomerTask","index","GET","a:0:{}","1535768458");
INSERT INTO fy_web_log_001 VALUES("381","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_grade_desc/index.html","admin","CustomerGradeDesc","index","GET","a:0:{}","1535768459");
INSERT INTO fy_web_log_001 VALUES("382","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/lottery_log/index.html","admin","LotteryLog","index","GET","a:0:{}","1535768460");
INSERT INTO fy_web_log_001 VALUES("383","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/activity/index.html","admin","Activity","index","GET","a:0:{}","1535768461");
INSERT INTO fy_web_log_001 VALUES("384","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/transaction/index.html","admin","Transaction","index","GET","a:0:{}","1535768461");
INSERT INTO fy_web_log_001 VALUES("385","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/order/index.html","admin","Order","index","GET","a:0:{}","1535768462");
INSERT INTO fy_web_log_001 VALUES("386","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/message/index.html","admin","Message","index","GET","a:0:{}","1535768467");
INSERT INTO fy_web_log_001 VALUES("387","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods_comment/index.html","admin","GoodsComment","index","GET","a:0:{}","1535768467");
INSERT INTO fy_web_log_001 VALUES("388","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/wx_pay_refund_log/index.html","admin","WxPayRefundLog","index","GET","a:0:{}","1535768468");
INSERT INTO fy_web_log_001 VALUES("389","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/use_lottery/index.html","admin","UseLottery","index","GET","a:0:{}","1535768470");
INSERT INTO fy_web_log_001 VALUES("390","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/gift_bag/index.html","admin","GiftBag","index","GET","a:0:{}","1535768471");
INSERT INTO fy_web_log_001 VALUES("391","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_right/index.html","admin","CustomerRight","index","GET","a:0:{}","1535768474");
INSERT INTO fy_web_log_001 VALUES("392","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/lottery_log/index.html","admin","LotteryLog","index","GET","a:0:{}","1535768475");
INSERT INTO fy_web_log_001 VALUES("393","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_task/index.html","admin","CustomerTask","index","GET","a:0:{}","1535768475");
INSERT INTO fy_web_log_001 VALUES("394","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer/index.html","admin","Customer","index","GET","a:0:{}","1535768476");
INSERT INTO fy_web_log_001 VALUES("395","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/brand/index.html","admin","Brand","index","GET","a:0:{}","1535768477");
INSERT INTO fy_web_log_001 VALUES("396","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1535768486");
INSERT INTO fy_web_log_001 VALUES("397","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods_class/index.html","admin","GoodsClass","index","GET","a:0:{}","1535768489");
INSERT INTO fy_web_log_001 VALUES("398","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/modular/index.html","admin","Modular","index","GET","a:0:{}","1535768490");
INSERT INTO fy_web_log_001 VALUES("399","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/silde_show/index.html","admin","SildeShow","index","GET","a:0:{}","1535768490");
INSERT INTO fy_web_log_001 VALUES("400","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1535768491");
INSERT INTO fy_web_log_001 VALUES("401","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/login_log/index.html","admin","LoginLog","index","GET","a:0:{}","1535768493");
INSERT INTO fy_web_log_001 VALUES("402","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/web_log/index.html","admin","WebLog","index","GET","a:0:{}","1535768494");
INSERT INTO fy_web_log_001 VALUES("403","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/node_map/index.html","admin","NodeMap","index","GET","a:0:{}","1535768496");
INSERT INTO fy_web_log_001 VALUES("404","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/web_log/index.html","admin","WebLog","index","GET","a:0:{}","1535768497");
INSERT INTO fy_web_log_001 VALUES("405","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/web_log/detail/id/390.html","admin","WebLog","detail","GET","a:1:{s:2:\"id\";s:3:\"390\";}","1535768518");
INSERT INTO fy_web_log_001 VALUES("406","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/web_log/index.html?p=2","admin","WebLog","index","GET","a:1:{s:1:\"p\";s:1:\"2\";}","1535768532");
INSERT INTO fy_web_log_001 VALUES("407","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/web_log/index.html?p=3","admin","WebLog","index","GET","a:1:{s:1:\"p\";s:1:\"3\";}","1535768535");
INSERT INTO fy_web_log_001 VALUES("408","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/web_log/index.html?p=2","admin","WebLog","index","GET","a:1:{s:1:\"p\";s:1:\"2\";}","1535768539");
INSERT INTO fy_web_log_001 VALUES("409","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/login_log/index.html","admin","LoginLog","index","GET","a:0:{}","1535768542");
INSERT INTO fy_web_log_001 VALUES("410","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/web_log/index.html","admin","WebLog","index","GET","a:0:{}","1535768543");
INSERT INTO fy_web_log_001 VALUES("411","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/node_map/index.html","admin","NodeMap","index","GET","a:0:{}","1535768544");
INSERT INTO fy_web_log_001 VALUES("412","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_user/index.html","admin","AdminUser","index","GET","a:0:{}","1535768552");
INSERT INTO fy_web_log_001 VALUES("413","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_user/index.html","admin","AdminUser","index","GET","a:0:{}","1535768553");
INSERT INTO fy_web_log_001 VALUES("414","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_role/index.html","admin","AdminRole","index","GET","a:0:{}","1535768564");
INSERT INTO fy_web_log_001 VALUES("415","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_node/index.html","admin","AdminNode","index","GET","a:0:{}","1535768565");
INSERT INTO fy_web_log_001 VALUES("416","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_node/index","admin","AdminNode","index","POST","a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}","1535768566");
INSERT INTO fy_web_log_001 VALUES("417","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_node/index","admin","AdminNode","index","POST","a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}","1535768566");
INSERT INTO fy_web_log_001 VALUES("418","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_group/index.html","admin","AdminGroup","index","GET","a:0:{}","1535768568");
INSERT INTO fy_web_log_001 VALUES("419","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_node/index.html","admin","AdminNode","index","GET","a:0:{}","1535768569");
INSERT INTO fy_web_log_001 VALUES("420","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_node/index","admin","AdminNode","index","POST","a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}","1535768569");
INSERT INTO fy_web_log_001 VALUES("421","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_node/index","admin","AdminNode","index","POST","a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}","1535768569");
INSERT INTO fy_web_log_001 VALUES("422","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_user/index.html","admin","AdminUser","index","GET","a:0:{}","1535768569");
INSERT INTO fy_web_log_001 VALUES("423","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/node_map/index.html","admin","NodeMap","index","GET","a:0:{}","1535768570");
INSERT INTO fy_web_log_001 VALUES("424","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/web_log/index.html","admin","WebLog","index","GET","a:0:{}","1535768570");
INSERT INTO fy_web_log_001 VALUES("425","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/login_log/index.html","admin","LoginLog","index","GET","a:0:{}","1535768571");
INSERT INTO fy_web_log_001 VALUES("426","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/silde_show/index.html","admin","SildeShow","index","GET","a:0:{}","1535768571");
INSERT INTO fy_web_log_001 VALUES("427","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods_class/index.html","admin","GoodsClass","index","GET","a:0:{}","1535768571");
INSERT INTO fy_web_log_001 VALUES("428","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1535768572");
INSERT INTO fy_web_log_001 VALUES("429","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer/index.html","admin","Customer","index","GET","a:0:{}","1535768573");
INSERT INTO fy_web_log_001 VALUES("430","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/lottery/index.html","admin","Lottery","index","GET","a:0:{}","1535768574");
INSERT INTO fy_web_log_001 VALUES("431","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/lottery/index.html","admin","Lottery","index","GET","a:0:{}","1535768574");
INSERT INTO fy_web_log_001 VALUES("432","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_task/index.html","admin","CustomerTask","index","GET","a:0:{}","1535768575");
INSERT INTO fy_web_log_001 VALUES("433","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_grade/index.html","admin","CustomerGrade","index","GET","a:0:{}","1535768576");
INSERT INTO fy_web_log_001 VALUES("434","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_grade_desc/index.html","admin","CustomerGradeDesc","index","GET","a:0:{}","1535768576");
INSERT INTO fy_web_log_001 VALUES("435","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/lottery_log/index.html","admin","LotteryLog","index","GET","a:0:{}","1535768579");
INSERT INTO fy_web_log_001 VALUES("436","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/activity/index.html","admin","Activity","index","GET","a:0:{}","1535768580");
INSERT INTO fy_web_log_001 VALUES("437","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/transaction/index.html","admin","Transaction","index","GET","a:0:{}","1535768581");
INSERT INTO fy_web_log_001 VALUES("438","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/order/index.html","admin","Order","index","GET","a:0:{}","1535768581");
INSERT INTO fy_web_log_001 VALUES("439","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/message/index.html","admin","Message","index","GET","a:0:{}","1535768583");
INSERT INTO fy_web_log_001 VALUES("440","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods_comment/index.html","admin","GoodsComment","index","GET","a:0:{}","1535768584");
INSERT INTO fy_web_log_001 VALUES("441","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/wx_pay_refund_log/index.html","admin","WxPayRefundLog","index","GET","a:0:{}","1535768585");
INSERT INTO fy_web_log_001 VALUES("442","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/use_lottery/index.html","admin","UseLottery","index","GET","a:0:{}","1535768585");
INSERT INTO fy_web_log_001 VALUES("443","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/gift_bag/index.html","admin","GiftBag","index","GET","a:0:{}","1535768586");
INSERT INTO fy_web_log_001 VALUES("444","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_right/index.html","admin","CustomerRight","index","GET","a:0:{}","1535768589");
INSERT INTO fy_web_log_001 VALUES("445","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_group/index.html","admin","AdminGroup","index","GET","a:0:{}","1535768592");
INSERT INTO fy_web_log_001 VALUES("446","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_node/index.html","admin","AdminNode","index","GET","a:0:{}","1535768593");
INSERT INTO fy_web_log_001 VALUES("447","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_node/index","admin","AdminNode","index","POST","a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}","1535768593");
INSERT INTO fy_web_log_001 VALUES("448","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_node/index","admin","AdminNode","index","POST","a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}","1535768593");
INSERT INTO fy_web_log_001 VALUES("449","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_user/index.html","admin","AdminUser","index","GET","a:0:{}","1535768593");
INSERT INTO fy_web_log_001 VALUES("450","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/node_map/index.html","admin","NodeMap","index","GET","a:0:{}","1535768593");
INSERT INTO fy_web_log_001 VALUES("451","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/login_log/index.html","admin","LoginLog","index","GET","a:0:{}","1535768594");
INSERT INTO fy_web_log_001 VALUES("452","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/silde_show/index.html","admin","SildeShow","index","GET","a:0:{}","1535768594");
INSERT INTO fy_web_log_001 VALUES("453","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/modular/index.html","admin","Modular","index","GET","a:0:{}","1535768595");
INSERT INTO fy_web_log_001 VALUES("454","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/brand/index.html","admin","Brand","index","GET","a:0:{}","1535768595");
INSERT INTO fy_web_log_001 VALUES("455","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/lottery/index.html","admin","Lottery","index","GET","a:0:{}","1535768595");
INSERT INTO fy_web_log_001 VALUES("456","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_role/index.html","admin","AdminRole","index","GET","a:0:{}","1535768596");
INSERT INTO fy_web_log_001 VALUES("457","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_group/index.html","admin","AdminGroup","index","GET","a:0:{}","1535768596");
INSERT INTO fy_web_log_001 VALUES("458","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1535768604");
INSERT INTO fy_web_log_001 VALUES("459","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535768604");
INSERT INTO fy_web_log_001 VALUES("460","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1535768605");
INSERT INTO fy_web_log_001 VALUES("461","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535768605");
INSERT INTO fy_web_log_001 VALUES("462","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1535768606");
INSERT INTO fy_web_log_001 VALUES("463","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535768606");
INSERT INTO fy_web_log_001 VALUES("464","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1535768607");
INSERT INTO fy_web_log_001 VALUES("465","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535768607");
INSERT INTO fy_web_log_001 VALUES("466","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_user/index.html","admin","AdminUser","index","GET","a:0:{}","1535768631");
INSERT INTO fy_web_log_001 VALUES("467","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/login_log/index.html","admin","LoginLog","index","GET","a:0:{}","1535768631");
INSERT INTO fy_web_log_001 VALUES("468","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/modular/index.html","admin","Modular","index","GET","a:0:{}","1535768631");
INSERT INTO fy_web_log_001 VALUES("469","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/brand/index.html","admin","Brand","index","GET","a:0:{}","1535768632");
INSERT INTO fy_web_log_001 VALUES("470","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/lottery/index.html","admin","Lottery","index","GET","a:0:{}","1535768632");
INSERT INTO fy_web_log_001 VALUES("471","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_grade_desc/index.html","admin","CustomerGradeDesc","index","GET","a:0:{}","1535768632");
INSERT INTO fy_web_log_001 VALUES("472","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/transaction/index.html","admin","Transaction","index","GET","a:0:{}","1535768633");
INSERT INTO fy_web_log_001 VALUES("473","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/message/index.html","admin","Message","index","GET","a:0:{}","1535768634");
INSERT INTO fy_web_log_001 VALUES("474","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods_comment/index.html","admin","GoodsComment","index","GET","a:0:{}","1535768634");
INSERT INTO fy_web_log_001 VALUES("475","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/use_lottery/index.html","admin","UseLottery","index","GET","a:0:{}","1535768635");
INSERT INTO fy_web_log_001 VALUES("476","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/gift_bag/index.html","admin","GiftBag","index","GET","a:0:{}","1535768635");
INSERT INTO fy_web_log_001 VALUES("477","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods_class/index.html","admin","GoodsClass","index","GET","a:0:{}","1535768636");
INSERT INTO fy_web_log_001 VALUES("478","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/login_log/index.html","admin","LoginLog","index","GET","a:0:{}","1535768637");
INSERT INTO fy_web_log_001 VALUES("479","0","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin","admin","Index","index","GET","a:0:{}","1535772160");
INSERT INTO fy_web_log_001 VALUES("480","0","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/pub/login.html","admin","Pub","login","GET","a:0:{}","1535772160");
INSERT INTO fy_web_log_001 VALUES("481","0","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/pub/checklogin.html","admin","Pub","checklogin","POST","a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"qeyc\";}","1535772170");
INSERT INTO fy_web_log_001 VALUES("482","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1535772170");
INSERT INTO fy_web_log_001 VALUES("483","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535772171");
INSERT INTO fy_web_log_001 VALUES("484","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/use_lottery/index.html","admin","UseLottery","index","GET","a:0:{}","1535772185");
INSERT INTO fy_web_log_001 VALUES("485","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/index.html","admin","CustomerRight","index","GET","a:0:{}","1535772187");
INSERT INTO fy_web_log_001 VALUES("486","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/add.html","admin","CustomerRight","add","GET","a:0:{}","1535772194");
INSERT INTO fy_web_log_001 VALUES("487","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/upload/index/id/upload.html","admin","Upload","index","GET","a:1:{s:2:\"id\";s:6:\"upload\";}","1535772623");
INSERT INTO fy_web_log_001 VALUES("488","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/upload/listimage.html","admin","Upload","listimage","POST","a:2:{s:1:\"p\";s:1:\"1\";s:5:\"count\";s:1:\"1\";}","1535772625");
INSERT INTO fy_web_log_001 VALUES("489","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/upload/upload.html","admin","Upload","upload","POST","a:0:{}","1535772712");
INSERT INTO fy_web_log_001 VALUES("490","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/add.html","admin","CustomerRight","add","GET","a:0:{}","1535772737");
INSERT INTO fy_web_log_001 VALUES("491","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/add.html","admin","CustomerRight","add","POST","a:5:{s:2:\"id\";s:0:\"\";s:4:\"name\";s:3:\"fff\";s:3:\"pic\";s:58:\"/tmp/uploads/20180901/216be9b0a3218cc416d95c39e00e52ed.png\";s:4:\"desc\";s:4:\"ffff\";s:11:\"instruction\";s:25:\"&lt;p&gt;ffffff&lt;/p&gt;\";}","1535772748");
INSERT INTO fy_web_log_001 VALUES("492","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/index.html","admin","CustomerRight","index","GET","a:0:{}","1535772748");
INSERT INTO fy_web_log_001 VALUES("493","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/4.html","admin","CustomerRight","edit","GET","a:1:{s:2:\"id\";s:1:\"4\";}","1535772753");
INSERT INTO fy_web_log_001 VALUES("494","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/4.html","admin","CustomerRight","edit","POST","a:5:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"升级送积分\";s:3:\"pic\";s:58:\"/tmp/uploads/20180723/1681a77828fe3083f2699165d26908bb.jpg\";s:4:\"desc\";s:15:\"升级送积分\";s:11:\"instruction\";s:34:\"&lt;p&gt;升级送积分&lt;/p&gt;\";}","1535772756");
INSERT INTO fy_web_log_001 VALUES("495","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/index.html","admin","CustomerRight","index","GET","a:0:{}","1535772756");
INSERT INTO fy_web_log_001 VALUES("496","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/3.html","admin","CustomerRight","edit","GET","a:1:{s:2:\"id\";s:1:\"3\";}","1535772757");
INSERT INTO fy_web_log_001 VALUES("497","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/3.html","admin","CustomerRight","edit","POST","a:5:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:18:\"钻石会员专享\";s:3:\"pic\";s:58:\"/tmp/uploads/20180723/6486343a125aabff9602a9e54715d5dc.png\";s:4:\"desc\";s:18:\"钻石会员专享\";s:11:\"instruction\";s:37:\"&lt;p&gt;钻石会员专享&lt;/p&gt;\";}","1535772759");
INSERT INTO fy_web_log_001 VALUES("498","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/index.html","admin","CustomerRight","index","GET","a:0:{}","1535772760");
INSERT INTO fy_web_log_001 VALUES("499","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/3.html","admin","CustomerRight","edit","GET","a:1:{s:2:\"id\";s:1:\"3\";}","1535772762");
INSERT INTO fy_web_log_001 VALUES("500","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/3.html","admin","CustomerRight","edit","POST","a:5:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:18:\"钻石会员专享\";s:3:\"pic\";s:58:\"/pic/uploads/20180723/6486343a125aabff9602a9e54715d5dc.png\";s:4:\"desc\";s:18:\"钻石会员专享\";s:11:\"instruction\";s:37:\"&lt;p&gt;钻石会员专享&lt;/p&gt;\";}","1535772763");
INSERT INTO fy_web_log_001 VALUES("501","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/index.html","admin","CustomerRight","index","GET","a:0:{}","1535772763");
INSERT INTO fy_web_log_001 VALUES("502","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/2.html","admin","CustomerRight","edit","GET","a:1:{s:2:\"id\";s:1:\"2\";}","1535772765");
INSERT INTO fy_web_log_001 VALUES("503","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/2.html","admin","CustomerRight","edit","POST","a:5:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:12:\"生日礼包\";s:3:\"pic\";s:58:\"/tmp/uploads/20180723/00b284f74955a532c941f0d4d061c7fd.jpg\";s:4:\"desc\";s:18:\"生日会员专享\";s:11:\"instruction\";s:37:\"&lt;p&gt;生日会员专享&lt;/p&gt;\";}","1535772767");
INSERT INTO fy_web_log_001 VALUES("504","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/index.html","admin","CustomerRight","index","GET","a:0:{}","1535772767");
INSERT INTO fy_web_log_001 VALUES("505","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/1.html","admin","CustomerRight","edit","GET","a:1:{s:2:\"id\";s:1:\"1\";}","1535772768");
INSERT INTO fy_web_log_001 VALUES("506","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/1.html","admin","CustomerRight","edit","POST","a:5:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"新人礼包\";s:3:\"pic\";s:58:\"/tmp/uploads/20180723/949ad4c57591a0793b777e74c0afbd33.jpg\";s:4:\"desc\";s:12:\"新人专享\";s:11:\"instruction\";s:82:\"&lt;p&gt;礼包包含一张优惠券、一张抵用券、一张积分券&lt;/p&gt;\";}","1535772770");
INSERT INTO fy_web_log_001 VALUES("507","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/index.html","admin","CustomerRight","index","GET","a:0:{}","1535772770");
INSERT INTO fy_web_log_001 VALUES("508","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/4.html","admin","CustomerRight","edit","GET","a:1:{s:2:\"id\";s:1:\"4\";}","1535772783");
INSERT INTO fy_web_log_001 VALUES("509","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/4.html","admin","CustomerRight","edit","GET","a:1:{s:2:\"id\";s:1:\"4\";}","1535772810");
INSERT INTO fy_web_log_001 VALUES("510","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/upload/index/id/upload.html","admin","Upload","index","GET","a:1:{s:2:\"id\";s:6:\"upload\";}","1535772811");
INSERT INTO fy_web_log_001 VALUES("511","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/upload/listimage.html","admin","Upload","listimage","POST","a:2:{s:1:\"p\";s:1:\"1\";s:5:\"count\";s:1:\"1\";}","1535772813");
INSERT INTO fy_web_log_001 VALUES("512","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/4.html","admin","CustomerRight","edit","POST","a:5:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"升级送积分\";s:3:\"pic\";s:58:\"/tmp/uploads/20180822/7a2570970d3d8229dcf3deca8903d946.png\";s:4:\"desc\";s:15:\"升级送积分\";s:11:\"instruction\";s:34:\"&lt;p&gt;升级送积分&lt;/p&gt;\";}","1535772818");
INSERT INTO fy_web_log_001 VALUES("513","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/index.html","admin","CustomerRight","index","GET","a:0:{}","1535772818");
INSERT INTO fy_web_log_001 VALUES("514","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/4.html","admin","CustomerRight","edit","GET","a:1:{s:2:\"id\";s:1:\"4\";}","1535772821");
INSERT INTO fy_web_log_001 VALUES("515","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/order/index.html","admin","Order","index","GET","a:0:{}","1535772904");
INSERT INTO fy_web_log_001 VALUES("516","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/message/index.html","admin","Message","index","GET","a:0:{}","1535772905");
INSERT INTO fy_web_log_001 VALUES("517","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/goods_comment/index.html","admin","GoodsComment","index","GET","a:0:{}","1535772907");
INSERT INTO fy_web_log_001 VALUES("518","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/wx_pay_refund_log/index.html","admin","WxPayRefundLog","index","GET","a:0:{}","1535772908");
INSERT INTO fy_web_log_001 VALUES("519","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/use_lottery/index.html","admin","UseLottery","index","GET","a:0:{}","1535772909");
INSERT INTO fy_web_log_001 VALUES("520","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/gift_bag/index.html","admin","GiftBag","index","GET","a:0:{}","1535772910");
INSERT INTO fy_web_log_001 VALUES("521","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_grade_desc/index.html","admin","CustomerGradeDesc","index","GET","a:0:{}","1535772912");
INSERT INTO fy_web_log_001 VALUES("522","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/lottery_log/index.html","admin","LotteryLog","index","GET","a:0:{}","1535772915");
INSERT INTO fy_web_log_001 VALUES("523","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/lottery/index.html","admin","Lottery","index","GET","a:0:{}","1535772941");
INSERT INTO fy_web_log_001 VALUES("524","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_task/index.html","admin","CustomerTask","index","GET","a:0:{}","1535772943");
INSERT INTO fy_web_log_001 VALUES("525","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer/index.html","admin","Customer","index","GET","a:0:{}","1535772943");
INSERT INTO fy_web_log_001 VALUES("526","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/brand/index.html","admin","Brand","index","GET","a:0:{}","1535772951");
INSERT INTO fy_web_log_001 VALUES("527","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/brand/edit/id/17.html","admin","Brand","edit","GET","a:1:{s:2:\"id\";s:2:\"17\";}","1535772954");
INSERT INTO fy_web_log_001 VALUES("528","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1535772962");
INSERT INTO fy_web_log_001 VALUES("529","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/goods/edit/id/1.html","admin","Goods","edit","GET","a:1:{s:2:\"id\";s:1:\"1\";}","1535772965");
INSERT INTO fy_web_log_001 VALUES("530","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/goods/getskudata.html","admin","Goods","getskudata","POST","a:1:{s:2:\"id\";s:1:\"1\";}","1535772965");
INSERT INTO fy_web_log_001 VALUES("531","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/goods/edit/id/1.html","admin","Goods","edit","GET","a:1:{s:2:\"id\";s:1:\"1\";}","1535773119");
INSERT INTO fy_web_log_001 VALUES("532","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/goods/getskudata.html","admin","Goods","getskudata","POST","a:1:{s:2:\"id\";s:1:\"1\";}","1535773120");
INSERT INTO fy_web_log_001 VALUES("533","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/brand/index.html","admin","Brand","index","GET","a:0:{}","1535773123");
INSERT INTO fy_web_log_001 VALUES("534","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/brand/edit/id/17.html","admin","Brand","edit","GET","a:1:{s:2:\"id\";s:2:\"17\";}","1535773125");
INSERT INTO fy_web_log_001 VALUES("535","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1535773130");
INSERT INTO fy_web_log_001 VALUES("536","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535773130");
INSERT INTO fy_web_log_001 VALUES("537","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1535773138");
INSERT INTO fy_web_log_001 VALUES("538","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/brand/index.html","admin","Brand","index","GET","a:0:{}","1535773141");
INSERT INTO fy_web_log_001 VALUES("539","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/brand/edit/id/17.html","admin","Brand","edit","GET","a:1:{s:2:\"id\";s:2:\"17\";}","1535773143");
INSERT INTO fy_web_log_001 VALUES("540","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1535773180");
INSERT INTO fy_web_log_001 VALUES("541","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535773180");
INSERT INTO fy_web_log_001 VALUES("542","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1535773182");
INSERT INTO fy_web_log_001 VALUES("543","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535773182");
INSERT INTO fy_web_log_001 VALUES("544","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/brand/index.html","admin","Brand","index","GET","a:0:{}","1535773185");
INSERT INTO fy_web_log_001 VALUES("545","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/brand/edit/id/17.html","admin","Brand","edit","GET","a:1:{s:2:\"id\";s:2:\"17\";}","1535773187");
INSERT INTO fy_web_log_001 VALUES("546","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/brand/index.html","admin","Brand","index","GET","a:0:{}","1535773368");
INSERT INTO fy_web_log_001 VALUES("547","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/brand/edit/id/17.html","admin","Brand","edit","GET","a:1:{s:2:\"id\";s:2:\"17\";}","1535773370");
INSERT INTO fy_web_log_001 VALUES("548","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1535773380");
INSERT INTO fy_web_log_001 VALUES("549","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535773380");
INSERT INTO fy_web_log_001 VALUES("550","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/brand/index.html","admin","Brand","index","GET","a:0:{}","1535773383");
INSERT INTO fy_web_log_001 VALUES("551","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/brand/edit/id/17.html","admin","Brand","edit","GET","a:1:{s:2:\"id\";s:2:\"17\";}","1535773385");
INSERT INTO fy_web_log_001 VALUES("552","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1535773471");
INSERT INTO fy_web_log_001 VALUES("553","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535773472");
INSERT INTO fy_web_log_001 VALUES("554","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1535773474");
INSERT INTO fy_web_log_001 VALUES("555","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/brand/index.html","admin","Brand","index","GET","a:0:{}","1535773477");
INSERT INTO fy_web_log_001 VALUES("556","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/brand/edit/id/17.html","admin","Brand","edit","GET","a:1:{s:2:\"id\";s:2:\"17\";}","1535773478");
INSERT INTO fy_web_log_001 VALUES("557","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/brand/edit/id/17.html","admin","Brand","edit","GET","a:1:{s:2:\"id\";s:2:\"17\";}","1535773565");
INSERT INTO fy_web_log_001 VALUES("558","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/index.html","admin","CustomerRight","index","GET","a:0:{}","1535773574");
INSERT INTO fy_web_log_001 VALUES("559","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/5.html","admin","CustomerRight","edit","GET","a:1:{s:2:\"id\";s:1:\"5\";}","1535773659");
INSERT INTO fy_web_log_001 VALUES("560","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/3.html","admin","CustomerRight","edit","GET","a:1:{s:2:\"id\";s:1:\"3\";}","1535773667");
INSERT INTO fy_web_log_001 VALUES("561","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/4.html","admin","CustomerRight","edit","GET","a:1:{s:2:\"id\";s:1:\"4\";}","1535773675");
INSERT INTO fy_web_log_001 VALUES("562","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/upload/index/id/upload.html","admin","Upload","index","GET","a:1:{s:2:\"id\";s:6:\"upload\";}","1535773676");
INSERT INTO fy_web_log_001 VALUES("563","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/upload/upload.html","admin","Upload","upload","POST","a:0:{}","1535773681");
INSERT INTO fy_web_log_001 VALUES("564","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/4.html","admin","CustomerRight","edit","POST","a:5:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"升级送积分\";s:3:\"pic\";s:58:\"/tmp/uploads/20180901/ad61a9b50e7d2b918618a29c9d7db9c8.png\";s:4:\"desc\";s:15:\"升级送积分\";s:11:\"instruction\";s:34:\"&lt;p&gt;升级送积分&lt;/p&gt;\";}","1535773687");
INSERT INTO fy_web_log_001 VALUES("565","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/index.html","admin","CustomerRight","index","GET","a:0:{}","1535773687");
INSERT INTO fy_web_log_001 VALUES("566","0","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1535936727");
INSERT INTO fy_web_log_001 VALUES("567","0","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/pub/login.html","admin","Pub","login","GET","a:0:{}","1535936727");
INSERT INTO fy_web_log_001 VALUES("568","0","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/pub/login.html","admin","Pub","login","GET","a:0:{}","1535936729");
INSERT INTO fy_web_log_001 VALUES("569","0","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/pub/checklogin.html","admin","Pub","checklogin","POST","a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:5:\"eofo]\";}","1535936736");
INSERT INTO fy_web_log_001 VALUES("570","0","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/pub/checklogin.html","admin","Pub","checklogin","POST","a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"kcae\";}","1535936743");
INSERT INTO fy_web_log_001 VALUES("571","1","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1535936743");
INSERT INTO fy_web_log_001 VALUES("572","1","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535936744");
INSERT INTO fy_web_log_001 VALUES("573","1","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer/index.html","admin","Customer","index","GET","a:0:{}","1535936751");
INSERT INTO fy_web_log_001 VALUES("574","1","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_right/index.html","admin","CustomerRight","index","GET","a:0:{}","1535936761");
INSERT INTO fy_web_log_001 VALUES("575","1","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/5.html","admin","CustomerRight","edit","GET","a:1:{s:2:\"id\";s:1:\"5\";}","1535936764");
INSERT INTO fy_web_log_001 VALUES("576","1","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/1.html","admin","CustomerRight","edit","GET","a:1:{s:2:\"id\";s:1:\"1\";}","1535936779");
INSERT INTO fy_web_log_001 VALUES("577","1","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/upload/index/id/upload.html","admin","Upload","index","GET","a:1:{s:2:\"id\";s:6:\"upload\";}","1535936788");
INSERT INTO fy_web_log_001 VALUES("578","1","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/upload/upload.html","admin","Upload","upload","POST","a:0:{}","1535936877");
INSERT INTO fy_web_log_001 VALUES("579","1","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/1.html","admin","CustomerRight","edit","POST","a:5:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"新人礼包\";s:3:\"pic\";s:58:\"/tmp/uploads/20180903/2b2e90ff2b073b544240a3152c7416ff.jpg\";s:4:\"desc\";s:12:\"新人专享\";s:11:\"instruction\";s:82:\"&lt;p&gt;礼包包含一张优惠券、一张抵用券、一张积分券&lt;/p&gt;\";}","1535936878");
INSERT INTO fy_web_log_001 VALUES("580","1","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_right/index.html","admin","CustomerRight","index","GET","a:0:{}","1535936878");
INSERT INTO fy_web_log_001 VALUES("581","1","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/1.html","admin","CustomerRight","edit","GET","a:1:{s:2:\"id\";s:1:\"1\";}","1535936927");
INSERT INTO fy_web_log_001 VALUES("582","0","220.197.182.69","中国 贵州 贵阳 ","Windows NT","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/node_map/index.html","admin","NodeMap","index","GET","a:0:{}","1535962639");
INSERT INTO fy_web_log_001 VALUES("583","0","220.197.182.69","中国 贵州 贵阳 ","Windows NT","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/pub/loginframe.html","admin","Pub","loginframe","GET","a:0:{}","1535962641");
INSERT INTO fy_web_log_001 VALUES("584","0","220.197.182.69","中国 贵州 贵阳 ","Windows NT","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/pub/checklogin.html","admin","Pub","checklogin","POST","a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:5:\"admin\";s:7:\"captcha\";s:4:\"2byk\";}","1535962653");
INSERT INTO fy_web_log_001 VALUES("585","0","220.197.182.69","中国 贵州 贵阳 ","Windows NT","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/pub/checklogin.html","admin","Pub","checklogin","POST","a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"k5vr\";}","1535962669");
INSERT INTO fy_web_log_001 VALUES("586","1","220.197.182.69","中国 贵州 贵阳 ","Windows NT","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/web_log/index.html","admin","WebLog","index","GET","a:0:{}","1535962671");
INSERT INTO fy_web_log_001 VALUES("587","1","220.197.182.69","中国 贵州 贵阳 ","Windows NT","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1535962672");
INSERT INTO fy_web_log_001 VALUES("588","0","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1536135080");
INSERT INTO fy_web_log_001 VALUES("589","0","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/pub/login.html","admin","Pub","login","GET","a:0:{}","1536135080");
INSERT INTO fy_web_log_001 VALUES("590","0","220.197.182.84","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1536135114");
INSERT INTO fy_web_log_001 VALUES("591","0","220.197.182.84","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/pub/login.html","admin","Pub","login","GET","a:0:{}","1536135114");
INSERT INTO fy_web_log_001 VALUES("592","0","183.61.51.51","中国 广东 深圳 ","Mac","未知浏览器()","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1536135147");
INSERT INTO fy_web_log_001 VALUES("593","0","61.129.6.151","中国 上海 上海 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1536135174");
INSERT INTO fy_web_log_001 VALUES("594","0","61.151.178.163","中国 上海 上海 ","Mac","未知浏览器()","http://www.fyxt701.com/index.php/admin/pub/login.html","admin","Pub","login","GET","a:0:{}","1536135174");
INSERT INTO fy_web_log_001 VALUES("595","0","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1536135296");
INSERT INTO fy_web_log_001 VALUES("596","0","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/pub/login.html","admin","Pub","login","GET","a:0:{}","1536135296");
INSERT INTO fy_web_log_001 VALUES("597","0","101.89.239.238","中国 上海 上海 ","Linux","Chrome(53.0.2785.49)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1536135356");
INSERT INTO fy_web_log_001 VALUES("598","0","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1536197690");
INSERT INTO fy_web_log_001 VALUES("599","0","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/pub/login.html","admin","Pub","login","GET","a:0:{}","1536197690");
INSERT INTO fy_web_log_001 VALUES("600","0","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/pub/checklogin.html","admin","Pub","checklogin","POST","a:4:{s:7:\"account\";s:8:\"welcome \";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"7t7n\";s:6:\"online\";s:1:\"1\";}","1536197715");
INSERT INTO fy_web_log_001 VALUES("601","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1536197716");
INSERT INTO fy_web_log_001 VALUES("602","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1536197716");
INSERT INTO fy_web_log_001 VALUES("603","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1536197757");
INSERT INTO fy_web_log_001 VALUES("604","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1536197757");
INSERT INTO fy_web_log_001 VALUES("605","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1536197763");
INSERT INTO fy_web_log_001 VALUES("606","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/web_log/index.html","admin","WebLog","index","GET","a:0:{}","1536197770");
INSERT INTO fy_web_log_001 VALUES("607","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/login_log/index.html","admin","LoginLog","index","GET","a:0:{}","1536197772");
INSERT INTO fy_web_log_001 VALUES("608","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/order/index.html","admin","Order","index","GET","a:0:{}","1536197774");
INSERT INTO fy_web_log_001 VALUES("609","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1536197775");
INSERT INTO fy_web_log_001 VALUES("610","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods/add.html","admin","Goods","add","GET","a:0:{}","1536197780");
INSERT INTO fy_web_log_001 VALUES("611","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/wx_pay_refund_log/index.html","admin","WxPayRefundLog","index","GET","a:0:{}","1536197794");
INSERT INTO fy_web_log_001 VALUES("612","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/lottery/index.html","admin","Lottery","index","GET","a:0:{}","1536197796");
INSERT INTO fy_web_log_001 VALUES("613","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/activity/index.html","admin","Activity","index","GET","a:0:{}","1536197798");
INSERT INTO fy_web_log_001 VALUES("614","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/silde_show/index.html","admin","SildeShow","index","GET","a:0:{}","1536197799");
INSERT INTO fy_web_log_001 VALUES("615","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/web_log/index.html","admin","WebLog","index","GET","a:0:{}","1536198056");
INSERT INTO fy_web_log_001 VALUES("616","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/login_log/index.html","admin","LoginLog","index","GET","a:0:{}","1536198128");
INSERT INTO fy_web_log_001 VALUES("617","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/order/index.html","admin","Order","index","GET","a:0:{}","1536198137");
INSERT INTO fy_web_log_001 VALUES("618","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/web_log/index.html","admin","WebLog","index","GET","a:0:{}","1536198216");
INSERT INTO fy_web_log_001 VALUES("619","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/web_log/detail/id/617.html","admin","WebLog","detail","GET","a:1:{s:2:\"id\";s:3:\"617\";}","1536198220");
INSERT INTO fy_web_log_001 VALUES("620","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/login_log/index.html","admin","LoginLog","index","GET","a:0:{}","1536198229");
INSERT INTO fy_web_log_001 VALUES("621","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/order/index.html","admin","Order","index","GET","a:0:{}","1536198243");
INSERT INTO fy_web_log_001 VALUES("622","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1536198247");
INSERT INTO fy_web_log_001 VALUES("623","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/order/index.html","admin","Order","index","GET","a:0:{}","1536198250");
INSERT INTO fy_web_log_001 VALUES("624","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1536198261");
INSERT INTO fy_web_log_001 VALUES("625","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods/updowntip.html","admin","Goods","updowntip","POST","a:2:{s:2:\"id\";s:1:\"2\";s:4:\"flag\";s:4:\"down\";}","1536198276");
INSERT INTO fy_web_log_001 VALUES("626","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1536198278");
INSERT INTO fy_web_log_001 VALUES("627","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods/edit/type/show/id/2.html","admin","Goods","edit","GET","a:2:{s:4:\"type\";s:4:\"show\";s:2:\"id\";s:1:\"2\";}","1536198279");
INSERT INTO fy_web_log_001 VALUES("628","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods/getskudata.html","admin","Goods","getskudata","POST","a:1:{s:2:\"id\";s:1:\"2\";}","1536198279");
INSERT INTO fy_web_log_001 VALUES("629","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/wx_pay_refund_log/index.html","admin","WxPayRefundLog","index","GET","a:0:{}","1536198300");
INSERT INTO fy_web_log_001 VALUES("630","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/lottery/index.html","admin","Lottery","index","GET","a:0:{}","1536198304");
INSERT INTO fy_web_log_001 VALUES("631","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/activity/index.html","admin","Activity","index","GET","a:0:{}","1536198308");
INSERT INTO fy_web_log_001 VALUES("632","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/silde_show/index.html","admin","SildeShow","index","GET","a:0:{}","1536198317");
INSERT INTO fy_web_log_001 VALUES("633","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/message/index.html","admin","Message","index","GET","a:0:{}","1536198320");
INSERT INTO fy_web_log_001 VALUES("634","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/brand/index.html","admin","Brand","index","GET","a:0:{}","1536198323");
INSERT INTO fy_web_log_001 VALUES("635","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/use_lottery/index.html","admin","UseLottery","index","GET","a:0:{}","1536198344");
INSERT INTO fy_web_log_001 VALUES("636","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/customer_task/index.html","admin","CustomerTask","index","GET","a:0:{}","1536198351");
INSERT INTO fy_web_log_001 VALUES("637","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/transaction/index.html","admin","Transaction","index","GET","a:0:{}","1536198354");
INSERT INTO fy_web_log_001 VALUES("638","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods_class/index.html","admin","GoodsClass","index","GET","a:0:{}","1536198357");
INSERT INTO fy_web_log_001 VALUES("639","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods_comment/index.html","admin","GoodsComment","index","GET","a:0:{}","1536198365");
INSERT INTO fy_web_log_001 VALUES("640","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/customer/index.html","admin","Customer","index","GET","a:0:{}","1536198366");
INSERT INTO fy_web_log_001 VALUES("641","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/lottery_log/index.html","admin","LotteryLog","index","GET","a:0:{}","1536198376");
INSERT INTO fy_web_log_001 VALUES("642","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1536198380");
INSERT INTO fy_web_log_001 VALUES("643","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/lottery_log/index.html","admin","LotteryLog","index","GET","a:0:{}","1536198492");
INSERT INTO fy_web_log_001 VALUES("644","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/customer/index.html","admin","Customer","index","GET","a:0:{}","1536198493");
INSERT INTO fy_web_log_001 VALUES("645","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods_comment/index.html","admin","GoodsComment","index","GET","a:0:{}","1536198494");
INSERT INTO fy_web_log_001 VALUES("646","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/transaction/index.html","admin","Transaction","index","GET","a:0:{}","1536198504");
INSERT INTO fy_web_log_001 VALUES("647","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/customer_task/index.html","admin","CustomerTask","index","GET","a:0:{}","1536198505");
INSERT INTO fy_web_log_001 VALUES("648","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/use_lottery/index.html","admin","UseLottery","index","GET","a:0:{}","1536198508");
INSERT INTO fy_web_log_001 VALUES("649","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1536198591");
INSERT INTO fy_web_log_001 VALUES("650","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1536198592");
INSERT INTO fy_web_log_001 VALUES("651","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/web_log/index.html","admin","WebLog","index","GET","a:0:{}","1536198594");
INSERT INTO fy_web_log_001 VALUES("652","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/web_log/detail/id/650.html","admin","WebLog","detail","GET","a:1:{s:2:\"id\";s:3:\"650\";}","1536198597");
INSERT INTO fy_web_log_001 VALUES("653","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/order/index.html","admin","Order","index","GET","a:0:{}","1536198602");
INSERT INTO fy_web_log_001 VALUES("654","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1536198609");
INSERT INTO fy_web_log_001 VALUES("655","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods/edit/type/show/id/2.html","admin","Goods","edit","GET","a:2:{s:4:\"type\";s:4:\"show\";s:2:\"id\";s:1:\"2\";}","1536198612");
INSERT INTO fy_web_log_001 VALUES("656","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods/getskudata.html","admin","Goods","getskudata","POST","a:1:{s:2:\"id\";s:1:\"2\";}","1536198612");
INSERT INTO fy_web_log_001 VALUES("657","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/order/index.html","admin","Order","index","GET","a:0:{}","1536198680");
INSERT INTO fy_web_log_001 VALUES("658","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods_comment/index.html","admin","GoodsComment","index","GET","a:0:{}","1536198714");
INSERT INTO fy_web_log_001 VALUES("659","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods_class/index.html","admin","GoodsClass","index","GET","a:0:{}","1536198715");
INSERT INTO fy_web_log_001 VALUES("660","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1536198716");
INSERT INTO fy_web_log_001 VALUES("661","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/order/index.html","admin","Order","index","GET","a:0:{}","1536198718");
INSERT INTO fy_web_log_001 VALUES("662","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1536198780");
INSERT INTO fy_web_log_001 VALUES("663","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods/edit/type/show/id/2.html","admin","Goods","edit","GET","a:2:{s:4:\"type\";s:4:\"show\";s:2:\"id\";s:1:\"2\";}","1536198785");
INSERT INTO fy_web_log_001 VALUES("664","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods/getskudata.html","admin","Goods","getskudata","POST","a:1:{s:2:\"id\";s:1:\"2\";}","1536198785");
INSERT INTO fy_web_log_001 VALUES("665","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/wx_pay_refund_log/index.html","admin","WxPayRefundLog","index","GET","a:0:{}","1536198787");
INSERT INTO fy_web_log_001 VALUES("666","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/lottery/index.html","admin","Lottery","index","GET","a:0:{}","1536198791");
INSERT INTO fy_web_log_001 VALUES("667","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/activity/index.html","admin","Activity","index","GET","a:0:{}","1536198793");
INSERT INTO fy_web_log_001 VALUES("668","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/silde_show/index.html","admin","SildeShow","index","GET","a:0:{}","1536198797");
INSERT INTO fy_web_log_001 VALUES("669","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/message/index.html","admin","Message","index","GET","a:0:{}","1536198799");
INSERT INTO fy_web_log_001 VALUES("670","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/brand/index.html","admin","Brand","index","GET","a:0:{}","1536198804");
INSERT INTO fy_web_log_001 VALUES("671","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/use_lottery/index.html","admin","UseLottery","index","GET","a:0:{}","1536198807");
INSERT INTO fy_web_log_001 VALUES("672","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/customer_task/index.html","admin","CustomerTask","index","GET","a:0:{}","1536198809");
INSERT INTO fy_web_log_001 VALUES("673","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/order/index.html","admin","Order","index","GET","a:0:{}","1536198810");
INSERT INTO fy_web_log_001 VALUES("674","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1536199029");
INSERT INTO fy_web_log_001 VALUES("675","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1536199263");
INSERT INTO fy_web_log_001 VALUES("676","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/lottery_log/index.html","admin","LotteryLog","index","GET","a:0:{}","1536199264");
INSERT INTO fy_web_log_001 VALUES("677","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/customer/index.html","admin","Customer","index","GET","a:0:{}","1536199265");
INSERT INTO fy_web_log_001 VALUES("678","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods_comment/index.html","admin","GoodsComment","index","GET","a:0:{}","1536199268");
INSERT INTO fy_web_log_001 VALUES("679","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods_class/index.html","admin","GoodsClass","index","GET","a:0:{}","1536199269");
INSERT INTO fy_web_log_001 VALUES("680","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/transaction/index.html","admin","Transaction","index","GET","a:0:{}","1536199270");
INSERT INTO fy_web_log_001 VALUES("681","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/customer_task/index.html","admin","CustomerTask","index","GET","a:0:{}","1536199274");
INSERT INTO fy_web_log_001 VALUES("682","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/use_lottery/index.html","admin","UseLottery","index","GET","a:0:{}","1536199278");
INSERT INTO fy_web_log_001 VALUES("683","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/brand/index.html","admin","Brand","index","GET","a:0:{}","1536199280");
INSERT INTO fy_web_log_001 VALUES("684","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/message/index.html","admin","Message","index","GET","a:0:{}","1536199282");
INSERT INTO fy_web_log_001 VALUES("685","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/silde_show/index.html","admin","SildeShow","index","GET","a:0:{}","1536199285");
INSERT INTO fy_web_log_001 VALUES("686","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/activity/index.html","admin","Activity","index","GET","a:0:{}","1536199286");
INSERT INTO fy_web_log_001 VALUES("687","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/lottery/index.html","admin","Lottery","index","GET","a:0:{}","1536199287");
INSERT INTO fy_web_log_001 VALUES("688","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/wx_pay_refund_log/index.html","admin","WxPayRefundLog","index","GET","a:0:{}","1536199289");
INSERT INTO fy_web_log_001 VALUES("689","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1536199290");
INSERT INTO fy_web_log_001 VALUES("690","0","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1536540951");
INSERT INTO fy_web_log_001 VALUES("691","0","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/pub/login.html","admin","Pub","login","GET","a:0:{}","1536540951");
INSERT INTO fy_web_log_001 VALUES("692","0","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/pub/checklogin.html","admin","Pub","checklogin","POST","a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"avpf\";}","1536540965");
INSERT INTO fy_web_log_001 VALUES("693","1","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1536540965");
INSERT INTO fy_web_log_001 VALUES("694","1","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1536540965");
INSERT INTO fy_web_log_001 VALUES("695","1","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_grade/index.html","admin","CustomerGrade","index","GET","a:0:{}","1536540976");
INSERT INTO fy_web_log_001 VALUES("696","1","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_task/index.html","admin","CustomerTask","index","GET","a:0:{}","1536540977");
INSERT INTO fy_web_log_001 VALUES("697","1","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/lottery/index.html","admin","Lottery","index","GET","a:0:{}","1536540977");
INSERT INTO fy_web_log_001 VALUES("698","1","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer/index.html","admin","Customer","index","GET","a:0:{}","1536540978");
INSERT INTO fy_web_log_001 VALUES("699","1","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/brand/index.html","admin","Brand","index","GET","a:0:{}","1536540994");
INSERT INTO fy_web_log_001 VALUES("700","1","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/brand/index.html","admin","Brand","index","GET","a:0:{}","1536540998");
INSERT INTO fy_web_log_001 VALUES("701","1","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1536540999");
INSERT INTO fy_web_log_001 VALUES("702","0","220.197.182.69","中国 贵州 贵阳 ","Windows NT","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1536564435");
INSERT INTO fy_web_log_001 VALUES("703","0","220.197.182.69","中国 贵州 贵阳 ","Windows NT","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/pub/loginframe.html","admin","Pub","loginframe","GET","a:0:{}","1536564437");
INSERT INTO fy_web_log_001 VALUES("704","0","220.197.182.69","中国 贵州 贵阳 ","Windows NT","Firefox(62.0)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1537167773");
INSERT INTO fy_web_log_001 VALUES("705","0","220.197.182.69","中国 贵州 贵阳 ","Windows NT","Firefox(62.0)","http://www.fyxt701.com/index.php/admin/pub/login.html","admin","Pub","login","GET","a:0:{}","1537167773");
INSERT INTO fy_web_log_001 VALUES("706","0","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1538028986");
INSERT INTO fy_web_log_001 VALUES("707","0","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/pub/login.html","admin","Pub","login","GET","a:0:{}","1538028986");
INSERT INTO fy_web_log_001 VALUES("708","0","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/pub/checklogin.html","admin","Pub","checklogin","POST","a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"73ef\";}","1538028991");
INSERT INTO fy_web_log_001 VALUES("709","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1538028991");
INSERT INTO fy_web_log_001 VALUES("710","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1538028991");
INSERT INTO fy_web_log_001 VALUES("711","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1538028995");
INSERT INTO fy_web_log_001 VALUES("712","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/edit/id/2.html","admin","Goods","edit","GET","a:1:{s:2:\"id\";s:1:\"2\";}","1538029028");
INSERT INTO fy_web_log_001 VALUES("713","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/getskudata.html","admin","Goods","getskudata","POST","a:1:{s:2:\"id\";s:1:\"2\";}","1538029029");
INSERT INTO fy_web_log_001 VALUES("714","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/getskudata.html","admin","Goods","getskudata","POST","a:1:{s:2:\"id\";s:1:\"2\";}","1538029062");
INSERT INTO fy_web_log_001 VALUES("715","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/getskudata.html","admin","Goods","getskudata","POST","a:1:{s:2:\"id\";s:1:\"2\";}","1538029100");
INSERT INTO fy_web_log_001 VALUES("716","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/getskudata.html","admin","Goods","getskudata","POST","a:1:{s:2:\"id\";s:1:\"2\";}","1538029106");
INSERT INTO fy_web_log_001 VALUES("717","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/getskudata.html","admin","Goods","getskudata","POST","a:1:{s:2:\"id\";s:1:\"2\";}","1538029114");
INSERT INTO fy_web_log_001 VALUES("718","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/getskudata.html","admin","Goods","getskudata","POST","a:1:{s:2:\"id\";s:1:\"2\";}","1538029118");
INSERT INTO fy_web_log_001 VALUES("719","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/getskudata.html","admin","Goods","getskudata","POST","a:1:{s:2:\"id\";s:1:\"2\";}","1538029122");
INSERT INTO fy_web_log_001 VALUES("720","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/edit/id/2.html","admin","Goods","edit","POST","a:36:{s:2:\"id\";s:1:\"2\";s:7:\"user_id\";s:2:\"20\";s:4:\"name\";s:62:\"澳大利亚脐橙10个约140g/个 进口甜橙子新鲜水果\";s:8:\"subtitle\";s:0:\"\";s:7:\"yieldly\";s:0:\"\";s:10:\"main_image\";s:58:\"/pic/uploads/20180828/e9e0eb39e98c6a3f34f255d1560ea838.png\";s:14:\"goods_class_id\";s:1:\"3\";s:14:\"goods_brand_id\";s:2:\"21\";s:9:\"show_area\";s:1:\"4\";s:10:\"start_date\";s:0:\"\";s:8:\"end_date\";s:0:\"\";s:10:\"store_type\";s:1:\"1\";s:9:\"free_type\";s:1:\"1\";s:7:\"postage\";s:4:\"0.00\";s:12:\"return_score\";s:2:\"10\";s:3:\"pic\";a:4:{i:0;s:58:\"/pic/uploads/20180828/71b30d3af10a39e896908eacfb343a70.png\";i:1;s:58:\"/pic/uploads/20180828/c045d562f15a442f6a1f43cc5ed8ef1d.png\";i:2;s:58:\"/pic/uploads/20180828/506f6fbc6072a1aac31e855b119870c2.png\";i:3;s:58:\"/pic/uploads/20180828/72ec56580efd36a9c26379cfb4596237.png\";}s:7:\"orderby\";s:2:\"10\";s:12:\"goods_weight\";s:8:\"1400.000\";s:7:\"is_real\";s:1:\"1\";s:15:\"is_return_goods\";s:1:\"0\";s:10:\"is_comment\";s:1:\"1\";s:14:\"service_mobile\";s:8:\"86701701\";s:7:\"service\";a:1:{i:0;s:12:\"坏单包退\";}s:10:\"after_sale\";s:116:\"&lt;p&gt;坏单包退：确认收货24小时内，食物发生腐败变质，商家在24小时内处理。&lt;/p&gt;\";s:11:\"routine_key\";a:6:{i:0;s:6:\"品牌\";i:1;s:9:\"净含量\";i:2;s:12:\"包装方式\";i:3;s:9:\"保质期\";i:4;s:12:\"套餐份量\";i:5;s:12:\"配送频次\";}s:11:\"routine_val\";a:6:{i:0;s:12:\"易果生鲜\";i:1;s:5:\"1400g\";i:2;s:6:\"包装\";i:3;s:4:\"7天\";i:4;s:7:\"1人份\";i:5;s:8:\"1周2次\";}s:15:\"settlement_type\";s:1:\"1\";s:11:\"basic_price\";s:4:\"0.01\";s:5:\"score\";s:1:\"1\";s:14:\"original_price\";s:5:\"50.00\";s:7:\"buy_num\";s:5:\"10661\";s:9:\"shop_code\";s:0:\"\";s:8:\"bar_code\";s:0:\"\";s:6:\"detail\";s:200:\"&lt;p&gt;&lt;img src=&quot;http://www.fyxt701.com/ueditor/php/upload/image/20180828/1535419655175110.jpg&quot; title=&quot;1535419655175110.jpg&quot;/&gt;&lt;img src=&quot;/ueditor/php/upload/image/20\";s:11:\"skuZuheData\";s:212:\"[{&quot;id&quot;:&quot;&quot;,&quot;SkuId&quot;:&quot;1535420855229_净含量:1535420870046_1400g,1538028879900_甜度:1538028886495_酸&quot;,&quot;pointPrice&quot;:&quot;&quot;,&quot;price&quot;:40,&quot;num&qu\";s:15:\"propty_name_val\";s:226:\"[[&quot;1535420855229_净含量:1535420870046_1400g&quot;,&quot;1535420855229_净含量:1538028834575_100g&quot;],[&quot;1538028879900_甜度:1538028886495_酸&quot;,&quot;1538028879900_甜度:1538028890560_一般&quot;,&quot;\";}","1538029205");
INSERT INTO fy_web_log_001 VALUES("721","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1538029210");
INSERT INTO fy_web_log_001 VALUES("722","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/edit/type/show/id/2.html","admin","Goods","edit","GET","a:2:{s:4:\"type\";s:4:\"show\";s:2:\"id\";s:1:\"2\";}","1538029213");
INSERT INTO fy_web_log_001 VALUES("723","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/getskudata.html","admin","Goods","getskudata","POST","a:1:{s:2:\"id\";s:1:\"2\";}","1538029213");
INSERT INTO fy_web_log_001 VALUES("724","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/editstatus.html","admin","Goods","editstatus","POST","a:2:{s:2:\"id\";s:1:\"2\";s:4:\"flag\";s:4:\"down\";}","1538029250");
INSERT INTO fy_web_log_001 VALUES("725","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1538029251");
INSERT INTO fy_web_log_001 VALUES("726","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/editstatus.html","admin","Goods","editstatus","POST","a:2:{s:2:\"id\";s:1:\"2\";s:4:\"flag\";s:2:\"up\";}","1538029253");
INSERT INTO fy_web_log_001 VALUES("727","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1538029254");
INSERT INTO fy_web_log_001 VALUES("728","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/edit/id/2.html","admin","Goods","edit","GET","a:1:{s:2:\"id\";s:1:\"2\";}","1538029256");
INSERT INTO fy_web_log_001 VALUES("729","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/getskudata.html","admin","Goods","getskudata","POST","a:1:{s:2:\"id\";s:1:\"2\";}","1538029256");
INSERT INTO fy_web_log_001 VALUES("730","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/edit/type/show/id/2.html","admin","Goods","edit","GET","a:2:{s:4:\"type\";s:4:\"show\";s:2:\"id\";s:1:\"2\";}","1538029366");
INSERT INTO fy_web_log_001 VALUES("731","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/getskudata.html","admin","Goods","getskudata","POST","a:1:{s:2:\"id\";s:1:\"2\";}","1538029366");



DROP TABLE fy_web_log_all;

CREATE TABLE `fy_web_log_all` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `uid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `ip` char(15) NOT NULL DEFAULT '' COMMENT '访客ip',
  `location` varchar(255) NOT NULL DEFAULT '' COMMENT '访客地址',
  `os` varchar(255) NOT NULL DEFAULT '' COMMENT '操作系统',
  `browser` varchar(255) NOT NULL DEFAULT '' COMMENT '浏览器',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT 'url',
  `module` varchar(255) NOT NULL DEFAULT '' COMMENT '模块',
  `controller` varchar(255) NOT NULL DEFAULT '' COMMENT '控制器',
  `action` varchar(255) NOT NULL DEFAULT '' COMMENT '方法',
  `method` char(6) NOT NULL DEFAULT '' COMMENT '请求方式',
  `data` text COMMENT '请求的param数据，serialize后的',
  `create_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`) USING BTREE,
  KEY `ip` (`ip`) USING BTREE,
  KEY `create_at` (`create_at`) USING BTREE
) ENGINE=MRG_MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC INSERT_METHOD=LAST UNION=(`fy_web_log_001`) COMMENT='网站日志';

INSERT INTO fy_web_log_all VALUES("1","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/lottery/index.html","admin","Lottery","index","GET","a:0:{}","1535705332");
INSERT INTO fy_web_log_all VALUES("2","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1535705332");
INSERT INTO fy_web_log_all VALUES("3","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535705334");
INSERT INTO fy_web_log_all VALUES("4","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535705334");
INSERT INTO fy_web_log_all VALUES("5","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/order/index.html","admin","Order","index","GET","a:0:{}","1535705347");
INSERT INTO fy_web_log_all VALUES("6","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/lottery/index.html","admin","Lottery","index","GET","a:0:{}","1535705360");
INSERT INTO fy_web_log_all VALUES("7","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1535705366");
INSERT INTO fy_web_log_all VALUES("8","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/edit/type/show/id/5.html","admin","Goods","edit","GET","a:2:{s:4:\"type\";s:4:\"show\";s:2:\"id\";s:1:\"5\";}","1535705368");
INSERT INTO fy_web_log_all VALUES("9","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/getskudata.html","admin","Goods","getskudata","POST","a:1:{s:2:\"id\";s:1:\"5\";}","1535705368");
INSERT INTO fy_web_log_all VALUES("10","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1535705389");
INSERT INTO fy_web_log_all VALUES("11","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1535705389");
INSERT INTO fy_web_log_all VALUES("12","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706077");
INSERT INTO fy_web_log_all VALUES("13","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706078");
INSERT INTO fy_web_log_all VALUES("14","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/order/index.html","admin","Order","index","GET","a:0:{}","1535706083");
INSERT INTO fy_web_log_all VALUES("15","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/order/index.html","admin","Order","index","GET","a:0:{}","1535706088");
INSERT INTO fy_web_log_all VALUES("16","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/order/orderdetail/order_id/1441217402201808311656478916/id/1.html","admin","Order","orderdetail","GET","a:2:{s:8:\"order_id\";s:28:\"1441217402201808311656478916\";s:2:\"id\";s:1:\"1\";}","1535706093");
INSERT INTO fy_web_log_all VALUES("17","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/order/addpost.html","admin","Order","addpost","POST","a:3:{s:2:\"id\";s:1:\"1\";s:14:\"logistics_name\";s:12:\"顺丰快递\";s:16:\"logistics_number\";s:0:\"\";}","1535706095");
INSERT INTO fy_web_log_all VALUES("18","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/order/orderdetail/order_id/1441217402201808311656478916/id/1.html","admin","Order","orderdetail","GET","a:2:{s:8:\"order_id\";s:28:\"1441217402201808311656478916\";s:2:\"id\";s:1:\"1\";}","1535706097");
INSERT INTO fy_web_log_all VALUES("19","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/order/addpost.html","admin","Order","addpost","POST","a:3:{s:2:\"id\";s:1:\"1\";s:14:\"logistics_name\";s:12:\"顺丰快递\";s:16:\"logistics_number\";s:3:\"123\";}","1535706099");
INSERT INTO fy_web_log_all VALUES("20","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/order/orderdetail/order_id/1441217402201808311656478916/id/1.html","admin","Order","orderdetail","GET","a:2:{s:8:\"order_id\";s:28:\"1441217402201808311656478916\";s:2:\"id\";s:1:\"1\";}","1535706101");
INSERT INTO fy_web_log_all VALUES("21","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/order/index.html","admin","Order","index","GET","a:0:{}","1535706112");
INSERT INTO fy_web_log_all VALUES("22","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706114");
INSERT INTO fy_web_log_all VALUES("23","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706114");
INSERT INTO fy_web_log_all VALUES("24","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/transaction/index.html","admin","Transaction","index","GET","a:0:{}","1535706118");
INSERT INTO fy_web_log_all VALUES("25","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706123");
INSERT INTO fy_web_log_all VALUES("26","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706123");
INSERT INTO fy_web_log_all VALUES("27","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706127");
INSERT INTO fy_web_log_all VALUES("28","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706128");
INSERT INTO fy_web_log_all VALUES("29","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/brand/index.html","admin","Brand","index","GET","a:0:{}","1535706158");
INSERT INTO fy_web_log_all VALUES("30","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1535706214");
INSERT INTO fy_web_log_all VALUES("31","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/brand/index.html","admin","Brand","index","GET","a:0:{}","1535706214");
INSERT INTO fy_web_log_all VALUES("32","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1535706217");
INSERT INTO fy_web_log_all VALUES("33","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706221");
INSERT INTO fy_web_log_all VALUES("34","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706222");
INSERT INTO fy_web_log_all VALUES("35","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706232");
INSERT INTO fy_web_log_all VALUES("36","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706232");
INSERT INTO fy_web_log_all VALUES("37","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/transaction/index.html","admin","Transaction","index","GET","a:0:{}","1535706239");
INSERT INTO fy_web_log_all VALUES("38","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/wx_pay_refund_log/index.html","admin","WxPayRefundLog","index","GET","a:0:{}","1535706242");
INSERT INTO fy_web_log_all VALUES("39","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706253");
INSERT INTO fy_web_log_all VALUES("40","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706253");
INSERT INTO fy_web_log_all VALUES("41","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/pub/logout.html","admin","Pub","logout","GET","a:0:{}","1535706255");
INSERT INTO fy_web_log_all VALUES("42","0","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/pub/login.html","admin","Pub","login","GET","a:0:{}","1535706258");
INSERT INTO fy_web_log_all VALUES("43","0","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/pub/checklogin.html","admin","Pub","checklogin","POST","a:3:{s:7:\"account\";s:3:\"jyf\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"8iw4\";}","1535706278");
INSERT INTO fy_web_log_all VALUES("44","0","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/pub/checklogin.html","admin","Pub","checklogin","POST","a:3:{s:7:\"account\";s:3:\"jyf\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"t38t\";}","1535706284");
INSERT INTO fy_web_log_all VALUES("45","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1535706285");
INSERT INTO fy_web_log_all VALUES("46","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706285");
INSERT INTO fy_web_log_all VALUES("47","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706295");
INSERT INTO fy_web_log_all VALUES("48","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706295");
INSERT INTO fy_web_log_all VALUES("49","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706296");
INSERT INTO fy_web_log_all VALUES("50","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706296");
INSERT INTO fy_web_log_all VALUES("51","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706297");
INSERT INTO fy_web_log_all VALUES("52","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706297");
INSERT INTO fy_web_log_all VALUES("53","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706302");
INSERT INTO fy_web_log_all VALUES("54","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706302");
INSERT INTO fy_web_log_all VALUES("55","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706304");
INSERT INTO fy_web_log_all VALUES("56","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706305");
INSERT INTO fy_web_log_all VALUES("57","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706309");
INSERT INTO fy_web_log_all VALUES("58","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706309");
INSERT INTO fy_web_log_all VALUES("59","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706312");
INSERT INTO fy_web_log_all VALUES("60","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706312");
INSERT INTO fy_web_log_all VALUES("61","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706313");
INSERT INTO fy_web_log_all VALUES("62","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706313");
INSERT INTO fy_web_log_all VALUES("63","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706314");
INSERT INTO fy_web_log_all VALUES("64","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706315");
INSERT INTO fy_web_log_all VALUES("65","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706315");
INSERT INTO fy_web_log_all VALUES("66","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706316");
INSERT INTO fy_web_log_all VALUES("67","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706323");
INSERT INTO fy_web_log_all VALUES("68","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706323");
INSERT INTO fy_web_log_all VALUES("69","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706324");
INSERT INTO fy_web_log_all VALUES("70","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706324");
INSERT INTO fy_web_log_all VALUES("71","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706325");
INSERT INTO fy_web_log_all VALUES("72","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706326");
INSERT INTO fy_web_log_all VALUES("73","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706332");
INSERT INTO fy_web_log_all VALUES("74","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706332");
INSERT INTO fy_web_log_all VALUES("75","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706333");
INSERT INTO fy_web_log_all VALUES("76","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706333");
INSERT INTO fy_web_log_all VALUES("77","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706334");
INSERT INTO fy_web_log_all VALUES("78","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706334");
INSERT INTO fy_web_log_all VALUES("79","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706335");
INSERT INTO fy_web_log_all VALUES("80","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706336");
INSERT INTO fy_web_log_all VALUES("81","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706336");
INSERT INTO fy_web_log_all VALUES("82","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706336");
INSERT INTO fy_web_log_all VALUES("83","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706338");
INSERT INTO fy_web_log_all VALUES("84","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706338");
INSERT INTO fy_web_log_all VALUES("85","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706339");
INSERT INTO fy_web_log_all VALUES("86","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706339");
INSERT INTO fy_web_log_all VALUES("87","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706340");
INSERT INTO fy_web_log_all VALUES("88","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706340");
INSERT INTO fy_web_log_all VALUES("89","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706341");
INSERT INTO fy_web_log_all VALUES("90","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706341");
INSERT INTO fy_web_log_all VALUES("91","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706343");
INSERT INTO fy_web_log_all VALUES("92","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706343");
INSERT INTO fy_web_log_all VALUES("93","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706344");
INSERT INTO fy_web_log_all VALUES("94","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706344");
INSERT INTO fy_web_log_all VALUES("95","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706347");
INSERT INTO fy_web_log_all VALUES("96","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706347");
INSERT INTO fy_web_log_all VALUES("97","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706348");
INSERT INTO fy_web_log_all VALUES("98","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706348");
INSERT INTO fy_web_log_all VALUES("99","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706355");
INSERT INTO fy_web_log_all VALUES("100","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706355");
INSERT INTO fy_web_log_all VALUES("101","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706356");
INSERT INTO fy_web_log_all VALUES("102","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706356");
INSERT INTO fy_web_log_all VALUES("103","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706367");
INSERT INTO fy_web_log_all VALUES("104","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706367");
INSERT INTO fy_web_log_all VALUES("105","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706368");
INSERT INTO fy_web_log_all VALUES("106","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706368");
INSERT INTO fy_web_log_all VALUES("107","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706369");
INSERT INTO fy_web_log_all VALUES("108","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706369");
INSERT INTO fy_web_log_all VALUES("109","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706370");
INSERT INTO fy_web_log_all VALUES("110","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706370");
INSERT INTO fy_web_log_all VALUES("111","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706373");
INSERT INTO fy_web_log_all VALUES("112","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706374");
INSERT INTO fy_web_log_all VALUES("113","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706375");
INSERT INTO fy_web_log_all VALUES("114","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706375");
INSERT INTO fy_web_log_all VALUES("115","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706376");
INSERT INTO fy_web_log_all VALUES("116","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706376");
INSERT INTO fy_web_log_all VALUES("117","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706378");
INSERT INTO fy_web_log_all VALUES("118","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706378");
INSERT INTO fy_web_log_all VALUES("119","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706379");
INSERT INTO fy_web_log_all VALUES("120","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706380");
INSERT INTO fy_web_log_all VALUES("121","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706394");
INSERT INTO fy_web_log_all VALUES("122","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706394");
INSERT INTO fy_web_log_all VALUES("123","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706395");
INSERT INTO fy_web_log_all VALUES("124","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706395");
INSERT INTO fy_web_log_all VALUES("125","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706395");
INSERT INTO fy_web_log_all VALUES("126","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706396");
INSERT INTO fy_web_log_all VALUES("127","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706396");
INSERT INTO fy_web_log_all VALUES("128","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706396");
INSERT INTO fy_web_log_all VALUES("129","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706397");
INSERT INTO fy_web_log_all VALUES("130","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706397");
INSERT INTO fy_web_log_all VALUES("131","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706397");
INSERT INTO fy_web_log_all VALUES("132","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706397");
INSERT INTO fy_web_log_all VALUES("133","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706398");
INSERT INTO fy_web_log_all VALUES("134","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706398");
INSERT INTO fy_web_log_all VALUES("135","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706399");
INSERT INTO fy_web_log_all VALUES("136","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706399");
INSERT INTO fy_web_log_all VALUES("137","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706400");
INSERT INTO fy_web_log_all VALUES("138","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706400");
INSERT INTO fy_web_log_all VALUES("139","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706401");
INSERT INTO fy_web_log_all VALUES("140","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706401");
INSERT INTO fy_web_log_all VALUES("141","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706402");
INSERT INTO fy_web_log_all VALUES("142","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706402");
INSERT INTO fy_web_log_all VALUES("143","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706403");
INSERT INTO fy_web_log_all VALUES("144","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706403");
INSERT INTO fy_web_log_all VALUES("145","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706404");
INSERT INTO fy_web_log_all VALUES("146","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706404");
INSERT INTO fy_web_log_all VALUES("147","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706405");
INSERT INTO fy_web_log_all VALUES("148","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706405");
INSERT INTO fy_web_log_all VALUES("149","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706407");
INSERT INTO fy_web_log_all VALUES("150","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706407");
INSERT INTO fy_web_log_all VALUES("151","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706408");
INSERT INTO fy_web_log_all VALUES("152","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706408");
INSERT INTO fy_web_log_all VALUES("153","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706409");
INSERT INTO fy_web_log_all VALUES("154","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706409");
INSERT INTO fy_web_log_all VALUES("155","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706410");
INSERT INTO fy_web_log_all VALUES("156","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706410");
INSERT INTO fy_web_log_all VALUES("157","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706410");
INSERT INTO fy_web_log_all VALUES("158","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706410");
INSERT INTO fy_web_log_all VALUES("159","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706411");
INSERT INTO fy_web_log_all VALUES("160","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706411");
INSERT INTO fy_web_log_all VALUES("161","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706412");
INSERT INTO fy_web_log_all VALUES("162","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706412");
INSERT INTO fy_web_log_all VALUES("163","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706413");
INSERT INTO fy_web_log_all VALUES("164","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706413");
INSERT INTO fy_web_log_all VALUES("165","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706414");
INSERT INTO fy_web_log_all VALUES("166","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706414");
INSERT INTO fy_web_log_all VALUES("167","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706414");
INSERT INTO fy_web_log_all VALUES("168","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706414");
INSERT INTO fy_web_log_all VALUES("169","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706415");
INSERT INTO fy_web_log_all VALUES("170","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706415");
INSERT INTO fy_web_log_all VALUES("171","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706416");
INSERT INTO fy_web_log_all VALUES("172","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706416");
INSERT INTO fy_web_log_all VALUES("173","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706416");
INSERT INTO fy_web_log_all VALUES("174","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706416");
INSERT INTO fy_web_log_all VALUES("175","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706417");
INSERT INTO fy_web_log_all VALUES("176","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706417");
INSERT INTO fy_web_log_all VALUES("177","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706417");
INSERT INTO fy_web_log_all VALUES("178","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706417");
INSERT INTO fy_web_log_all VALUES("179","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706418");
INSERT INTO fy_web_log_all VALUES("180","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706418");
INSERT INTO fy_web_log_all VALUES("181","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706418");
INSERT INTO fy_web_log_all VALUES("182","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706419");
INSERT INTO fy_web_log_all VALUES("183","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706419");
INSERT INTO fy_web_log_all VALUES("184","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706419");
INSERT INTO fy_web_log_all VALUES("185","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706419");
INSERT INTO fy_web_log_all VALUES("186","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706420");
INSERT INTO fy_web_log_all VALUES("187","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706420");
INSERT INTO fy_web_log_all VALUES("188","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706420");
INSERT INTO fy_web_log_all VALUES("189","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706420");
INSERT INTO fy_web_log_all VALUES("190","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706420");
INSERT INTO fy_web_log_all VALUES("191","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706421");
INSERT INTO fy_web_log_all VALUES("192","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706421");
INSERT INTO fy_web_log_all VALUES("193","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706422");
INSERT INTO fy_web_log_all VALUES("194","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706422");
INSERT INTO fy_web_log_all VALUES("195","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706422");
INSERT INTO fy_web_log_all VALUES("196","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706422");
INSERT INTO fy_web_log_all VALUES("197","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706423");
INSERT INTO fy_web_log_all VALUES("198","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706423");
INSERT INTO fy_web_log_all VALUES("199","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706423");
INSERT INTO fy_web_log_all VALUES("200","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706423");
INSERT INTO fy_web_log_all VALUES("201","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706424");
INSERT INTO fy_web_log_all VALUES("202","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706424");
INSERT INTO fy_web_log_all VALUES("203","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706424");
INSERT INTO fy_web_log_all VALUES("204","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706424");
INSERT INTO fy_web_log_all VALUES("205","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706425");
INSERT INTO fy_web_log_all VALUES("206","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706425");
INSERT INTO fy_web_log_all VALUES("207","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706425");
INSERT INTO fy_web_log_all VALUES("208","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706425");
INSERT INTO fy_web_log_all VALUES("209","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706426");
INSERT INTO fy_web_log_all VALUES("210","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706426");
INSERT INTO fy_web_log_all VALUES("211","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706426");
INSERT INTO fy_web_log_all VALUES("212","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706426");
INSERT INTO fy_web_log_all VALUES("213","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706427");
INSERT INTO fy_web_log_all VALUES("214","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706427");
INSERT INTO fy_web_log_all VALUES("215","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706427");
INSERT INTO fy_web_log_all VALUES("216","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706427");
INSERT INTO fy_web_log_all VALUES("217","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706428");
INSERT INTO fy_web_log_all VALUES("218","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706428");
INSERT INTO fy_web_log_all VALUES("219","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706429");
INSERT INTO fy_web_log_all VALUES("220","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706429");
INSERT INTO fy_web_log_all VALUES("221","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706429");
INSERT INTO fy_web_log_all VALUES("222","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706429");
INSERT INTO fy_web_log_all VALUES("223","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706430");
INSERT INTO fy_web_log_all VALUES("224","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706430");
INSERT INTO fy_web_log_all VALUES("225","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706432");
INSERT INTO fy_web_log_all VALUES("226","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706432");
INSERT INTO fy_web_log_all VALUES("227","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/message/index.html","admin","Message","index","GET","a:0:{}","1535706435");
INSERT INTO fy_web_log_all VALUES("228","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/use_lottery/index.html","admin","UseLottery","index","GET","a:0:{}","1535706437");
INSERT INTO fy_web_log_all VALUES("229","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/brand/index.html","admin","Brand","index","GET","a:0:{}","1535706437");
INSERT INTO fy_web_log_all VALUES("230","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/use_lottery/index.html","admin","UseLottery","index","GET","a:0:{}","1535706438");
INSERT INTO fy_web_log_all VALUES("231","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/use_lottery/index.html","admin","UseLottery","index","GET","a:0:{}","1535706439");
INSERT INTO fy_web_log_all VALUES("232","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/transaction/index.html","admin","Transaction","index","GET","a:0:{}","1535706441");
INSERT INTO fy_web_log_all VALUES("233","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods_class/index.html","admin","GoodsClass","index","GET","a:0:{}","1535706442");
INSERT INTO fy_web_log_all VALUES("234","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods_comment/index.html","admin","GoodsComment","index","GET","a:0:{}","1535706443");
INSERT INTO fy_web_log_all VALUES("235","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer/index.html","admin","Customer","index","GET","a:0:{}","1535706444");
INSERT INTO fy_web_log_all VALUES("236","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/lottery_log/index.html","admin","LotteryLog","index","GET","a:0:{}","1535706445");
INSERT INTO fy_web_log_all VALUES("237","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer/index.html","admin","Customer","index","GET","a:0:{}","1535706446");
INSERT INTO fy_web_log_all VALUES("238","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin.html","admin","Index","index","GET","a:0:{}","1535706462");
INSERT INTO fy_web_log_all VALUES("239","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706463");
INSERT INTO fy_web_log_all VALUES("240","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/transaction/index.html","admin","Transaction","index","GET","a:0:{}","1535706466");
INSERT INTO fy_web_log_all VALUES("241","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/wx_pay_refund_log/index.html","admin","WxPayRefundLog","index","GET","a:0:{}","1535706470");
INSERT INTO fy_web_log_all VALUES("242","1","220.197.182.69","中国 贵州 贵阳 ","Windows NT","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/wx_pay_refund_log/index.html","admin","WxPayRefundLog","index","GET","a:0:{}","1535706530");
INSERT INTO fy_web_log_all VALUES("243","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/lottery/index.html","admin","Lottery","index","GET","a:0:{}","1535706597");
INSERT INTO fy_web_log_all VALUES("244","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/activity/index.html","admin","Activity","index","GET","a:0:{}","1535706600");
INSERT INTO fy_web_log_all VALUES("245","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/lottery/index.html","admin","Lottery","index","GET","a:0:{}","1535706601");
INSERT INTO fy_web_log_all VALUES("246","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/activity/index.html","admin","Activity","index","GET","a:0:{}","1535706604");
INSERT INTO fy_web_log_all VALUES("247","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/silde_show/index.html","admin","SildeShow","index","GET","a:0:{}","1535706605");
INSERT INTO fy_web_log_all VALUES("248","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/brand/index.html","admin","Brand","index","GET","a:0:{}","1535706606");
INSERT INTO fy_web_log_all VALUES("249","21","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/pub/logout.html","admin","Pub","logout","GET","a:0:{}","1535706611");
INSERT INTO fy_web_log_all VALUES("250","0","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/pub/login.html","admin","Pub","login","GET","a:0:{}","1535706614");
INSERT INTO fy_web_log_all VALUES("251","0","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/pub/checklogin.html","admin","Pub","checklogin","POST","a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"rhum\";}","1535706620");
INSERT INTO fy_web_log_all VALUES("252","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1535706620");
INSERT INTO fy_web_log_all VALUES("253","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535706620");
INSERT INTO fy_web_log_all VALUES("254","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/wx_pay_refund_log/index.html","admin","WxPayRefundLog","index","GET","a:0:{}","1535706628");
INSERT INTO fy_web_log_all VALUES("255","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/wx_pay_refund_log/index.html?username=&type=1","admin","WxPayRefundLog","index","GET","a:2:{s:8:\"username\";s:0:\"\";s:4:\"type\";s:1:\"1\";}","1535706631");
INSERT INTO fy_web_log_all VALUES("256","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer/index.html","admin","Customer","index","GET","a:0:{}","1535706692");
INSERT INTO fy_web_log_all VALUES("257","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/lottery/index.html","admin","Lottery","index","GET","a:0:{}","1535706705");
INSERT INTO fy_web_log_all VALUES("258","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_task/index.html","admin","CustomerTask","index","GET","a:0:{}","1535706714");
INSERT INTO fy_web_log_all VALUES("259","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_task/index.html","admin","CustomerTask","index","GET","a:0:{}","1535706716");
INSERT INTO fy_web_log_all VALUES("260","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_grade/index.html","admin","CustomerGrade","index","GET","a:0:{}","1535706716");
INSERT INTO fy_web_log_all VALUES("261","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_grade_desc/index.html","admin","CustomerGradeDesc","index","GET","a:0:{}","1535706719");
INSERT INTO fy_web_log_all VALUES("262","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/lottery_log/index.html","admin","LotteryLog","index","GET","a:0:{}","1535706721");
INSERT INTO fy_web_log_all VALUES("263","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/activity/index.html","admin","Activity","index","GET","a:0:{}","1535706729");
INSERT INTO fy_web_log_all VALUES("264","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/transaction/index.html","admin","Transaction","index","GET","a:0:{}","1535706730");
INSERT INTO fy_web_log_all VALUES("265","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/order/index.html","admin","Order","index","GET","a:0:{}","1535706732");
INSERT INTO fy_web_log_all VALUES("266","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/message/index.html","admin","Message","index","GET","a:0:{}","1535706736");
INSERT INTO fy_web_log_all VALUES("267","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/message/index.html","admin","Message","index","GET","a:0:{}","1535706750");
INSERT INTO fy_web_log_all VALUES("268","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods_comment/index.html","admin","GoodsComment","index","GET","a:0:{}","1535706751");
INSERT INTO fy_web_log_all VALUES("269","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/wx_pay_refund_log/index.html","admin","WxPayRefundLog","index","GET","a:0:{}","1535706752");
INSERT INTO fy_web_log_all VALUES("270","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/order/index.html","admin","Order","index","GET","a:0:{}","1535706867");
INSERT INTO fy_web_log_all VALUES("271","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/order/orderdetail/order_id/1441217402201808311656478916/id/1.html","admin","Order","orderdetail","GET","a:2:{s:8:\"order_id\";s:28:\"1441217402201808311656478916\";s:2:\"id\";s:1:\"1\";}","1535706873");
INSERT INTO fy_web_log_all VALUES("272","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/order/refund.html","admin","Order","refund","POST","a:3:{s:8:\"order_id\";s:28:\"1441217402201808311656478916\";s:2:\"id\";s:1:\"1\";s:4:\"flag\";s:3:\"yes\";}","1535706880");
INSERT INTO fy_web_log_all VALUES("273","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/order/orderdetail/order_id/1441217402201808311656478916/id/1.html","admin","Order","orderdetail","GET","a:2:{s:8:\"order_id\";s:28:\"1441217402201808311656478916\";s:2:\"id\";s:1:\"1\";}","1535706883");
INSERT INTO fy_web_log_all VALUES("274","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/order/index.html","admin","Order","index","GET","a:0:{}","1535706886");
INSERT INTO fy_web_log_all VALUES("275","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/order/orderdetail/order_id/1441217402201808311656478916/id/1.html","admin","Order","orderdetail","GET","a:2:{s:8:\"order_id\";s:28:\"1441217402201808311656478916\";s:2:\"id\";s:1:\"1\";}","1535706889");
INSERT INTO fy_web_log_all VALUES("276","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/order/index.html","admin","Order","index","GET","a:0:{}","1535706933");
INSERT INTO fy_web_log_all VALUES("277","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/transaction/index.html","admin","Transaction","index","GET","a:0:{}","1535706933");
INSERT INTO fy_web_log_all VALUES("278","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/activity/index.html","admin","Activity","index","GET","a:0:{}","1535706935");
INSERT INTO fy_web_log_all VALUES("279","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/lottery_log/index.html","admin","LotteryLog","index","GET","a:0:{}","1535706936");
INSERT INTO fy_web_log_all VALUES("280","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/activity/index.html","admin","Activity","index","GET","a:0:{}","1535706938");
INSERT INTO fy_web_log_all VALUES("281","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/silde_show/index.html","admin","SildeShow","index","GET","a:0:{}","1535706940");
INSERT INTO fy_web_log_all VALUES("282","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/modular/index.html","admin","Modular","index","GET","a:0:{}","1535706941");
INSERT INTO fy_web_log_all VALUES("283","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods_class/index.html","admin","GoodsClass","index","GET","a:0:{}","1535706942");
INSERT INTO fy_web_log_all VALUES("284","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1535707482");
INSERT INTO fy_web_log_all VALUES("285","0","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/pub/login.html","admin","Pub","login","GET","a:0:{}","1535766872");
INSERT INTO fy_web_log_all VALUES("286","0","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/pub/checklogin.html","admin","Pub","checklogin","POST","a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"gs3b\";}","1535766887");
INSERT INTO fy_web_log_all VALUES("287","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1535766887");
INSERT INTO fy_web_log_all VALUES("288","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535766887");
INSERT INTO fy_web_log_all VALUES("289","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/message/index.html","admin","Message","index","GET","a:0:{}","1535766918");
INSERT INTO fy_web_log_all VALUES("290","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/node_map/index.html","admin","NodeMap","index","GET","a:0:{}","1535766920");
INSERT INTO fy_web_log_all VALUES("291","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_user/index.html","admin","AdminUser","index","GET","a:0:{}","1535766920");
INSERT INTO fy_web_log_all VALUES("292","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_role/index.html","admin","AdminRole","index","GET","a:0:{}","1535766921");
INSERT INTO fy_web_log_all VALUES("293","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_node/index.html","admin","AdminNode","index","GET","a:0:{}","1535766921");
INSERT INTO fy_web_log_all VALUES("294","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_node/index","admin","AdminNode","index","POST","a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}","1535766921");
INSERT INTO fy_web_log_all VALUES("295","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_node/index","admin","AdminNode","index","POST","a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}","1535766921");
INSERT INTO fy_web_log_all VALUES("296","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_group/index.html","admin","AdminGroup","index","GET","a:0:{}","1535766922");
INSERT INTO fy_web_log_all VALUES("297","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/node_map/index.html","admin","NodeMap","index","GET","a:0:{}","1535766923");
INSERT INTO fy_web_log_all VALUES("298","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/login_log/index.html","admin","LoginLog","index","GET","a:0:{}","1535766923");
INSERT INTO fy_web_log_all VALUES("299","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/web_log/index.html","admin","WebLog","index","GET","a:0:{}","1535766924");
INSERT INTO fy_web_log_all VALUES("300","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/login_log/index.html","admin","LoginLog","index","GET","a:0:{}","1535766924");
INSERT INTO fy_web_log_all VALUES("301","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1535766925");
INSERT INTO fy_web_log_all VALUES("302","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/edit/id/8.html","admin","Notice","edit","GET","a:1:{s:2:\"id\";s:1:\"8\";}","1535766936");
INSERT INTO fy_web_log_all VALUES("303","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/edit/id/10.html","admin","Notice","edit","GET","a:1:{s:2:\"id\";s:2:\"10\";}","1535766953");
INSERT INTO fy_web_log_all VALUES("304","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/edit/id/10.html","admin","Notice","edit","POST","a:6:{s:2:\"id\";s:2:\"10\";s:5:\"title\";s:12:\"内部体验\";s:6:\"detail\";s:105:\"   泛亚科技是国家大数据战略践行者和新型大数据产业生态圈商业模式引领者。\";s:6:\"status\";s:1:\"1\";s:7:\"orderby\";s:1:\"7\";s:4:\"desc\";s:401:\"    贵州泛亚信通网络科技有限公司（简称&ldquo;泛亚科技&rdquo;）是一家集泛在无线网络环境建设、数据可视化研究、大数据智能跨界应用为一体的大数据高科技企业，由郑州市讯捷贸易有限公司、阿里巴巴集团、贵阳广电传媒有限公司、贵阳市工业投资（集团）有限公司合资成立，注册资本1.2亿元。\n \n\";}","1535766979");
INSERT INTO fy_web_log_all VALUES("305","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1535766979");
INSERT INTO fy_web_log_all VALUES("306","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/edit/id/9.html","admin","Notice","edit","GET","a:1:{s:2:\"id\";s:1:\"9\";}","1535766985");
INSERT INTO fy_web_log_all VALUES("307","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/edit/id/8.html","admin","Notice","edit","GET","a:1:{s:2:\"id\";s:1:\"8\";}","1535766993");
INSERT INTO fy_web_log_all VALUES("308","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/edit/id/8.html","admin","Notice","edit","POST","a:6:{s:2:\"id\";s:1:\"8\";s:5:\"title\";s:18:\"欢迎内部体验\";s:6:\"detail\";s:54:\"泛亚商城商品即将上线完毕，敬请期待！\";s:6:\"status\";s:1:\"1\";s:7:\"orderby\";s:1:\"7\";s:4:\"desc\";s:120:\"各位会员，泛亚商城各类商品即将上线完毕，商品类型多种多样，欢迎各位会员体验购买！\";}","1535767009");
INSERT INTO fy_web_log_all VALUES("309","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1535767010");
INSERT INTO fy_web_log_all VALUES("310","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/edit/id/7.html","admin","Notice","edit","GET","a:1:{s:2:\"id\";s:1:\"7\";}","1535767014");
INSERT INTO fy_web_log_all VALUES("311","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/edit/id/7.html","admin","Notice","edit","POST","a:6:{s:2:\"id\";s:1:\"7\";s:5:\"title\";s:30:\"泛亚商城1.0即将试运营\";s:6:\"detail\";s:30:\"泛亚商城1.0即将试运营\";s:6:\"status\";s:1:\"1\";s:7:\"orderby\";s:1:\"7\";s:4:\"desc\";s:108:\"经过不懈的努力，泛亚商城1.0终于完成，将于一周后正式开始试运营，敬请期待！\";}","1535767026");
INSERT INTO fy_web_log_all VALUES("312","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1535767026");
INSERT INTO fy_web_log_all VALUES("313","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/edit/id/9.html","admin","Notice","edit","GET","a:1:{s:2:\"id\";s:1:\"9\";}","1535767051");
INSERT INTO fy_web_log_all VALUES("314","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/edit/id/9.html","admin","Notice","edit","POST","a:6:{s:2:\"id\";s:1:\"9\";s:5:\"title\";s:27:\"泛亚商城1.0内部体验\";s:6:\"detail\";s:0:\"\";s:6:\"status\";s:1:\"1\";s:7:\"orderby\";s:1:\"7\";s:4:\"desc\";s:102:\"泛亚科技是国家大数据战略践行者和新型大数据产业生态圈商业模式引领者。\";}","1535767069");
INSERT INTO fy_web_log_all VALUES("315","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1535767070");
INSERT INTO fy_web_log_all VALUES("316","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/delete.html","admin","Notice","delete","POST","a:1:{s:2:\"id\";s:1:\"9\";}","1535767105");
INSERT INTO fy_web_log_all VALUES("317","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/delete.html","admin","Notice","delete","POST","a:1:{s:2:\"id\";s:2:\"10\";}","1535767110");
INSERT INTO fy_web_log_all VALUES("318","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1535767113");
INSERT INTO fy_web_log_all VALUES("319","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/edit/id/8.html","admin","Notice","edit","GET","a:1:{s:2:\"id\";s:1:\"8\";}","1535767131");
INSERT INTO fy_web_log_all VALUES("320","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/edit/id/8.html","admin","Notice","edit","POST","a:6:{s:2:\"id\";s:1:\"8\";s:5:\"title\";s:30:\"欢迎各位同事内部体验\";s:6:\"detail\";s:54:\"泛亚商城商品即将上线完毕，敬请期待！\";s:6:\"status\";s:1:\"1\";s:7:\"orderby\";s:1:\"7\";s:4:\"desc\";s:120:\"各位会员，泛亚商城各类商品即将上线完毕，商品类型多种多样，欢迎各位会员体验购买！\";}","1535767140");
INSERT INTO fy_web_log_all VALUES("321","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1535767140");
INSERT INTO fy_web_log_all VALUES("322","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/edit/id/8.html","admin","Notice","edit","GET","a:1:{s:2:\"id\";s:1:\"8\";}","1535767165");
INSERT INTO fy_web_log_all VALUES("323","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/edit/id/8.html","admin","Notice","edit","POST","a:6:{s:2:\"id\";s:1:\"8\";s:5:\"title\";s:46:\"欢迎各位同事内部体验,反馈建议。\";s:6:\"detail\";s:54:\"泛亚商城商品即将上线完毕，敬请期待！\";s:6:\"status\";s:1:\"1\";s:7:\"orderby\";s:1:\"7\";s:4:\"desc\";s:120:\"各位会员，泛亚商城各类商品即将上线完毕，商品类型多种多样，欢迎各位会员体验购买！\";}","1535767186");
INSERT INTO fy_web_log_all VALUES("324","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1535767186");
INSERT INTO fy_web_log_all VALUES("325","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/edit/id/8.html","admin","Notice","edit","GET","a:1:{s:2:\"id\";s:1:\"8\";}","1535767191");
INSERT INTO fy_web_log_all VALUES("326","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/edit/id/8.html","admin","Notice","edit","POST","a:6:{s:2:\"id\";s:1:\"8\";s:5:\"title\";s:43:\"欢迎各位同事内部体验,反馈建议\";s:6:\"detail\";s:54:\"泛亚商城商品即将上线完毕，敬请期待！\";s:6:\"status\";s:1:\"1\";s:7:\"orderby\";s:1:\"7\";s:4:\"desc\";s:120:\"各位会员，泛亚商城各类商品即将上线完毕，商品类型多种多样，欢迎各位会员体验购买！\";}","1535767197");
INSERT INTO fy_web_log_all VALUES("327","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1535767197");
INSERT INTO fy_web_log_all VALUES("328","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1535767218");
INSERT INTO fy_web_log_all VALUES("329","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1535767219");
INSERT INTO fy_web_log_all VALUES("330","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1535767220");
INSERT INTO fy_web_log_all VALUES("331","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1535767220");
INSERT INTO fy_web_log_all VALUES("332","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1535767220");
INSERT INTO fy_web_log_all VALUES("333","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1535767220");
INSERT INTO fy_web_log_all VALUES("334","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/web_log/index.html","admin","WebLog","index","GET","a:0:{}","1535767221");
INSERT INTO fy_web_log_all VALUES("335","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1535767222");
INSERT INTO fy_web_log_all VALUES("336","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1535767231");
INSERT INTO fy_web_log_all VALUES("337","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1535767231");
INSERT INTO fy_web_log_all VALUES("338","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_role/index.html","admin","AdminRole","index","GET","a:0:{}","1535767232");
INSERT INTO fy_web_log_all VALUES("339","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_node/index.html","admin","AdminNode","index","GET","a:0:{}","1535767233");
INSERT INTO fy_web_log_all VALUES("340","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_node/index","admin","AdminNode","index","POST","a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}","1535767233");
INSERT INTO fy_web_log_all VALUES("341","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_node/index","admin","AdminNode","index","POST","a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}","1535767233");
INSERT INTO fy_web_log_all VALUES("342","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_group/index.html","admin","AdminGroup","index","GET","a:0:{}","1535767233");
INSERT INTO fy_web_log_all VALUES("343","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_user/index.html","admin","AdminUser","index","GET","a:0:{}","1535767234");
INSERT INTO fy_web_log_all VALUES("344","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/web_log/index.html","admin","WebLog","index","GET","a:0:{}","1535767234");
INSERT INTO fy_web_log_all VALUES("345","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/login_log/index.html","admin","LoginLog","index","GET","a:0:{}","1535767235");
INSERT INTO fy_web_log_all VALUES("346","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/silde_show/index.html","admin","SildeShow","index","GET","a:0:{}","1535767235");
INSERT INTO fy_web_log_all VALUES("347","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/modular/index.html","admin","Modular","index","GET","a:0:{}","1535767235");
INSERT INTO fy_web_log_all VALUES("348","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods_class/index.html","admin","GoodsClass","index","GET","a:0:{}","1535767236");
INSERT INTO fy_web_log_all VALUES("349","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/modular/index.html","admin","Modular","index","GET","a:0:{}","1535767237");
INSERT INTO fy_web_log_all VALUES("350","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/lottery/index.html","admin","Lottery","index","GET","a:0:{}","1535767240");
INSERT INTO fy_web_log_all VALUES("351","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer/index.html","admin","Customer","index","GET","a:0:{}","1535767241");
INSERT INTO fy_web_log_all VALUES("352","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/lottery/index.html","admin","Lottery","index","GET","a:0:{}","1535767242");
INSERT INTO fy_web_log_all VALUES("353","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_grade/index.html","admin","CustomerGrade","index","GET","a:0:{}","1535767244");
INSERT INTO fy_web_log_all VALUES("354","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/activity/index.html","admin","Activity","index","GET","a:0:{}","1535767246");
INSERT INTO fy_web_log_all VALUES("355","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/order/index.html","admin","Order","index","GET","a:0:{}","1535767247");
INSERT INTO fy_web_log_all VALUES("356","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/wx_pay_refund_log/index.html","admin","WxPayRefundLog","index","GET","a:0:{}","1535767250");
INSERT INTO fy_web_log_all VALUES("357","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/gift_bag/index.html","admin","GiftBag","index","GET","a:0:{}","1535767250");
INSERT INTO fy_web_log_all VALUES("358","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/gift_bag/edit/id/3.html","admin","GiftBag","edit","GET","a:1:{s:2:\"id\";s:1:\"3\";}","1535767254");
INSERT INTO fy_web_log_all VALUES("359","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods_comment/index.html","admin","GoodsComment","index","GET","a:0:{}","1535767276");
INSERT INTO fy_web_log_all VALUES("360","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/wx_pay_refund_log/index.html","admin","WxPayRefundLog","index","GET","a:0:{}","1535767277");
INSERT INTO fy_web_log_all VALUES("361","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/use_lottery/index.html","admin","UseLottery","index","GET","a:0:{}","1535767278");
INSERT INTO fy_web_log_all VALUES("362","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/gift_bag/index.html","admin","GiftBag","index","GET","a:0:{}","1535767279");
INSERT INTO fy_web_log_all VALUES("363","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_right/index.html","admin","CustomerRight","index","GET","a:0:{}","1535767281");
INSERT INTO fy_web_log_all VALUES("364","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/1.html","admin","CustomerRight","edit","GET","a:1:{s:2:\"id\";s:1:\"1\";}","1535767285");
INSERT INTO fy_web_log_all VALUES("365","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/2.html","admin","CustomerRight","edit","GET","a:1:{s:2:\"id\";s:1:\"2\";}","1535767296");
INSERT INTO fy_web_log_all VALUES("366","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/3.html","admin","CustomerRight","edit","GET","a:1:{s:2:\"id\";s:1:\"3\";}","1535767306");
INSERT INTO fy_web_log_all VALUES("367","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/4.html","admin","CustomerRight","edit","GET","a:1:{s:2:\"id\";s:1:\"4\";}","1535767314");
INSERT INTO fy_web_log_all VALUES("368","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/4.html","admin","CustomerRight","edit","GET","a:1:{s:2:\"id\";s:1:\"4\";}","1535767339");
INSERT INTO fy_web_log_all VALUES("369","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/4.html","admin","CustomerRight","edit","GET","a:1:{s:2:\"id\";s:1:\"4\";}","1535767397");
INSERT INTO fy_web_log_all VALUES("370","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1535768151");
INSERT INTO fy_web_log_all VALUES("371","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/edit/id/5.html","admin","Goods","edit","GET","a:1:{s:2:\"id\";s:1:\"5\";}","1535768156");
INSERT INTO fy_web_log_all VALUES("372","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/getskudata.html","admin","Goods","getskudata","POST","a:1:{s:2:\"id\";s:1:\"5\";}","1535768156");
INSERT INTO fy_web_log_all VALUES("373","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/edit/id/5.html","admin","Goods","edit","POST","a:34:{s:2:\"id\";s:1:\"5\";s:7:\"user_id\";s:2:\"21\";s:4:\"name\";s:12:\"苹果手机\";s:8:\"subtitle\";s:0:\"\";s:7:\"yieldly\";s:0:\"\";s:10:\"main_image\";s:58:\"/pic/uploads/20180831/35cb42fbfe509141499aab67a3a0a680.jpg\";s:14:\"goods_class_id\";s:1:\"6\";s:14:\"goods_brand_id\";s:2:\"20\";s:9:\"show_area\";s:1:\"1\";s:10:\"start_date\";s:19:\"2018-08-31 11:21:01\";s:8:\"end_date\";s:19:\"2018-09-04 11:21:05\";s:10:\"store_type\";s:1:\"1\";s:9:\"free_type\";s:1:\"1\";s:7:\"postage\";s:0:\"\";s:12:\"return_score\";s:1:\"0\";s:3:\"pic\";a:2:{i:0;s:58:\"/pic/uploads/20180831/b7e860b80b4714b627f9d72e6f71d72b.jpg\";i:1;s:58:\"/pic/uploads/20180831/f6f882914e96e541e77f0d3af9e7eb8b.jpg\";}s:7:\"orderby\";s:2:\"10\";s:12:\"goods_weight\";s:7:\"300.000\";s:7:\"is_real\";s:1:\"1\";s:15:\"is_return_goods\";s:1:\"1\";s:10:\"is_comment\";s:1:\"1\";s:14:\"service_mobile\";s:0:\"\";s:7:\"service\";a:1:{i:0;s:12:\"没有服务\";}s:10:\"after_sale\";s:21:\"&lt;p&gt;ok&lt;/p&gt;\";s:15:\"settlement_type\";s:1:\"1\";s:11:\"basic_price\";s:4:\"0.01\";s:5:\"score\";s:0:\"\";s:14:\"original_price\";s:7:\"5200.00\";s:7:\"buy_num\";s:3:\"500\";s:9:\"shop_code\";s:0:\"\";s:8:\"bar_code\";s:0:\"\";s:6:\"detail\";s:25:\"&lt;p&gt;撒旦&lt;/p&gt;\";s:11:\"skuZuheData\";s:208:\"[{&quot;id&quot;:&quot;16&quot;,&quot;SkuId&quot;:&quot;1535685741914_规格:1535685749337_通用&quot;,&quot;pointPrice&quot;:&quot;10&quot;,&quot;price&quot;:0.01,&quot;num&quot;:&quot;10&quot;,&quot;code&q\";s:15:\"propty_name_val\";s:57:\"[[&quot;1535685741914_规格:1535685749337_通用&quot;]]\";}","1535768196");
INSERT INTO fy_web_log_all VALUES("374","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/edit/id/5.html","admin","Goods","edit","GET","a:1:{s:2:\"id\";s:1:\"5\";}","1535768343");
INSERT INTO fy_web_log_all VALUES("375","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/getskudata.html","admin","Goods","getskudata","POST","a:1:{s:2:\"id\";s:1:\"5\";}","1535768343");
INSERT INTO fy_web_log_all VALUES("376","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/edit/id/5.html","admin","Goods","edit","POST","a:34:{s:2:\"id\";s:1:\"5\";s:7:\"user_id\";s:2:\"21\";s:4:\"name\";s:12:\"苹果手机\";s:8:\"subtitle\";s:12:\"苹果手机\";s:7:\"yieldly\";s:6:\"上海\";s:10:\"main_image\";s:58:\"/pic/uploads/20180831/35cb42fbfe509141499aab67a3a0a680.jpg\";s:14:\"goods_class_id\";s:1:\"6\";s:14:\"goods_brand_id\";s:2:\"20\";s:9:\"show_area\";s:1:\"1\";s:10:\"start_date\";s:19:\"2018-08-31 11:21:01\";s:8:\"end_date\";s:19:\"2018-09-04 11:21:05\";s:10:\"store_type\";s:1:\"1\";s:9:\"free_type\";s:1:\"1\";s:7:\"postage\";s:4:\"0.00\";s:12:\"return_score\";s:1:\"0\";s:3:\"pic\";a:2:{i:0;s:58:\"/pic/uploads/20180831/b7e860b80b4714b627f9d72e6f71d72b.jpg\";i:1;s:58:\"/pic/uploads/20180831/f6f882914e96e541e77f0d3af9e7eb8b.jpg\";}s:7:\"orderby\";s:2:\"10\";s:12:\"goods_weight\";s:7:\"300.000\";s:7:\"is_real\";s:1:\"1\";s:15:\"is_return_goods\";s:1:\"1\";s:10:\"is_comment\";s:1:\"1\";s:14:\"service_mobile\";s:0:\"\";s:7:\"service\";a:1:{i:0;s:12:\"没有服务\";}s:10:\"after_sale\";s:21:\"&lt;p&gt;ok&lt;/p&gt;\";s:15:\"settlement_type\";s:1:\"1\";s:11:\"basic_price\";s:4:\"0.01\";s:5:\"score\";s:1:\"0\";s:14:\"original_price\";s:7:\"5200.00\";s:7:\"buy_num\";s:3:\"500\";s:9:\"shop_code\";s:0:\"\";s:8:\"bar_code\";s:0:\"\";s:6:\"detail\";s:31:\"&lt;p&gt;苹果手机&lt;/p&gt;\";s:11:\"skuZuheData\";s:208:\"[{&quot;id&quot;:&quot;16&quot;,&quot;SkuId&quot;:&quot;1535685741914_规格:1535685749337_通用&quot;,&quot;pointPrice&quot;:&quot;10&quot;,&quot;price&quot;:0.01,&quot;num&quot;:&quot;10&quot;,&quot;code&q\";s:15:\"propty_name_val\";s:57:\"[[&quot;1535685741914_规格:1535685749337_通用&quot;]]\";}","1535768413");
INSERT INTO fy_web_log_all VALUES("377","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/edit/id/5.html","admin","Goods","edit","GET","a:1:{s:2:\"id\";s:1:\"5\";}","1535768418");
INSERT INTO fy_web_log_all VALUES("378","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/getskudata.html","admin","Goods","getskudata","POST","a:1:{s:2:\"id\";s:1:\"5\";}","1535768418");
INSERT INTO fy_web_log_all VALUES("379","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/brand/index.html","admin","Brand","index","GET","a:0:{}","1535768458");
INSERT INTO fy_web_log_all VALUES("380","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_task/index.html","admin","CustomerTask","index","GET","a:0:{}","1535768458");
INSERT INTO fy_web_log_all VALUES("381","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_grade_desc/index.html","admin","CustomerGradeDesc","index","GET","a:0:{}","1535768459");
INSERT INTO fy_web_log_all VALUES("382","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/lottery_log/index.html","admin","LotteryLog","index","GET","a:0:{}","1535768460");
INSERT INTO fy_web_log_all VALUES("383","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/activity/index.html","admin","Activity","index","GET","a:0:{}","1535768461");
INSERT INTO fy_web_log_all VALUES("384","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/transaction/index.html","admin","Transaction","index","GET","a:0:{}","1535768461");
INSERT INTO fy_web_log_all VALUES("385","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/order/index.html","admin","Order","index","GET","a:0:{}","1535768462");
INSERT INTO fy_web_log_all VALUES("386","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/message/index.html","admin","Message","index","GET","a:0:{}","1535768467");
INSERT INTO fy_web_log_all VALUES("387","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods_comment/index.html","admin","GoodsComment","index","GET","a:0:{}","1535768467");
INSERT INTO fy_web_log_all VALUES("388","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/wx_pay_refund_log/index.html","admin","WxPayRefundLog","index","GET","a:0:{}","1535768468");
INSERT INTO fy_web_log_all VALUES("389","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/use_lottery/index.html","admin","UseLottery","index","GET","a:0:{}","1535768470");
INSERT INTO fy_web_log_all VALUES("390","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/gift_bag/index.html","admin","GiftBag","index","GET","a:0:{}","1535768471");
INSERT INTO fy_web_log_all VALUES("391","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_right/index.html","admin","CustomerRight","index","GET","a:0:{}","1535768474");
INSERT INTO fy_web_log_all VALUES("392","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/lottery_log/index.html","admin","LotteryLog","index","GET","a:0:{}","1535768475");
INSERT INTO fy_web_log_all VALUES("393","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_task/index.html","admin","CustomerTask","index","GET","a:0:{}","1535768475");
INSERT INTO fy_web_log_all VALUES("394","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer/index.html","admin","Customer","index","GET","a:0:{}","1535768476");
INSERT INTO fy_web_log_all VALUES("395","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/brand/index.html","admin","Brand","index","GET","a:0:{}","1535768477");
INSERT INTO fy_web_log_all VALUES("396","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1535768486");
INSERT INTO fy_web_log_all VALUES("397","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods_class/index.html","admin","GoodsClass","index","GET","a:0:{}","1535768489");
INSERT INTO fy_web_log_all VALUES("398","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/modular/index.html","admin","Modular","index","GET","a:0:{}","1535768490");
INSERT INTO fy_web_log_all VALUES("399","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/silde_show/index.html","admin","SildeShow","index","GET","a:0:{}","1535768490");
INSERT INTO fy_web_log_all VALUES("400","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1535768491");
INSERT INTO fy_web_log_all VALUES("401","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/login_log/index.html","admin","LoginLog","index","GET","a:0:{}","1535768493");
INSERT INTO fy_web_log_all VALUES("402","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/web_log/index.html","admin","WebLog","index","GET","a:0:{}","1535768494");
INSERT INTO fy_web_log_all VALUES("403","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/node_map/index.html","admin","NodeMap","index","GET","a:0:{}","1535768496");
INSERT INTO fy_web_log_all VALUES("404","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/web_log/index.html","admin","WebLog","index","GET","a:0:{}","1535768497");
INSERT INTO fy_web_log_all VALUES("405","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/web_log/detail/id/390.html","admin","WebLog","detail","GET","a:1:{s:2:\"id\";s:3:\"390\";}","1535768518");
INSERT INTO fy_web_log_all VALUES("406","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/web_log/index.html?p=2","admin","WebLog","index","GET","a:1:{s:1:\"p\";s:1:\"2\";}","1535768532");
INSERT INTO fy_web_log_all VALUES("407","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/web_log/index.html?p=3","admin","WebLog","index","GET","a:1:{s:1:\"p\";s:1:\"3\";}","1535768535");
INSERT INTO fy_web_log_all VALUES("408","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/web_log/index.html?p=2","admin","WebLog","index","GET","a:1:{s:1:\"p\";s:1:\"2\";}","1535768539");
INSERT INTO fy_web_log_all VALUES("409","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/login_log/index.html","admin","LoginLog","index","GET","a:0:{}","1535768542");
INSERT INTO fy_web_log_all VALUES("410","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/web_log/index.html","admin","WebLog","index","GET","a:0:{}","1535768543");
INSERT INTO fy_web_log_all VALUES("411","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/node_map/index.html","admin","NodeMap","index","GET","a:0:{}","1535768544");
INSERT INTO fy_web_log_all VALUES("412","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_user/index.html","admin","AdminUser","index","GET","a:0:{}","1535768552");
INSERT INTO fy_web_log_all VALUES("413","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_user/index.html","admin","AdminUser","index","GET","a:0:{}","1535768553");
INSERT INTO fy_web_log_all VALUES("414","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_role/index.html","admin","AdminRole","index","GET","a:0:{}","1535768564");
INSERT INTO fy_web_log_all VALUES("415","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_node/index.html","admin","AdminNode","index","GET","a:0:{}","1535768565");
INSERT INTO fy_web_log_all VALUES("416","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_node/index","admin","AdminNode","index","POST","a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}","1535768566");
INSERT INTO fy_web_log_all VALUES("417","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_node/index","admin","AdminNode","index","POST","a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}","1535768566");
INSERT INTO fy_web_log_all VALUES("418","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_group/index.html","admin","AdminGroup","index","GET","a:0:{}","1535768568");
INSERT INTO fy_web_log_all VALUES("419","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_node/index.html","admin","AdminNode","index","GET","a:0:{}","1535768569");
INSERT INTO fy_web_log_all VALUES("420","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_node/index","admin","AdminNode","index","POST","a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}","1535768569");
INSERT INTO fy_web_log_all VALUES("421","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_node/index","admin","AdminNode","index","POST","a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}","1535768569");
INSERT INTO fy_web_log_all VALUES("422","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_user/index.html","admin","AdminUser","index","GET","a:0:{}","1535768569");
INSERT INTO fy_web_log_all VALUES("423","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/node_map/index.html","admin","NodeMap","index","GET","a:0:{}","1535768570");
INSERT INTO fy_web_log_all VALUES("424","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/web_log/index.html","admin","WebLog","index","GET","a:0:{}","1535768570");
INSERT INTO fy_web_log_all VALUES("425","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/login_log/index.html","admin","LoginLog","index","GET","a:0:{}","1535768571");
INSERT INTO fy_web_log_all VALUES("426","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/silde_show/index.html","admin","SildeShow","index","GET","a:0:{}","1535768571");
INSERT INTO fy_web_log_all VALUES("427","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods_class/index.html","admin","GoodsClass","index","GET","a:0:{}","1535768571");
INSERT INTO fy_web_log_all VALUES("428","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1535768572");
INSERT INTO fy_web_log_all VALUES("429","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer/index.html","admin","Customer","index","GET","a:0:{}","1535768573");
INSERT INTO fy_web_log_all VALUES("430","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/lottery/index.html","admin","Lottery","index","GET","a:0:{}","1535768574");
INSERT INTO fy_web_log_all VALUES("431","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/lottery/index.html","admin","Lottery","index","GET","a:0:{}","1535768574");
INSERT INTO fy_web_log_all VALUES("432","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_task/index.html","admin","CustomerTask","index","GET","a:0:{}","1535768575");
INSERT INTO fy_web_log_all VALUES("433","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_grade/index.html","admin","CustomerGrade","index","GET","a:0:{}","1535768576");
INSERT INTO fy_web_log_all VALUES("434","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_grade_desc/index.html","admin","CustomerGradeDesc","index","GET","a:0:{}","1535768576");
INSERT INTO fy_web_log_all VALUES("435","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/lottery_log/index.html","admin","LotteryLog","index","GET","a:0:{}","1535768579");
INSERT INTO fy_web_log_all VALUES("436","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/activity/index.html","admin","Activity","index","GET","a:0:{}","1535768580");
INSERT INTO fy_web_log_all VALUES("437","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/transaction/index.html","admin","Transaction","index","GET","a:0:{}","1535768581");
INSERT INTO fy_web_log_all VALUES("438","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/order/index.html","admin","Order","index","GET","a:0:{}","1535768581");
INSERT INTO fy_web_log_all VALUES("439","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/message/index.html","admin","Message","index","GET","a:0:{}","1535768583");
INSERT INTO fy_web_log_all VALUES("440","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods_comment/index.html","admin","GoodsComment","index","GET","a:0:{}","1535768584");
INSERT INTO fy_web_log_all VALUES("441","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/wx_pay_refund_log/index.html","admin","WxPayRefundLog","index","GET","a:0:{}","1535768585");
INSERT INTO fy_web_log_all VALUES("442","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/use_lottery/index.html","admin","UseLottery","index","GET","a:0:{}","1535768585");
INSERT INTO fy_web_log_all VALUES("443","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/gift_bag/index.html","admin","GiftBag","index","GET","a:0:{}","1535768586");
INSERT INTO fy_web_log_all VALUES("444","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_right/index.html","admin","CustomerRight","index","GET","a:0:{}","1535768589");
INSERT INTO fy_web_log_all VALUES("445","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_group/index.html","admin","AdminGroup","index","GET","a:0:{}","1535768592");
INSERT INTO fy_web_log_all VALUES("446","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_node/index.html","admin","AdminNode","index","GET","a:0:{}","1535768593");
INSERT INTO fy_web_log_all VALUES("447","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_node/index","admin","AdminNode","index","POST","a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}","1535768593");
INSERT INTO fy_web_log_all VALUES("448","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_node/index","admin","AdminNode","index","POST","a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}","1535768593");
INSERT INTO fy_web_log_all VALUES("449","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_user/index.html","admin","AdminUser","index","GET","a:0:{}","1535768593");
INSERT INTO fy_web_log_all VALUES("450","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/node_map/index.html","admin","NodeMap","index","GET","a:0:{}","1535768593");
INSERT INTO fy_web_log_all VALUES("451","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/login_log/index.html","admin","LoginLog","index","GET","a:0:{}","1535768594");
INSERT INTO fy_web_log_all VALUES("452","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/silde_show/index.html","admin","SildeShow","index","GET","a:0:{}","1535768594");
INSERT INTO fy_web_log_all VALUES("453","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/modular/index.html","admin","Modular","index","GET","a:0:{}","1535768595");
INSERT INTO fy_web_log_all VALUES("454","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/brand/index.html","admin","Brand","index","GET","a:0:{}","1535768595");
INSERT INTO fy_web_log_all VALUES("455","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/lottery/index.html","admin","Lottery","index","GET","a:0:{}","1535768595");
INSERT INTO fy_web_log_all VALUES("456","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_role/index.html","admin","AdminRole","index","GET","a:0:{}","1535768596");
INSERT INTO fy_web_log_all VALUES("457","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_group/index.html","admin","AdminGroup","index","GET","a:0:{}","1535768596");
INSERT INTO fy_web_log_all VALUES("458","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1535768604");
INSERT INTO fy_web_log_all VALUES("459","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535768604");
INSERT INTO fy_web_log_all VALUES("460","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1535768605");
INSERT INTO fy_web_log_all VALUES("461","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535768605");
INSERT INTO fy_web_log_all VALUES("462","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1535768606");
INSERT INTO fy_web_log_all VALUES("463","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535768606");
INSERT INTO fy_web_log_all VALUES("464","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1535768607");
INSERT INTO fy_web_log_all VALUES("465","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535768607");
INSERT INTO fy_web_log_all VALUES("466","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/admin_user/index.html","admin","AdminUser","index","GET","a:0:{}","1535768631");
INSERT INTO fy_web_log_all VALUES("467","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/login_log/index.html","admin","LoginLog","index","GET","a:0:{}","1535768631");
INSERT INTO fy_web_log_all VALUES("468","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/modular/index.html","admin","Modular","index","GET","a:0:{}","1535768631");
INSERT INTO fy_web_log_all VALUES("469","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/brand/index.html","admin","Brand","index","GET","a:0:{}","1535768632");
INSERT INTO fy_web_log_all VALUES("470","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/lottery/index.html","admin","Lottery","index","GET","a:0:{}","1535768632");
INSERT INTO fy_web_log_all VALUES("471","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_grade_desc/index.html","admin","CustomerGradeDesc","index","GET","a:0:{}","1535768632");
INSERT INTO fy_web_log_all VALUES("472","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/transaction/index.html","admin","Transaction","index","GET","a:0:{}","1535768633");
INSERT INTO fy_web_log_all VALUES("473","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/message/index.html","admin","Message","index","GET","a:0:{}","1535768634");
INSERT INTO fy_web_log_all VALUES("474","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods_comment/index.html","admin","GoodsComment","index","GET","a:0:{}","1535768634");
INSERT INTO fy_web_log_all VALUES("475","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/use_lottery/index.html","admin","UseLottery","index","GET","a:0:{}","1535768635");
INSERT INTO fy_web_log_all VALUES("476","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/gift_bag/index.html","admin","GiftBag","index","GET","a:0:{}","1535768635");
INSERT INTO fy_web_log_all VALUES("477","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods_class/index.html","admin","GoodsClass","index","GET","a:0:{}","1535768636");
INSERT INTO fy_web_log_all VALUES("478","1","220.197.182.89","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/login_log/index.html","admin","LoginLog","index","GET","a:0:{}","1535768637");
INSERT INTO fy_web_log_all VALUES("479","0","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin","admin","Index","index","GET","a:0:{}","1535772160");
INSERT INTO fy_web_log_all VALUES("480","0","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/pub/login.html","admin","Pub","login","GET","a:0:{}","1535772160");
INSERT INTO fy_web_log_all VALUES("481","0","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/pub/checklogin.html","admin","Pub","checklogin","POST","a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"qeyc\";}","1535772170");
INSERT INTO fy_web_log_all VALUES("482","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1535772170");
INSERT INTO fy_web_log_all VALUES("483","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535772171");
INSERT INTO fy_web_log_all VALUES("484","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/use_lottery/index.html","admin","UseLottery","index","GET","a:0:{}","1535772185");
INSERT INTO fy_web_log_all VALUES("485","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/index.html","admin","CustomerRight","index","GET","a:0:{}","1535772187");
INSERT INTO fy_web_log_all VALUES("486","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/add.html","admin","CustomerRight","add","GET","a:0:{}","1535772194");
INSERT INTO fy_web_log_all VALUES("487","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/upload/index/id/upload.html","admin","Upload","index","GET","a:1:{s:2:\"id\";s:6:\"upload\";}","1535772623");
INSERT INTO fy_web_log_all VALUES("488","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/upload/listimage.html","admin","Upload","listimage","POST","a:2:{s:1:\"p\";s:1:\"1\";s:5:\"count\";s:1:\"1\";}","1535772625");
INSERT INTO fy_web_log_all VALUES("489","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/upload/upload.html","admin","Upload","upload","POST","a:0:{}","1535772712");
INSERT INTO fy_web_log_all VALUES("490","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/add.html","admin","CustomerRight","add","GET","a:0:{}","1535772737");
INSERT INTO fy_web_log_all VALUES("491","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/add.html","admin","CustomerRight","add","POST","a:5:{s:2:\"id\";s:0:\"\";s:4:\"name\";s:3:\"fff\";s:3:\"pic\";s:58:\"/tmp/uploads/20180901/216be9b0a3218cc416d95c39e00e52ed.png\";s:4:\"desc\";s:4:\"ffff\";s:11:\"instruction\";s:25:\"&lt;p&gt;ffffff&lt;/p&gt;\";}","1535772748");
INSERT INTO fy_web_log_all VALUES("492","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/index.html","admin","CustomerRight","index","GET","a:0:{}","1535772748");
INSERT INTO fy_web_log_all VALUES("493","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/4.html","admin","CustomerRight","edit","GET","a:1:{s:2:\"id\";s:1:\"4\";}","1535772753");
INSERT INTO fy_web_log_all VALUES("494","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/4.html","admin","CustomerRight","edit","POST","a:5:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"升级送积分\";s:3:\"pic\";s:58:\"/tmp/uploads/20180723/1681a77828fe3083f2699165d26908bb.jpg\";s:4:\"desc\";s:15:\"升级送积分\";s:11:\"instruction\";s:34:\"&lt;p&gt;升级送积分&lt;/p&gt;\";}","1535772756");
INSERT INTO fy_web_log_all VALUES("495","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/index.html","admin","CustomerRight","index","GET","a:0:{}","1535772756");
INSERT INTO fy_web_log_all VALUES("496","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/3.html","admin","CustomerRight","edit","GET","a:1:{s:2:\"id\";s:1:\"3\";}","1535772757");
INSERT INTO fy_web_log_all VALUES("497","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/3.html","admin","CustomerRight","edit","POST","a:5:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:18:\"钻石会员专享\";s:3:\"pic\";s:58:\"/tmp/uploads/20180723/6486343a125aabff9602a9e54715d5dc.png\";s:4:\"desc\";s:18:\"钻石会员专享\";s:11:\"instruction\";s:37:\"&lt;p&gt;钻石会员专享&lt;/p&gt;\";}","1535772759");
INSERT INTO fy_web_log_all VALUES("498","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/index.html","admin","CustomerRight","index","GET","a:0:{}","1535772760");
INSERT INTO fy_web_log_all VALUES("499","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/3.html","admin","CustomerRight","edit","GET","a:1:{s:2:\"id\";s:1:\"3\";}","1535772762");
INSERT INTO fy_web_log_all VALUES("500","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/3.html","admin","CustomerRight","edit","POST","a:5:{s:2:\"id\";s:1:\"3\";s:4:\"name\";s:18:\"钻石会员专享\";s:3:\"pic\";s:58:\"/pic/uploads/20180723/6486343a125aabff9602a9e54715d5dc.png\";s:4:\"desc\";s:18:\"钻石会员专享\";s:11:\"instruction\";s:37:\"&lt;p&gt;钻石会员专享&lt;/p&gt;\";}","1535772763");
INSERT INTO fy_web_log_all VALUES("501","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/index.html","admin","CustomerRight","index","GET","a:0:{}","1535772763");
INSERT INTO fy_web_log_all VALUES("502","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/2.html","admin","CustomerRight","edit","GET","a:1:{s:2:\"id\";s:1:\"2\";}","1535772765");
INSERT INTO fy_web_log_all VALUES("503","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/2.html","admin","CustomerRight","edit","POST","a:5:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:12:\"生日礼包\";s:3:\"pic\";s:58:\"/tmp/uploads/20180723/00b284f74955a532c941f0d4d061c7fd.jpg\";s:4:\"desc\";s:18:\"生日会员专享\";s:11:\"instruction\";s:37:\"&lt;p&gt;生日会员专享&lt;/p&gt;\";}","1535772767");
INSERT INTO fy_web_log_all VALUES("504","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/index.html","admin","CustomerRight","index","GET","a:0:{}","1535772767");
INSERT INTO fy_web_log_all VALUES("505","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/1.html","admin","CustomerRight","edit","GET","a:1:{s:2:\"id\";s:1:\"1\";}","1535772768");
INSERT INTO fy_web_log_all VALUES("506","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/1.html","admin","CustomerRight","edit","POST","a:5:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"新人礼包\";s:3:\"pic\";s:58:\"/tmp/uploads/20180723/949ad4c57591a0793b777e74c0afbd33.jpg\";s:4:\"desc\";s:12:\"新人专享\";s:11:\"instruction\";s:82:\"&lt;p&gt;礼包包含一张优惠券、一张抵用券、一张积分券&lt;/p&gt;\";}","1535772770");
INSERT INTO fy_web_log_all VALUES("507","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/index.html","admin","CustomerRight","index","GET","a:0:{}","1535772770");
INSERT INTO fy_web_log_all VALUES("508","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/4.html","admin","CustomerRight","edit","GET","a:1:{s:2:\"id\";s:1:\"4\";}","1535772783");
INSERT INTO fy_web_log_all VALUES("509","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/4.html","admin","CustomerRight","edit","GET","a:1:{s:2:\"id\";s:1:\"4\";}","1535772810");
INSERT INTO fy_web_log_all VALUES("510","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/upload/index/id/upload.html","admin","Upload","index","GET","a:1:{s:2:\"id\";s:6:\"upload\";}","1535772811");
INSERT INTO fy_web_log_all VALUES("511","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/upload/listimage.html","admin","Upload","listimage","POST","a:2:{s:1:\"p\";s:1:\"1\";s:5:\"count\";s:1:\"1\";}","1535772813");
INSERT INTO fy_web_log_all VALUES("512","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/4.html","admin","CustomerRight","edit","POST","a:5:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"升级送积分\";s:3:\"pic\";s:58:\"/tmp/uploads/20180822/7a2570970d3d8229dcf3deca8903d946.png\";s:4:\"desc\";s:15:\"升级送积分\";s:11:\"instruction\";s:34:\"&lt;p&gt;升级送积分&lt;/p&gt;\";}","1535772818");
INSERT INTO fy_web_log_all VALUES("513","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/index.html","admin","CustomerRight","index","GET","a:0:{}","1535772818");
INSERT INTO fy_web_log_all VALUES("514","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/4.html","admin","CustomerRight","edit","GET","a:1:{s:2:\"id\";s:1:\"4\";}","1535772821");
INSERT INTO fy_web_log_all VALUES("515","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/order/index.html","admin","Order","index","GET","a:0:{}","1535772904");
INSERT INTO fy_web_log_all VALUES("516","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/message/index.html","admin","Message","index","GET","a:0:{}","1535772905");
INSERT INTO fy_web_log_all VALUES("517","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/goods_comment/index.html","admin","GoodsComment","index","GET","a:0:{}","1535772907");
INSERT INTO fy_web_log_all VALUES("518","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/wx_pay_refund_log/index.html","admin","WxPayRefundLog","index","GET","a:0:{}","1535772908");
INSERT INTO fy_web_log_all VALUES("519","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/use_lottery/index.html","admin","UseLottery","index","GET","a:0:{}","1535772909");
INSERT INTO fy_web_log_all VALUES("520","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/gift_bag/index.html","admin","GiftBag","index","GET","a:0:{}","1535772910");
INSERT INTO fy_web_log_all VALUES("521","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_grade_desc/index.html","admin","CustomerGradeDesc","index","GET","a:0:{}","1535772912");
INSERT INTO fy_web_log_all VALUES("522","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/lottery_log/index.html","admin","LotteryLog","index","GET","a:0:{}","1535772915");
INSERT INTO fy_web_log_all VALUES("523","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/lottery/index.html","admin","Lottery","index","GET","a:0:{}","1535772941");
INSERT INTO fy_web_log_all VALUES("524","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_task/index.html","admin","CustomerTask","index","GET","a:0:{}","1535772943");
INSERT INTO fy_web_log_all VALUES("525","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer/index.html","admin","Customer","index","GET","a:0:{}","1535772943");
INSERT INTO fy_web_log_all VALUES("526","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/brand/index.html","admin","Brand","index","GET","a:0:{}","1535772951");
INSERT INTO fy_web_log_all VALUES("527","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/brand/edit/id/17.html","admin","Brand","edit","GET","a:1:{s:2:\"id\";s:2:\"17\";}","1535772954");
INSERT INTO fy_web_log_all VALUES("528","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1535772962");
INSERT INTO fy_web_log_all VALUES("529","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/goods/edit/id/1.html","admin","Goods","edit","GET","a:1:{s:2:\"id\";s:1:\"1\";}","1535772965");
INSERT INTO fy_web_log_all VALUES("530","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/goods/getskudata.html","admin","Goods","getskudata","POST","a:1:{s:2:\"id\";s:1:\"1\";}","1535772965");
INSERT INTO fy_web_log_all VALUES("531","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/goods/edit/id/1.html","admin","Goods","edit","GET","a:1:{s:2:\"id\";s:1:\"1\";}","1535773119");
INSERT INTO fy_web_log_all VALUES("532","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/goods/getskudata.html","admin","Goods","getskudata","POST","a:1:{s:2:\"id\";s:1:\"1\";}","1535773120");
INSERT INTO fy_web_log_all VALUES("533","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/brand/index.html","admin","Brand","index","GET","a:0:{}","1535773123");
INSERT INTO fy_web_log_all VALUES("534","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/brand/edit/id/17.html","admin","Brand","edit","GET","a:1:{s:2:\"id\";s:2:\"17\";}","1535773125");
INSERT INTO fy_web_log_all VALUES("535","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1535773130");
INSERT INTO fy_web_log_all VALUES("536","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535773130");
INSERT INTO fy_web_log_all VALUES("537","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1535773138");
INSERT INTO fy_web_log_all VALUES("538","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/brand/index.html","admin","Brand","index","GET","a:0:{}","1535773141");
INSERT INTO fy_web_log_all VALUES("539","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/brand/edit/id/17.html","admin","Brand","edit","GET","a:1:{s:2:\"id\";s:2:\"17\";}","1535773143");
INSERT INTO fy_web_log_all VALUES("540","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1535773180");
INSERT INTO fy_web_log_all VALUES("541","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535773180");
INSERT INTO fy_web_log_all VALUES("542","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1535773182");
INSERT INTO fy_web_log_all VALUES("543","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535773182");
INSERT INTO fy_web_log_all VALUES("544","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/brand/index.html","admin","Brand","index","GET","a:0:{}","1535773185");
INSERT INTO fy_web_log_all VALUES("545","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/brand/edit/id/17.html","admin","Brand","edit","GET","a:1:{s:2:\"id\";s:2:\"17\";}","1535773187");
INSERT INTO fy_web_log_all VALUES("546","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/brand/index.html","admin","Brand","index","GET","a:0:{}","1535773368");
INSERT INTO fy_web_log_all VALUES("547","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/brand/edit/id/17.html","admin","Brand","edit","GET","a:1:{s:2:\"id\";s:2:\"17\";}","1535773370");
INSERT INTO fy_web_log_all VALUES("548","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1535773380");
INSERT INTO fy_web_log_all VALUES("549","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535773380");
INSERT INTO fy_web_log_all VALUES("550","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/brand/index.html","admin","Brand","index","GET","a:0:{}","1535773383");
INSERT INTO fy_web_log_all VALUES("551","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/brand/edit/id/17.html","admin","Brand","edit","GET","a:1:{s:2:\"id\";s:2:\"17\";}","1535773385");
INSERT INTO fy_web_log_all VALUES("552","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1535773471");
INSERT INTO fy_web_log_all VALUES("553","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535773472");
INSERT INTO fy_web_log_all VALUES("554","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1535773474");
INSERT INTO fy_web_log_all VALUES("555","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/brand/index.html","admin","Brand","index","GET","a:0:{}","1535773477");
INSERT INTO fy_web_log_all VALUES("556","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/brand/edit/id/17.html","admin","Brand","edit","GET","a:1:{s:2:\"id\";s:2:\"17\";}","1535773478");
INSERT INTO fy_web_log_all VALUES("557","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/brand/edit/id/17.html","admin","Brand","edit","GET","a:1:{s:2:\"id\";s:2:\"17\";}","1535773565");
INSERT INTO fy_web_log_all VALUES("558","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/index.html","admin","CustomerRight","index","GET","a:0:{}","1535773574");
INSERT INTO fy_web_log_all VALUES("559","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/5.html","admin","CustomerRight","edit","GET","a:1:{s:2:\"id\";s:1:\"5\";}","1535773659");
INSERT INTO fy_web_log_all VALUES("560","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/3.html","admin","CustomerRight","edit","GET","a:1:{s:2:\"id\";s:1:\"3\";}","1535773667");
INSERT INTO fy_web_log_all VALUES("561","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/4.html","admin","CustomerRight","edit","GET","a:1:{s:2:\"id\";s:1:\"4\";}","1535773675");
INSERT INTO fy_web_log_all VALUES("562","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/upload/index/id/upload.html","admin","Upload","index","GET","a:1:{s:2:\"id\";s:6:\"upload\";}","1535773676");
INSERT INTO fy_web_log_all VALUES("563","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/upload/upload.html","admin","Upload","upload","POST","a:0:{}","1535773681");
INSERT INTO fy_web_log_all VALUES("564","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/4.html","admin","CustomerRight","edit","POST","a:5:{s:2:\"id\";s:1:\"4\";s:4:\"name\";s:15:\"升级送积分\";s:3:\"pic\";s:58:\"/tmp/uploads/20180901/ad61a9b50e7d2b918618a29c9d7db9c8.png\";s:4:\"desc\";s:15:\"升级送积分\";s:11:\"instruction\";s:34:\"&lt;p&gt;升级送积分&lt;/p&gt;\";}","1535773687");
INSERT INTO fy_web_log_all VALUES("565","1","117.188.4.196","中国 中国  ","Windows 7","Chrome(64.0.3282.186)","http://www.fyxt701.com/index.php/admin/customer_right/index.html","admin","CustomerRight","index","GET","a:0:{}","1535773687");
INSERT INTO fy_web_log_all VALUES("566","0","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1535936727");
INSERT INTO fy_web_log_all VALUES("567","0","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/pub/login.html","admin","Pub","login","GET","a:0:{}","1535936727");
INSERT INTO fy_web_log_all VALUES("568","0","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/pub/login.html","admin","Pub","login","GET","a:0:{}","1535936729");
INSERT INTO fy_web_log_all VALUES("569","0","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/pub/checklogin.html","admin","Pub","checklogin","POST","a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:5:\"eofo]\";}","1535936736");
INSERT INTO fy_web_log_all VALUES("570","0","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/pub/checklogin.html","admin","Pub","checklogin","POST","a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"kcae\";}","1535936743");
INSERT INTO fy_web_log_all VALUES("571","1","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1535936743");
INSERT INTO fy_web_log_all VALUES("572","1","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1535936744");
INSERT INTO fy_web_log_all VALUES("573","1","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer/index.html","admin","Customer","index","GET","a:0:{}","1535936751");
INSERT INTO fy_web_log_all VALUES("574","1","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_right/index.html","admin","CustomerRight","index","GET","a:0:{}","1535936761");
INSERT INTO fy_web_log_all VALUES("575","1","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/5.html","admin","CustomerRight","edit","GET","a:1:{s:2:\"id\";s:1:\"5\";}","1535936764");
INSERT INTO fy_web_log_all VALUES("576","1","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/1.html","admin","CustomerRight","edit","GET","a:1:{s:2:\"id\";s:1:\"1\";}","1535936779");
INSERT INTO fy_web_log_all VALUES("577","1","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/upload/index/id/upload.html","admin","Upload","index","GET","a:1:{s:2:\"id\";s:6:\"upload\";}","1535936788");
INSERT INTO fy_web_log_all VALUES("578","1","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/upload/upload.html","admin","Upload","upload","POST","a:0:{}","1535936877");
INSERT INTO fy_web_log_all VALUES("579","1","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/1.html","admin","CustomerRight","edit","POST","a:5:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:12:\"新人礼包\";s:3:\"pic\";s:58:\"/tmp/uploads/20180903/2b2e90ff2b073b544240a3152c7416ff.jpg\";s:4:\"desc\";s:12:\"新人专享\";s:11:\"instruction\";s:82:\"&lt;p&gt;礼包包含一张优惠券、一张抵用券、一张积分券&lt;/p&gt;\";}","1535936878");
INSERT INTO fy_web_log_all VALUES("580","1","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_right/index.html","admin","CustomerRight","index","GET","a:0:{}","1535936878");
INSERT INTO fy_web_log_all VALUES("581","1","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_right/edit/id/1.html","admin","CustomerRight","edit","GET","a:1:{s:2:\"id\";s:1:\"1\";}","1535936927");
INSERT INTO fy_web_log_all VALUES("582","0","220.197.182.69","中国 贵州 贵阳 ","Windows NT","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/node_map/index.html","admin","NodeMap","index","GET","a:0:{}","1535962639");
INSERT INTO fy_web_log_all VALUES("583","0","220.197.182.69","中国 贵州 贵阳 ","Windows NT","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/pub/loginframe.html","admin","Pub","loginframe","GET","a:0:{}","1535962641");
INSERT INTO fy_web_log_all VALUES("584","0","220.197.182.69","中国 贵州 贵阳 ","Windows NT","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/pub/checklogin.html","admin","Pub","checklogin","POST","a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:5:\"admin\";s:7:\"captcha\";s:4:\"2byk\";}","1535962653");
INSERT INTO fy_web_log_all VALUES("585","0","220.197.182.69","中国 贵州 贵阳 ","Windows NT","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/pub/checklogin.html","admin","Pub","checklogin","POST","a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"k5vr\";}","1535962669");
INSERT INTO fy_web_log_all VALUES("586","1","220.197.182.69","中国 贵州 贵阳 ","Windows NT","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/web_log/index.html","admin","WebLog","index","GET","a:0:{}","1535962671");
INSERT INTO fy_web_log_all VALUES("587","1","220.197.182.69","中国 贵州 贵阳 ","Windows NT","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1535962672");
INSERT INTO fy_web_log_all VALUES("588","0","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1536135080");
INSERT INTO fy_web_log_all VALUES("589","0","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/pub/login.html","admin","Pub","login","GET","a:0:{}","1536135080");
INSERT INTO fy_web_log_all VALUES("590","0","220.197.182.84","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1536135114");
INSERT INTO fy_web_log_all VALUES("591","0","220.197.182.84","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/pub/login.html","admin","Pub","login","GET","a:0:{}","1536135114");
INSERT INTO fy_web_log_all VALUES("592","0","183.61.51.51","中国 广东 深圳 ","Mac","未知浏览器()","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1536135147");
INSERT INTO fy_web_log_all VALUES("593","0","61.129.6.151","中国 上海 上海 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1536135174");
INSERT INTO fy_web_log_all VALUES("594","0","61.151.178.163","中国 上海 上海 ","Mac","未知浏览器()","http://www.fyxt701.com/index.php/admin/pub/login.html","admin","Pub","login","GET","a:0:{}","1536135174");
INSERT INTO fy_web_log_all VALUES("595","0","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1536135296");
INSERT INTO fy_web_log_all VALUES("596","0","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/pub/login.html","admin","Pub","login","GET","a:0:{}","1536135296");
INSERT INTO fy_web_log_all VALUES("597","0","101.89.239.238","中国 上海 上海 ","Linux","Chrome(53.0.2785.49)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1536135356");
INSERT INTO fy_web_log_all VALUES("598","0","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1536197690");
INSERT INTO fy_web_log_all VALUES("599","0","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/pub/login.html","admin","Pub","login","GET","a:0:{}","1536197690");
INSERT INTO fy_web_log_all VALUES("600","0","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/pub/checklogin.html","admin","Pub","checklogin","POST","a:4:{s:7:\"account\";s:8:\"welcome \";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"7t7n\";s:6:\"online\";s:1:\"1\";}","1536197715");
INSERT INTO fy_web_log_all VALUES("601","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1536197716");
INSERT INTO fy_web_log_all VALUES("602","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1536197716");
INSERT INTO fy_web_log_all VALUES("603","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1536197757");
INSERT INTO fy_web_log_all VALUES("604","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1536197757");
INSERT INTO fy_web_log_all VALUES("605","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1536197763");
INSERT INTO fy_web_log_all VALUES("606","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/web_log/index.html","admin","WebLog","index","GET","a:0:{}","1536197770");
INSERT INTO fy_web_log_all VALUES("607","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/login_log/index.html","admin","LoginLog","index","GET","a:0:{}","1536197772");
INSERT INTO fy_web_log_all VALUES("608","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/order/index.html","admin","Order","index","GET","a:0:{}","1536197774");
INSERT INTO fy_web_log_all VALUES("609","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1536197775");
INSERT INTO fy_web_log_all VALUES("610","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods/add.html","admin","Goods","add","GET","a:0:{}","1536197780");
INSERT INTO fy_web_log_all VALUES("611","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/wx_pay_refund_log/index.html","admin","WxPayRefundLog","index","GET","a:0:{}","1536197794");
INSERT INTO fy_web_log_all VALUES("612","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/lottery/index.html","admin","Lottery","index","GET","a:0:{}","1536197796");
INSERT INTO fy_web_log_all VALUES("613","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/activity/index.html","admin","Activity","index","GET","a:0:{}","1536197798");
INSERT INTO fy_web_log_all VALUES("614","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/silde_show/index.html","admin","SildeShow","index","GET","a:0:{}","1536197799");
INSERT INTO fy_web_log_all VALUES("615","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/web_log/index.html","admin","WebLog","index","GET","a:0:{}","1536198056");
INSERT INTO fy_web_log_all VALUES("616","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/login_log/index.html","admin","LoginLog","index","GET","a:0:{}","1536198128");
INSERT INTO fy_web_log_all VALUES("617","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/order/index.html","admin","Order","index","GET","a:0:{}","1536198137");
INSERT INTO fy_web_log_all VALUES("618","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/web_log/index.html","admin","WebLog","index","GET","a:0:{}","1536198216");
INSERT INTO fy_web_log_all VALUES("619","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/web_log/detail/id/617.html","admin","WebLog","detail","GET","a:1:{s:2:\"id\";s:3:\"617\";}","1536198220");
INSERT INTO fy_web_log_all VALUES("620","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/login_log/index.html","admin","LoginLog","index","GET","a:0:{}","1536198229");
INSERT INTO fy_web_log_all VALUES("621","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/order/index.html","admin","Order","index","GET","a:0:{}","1536198243");
INSERT INTO fy_web_log_all VALUES("622","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1536198247");
INSERT INTO fy_web_log_all VALUES("623","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/order/index.html","admin","Order","index","GET","a:0:{}","1536198250");
INSERT INTO fy_web_log_all VALUES("624","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1536198261");
INSERT INTO fy_web_log_all VALUES("625","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods/updowntip.html","admin","Goods","updowntip","POST","a:2:{s:2:\"id\";s:1:\"2\";s:4:\"flag\";s:4:\"down\";}","1536198276");
INSERT INTO fy_web_log_all VALUES("626","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1536198278");
INSERT INTO fy_web_log_all VALUES("627","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods/edit/type/show/id/2.html","admin","Goods","edit","GET","a:2:{s:4:\"type\";s:4:\"show\";s:2:\"id\";s:1:\"2\";}","1536198279");
INSERT INTO fy_web_log_all VALUES("628","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods/getskudata.html","admin","Goods","getskudata","POST","a:1:{s:2:\"id\";s:1:\"2\";}","1536198279");
INSERT INTO fy_web_log_all VALUES("629","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/wx_pay_refund_log/index.html","admin","WxPayRefundLog","index","GET","a:0:{}","1536198300");
INSERT INTO fy_web_log_all VALUES("630","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/lottery/index.html","admin","Lottery","index","GET","a:0:{}","1536198304");
INSERT INTO fy_web_log_all VALUES("631","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/activity/index.html","admin","Activity","index","GET","a:0:{}","1536198308");
INSERT INTO fy_web_log_all VALUES("632","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/silde_show/index.html","admin","SildeShow","index","GET","a:0:{}","1536198317");
INSERT INTO fy_web_log_all VALUES("633","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/message/index.html","admin","Message","index","GET","a:0:{}","1536198320");
INSERT INTO fy_web_log_all VALUES("634","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/brand/index.html","admin","Brand","index","GET","a:0:{}","1536198323");
INSERT INTO fy_web_log_all VALUES("635","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/use_lottery/index.html","admin","UseLottery","index","GET","a:0:{}","1536198344");
INSERT INTO fy_web_log_all VALUES("636","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/customer_task/index.html","admin","CustomerTask","index","GET","a:0:{}","1536198351");
INSERT INTO fy_web_log_all VALUES("637","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/transaction/index.html","admin","Transaction","index","GET","a:0:{}","1536198354");
INSERT INTO fy_web_log_all VALUES("638","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods_class/index.html","admin","GoodsClass","index","GET","a:0:{}","1536198357");
INSERT INTO fy_web_log_all VALUES("639","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods_comment/index.html","admin","GoodsComment","index","GET","a:0:{}","1536198365");
INSERT INTO fy_web_log_all VALUES("640","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/customer/index.html","admin","Customer","index","GET","a:0:{}","1536198366");
INSERT INTO fy_web_log_all VALUES("641","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/lottery_log/index.html","admin","LotteryLog","index","GET","a:0:{}","1536198376");
INSERT INTO fy_web_log_all VALUES("642","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1536198380");
INSERT INTO fy_web_log_all VALUES("643","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/lottery_log/index.html","admin","LotteryLog","index","GET","a:0:{}","1536198492");
INSERT INTO fy_web_log_all VALUES("644","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/customer/index.html","admin","Customer","index","GET","a:0:{}","1536198493");
INSERT INTO fy_web_log_all VALUES("645","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods_comment/index.html","admin","GoodsComment","index","GET","a:0:{}","1536198494");
INSERT INTO fy_web_log_all VALUES("646","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/transaction/index.html","admin","Transaction","index","GET","a:0:{}","1536198504");
INSERT INTO fy_web_log_all VALUES("647","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/customer_task/index.html","admin","CustomerTask","index","GET","a:0:{}","1536198505");
INSERT INTO fy_web_log_all VALUES("648","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/use_lottery/index.html","admin","UseLottery","index","GET","a:0:{}","1536198508");
INSERT INTO fy_web_log_all VALUES("649","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1536198591");
INSERT INTO fy_web_log_all VALUES("650","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1536198592");
INSERT INTO fy_web_log_all VALUES("651","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/web_log/index.html","admin","WebLog","index","GET","a:0:{}","1536198594");
INSERT INTO fy_web_log_all VALUES("652","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/web_log/detail/id/650.html","admin","WebLog","detail","GET","a:1:{s:2:\"id\";s:3:\"650\";}","1536198597");
INSERT INTO fy_web_log_all VALUES("653","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/order/index.html","admin","Order","index","GET","a:0:{}","1536198602");
INSERT INTO fy_web_log_all VALUES("654","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1536198609");
INSERT INTO fy_web_log_all VALUES("655","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods/edit/type/show/id/2.html","admin","Goods","edit","GET","a:2:{s:4:\"type\";s:4:\"show\";s:2:\"id\";s:1:\"2\";}","1536198612");
INSERT INTO fy_web_log_all VALUES("656","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods/getskudata.html","admin","Goods","getskudata","POST","a:1:{s:2:\"id\";s:1:\"2\";}","1536198612");
INSERT INTO fy_web_log_all VALUES("657","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/order/index.html","admin","Order","index","GET","a:0:{}","1536198680");
INSERT INTO fy_web_log_all VALUES("658","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods_comment/index.html","admin","GoodsComment","index","GET","a:0:{}","1536198714");
INSERT INTO fy_web_log_all VALUES("659","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods_class/index.html","admin","GoodsClass","index","GET","a:0:{}","1536198715");
INSERT INTO fy_web_log_all VALUES("660","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1536198716");
INSERT INTO fy_web_log_all VALUES("661","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/order/index.html","admin","Order","index","GET","a:0:{}","1536198718");
INSERT INTO fy_web_log_all VALUES("662","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1536198780");
INSERT INTO fy_web_log_all VALUES("663","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods/edit/type/show/id/2.html","admin","Goods","edit","GET","a:2:{s:4:\"type\";s:4:\"show\";s:2:\"id\";s:1:\"2\";}","1536198785");
INSERT INTO fy_web_log_all VALUES("664","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods/getskudata.html","admin","Goods","getskudata","POST","a:1:{s:2:\"id\";s:1:\"2\";}","1536198785");
INSERT INTO fy_web_log_all VALUES("665","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/wx_pay_refund_log/index.html","admin","WxPayRefundLog","index","GET","a:0:{}","1536198787");
INSERT INTO fy_web_log_all VALUES("666","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/lottery/index.html","admin","Lottery","index","GET","a:0:{}","1536198791");
INSERT INTO fy_web_log_all VALUES("667","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/activity/index.html","admin","Activity","index","GET","a:0:{}","1536198793");
INSERT INTO fy_web_log_all VALUES("668","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/silde_show/index.html","admin","SildeShow","index","GET","a:0:{}","1536198797");
INSERT INTO fy_web_log_all VALUES("669","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/message/index.html","admin","Message","index","GET","a:0:{}","1536198799");
INSERT INTO fy_web_log_all VALUES("670","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/brand/index.html","admin","Brand","index","GET","a:0:{}","1536198804");
INSERT INTO fy_web_log_all VALUES("671","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/use_lottery/index.html","admin","UseLottery","index","GET","a:0:{}","1536198807");
INSERT INTO fy_web_log_all VALUES("672","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/customer_task/index.html","admin","CustomerTask","index","GET","a:0:{}","1536198809");
INSERT INTO fy_web_log_all VALUES("673","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/order/index.html","admin","Order","index","GET","a:0:{}","1536198810");
INSERT INTO fy_web_log_all VALUES("674","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1536199029");
INSERT INTO fy_web_log_all VALUES("675","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1536199263");
INSERT INTO fy_web_log_all VALUES("676","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/lottery_log/index.html","admin","LotteryLog","index","GET","a:0:{}","1536199264");
INSERT INTO fy_web_log_all VALUES("677","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/customer/index.html","admin","Customer","index","GET","a:0:{}","1536199265");
INSERT INTO fy_web_log_all VALUES("678","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods_comment/index.html","admin","GoodsComment","index","GET","a:0:{}","1536199268");
INSERT INTO fy_web_log_all VALUES("679","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods_class/index.html","admin","GoodsClass","index","GET","a:0:{}","1536199269");
INSERT INTO fy_web_log_all VALUES("680","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/transaction/index.html","admin","Transaction","index","GET","a:0:{}","1536199270");
INSERT INTO fy_web_log_all VALUES("681","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/customer_task/index.html","admin","CustomerTask","index","GET","a:0:{}","1536199274");
INSERT INTO fy_web_log_all VALUES("682","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/use_lottery/index.html","admin","UseLottery","index","GET","a:0:{}","1536199278");
INSERT INTO fy_web_log_all VALUES("683","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/brand/index.html","admin","Brand","index","GET","a:0:{}","1536199280");
INSERT INTO fy_web_log_all VALUES("684","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/message/index.html","admin","Message","index","GET","a:0:{}","1536199282");
INSERT INTO fy_web_log_all VALUES("685","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/silde_show/index.html","admin","SildeShow","index","GET","a:0:{}","1536199285");
INSERT INTO fy_web_log_all VALUES("686","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/activity/index.html","admin","Activity","index","GET","a:0:{}","1536199286");
INSERT INTO fy_web_log_all VALUES("687","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/lottery/index.html","admin","Lottery","index","GET","a:0:{}","1536199287");
INSERT INTO fy_web_log_all VALUES("688","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/wx_pay_refund_log/index.html","admin","WxPayRefundLog","index","GET","a:0:{}","1536199289");
INSERT INTO fy_web_log_all VALUES("689","20","220.197.182.88","中国 贵州 贵阳 ","Windows 95","Chrome(39.0.2171.95)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1536199290");
INSERT INTO fy_web_log_all VALUES("690","0","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1536540951");
INSERT INTO fy_web_log_all VALUES("691","0","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/pub/login.html","admin","Pub","login","GET","a:0:{}","1536540951");
INSERT INTO fy_web_log_all VALUES("692","0","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/pub/checklogin.html","admin","Pub","checklogin","POST","a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"avpf\";}","1536540965");
INSERT INTO fy_web_log_all VALUES("693","1","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1536540965");
INSERT INTO fy_web_log_all VALUES("694","1","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1536540965");
INSERT INTO fy_web_log_all VALUES("695","1","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_grade/index.html","admin","CustomerGrade","index","GET","a:0:{}","1536540976");
INSERT INTO fy_web_log_all VALUES("696","1","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer_task/index.html","admin","CustomerTask","index","GET","a:0:{}","1536540977");
INSERT INTO fy_web_log_all VALUES("697","1","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/lottery/index.html","admin","Lottery","index","GET","a:0:{}","1536540977");
INSERT INTO fy_web_log_all VALUES("698","1","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/customer/index.html","admin","Customer","index","GET","a:0:{}","1536540978");
INSERT INTO fy_web_log_all VALUES("699","1","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/brand/index.html","admin","Brand","index","GET","a:0:{}","1536540994");
INSERT INTO fy_web_log_all VALUES("700","1","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/brand/index.html","admin","Brand","index","GET","a:0:{}","1536540998");
INSERT INTO fy_web_log_all VALUES("701","1","220.197.182.85","中国 贵州 贵阳 ","Windows 10","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1536540999");
INSERT INTO fy_web_log_all VALUES("702","0","220.197.182.69","中国 贵州 贵阳 ","Windows NT","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/notice/index.html","admin","Notice","index","GET","a:0:{}","1536564435");
INSERT INTO fy_web_log_all VALUES("703","0","220.197.182.69","中国 贵州 贵阳 ","Windows NT","Chrome(68.0.3440.106)","http://www.fyxt701.com/index.php/admin/pub/loginframe.html","admin","Pub","loginframe","GET","a:0:{}","1536564437");
INSERT INTO fy_web_log_all VALUES("704","0","220.197.182.69","中国 贵州 贵阳 ","Windows NT","Firefox(62.0)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1537167773");
INSERT INTO fy_web_log_all VALUES("705","0","220.197.182.69","中国 贵州 贵阳 ","Windows NT","Firefox(62.0)","http://www.fyxt701.com/index.php/admin/pub/login.html","admin","Pub","login","GET","a:0:{}","1537167773");
INSERT INTO fy_web_log_all VALUES("706","0","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1538028986");
INSERT INTO fy_web_log_all VALUES("707","0","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/pub/login.html","admin","Pub","login","GET","a:0:{}","1538028986");
INSERT INTO fy_web_log_all VALUES("708","0","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/pub/checklogin.html","admin","Pub","checklogin","POST","a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"73ef\";}","1538028991");
INSERT INTO fy_web_log_all VALUES("709","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/index/index.html","admin","Index","index","GET","a:0:{}","1538028991");
INSERT INTO fy_web_log_all VALUES("710","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/index/welcome.html","admin","Index","welcome","GET","a:0:{}","1538028991");
INSERT INTO fy_web_log_all VALUES("711","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1538028995");
INSERT INTO fy_web_log_all VALUES("712","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/edit/id/2.html","admin","Goods","edit","GET","a:1:{s:2:\"id\";s:1:\"2\";}","1538029028");
INSERT INTO fy_web_log_all VALUES("713","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/getskudata.html","admin","Goods","getskudata","POST","a:1:{s:2:\"id\";s:1:\"2\";}","1538029029");
INSERT INTO fy_web_log_all VALUES("714","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/getskudata.html","admin","Goods","getskudata","POST","a:1:{s:2:\"id\";s:1:\"2\";}","1538029062");
INSERT INTO fy_web_log_all VALUES("715","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/getskudata.html","admin","Goods","getskudata","POST","a:1:{s:2:\"id\";s:1:\"2\";}","1538029100");
INSERT INTO fy_web_log_all VALUES("716","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/getskudata.html","admin","Goods","getskudata","POST","a:1:{s:2:\"id\";s:1:\"2\";}","1538029106");
INSERT INTO fy_web_log_all VALUES("717","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/getskudata.html","admin","Goods","getskudata","POST","a:1:{s:2:\"id\";s:1:\"2\";}","1538029114");
INSERT INTO fy_web_log_all VALUES("718","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/getskudata.html","admin","Goods","getskudata","POST","a:1:{s:2:\"id\";s:1:\"2\";}","1538029118");
INSERT INTO fy_web_log_all VALUES("719","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/getskudata.html","admin","Goods","getskudata","POST","a:1:{s:2:\"id\";s:1:\"2\";}","1538029122");
INSERT INTO fy_web_log_all VALUES("720","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/edit/id/2.html","admin","Goods","edit","POST","a:36:{s:2:\"id\";s:1:\"2\";s:7:\"user_id\";s:2:\"20\";s:4:\"name\";s:62:\"澳大利亚脐橙10个约140g/个 进口甜橙子新鲜水果\";s:8:\"subtitle\";s:0:\"\";s:7:\"yieldly\";s:0:\"\";s:10:\"main_image\";s:58:\"/pic/uploads/20180828/e9e0eb39e98c6a3f34f255d1560ea838.png\";s:14:\"goods_class_id\";s:1:\"3\";s:14:\"goods_brand_id\";s:2:\"21\";s:9:\"show_area\";s:1:\"4\";s:10:\"start_date\";s:0:\"\";s:8:\"end_date\";s:0:\"\";s:10:\"store_type\";s:1:\"1\";s:9:\"free_type\";s:1:\"1\";s:7:\"postage\";s:4:\"0.00\";s:12:\"return_score\";s:2:\"10\";s:3:\"pic\";a:4:{i:0;s:58:\"/pic/uploads/20180828/71b30d3af10a39e896908eacfb343a70.png\";i:1;s:58:\"/pic/uploads/20180828/c045d562f15a442f6a1f43cc5ed8ef1d.png\";i:2;s:58:\"/pic/uploads/20180828/506f6fbc6072a1aac31e855b119870c2.png\";i:3;s:58:\"/pic/uploads/20180828/72ec56580efd36a9c26379cfb4596237.png\";}s:7:\"orderby\";s:2:\"10\";s:12:\"goods_weight\";s:8:\"1400.000\";s:7:\"is_real\";s:1:\"1\";s:15:\"is_return_goods\";s:1:\"0\";s:10:\"is_comment\";s:1:\"1\";s:14:\"service_mobile\";s:8:\"86701701\";s:7:\"service\";a:1:{i:0;s:12:\"坏单包退\";}s:10:\"after_sale\";s:116:\"&lt;p&gt;坏单包退：确认收货24小时内，食物发生腐败变质，商家在24小时内处理。&lt;/p&gt;\";s:11:\"routine_key\";a:6:{i:0;s:6:\"品牌\";i:1;s:9:\"净含量\";i:2;s:12:\"包装方式\";i:3;s:9:\"保质期\";i:4;s:12:\"套餐份量\";i:5;s:12:\"配送频次\";}s:11:\"routine_val\";a:6:{i:0;s:12:\"易果生鲜\";i:1;s:5:\"1400g\";i:2;s:6:\"包装\";i:3;s:4:\"7天\";i:4;s:7:\"1人份\";i:5;s:8:\"1周2次\";}s:15:\"settlement_type\";s:1:\"1\";s:11:\"basic_price\";s:4:\"0.01\";s:5:\"score\";s:1:\"1\";s:14:\"original_price\";s:5:\"50.00\";s:7:\"buy_num\";s:5:\"10661\";s:9:\"shop_code\";s:0:\"\";s:8:\"bar_code\";s:0:\"\";s:6:\"detail\";s:200:\"&lt;p&gt;&lt;img src=&quot;http://www.fyxt701.com/ueditor/php/upload/image/20180828/1535419655175110.jpg&quot; title=&quot;1535419655175110.jpg&quot;/&gt;&lt;img src=&quot;/ueditor/php/upload/image/20\";s:11:\"skuZuheData\";s:212:\"[{&quot;id&quot;:&quot;&quot;,&quot;SkuId&quot;:&quot;1535420855229_净含量:1535420870046_1400g,1538028879900_甜度:1538028886495_酸&quot;,&quot;pointPrice&quot;:&quot;&quot;,&quot;price&quot;:40,&quot;num&qu\";s:15:\"propty_name_val\";s:226:\"[[&quot;1535420855229_净含量:1535420870046_1400g&quot;,&quot;1535420855229_净含量:1538028834575_100g&quot;],[&quot;1538028879900_甜度:1538028886495_酸&quot;,&quot;1538028879900_甜度:1538028890560_一般&quot;,&quot;\";}","1538029205");
INSERT INTO fy_web_log_all VALUES("721","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1538029210");
INSERT INTO fy_web_log_all VALUES("722","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/edit/type/show/id/2.html","admin","Goods","edit","GET","a:2:{s:4:\"type\";s:4:\"show\";s:2:\"id\";s:1:\"2\";}","1538029213");
INSERT INTO fy_web_log_all VALUES("723","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/getskudata.html","admin","Goods","getskudata","POST","a:1:{s:2:\"id\";s:1:\"2\";}","1538029213");
INSERT INTO fy_web_log_all VALUES("724","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/editstatus.html","admin","Goods","editstatus","POST","a:2:{s:2:\"id\";s:1:\"2\";s:4:\"flag\";s:4:\"down\";}","1538029250");
INSERT INTO fy_web_log_all VALUES("725","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1538029251");
INSERT INTO fy_web_log_all VALUES("726","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/editstatus.html","admin","Goods","editstatus","POST","a:2:{s:2:\"id\";s:1:\"2\";s:4:\"flag\";s:2:\"up\";}","1538029253");
INSERT INTO fy_web_log_all VALUES("727","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/index.html","admin","Goods","index","GET","a:0:{}","1538029254");
INSERT INTO fy_web_log_all VALUES("728","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/edit/id/2.html","admin","Goods","edit","GET","a:1:{s:2:\"id\";s:1:\"2\";}","1538029256");
INSERT INTO fy_web_log_all VALUES("729","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/getskudata.html","admin","Goods","getskudata","POST","a:1:{s:2:\"id\";s:1:\"2\";}","1538029256");
INSERT INTO fy_web_log_all VALUES("730","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/edit/type/show/id/2.html","admin","Goods","edit","GET","a:2:{s:4:\"type\";s:4:\"show\";s:2:\"id\";s:1:\"2\";}","1538029366");
INSERT INTO fy_web_log_all VALUES("731","1","220.197.182.87","中国 贵州 贵阳 ","Windows 7","Chrome(69.0.3497.100)","http://www.fyxt701.com/index.php/admin/goods/getskudata.html","admin","Goods","getskudata","POST","a:1:{s:2:\"id\";s:1:\"2\";}","1538029366");



DROP TABLE fy_withdrawals_log;

CREATE TABLE `fy_withdrawals_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '提现记录表',
  `user_id` int(10) NOT NULL COMMENT '提现用户',
  `money` decimal(10,2) NOT NULL COMMENT '提下money',
  `rate` decimal(10,2) DEFAULT NULL COMMENT '费率',
  `addtime` int(10) NOT NULL COMMENT '提现时间',
  `status` tinyint(1) DEFAULT NULL COMMENT '1到账成功，0到账失败，2待审核。3审核通过。4.审核失败',
  `updatetime` int(10) DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(10) DEFAULT NULL COMMENT '备注',
  `withrawals_id` int(10) DEFAULT NULL COMMENT '提现费率哪一种',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE fy_wx_pay_refund_log;

CREATE TABLE `fy_wx_pay_refund_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '微信交易记录表',
  `openid` varchar(255) NOT NULL COMMENT '用户openid',
  `username` varchar(30) DEFAULT NULL COMMENT '用户名',
  `create_time` int(11) NOT NULL COMMENT '交易时间',
  `money` decimal(10,2) NOT NULL COMMENT '交易金额',
  `type` tinyint(1) DEFAULT NULL COMMENT '交易类型1购买商品2退款3.其他',
  `status` tinyint(1) DEFAULT '1',
  `isdelete` tinyint(1) DEFAULT '0',
  `order_id` varchar(255) DEFAULT NULL COMMENT '订单号',
  `desc` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO fy_wx_pay_refund_log VALUES("1","omQYXwM8TEkiBZR7Ldm891OOWbNQ","Baymax","1535706068","0.01","1","1","0","1441217402201808311656478916","","");
INSERT INTO fy_wx_pay_refund_log VALUES("2","omQYXwM8TEkiBZR7Ldm891OOWbNQ","Baymax","1535706882","-0.01","2","1","0","1441217402201808311656478916","","");
INSERT INTO fy_wx_pay_refund_log VALUES("3","omQYXwAasNeXdGSMymd91487Ds1g","DANIEL","1535765494","0.01","1","1","0","144121740220180901093108","","");
INSERT INTO fy_wx_pay_refund_log VALUES("4","omQYXwAasNeXdGSMymd91487Ds1g","DANIEL","1535766341","0.01","1","1","0","144121740220180901094531","","");
INSERT INTO fy_wx_pay_refund_log VALUES("5","omQYXwAasNeXdGSMymd91487Ds1g","DANIEL","1536298712","0.01","1","1","0","144121740220180907133822","","");



