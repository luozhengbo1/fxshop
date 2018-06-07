/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : tpadmin

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-06-07 15:12:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `fy_activity`
-- ----------------------------
DROP TABLE IF EXISTS `fy_activity`;
CREATE TABLE `fy_activity` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '活动表',
  `main_pic` varchar(255) DEFAULT NULL COMMENT '活动主图',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `name` varchar(32) DEFAULT NULL COMMENT '活动名称',
  `start_date` int(11) DEFAULT NULL COMMENT '活动开始时间 ',
  `end_date` int(11) DEFAULT NULL COMMENT '活动结束时间',
  `url` varchar(255) DEFAULT NULL COMMENT '活动链接',
  `detail` text COMMENT '活动详情描述',
  `lottery_id` int(11) DEFAULT NULL COMMENT '关联奖券id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_activity
-- ----------------------------

-- ----------------------------
-- Table structure for `fy_admin_access`
-- ----------------------------
DROP TABLE IF EXISTS `fy_admin_access`;
CREATE TABLE `fy_admin_access` (
  `role_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `node_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0',
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of fy_admin_access
-- ----------------------------
INSERT INTO `fy_admin_access` VALUES ('3', '1', '1', '0');
INSERT INTO `fy_admin_access` VALUES ('3', '2', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('3', '51', '3', '2');
INSERT INTO `fy_admin_access` VALUES ('3', '52', '3', '2');
INSERT INTO `fy_admin_access` VALUES ('3', '53', '3', '2');
INSERT INTO `fy_admin_access` VALUES ('3', '54', '3', '2');
INSERT INTO `fy_admin_access` VALUES ('3', '55', '3', '2');
INSERT INTO `fy_admin_access` VALUES ('3', '64', '3', '2');
INSERT INTO `fy_admin_access` VALUES ('3', '65', '3', '2');
INSERT INTO `fy_admin_access` VALUES ('3', '66', '3', '2');
INSERT INTO `fy_admin_access` VALUES ('3', '67', '3', '2');
INSERT INTO `fy_admin_access` VALUES ('3', '68', '3', '2');
INSERT INTO `fy_admin_access` VALUES ('3', '69', '3', '2');
INSERT INTO `fy_admin_access` VALUES ('3', '70', '3', '2');

-- ----------------------------
-- Table structure for `fy_admin_group`
-- ----------------------------
DROP TABLE IF EXISTS `fy_admin_group`;
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of fy_admin_group
-- ----------------------------
INSERT INTO `fy_admin_group` VALUES ('1', '系统管理', '&#xe61d;', '2', '1', '', '0', '1450752856', '1481180175');
INSERT INTO `fy_admin_group` VALUES ('2', '工具', '&#xe616;', '3', '1', '', '0', '1476016712', '1481180175');
INSERT INTO `fy_admin_group` VALUES ('3', 'test', '', '50', '1', 'test', '0', '1527663015', '1527663015');

-- ----------------------------
-- Table structure for `fy_admin_node`
-- ----------------------------
DROP TABLE IF EXISTS `fy_admin_node`;
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
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of fy_admin_node
-- ----------------------------
INSERT INTO `fy_admin_node` VALUES ('1', '0', '1', 'Admin', '后台管理', '后台管理，不可更改', '1', '1', '1', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('2', '1', '1', 'AdminGroup', '分组管理', ' ', '2', '1', '1', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('3', '1', '1', 'AdminNode', '节点管理', ' ', '2', '1', '2', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('4', '1', '1', 'AdminRole', '角色管理', ' ', '2', '1', '3', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('5', '1', '1', 'AdminUser', '用户管理', '', '2', '1', '4', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('6', '1', '0', 'Index', '首页', '', '2', '1', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('7', '6', '0', 'welcome', '欢迎页', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('8', '6', '0', 'index', '未定义', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('9', '1', '2', 'Generate', '代码自动生成', '', '2', '1', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('10', '1', '2', 'Demo/excel', 'Excel一键导出', '', '2', '0', '2', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('11', '1', '2', 'Demo/download', '下载', '', '2', '0', '3', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('12', '1', '2', 'Demo/downloadImage', '远程图片下载', '', '2', '0', '4', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('13', '1', '2', 'Demo/mail', '邮件发送', '', '2', '0', '5', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('14', '1', '2', 'Demo/qiniu', '七牛上传', '', '2', '0', '6', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('15', '1', '2', 'Demo/hashids', 'ID加密', '', '2', '0', '7', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('16', '1', '2', 'Demo/layer', '丰富弹层', '', '2', '0', '8', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('17', '1', '2', 'Demo/tableFixed', '表格溢出', '', '2', '0', '9', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('18', '1', '2', 'Demo/ueditor', '百度编辑器', '', '2', '0', '10', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('19', '1', '2', 'Demo/imageUpload', '图片上传', '', '2', '0', '11', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('20', '1', '2', 'Demo/qrcode', '二维码生成', '', '2', '0', '12', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('21', '1', '1', 'NodeMap', '节点图', '', '2', '1', '5', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('22', '1', '1', 'WebLog', '操作日志', '', '2', '1', '6', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('23', '1', '1', 'LoginLog', '登录日志', '', '2', '1', '7', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('59', '1', '2', 'one.two.three.Four/index', '多级节点', '', '2', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('24', '23', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('25', '22', '0', 'index', '列表', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('26', '22', '0', 'detail', '详情', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('27', '21', '0', 'load', '自动导入', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('28', '21', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('29', '5', '0', 'add', '添加', '', '3', '0', '51', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('30', '21', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('31', '21', '0', 'deleteForever', '永久删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('32', '9', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('33', '9', '0', 'generate', '生成方法', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('34', '5', '0', 'password', '修改密码', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('35', '5', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('36', '5', '0', 'add', '添加', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('37', '5', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('38', '4', '0', 'user', '用户列表', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('39', '4', '0', 'access', '授权', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('40', '4', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('41', '4', '0', 'add', '添加', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('42', '4', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('43', '4', '0', 'forbid', '默认禁用操作', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('44', '4', '0', 'resume', '默认恢复操作', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('45', '3', '0', 'load', '节点快速导入测试', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('46', '3', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('47', '3', '0', 'add', '添加', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('48', '3', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('49', '3', '0', 'forbid', '默认禁用操作', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('50', '3', '0', 'resume', '默认恢复操作', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('51', '2', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('52', '2', '0', 'add', '添加', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('53', '2', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('54', '2', '0', 'forbid', '默认禁用操作', '', '3', '0', '51', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('55', '2', '0', 'resume', '默认恢复操作', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('56', '1', '2', 'one', '一级菜单', '', '2', '1', '13', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('60', '56', '2', 'two', '二级', '', '3', '1', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('61', '60', '2', 'three', '三级菜单', '', '4', '1', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('62', '61', '2', 'Four', '四级菜单', '', '5', '1', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('63', '51', '1', 'index/index', '首页', '', '4', '1', '50', '1', '1');
INSERT INTO `fy_admin_node` VALUES ('64', '2', '0', 'delete', '删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('65', '2', '0', 'recycleBin', '回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('66', '2', '0', 'delete', '默认删除操作', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('67', '2', '0', 'recycle', '从回收站恢复', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('68', '2', '0', 'deleteForever', '永久删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('69', '2', '0', 'clear', '清空回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('70', '2', '0', 'saveOrder', '保存排序', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('71', '27', '1', 'Sildeshow', '轮播图', '', '4', '1', '50', '1', '1');
INSERT INTO `fy_admin_node` VALUES ('72', '0', '1', 'Sildeshow', '轮播图', '', '1', '1', '50', '1', '1');
INSERT INTO `fy_admin_node` VALUES ('73', '0', '1', 'sildeshow', '轮播图', '', '1', '1', '50', '1', '1');
INSERT INTO `fy_admin_node` VALUES ('74', '73', '0', 'add', '添加', '', '2', '0', '50', '1', '1');
INSERT INTO `fy_admin_node` VALUES ('75', '1', '1', 'sildeshow', '轮播图', '', '2', '1', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('76', '75', '0', 'add', '添加', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('77', '75', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('78', '75', '0', 'index', '列表', '', '3', '0', '50', '1', '0');

-- ----------------------------
-- Table structure for `fy_admin_node_load`
-- ----------------------------
DROP TABLE IF EXISTS `fy_admin_node_load`;
CREATE TABLE `fy_admin_node_load` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `status` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='节点快速导入';

-- ----------------------------
-- Records of fy_admin_node_load
-- ----------------------------
INSERT INTO `fy_admin_node_load` VALUES ('4', '编辑', 'edit', '1');
INSERT INTO `fy_admin_node_load` VALUES ('5', '添加', 'add', '1');
INSERT INTO `fy_admin_node_load` VALUES ('6', '首页', 'index', '1');
INSERT INTO `fy_admin_node_load` VALUES ('7', '删除', 'delete', '1');

-- ----------------------------
-- Table structure for `fy_admin_role`
-- ----------------------------
DROP TABLE IF EXISTS `fy_admin_role`;
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of fy_admin_role
-- ----------------------------
INSERT INTO `fy_admin_role` VALUES ('1', '0', '领导组', ' ', '1', '0', '1208784792', '1254325558');
INSERT INTO `fy_admin_role` VALUES ('2', '0', '网编组', ' ', '1', '0', '1215496283', '1454049929');
INSERT INTO `fy_admin_role` VALUES ('3', '0', 'test', 'testsartsrt', '1', '0', '1527663705', '1527663705');

-- ----------------------------
-- Table structure for `fy_admin_role_user`
-- ----------------------------
DROP TABLE IF EXISTS `fy_admin_role_user`;
CREATE TABLE `fy_admin_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of fy_admin_role_user
-- ----------------------------
INSERT INTO `fy_admin_role_user` VALUES ('3', '3');

-- ----------------------------
-- Table structure for `fy_admin_user`
-- ----------------------------
DROP TABLE IF EXISTS `fy_admin_user`;
CREATE TABLE `fy_admin_user` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `account` char(32) NOT NULL DEFAULT '',
  `realname` varchar(255) NOT NULL DEFAULT '',
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
  PRIMARY KEY (`id`),
  KEY `accountpassword` (`account`,`password`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of fy_admin_user
-- ----------------------------
INSERT INTO `fy_admin_user` VALUES ('1', 'admin', '超级管理员', 'e10adc3949ba59abbe56e057f20f883e', '1528343865', '127.0.0.1', '390', 'tianpian0805@gmail.com', '13121126169', '我是超级管理员', '1', '0', '1222907803', '1451033528');
INSERT INTO `fy_admin_user` VALUES ('2', 'demo', '测试', 'e10adc3949ba59abbe56e057f20f883e', '1481206367', '127.0.0.1', '5', '', '', '', '1', '0', '1476777133', '1477399793');
INSERT INTO `fy_admin_user` VALUES ('3', 'test1', '罗正波', 'e10adc3949ba59abbe56e057f20f883e', '1527664040', '127.0.0.1', '1', '1060049850@qq.com', '18285111561', 'test', '1', '0', '1527663753', '1527663753');

-- ----------------------------
-- Table structure for `fy_customer`
-- ----------------------------
DROP TABLE IF EXISTS `fy_customer`;
CREATE TABLE `fy_customer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户表',
  `username` varchar(255) DEFAULT NULL,
  `openid` varchar(50) DEFAULT NULL COMMENT 'openid',
  `sex` tinyint(1) DEFAULT NULL COMMENT '1男2女3未知',
  `nickname` varchar(50) DEFAULT NULL COMMENT '微信昵称',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `mobile` varchar(12) DEFAULT NULL COMMENT '手机号',
  `headimgurl` varchar(512) DEFAULT NULL COMMENT '微信头像',
  `login_ip` varchar(255) DEFAULT NULL COMMENT 'ip地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_customer
-- ----------------------------

-- ----------------------------
-- Table structure for `fy_customer_activity_log`
-- ----------------------------
DROP TABLE IF EXISTS `fy_customer_activity_log`;
CREATE TABLE `fy_customer_activity_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'activitylog表',
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `activity_detail` text,
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `addtime` int(11) DEFAULT NULL COMMENT '参与时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_customer_activity_log
-- ----------------------------

-- ----------------------------
-- Table structure for `fy_customer_address`
-- ----------------------------
DROP TABLE IF EXISTS `fy_customer_address`;
CREATE TABLE `fy_customer_address` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户地址表',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `mobile` varchar(12) NOT NULL COMMENT '用户电话',
  `address` varchar(512) NOT NULL COMMENT '地址',
  `street` varchar(512) DEFAULT NULL COMMENT '街道',
  `name` varchar(32) NOT NULL COMMENT '收货人',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_customer_address
-- ----------------------------

-- ----------------------------
-- Table structure for `fy_customer_collect`
-- ----------------------------
DROP TABLE IF EXISTS `fy_customer_collect`;
CREATE TABLE `fy_customer_collect` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '收藏表',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  `addtime` int(11) NOT NULL COMMENT '收藏时间',
  `status` tinyint(1) DEFAULT NULL COMMENT '1状态备用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_customer_collect
-- ----------------------------

-- ----------------------------
-- Table structure for `fy_customer_grade`
-- ----------------------------
DROP TABLE IF EXISTS `fy_customer_grade`;
CREATE TABLE `fy_customer_grade` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '会员等级表',
  `name` varchar(20) NOT NULL COMMENT '等级名称',
  `score_end` decimal(10,2) DEFAULT NULL COMMENT '积分结束值',
  `score_start` decimal(10,2) DEFAULT NULL COMMENT '积分开始值',
  `addtime` int(11) DEFAULT NULL COMMENT '添加时间',
  `updatetime` int(11) DEFAULT NULL COMMENT '修改时间',
  `all` varchar(255) DEFAULT NULL COMMENT '权益id列表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_customer_grade
-- ----------------------------

-- ----------------------------
-- Table structure for `fy_customer_grade_desc`
-- ----------------------------
DROP TABLE IF EXISTS `fy_customer_grade_desc`;
CREATE TABLE `fy_customer_grade_desc` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '会员等级规则说明',
  `detail` text NOT NULL,
  `addtime` int(10) DEFAULT NULL COMMENT '添加时间',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态',
  `updatetime` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_customer_grade_desc
-- ----------------------------

-- ----------------------------
-- Table structure for `fy_customer_sign`
-- ----------------------------
DROP TABLE IF EXISTS `fy_customer_sign`;
CREATE TABLE `fy_customer_sign` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '会员签到表',
  `addtime` int(11) NOT NULL COMMENT '签到时间',
  `uid` int(11) NOT NULL COMMENT '签到用户',
  `score` decimal(10,2) DEFAULT NULL COMMENT '签到积分',
  `reward_score` decimal(10,2) DEFAULT NULL COMMENT '奖励积分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_customer_sign
-- ----------------------------

-- ----------------------------
-- Table structure for `fy_customer_sign_rule`
-- ----------------------------
DROP TABLE IF EXISTS `fy_customer_sign_rule`;
CREATE TABLE `fy_customer_sign_rule` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '会员签到规则表',
  `continuous_days_one` int(255) DEFAULT NULL,
  `continuous_days_two` int(11) NOT NULL COMMENT '连续签到天数',
  `continuous_days_three` int(11) NOT NULL,
  `get_score_two` decimal(10,2) NOT NULL,
  `get_score_three` decimal(10,2) NOT NULL,
  `get_score_one` decimal(10,2) NOT NULL COMMENT '获得积分',
  `addtime` int(11) NOT NULL COMMENT '时间',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  `desc` varchar(255) DEFAULT NULL COMMENT '详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_customer_sign_rule
-- ----------------------------

-- ----------------------------
-- Table structure for `fy_customer_task`
-- ----------------------------
DROP TABLE IF EXISTS `fy_customer_task`;
CREATE TABLE `fy_customer_task` (
  `id` int(11) NOT NULL DEFAULT '0',
  `main_pic` varchar(255) DEFAULT NULL COMMENT '主图',
  `name` varchar(255) DEFAULT NULL COMMENT '任务名称',
  `url` varchar(255) DEFAULT NULL COMMENT '链接',
  `start_date` int(10) DEFAULT NULL COMMENT '任务开始时间',
  `end_date` int(10) DEFAULT NULL COMMENT '结束时间',
  `detail` text COMMENT '内容详情',
  `desc` text COMMENT '活动说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_customer_task
-- ----------------------------

-- ----------------------------
-- Table structure for `fy_file`
-- ----------------------------
DROP TABLE IF EXISTS `fy_file`;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_file
-- ----------------------------
INSERT INTO `fy_file` VALUES ('1', '3', '/tpAdmin-master/public/index.php/tmp/uploads/20180530\\ba254ad8b047b2b102311055f7a4985b.jpg', '664431.jpg', '', 'image/jpeg', '797595', '1527661884');
INSERT INTO `fy_file` VALUES ('2', '3', '/tpAdmin-master/public/index.php/tmp/uploads/20180605\\14c77a881617d35c77a948528d7119fc.jpg', '9345d688d43f8794d15724c6d01b0ef41ad53aa9.jpg', '', 'image/jpeg', '106196', '1528162870');

-- ----------------------------
-- Table structure for `fy_goods`
-- ----------------------------
DROP TABLE IF EXISTS `fy_goods`;
CREATE TABLE `fy_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '商品名称',
  `pic` varchar(255) NOT NULL COMMENT '商品图片以json格式存储轮播图',
  `original_price` decimal(10,2) unsigned NOT NULL COMMENT '原价',
  `settlement_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '结算类型1-货币2-积分3-积分+货币',
  `goods_class_id` int(10) NOT NULL COMMENT '商品分类id',
  `goods_brand_id` int(10) DEFAULT NULL COMMENT '品牌id',
  `show_area` tinyint(4) DEFAULT NULL COMMENT '展示区域1-限时抢购2-积分商城3-日常售卖4-热销产品',
  `detail` text NOT NULL COMMENT '商品详情',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1启用0下架2上市',
  `main_image` varchar(255) NOT NULL COMMENT '商品主图',
  `subtitle` varchar(50) DEFAULT NULL COMMENT '商品副标题',
  `addtime` int(10) DEFAULT NULL COMMENT '添加时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '修改时间',
  `user_id` int(10) DEFAULT NULL COMMENT '表示该商品属于那个商户',
  `orderby` int(10) DEFAULT NULL COMMENT '商品排序值',
  `click_count` int(10) DEFAULT NULL COMMENT '商品点击数',
  `goods_weight` decimal(10,3) DEFAULT NULL COMMENT '商品重量',
  `start_date` int(11) DEFAULT NULL COMMENT '开售时间',
  `end_date` int(11) DEFAULT NULL COMMENT '结束时间',
  `is_real` tinyint(1) DEFAULT NULL COMMENT '是否是实物1 是 0 否',
  `return_score` decimal(10,2) DEFAULT NULL COMMENT '返现积分',
  `score_price` varchar(50) DEFAULT NULL COMMENT '积分,价格',
  `socre` decimal(10,2) DEFAULT NULL COMMENT '积分换价',
  `price` decimal(10,2) DEFAULT NULL COMMENT '钱价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `fy_goods_brand`
-- ----------------------------
DROP TABLE IF EXISTS `fy_goods_brand`;
CREATE TABLE `fy_goods_brand` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品品牌表',
  `brand_name` varchar(50) NOT NULL COMMENT '品牌名称',
  `pic` varchar(255) DEFAULT NULL COMMENT '品牌图片',
  `addtime` int(10) DEFAULT NULL COMMENT '时间',
  `status` tinyint(1) DEFAULT NULL COMMENT '启用10禁用',
  `brand_desc` text COMMENT '品牌描述',
  `site_url` varchar(255) DEFAULT NULL COMMENT '品牌网址',
  `orderby` int(10) DEFAULT NULL COMMENT '品牌在前台页面的显示顺序，',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_goods_brand
-- ----------------------------

-- ----------------------------
-- Table structure for `fy_goods_class`
-- ----------------------------
DROP TABLE IF EXISTS `fy_goods_class`;
CREATE TABLE `fy_goods_class` (
  `id` int(10) NOT NULL DEFAULT '0' COMMENT '父id',
  `pid` int(10) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL COMMENT '分类名称',
  `path` varchar(255) DEFAULT '0,' COMMENT '路径',
  `pic` varchar(255) DEFAULT NULL COMMENT '分类图片',
  `user_id` int(10) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_goods_class
-- ----------------------------

-- ----------------------------
-- Table structure for `fy_goods_code`
-- ----------------------------
DROP TABLE IF EXISTS `fy_goods_code`;
CREATE TABLE `fy_goods_code` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品属性表',
  `goods_id` int(10) NOT NULL COMMENT '商品id',
  `goods_code` varchar(50) NOT NULL COMMENT '商品编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_goods_code
-- ----------------------------

-- ----------------------------
-- Table structure for `fy_goods_comment_reply`
-- ----------------------------
DROP TABLE IF EXISTS `fy_goods_comment_reply`;
CREATE TABLE `fy_goods_comment_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论回复表',
  `user_id` int(10) NOT NULL COMMENT '回复人id',
  `goods_comment_id` int(10) NOT NULL COMMENT '回复的那条留言',
  `addtime` int(10) DEFAULT NULL COMMENT '回复时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_goods_comment_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `fy_goods_proprety`
-- ----------------------------
DROP TABLE IF EXISTS `fy_goods_proprety`;
CREATE TABLE `fy_goods_proprety` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品属性表',
  `name` varchar(32) NOT NULL COMMENT '商品属性名',
  `val` varchar(50) NOT NULL COMMENT '商品属性值',
  `goods_code` varchar(50) NOT NULL COMMENT '商品编号唯一用户关联',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_goods_proprety
-- ----------------------------

-- ----------------------------
-- Table structure for `fy_login_log`
-- ----------------------------
DROP TABLE IF EXISTS `fy_login_log`;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_login_log
-- ----------------------------
INSERT INTO `fy_login_log` VALUES ('1', '1', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-05-30 14:27:07');
INSERT INTO `fy_login_log` VALUES ('2', '3', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-05-30 15:07:20');
INSERT INTO `fy_login_log` VALUES ('3', '1', '127.0.0.1', '本机地址 本机地址  ', 'Firefox(60.0)', 'Windows 7', '2018-05-30 15:08:58');
INSERT INTO `fy_login_log` VALUES ('4', '1', '127.0.0.1', '本机地址 本机地址  ', 'Firefox(60.0)', 'Windows 7', '2018-06-04 15:07:39');
INSERT INTO `fy_login_log` VALUES ('5', '1', '127.0.0.1', '本机地址 本机地址  ', 'Firefox(60.0)', 'Windows 7', '2018-06-05 09:00:26');
INSERT INTO `fy_login_log` VALUES ('6', '1', '127.0.0.1', '本机地址 本机地址  ', 'Firefox(60.0)', 'Windows 7', '2018-06-07 11:57:46');

-- ----------------------------
-- Table structure for `fy_lottery`
-- ----------------------------
DROP TABLE IF EXISTS `fy_lottery`;
CREATE TABLE `fy_lottery` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '奖券表',
  `name` varchar(50) NOT NULL COMMENT '奖券名称',
  `main_pic` varchar(255) NOT NULL COMMENT '活动主题图',
  `start_date` int(11) NOT NULL COMMENT '开始时间',
  `end_date` int(11) NOT NULL COMMENT '结束时间',
  `type` tinyint(1) DEFAULT NULL COMMENT '1抵扣券2优惠券3代金券4积分抵现金',
  `number` int(11) NOT NULL COMMENT '奖券数量',
  `goods_id` int(11) DEFAULT NULL COMMENT '关联商品',
  `url` varchar(255) DEFAULT NULL COMMENT '链接',
  `desc` text COMMENT '奖券说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_lottery
-- ----------------------------

-- ----------------------------
-- Table structure for `fy_lottery_log`
-- ----------------------------
DROP TABLE IF EXISTS `fy_lottery_log`;
CREATE TABLE `fy_lottery_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '奖券参与明细表',
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `addtime` int(11) DEFAULT NULL COMMENT '参与时间',
  `lottery_id` int(11) DEFAULT NULL COMMENT '奖券id',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态1使用，2未使用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_lottery_log
-- ----------------------------

-- ----------------------------
-- Table structure for `fy_modular`
-- ----------------------------
DROP TABLE IF EXISTS `fy_modular`;
CREATE TABLE `fy_modular` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '首页模块功能表',
  `pic` varchar(255) NOT NULL COMMENT '图片',
  `title` varchar(20) NOT NULL COMMENT '名称',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  `status` tinyint(1) DEFAULT '1' COMMENT '1启用0禁用',
  `orderby` int(11) DEFAULT '1' COMMENT '排序值',
  `updatetime` int(11) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_modular
-- ----------------------------

-- ----------------------------
-- Table structure for `fy_node_map`
-- ----------------------------
DROP TABLE IF EXISTS `fy_node_map`;
CREATE TABLE `fy_node_map` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(255) NOT NULL DEFAULT '' COMMENT '模块',
  `controller` varchar(255) NOT NULL DEFAULT '' COMMENT '控制器',
  `action` varchar(255) NOT NULL DEFAULT '' COMMENT '方法',
  `method` char(6) NOT NULL DEFAULT '' COMMENT '请求方式',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT '节点图描述',
  PRIMARY KEY (`id`),
  KEY `map` (`method`,`module`,`controller`,`action`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='节点图';

-- ----------------------------
-- Records of fy_node_map
-- ----------------------------
INSERT INTO `fy_node_map` VALUES ('1', 'admin', 'Sildeshow', 'index', 'ALL', '轮播图');

-- ----------------------------
-- Table structure for `fy_notice`
-- ----------------------------
DROP TABLE IF EXISTS `fy_notice`;
CREATE TABLE `fy_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '公告表',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `detail` varchar(255) NOT NULL COMMENT '详情',
  `addtime` int(10) DEFAULT NULL COMMENT '添加时间',
  `status` tinyint(1) DEFAULT '1' COMMENT '1启用0禁用',
  `orderby` int(11) DEFAULT '1' COMMENT '排序值',
  `updatetime` int(11) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_notice
-- ----------------------------

-- ----------------------------
-- Table structure for `fy_one_two_three_four`
-- ----------------------------
DROP TABLE IF EXISTS `fy_one_two_three_four`;
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

-- ----------------------------
-- Records of fy_one_two_three_four
-- ----------------------------
INSERT INTO `fy_one_two_three_four` VALUES ('1', 'yuan1994', 'tpadmin', '2', '1', null, '2222', 'https://github.com/yuan1994/tpadmin', '2016-12-07', '13012345678', 'tianpian0805@gmail.com', '50', '1', '0', '1481947278', '1481947353');

-- ----------------------------
-- Table structure for `fy_order`
-- ----------------------------
DROP TABLE IF EXISTS `fy_order`;
CREATE TABLE `fy_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单表',
  `order_id` varchar(255) NOT NULL COMMENT '订单编号',
  `order_status` tinyint(1) NOT NULL COMMENT '订单状态0未确认,1确认,2已取消,3无效,4退货 ',
  `buy_list` text NOT NULL COMMENT '商品列表',
  `total_price` decimal(10,2) NOT NULL COMMENT '订单总价',
  `addtime` int(10) NOT NULL COMMENT '时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `customer_id` int(10) NOT NULL COMMENT '用户id',
  `address_id` int(10) NOT NULL COMMENT '地址id',
  `paytime` int(10) DEFAULT NULL COMMENT '付款时间',
  `js_api_parameters` varchar(255) DEFAULT NULL COMMENT '微信支付所需参数',
  `prepay_id` varchar(50) DEFAULT NULL COMMENT '统一下单接口返回的预付id',
  `pay_status` tinyint(1) DEFAULT NULL COMMENT '支付状态;0未付款;1付款中;2已付款 ',
  `shiooing_status` tinyint(1) DEFAULT NULL COMMENT '商品配送情况;0未发货,1已发货,2已收货,4退货 ',
  `inv_payee` varchar(255) DEFAULT NULL COMMENT '发票抬头,用户页面填写 ',
  `inv_content` varchar(255) DEFAULT NULL COMMENT '发票内容,用户页面选择,取值shop_config的code字段的值 为invoice_content的value ',
  `shipping_fee` decimal(10,2) DEFAULT NULL COMMENT '配送费用',
  `is_free` tinyint(1) DEFAULT NULL COMMENT '1包邮2不包邮，3上门自取',
  `logistics_name` varchar(50) DEFAULT NULL COMMENT '物流名称',
  `logistics_number` varchar(50) DEFAULT NULL COMMENT '物流编号',
  `refuse_reson` varchar(255) DEFAULT NULL COMMENT '退款理由',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_order
-- ----------------------------

-- ----------------------------
-- Table structure for `fy_silde_show`
-- ----------------------------
DROP TABLE IF EXISTS `fy_silde_show`;
CREATE TABLE `fy_silde_show` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pic` varchar(50) NOT NULL COMMENT '图片',
  `title` varchar(50) NOT NULL COMMENT '描述',
  `orderby` int(11) DEFAULT '1' COMMENT '排序值',
  `status` tinyint(1) DEFAULT '1' COMMENT '1启用0禁用',
  `addtime` int(11) DEFAULT NULL COMMENT '添加时间',
  `updatetime` int(11) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_silde_show
-- ----------------------------

-- ----------------------------
-- Table structure for `fy_sys_event_log`
-- ----------------------------
DROP TABLE IF EXISTS `fy_sys_event_log`;
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

-- ----------------------------
-- Records of fy_sys_event_log
-- ----------------------------

-- ----------------------------
-- Table structure for `fy_web_log_001`
-- ----------------------------
DROP TABLE IF EXISTS `fy_web_log_001`;
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
) ENGINE=MyISAM AUTO_INCREMENT=483 DEFAULT CHARSET=utf8 COMMENT='网站日志';

-- ----------------------------
-- Records of fy_web_log_001
-- ----------------------------
INSERT INTO `fy_web_log_001` VALUES ('1', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1527661601');
INSERT INTO `fy_web_log_001` VALUES ('2', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1527661601');
INSERT INTO `fy_web_log_001` VALUES ('3', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"kpyp\";}', '1527661627');
INSERT INTO `fy_web_log_001` VALUES ('4', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1527661627');
INSERT INTO `fy_web_log_001` VALUES ('5', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1527661628');
INSERT INTO `fy_web_log_001` VALUES ('6', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527661631');
INSERT INTO `fy_web_log_001` VALUES ('7', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527661634');
INSERT INTO `fy_web_log_001` VALUES ('8', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527661634');
INSERT INTO `fy_web_log_001` VALUES ('9', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527661634');
INSERT INTO `fy_web_log_001` VALUES ('10', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1527661640');
INSERT INTO `fy_web_log_001` VALUES ('11', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1527661644');
INSERT INTO `fy_web_log_001` VALUES ('12', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1527661646');
INSERT INTO `fy_web_log_001` VALUES ('13', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/index.html', 'admin', 'WebLog', 'index', 'GET', 'a:0:{}', '1527661648');
INSERT INTO `fy_web_log_001` VALUES ('14', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/login_log/index.html', 'admin', 'LoginLog', 'index', 'GET', 'a:0:{}', '1527661665');
INSERT INTO `fy_web_log_001` VALUES ('15', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/generate/index.html', 'admin', 'Generate', 'index', 'GET', 'a:0:{}', '1527661673');
INSERT INTO `fy_web_log_001` VALUES ('16', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/excel.html', 'admin', 'Demo', 'excel', 'GET', 'a:0:{}', '1527661678');
INSERT INTO `fy_web_log_001` VALUES ('17', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/download.html', 'admin', 'Demo', 'download', 'GET', 'a:0:{}', '1527661685');
INSERT INTO `fy_web_log_001` VALUES ('18', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/downloadimage.html', 'admin', 'Demo', 'downloadimage', 'GET', 'a:0:{}', '1527661688');
INSERT INTO `fy_web_log_001` VALUES ('19', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/mail.html', 'admin', 'Demo', 'mail', 'GET', 'a:0:{}', '1527661693');
INSERT INTO `fy_web_log_001` VALUES ('20', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/qiniu.html', 'admin', 'Demo', 'qiniu', 'GET', 'a:0:{}', '1527661694');
INSERT INTO `fy_web_log_001` VALUES ('21', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/hashids.html', 'admin', 'Demo', 'hashids', 'GET', 'a:0:{}', '1527661697');
INSERT INTO `fy_web_log_001` VALUES ('22', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/layer.html', 'admin', 'Demo', 'layer', 'GET', 'a:0:{}', '1527661700');
INSERT INTO `fy_web_log_001` VALUES ('23', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/layer.html', 'admin', 'Demo', 'layer', 'GET', 'a:0:{}', '1527661703');
INSERT INTO `fy_web_log_001` VALUES ('24', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/layer.html', 'admin', 'Demo', 'layer', 'GET', 'a:0:{}', '1527661715');
INSERT INTO `fy_web_log_001` VALUES ('25', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/tablefixed.html', 'admin', 'Demo', 'tablefixed', 'GET', 'a:0:{}', '1527661725');
INSERT INTO `fy_web_log_001` VALUES ('26', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/tablefixed.html', 'admin', 'Demo', 'tablefixed', 'GET', 'a:0:{}', '1527661754');
INSERT INTO `fy_web_log_001` VALUES ('27', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/ueditor.html', 'admin', 'Demo', 'ueditor', 'GET', 'a:0:{}', '1527661757');
INSERT INTO `fy_web_log_001` VALUES ('28', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/ueditor/index.html?action=config&&noCache=1527661758298', 'admin', 'Ueditor', 'index', 'GET', 'a:2:{s:6:\"action\";s:6:\"config\";s:7:\"noCache\";s:13:\"1527661758298\";}', '1527661758');
INSERT INTO `fy_web_log_001` VALUES ('29', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/imageupload.html', 'admin', 'Demo', 'imageupload', 'GET', 'a:0:{}', '1527661871');
INSERT INTO `fy_web_log_001` VALUES ('30', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/upload/index/id/upload.html', 'admin', 'Upload', 'index', 'GET', 'a:1:{s:2:\"id\";s:6:\"upload\";}', '1527661873');
INSERT INTO `fy_web_log_001` VALUES ('31', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/upload/listimage.html', 'admin', 'Upload', 'listimage', 'POST', 'a:2:{s:1:\"p\";s:1:\"1\";s:5:\"count\";s:1:\"1\";}', '1527661876');
INSERT INTO `fy_web_log_001` VALUES ('32', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/upload/upload.html', 'admin', 'Upload', 'upload', 'POST', 'a:0:{}', '1527661884');
INSERT INTO `fy_web_log_001` VALUES ('33', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/one.two.three.four/index.html', 'admin', 'one.two.three.Four', 'index', 'GET', 'a:0:{}', '1527661915');
INSERT INTO `fy_web_log_001` VALUES ('34', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/one.two.three.four/index.html', 'admin', 'one.two.three.Four', 'index', 'GET', 'a:0:{}', '1527661954');
INSERT INTO `fy_web_log_001` VALUES ('35', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/one.two.three.four/saveOrder', 'admin', 'one.two.three.Four', 'saveorder', 'POST', 'a:1:{s:4:\"sort\";a:1:{i:1;s:2:\"50\";}}', '1527661956');
INSERT INTO `fy_web_log_001` VALUES ('36', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/one.two.three.four/recyclebin.html', 'admin', 'one.two.three.Four', 'recyclebin', 'GET', 'a:0:{}', '1527661958');
INSERT INTO `fy_web_log_001` VALUES ('37', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/one.two.three.four/recyclebin.html', 'admin', 'one.two.three.Four', 'recyclebin', 'GET', 'a:0:{}', '1527661959');
INSERT INTO `fy_web_log_001` VALUES ('38', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1527661964');
INSERT INTO `fy_web_log_001` VALUES ('39', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1527661964');
INSERT INTO `fy_web_log_001` VALUES ('40', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1527661965');
INSERT INTO `fy_web_log_001` VALUES ('41', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1527661994');
INSERT INTO `fy_web_log_001` VALUES ('42', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/profile.html', 'admin', 'Pub', 'profile', 'GET', 'a:0:{}', '1527662006');
INSERT INTO `fy_web_log_001` VALUES ('43', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527662026');
INSERT INTO `fy_web_log_001` VALUES ('44', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527662027');
INSERT INTO `fy_web_log_001` VALUES ('45', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527662028');
INSERT INTO `fy_web_log_001` VALUES ('46', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527662028');
INSERT INTO `fy_web_log_001` VALUES ('47', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1527662028');
INSERT INTO `fy_web_log_001` VALUES ('48', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1527662029');
INSERT INTO `fy_web_log_001` VALUES ('49', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1527662030');
INSERT INTO `fy_web_log_001` VALUES ('50', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/index.html', 'admin', 'WebLog', 'index', 'GET', 'a:0:{}', '1527662030');
INSERT INTO `fy_web_log_001` VALUES ('51', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/login_log/index.html', 'admin', 'LoginLog', 'index', 'GET', 'a:0:{}', '1527662031');
INSERT INTO `fy_web_log_001` VALUES ('52', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/generate/index.html', 'admin', 'Generate', 'index', 'GET', 'a:0:{}', '1527662033');
INSERT INTO `fy_web_log_001` VALUES ('53', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/excel.html', 'admin', 'Demo', 'excel', 'GET', 'a:0:{}', '1527662034');
INSERT INTO `fy_web_log_001` VALUES ('54', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/download.html', 'admin', 'Demo', 'download', 'GET', 'a:0:{}', '1527662035');
INSERT INTO `fy_web_log_001` VALUES ('55', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/downloadimage.html', 'admin', 'Demo', 'downloadimage', 'GET', 'a:0:{}', '1527662037');
INSERT INTO `fy_web_log_001` VALUES ('56', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/downloadimage.html', 'admin', 'Demo', 'downloadimage', 'POST', 'a:1:{s:3:\"url\";s:132:\"https://mbd.baidu.com/newspage/data/landingsuper?context=%7B%22nid%22%3A%22news_15479899205097916266%22%7D&amp;n_type=0&amp;p_from=1\";}', '1527662087');
INSERT INTO `fy_web_log_001` VALUES ('57', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/hashids.html', 'admin', 'Demo', 'hashids', 'GET', 'a:0:{}', '1527662201');
INSERT INTO `fy_web_log_001` VALUES ('58', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/hashids.html', 'admin', 'Demo', 'hashids', 'POST', 'a:1:{s:2:\"id\";s:3:\"123\";}', '1527662205');
INSERT INTO `fy_web_log_001` VALUES ('59', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/hashids.html', 'admin', 'Demo', 'hashids', 'POST', 'a:1:{s:2:\"id\";s:4:\"1234\";}', '1527662213');
INSERT INTO `fy_web_log_001` VALUES ('60', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/layer.html', 'admin', 'Demo', 'layer', 'GET', 'a:0:{}', '1527662221');
INSERT INTO `fy_web_log_001` VALUES ('61', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/tablefixed.html', 'admin', 'Demo', 'tablefixed', 'GET', 'a:0:{}', '1527662222');
INSERT INTO `fy_web_log_001` VALUES ('62', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527662227');
INSERT INTO `fy_web_log_001` VALUES ('63', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527662227');
INSERT INTO `fy_web_log_001` VALUES ('64', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527662228');
INSERT INTO `fy_web_log_001` VALUES ('65', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527662242');
INSERT INTO `fy_web_log_001` VALUES ('66', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527662243');
INSERT INTO `fy_web_log_001` VALUES ('67', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527662243');
INSERT INTO `fy_web_log_001` VALUES ('68', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1527662245');
INSERT INTO `fy_web_log_001` VALUES ('69', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1527662249');
INSERT INTO `fy_web_log_001` VALUES ('70', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1527662251');
INSERT INTO `fy_web_log_001` VALUES ('71', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527662252');
INSERT INTO `fy_web_log_001` VALUES ('72', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1527662261');
INSERT INTO `fy_web_log_001` VALUES ('73', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1527662262');
INSERT INTO `fy_web_log_001` VALUES ('74', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/index.html', 'admin', 'WebLog', 'index', 'GET', 'a:0:{}', '1527662267');
INSERT INTO `fy_web_log_001` VALUES ('75', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/login_log/index.html', 'admin', 'LoginLog', 'index', 'GET', 'a:0:{}', '1527662274');
INSERT INTO `fy_web_log_001` VALUES ('76', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527662283');
INSERT INTO `fy_web_log_001` VALUES ('77', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527662284');
INSERT INTO `fy_web_log_001` VALUES ('78', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527662284');
INSERT INTO `fy_web_log_001` VALUES ('79', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add?pid=51', 'admin', 'AdminNode', 'add', 'GET', 'a:1:{s:3:\"pid\";s:2:\"51\";}', '1527662286');
INSERT INTO `fy_web_log_001` VALUES ('80', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add', 'admin', 'AdminNode', 'add', 'POST', 'a:9:{s:2:\"id\";s:0:\"\";s:3:\"pid\";s:2:\"51\";s:5:\"level\";s:1:\"4\";s:8:\"group_id\";s:1:\"1\";s:5:\"title\";s:6:\"首页\";s:4:\"name\";s:11:\"index/index\";s:4:\"type\";s:1:\"1\";s:4:\"sort\";s:2:\"50\";s:6:\"status\";s:1:\"1\";}', '1527662544');
INSERT INTO `fy_web_log_001` VALUES ('81', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527662544');
INSERT INTO `fy_web_log_001` VALUES ('82', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527662545');
INSERT INTO `fy_web_log_001` VALUES ('83', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527662545');
INSERT INTO `fy_web_log_001` VALUES ('84', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1527662553');
INSERT INTO `fy_web_log_001` VALUES ('85', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1527662553');
INSERT INTO `fy_web_log_001` VALUES ('86', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527662565');
INSERT INTO `fy_web_log_001` VALUES ('87', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527662567');
INSERT INTO `fy_web_log_001` VALUES ('88', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1527662569');
INSERT INTO `fy_web_log_001` VALUES ('89', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1527662585');
INSERT INTO `fy_web_log_001` VALUES ('90', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/index.html', 'admin', 'WebLog', 'index', 'GET', 'a:0:{}', '1527662587');
INSERT INTO `fy_web_log_001` VALUES ('91', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527662589');
INSERT INTO `fy_web_log_001` VALUES ('92', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527662589');
INSERT INTO `fy_web_log_001` VALUES ('93', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527662589');
INSERT INTO `fy_web_log_001` VALUES ('94', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527662593');
INSERT INTO `fy_web_log_001` VALUES ('95', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/delete.html', 'admin', 'AdminNode', 'delete', 'POST', 'a:1:{s:2:\"id\";s:2:\"63\";}', '1527662612');
INSERT INTO `fy_web_log_001` VALUES ('96', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527662612');
INSERT INTO `fy_web_log_001` VALUES ('97', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527662613');
INSERT INTO `fy_web_log_001` VALUES ('98', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527662613');
INSERT INTO `fy_web_log_001` VALUES ('99', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1527662630');
INSERT INTO `fy_web_log_001` VALUES ('100', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1527662631');
INSERT INTO `fy_web_log_001` VALUES ('101', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527662636');
INSERT INTO `fy_web_log_001` VALUES ('102', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527662636');
INSERT INTO `fy_web_log_001` VALUES ('103', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527662636');
INSERT INTO `fy_web_log_001` VALUES ('104', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/load?pid=2', 'admin', 'AdminNode', 'load', 'GET', 'a:1:{s:3:\"pid\";s:1:\"2\";}', '1527662857');
INSERT INTO `fy_web_log_001` VALUES ('105', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/load', 'admin', 'AdminNode', 'load', 'POST', 'a:9:{s:2:\"id\";s:0:\"\";s:3:\"pid\";s:1:\"2\";s:5:\"level\";s:1:\"3\";s:8:\"group_id\";s:1:\"0\";s:4:\"type\";s:1:\"0\";s:4:\"node\";a:4:{i:0;s:1:\"4\";i:1;s:1:\"5\";i:2;s:1:\"6\";i:3;s:1:\"7\";}s:9:\"node_name\";a:11:{i:0;s:14:\"index###首页\";i:1;s:22:\"recycleBin###回收站\";i:2;s:12:\"add###添加\";i:3;s:13:\"edit###编辑\";i:4;s:27:\"delete###默认删除操作\";i:5;s:28:\"recycle###从回收站恢复\";i:6;s:27:\"forbid###默认禁用操作\";i:7;s:27:\"resume###默认恢复操作\";i:8;s:28:\"deleteForever###永久删除\";i:9;s:23:\"clear###清空回收站\";i:10;s:24:\"saveOrder###保存排序\";}s:4:\"sort\";s:2:\"50\";s:6:\"status\";s:1:\"1\";}', '1527662891');
INSERT INTO `fy_web_log_001` VALUES ('106', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1527662901');
INSERT INTO `fy_web_log_001` VALUES ('107', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1527662901');
INSERT INTO `fy_web_log_001` VALUES ('108', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1527662904');
INSERT INTO `fy_web_log_001` VALUES ('109', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527662909');
INSERT INTO `fy_web_log_001` VALUES ('110', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527662909');
INSERT INTO `fy_web_log_001` VALUES ('111', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527662909');
INSERT INTO `fy_web_log_001` VALUES ('112', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add?pid=0', 'admin', 'AdminNode', 'add', 'GET', 'a:1:{s:3:\"pid\";s:1:\"0\";}', '1527662924');
INSERT INTO `fy_web_log_001` VALUES ('113', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1527662935');
INSERT INTO `fy_web_log_001` VALUES ('114', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html?realname=luo&account=&email=&mobile=', 'admin', 'AdminUser', 'index', 'GET', 'a:4:{s:8:\"realname\";s:3:\"luo\";s:7:\"account\";s:0:\"\";s:5:\"email\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}', '1527662944');
INSERT INTO `fy_web_log_001` VALUES ('115', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html?realname=&account=&email=&mobile=', 'admin', 'AdminUser', 'index', 'GET', 'a:4:{s:8:\"realname\";s:0:\"\";s:7:\"account\";s:0:\"\";s:5:\"email\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}', '1527662949');
INSERT INTO `fy_web_log_001` VALUES ('116', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html?realname=demo&account=&email=&mobile=', 'admin', 'AdminUser', 'index', 'GET', 'a:4:{s:8:\"realname\";s:4:\"demo\";s:7:\"account\";s:0:\"\";s:5:\"email\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}', '1527662958');
INSERT INTO `fy_web_log_001` VALUES ('117', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/add.html', 'admin', 'AdminUser', 'add', 'GET', 'a:0:{}', '1527662962');
INSERT INTO `fy_web_log_001` VALUES ('118', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1527662969');
INSERT INTO `fy_web_log_001` VALUES ('119', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1527662970');
INSERT INTO `fy_web_log_001` VALUES ('120', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1527662973');
INSERT INTO `fy_web_log_001` VALUES ('121', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1527662974');
INSERT INTO `fy_web_log_001` VALUES ('122', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1527662975');
INSERT INTO `fy_web_log_001` VALUES ('123', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1527662976');
INSERT INTO `fy_web_log_001` VALUES ('124', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527662980');
INSERT INTO `fy_web_log_001` VALUES ('125', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/add.html', 'admin', 'AdminGroup', 'add', 'GET', 'a:0:{}', '1527662987');
INSERT INTO `fy_web_log_001` VALUES ('126', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/add.html', 'admin', 'AdminGroup', 'add', 'POST', 'a:6:{s:2:\"id\";s:0:\"\";s:4:\"name\";s:4:\"test\";s:4:\"icon\";s:0:\"\";s:4:\"sort\";s:2:\"50\";s:6:\"status\";s:1:\"1\";s:6:\"remark\";s:4:\"test\";}', '1527663015');
INSERT INTO `fy_web_log_001` VALUES ('127', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527663016');
INSERT INTO `fy_web_log_001` VALUES ('128', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/edit/id/3.html', 'admin', 'AdminGroup', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1527663024');
INSERT INTO `fy_web_log_001` VALUES ('129', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/forbid.html', 'admin', 'AdminGroup', 'forbid', 'POST', 'a:1:{s:2:\"id\";s:0:\"\";}', '1527663037');
INSERT INTO `fy_web_log_001` VALUES ('130', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527663037');
INSERT INTO `fy_web_log_001` VALUES ('131', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/resume.html', 'admin', 'AdminGroup', 'resume', 'POST', 'a:1:{s:2:\"id\";s:0:\"\";}', '1527663042');
INSERT INTO `fy_web_log_001` VALUES ('132', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527663043');
INSERT INTO `fy_web_log_001` VALUES ('133', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/forbid.html', 'admin', 'AdminGroup', 'forbid', 'POST', 'a:1:{s:2:\"id\";s:0:\"\";}', '1527663048');
INSERT INTO `fy_web_log_001` VALUES ('134', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527663048');
INSERT INTO `fy_web_log_001` VALUES ('135', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/forbid.html', 'admin', 'AdminGroup', 'forbid', 'POST', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1527663061');
INSERT INTO `fy_web_log_001` VALUES ('136', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527663061');
INSERT INTO `fy_web_log_001` VALUES ('137', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/resume.html', 'admin', 'AdminGroup', 'resume', 'POST', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1527663066');
INSERT INTO `fy_web_log_001` VALUES ('138', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527663066');
INSERT INTO `fy_web_log_001` VALUES ('139', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/recyclebin.html', 'admin', 'AdminGroup', 'recyclebin', 'GET', 'a:0:{}', '1527663073');
INSERT INTO `fy_web_log_001` VALUES ('140', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1527663076');
INSERT INTO `fy_web_log_001` VALUES ('141', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1527663079');
INSERT INTO `fy_web_log_001` VALUES ('142', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1527663079');
INSERT INTO `fy_web_log_001` VALUES ('143', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1527663086');
INSERT INTO `fy_web_log_001` VALUES ('144', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/resume.html', 'admin', 'AdminRole', 'resume', 'POST', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1527663110');
INSERT INTO `fy_web_log_001` VALUES ('145', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1527663111');
INSERT INTO `fy_web_log_001` VALUES ('146', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1527663154');
INSERT INTO `fy_web_log_001` VALUES ('147', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/login_log/index.html', 'admin', 'LoginLog', 'index', 'GET', 'a:0:{}', '1527663166');
INSERT INTO `fy_web_log_001` VALUES ('148', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/index.html', 'admin', 'WebLog', 'index', 'GET', 'a:0:{}', '1527663169');
INSERT INTO `fy_web_log_001` VALUES ('149', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/detail/id/147.html', 'admin', 'WebLog', 'detail', 'GET', 'a:1:{s:2:\"id\";s:3:\"147\";}', '1527663182');
INSERT INTO `fy_web_log_001` VALUES ('150', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/password.html', 'admin', 'Pub', 'password', 'GET', 'a:0:{}', '1527663212');
INSERT INTO `fy_web_log_001` VALUES ('151', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527663315');
INSERT INTO `fy_web_log_001` VALUES ('152', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1527663316');
INSERT INTO `fy_web_log_001` VALUES ('153', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/access/id/2.html', 'admin', 'AdminRole', 'access', 'GET', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1527663319');
INSERT INTO `fy_web_log_001` VALUES ('154', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/add.html', 'admin', 'AdminRole', 'add', 'GET', 'a:0:{}', '1527663679');
INSERT INTO `fy_web_log_001` VALUES ('155', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527663684');
INSERT INTO `fy_web_log_001` VALUES ('156', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1527663686');
INSERT INTO `fy_web_log_001` VALUES ('157', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/add.html', 'admin', 'AdminRole', 'add', 'GET', 'a:0:{}', '1527663698');
INSERT INTO `fy_web_log_001` VALUES ('158', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/add.html', 'admin', 'AdminRole', 'add', 'POST', 'a:4:{s:2:\"id\";s:0:\"\";s:4:\"name\";s:4:\"test\";s:6:\"status\";s:1:\"1\";s:6:\"remark\";s:11:\"testsartsrt\";}', '1527663706');
INSERT INTO `fy_web_log_001` VALUES ('159', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1527663706');
INSERT INTO `fy_web_log_001` VALUES ('160', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1527663709');
INSERT INTO `fy_web_log_001` VALUES ('161', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/add.html', 'admin', 'AdminUser', 'add', 'GET', 'a:0:{}', '1527663712');
INSERT INTO `fy_web_log_001` VALUES ('162', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/add.html', 'admin', 'AdminUser', 'add', 'POST', 'a:8:{s:2:\"id\";s:0:\"\";s:7:\"account\";s:5:\"test1\";s:8:\"realname\";s:9:\"罗正波\";s:8:\"password\";s:6:\"123456\";s:5:\"email\";s:17:\"1060049850@qq.com\";s:6:\"mobile\";s:11:\"18285111561\";s:6:\"status\";s:1:\"1\";s:6:\"remark\";s:4:\"test\";}', '1527663753');
INSERT INTO `fy_web_log_001` VALUES ('163', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1527663753');
INSERT INTO `fy_web_log_001` VALUES ('164', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1527663780');
INSERT INTO `fy_web_log_001` VALUES ('165', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527663789');
INSERT INTO `fy_web_log_001` VALUES ('166', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/edit/id/1.html', 'admin', 'AdminGroup', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1527663794');
INSERT INTO `fy_web_log_001` VALUES ('167', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/index.html', 'admin', 'WebLog', 'index', 'GET', 'a:0:{}', '1527663880');
INSERT INTO `fy_web_log_001` VALUES ('168', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1527663890');
INSERT INTO `fy_web_log_001` VALUES ('169', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1527663893');
INSERT INTO `fy_web_log_001` VALUES ('170', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1527663894');
INSERT INTO `fy_web_log_001` VALUES ('171', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527663950');
INSERT INTO `fy_web_log_001` VALUES ('172', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527663952');
INSERT INTO `fy_web_log_001` VALUES ('173', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527663952');
INSERT INTO `fy_web_log_001` VALUES ('174', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527663952');
INSERT INTO `fy_web_log_001` VALUES ('175', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1527663955');
INSERT INTO `fy_web_log_001` VALUES ('176', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/index.html', 'admin', 'WebLog', 'index', 'GET', 'a:0:{}', '1527663986');
INSERT INTO `fy_web_log_001` VALUES ('177', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/logout.html', 'admin', 'Pub', 'logout', 'GET', 'a:0:{}', '1527664014');
INSERT INTO `fy_web_log_001` VALUES ('178', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1527664017');
INSERT INTO `fy_web_log_001` VALUES ('179', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:3:{s:7:\"account\";s:5:\"test1\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"vvrt\";}', '1527664031');
INSERT INTO `fy_web_log_001` VALUES ('180', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:3:{s:7:\"account\";s:5:\"test1\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"l27f\";}', '1527664040');
INSERT INTO `fy_web_log_001` VALUES ('181', '3', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1527664046');
INSERT INTO `fy_web_log_001` VALUES ('182', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1527664108');
INSERT INTO `fy_web_log_001` VALUES ('183', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1527664108');
INSERT INTO `fy_web_log_001` VALUES ('184', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:5:\"admin\";s:7:\"captcha\";s:4:\"t52r\";}', '1527664124');
INSERT INTO `fy_web_log_001` VALUES ('185', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"t52r\";}', '1527664132');
INSERT INTO `fy_web_log_001` VALUES ('186', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"ipv6\";}', '1527664138');
INSERT INTO `fy_web_log_001` VALUES ('187', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1527664138');
INSERT INTO `fy_web_log_001` VALUES ('188', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1527664139');
INSERT INTO `fy_web_log_001` VALUES ('189', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1527664148');
INSERT INTO `fy_web_log_001` VALUES ('190', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/edit/id/3.html', 'admin', 'AdminUser', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1527664157');
INSERT INTO `fy_web_log_001` VALUES ('191', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527664176');
INSERT INTO `fy_web_log_001` VALUES ('192', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527664179');
INSERT INTO `fy_web_log_001` VALUES ('193', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527664179');
INSERT INTO `fy_web_log_001` VALUES ('194', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527664180');
INSERT INTO `fy_web_log_001` VALUES ('195', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1527664180');
INSERT INTO `fy_web_log_001` VALUES ('196', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1527664182');
INSERT INTO `fy_web_log_001` VALUES ('197', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1527664183');
INSERT INTO `fy_web_log_001` VALUES ('198', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/index.html', 'admin', 'WebLog', 'index', 'GET', 'a:0:{}', '1527664204');
INSERT INTO `fy_web_log_001` VALUES ('199', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/index.html?p=2', 'admin', 'WebLog', 'index', 'GET', 'a:1:{s:1:\"p\";s:1:\"2\";}', '1527664214');
INSERT INTO `fy_web_log_001` VALUES ('200', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/index.html?p=3', 'admin', 'WebLog', 'index', 'GET', 'a:1:{s:1:\"p\";s:1:\"3\";}', '1527664220');
INSERT INTO `fy_web_log_001` VALUES ('201', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/index.html?p=4', 'admin', 'WebLog', 'index', 'GET', 'a:1:{s:1:\"p\";s:1:\"4\";}', '1527664222');
INSERT INTO `fy_web_log_001` VALUES ('202', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/index.html?p=5', 'admin', 'WebLog', 'index', 'GET', 'a:1:{s:1:\"p\";s:1:\"5\";}', '1527664225');
INSERT INTO `fy_web_log_001` VALUES ('203', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/index.html?p=6', 'admin', 'WebLog', 'index', 'GET', 'a:1:{s:1:\"p\";s:1:\"6\";}', '1527664228');
INSERT INTO `fy_web_log_001` VALUES ('204', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527664293');
INSERT INTO `fy_web_log_001` VALUES ('205', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1527664294');
INSERT INTO `fy_web_log_001` VALUES ('206', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527664294');
INSERT INTO `fy_web_log_001` VALUES ('207', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527664295');
INSERT INTO `fy_web_log_001` VALUES ('208', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/user/id/3.html', 'admin', 'AdminRole', 'user', 'GET', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1527664301');
INSERT INTO `fy_web_log_001` VALUES ('209', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/user/id/2.html', 'admin', 'AdminRole', 'user', 'GET', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1527664311');
INSERT INTO `fy_web_log_001` VALUES ('210', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/user/id/1.html', 'admin', 'AdminRole', 'user', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1527664315');
INSERT INTO `fy_web_log_001` VALUES ('211', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/user/id/3.html', 'admin', 'AdminRole', 'user', 'GET', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1527664320');
INSERT INTO `fy_web_log_001` VALUES ('212', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/user/id/3.html', 'admin', 'AdminRole', 'user', 'POST', 'a:2:{s:2:\"id\";s:1:\"3\";s:7:\"user_id\";a:1:{i:0;s:1:\"3\";}}', '1527664325');
INSERT INTO `fy_web_log_001` VALUES ('213', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1527664330');
INSERT INTO `fy_web_log_001` VALUES ('214', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/edit/id/3.html', 'admin', 'AdminUser', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1527664333');
INSERT INTO `fy_web_log_001` VALUES ('215', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1527664339');
INSERT INTO `fy_web_log_001` VALUES ('216', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/access/id/3.html', 'admin', 'AdminRole', 'access', 'GET', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1527664348');
INSERT INTO `fy_web_log_001` VALUES ('217', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/access/id/3.html', 'admin', 'AdminRole', 'access', 'POST', 'a:2:{s:2:\"id\";s:1:\"3\";s:7:\"node_id\";a:14:{i:0;s:5:\"1_1_0\";i:1;s:5:\"2_2_1\";i:2;s:6:\"51_3_2\";i:3;s:6:\"52_3_2\";i:4;s:6:\"53_3_2\";i:5;s:6:\"54_3_2\";i:6;s:6:\"55_3_2\";i:7;s:6:\"64_3_2\";i:8;s:6:\"65_3_2\";i:9;s:6:\"66_3_2\";i:10;s:6:\"67_3_2\";i:11;s:6:\"68_3_2\";i:12;s:6:\"69_3_2\";i:13;s:6:\"70_3_2\";}}', '1527664359');
INSERT INTO `fy_web_log_001` VALUES ('218', '3', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1527664364');
INSERT INTO `fy_web_log_001` VALUES ('219', '3', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1527664365');
INSERT INTO `fy_web_log_001` VALUES ('220', '3', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527664367');
INSERT INTO `fy_web_log_001` VALUES ('221', '3', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527664374');
INSERT INTO `fy_web_log_001` VALUES ('222', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1527664451');
INSERT INTO `fy_web_log_001` VALUES ('223', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527664452');
INSERT INTO `fy_web_log_001` VALUES ('224', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527664453');
INSERT INTO `fy_web_log_001` VALUES ('225', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527664453');
INSERT INTO `fy_web_log_001` VALUES ('226', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add?pid=0', 'admin', 'AdminNode', 'add', 'GET', 'a:1:{s:3:\"pid\";s:1:\"0\";}', '1527664478');
INSERT INTO `fy_web_log_001` VALUES ('227', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"0\";}', '1527664490');
INSERT INTO `fy_web_log_001` VALUES ('228', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1527664500');
INSERT INTO `fy_web_log_001` VALUES ('229', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1527664501');
INSERT INTO `fy_web_log_001` VALUES ('230', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527664509');
INSERT INTO `fy_web_log_001` VALUES ('231', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527664510');
INSERT INTO `fy_web_log_001` VALUES ('232', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527664511');
INSERT INTO `fy_web_log_001` VALUES ('233', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"0\";}', '1527664515');
INSERT INTO `fy_web_log_001` VALUES ('234', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/resume.html', 'admin', 'AdminNode', 'resume', 'POST', 'a:1:{s:2:\"id\";s:3:\"6,7\";}', '1527664563');
INSERT INTO `fy_web_log_001` VALUES ('235', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527664563');
INSERT INTO `fy_web_log_001` VALUES ('236', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527664563');
INSERT INTO `fy_web_log_001` VALUES ('237', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"0\";}', '1527664564');
INSERT INTO `fy_web_log_001` VALUES ('238', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527664567');
INSERT INTO `fy_web_log_001` VALUES ('239', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527664570');
INSERT INTO `fy_web_log_001` VALUES ('240', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1527664573');
INSERT INTO `fy_web_log_001` VALUES ('241', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1527664574');
INSERT INTO `fy_web_log_001` VALUES ('242', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527664592');
INSERT INTO `fy_web_log_001` VALUES ('243', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527664592');
INSERT INTO `fy_web_log_001` VALUES ('244', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527664593');
INSERT INTO `fy_web_log_001` VALUES ('245', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"0\";}', '1527664595');
INSERT INTO `fy_web_log_001` VALUES ('246', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1527664606');
INSERT INTO `fy_web_log_001` VALUES ('247', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1527664614');
INSERT INTO `fy_web_log_001` VALUES ('248', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1527664620');
INSERT INTO `fy_web_log_001` VALUES ('249', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1527664621');
INSERT INTO `fy_web_log_001` VALUES ('250', '3', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527664805');
INSERT INTO `fy_web_log_001` VALUES ('251', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/one.two.three.four/index.html', 'admin', 'one.two.three.Four', 'index', 'GET', 'a:0:{}', '1527664814');
INSERT INTO `fy_web_log_001` VALUES ('252', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/imageupload.html', 'admin', 'Demo', 'imageupload', 'GET', 'a:0:{}', '1527664827');
INSERT INTO `fy_web_log_001` VALUES ('253', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/qrcode.html', 'admin', 'Demo', 'qrcode', 'GET', 'a:0:{}', '1527664830');
INSERT INTO `fy_web_log_001` VALUES ('254', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/one.two.three.four/index.html', 'admin', 'one.two.three.Four', 'index', 'GET', 'a:0:{}', '1527664831');
INSERT INTO `fy_web_log_001` VALUES ('255', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/one.two.three.four/index.html', 'admin', 'one.two.three.Four', 'index', 'GET', 'a:0:{}', '1527664835');
INSERT INTO `fy_web_log_001` VALUES ('256', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/qrcode.html', 'admin', 'Demo', 'qrcode', 'GET', 'a:0:{}', '1527664847');
INSERT INTO `fy_web_log_001` VALUES ('257', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527671800');
INSERT INTO `fy_web_log_001` VALUES ('258', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527671801');
INSERT INTO `fy_web_log_001` VALUES ('259', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527671801');
INSERT INTO `fy_web_log_001` VALUES ('260', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527671804');
INSERT INTO `fy_web_log_001` VALUES ('261', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527671805');
INSERT INTO `fy_web_log_001` VALUES ('262', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527671805');
INSERT INTO `fy_web_log_001` VALUES ('263', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527671806');
INSERT INTO `fy_web_log_001` VALUES ('264', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527671807');
INSERT INTO `fy_web_log_001` VALUES ('265', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527671807');
INSERT INTO `fy_web_log_001` VALUES ('266', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527671813');
INSERT INTO `fy_web_log_001` VALUES ('267', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527671815');
INSERT INTO `fy_web_log_001` VALUES ('268', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1527671816');
INSERT INTO `fy_web_log_001` VALUES ('269', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527671816');
INSERT INTO `fy_web_log_001` VALUES ('270', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527671816');
INSERT INTO `fy_web_log_001` VALUES ('271', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/index.html', 'admin', 'WebLog', 'index', 'GET', 'a:0:{}', '1527671825');
INSERT INTO `fy_web_log_001` VALUES ('272', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/index.html?p=2', 'admin', 'WebLog', 'index', 'GET', 'a:1:{s:1:\"p\";s:1:\"2\";}', '1527671849');
INSERT INTO `fy_web_log_001` VALUES ('273', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/index.html?p=1', 'admin', 'WebLog', 'index', 'GET', 'a:1:{s:1:\"p\";s:1:\"1\";}', '1527671856');
INSERT INTO `fy_web_log_001` VALUES ('274', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/index.html?p=1', 'admin', 'WebLog', 'index', 'GET', 'a:1:{s:1:\"p\";s:1:\"1\";}', '1527671859');
INSERT INTO `fy_web_log_001` VALUES ('275', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/mail.html', 'admin', 'Demo', 'mail', 'GET', 'a:0:{}', '1527671861');
INSERT INTO `fy_web_log_001` VALUES ('276', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/qiniu.html', 'admin', 'Demo', 'qiniu', 'GET', 'a:0:{}', '1527671865');
INSERT INTO `fy_web_log_001` VALUES ('277', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/hashids.html', 'admin', 'Demo', 'hashids', 'GET', 'a:0:{}', '1527671866');
INSERT INTO `fy_web_log_001` VALUES ('278', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/hashids.html', 'admin', 'Demo', 'hashids', 'POST', 'a:1:{s:2:\"id\";s:7:\"xdvgxcv\";}', '1527671869');
INSERT INTO `fy_web_log_001` VALUES ('279', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/hashids.html', 'admin', 'Demo', 'hashids', 'POST', 'a:1:{s:2:\"id\";s:7:\"xdvgxcv\";}', '1527671874');
INSERT INTO `fy_web_log_001` VALUES ('280', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/hashids.html', 'admin', 'Demo', 'hashids', 'POST', 'a:1:{s:2:\"id\";s:7:\"xdvgxcv\";}', '1527671879');
INSERT INTO `fy_web_log_001` VALUES ('281', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/hashids.html', 'admin', 'Demo', 'hashids', 'POST', 'a:1:{s:2:\"id\";s:7:\"xdvgxcv\";}', '1527671880');
INSERT INTO `fy_web_log_001` VALUES ('282', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/hashids.html', 'admin', 'Demo', 'hashids', 'POST', 'a:1:{s:2:\"id\";s:3:\"234\";}', '1527671884');
INSERT INTO `fy_web_log_001` VALUES ('283', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/tablefixed.html', 'admin', 'Demo', 'tablefixed', 'GET', 'a:0:{}', '1527671889');
INSERT INTO `fy_web_log_001` VALUES ('284', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/ueditor.html', 'admin', 'Demo', 'ueditor', 'GET', 'a:0:{}', '1527671891');
INSERT INTO `fy_web_log_001` VALUES ('285', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/ueditor/index.html?action=config&&noCache=1527671892665', 'admin', 'Ueditor', 'index', 'GET', 'a:2:{s:6:\"action\";s:6:\"config\";s:7:\"noCache\";s:13:\"1527671892665\";}', '1527671892');
INSERT INTO `fy_web_log_001` VALUES ('286', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1528095737');
INSERT INTO `fy_web_log_001` VALUES ('287', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1528095738');
INSERT INTO `fy_web_log_001` VALUES ('288', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:5:\"admin\";s:7:\"captcha\";s:4:\"huqy\";}', '1528095750');
INSERT INTO `fy_web_log_001` VALUES ('289', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:8:\"admin123\";s:7:\"captcha\";s:4:\"huqy\";}', '1528095763');
INSERT INTO `fy_web_log_001` VALUES ('290', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:8:\"admin123\";s:7:\"captcha\";s:4:\"ivee\";}', '1528095769');
INSERT INTO `fy_web_log_001` VALUES ('291', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:4:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"ivee\";s:6:\"online\";s:1:\"1\";}', '1528095779');
INSERT INTO `fy_web_log_001` VALUES ('292', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:4:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"c2wk\";s:6:\"online\";s:1:\"1\";}', '1528096059');
INSERT INTO `fy_web_log_001` VALUES ('293', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1528096060');
INSERT INTO `fy_web_log_001` VALUES ('294', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:4:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"c2wk\";s:6:\"online\";s:1:\"1\";}', '1528096061');
INSERT INTO `fy_web_log_001` VALUES ('295', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1528096062');
INSERT INTO `fy_web_log_001` VALUES ('296', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1528096067');
INSERT INTO `fy_web_log_001` VALUES ('297', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1528096072');
INSERT INTO `fy_web_log_001` VALUES ('298', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1528096073');
INSERT INTO `fy_web_log_001` VALUES ('299', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1528096073');
INSERT INTO `fy_web_log_001` VALUES ('300', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1528096082');
INSERT INTO `fy_web_log_001` VALUES ('301', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1528096085');
INSERT INTO `fy_web_log_001` VALUES ('302', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1528096089');
INSERT INTO `fy_web_log_001` VALUES ('303', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1528096100');
INSERT INTO `fy_web_log_001` VALUES ('304', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1528096875');
INSERT INTO `fy_web_log_001` VALUES ('305', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1528096875');
INSERT INTO `fy_web_log_001` VALUES ('306', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1528098039');
INSERT INTO `fy_web_log_001` VALUES ('307', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1528098041');
INSERT INTO `fy_web_log_001` VALUES ('308', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1528098044');
INSERT INTO `fy_web_log_001` VALUES ('309', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1528098044');
INSERT INTO `fy_web_log_001` VALUES ('310', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1528098045');
INSERT INTO `fy_web_log_001` VALUES ('311', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1528098056');
INSERT INTO `fy_web_log_001` VALUES ('312', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1528098058');
INSERT INTO `fy_web_log_001` VALUES ('313', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1528101831');
INSERT INTO `fy_web_log_001` VALUES ('314', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1528101836');
INSERT INTO `fy_web_log_001` VALUES ('315', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1528101837');
INSERT INTO `fy_web_log_001` VALUES ('316', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1528101837');
INSERT INTO `fy_web_log_001` VALUES ('317', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1528101838');
INSERT INTO `fy_web_log_001` VALUES ('318', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1528101838');
INSERT INTO `fy_web_log_001` VALUES ('319', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1528101838');
INSERT INTO `fy_web_log_001` VALUES ('320', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/add.html', 'admin', 'NodeMap', 'add', 'GET', 'a:0:{}', '1528101838');
INSERT INTO `fy_web_log_001` VALUES ('321', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1528160400');
INSERT INTO `fy_web_log_001` VALUES ('322', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1528160400');
INSERT INTO `fy_web_log_001` VALUES ('323', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:4:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:5:\"admin\";s:7:\"captcha\";s:4:\"wfbn\";s:6:\"online\";s:1:\"1\";}', '1528160412');
INSERT INTO `fy_web_log_001` VALUES ('324', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:4:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"vv4g\";s:6:\"online\";s:1:\"1\";}', '1528160426');
INSERT INTO `fy_web_log_001` VALUES ('325', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1528160426');
INSERT INTO `fy_web_log_001` VALUES ('326', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1528160427');
INSERT INTO `fy_web_log_001` VALUES ('327', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1528160432');
INSERT INTO `fy_web_log_001` VALUES ('328', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1528160432');
INSERT INTO `fy_web_log_001` VALUES ('329', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1528160433');
INSERT INTO `fy_web_log_001` VALUES ('330', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1528160439');
INSERT INTO `fy_web_log_001` VALUES ('331', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/add.html', 'admin', 'NodeMap', 'add', 'GET', 'a:0:{}', '1528160441');
INSERT INTO `fy_web_log_001` VALUES ('332', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/add.html', 'admin', 'NodeMap', 'add', 'POST', 'a:6:{s:2:\"id\";s:0:\"\";s:6:\"module\";s:5:\"admin\";s:10:\"controller\";s:9:\"Sildeshow\";s:6:\"action\";s:5:\"index\";s:6:\"method\";s:3:\"ALL\";s:7:\"comment\";s:9:\"轮播图\";}', '1528160486');
INSERT INTO `fy_web_log_001` VALUES ('333', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1528160487');
INSERT INTO `fy_web_log_001` VALUES ('334', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1528160492');
INSERT INTO `fy_web_log_001` VALUES ('335', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1528160493');
INSERT INTO `fy_web_log_001` VALUES ('336', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1528160493');
INSERT INTO `fy_web_log_001` VALUES ('337', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add?pid=27', 'admin', 'AdminNode', 'add', 'GET', 'a:1:{s:3:\"pid\";s:2:\"27\";}', '1528160511');
INSERT INTO `fy_web_log_001` VALUES ('338', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add', 'admin', 'AdminNode', 'add', 'POST', 'a:9:{s:2:\"id\";s:0:\"\";s:3:\"pid\";s:2:\"27\";s:5:\"level\";s:1:\"4\";s:8:\"group_id\";s:1:\"1\";s:5:\"title\";s:9:\"轮播图\";s:4:\"name\";s:9:\"Sildeshow\";s:4:\"type\";s:1:\"1\";s:4:\"sort\";s:2:\"50\";s:6:\"status\";s:1:\"1\";}', '1528160570');
INSERT INTO `fy_web_log_001` VALUES ('339', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1528160570');
INSERT INTO `fy_web_log_001` VALUES ('340', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1528160571');
INSERT INTO `fy_web_log_001` VALUES ('341', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1528160571');
INSERT INTO `fy_web_log_001` VALUES ('342', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/delete', 'admin', 'AdminNode', 'delete', 'POST', 'a:1:{s:2:\"id\";s:2:\"71\";}', '1528160603');
INSERT INTO `fy_web_log_001` VALUES ('343', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add?pid=0', 'admin', 'AdminNode', 'add', 'GET', 'a:1:{s:3:\"pid\";s:1:\"0\";}', '1528160611');
INSERT INTO `fy_web_log_001` VALUES ('344', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add', 'admin', 'AdminNode', 'add', 'POST', 'a:9:{s:2:\"id\";s:0:\"\";s:3:\"pid\";s:1:\"0\";s:5:\"level\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";s:5:\"title\";s:9:\"轮播图\";s:4:\"name\";s:9:\"Sildeshow\";s:4:\"type\";s:1:\"1\";s:4:\"sort\";s:2:\"50\";s:6:\"status\";s:1:\"1\";}', '1528160627');
INSERT INTO `fy_web_log_001` VALUES ('345', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1528160628');
INSERT INTO `fy_web_log_001` VALUES ('346', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1528160628');
INSERT INTO `fy_web_log_001` VALUES ('347', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1528160629');
INSERT INTO `fy_web_log_001` VALUES ('348', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:2:\"72\";}', '1528160687');
INSERT INTO `fy_web_log_001` VALUES ('349', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/delete', 'admin', 'AdminNode', 'delete', 'POST', 'a:1:{s:2:\"id\";s:2:\"72\";}', '1528160697');
INSERT INTO `fy_web_log_001` VALUES ('350', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add?pid=0', 'admin', 'AdminNode', 'add', 'GET', 'a:1:{s:3:\"pid\";s:1:\"0\";}', '1528160718');
INSERT INTO `fy_web_log_001` VALUES ('351', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add', 'admin', 'AdminNode', 'add', 'POST', 'a:9:{s:2:\"id\";s:0:\"\";s:3:\"pid\";s:1:\"0\";s:5:\"level\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";s:5:\"title\";s:9:\"轮播图\";s:4:\"name\";s:9:\"sildeshow\";s:4:\"type\";s:1:\"1\";s:4:\"sort\";s:2:\"50\";s:6:\"status\";s:1:\"1\";}', '1528160743');
INSERT INTO `fy_web_log_001` VALUES ('352', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1528160743');
INSERT INTO `fy_web_log_001` VALUES ('353', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1528160744');
INSERT INTO `fy_web_log_001` VALUES ('354', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1528160744');
INSERT INTO `fy_web_log_001` VALUES ('355', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"2\";}', '1528160759');
INSERT INTO `fy_web_log_001` VALUES ('356', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1528160761');
INSERT INTO `fy_web_log_001` VALUES ('357', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add?pid=73', 'admin', 'AdminNode', 'add', 'GET', 'a:1:{s:3:\"pid\";s:2:\"73\";}', '1528160783');
INSERT INTO `fy_web_log_001` VALUES ('358', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add', 'admin', 'AdminNode', 'add', 'POST', 'a:9:{s:2:\"id\";s:0:\"\";s:3:\"pid\";s:2:\"73\";s:5:\"level\";s:1:\"2\";s:8:\"group_id\";s:1:\"0\";s:5:\"title\";s:6:\"添加\";s:4:\"name\";s:3:\"add\";s:4:\"type\";s:1:\"0\";s:4:\"sort\";s:2:\"50\";s:6:\"status\";s:1:\"1\";}', '1528160804');
INSERT INTO `fy_web_log_001` VALUES ('359', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1528160805');
INSERT INTO `fy_web_log_001` VALUES ('360', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1528160805');
INSERT INTO `fy_web_log_001` VALUES ('361', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1528160805');
INSERT INTO `fy_web_log_001` VALUES ('362', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:2:\"73\";}', '1528160810');
INSERT INTO `fy_web_log_001` VALUES ('363', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:2:\"73\";}', '1528160812');
INSERT INTO `fy_web_log_001` VALUES ('364', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:2:\"73\";}', '1528160812');
INSERT INTO `fy_web_log_001` VALUES ('365', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:2:\"73\";s:8:\"group_id\";s:1:\"0\";}', '1528160813');
INSERT INTO `fy_web_log_001` VALUES ('366', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/delete', 'admin', 'AdminNode', 'delete', 'POST', 'a:1:{s:2:\"id\";s:2:\"74\";}', '1528160824');
INSERT INTO `fy_web_log_001` VALUES ('367', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:2:\"73\";}', '1528160825');
INSERT INTO `fy_web_log_001` VALUES ('368', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/delete', 'admin', 'AdminNode', 'delete', 'POST', 'a:1:{s:2:\"id\";s:2:\"73\";}', '1528160829');
INSERT INTO `fy_web_log_001` VALUES ('369', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add?pid=1', 'admin', 'AdminNode', 'add', 'GET', 'a:1:{s:3:\"pid\";s:1:\"1\";}', '1528160832');
INSERT INTO `fy_web_log_001` VALUES ('370', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add', 'admin', 'AdminNode', 'add', 'POST', 'a:9:{s:2:\"id\";s:0:\"\";s:3:\"pid\";s:1:\"1\";s:5:\"level\";s:1:\"2\";s:8:\"group_id\";s:1:\"1\";s:5:\"title\";s:9:\"轮播图\";s:4:\"name\";s:9:\"sildeshow\";s:4:\"type\";s:1:\"1\";s:4:\"sort\";s:2:\"50\";s:6:\"status\";s:1:\"1\";}', '1528160854');
INSERT INTO `fy_web_log_001` VALUES ('371', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1528160855');
INSERT INTO `fy_web_log_001` VALUES ('372', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1528160855');
INSERT INTO `fy_web_log_001` VALUES ('373', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1528160856');
INSERT INTO `fy_web_log_001` VALUES ('374', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add?pid=75', 'admin', 'AdminNode', 'add', 'GET', 'a:1:{s:3:\"pid\";s:2:\"75\";}', '1528160865');
INSERT INTO `fy_web_log_001` VALUES ('375', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add', 'admin', 'AdminNode', 'add', 'POST', 'a:9:{s:2:\"id\";s:0:\"\";s:3:\"pid\";s:2:\"75\";s:5:\"level\";s:1:\"3\";s:8:\"group_id\";s:1:\"0\";s:5:\"title\";s:6:\"添加\";s:4:\"name\";s:3:\"add\";s:4:\"type\";s:1:\"0\";s:4:\"sort\";s:2:\"50\";s:6:\"status\";s:1:\"1\";}', '1528160888');
INSERT INTO `fy_web_log_001` VALUES ('376', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1528160888');
INSERT INTO `fy_web_log_001` VALUES ('377', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1528160889');
INSERT INTO `fy_web_log_001` VALUES ('378', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1528160889');
INSERT INTO `fy_web_log_001` VALUES ('379', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add?pid=75', 'admin', 'AdminNode', 'add', 'GET', 'a:1:{s:3:\"pid\";s:2:\"75\";}', '1528160896');
INSERT INTO `fy_web_log_001` VALUES ('380', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add', 'admin', 'AdminNode', 'add', 'POST', 'a:9:{s:2:\"id\";s:0:\"\";s:3:\"pid\";s:2:\"75\";s:5:\"level\";s:1:\"3\";s:8:\"group_id\";s:1:\"1\";s:5:\"title\";s:6:\"编辑\";s:4:\"name\";s:4:\"edit\";s:4:\"type\";s:1:\"0\";s:4:\"sort\";s:2:\"50\";s:6:\"status\";s:1:\"1\";}', '1528160912');
INSERT INTO `fy_web_log_001` VALUES ('381', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1528160913');
INSERT INTO `fy_web_log_001` VALUES ('382', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1528160913');
INSERT INTO `fy_web_log_001` VALUES ('383', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1528160914');
INSERT INTO `fy_web_log_001` VALUES ('384', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add?pid=75', 'admin', 'AdminNode', 'add', 'GET', 'a:1:{s:3:\"pid\";s:2:\"75\";}', '1528160917');
INSERT INTO `fy_web_log_001` VALUES ('385', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add?pid=75', 'admin', 'AdminNode', 'add', 'GET', 'a:1:{s:3:\"pid\";s:2:\"75\";}', '1528160923');
INSERT INTO `fy_web_log_001` VALUES ('386', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add', 'admin', 'AdminNode', 'add', 'POST', 'a:9:{s:2:\"id\";s:0:\"\";s:3:\"pid\";s:2:\"75\";s:5:\"level\";s:1:\"3\";s:8:\"group_id\";s:1:\"1\";s:5:\"title\";s:6:\"列表\";s:4:\"name\";s:5:\"index\";s:4:\"type\";s:1:\"0\";s:4:\"sort\";s:2:\"50\";s:6:\"status\";s:1:\"1\";}', '1528160942');
INSERT INTO `fy_web_log_001` VALUES ('387', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1528160942');
INSERT INTO `fy_web_log_001` VALUES ('388', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1528160943');
INSERT INTO `fy_web_log_001` VALUES ('389', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1528160943');
INSERT INTO `fy_web_log_001` VALUES ('390', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1528160949');
INSERT INTO `fy_web_log_001` VALUES ('391', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1528160949');
INSERT INTO `fy_web_log_001` VALUES ('392', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/login_log/index.html', 'admin', 'LoginLog', 'index', 'GET', 'a:0:{}', '1528160958');
INSERT INTO `fy_web_log_001` VALUES ('393', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/index.html', 'admin', 'WebLog', 'index', 'GET', 'a:0:{}', '1528160962');
INSERT INTO `fy_web_log_001` VALUES ('394', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1528161183');
INSERT INTO `fy_web_log_001` VALUES ('395', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/generate/index.html', 'admin', 'Generate', 'index', 'GET', 'a:0:{}', '1528161188');
INSERT INTO `fy_web_log_001` VALUES ('396', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/generate/run.html', 'admin', 'Generate', 'run', 'POST', 'a:14:{s:4:\"file\";s:3:\"all\";s:6:\"module\";s:5:\"admin\";s:10:\"controller\";s:9:\"Sildeshow\";s:5:\"title\";s:0:\"\";s:4:\"form\";a:5:{i:4;a:7:{s:5:\"title\";s:6:\"排序\";s:4:\"name\";s:7:\"orderby\";s:4:\"type\";s:6:\"number\";s:6:\"option\";s:1:\"1\";s:7:\"default\";s:1:\"1\";s:11:\"search_type\";s:4:\"text\";s:8:\"validate\";a:3:{s:8:\"datatype\";s:0:\"\";s:7:\"nullmsg\";s:0:\"\";s:8:\"errormsg\";s:0:\"\";}}i:3;a:8:{s:5:\"title\";s:6:\"状态\";s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"select\";s:6:\"option\";s:13:\"启用#禁用\";s:7:\"default\";s:3:\"1#2\";s:11:\"search_type\";s:4:\"text\";s:7:\"require\";s:1:\"1\";s:8:\"validate\";a:3:{s:8:\"datatype\";s:1:\"*\";s:7:\"nullmsg\";s:0:\"\";s:8:\"errormsg\";s:0:\"\";}}i:2;a:8:{s:5:\"title\";s:12:\"跳转链接\";s:4:\"name\";s:3:\"url\";s:4:\"type\";s:4:\"text\";s:6:\"option\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"search_type\";s:4:\"text\";s:7:\"require\";s:1:\"1\";s:8:\"validate\";a:3:{s:8:\"datatype\";s:1:\"*\";s:7:\"nullmsg\";s:0:\"\";s:8:\"errormsg\";s:0:\"\";}}i:0;a:9:{s:5:\"title\";s:12:\"产品名称\";s:4:\"name\";s:4:\"name\";s:4:\"type\";s:4:\"text\";s:6:\"option\";s:0:\"\";s:7:\"default\";s:0:\"\";s:6:\"search\";s:1:\"1\";s:11:\"search_type\";s:4:\"text\";s:7:\"require\";s:1:\"1\";s:8:\"validate\";a:3:{s:8:\"datatype\";s:1:\"*\";s:7:\"nullmsg\";s:0:\"\";s:8:\"errormsg\";s:0:\"\";}}i:1;a:8:{s:5:\"title\";s:6:\"图片\";s:4:\"name\";s:3:\"pic\";s:4:\"type\";s:4:\"text\";s:6:\"option\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"search_type\";s:4:\"text\";s:7:\"require\";s:1:\"1\";s:8:\"validate\";a:3:{s:8:\"datatype\";s:1:\"*\";s:7:\"nullmsg\";s:0:\"\";s:8:\"errormsg\";s:0:\"\";}}}s:12:\"create_table\";s:1:\"1\";s:18:\"create_table_force\";s:1:\"1\";s:12:\"table_engine\";s:6:\"InnoDB\";s:10:\"table_name\";s:0:\"\";s:5:\"field\";a:5:{i:4;a:5:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:10:\"tinyint(1)\";s:7:\"default\";s:1:\"1\";s:7:\"comment\";s:6:\"状态\";s:5:\"extra\";s:0:\"\";}i:3;a:5:{s:4:\"name\";s:7:\"orderby\";s:4:\"type\";s:3:\"int\";s:7:\"default\";s:1:\"1\";s:7:\"comment\";s:9:\"排序值\";s:5:\"extra\";s:0:\"\";}i:2;a:6:{s:4:\"name\";s:3:\"pic\";s:4:\"type\";s:12:\"varchar(255)\";s:7:\"default\";s:0:\"\";s:8:\"not_null\";s:1:\"1\";s:7:\"comment\";s:6:\"图片\";s:5:\"extra\";s:0:\"\";}i:1;a:7:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:7:\"int(11)\";s:7:\"default\";s:0:\"\";s:8:\"not_null\";s:1:\"1\";s:3:\"key\";s:1:\"1\";s:7:\"comment\";s:0:\"\";s:5:\"extra\";s:14:\"auto_increment\";}i:0;a:6:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:12:\"varchar(255)\";s:7:\"default\";s:0:\"\";s:8:\"not_null\";s:1:\"1\";s:7:\"comment\";s:25:\"产品描述/产品名称\";s:5:\"extra\";s:0:\"\";}}s:4:\"menu\";a:6:{i:0;s:3:\"add\";i:1;s:6:\"forbid\";i:2;s:6:\"resume\";i:3;s:6:\"delete\";i:4;s:10:\"recycleBin\";i:5;s:9:\"saveOrder\";}s:5:\"model\";s:1:\"1\";s:14:\"auto_timestamp\";s:1:\"1\";s:8:\"validate\";s:1:\"1\";}', '1528162025');
INSERT INTO `fy_web_log_001` VALUES ('397', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/generate/index.html', 'admin', 'Generate', 'index', 'GET', 'a:0:{}', '1528162029');
INSERT INTO `fy_web_log_001` VALUES ('398', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/sildeshow/index.html', 'admin', 'Sildeshow', 'index', 'GET', 'a:0:{}', '1528162039');
INSERT INTO `fy_web_log_001` VALUES ('399', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/sildeshow/add.html', 'admin', 'Sildeshow', 'add', 'GET', 'a:0:{}', '1528162043');
INSERT INTO `fy_web_log_001` VALUES ('400', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/generate/index.html', 'admin', 'Generate', 'index', 'GET', 'a:0:{}', '1528162154');
INSERT INTO `fy_web_log_001` VALUES ('401', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1528162785');
INSERT INTO `fy_web_log_001` VALUES ('402', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/add.html', 'admin', 'AdminGroup', 'add', 'GET', 'a:0:{}', '1528162790');
INSERT INTO `fy_web_log_001` VALUES ('403', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1528162796');
INSERT INTO `fy_web_log_001` VALUES ('404', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/index.html', 'admin', 'WebLog', 'index', 'GET', 'a:0:{}', '1528162798');
INSERT INTO `fy_web_log_001` VALUES ('405', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/login_log/index.html', 'admin', 'LoginLog', 'index', 'GET', 'a:0:{}', '1528162800');
INSERT INTO `fy_web_log_001` VALUES ('406', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/sildeshow/index.html', 'admin', 'Sildeshow', 'index', 'GET', 'a:0:{}', '1528162823');
INSERT INTO `fy_web_log_001` VALUES ('407', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/sildeshow/add.html', 'admin', 'Sildeshow', 'add', 'GET', 'a:0:{}', '1528162828');
INSERT INTO `fy_web_log_001` VALUES ('408', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/generate/index.html', 'admin', 'Generate', 'index', 'GET', 'a:0:{}', '1528162837');
INSERT INTO `fy_web_log_001` VALUES ('409', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/imageupload.html', 'admin', 'Demo', 'imageupload', 'GET', 'a:0:{}', '1528162840');
INSERT INTO `fy_web_log_001` VALUES ('410', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/upload/index/id/upload.html', 'admin', 'Upload', 'index', 'GET', 'a:1:{s:2:\"id\";s:6:\"upload\";}', '1528162843');
INSERT INTO `fy_web_log_001` VALUES ('411', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/upload/listimage.html', 'admin', 'Upload', 'listimage', 'POST', 'a:2:{s:1:\"p\";s:1:\"1\";s:5:\"count\";s:1:\"1\";}', '1528162852');
INSERT INTO `fy_web_log_001` VALUES ('412', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/upload/listimage.html', 'admin', 'Upload', 'listimage', 'POST', 'a:2:{s:1:\"p\";s:1:\"1\";s:5:\"count\";s:1:\"1\";}', '1528162853');
INSERT INTO `fy_web_log_001` VALUES ('413', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/upload/index/id/upload.html', 'admin', 'Upload', 'index', 'GET', 'a:1:{s:2:\"id\";s:6:\"upload\";}', '1528162861');
INSERT INTO `fy_web_log_001` VALUES ('414', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/upload/upload.html', 'admin', 'Upload', 'upload', 'POST', 'a:0:{}', '1528162870');
INSERT INTO `fy_web_log_001` VALUES ('415', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/upload/index/id/upload.html', 'admin', 'Upload', 'index', 'GET', 'a:1:{s:2:\"id\";s:6:\"upload\";}', '1528162873');
INSERT INTO `fy_web_log_001` VALUES ('416', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/upload/remote.html', 'admin', 'Upload', 'remote', 'POST', 'a:1:{s:3:\"url\";s:104:\"https://xkdsaas.oss-cn-shanghai.aliyuncs.com/MerChant/1977/743/1489300498627.jpg?x-oss-process=style/640\";}', '1528162930');
INSERT INTO `fy_web_log_001` VALUES ('417', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/upload/index/id/upload.html', 'admin', 'Upload', 'index', 'GET', 'a:1:{s:2:\"id\";s:6:\"upload\";}', '1528162938');
INSERT INTO `fy_web_log_001` VALUES ('418', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/upload/index/id/upload.html', 'admin', 'Upload', 'index', 'GET', 'a:1:{s:2:\"id\";s:6:\"upload\";}', '1528163259');
INSERT INTO `fy_web_log_001` VALUES ('419', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/upload/listimage.html', 'admin', 'Upload', 'listimage', 'POST', 'a:2:{s:1:\"p\";s:1:\"1\";s:5:\"count\";s:1:\"1\";}', '1528163261');
INSERT INTO `fy_web_log_001` VALUES ('420', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/qrcode.html', 'admin', 'Demo', 'qrcode', 'GET', 'a:0:{}', '1528178061');
INSERT INTO `fy_web_log_001` VALUES ('421', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/tablefixed.html', 'admin', 'Demo', 'tablefixed', 'GET', 'a:0:{}', '1528178063');
INSERT INTO `fy_web_log_001` VALUES ('422', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/password.html', 'admin', 'Pub', 'password', 'GET', 'a:0:{}', '1528178112');
INSERT INTO `fy_web_log_001` VALUES ('423', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/password.html', 'admin', 'Pub', 'password', 'POST', 'a:4:{s:2:\"id\";s:0:\"\";s:11:\"oldpassword\";s:6:\"123456\";s:8:\"password\";s:6:\"123456\";s:10:\"repassword\";s:6:\"123456\";}', '1528178124');
INSERT INTO `fy_web_log_001` VALUES ('424', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1528178147');
INSERT INTO `fy_web_log_001` VALUES ('425', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1528178188');
INSERT INTO `fy_web_log_001` VALUES ('426', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1528178191');
INSERT INTO `fy_web_log_001` VALUES ('427', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/qrcode.html', 'admin', 'Demo', 'qrcode', 'GET', 'a:0:{}', '1528178204');
INSERT INTO `fy_web_log_001` VALUES ('428', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/one.two.three.four/index.html', 'admin', 'one.two.three.Four', 'index', 'GET', 'a:0:{}', '1528178207');
INSERT INTO `fy_web_log_001` VALUES ('429', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/login_log/index.html', 'admin', 'LoginLog', 'index', 'GET', 'a:0:{}', '1528186334');
INSERT INTO `fy_web_log_001` VALUES ('430', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/index.html', 'admin', 'WebLog', 'index', 'GET', 'a:0:{}', '1528186337');
INSERT INTO `fy_web_log_001` VALUES ('431', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/detail/id/429.html', 'admin', 'WebLog', 'detail', 'GET', 'a:1:{s:2:\"id\";s:3:\"429\";}', '1528186369');
INSERT INTO `fy_web_log_001` VALUES ('432', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1528186390');
INSERT INTO `fy_web_log_001` VALUES ('433', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1528186392');
INSERT INTO `fy_web_log_001` VALUES ('434', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1528186393');
INSERT INTO `fy_web_log_001` VALUES ('435', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1528186393');
INSERT INTO `fy_web_log_001` VALUES ('436', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/edit?id=30', 'admin', 'AdminNode', 'edit', 'GET', 'a:1:{s:2:\"id\";s:2:\"30\";}', '1528186402');
INSERT INTO `fy_web_log_001` VALUES ('437', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/edit?id=77', 'admin', 'AdminNode', 'edit', 'GET', 'a:1:{s:2:\"id\";s:2:\"77\";}', '1528186420');
INSERT INTO `fy_web_log_001` VALUES ('438', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/edit', 'admin', 'AdminNode', 'edit', 'POST', 'a:9:{s:2:\"id\";s:2:\"77\";s:3:\"pid\";s:2:\"75\";s:5:\"level\";s:1:\"3\";s:8:\"group_id\";s:1:\"0\";s:5:\"title\";s:6:\"编辑\";s:4:\"name\";s:4:\"edit\";s:4:\"type\";s:1:\"0\";s:4:\"sort\";s:2:\"50\";s:6:\"status\";s:1:\"1\";}', '1528186424');
INSERT INTO `fy_web_log_001` VALUES ('439', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1528186425');
INSERT INTO `fy_web_log_001` VALUES ('440', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1528186426');
INSERT INTO `fy_web_log_001` VALUES ('441', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1528186426');
INSERT INTO `fy_web_log_001` VALUES ('442', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/edit?id=76', 'admin', 'AdminNode', 'edit', 'GET', 'a:1:{s:2:\"id\";s:2:\"76\";}', '1528186433');
INSERT INTO `fy_web_log_001` VALUES ('443', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/edit?id=77', 'admin', 'AdminNode', 'edit', 'GET', 'a:1:{s:2:\"id\";s:2:\"77\";}', '1528186440');
INSERT INTO `fy_web_log_001` VALUES ('444', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/edit?id=78', 'admin', 'AdminNode', 'edit', 'GET', 'a:1:{s:2:\"id\";s:2:\"78\";}', '1528186446');
INSERT INTO `fy_web_log_001` VALUES ('445', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/edit', 'admin', 'AdminNode', 'edit', 'POST', 'a:9:{s:2:\"id\";s:2:\"78\";s:3:\"pid\";s:2:\"75\";s:5:\"level\";s:1:\"3\";s:8:\"group_id\";s:1:\"0\";s:5:\"title\";s:6:\"列表\";s:4:\"name\";s:5:\"index\";s:4:\"type\";s:1:\"0\";s:4:\"sort\";s:2:\"50\";s:6:\"status\";s:1:\"1\";}', '1528186451');
INSERT INTO `fy_web_log_001` VALUES ('446', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1528186451');
INSERT INTO `fy_web_log_001` VALUES ('447', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1528186452');
INSERT INTO `fy_web_log_001` VALUES ('448', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1528186452');
INSERT INTO `fy_web_log_001` VALUES ('449', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/sildeshow/index.html', 'admin', 'Sildeshow', 'index', 'GET', 'a:0:{}', '1528186456');
INSERT INTO `fy_web_log_001` VALUES ('450', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/sildeshow/add.html', 'admin', 'Sildeshow', 'add', 'GET', 'a:0:{}', '1528186460');
INSERT INTO `fy_web_log_001` VALUES ('451', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/generate/index.html', 'admin', 'Generate', 'index', 'GET', 'a:0:{}', '1528186489');
INSERT INTO `fy_web_log_001` VALUES ('452', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/sildeshow/index.html', 'admin', 'Sildeshow', 'index', 'GET', 'a:0:{}', '1528186562');
INSERT INTO `fy_web_log_001` VALUES ('453', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/sildeshow/add.html', 'admin', 'Sildeshow', 'add', 'GET', 'a:0:{}', '1528186563');
INSERT INTO `fy_web_log_001` VALUES ('454', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/sildeshow/add.html', 'admin', 'Sildeshow', 'add', 'POST', 'a:6:{s:2:\"id\";s:0:\"\";s:7:\"orderby\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:3:\"url\";s:20:\"http://www.baidu.com\";s:4:\"name\";s:4:\"test\";s:3:\"pic\";s:4:\"test\";}', '1528186585');
INSERT INTO `fy_web_log_001` VALUES ('455', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/sildeshow/index.html', 'admin', 'Sildeshow', 'index', 'GET', 'a:0:{}', '1528186585');
INSERT INTO `fy_web_log_001` VALUES ('456', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/sildeshow/edit/id/1.html', 'admin', 'Sildeshow', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1528186596');
INSERT INTO `fy_web_log_001` VALUES ('457', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/sildeshow/edit/id/1.html', 'admin', 'Sildeshow', 'edit', 'POST', 'a:6:{s:2:\"id\";s:1:\"1\";s:7:\"orderby\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:3:\"url\";s:20:\"http://www.baidu.com\";s:4:\"name\";s:4:\"test\";s:3:\"pic\";s:4:\"test\";}', '1528186607');
INSERT INTO `fy_web_log_001` VALUES ('458', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/sildeshow/index.html', 'admin', 'Sildeshow', 'index', 'GET', 'a:0:{}', '1528186607');
INSERT INTO `fy_web_log_001` VALUES ('459', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/sildeshow/edit/id/1.html', 'admin', 'Sildeshow', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1528186626');
INSERT INTO `fy_web_log_001` VALUES ('460', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/sildeshow/edit/id/1.html', 'admin', 'Sildeshow', 'edit', 'POST', 'a:6:{s:2:\"id\";s:1:\"1\";s:7:\"orderby\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:3:\"url\";s:18:\"http://www.bai.com\";s:4:\"name\";s:4:\"test\";s:3:\"pic\";s:4:\"test\";}', '1528186637');
INSERT INTO `fy_web_log_001` VALUES ('461', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/sildeshow/index.html', 'admin', 'Sildeshow', 'index', 'GET', 'a:0:{}', '1528186637');
INSERT INTO `fy_web_log_001` VALUES ('462', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1528343858');
INSERT INTO `fy_web_log_001` VALUES ('463', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1528343859');
INSERT INTO `fy_web_log_001` VALUES ('464', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:4:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"asme\";s:6:\"online\";s:1:\"1\";}', '1528343865');
INSERT INTO `fy_web_log_001` VALUES ('465', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1528343866');
INSERT INTO `fy_web_log_001` VALUES ('466', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1528343867');
INSERT INTO `fy_web_log_001` VALUES ('467', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1528343885');
INSERT INTO `fy_web_log_001` VALUES ('468', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1528343886');
INSERT INTO `fy_web_log_001` VALUES ('469', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1528343891');
INSERT INTO `fy_web_log_001` VALUES ('470', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1528343892');
INSERT INTO `fy_web_log_001` VALUES ('471', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1528343895');
INSERT INTO `fy_web_log_001` VALUES ('472', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1528343895');
INSERT INTO `fy_web_log_001` VALUES ('473', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1528343901');
INSERT INTO `fy_web_log_001` VALUES ('474', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1528343901');
INSERT INTO `fy_web_log_001` VALUES ('475', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1528343903');
INSERT INTO `fy_web_log_001` VALUES ('476', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1528343904');
INSERT INTO `fy_web_log_001` VALUES ('477', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1528343929');
INSERT INTO `fy_web_log_001` VALUES ('478', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1528343930');
INSERT INTO `fy_web_log_001` VALUES ('479', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1528343935');
INSERT INTO `fy_web_log_001` VALUES ('480', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1528343936');
INSERT INTO `fy_web_log_001` VALUES ('481', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1528347694');
INSERT INTO `fy_web_log_001` VALUES ('482', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1528347695');

-- ----------------------------
-- Table structure for `fy_web_log_all`
-- ----------------------------
DROP TABLE IF EXISTS `fy_web_log_all`;
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

-- ----------------------------
-- Records of fy_web_log_all
-- ----------------------------
INSERT INTO `fy_web_log_all` VALUES ('1', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1527661601');
INSERT INTO `fy_web_log_all` VALUES ('2', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1527661601');
INSERT INTO `fy_web_log_all` VALUES ('3', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"kpyp\";}', '1527661627');
INSERT INTO `fy_web_log_all` VALUES ('4', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1527661627');
INSERT INTO `fy_web_log_all` VALUES ('5', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1527661628');
INSERT INTO `fy_web_log_all` VALUES ('6', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527661631');
INSERT INTO `fy_web_log_all` VALUES ('7', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527661634');
INSERT INTO `fy_web_log_all` VALUES ('8', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527661634');
INSERT INTO `fy_web_log_all` VALUES ('9', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527661634');
INSERT INTO `fy_web_log_all` VALUES ('10', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1527661640');
INSERT INTO `fy_web_log_all` VALUES ('11', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1527661644');
INSERT INTO `fy_web_log_all` VALUES ('12', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1527661646');
INSERT INTO `fy_web_log_all` VALUES ('13', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/index.html', 'admin', 'WebLog', 'index', 'GET', 'a:0:{}', '1527661648');
INSERT INTO `fy_web_log_all` VALUES ('14', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/login_log/index.html', 'admin', 'LoginLog', 'index', 'GET', 'a:0:{}', '1527661665');
INSERT INTO `fy_web_log_all` VALUES ('15', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/generate/index.html', 'admin', 'Generate', 'index', 'GET', 'a:0:{}', '1527661673');
INSERT INTO `fy_web_log_all` VALUES ('16', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/excel.html', 'admin', 'Demo', 'excel', 'GET', 'a:0:{}', '1527661678');
INSERT INTO `fy_web_log_all` VALUES ('17', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/download.html', 'admin', 'Demo', 'download', 'GET', 'a:0:{}', '1527661685');
INSERT INTO `fy_web_log_all` VALUES ('18', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/downloadimage.html', 'admin', 'Demo', 'downloadimage', 'GET', 'a:0:{}', '1527661688');
INSERT INTO `fy_web_log_all` VALUES ('19', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/mail.html', 'admin', 'Demo', 'mail', 'GET', 'a:0:{}', '1527661693');
INSERT INTO `fy_web_log_all` VALUES ('20', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/qiniu.html', 'admin', 'Demo', 'qiniu', 'GET', 'a:0:{}', '1527661694');
INSERT INTO `fy_web_log_all` VALUES ('21', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/hashids.html', 'admin', 'Demo', 'hashids', 'GET', 'a:0:{}', '1527661697');
INSERT INTO `fy_web_log_all` VALUES ('22', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/layer.html', 'admin', 'Demo', 'layer', 'GET', 'a:0:{}', '1527661700');
INSERT INTO `fy_web_log_all` VALUES ('23', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/layer.html', 'admin', 'Demo', 'layer', 'GET', 'a:0:{}', '1527661703');
INSERT INTO `fy_web_log_all` VALUES ('24', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/layer.html', 'admin', 'Demo', 'layer', 'GET', 'a:0:{}', '1527661715');
INSERT INTO `fy_web_log_all` VALUES ('25', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/tablefixed.html', 'admin', 'Demo', 'tablefixed', 'GET', 'a:0:{}', '1527661725');
INSERT INTO `fy_web_log_all` VALUES ('26', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/tablefixed.html', 'admin', 'Demo', 'tablefixed', 'GET', 'a:0:{}', '1527661754');
INSERT INTO `fy_web_log_all` VALUES ('27', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/ueditor.html', 'admin', 'Demo', 'ueditor', 'GET', 'a:0:{}', '1527661757');
INSERT INTO `fy_web_log_all` VALUES ('28', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/ueditor/index.html?action=config&&noCache=1527661758298', 'admin', 'Ueditor', 'index', 'GET', 'a:2:{s:6:\"action\";s:6:\"config\";s:7:\"noCache\";s:13:\"1527661758298\";}', '1527661758');
INSERT INTO `fy_web_log_all` VALUES ('29', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/imageupload.html', 'admin', 'Demo', 'imageupload', 'GET', 'a:0:{}', '1527661871');
INSERT INTO `fy_web_log_all` VALUES ('30', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/upload/index/id/upload.html', 'admin', 'Upload', 'index', 'GET', 'a:1:{s:2:\"id\";s:6:\"upload\";}', '1527661873');
INSERT INTO `fy_web_log_all` VALUES ('31', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/upload/listimage.html', 'admin', 'Upload', 'listimage', 'POST', 'a:2:{s:1:\"p\";s:1:\"1\";s:5:\"count\";s:1:\"1\";}', '1527661876');
INSERT INTO `fy_web_log_all` VALUES ('32', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/upload/upload.html', 'admin', 'Upload', 'upload', 'POST', 'a:0:{}', '1527661884');
INSERT INTO `fy_web_log_all` VALUES ('33', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/one.two.three.four/index.html', 'admin', 'one.two.three.Four', 'index', 'GET', 'a:0:{}', '1527661915');
INSERT INTO `fy_web_log_all` VALUES ('34', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/one.two.three.four/index.html', 'admin', 'one.two.three.Four', 'index', 'GET', 'a:0:{}', '1527661954');
INSERT INTO `fy_web_log_all` VALUES ('35', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/one.two.three.four/saveOrder', 'admin', 'one.two.three.Four', 'saveorder', 'POST', 'a:1:{s:4:\"sort\";a:1:{i:1;s:2:\"50\";}}', '1527661956');
INSERT INTO `fy_web_log_all` VALUES ('36', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/one.two.three.four/recyclebin.html', 'admin', 'one.two.three.Four', 'recyclebin', 'GET', 'a:0:{}', '1527661958');
INSERT INTO `fy_web_log_all` VALUES ('37', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/one.two.three.four/recyclebin.html', 'admin', 'one.two.three.Four', 'recyclebin', 'GET', 'a:0:{}', '1527661959');
INSERT INTO `fy_web_log_all` VALUES ('38', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1527661964');
INSERT INTO `fy_web_log_all` VALUES ('39', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1527661964');
INSERT INTO `fy_web_log_all` VALUES ('40', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1527661965');
INSERT INTO `fy_web_log_all` VALUES ('41', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1527661994');
INSERT INTO `fy_web_log_all` VALUES ('42', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/profile.html', 'admin', 'Pub', 'profile', 'GET', 'a:0:{}', '1527662006');
INSERT INTO `fy_web_log_all` VALUES ('43', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527662026');
INSERT INTO `fy_web_log_all` VALUES ('44', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527662027');
INSERT INTO `fy_web_log_all` VALUES ('45', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527662028');
INSERT INTO `fy_web_log_all` VALUES ('46', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527662028');
INSERT INTO `fy_web_log_all` VALUES ('47', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1527662028');
INSERT INTO `fy_web_log_all` VALUES ('48', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1527662029');
INSERT INTO `fy_web_log_all` VALUES ('49', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1527662030');
INSERT INTO `fy_web_log_all` VALUES ('50', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/index.html', 'admin', 'WebLog', 'index', 'GET', 'a:0:{}', '1527662030');
INSERT INTO `fy_web_log_all` VALUES ('51', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/login_log/index.html', 'admin', 'LoginLog', 'index', 'GET', 'a:0:{}', '1527662031');
INSERT INTO `fy_web_log_all` VALUES ('52', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/generate/index.html', 'admin', 'Generate', 'index', 'GET', 'a:0:{}', '1527662033');
INSERT INTO `fy_web_log_all` VALUES ('53', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/excel.html', 'admin', 'Demo', 'excel', 'GET', 'a:0:{}', '1527662034');
INSERT INTO `fy_web_log_all` VALUES ('54', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/download.html', 'admin', 'Demo', 'download', 'GET', 'a:0:{}', '1527662035');
INSERT INTO `fy_web_log_all` VALUES ('55', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/downloadimage.html', 'admin', 'Demo', 'downloadimage', 'GET', 'a:0:{}', '1527662037');
INSERT INTO `fy_web_log_all` VALUES ('56', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/downloadimage.html', 'admin', 'Demo', 'downloadimage', 'POST', 'a:1:{s:3:\"url\";s:132:\"https://mbd.baidu.com/newspage/data/landingsuper?context=%7B%22nid%22%3A%22news_15479899205097916266%22%7D&amp;n_type=0&amp;p_from=1\";}', '1527662087');
INSERT INTO `fy_web_log_all` VALUES ('57', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/hashids.html', 'admin', 'Demo', 'hashids', 'GET', 'a:0:{}', '1527662201');
INSERT INTO `fy_web_log_all` VALUES ('58', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/hashids.html', 'admin', 'Demo', 'hashids', 'POST', 'a:1:{s:2:\"id\";s:3:\"123\";}', '1527662205');
INSERT INTO `fy_web_log_all` VALUES ('59', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/hashids.html', 'admin', 'Demo', 'hashids', 'POST', 'a:1:{s:2:\"id\";s:4:\"1234\";}', '1527662213');
INSERT INTO `fy_web_log_all` VALUES ('60', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/layer.html', 'admin', 'Demo', 'layer', 'GET', 'a:0:{}', '1527662221');
INSERT INTO `fy_web_log_all` VALUES ('61', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/tablefixed.html', 'admin', 'Demo', 'tablefixed', 'GET', 'a:0:{}', '1527662222');
INSERT INTO `fy_web_log_all` VALUES ('62', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527662227');
INSERT INTO `fy_web_log_all` VALUES ('63', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527662227');
INSERT INTO `fy_web_log_all` VALUES ('64', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527662228');
INSERT INTO `fy_web_log_all` VALUES ('65', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527662242');
INSERT INTO `fy_web_log_all` VALUES ('66', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527662243');
INSERT INTO `fy_web_log_all` VALUES ('67', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527662243');
INSERT INTO `fy_web_log_all` VALUES ('68', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1527662245');
INSERT INTO `fy_web_log_all` VALUES ('69', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1527662249');
INSERT INTO `fy_web_log_all` VALUES ('70', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1527662251');
INSERT INTO `fy_web_log_all` VALUES ('71', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527662252');
INSERT INTO `fy_web_log_all` VALUES ('72', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1527662261');
INSERT INTO `fy_web_log_all` VALUES ('73', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1527662262');
INSERT INTO `fy_web_log_all` VALUES ('74', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/index.html', 'admin', 'WebLog', 'index', 'GET', 'a:0:{}', '1527662267');
INSERT INTO `fy_web_log_all` VALUES ('75', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/login_log/index.html', 'admin', 'LoginLog', 'index', 'GET', 'a:0:{}', '1527662274');
INSERT INTO `fy_web_log_all` VALUES ('76', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527662283');
INSERT INTO `fy_web_log_all` VALUES ('77', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527662284');
INSERT INTO `fy_web_log_all` VALUES ('78', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527662284');
INSERT INTO `fy_web_log_all` VALUES ('79', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add?pid=51', 'admin', 'AdminNode', 'add', 'GET', 'a:1:{s:3:\"pid\";s:2:\"51\";}', '1527662286');
INSERT INTO `fy_web_log_all` VALUES ('80', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add', 'admin', 'AdminNode', 'add', 'POST', 'a:9:{s:2:\"id\";s:0:\"\";s:3:\"pid\";s:2:\"51\";s:5:\"level\";s:1:\"4\";s:8:\"group_id\";s:1:\"1\";s:5:\"title\";s:6:\"首页\";s:4:\"name\";s:11:\"index/index\";s:4:\"type\";s:1:\"1\";s:4:\"sort\";s:2:\"50\";s:6:\"status\";s:1:\"1\";}', '1527662544');
INSERT INTO `fy_web_log_all` VALUES ('81', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527662544');
INSERT INTO `fy_web_log_all` VALUES ('82', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527662545');
INSERT INTO `fy_web_log_all` VALUES ('83', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527662545');
INSERT INTO `fy_web_log_all` VALUES ('84', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1527662553');
INSERT INTO `fy_web_log_all` VALUES ('85', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1527662553');
INSERT INTO `fy_web_log_all` VALUES ('86', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527662565');
INSERT INTO `fy_web_log_all` VALUES ('87', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527662567');
INSERT INTO `fy_web_log_all` VALUES ('88', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1527662569');
INSERT INTO `fy_web_log_all` VALUES ('89', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1527662585');
INSERT INTO `fy_web_log_all` VALUES ('90', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/index.html', 'admin', 'WebLog', 'index', 'GET', 'a:0:{}', '1527662587');
INSERT INTO `fy_web_log_all` VALUES ('91', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527662589');
INSERT INTO `fy_web_log_all` VALUES ('92', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527662589');
INSERT INTO `fy_web_log_all` VALUES ('93', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527662589');
INSERT INTO `fy_web_log_all` VALUES ('94', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527662593');
INSERT INTO `fy_web_log_all` VALUES ('95', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/delete.html', 'admin', 'AdminNode', 'delete', 'POST', 'a:1:{s:2:\"id\";s:2:\"63\";}', '1527662612');
INSERT INTO `fy_web_log_all` VALUES ('96', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527662612');
INSERT INTO `fy_web_log_all` VALUES ('97', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527662613');
INSERT INTO `fy_web_log_all` VALUES ('98', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527662613');
INSERT INTO `fy_web_log_all` VALUES ('99', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1527662630');
INSERT INTO `fy_web_log_all` VALUES ('100', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1527662631');
INSERT INTO `fy_web_log_all` VALUES ('101', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527662636');
INSERT INTO `fy_web_log_all` VALUES ('102', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527662636');
INSERT INTO `fy_web_log_all` VALUES ('103', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527662636');
INSERT INTO `fy_web_log_all` VALUES ('104', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/load?pid=2', 'admin', 'AdminNode', 'load', 'GET', 'a:1:{s:3:\"pid\";s:1:\"2\";}', '1527662857');
INSERT INTO `fy_web_log_all` VALUES ('105', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/load', 'admin', 'AdminNode', 'load', 'POST', 'a:9:{s:2:\"id\";s:0:\"\";s:3:\"pid\";s:1:\"2\";s:5:\"level\";s:1:\"3\";s:8:\"group_id\";s:1:\"0\";s:4:\"type\";s:1:\"0\";s:4:\"node\";a:4:{i:0;s:1:\"4\";i:1;s:1:\"5\";i:2;s:1:\"6\";i:3;s:1:\"7\";}s:9:\"node_name\";a:11:{i:0;s:14:\"index###首页\";i:1;s:22:\"recycleBin###回收站\";i:2;s:12:\"add###添加\";i:3;s:13:\"edit###编辑\";i:4;s:27:\"delete###默认删除操作\";i:5;s:28:\"recycle###从回收站恢复\";i:6;s:27:\"forbid###默认禁用操作\";i:7;s:27:\"resume###默认恢复操作\";i:8;s:28:\"deleteForever###永久删除\";i:9;s:23:\"clear###清空回收站\";i:10;s:24:\"saveOrder###保存排序\";}s:4:\"sort\";s:2:\"50\";s:6:\"status\";s:1:\"1\";}', '1527662891');
INSERT INTO `fy_web_log_all` VALUES ('106', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1527662901');
INSERT INTO `fy_web_log_all` VALUES ('107', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1527662901');
INSERT INTO `fy_web_log_all` VALUES ('108', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1527662904');
INSERT INTO `fy_web_log_all` VALUES ('109', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527662909');
INSERT INTO `fy_web_log_all` VALUES ('110', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527662909');
INSERT INTO `fy_web_log_all` VALUES ('111', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527662909');
INSERT INTO `fy_web_log_all` VALUES ('112', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add?pid=0', 'admin', 'AdminNode', 'add', 'GET', 'a:1:{s:3:\"pid\";s:1:\"0\";}', '1527662924');
INSERT INTO `fy_web_log_all` VALUES ('113', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1527662935');
INSERT INTO `fy_web_log_all` VALUES ('114', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html?realname=luo&account=&email=&mobile=', 'admin', 'AdminUser', 'index', 'GET', 'a:4:{s:8:\"realname\";s:3:\"luo\";s:7:\"account\";s:0:\"\";s:5:\"email\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}', '1527662944');
INSERT INTO `fy_web_log_all` VALUES ('115', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html?realname=&account=&email=&mobile=', 'admin', 'AdminUser', 'index', 'GET', 'a:4:{s:8:\"realname\";s:0:\"\";s:7:\"account\";s:0:\"\";s:5:\"email\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}', '1527662949');
INSERT INTO `fy_web_log_all` VALUES ('116', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html?realname=demo&account=&email=&mobile=', 'admin', 'AdminUser', 'index', 'GET', 'a:4:{s:8:\"realname\";s:4:\"demo\";s:7:\"account\";s:0:\"\";s:5:\"email\";s:0:\"\";s:6:\"mobile\";s:0:\"\";}', '1527662958');
INSERT INTO `fy_web_log_all` VALUES ('117', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/add.html', 'admin', 'AdminUser', 'add', 'GET', 'a:0:{}', '1527662962');
INSERT INTO `fy_web_log_all` VALUES ('118', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1527662969');
INSERT INTO `fy_web_log_all` VALUES ('119', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1527662970');
INSERT INTO `fy_web_log_all` VALUES ('120', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1527662973');
INSERT INTO `fy_web_log_all` VALUES ('121', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1527662974');
INSERT INTO `fy_web_log_all` VALUES ('122', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1527662975');
INSERT INTO `fy_web_log_all` VALUES ('123', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1527662976');
INSERT INTO `fy_web_log_all` VALUES ('124', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527662980');
INSERT INTO `fy_web_log_all` VALUES ('125', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/add.html', 'admin', 'AdminGroup', 'add', 'GET', 'a:0:{}', '1527662987');
INSERT INTO `fy_web_log_all` VALUES ('126', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/add.html', 'admin', 'AdminGroup', 'add', 'POST', 'a:6:{s:2:\"id\";s:0:\"\";s:4:\"name\";s:4:\"test\";s:4:\"icon\";s:0:\"\";s:4:\"sort\";s:2:\"50\";s:6:\"status\";s:1:\"1\";s:6:\"remark\";s:4:\"test\";}', '1527663015');
INSERT INTO `fy_web_log_all` VALUES ('127', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527663016');
INSERT INTO `fy_web_log_all` VALUES ('128', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/edit/id/3.html', 'admin', 'AdminGroup', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1527663024');
INSERT INTO `fy_web_log_all` VALUES ('129', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/forbid.html', 'admin', 'AdminGroup', 'forbid', 'POST', 'a:1:{s:2:\"id\";s:0:\"\";}', '1527663037');
INSERT INTO `fy_web_log_all` VALUES ('130', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527663037');
INSERT INTO `fy_web_log_all` VALUES ('131', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/resume.html', 'admin', 'AdminGroup', 'resume', 'POST', 'a:1:{s:2:\"id\";s:0:\"\";}', '1527663042');
INSERT INTO `fy_web_log_all` VALUES ('132', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527663043');
INSERT INTO `fy_web_log_all` VALUES ('133', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/forbid.html', 'admin', 'AdminGroup', 'forbid', 'POST', 'a:1:{s:2:\"id\";s:0:\"\";}', '1527663048');
INSERT INTO `fy_web_log_all` VALUES ('134', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527663048');
INSERT INTO `fy_web_log_all` VALUES ('135', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/forbid.html', 'admin', 'AdminGroup', 'forbid', 'POST', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1527663061');
INSERT INTO `fy_web_log_all` VALUES ('136', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527663061');
INSERT INTO `fy_web_log_all` VALUES ('137', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/resume.html', 'admin', 'AdminGroup', 'resume', 'POST', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1527663066');
INSERT INTO `fy_web_log_all` VALUES ('138', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527663066');
INSERT INTO `fy_web_log_all` VALUES ('139', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/recyclebin.html', 'admin', 'AdminGroup', 'recyclebin', 'GET', 'a:0:{}', '1527663073');
INSERT INTO `fy_web_log_all` VALUES ('140', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1527663076');
INSERT INTO `fy_web_log_all` VALUES ('141', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1527663079');
INSERT INTO `fy_web_log_all` VALUES ('142', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1527663079');
INSERT INTO `fy_web_log_all` VALUES ('143', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1527663086');
INSERT INTO `fy_web_log_all` VALUES ('144', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/resume.html', 'admin', 'AdminRole', 'resume', 'POST', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1527663110');
INSERT INTO `fy_web_log_all` VALUES ('145', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1527663111');
INSERT INTO `fy_web_log_all` VALUES ('146', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1527663154');
INSERT INTO `fy_web_log_all` VALUES ('147', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/login_log/index.html', 'admin', 'LoginLog', 'index', 'GET', 'a:0:{}', '1527663166');
INSERT INTO `fy_web_log_all` VALUES ('148', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/index.html', 'admin', 'WebLog', 'index', 'GET', 'a:0:{}', '1527663169');
INSERT INTO `fy_web_log_all` VALUES ('149', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/detail/id/147.html', 'admin', 'WebLog', 'detail', 'GET', 'a:1:{s:2:\"id\";s:3:\"147\";}', '1527663182');
INSERT INTO `fy_web_log_all` VALUES ('150', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/password.html', 'admin', 'Pub', 'password', 'GET', 'a:0:{}', '1527663212');
INSERT INTO `fy_web_log_all` VALUES ('151', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527663315');
INSERT INTO `fy_web_log_all` VALUES ('152', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1527663316');
INSERT INTO `fy_web_log_all` VALUES ('153', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/access/id/2.html', 'admin', 'AdminRole', 'access', 'GET', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1527663319');
INSERT INTO `fy_web_log_all` VALUES ('154', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/add.html', 'admin', 'AdminRole', 'add', 'GET', 'a:0:{}', '1527663679');
INSERT INTO `fy_web_log_all` VALUES ('155', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527663684');
INSERT INTO `fy_web_log_all` VALUES ('156', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1527663686');
INSERT INTO `fy_web_log_all` VALUES ('157', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/add.html', 'admin', 'AdminRole', 'add', 'GET', 'a:0:{}', '1527663698');
INSERT INTO `fy_web_log_all` VALUES ('158', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/add.html', 'admin', 'AdminRole', 'add', 'POST', 'a:4:{s:2:\"id\";s:0:\"\";s:4:\"name\";s:4:\"test\";s:6:\"status\";s:1:\"1\";s:6:\"remark\";s:11:\"testsartsrt\";}', '1527663706');
INSERT INTO `fy_web_log_all` VALUES ('159', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1527663706');
INSERT INTO `fy_web_log_all` VALUES ('160', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1527663709');
INSERT INTO `fy_web_log_all` VALUES ('161', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/add.html', 'admin', 'AdminUser', 'add', 'GET', 'a:0:{}', '1527663712');
INSERT INTO `fy_web_log_all` VALUES ('162', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/add.html', 'admin', 'AdminUser', 'add', 'POST', 'a:8:{s:2:\"id\";s:0:\"\";s:7:\"account\";s:5:\"test1\";s:8:\"realname\";s:9:\"罗正波\";s:8:\"password\";s:6:\"123456\";s:5:\"email\";s:17:\"1060049850@qq.com\";s:6:\"mobile\";s:11:\"18285111561\";s:6:\"status\";s:1:\"1\";s:6:\"remark\";s:4:\"test\";}', '1527663753');
INSERT INTO `fy_web_log_all` VALUES ('163', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1527663753');
INSERT INTO `fy_web_log_all` VALUES ('164', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1527663780');
INSERT INTO `fy_web_log_all` VALUES ('165', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527663789');
INSERT INTO `fy_web_log_all` VALUES ('166', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/edit/id/1.html', 'admin', 'AdminGroup', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1527663794');
INSERT INTO `fy_web_log_all` VALUES ('167', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/index.html', 'admin', 'WebLog', 'index', 'GET', 'a:0:{}', '1527663880');
INSERT INTO `fy_web_log_all` VALUES ('168', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1527663890');
INSERT INTO `fy_web_log_all` VALUES ('169', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1527663893');
INSERT INTO `fy_web_log_all` VALUES ('170', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1527663894');
INSERT INTO `fy_web_log_all` VALUES ('171', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527663950');
INSERT INTO `fy_web_log_all` VALUES ('172', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527663952');
INSERT INTO `fy_web_log_all` VALUES ('173', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527663952');
INSERT INTO `fy_web_log_all` VALUES ('174', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527663952');
INSERT INTO `fy_web_log_all` VALUES ('175', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1527663955');
INSERT INTO `fy_web_log_all` VALUES ('176', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/index.html', 'admin', 'WebLog', 'index', 'GET', 'a:0:{}', '1527663986');
INSERT INTO `fy_web_log_all` VALUES ('177', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/logout.html', 'admin', 'Pub', 'logout', 'GET', 'a:0:{}', '1527664014');
INSERT INTO `fy_web_log_all` VALUES ('178', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1527664017');
INSERT INTO `fy_web_log_all` VALUES ('179', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:3:{s:7:\"account\";s:5:\"test1\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"vvrt\";}', '1527664031');
INSERT INTO `fy_web_log_all` VALUES ('180', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:3:{s:7:\"account\";s:5:\"test1\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"l27f\";}', '1527664040');
INSERT INTO `fy_web_log_all` VALUES ('181', '3', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1527664046');
INSERT INTO `fy_web_log_all` VALUES ('182', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1527664108');
INSERT INTO `fy_web_log_all` VALUES ('183', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1527664108');
INSERT INTO `fy_web_log_all` VALUES ('184', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:5:\"admin\";s:7:\"captcha\";s:4:\"t52r\";}', '1527664124');
INSERT INTO `fy_web_log_all` VALUES ('185', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"t52r\";}', '1527664132');
INSERT INTO `fy_web_log_all` VALUES ('186', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"ipv6\";}', '1527664138');
INSERT INTO `fy_web_log_all` VALUES ('187', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1527664138');
INSERT INTO `fy_web_log_all` VALUES ('188', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1527664139');
INSERT INTO `fy_web_log_all` VALUES ('189', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1527664148');
INSERT INTO `fy_web_log_all` VALUES ('190', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/edit/id/3.html', 'admin', 'AdminUser', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1527664157');
INSERT INTO `fy_web_log_all` VALUES ('191', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527664176');
INSERT INTO `fy_web_log_all` VALUES ('192', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527664179');
INSERT INTO `fy_web_log_all` VALUES ('193', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527664179');
INSERT INTO `fy_web_log_all` VALUES ('194', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527664180');
INSERT INTO `fy_web_log_all` VALUES ('195', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1527664180');
INSERT INTO `fy_web_log_all` VALUES ('196', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1527664182');
INSERT INTO `fy_web_log_all` VALUES ('197', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1527664183');
INSERT INTO `fy_web_log_all` VALUES ('198', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/index.html', 'admin', 'WebLog', 'index', 'GET', 'a:0:{}', '1527664204');
INSERT INTO `fy_web_log_all` VALUES ('199', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/index.html?p=2', 'admin', 'WebLog', 'index', 'GET', 'a:1:{s:1:\"p\";s:1:\"2\";}', '1527664214');
INSERT INTO `fy_web_log_all` VALUES ('200', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/index.html?p=3', 'admin', 'WebLog', 'index', 'GET', 'a:1:{s:1:\"p\";s:1:\"3\";}', '1527664220');
INSERT INTO `fy_web_log_all` VALUES ('201', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/index.html?p=4', 'admin', 'WebLog', 'index', 'GET', 'a:1:{s:1:\"p\";s:1:\"4\";}', '1527664222');
INSERT INTO `fy_web_log_all` VALUES ('202', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/index.html?p=5', 'admin', 'WebLog', 'index', 'GET', 'a:1:{s:1:\"p\";s:1:\"5\";}', '1527664225');
INSERT INTO `fy_web_log_all` VALUES ('203', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/index.html?p=6', 'admin', 'WebLog', 'index', 'GET', 'a:1:{s:1:\"p\";s:1:\"6\";}', '1527664228');
INSERT INTO `fy_web_log_all` VALUES ('204', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527664293');
INSERT INTO `fy_web_log_all` VALUES ('205', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1527664294');
INSERT INTO `fy_web_log_all` VALUES ('206', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527664294');
INSERT INTO `fy_web_log_all` VALUES ('207', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527664295');
INSERT INTO `fy_web_log_all` VALUES ('208', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/user/id/3.html', 'admin', 'AdminRole', 'user', 'GET', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1527664301');
INSERT INTO `fy_web_log_all` VALUES ('209', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/user/id/2.html', 'admin', 'AdminRole', 'user', 'GET', 'a:1:{s:2:\"id\";s:1:\"2\";}', '1527664311');
INSERT INTO `fy_web_log_all` VALUES ('210', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/user/id/1.html', 'admin', 'AdminRole', 'user', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1527664315');
INSERT INTO `fy_web_log_all` VALUES ('211', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/user/id/3.html', 'admin', 'AdminRole', 'user', 'GET', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1527664320');
INSERT INTO `fy_web_log_all` VALUES ('212', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/user/id/3.html', 'admin', 'AdminRole', 'user', 'POST', 'a:2:{s:2:\"id\";s:1:\"3\";s:7:\"user_id\";a:1:{i:0;s:1:\"3\";}}', '1527664325');
INSERT INTO `fy_web_log_all` VALUES ('213', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1527664330');
INSERT INTO `fy_web_log_all` VALUES ('214', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/edit/id/3.html', 'admin', 'AdminUser', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1527664333');
INSERT INTO `fy_web_log_all` VALUES ('215', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1527664339');
INSERT INTO `fy_web_log_all` VALUES ('216', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/access/id/3.html', 'admin', 'AdminRole', 'access', 'GET', 'a:1:{s:2:\"id\";s:1:\"3\";}', '1527664348');
INSERT INTO `fy_web_log_all` VALUES ('217', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/access/id/3.html', 'admin', 'AdminRole', 'access', 'POST', 'a:2:{s:2:\"id\";s:1:\"3\";s:7:\"node_id\";a:14:{i:0;s:5:\"1_1_0\";i:1;s:5:\"2_2_1\";i:2;s:6:\"51_3_2\";i:3;s:6:\"52_3_2\";i:4;s:6:\"53_3_2\";i:5;s:6:\"54_3_2\";i:6;s:6:\"55_3_2\";i:7;s:6:\"64_3_2\";i:8;s:6:\"65_3_2\";i:9;s:6:\"66_3_2\";i:10;s:6:\"67_3_2\";i:11;s:6:\"68_3_2\";i:12;s:6:\"69_3_2\";i:13;s:6:\"70_3_2\";}}', '1527664359');
INSERT INTO `fy_web_log_all` VALUES ('218', '3', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1527664364');
INSERT INTO `fy_web_log_all` VALUES ('219', '3', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1527664365');
INSERT INTO `fy_web_log_all` VALUES ('220', '3', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527664367');
INSERT INTO `fy_web_log_all` VALUES ('221', '3', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527664374');
INSERT INTO `fy_web_log_all` VALUES ('222', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1527664451');
INSERT INTO `fy_web_log_all` VALUES ('223', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527664452');
INSERT INTO `fy_web_log_all` VALUES ('224', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527664453');
INSERT INTO `fy_web_log_all` VALUES ('225', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527664453');
INSERT INTO `fy_web_log_all` VALUES ('226', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add?pid=0', 'admin', 'AdminNode', 'add', 'GET', 'a:1:{s:3:\"pid\";s:1:\"0\";}', '1527664478');
INSERT INTO `fy_web_log_all` VALUES ('227', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"0\";}', '1527664490');
INSERT INTO `fy_web_log_all` VALUES ('228', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1527664500');
INSERT INTO `fy_web_log_all` VALUES ('229', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1527664501');
INSERT INTO `fy_web_log_all` VALUES ('230', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527664509');
INSERT INTO `fy_web_log_all` VALUES ('231', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527664510');
INSERT INTO `fy_web_log_all` VALUES ('232', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527664511');
INSERT INTO `fy_web_log_all` VALUES ('233', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"0\";}', '1527664515');
INSERT INTO `fy_web_log_all` VALUES ('234', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/resume.html', 'admin', 'AdminNode', 'resume', 'POST', 'a:1:{s:2:\"id\";s:3:\"6,7\";}', '1527664563');
INSERT INTO `fy_web_log_all` VALUES ('235', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527664563');
INSERT INTO `fy_web_log_all` VALUES ('236', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527664563');
INSERT INTO `fy_web_log_all` VALUES ('237', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"0\";}', '1527664564');
INSERT INTO `fy_web_log_all` VALUES ('238', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527664567');
INSERT INTO `fy_web_log_all` VALUES ('239', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527664570');
INSERT INTO `fy_web_log_all` VALUES ('240', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1527664573');
INSERT INTO `fy_web_log_all` VALUES ('241', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1527664574');
INSERT INTO `fy_web_log_all` VALUES ('242', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527664592');
INSERT INTO `fy_web_log_all` VALUES ('243', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527664592');
INSERT INTO `fy_web_log_all` VALUES ('244', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527664593');
INSERT INTO `fy_web_log_all` VALUES ('245', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"0\";}', '1527664595');
INSERT INTO `fy_web_log_all` VALUES ('246', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1527664606');
INSERT INTO `fy_web_log_all` VALUES ('247', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1527664614');
INSERT INTO `fy_web_log_all` VALUES ('248', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1527664620');
INSERT INTO `fy_web_log_all` VALUES ('249', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1527664621');
INSERT INTO `fy_web_log_all` VALUES ('250', '3', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Chrome(41.0.2272.89)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527664805');
INSERT INTO `fy_web_log_all` VALUES ('251', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/one.two.three.four/index.html', 'admin', 'one.two.three.Four', 'index', 'GET', 'a:0:{}', '1527664814');
INSERT INTO `fy_web_log_all` VALUES ('252', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/imageupload.html', 'admin', 'Demo', 'imageupload', 'GET', 'a:0:{}', '1527664827');
INSERT INTO `fy_web_log_all` VALUES ('253', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/qrcode.html', 'admin', 'Demo', 'qrcode', 'GET', 'a:0:{}', '1527664830');
INSERT INTO `fy_web_log_all` VALUES ('254', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/one.two.three.four/index.html', 'admin', 'one.two.three.Four', 'index', 'GET', 'a:0:{}', '1527664831');
INSERT INTO `fy_web_log_all` VALUES ('255', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/one.two.three.four/index.html', 'admin', 'one.two.three.Four', 'index', 'GET', 'a:0:{}', '1527664835');
INSERT INTO `fy_web_log_all` VALUES ('256', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/qrcode.html', 'admin', 'Demo', 'qrcode', 'GET', 'a:0:{}', '1527664847');
INSERT INTO `fy_web_log_all` VALUES ('257', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527671800');
INSERT INTO `fy_web_log_all` VALUES ('258', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527671801');
INSERT INTO `fy_web_log_all` VALUES ('259', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527671801');
INSERT INTO `fy_web_log_all` VALUES ('260', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527671804');
INSERT INTO `fy_web_log_all` VALUES ('261', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527671805');
INSERT INTO `fy_web_log_all` VALUES ('262', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527671805');
INSERT INTO `fy_web_log_all` VALUES ('263', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527671806');
INSERT INTO `fy_web_log_all` VALUES ('264', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527671807');
INSERT INTO `fy_web_log_all` VALUES ('265', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527671807');
INSERT INTO `fy_web_log_all` VALUES ('266', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1527671813');
INSERT INTO `fy_web_log_all` VALUES ('267', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1527671815');
INSERT INTO `fy_web_log_all` VALUES ('268', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1527671816');
INSERT INTO `fy_web_log_all` VALUES ('269', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1527671816');
INSERT INTO `fy_web_log_all` VALUES ('270', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1527671816');
INSERT INTO `fy_web_log_all` VALUES ('271', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/index.html', 'admin', 'WebLog', 'index', 'GET', 'a:0:{}', '1527671825');
INSERT INTO `fy_web_log_all` VALUES ('272', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/index.html?p=2', 'admin', 'WebLog', 'index', 'GET', 'a:1:{s:1:\"p\";s:1:\"2\";}', '1527671849');
INSERT INTO `fy_web_log_all` VALUES ('273', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/index.html?p=1', 'admin', 'WebLog', 'index', 'GET', 'a:1:{s:1:\"p\";s:1:\"1\";}', '1527671856');
INSERT INTO `fy_web_log_all` VALUES ('274', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/index.html?p=1', 'admin', 'WebLog', 'index', 'GET', 'a:1:{s:1:\"p\";s:1:\"1\";}', '1527671859');
INSERT INTO `fy_web_log_all` VALUES ('275', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/mail.html', 'admin', 'Demo', 'mail', 'GET', 'a:0:{}', '1527671861');
INSERT INTO `fy_web_log_all` VALUES ('276', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/qiniu.html', 'admin', 'Demo', 'qiniu', 'GET', 'a:0:{}', '1527671865');
INSERT INTO `fy_web_log_all` VALUES ('277', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/hashids.html', 'admin', 'Demo', 'hashids', 'GET', 'a:0:{}', '1527671866');
INSERT INTO `fy_web_log_all` VALUES ('278', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/hashids.html', 'admin', 'Demo', 'hashids', 'POST', 'a:1:{s:2:\"id\";s:7:\"xdvgxcv\";}', '1527671869');
INSERT INTO `fy_web_log_all` VALUES ('279', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/hashids.html', 'admin', 'Demo', 'hashids', 'POST', 'a:1:{s:2:\"id\";s:7:\"xdvgxcv\";}', '1527671874');
INSERT INTO `fy_web_log_all` VALUES ('280', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/hashids.html', 'admin', 'Demo', 'hashids', 'POST', 'a:1:{s:2:\"id\";s:7:\"xdvgxcv\";}', '1527671879');
INSERT INTO `fy_web_log_all` VALUES ('281', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/hashids.html', 'admin', 'Demo', 'hashids', 'POST', 'a:1:{s:2:\"id\";s:7:\"xdvgxcv\";}', '1527671880');
INSERT INTO `fy_web_log_all` VALUES ('282', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/hashids.html', 'admin', 'Demo', 'hashids', 'POST', 'a:1:{s:2:\"id\";s:3:\"234\";}', '1527671884');
INSERT INTO `fy_web_log_all` VALUES ('283', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/tablefixed.html', 'admin', 'Demo', 'tablefixed', 'GET', 'a:0:{}', '1527671889');
INSERT INTO `fy_web_log_all` VALUES ('284', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/ueditor.html', 'admin', 'Demo', 'ueditor', 'GET', 'a:0:{}', '1527671891');
INSERT INTO `fy_web_log_all` VALUES ('285', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/ueditor/index.html?action=config&&noCache=1527671892665', 'admin', 'Ueditor', 'index', 'GET', 'a:2:{s:6:\"action\";s:6:\"config\";s:7:\"noCache\";s:13:\"1527671892665\";}', '1527671892');
INSERT INTO `fy_web_log_all` VALUES ('286', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1528095737');
INSERT INTO `fy_web_log_all` VALUES ('287', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1528095738');
INSERT INTO `fy_web_log_all` VALUES ('288', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:5:\"admin\";s:7:\"captcha\";s:4:\"huqy\";}', '1528095750');
INSERT INTO `fy_web_log_all` VALUES ('289', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:8:\"admin123\";s:7:\"captcha\";s:4:\"huqy\";}', '1528095763');
INSERT INTO `fy_web_log_all` VALUES ('290', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:3:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:8:\"admin123\";s:7:\"captcha\";s:4:\"ivee\";}', '1528095769');
INSERT INTO `fy_web_log_all` VALUES ('291', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:4:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"ivee\";s:6:\"online\";s:1:\"1\";}', '1528095779');
INSERT INTO `fy_web_log_all` VALUES ('292', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:4:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"c2wk\";s:6:\"online\";s:1:\"1\";}', '1528096059');
INSERT INTO `fy_web_log_all` VALUES ('293', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1528096060');
INSERT INTO `fy_web_log_all` VALUES ('294', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:4:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"c2wk\";s:6:\"online\";s:1:\"1\";}', '1528096061');
INSERT INTO `fy_web_log_all` VALUES ('295', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1528096062');
INSERT INTO `fy_web_log_all` VALUES ('296', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1528096067');
INSERT INTO `fy_web_log_all` VALUES ('297', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1528096072');
INSERT INTO `fy_web_log_all` VALUES ('298', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1528096073');
INSERT INTO `fy_web_log_all` VALUES ('299', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1528096073');
INSERT INTO `fy_web_log_all` VALUES ('300', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1528096082');
INSERT INTO `fy_web_log_all` VALUES ('301', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1528096085');
INSERT INTO `fy_web_log_all` VALUES ('302', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1528096089');
INSERT INTO `fy_web_log_all` VALUES ('303', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1528096100');
INSERT INTO `fy_web_log_all` VALUES ('304', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1528096875');
INSERT INTO `fy_web_log_all` VALUES ('305', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1528096875');
INSERT INTO `fy_web_log_all` VALUES ('306', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1528098039');
INSERT INTO `fy_web_log_all` VALUES ('307', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1528098041');
INSERT INTO `fy_web_log_all` VALUES ('308', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1528098044');
INSERT INTO `fy_web_log_all` VALUES ('309', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1528098044');
INSERT INTO `fy_web_log_all` VALUES ('310', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1528098045');
INSERT INTO `fy_web_log_all` VALUES ('311', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_role/index.html', 'admin', 'AdminRole', 'index', 'GET', 'a:0:{}', '1528098056');
INSERT INTO `fy_web_log_all` VALUES ('312', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1528098058');
INSERT INTO `fy_web_log_all` VALUES ('313', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1528101831');
INSERT INTO `fy_web_log_all` VALUES ('314', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1528101836');
INSERT INTO `fy_web_log_all` VALUES ('315', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1528101837');
INSERT INTO `fy_web_log_all` VALUES ('316', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1528101837');
INSERT INTO `fy_web_log_all` VALUES ('317', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_user/index.html', 'admin', 'AdminUser', 'index', 'GET', 'a:0:{}', '1528101838');
INSERT INTO `fy_web_log_all` VALUES ('318', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1528101838');
INSERT INTO `fy_web_log_all` VALUES ('319', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1528101838');
INSERT INTO `fy_web_log_all` VALUES ('320', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/add.html', 'admin', 'NodeMap', 'add', 'GET', 'a:0:{}', '1528101838');
INSERT INTO `fy_web_log_all` VALUES ('321', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1528160400');
INSERT INTO `fy_web_log_all` VALUES ('322', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1528160400');
INSERT INTO `fy_web_log_all` VALUES ('323', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:4:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:5:\"admin\";s:7:\"captcha\";s:4:\"wfbn\";s:6:\"online\";s:1:\"1\";}', '1528160412');
INSERT INTO `fy_web_log_all` VALUES ('324', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:4:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"vv4g\";s:6:\"online\";s:1:\"1\";}', '1528160426');
INSERT INTO `fy_web_log_all` VALUES ('325', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1528160426');
INSERT INTO `fy_web_log_all` VALUES ('326', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1528160427');
INSERT INTO `fy_web_log_all` VALUES ('327', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1528160432');
INSERT INTO `fy_web_log_all` VALUES ('328', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1528160432');
INSERT INTO `fy_web_log_all` VALUES ('329', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1528160433');
INSERT INTO `fy_web_log_all` VALUES ('330', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1528160439');
INSERT INTO `fy_web_log_all` VALUES ('331', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/add.html', 'admin', 'NodeMap', 'add', 'GET', 'a:0:{}', '1528160441');
INSERT INTO `fy_web_log_all` VALUES ('332', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/add.html', 'admin', 'NodeMap', 'add', 'POST', 'a:6:{s:2:\"id\";s:0:\"\";s:6:\"module\";s:5:\"admin\";s:10:\"controller\";s:9:\"Sildeshow\";s:6:\"action\";s:5:\"index\";s:6:\"method\";s:3:\"ALL\";s:7:\"comment\";s:9:\"轮播图\";}', '1528160486');
INSERT INTO `fy_web_log_all` VALUES ('333', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1528160487');
INSERT INTO `fy_web_log_all` VALUES ('334', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1528160492');
INSERT INTO `fy_web_log_all` VALUES ('335', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1528160493');
INSERT INTO `fy_web_log_all` VALUES ('336', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1528160493');
INSERT INTO `fy_web_log_all` VALUES ('337', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add?pid=27', 'admin', 'AdminNode', 'add', 'GET', 'a:1:{s:3:\"pid\";s:2:\"27\";}', '1528160511');
INSERT INTO `fy_web_log_all` VALUES ('338', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add', 'admin', 'AdminNode', 'add', 'POST', 'a:9:{s:2:\"id\";s:0:\"\";s:3:\"pid\";s:2:\"27\";s:5:\"level\";s:1:\"4\";s:8:\"group_id\";s:1:\"1\";s:5:\"title\";s:9:\"轮播图\";s:4:\"name\";s:9:\"Sildeshow\";s:4:\"type\";s:1:\"1\";s:4:\"sort\";s:2:\"50\";s:6:\"status\";s:1:\"1\";}', '1528160570');
INSERT INTO `fy_web_log_all` VALUES ('339', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1528160570');
INSERT INTO `fy_web_log_all` VALUES ('340', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1528160571');
INSERT INTO `fy_web_log_all` VALUES ('341', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1528160571');
INSERT INTO `fy_web_log_all` VALUES ('342', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/delete', 'admin', 'AdminNode', 'delete', 'POST', 'a:1:{s:2:\"id\";s:2:\"71\";}', '1528160603');
INSERT INTO `fy_web_log_all` VALUES ('343', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add?pid=0', 'admin', 'AdminNode', 'add', 'GET', 'a:1:{s:3:\"pid\";s:1:\"0\";}', '1528160611');
INSERT INTO `fy_web_log_all` VALUES ('344', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add', 'admin', 'AdminNode', 'add', 'POST', 'a:9:{s:2:\"id\";s:0:\"\";s:3:\"pid\";s:1:\"0\";s:5:\"level\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";s:5:\"title\";s:9:\"轮播图\";s:4:\"name\";s:9:\"Sildeshow\";s:4:\"type\";s:1:\"1\";s:4:\"sort\";s:2:\"50\";s:6:\"status\";s:1:\"1\";}', '1528160627');
INSERT INTO `fy_web_log_all` VALUES ('345', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1528160628');
INSERT INTO `fy_web_log_all` VALUES ('346', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1528160628');
INSERT INTO `fy_web_log_all` VALUES ('347', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1528160629');
INSERT INTO `fy_web_log_all` VALUES ('348', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:2:\"72\";}', '1528160687');
INSERT INTO `fy_web_log_all` VALUES ('349', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/delete', 'admin', 'AdminNode', 'delete', 'POST', 'a:1:{s:2:\"id\";s:2:\"72\";}', '1528160697');
INSERT INTO `fy_web_log_all` VALUES ('350', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add?pid=0', 'admin', 'AdminNode', 'add', 'GET', 'a:1:{s:3:\"pid\";s:1:\"0\";}', '1528160718');
INSERT INTO `fy_web_log_all` VALUES ('351', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add', 'admin', 'AdminNode', 'add', 'POST', 'a:9:{s:2:\"id\";s:0:\"\";s:3:\"pid\";s:1:\"0\";s:5:\"level\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";s:5:\"title\";s:9:\"轮播图\";s:4:\"name\";s:9:\"sildeshow\";s:4:\"type\";s:1:\"1\";s:4:\"sort\";s:2:\"50\";s:6:\"status\";s:1:\"1\";}', '1528160743');
INSERT INTO `fy_web_log_all` VALUES ('352', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1528160743');
INSERT INTO `fy_web_log_all` VALUES ('353', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1528160744');
INSERT INTO `fy_web_log_all` VALUES ('354', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1528160744');
INSERT INTO `fy_web_log_all` VALUES ('355', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"2\";}', '1528160759');
INSERT INTO `fy_web_log_all` VALUES ('356', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1528160761');
INSERT INTO `fy_web_log_all` VALUES ('357', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add?pid=73', 'admin', 'AdminNode', 'add', 'GET', 'a:1:{s:3:\"pid\";s:2:\"73\";}', '1528160783');
INSERT INTO `fy_web_log_all` VALUES ('358', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add', 'admin', 'AdminNode', 'add', 'POST', 'a:9:{s:2:\"id\";s:0:\"\";s:3:\"pid\";s:2:\"73\";s:5:\"level\";s:1:\"2\";s:8:\"group_id\";s:1:\"0\";s:5:\"title\";s:6:\"添加\";s:4:\"name\";s:3:\"add\";s:4:\"type\";s:1:\"0\";s:4:\"sort\";s:2:\"50\";s:6:\"status\";s:1:\"1\";}', '1528160804');
INSERT INTO `fy_web_log_all` VALUES ('359', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1528160805');
INSERT INTO `fy_web_log_all` VALUES ('360', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1528160805');
INSERT INTO `fy_web_log_all` VALUES ('361', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1528160805');
INSERT INTO `fy_web_log_all` VALUES ('362', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:2:\"73\";}', '1528160810');
INSERT INTO `fy_web_log_all` VALUES ('363', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:2:\"73\";}', '1528160812');
INSERT INTO `fy_web_log_all` VALUES ('364', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:2:\"73\";}', '1528160812');
INSERT INTO `fy_web_log_all` VALUES ('365', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:2:\"73\";s:8:\"group_id\";s:1:\"0\";}', '1528160813');
INSERT INTO `fy_web_log_all` VALUES ('366', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/delete', 'admin', 'AdminNode', 'delete', 'POST', 'a:1:{s:2:\"id\";s:2:\"74\";}', '1528160824');
INSERT INTO `fy_web_log_all` VALUES ('367', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:2:\"73\";}', '1528160825');
INSERT INTO `fy_web_log_all` VALUES ('368', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/delete', 'admin', 'AdminNode', 'delete', 'POST', 'a:1:{s:2:\"id\";s:2:\"73\";}', '1528160829');
INSERT INTO `fy_web_log_all` VALUES ('369', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add?pid=1', 'admin', 'AdminNode', 'add', 'GET', 'a:1:{s:3:\"pid\";s:1:\"1\";}', '1528160832');
INSERT INTO `fy_web_log_all` VALUES ('370', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add', 'admin', 'AdminNode', 'add', 'POST', 'a:9:{s:2:\"id\";s:0:\"\";s:3:\"pid\";s:1:\"1\";s:5:\"level\";s:1:\"2\";s:8:\"group_id\";s:1:\"1\";s:5:\"title\";s:9:\"轮播图\";s:4:\"name\";s:9:\"sildeshow\";s:4:\"type\";s:1:\"1\";s:4:\"sort\";s:2:\"50\";s:6:\"status\";s:1:\"1\";}', '1528160854');
INSERT INTO `fy_web_log_all` VALUES ('371', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1528160855');
INSERT INTO `fy_web_log_all` VALUES ('372', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1528160855');
INSERT INTO `fy_web_log_all` VALUES ('373', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1528160856');
INSERT INTO `fy_web_log_all` VALUES ('374', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add?pid=75', 'admin', 'AdminNode', 'add', 'GET', 'a:1:{s:3:\"pid\";s:2:\"75\";}', '1528160865');
INSERT INTO `fy_web_log_all` VALUES ('375', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add', 'admin', 'AdminNode', 'add', 'POST', 'a:9:{s:2:\"id\";s:0:\"\";s:3:\"pid\";s:2:\"75\";s:5:\"level\";s:1:\"3\";s:8:\"group_id\";s:1:\"0\";s:5:\"title\";s:6:\"添加\";s:4:\"name\";s:3:\"add\";s:4:\"type\";s:1:\"0\";s:4:\"sort\";s:2:\"50\";s:6:\"status\";s:1:\"1\";}', '1528160888');
INSERT INTO `fy_web_log_all` VALUES ('376', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1528160888');
INSERT INTO `fy_web_log_all` VALUES ('377', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1528160889');
INSERT INTO `fy_web_log_all` VALUES ('378', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1528160889');
INSERT INTO `fy_web_log_all` VALUES ('379', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add?pid=75', 'admin', 'AdminNode', 'add', 'GET', 'a:1:{s:3:\"pid\";s:2:\"75\";}', '1528160896');
INSERT INTO `fy_web_log_all` VALUES ('380', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add', 'admin', 'AdminNode', 'add', 'POST', 'a:9:{s:2:\"id\";s:0:\"\";s:3:\"pid\";s:2:\"75\";s:5:\"level\";s:1:\"3\";s:8:\"group_id\";s:1:\"1\";s:5:\"title\";s:6:\"编辑\";s:4:\"name\";s:4:\"edit\";s:4:\"type\";s:1:\"0\";s:4:\"sort\";s:2:\"50\";s:6:\"status\";s:1:\"1\";}', '1528160912');
INSERT INTO `fy_web_log_all` VALUES ('381', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1528160913');
INSERT INTO `fy_web_log_all` VALUES ('382', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1528160913');
INSERT INTO `fy_web_log_all` VALUES ('383', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1528160914');
INSERT INTO `fy_web_log_all` VALUES ('384', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add?pid=75', 'admin', 'AdminNode', 'add', 'GET', 'a:1:{s:3:\"pid\";s:2:\"75\";}', '1528160917');
INSERT INTO `fy_web_log_all` VALUES ('385', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add?pid=75', 'admin', 'AdminNode', 'add', 'GET', 'a:1:{s:3:\"pid\";s:2:\"75\";}', '1528160923');
INSERT INTO `fy_web_log_all` VALUES ('386', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/add', 'admin', 'AdminNode', 'add', 'POST', 'a:9:{s:2:\"id\";s:0:\"\";s:3:\"pid\";s:2:\"75\";s:5:\"level\";s:1:\"3\";s:8:\"group_id\";s:1:\"1\";s:5:\"title\";s:6:\"列表\";s:4:\"name\";s:5:\"index\";s:4:\"type\";s:1:\"0\";s:4:\"sort\";s:2:\"50\";s:6:\"status\";s:1:\"1\";}', '1528160942');
INSERT INTO `fy_web_log_all` VALUES ('387', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1528160942');
INSERT INTO `fy_web_log_all` VALUES ('388', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1528160943');
INSERT INTO `fy_web_log_all` VALUES ('389', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1528160943');
INSERT INTO `fy_web_log_all` VALUES ('390', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1528160949');
INSERT INTO `fy_web_log_all` VALUES ('391', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1528160949');
INSERT INTO `fy_web_log_all` VALUES ('392', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/login_log/index.html', 'admin', 'LoginLog', 'index', 'GET', 'a:0:{}', '1528160958');
INSERT INTO `fy_web_log_all` VALUES ('393', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/index.html', 'admin', 'WebLog', 'index', 'GET', 'a:0:{}', '1528160962');
INSERT INTO `fy_web_log_all` VALUES ('394', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1528161183');
INSERT INTO `fy_web_log_all` VALUES ('395', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/generate/index.html', 'admin', 'Generate', 'index', 'GET', 'a:0:{}', '1528161188');
INSERT INTO `fy_web_log_all` VALUES ('396', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/generate/run.html', 'admin', 'Generate', 'run', 'POST', 'a:14:{s:4:\"file\";s:3:\"all\";s:6:\"module\";s:5:\"admin\";s:10:\"controller\";s:9:\"Sildeshow\";s:5:\"title\";s:0:\"\";s:4:\"form\";a:5:{i:4;a:7:{s:5:\"title\";s:6:\"排序\";s:4:\"name\";s:7:\"orderby\";s:4:\"type\";s:6:\"number\";s:6:\"option\";s:1:\"1\";s:7:\"default\";s:1:\"1\";s:11:\"search_type\";s:4:\"text\";s:8:\"validate\";a:3:{s:8:\"datatype\";s:0:\"\";s:7:\"nullmsg\";s:0:\"\";s:8:\"errormsg\";s:0:\"\";}}i:3;a:8:{s:5:\"title\";s:6:\"状态\";s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"select\";s:6:\"option\";s:13:\"启用#禁用\";s:7:\"default\";s:3:\"1#2\";s:11:\"search_type\";s:4:\"text\";s:7:\"require\";s:1:\"1\";s:8:\"validate\";a:3:{s:8:\"datatype\";s:1:\"*\";s:7:\"nullmsg\";s:0:\"\";s:8:\"errormsg\";s:0:\"\";}}i:2;a:8:{s:5:\"title\";s:12:\"跳转链接\";s:4:\"name\";s:3:\"url\";s:4:\"type\";s:4:\"text\";s:6:\"option\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"search_type\";s:4:\"text\";s:7:\"require\";s:1:\"1\";s:8:\"validate\";a:3:{s:8:\"datatype\";s:1:\"*\";s:7:\"nullmsg\";s:0:\"\";s:8:\"errormsg\";s:0:\"\";}}i:0;a:9:{s:5:\"title\";s:12:\"产品名称\";s:4:\"name\";s:4:\"name\";s:4:\"type\";s:4:\"text\";s:6:\"option\";s:0:\"\";s:7:\"default\";s:0:\"\";s:6:\"search\";s:1:\"1\";s:11:\"search_type\";s:4:\"text\";s:7:\"require\";s:1:\"1\";s:8:\"validate\";a:3:{s:8:\"datatype\";s:1:\"*\";s:7:\"nullmsg\";s:0:\"\";s:8:\"errormsg\";s:0:\"\";}}i:1;a:8:{s:5:\"title\";s:6:\"图片\";s:4:\"name\";s:3:\"pic\";s:4:\"type\";s:4:\"text\";s:6:\"option\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"search_type\";s:4:\"text\";s:7:\"require\";s:1:\"1\";s:8:\"validate\";a:3:{s:8:\"datatype\";s:1:\"*\";s:7:\"nullmsg\";s:0:\"\";s:8:\"errormsg\";s:0:\"\";}}}s:12:\"create_table\";s:1:\"1\";s:18:\"create_table_force\";s:1:\"1\";s:12:\"table_engine\";s:6:\"InnoDB\";s:10:\"table_name\";s:0:\"\";s:5:\"field\";a:5:{i:4;a:5:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:10:\"tinyint(1)\";s:7:\"default\";s:1:\"1\";s:7:\"comment\";s:6:\"状态\";s:5:\"extra\";s:0:\"\";}i:3;a:5:{s:4:\"name\";s:7:\"orderby\";s:4:\"type\";s:3:\"int\";s:7:\"default\";s:1:\"1\";s:7:\"comment\";s:9:\"排序值\";s:5:\"extra\";s:0:\"\";}i:2;a:6:{s:4:\"name\";s:3:\"pic\";s:4:\"type\";s:12:\"varchar(255)\";s:7:\"default\";s:0:\"\";s:8:\"not_null\";s:1:\"1\";s:7:\"comment\";s:6:\"图片\";s:5:\"extra\";s:0:\"\";}i:1;a:7:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:7:\"int(11)\";s:7:\"default\";s:0:\"\";s:8:\"not_null\";s:1:\"1\";s:3:\"key\";s:1:\"1\";s:7:\"comment\";s:0:\"\";s:5:\"extra\";s:14:\"auto_increment\";}i:0;a:6:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:12:\"varchar(255)\";s:7:\"default\";s:0:\"\";s:8:\"not_null\";s:1:\"1\";s:7:\"comment\";s:25:\"产品描述/产品名称\";s:5:\"extra\";s:0:\"\";}}s:4:\"menu\";a:6:{i:0;s:3:\"add\";i:1;s:6:\"forbid\";i:2;s:6:\"resume\";i:3;s:6:\"delete\";i:4;s:10:\"recycleBin\";i:5;s:9:\"saveOrder\";}s:5:\"model\";s:1:\"1\";s:14:\"auto_timestamp\";s:1:\"1\";s:8:\"validate\";s:1:\"1\";}', '1528162025');
INSERT INTO `fy_web_log_all` VALUES ('397', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/generate/index.html', 'admin', 'Generate', 'index', 'GET', 'a:0:{}', '1528162029');
INSERT INTO `fy_web_log_all` VALUES ('398', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/sildeshow/index.html', 'admin', 'Sildeshow', 'index', 'GET', 'a:0:{}', '1528162039');
INSERT INTO `fy_web_log_all` VALUES ('399', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/sildeshow/add.html', 'admin', 'Sildeshow', 'add', 'GET', 'a:0:{}', '1528162043');
INSERT INTO `fy_web_log_all` VALUES ('400', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/generate/index.html', 'admin', 'Generate', 'index', 'GET', 'a:0:{}', '1528162154');
INSERT INTO `fy_web_log_all` VALUES ('401', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/index.html', 'admin', 'AdminGroup', 'index', 'GET', 'a:0:{}', '1528162785');
INSERT INTO `fy_web_log_all` VALUES ('402', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_group/add.html', 'admin', 'AdminGroup', 'add', 'GET', 'a:0:{}', '1528162790');
INSERT INTO `fy_web_log_all` VALUES ('403', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1528162796');
INSERT INTO `fy_web_log_all` VALUES ('404', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/index.html', 'admin', 'WebLog', 'index', 'GET', 'a:0:{}', '1528162798');
INSERT INTO `fy_web_log_all` VALUES ('405', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/login_log/index.html', 'admin', 'LoginLog', 'index', 'GET', 'a:0:{}', '1528162800');
INSERT INTO `fy_web_log_all` VALUES ('406', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/sildeshow/index.html', 'admin', 'Sildeshow', 'index', 'GET', 'a:0:{}', '1528162823');
INSERT INTO `fy_web_log_all` VALUES ('407', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/sildeshow/add.html', 'admin', 'Sildeshow', 'add', 'GET', 'a:0:{}', '1528162828');
INSERT INTO `fy_web_log_all` VALUES ('408', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/generate/index.html', 'admin', 'Generate', 'index', 'GET', 'a:0:{}', '1528162837');
INSERT INTO `fy_web_log_all` VALUES ('409', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/imageupload.html', 'admin', 'Demo', 'imageupload', 'GET', 'a:0:{}', '1528162840');
INSERT INTO `fy_web_log_all` VALUES ('410', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/upload/index/id/upload.html', 'admin', 'Upload', 'index', 'GET', 'a:1:{s:2:\"id\";s:6:\"upload\";}', '1528162843');
INSERT INTO `fy_web_log_all` VALUES ('411', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/upload/listimage.html', 'admin', 'Upload', 'listimage', 'POST', 'a:2:{s:1:\"p\";s:1:\"1\";s:5:\"count\";s:1:\"1\";}', '1528162852');
INSERT INTO `fy_web_log_all` VALUES ('412', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/upload/listimage.html', 'admin', 'Upload', 'listimage', 'POST', 'a:2:{s:1:\"p\";s:1:\"1\";s:5:\"count\";s:1:\"1\";}', '1528162853');
INSERT INTO `fy_web_log_all` VALUES ('413', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/upload/index/id/upload.html', 'admin', 'Upload', 'index', 'GET', 'a:1:{s:2:\"id\";s:6:\"upload\";}', '1528162861');
INSERT INTO `fy_web_log_all` VALUES ('414', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/upload/upload.html', 'admin', 'Upload', 'upload', 'POST', 'a:0:{}', '1528162870');
INSERT INTO `fy_web_log_all` VALUES ('415', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/upload/index/id/upload.html', 'admin', 'Upload', 'index', 'GET', 'a:1:{s:2:\"id\";s:6:\"upload\";}', '1528162873');
INSERT INTO `fy_web_log_all` VALUES ('416', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/upload/remote.html', 'admin', 'Upload', 'remote', 'POST', 'a:1:{s:3:\"url\";s:104:\"https://xkdsaas.oss-cn-shanghai.aliyuncs.com/MerChant/1977/743/1489300498627.jpg?x-oss-process=style/640\";}', '1528162930');
INSERT INTO `fy_web_log_all` VALUES ('417', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/upload/index/id/upload.html', 'admin', 'Upload', 'index', 'GET', 'a:1:{s:2:\"id\";s:6:\"upload\";}', '1528162938');
INSERT INTO `fy_web_log_all` VALUES ('418', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/upload/index/id/upload.html', 'admin', 'Upload', 'index', 'GET', 'a:1:{s:2:\"id\";s:6:\"upload\";}', '1528163259');
INSERT INTO `fy_web_log_all` VALUES ('419', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/upload/listimage.html', 'admin', 'Upload', 'listimage', 'POST', 'a:2:{s:1:\"p\";s:1:\"1\";s:5:\"count\";s:1:\"1\";}', '1528163261');
INSERT INTO `fy_web_log_all` VALUES ('420', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/qrcode.html', 'admin', 'Demo', 'qrcode', 'GET', 'a:0:{}', '1528178061');
INSERT INTO `fy_web_log_all` VALUES ('421', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/tablefixed.html', 'admin', 'Demo', 'tablefixed', 'GET', 'a:0:{}', '1528178063');
INSERT INTO `fy_web_log_all` VALUES ('422', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/password.html', 'admin', 'Pub', 'password', 'GET', 'a:0:{}', '1528178112');
INSERT INTO `fy_web_log_all` VALUES ('423', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/password.html', 'admin', 'Pub', 'password', 'POST', 'a:4:{s:2:\"id\";s:0:\"\";s:11:\"oldpassword\";s:6:\"123456\";s:8:\"password\";s:6:\"123456\";s:10:\"repassword\";s:6:\"123456\";}', '1528178124');
INSERT INTO `fy_web_log_all` VALUES ('424', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1528178147');
INSERT INTO `fy_web_log_all` VALUES ('425', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1528178188');
INSERT INTO `fy_web_log_all` VALUES ('426', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1528178191');
INSERT INTO `fy_web_log_all` VALUES ('427', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/demo/qrcode.html', 'admin', 'Demo', 'qrcode', 'GET', 'a:0:{}', '1528178204');
INSERT INTO `fy_web_log_all` VALUES ('428', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/one.two.three.four/index.html', 'admin', 'one.two.three.Four', 'index', 'GET', 'a:0:{}', '1528178207');
INSERT INTO `fy_web_log_all` VALUES ('429', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/login_log/index.html', 'admin', 'LoginLog', 'index', 'GET', 'a:0:{}', '1528186334');
INSERT INTO `fy_web_log_all` VALUES ('430', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/index.html', 'admin', 'WebLog', 'index', 'GET', 'a:0:{}', '1528186337');
INSERT INTO `fy_web_log_all` VALUES ('431', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/web_log/detail/id/429.html', 'admin', 'WebLog', 'detail', 'GET', 'a:1:{s:2:\"id\";s:3:\"429\";}', '1528186369');
INSERT INTO `fy_web_log_all` VALUES ('432', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/node_map/index.html', 'admin', 'NodeMap', 'index', 'GET', 'a:0:{}', '1528186390');
INSERT INTO `fy_web_log_all` VALUES ('433', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1528186392');
INSERT INTO `fy_web_log_all` VALUES ('434', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1528186393');
INSERT INTO `fy_web_log_all` VALUES ('435', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1528186393');
INSERT INTO `fy_web_log_all` VALUES ('436', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/edit?id=30', 'admin', 'AdminNode', 'edit', 'GET', 'a:1:{s:2:\"id\";s:2:\"30\";}', '1528186402');
INSERT INTO `fy_web_log_all` VALUES ('437', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/edit?id=77', 'admin', 'AdminNode', 'edit', 'GET', 'a:1:{s:2:\"id\";s:2:\"77\";}', '1528186420');
INSERT INTO `fy_web_log_all` VALUES ('438', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/edit', 'admin', 'AdminNode', 'edit', 'POST', 'a:9:{s:2:\"id\";s:2:\"77\";s:3:\"pid\";s:2:\"75\";s:5:\"level\";s:1:\"3\";s:8:\"group_id\";s:1:\"0\";s:5:\"title\";s:6:\"编辑\";s:4:\"name\";s:4:\"edit\";s:4:\"type\";s:1:\"0\";s:4:\"sort\";s:2:\"50\";s:6:\"status\";s:1:\"1\";}', '1528186424');
INSERT INTO `fy_web_log_all` VALUES ('439', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1528186425');
INSERT INTO `fy_web_log_all` VALUES ('440', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1528186426');
INSERT INTO `fy_web_log_all` VALUES ('441', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1528186426');
INSERT INTO `fy_web_log_all` VALUES ('442', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/edit?id=76', 'admin', 'AdminNode', 'edit', 'GET', 'a:1:{s:2:\"id\";s:2:\"76\";}', '1528186433');
INSERT INTO `fy_web_log_all` VALUES ('443', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/edit?id=77', 'admin', 'AdminNode', 'edit', 'GET', 'a:1:{s:2:\"id\";s:2:\"77\";}', '1528186440');
INSERT INTO `fy_web_log_all` VALUES ('444', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/edit?id=78', 'admin', 'AdminNode', 'edit', 'GET', 'a:1:{s:2:\"id\";s:2:\"78\";}', '1528186446');
INSERT INTO `fy_web_log_all` VALUES ('445', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/edit', 'admin', 'AdminNode', 'edit', 'POST', 'a:9:{s:2:\"id\";s:2:\"78\";s:3:\"pid\";s:2:\"75\";s:5:\"level\";s:1:\"3\";s:8:\"group_id\";s:1:\"0\";s:5:\"title\";s:6:\"列表\";s:4:\"name\";s:5:\"index\";s:4:\"type\";s:1:\"0\";s:4:\"sort\";s:2:\"50\";s:6:\"status\";s:1:\"1\";}', '1528186451');
INSERT INTO `fy_web_log_all` VALUES ('446', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index.html', 'admin', 'AdminNode', 'index', 'GET', 'a:0:{}', '1528186451');
INSERT INTO `fy_web_log_all` VALUES ('447', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:2:{s:4:\"type\";s:5:\"group\";s:9:\"module_id\";s:1:\"1\";}', '1528186452');
INSERT INTO `fy_web_log_all` VALUES ('448', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/admin_node/index', 'admin', 'AdminNode', 'index', 'POST', 'a:3:{s:4:\"type\";s:4:\"node\";s:9:\"module_id\";s:1:\"1\";s:8:\"group_id\";s:1:\"1\";}', '1528186452');
INSERT INTO `fy_web_log_all` VALUES ('449', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/sildeshow/index.html', 'admin', 'Sildeshow', 'index', 'GET', 'a:0:{}', '1528186456');
INSERT INTO `fy_web_log_all` VALUES ('450', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/sildeshow/add.html', 'admin', 'Sildeshow', 'add', 'GET', 'a:0:{}', '1528186460');
INSERT INTO `fy_web_log_all` VALUES ('451', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/generate/index.html', 'admin', 'Generate', 'index', 'GET', 'a:0:{}', '1528186489');
INSERT INTO `fy_web_log_all` VALUES ('452', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/sildeshow/index.html', 'admin', 'Sildeshow', 'index', 'GET', 'a:0:{}', '1528186562');
INSERT INTO `fy_web_log_all` VALUES ('453', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/sildeshow/add.html', 'admin', 'Sildeshow', 'add', 'GET', 'a:0:{}', '1528186563');
INSERT INTO `fy_web_log_all` VALUES ('454', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/sildeshow/add.html', 'admin', 'Sildeshow', 'add', 'POST', 'a:6:{s:2:\"id\";s:0:\"\";s:7:\"orderby\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:3:\"url\";s:20:\"http://www.baidu.com\";s:4:\"name\";s:4:\"test\";s:3:\"pic\";s:4:\"test\";}', '1528186585');
INSERT INTO `fy_web_log_all` VALUES ('455', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/sildeshow/index.html', 'admin', 'Sildeshow', 'index', 'GET', 'a:0:{}', '1528186585');
INSERT INTO `fy_web_log_all` VALUES ('456', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/sildeshow/edit/id/1.html', 'admin', 'Sildeshow', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1528186596');
INSERT INTO `fy_web_log_all` VALUES ('457', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/sildeshow/edit/id/1.html', 'admin', 'Sildeshow', 'edit', 'POST', 'a:6:{s:2:\"id\";s:1:\"1\";s:7:\"orderby\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:3:\"url\";s:20:\"http://www.baidu.com\";s:4:\"name\";s:4:\"test\";s:3:\"pic\";s:4:\"test\";}', '1528186607');
INSERT INTO `fy_web_log_all` VALUES ('458', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/sildeshow/index.html', 'admin', 'Sildeshow', 'index', 'GET', 'a:0:{}', '1528186607');
INSERT INTO `fy_web_log_all` VALUES ('459', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/sildeshow/edit/id/1.html', 'admin', 'Sildeshow', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1528186626');
INSERT INTO `fy_web_log_all` VALUES ('460', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/sildeshow/edit/id/1.html', 'admin', 'Sildeshow', 'edit', 'POST', 'a:6:{s:2:\"id\";s:1:\"1\";s:7:\"orderby\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:3:\"url\";s:18:\"http://www.bai.com\";s:4:\"name\";s:4:\"test\";s:3:\"pic\";s:4:\"test\";}', '1528186637');
INSERT INTO `fy_web_log_all` VALUES ('461', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/sildeshow/index.html', 'admin', 'Sildeshow', 'index', 'GET', 'a:0:{}', '1528186637');
INSERT INTO `fy_web_log_all` VALUES ('462', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1528343858');
INSERT INTO `fy_web_log_all` VALUES ('463', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/login.html', 'admin', 'Pub', 'login', 'GET', 'a:0:{}', '1528343859');
INSERT INTO `fy_web_log_all` VALUES ('464', '0', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/pub/checklogin.html', 'admin', 'Pub', 'checklogin', 'POST', 'a:4:{s:7:\"account\";s:5:\"admin\";s:8:\"password\";s:6:\"123456\";s:7:\"captcha\";s:4:\"asme\";s:6:\"online\";s:1:\"1\";}', '1528343865');
INSERT INTO `fy_web_log_all` VALUES ('465', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1528343866');
INSERT INTO `fy_web_log_all` VALUES ('466', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1528343867');
INSERT INTO `fy_web_log_all` VALUES ('467', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/index.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1528343885');
INSERT INTO `fy_web_log_all` VALUES ('468', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1528343886');
INSERT INTO `fy_web_log_all` VALUES ('469', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1528343891');
INSERT INTO `fy_web_log_all` VALUES ('470', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1528343892');
INSERT INTO `fy_web_log_all` VALUES ('471', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1528343895');
INSERT INTO `fy_web_log_all` VALUES ('472', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1528343895');
INSERT INTO `fy_web_log_all` VALUES ('473', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1528343901');
INSERT INTO `fy_web_log_all` VALUES ('474', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1528343901');
INSERT INTO `fy_web_log_all` VALUES ('475', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1528343903');
INSERT INTO `fy_web_log_all` VALUES ('476', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1528343904');
INSERT INTO `fy_web_log_all` VALUES ('477', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1528343929');
INSERT INTO `fy_web_log_all` VALUES ('478', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1528343930');
INSERT INTO `fy_web_log_all` VALUES ('479', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1528343935');
INSERT INTO `fy_web_log_all` VALUES ('480', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1528343936');
INSERT INTO `fy_web_log_all` VALUES ('481', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin.html', 'admin', 'Index', 'index', 'GET', 'a:0:{}', '1528347694');
INSERT INTO `fy_web_log_all` VALUES ('482', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 7', 'Firefox(60.0)', 'http://localhost/tpAdmin-master/public/index.php/admin/index/welcome.html', 'admin', 'Index', 'welcome', 'GET', 'a:0:{}', '1528347695');

-- ----------------------------
-- Table structure for `fy_withdrawals_log`
-- ----------------------------
DROP TABLE IF EXISTS `fy_withdrawals_log`;
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

-- ----------------------------
-- Records of fy_withdrawals_log
-- ----------------------------
