/*
Navicat MySQL Data Transfer

Source Server         : shop.istiny.cc
Source Server Version : 50556
Source Host           : shop.istiny.cc:3306
Source Database       : tpadmin

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2018-08-21 14:23:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for fy_activity
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
  `lottery_name` varchar(255) DEFAULT NULL COMMENT '奖券名称',
  `lottery_id` int(11) DEFAULT NULL COMMENT '关联奖券id',
  `update_time` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1' COMMENT '0否1是',
  `isdelete` tinyint(1) DEFAULT '0' COMMENT '0否1是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_activity
-- ----------------------------
INSERT INTO `fy_activity` VALUES ('1', '/pic/uploads/20180726/c95922bb83b5b81ea0696380a1c79e48.png', 'reterter', 'aetrser', '1528182927', '1529651729', '', '&lt;p&gt;测试活动&lt;/p&gt;', null, '0', '1532596187', '1529652245', '1', '0');
INSERT INTO `fy_activity` VALUES ('2', '/pic/uploads/20180726/d40a8815b51dd61cba0e969548f8dfdc.png', '123456', '测试活动123', '1530168048', '1530168050', '', '', null, '0', '1532588753', '1530168172', '0', '0');
INSERT INTO `fy_activity` VALUES ('3', '/pic/uploads/20180727/3a92fc180f0eca39e89d444f92e18a19.jpg', '阿萨德', '阿萨德', '1530254523', '1530340926', 'http://www.baidu.com', '&lt;p&gt;测试活动&lt;/p&gt;', null, '0', '1532657741', '1530168252', '1', '0');
INSERT INTO `fy_activity` VALUES ('4', '/pic/uploads/20180727/f42bc53913b5a07698f2672f5d7681a8.jpg', '测试活动可行不', '测试数据', '1528181556', '1530255165', 'http://www.baidu.com', '&lt;p&gt;活动开始了&lt;/p&gt;', null, '0', '1532657726', '1530168890', '1', '0');
INSERT INTO `fy_activity` VALUES ('5', '/pic/uploads/20180727/42ac60317dedc021799b4d596b033dcf.jpg', '123112310.0.', '券集市活动', '1530201600', '1530946421', 'http://www.baidu.com', '&lt;p&gt;活动开始了&lt;/p&gt;', null, '0', '1532657711', '1530168938', '1', '0');

-- ----------------------------
-- Table structure for fy_admin_access
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
INSERT INTO `fy_admin_access` VALUES ('3', '157', '3', '153');
INSERT INTO `fy_admin_access` VALUES ('3', '156', '3', '153');
INSERT INTO `fy_admin_access` VALUES ('3', '155', '3', '153');
INSERT INTO `fy_admin_access` VALUES ('3', '153', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('3', '149', '3', '145');
INSERT INTO `fy_admin_access` VALUES ('3', '148', '3', '145');
INSERT INTO `fy_admin_access` VALUES ('3', '147', '3', '145');
INSERT INTO `fy_admin_access` VALUES ('3', '146', '3', '145');
INSERT INTO `fy_admin_access` VALUES ('3', '145', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('3', '134', '3', '130');
INSERT INTO `fy_admin_access` VALUES ('3', '133', '3', '130');
INSERT INTO `fy_admin_access` VALUES ('3', '132', '3', '130');
INSERT INTO `fy_admin_access` VALUES ('3', '131', '3', '130');
INSERT INTO `fy_admin_access` VALUES ('3', '130', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('3', '127', '3', '123');
INSERT INTO `fy_admin_access` VALUES ('3', '126', '3', '123');
INSERT INTO `fy_admin_access` VALUES ('3', '125', '3', '123');
INSERT INTO `fy_admin_access` VALUES ('3', '124', '3', '123');
INSERT INTO `fy_admin_access` VALUES ('3', '123', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('3', '121', '3', '117');
INSERT INTO `fy_admin_access` VALUES ('3', '120', '3', '117');
INSERT INTO `fy_admin_access` VALUES ('3', '119', '3', '117');
INSERT INTO `fy_admin_access` VALUES ('3', '118', '3', '117');
INSERT INTO `fy_admin_access` VALUES ('3', '117', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('3', '116', '3', '112');
INSERT INTO `fy_admin_access` VALUES ('3', '115', '3', '112');
INSERT INTO `fy_admin_access` VALUES ('3', '114', '3', '112');
INSERT INTO `fy_admin_access` VALUES ('3', '113', '3', '112');
INSERT INTO `fy_admin_access` VALUES ('3', '112', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('3', '111', '3', '86');
INSERT INTO `fy_admin_access` VALUES ('3', '110', '3', '86');
INSERT INTO `fy_admin_access` VALUES ('3', '109', '3', '86');
INSERT INTO `fy_admin_access` VALUES ('3', '108', '3', '86');
INSERT INTO `fy_admin_access` VALUES ('3', '86', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('3', '89', '3', '85');
INSERT INTO `fy_admin_access` VALUES ('3', '88', '3', '85');
INSERT INTO `fy_admin_access` VALUES ('3', '87', '3', '85');
INSERT INTO `fy_admin_access` VALUES ('3', '85', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('3', '78', '3', '75');
INSERT INTO `fy_admin_access` VALUES ('3', '77', '3', '75');
INSERT INTO `fy_admin_access` VALUES ('2', '1', '1', '0');
INSERT INTO `fy_admin_access` VALUES ('2', '2', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('2', '51', '3', '2');
INSERT INTO `fy_admin_access` VALUES ('2', '52', '3', '2');
INSERT INTO `fy_admin_access` VALUES ('2', '53', '3', '2');
INSERT INTO `fy_admin_access` VALUES ('2', '54', '3', '2');
INSERT INTO `fy_admin_access` VALUES ('2', '55', '3', '2');
INSERT INTO `fy_admin_access` VALUES ('2', '64', '3', '2');
INSERT INTO `fy_admin_access` VALUES ('2', '65', '3', '2');
INSERT INTO `fy_admin_access` VALUES ('2', '66', '3', '2');
INSERT INTO `fy_admin_access` VALUES ('2', '67', '3', '2');
INSERT INTO `fy_admin_access` VALUES ('2', '68', '3', '2');
INSERT INTO `fy_admin_access` VALUES ('2', '69', '3', '2');
INSERT INTO `fy_admin_access` VALUES ('2', '70', '3', '2');
INSERT INTO `fy_admin_access` VALUES ('2', '3', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('2', '45', '3', '3');
INSERT INTO `fy_admin_access` VALUES ('2', '46', '3', '3');
INSERT INTO `fy_admin_access` VALUES ('2', '47', '3', '3');
INSERT INTO `fy_admin_access` VALUES ('2', '48', '3', '3');
INSERT INTO `fy_admin_access` VALUES ('2', '49', '3', '3');
INSERT INTO `fy_admin_access` VALUES ('2', '50', '2', '3');
INSERT INTO `fy_admin_access` VALUES ('2', '4', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('2', '38', '3', '4');
INSERT INTO `fy_admin_access` VALUES ('2', '39', '3', '4');
INSERT INTO `fy_admin_access` VALUES ('2', '40', '3', '4');
INSERT INTO `fy_admin_access` VALUES ('2', '41', '3', '4');
INSERT INTO `fy_admin_access` VALUES ('2', '42', '3', '4');
INSERT INTO `fy_admin_access` VALUES ('2', '43', '3', '4');
INSERT INTO `fy_admin_access` VALUES ('2', '44', '3', '4');
INSERT INTO `fy_admin_access` VALUES ('2', '5', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('2', '29', '3', '5');
INSERT INTO `fy_admin_access` VALUES ('2', '34', '3', '5');
INSERT INTO `fy_admin_access` VALUES ('2', '35', '3', '5');
INSERT INTO `fy_admin_access` VALUES ('2', '36', '3', '5');
INSERT INTO `fy_admin_access` VALUES ('2', '37', '3', '5');
INSERT INTO `fy_admin_access` VALUES ('2', '6', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('2', '7', '3', '6');
INSERT INTO `fy_admin_access` VALUES ('2', '8', '3', '6');
INSERT INTO `fy_admin_access` VALUES ('2', '9', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('2', '32', '3', '9');
INSERT INTO `fy_admin_access` VALUES ('2', '33', '3', '9');
INSERT INTO `fy_admin_access` VALUES ('2', '10', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('2', '11', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('2', '12', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('2', '13', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('2', '14', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('2', '15', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('2', '16', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('2', '17', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('2', '18', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('2', '19', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('2', '20', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('2', '21', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('2', '27', '3', '21');
INSERT INTO `fy_admin_access` VALUES ('2', '28', '3', '21');
INSERT INTO `fy_admin_access` VALUES ('2', '30', '3', '21');
INSERT INTO `fy_admin_access` VALUES ('2', '31', '3', '21');
INSERT INTO `fy_admin_access` VALUES ('2', '22', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('2', '25', '3', '22');
INSERT INTO `fy_admin_access` VALUES ('2', '26', '3', '22');
INSERT INTO `fy_admin_access` VALUES ('2', '23', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('2', '24', '3', '23');
INSERT INTO `fy_admin_access` VALUES ('2', '59', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('2', '56', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('2', '60', '3', '56');
INSERT INTO `fy_admin_access` VALUES ('2', '61', '4', '60');
INSERT INTO `fy_admin_access` VALUES ('2', '62', '5', '61');
INSERT INTO `fy_admin_access` VALUES ('2', '80', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('2', '81', '3', '80');
INSERT INTO `fy_admin_access` VALUES ('2', '82', '3', '80');
INSERT INTO `fy_admin_access` VALUES ('2', '83', '3', '80');
INSERT INTO `fy_admin_access` VALUES ('2', '101', '3', '80');
INSERT INTO `fy_admin_access` VALUES ('2', '90', '3', '80');
INSERT INTO `fy_admin_access` VALUES ('2', '100', '3', '80');
INSERT INTO `fy_admin_access` VALUES ('2', '99', '3', '80');
INSERT INTO `fy_admin_access` VALUES ('2', '98', '3', '80');
INSERT INTO `fy_admin_access` VALUES ('2', '97', '3', '80');
INSERT INTO `fy_admin_access` VALUES ('2', '96', '3', '80');
INSERT INTO `fy_admin_access` VALUES ('2', '75', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('2', '103', '3', '75');
INSERT INTO `fy_admin_access` VALUES ('2', '102', '3', '75');
INSERT INTO `fy_admin_access` VALUES ('2', '76', '3', '75');
INSERT INTO `fy_admin_access` VALUES ('2', '77', '3', '75');
INSERT INTO `fy_admin_access` VALUES ('2', '78', '3', '75');
INSERT INTO `fy_admin_access` VALUES ('2', '107', '3', '75');
INSERT INTO `fy_admin_access` VALUES ('2', '85', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('2', '104', '3', '85');
INSERT INTO `fy_admin_access` VALUES ('2', '87', '3', '85');
INSERT INTO `fy_admin_access` VALUES ('2', '88', '3', '85');
INSERT INTO `fy_admin_access` VALUES ('2', '89', '3', '85');
INSERT INTO `fy_admin_access` VALUES ('2', '105', '3', '85');
INSERT INTO `fy_admin_access` VALUES ('2', '106', '3', '85');
INSERT INTO `fy_admin_access` VALUES ('2', '86', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('2', '108', '3', '86');
INSERT INTO `fy_admin_access` VALUES ('2', '109', '3', '86');
INSERT INTO `fy_admin_access` VALUES ('2', '110', '3', '86');
INSERT INTO `fy_admin_access` VALUES ('2', '111', '3', '86');
INSERT INTO `fy_admin_access` VALUES ('2', '112', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('2', '113', '3', '112');
INSERT INTO `fy_admin_access` VALUES ('2', '114', '3', '112');
INSERT INTO `fy_admin_access` VALUES ('2', '115', '3', '112');
INSERT INTO `fy_admin_access` VALUES ('2', '116', '3', '112');
INSERT INTO `fy_admin_access` VALUES ('2', '117', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('2', '118', '3', '117');
INSERT INTO `fy_admin_access` VALUES ('2', '119', '3', '117');
INSERT INTO `fy_admin_access` VALUES ('2', '120', '3', '117');
INSERT INTO `fy_admin_access` VALUES ('2', '121', '3', '117');
INSERT INTO `fy_admin_access` VALUES ('2', '123', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('2', '124', '3', '123');
INSERT INTO `fy_admin_access` VALUES ('2', '125', '3', '123');
INSERT INTO `fy_admin_access` VALUES ('2', '126', '3', '123');
INSERT INTO `fy_admin_access` VALUES ('2', '127', '3', '123');
INSERT INTO `fy_admin_access` VALUES ('2', '128', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('2', '129', '3', '128');
INSERT INTO `fy_admin_access` VALUES ('2', '130', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('2', '131', '3', '130');
INSERT INTO `fy_admin_access` VALUES ('2', '132', '3', '130');
INSERT INTO `fy_admin_access` VALUES ('2', '133', '3', '130');
INSERT INTO `fy_admin_access` VALUES ('2', '134', '3', '130');
INSERT INTO `fy_admin_access` VALUES ('2', '135', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('2', '136', '3', '135');
INSERT INTO `fy_admin_access` VALUES ('2', '137', '3', '135');
INSERT INTO `fy_admin_access` VALUES ('2', '138', '3', '135');
INSERT INTO `fy_admin_access` VALUES ('2', '139', '3', '135');
INSERT INTO `fy_admin_access` VALUES ('2', '140', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('2', '141', '3', '140');
INSERT INTO `fy_admin_access` VALUES ('2', '142', '3', '140');
INSERT INTO `fy_admin_access` VALUES ('2', '143', '3', '140');
INSERT INTO `fy_admin_access` VALUES ('2', '145', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('2', '146', '3', '145');
INSERT INTO `fy_admin_access` VALUES ('2', '147', '3', '145');
INSERT INTO `fy_admin_access` VALUES ('2', '148', '3', '145');
INSERT INTO `fy_admin_access` VALUES ('2', '149', '3', '145');
INSERT INTO `fy_admin_access` VALUES ('2', '150', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('2', '151', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('2', '152', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('2', '153', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('3', '76', '3', '75');
INSERT INTO `fy_admin_access` VALUES ('3', '75', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('3', '96', '3', '80');
INSERT INTO `fy_admin_access` VALUES ('3', '90', '3', '80');
INSERT INTO `fy_admin_access` VALUES ('3', '83', '3', '80');
INSERT INTO `fy_admin_access` VALUES ('3', '82', '3', '80');
INSERT INTO `fy_admin_access` VALUES ('3', '81', '3', '80');
INSERT INTO `fy_admin_access` VALUES ('3', '80', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('3', '1', '1', '0');
INSERT INTO `fy_admin_access` VALUES ('3', '160', '3', '153');
INSERT INTO `fy_admin_access` VALUES ('3', '161', '3', '153');
INSERT INTO `fy_admin_access` VALUES ('4', '293', '3', '292');
INSERT INTO `fy_admin_access` VALUES ('4', '292', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('1', '245', '3', '3');
INSERT INTO `fy_admin_access` VALUES ('1', '244', '3', '3');
INSERT INTO `fy_admin_access` VALUES ('1', '243', '3', '3');
INSERT INTO `fy_admin_access` VALUES ('1', '241', '3', '3');
INSERT INTO `fy_admin_access` VALUES ('1', '240', '3', '3');
INSERT INTO `fy_admin_access` VALUES ('1', '50', '2', '3');
INSERT INTO `fy_admin_access` VALUES ('1', '49', '3', '3');
INSERT INTO `fy_admin_access` VALUES ('1', '48', '3', '3');
INSERT INTO `fy_admin_access` VALUES ('1', '47', '3', '3');
INSERT INTO `fy_admin_access` VALUES ('1', '46', '3', '3');
INSERT INTO `fy_admin_access` VALUES ('1', '3', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('1', '1', '1', '0');
INSERT INTO `fy_admin_access` VALUES ('4', '275', '3', '159');
INSERT INTO `fy_admin_access` VALUES ('4', '183', '3', '159');
INSERT INTO `fy_admin_access` VALUES ('4', '182', '3', '159');
INSERT INTO `fy_admin_access` VALUES ('4', '181', '3', '159');
INSERT INTO `fy_admin_access` VALUES ('4', '180', '3', '159');
INSERT INTO `fy_admin_access` VALUES ('4', '179', '3', '159');
INSERT INTO `fy_admin_access` VALUES ('4', '178', '3', '159');
INSERT INTO `fy_admin_access` VALUES ('4', '177', '3', '159');
INSERT INTO `fy_admin_access` VALUES ('4', '159', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('4', '285', '3', '158');
INSERT INTO `fy_admin_access` VALUES ('4', '175', '3', '158');
INSERT INTO `fy_admin_access` VALUES ('4', '174', '3', '158');
INSERT INTO `fy_admin_access` VALUES ('4', '173', '3', '158');
INSERT INTO `fy_admin_access` VALUES ('4', '172', '3', '158');
INSERT INTO `fy_admin_access` VALUES ('4', '171', '3', '158');
INSERT INTO `fy_admin_access` VALUES ('4', '170', '3', '158');
INSERT INTO `fy_admin_access` VALUES ('4', '169', '3', '158');
INSERT INTO `fy_admin_access` VALUES ('4', '168', '3', '158');
INSERT INTO `fy_admin_access` VALUES ('4', '158', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('4', '287', '3', '154');
INSERT INTO `fy_admin_access` VALUES ('4', '276', '3', '154');
INSERT INTO `fy_admin_access` VALUES ('4', '192', '3', '154');
INSERT INTO `fy_admin_access` VALUES ('4', '191', '3', '154');
INSERT INTO `fy_admin_access` VALUES ('4', '190', '3', '154');
INSERT INTO `fy_admin_access` VALUES ('4', '189', '3', '154');
INSERT INTO `fy_admin_access` VALUES ('4', '188', '3', '154');
INSERT INTO `fy_admin_access` VALUES ('4', '187', '3', '154');
INSERT INTO `fy_admin_access` VALUES ('4', '186', '3', '154');
INSERT INTO `fy_admin_access` VALUES ('4', '185', '3', '154');
INSERT INTO `fy_admin_access` VALUES ('4', '184', '3', '154');
INSERT INTO `fy_admin_access` VALUES ('4', '154', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('4', '298', '3', '153');
INSERT INTO `fy_admin_access` VALUES ('4', '297', '3', '153');
INSERT INTO `fy_admin_access` VALUES ('4', '289', '3', '153');
INSERT INTO `fy_admin_access` VALUES ('4', '167', '3', '153');
INSERT INTO `fy_admin_access` VALUES ('4', '166', '3', '153');
INSERT INTO `fy_admin_access` VALUES ('4', '165', '3', '153');
INSERT INTO `fy_admin_access` VALUES ('4', '164', '3', '153');
INSERT INTO `fy_admin_access` VALUES ('4', '163', '3', '153');
INSERT INTO `fy_admin_access` VALUES ('4', '162', '3', '153');
INSERT INTO `fy_admin_access` VALUES ('4', '161', '3', '153');
INSERT INTO `fy_admin_access` VALUES ('4', '160', '3', '153');
INSERT INTO `fy_admin_access` VALUES ('4', '157', '3', '153');
INSERT INTO `fy_admin_access` VALUES ('4', '156', '3', '153');
INSERT INTO `fy_admin_access` VALUES ('4', '155', '3', '153');
INSERT INTO `fy_admin_access` VALUES ('4', '153', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('4', '277', '3', '152');
INSERT INTO `fy_admin_access` VALUES ('4', '217', '3', '152');
INSERT INTO `fy_admin_access` VALUES ('4', '212', '3', '152');
INSERT INTO `fy_admin_access` VALUES ('4', '209', '3', '152');
INSERT INTO `fy_admin_access` VALUES ('4', '206', '3', '152');
INSERT INTO `fy_admin_access` VALUES ('4', '203', '3', '152');
INSERT INTO `fy_admin_access` VALUES ('4', '196', '3', '152');
INSERT INTO `fy_admin_access` VALUES ('4', '195', '3', '152');
INSERT INTO `fy_admin_access` VALUES ('4', '194', '3', '152');
INSERT INTO `fy_admin_access` VALUES ('4', '193', '3', '152');
INSERT INTO `fy_admin_access` VALUES ('4', '152', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('4', '278', '3', '151');
INSERT INTO `fy_admin_access` VALUES ('4', '274', '3', '151');
INSERT INTO `fy_admin_access` VALUES ('4', '273', '3', '151');
INSERT INTO `fy_admin_access` VALUES ('4', '272', '3', '151');
INSERT INTO `fy_admin_access` VALUES ('4', '271', '3', '151');
INSERT INTO `fy_admin_access` VALUES ('4', '270', '3', '151');
INSERT INTO `fy_admin_access` VALUES ('4', '269', '3', '151');
INSERT INTO `fy_admin_access` VALUES ('4', '268', '3', '151');
INSERT INTO `fy_admin_access` VALUES ('4', '267', '3', '151');
INSERT INTO `fy_admin_access` VALUES ('4', '266', '3', '151');
INSERT INTO `fy_admin_access` VALUES ('4', '151', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('4', '288', '3', '150');
INSERT INTO `fy_admin_access` VALUES ('4', '282', '3', '150');
INSERT INTO `fy_admin_access` VALUES ('4', '281', '3', '150');
INSERT INTO `fy_admin_access` VALUES ('4', '280', '3', '150');
INSERT INTO `fy_admin_access` VALUES ('4', '279', '3', '150');
INSERT INTO `fy_admin_access` VALUES ('4', '150', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('4', '283', '3', '135');
INSERT INTO `fy_admin_access` VALUES ('4', '254', '3', '135');
INSERT INTO `fy_admin_access` VALUES ('4', '251', '3', '135');
INSERT INTO `fy_admin_access` VALUES ('4', '250', '3', '135');
INSERT INTO `fy_admin_access` VALUES ('4', '249', '3', '135');
INSERT INTO `fy_admin_access` VALUES ('4', '248', '3', '135');
INSERT INTO `fy_admin_access` VALUES ('4', '246', '3', '135');
INSERT INTO `fy_admin_access` VALUES ('4', '176', '3', '135');
INSERT INTO `fy_admin_access` VALUES ('4', '139', '3', '135');
INSERT INTO `fy_admin_access` VALUES ('4', '138', '3', '135');
INSERT INTO `fy_admin_access` VALUES ('4', '137', '3', '135');
INSERT INTO `fy_admin_access` VALUES ('4', '136', '3', '135');
INSERT INTO `fy_admin_access` VALUES ('4', '135', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('4', '286', '3', '130');
INSERT INTO `fy_admin_access` VALUES ('4', '242', '3', '130');
INSERT INTO `fy_admin_access` VALUES ('4', '228', '3', '130');
INSERT INTO `fy_admin_access` VALUES ('4', '225', '3', '130');
INSERT INTO `fy_admin_access` VALUES ('4', '222', '3', '130');
INSERT INTO `fy_admin_access` VALUES ('4', '134', '3', '130');
INSERT INTO `fy_admin_access` VALUES ('4', '133', '3', '130');
INSERT INTO `fy_admin_access` VALUES ('4', '132', '3', '130');
INSERT INTO `fy_admin_access` VALUES ('4', '131', '3', '130');
INSERT INTO `fy_admin_access` VALUES ('4', '130', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('4', '252', '3', '128');
INSERT INTO `fy_admin_access` VALUES ('4', '202', '3', '128');
INSERT INTO `fy_admin_access` VALUES ('4', '201', '3', '128');
INSERT INTO `fy_admin_access` VALUES ('4', '200', '3', '128');
INSERT INTO `fy_admin_access` VALUES ('4', '199', '3', '128');
INSERT INTO `fy_admin_access` VALUES ('4', '198', '3', '128');
INSERT INTO `fy_admin_access` VALUES ('4', '197', '3', '128');
INSERT INTO `fy_admin_access` VALUES ('4', '129', '3', '128');
INSERT INTO `fy_admin_access` VALUES ('4', '128', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('4', '127', '3', '123');
INSERT INTO `fy_admin_access` VALUES ('4', '126', '3', '123');
INSERT INTO `fy_admin_access` VALUES ('4', '125', '3', '123');
INSERT INTO `fy_admin_access` VALUES ('4', '124', '3', '123');
INSERT INTO `fy_admin_access` VALUES ('4', '123', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('4', '208', '3', '117');
INSERT INTO `fy_admin_access` VALUES ('4', '207', '3', '117');
INSERT INTO `fy_admin_access` VALUES ('4', '205', '3', '117');
INSERT INTO `fy_admin_access` VALUES ('4', '204', '3', '117');
INSERT INTO `fy_admin_access` VALUES ('4', '121', '3', '117');
INSERT INTO `fy_admin_access` VALUES ('4', '120', '3', '117');
INSERT INTO `fy_admin_access` VALUES ('4', '119', '3', '117');
INSERT INTO `fy_admin_access` VALUES ('4', '118', '3', '117');
INSERT INTO `fy_admin_access` VALUES ('4', '117', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('4', '291', '3', '112');
INSERT INTO `fy_admin_access` VALUES ('4', '216', '3', '112');
INSERT INTO `fy_admin_access` VALUES ('4', '215', '3', '112');
INSERT INTO `fy_admin_access` VALUES ('4', '214', '3', '112');
INSERT INTO `fy_admin_access` VALUES ('4', '213', '3', '112');
INSERT INTO `fy_admin_access` VALUES ('4', '211', '3', '112');
INSERT INTO `fy_admin_access` VALUES ('4', '210', '3', '112');
INSERT INTO `fy_admin_access` VALUES ('4', '116', '3', '112');
INSERT INTO `fy_admin_access` VALUES ('4', '115', '3', '112');
INSERT INTO `fy_admin_access` VALUES ('4', '114', '3', '112');
INSERT INTO `fy_admin_access` VALUES ('4', '113', '3', '112');
INSERT INTO `fy_admin_access` VALUES ('4', '290', '3', '112');
INSERT INTO `fy_admin_access` VALUES ('4', '112', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('4', '111', '3', '86');
INSERT INTO `fy_admin_access` VALUES ('4', '110', '3', '86');
INSERT INTO `fy_admin_access` VALUES ('4', '109', '3', '86');
INSERT INTO `fy_admin_access` VALUES ('4', '108', '3', '86');
INSERT INTO `fy_admin_access` VALUES ('4', '86', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('4', '232', '3', '75');
INSERT INTO `fy_admin_access` VALUES ('4', '231', '3', '75');
INSERT INTO `fy_admin_access` VALUES ('4', '230', '3', '75');
INSERT INTO `fy_admin_access` VALUES ('4', '229', '3', '75');
INSERT INTO `fy_admin_access` VALUES ('4', '107', '3', '75');
INSERT INTO `fy_admin_access` VALUES ('4', '78', '3', '75');
INSERT INTO `fy_admin_access` VALUES ('4', '77', '3', '75');
INSERT INTO `fy_admin_access` VALUES ('4', '76', '3', '75');
INSERT INTO `fy_admin_access` VALUES ('4', '102', '3', '75');
INSERT INTO `fy_admin_access` VALUES ('4', '103', '3', '75');
INSERT INTO `fy_admin_access` VALUES ('4', '75', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('4', '96', '3', '80');
INSERT INTO `fy_admin_access` VALUES ('4', '97', '3', '80');
INSERT INTO `fy_admin_access` VALUES ('4', '98', '3', '80');
INSERT INTO `fy_admin_access` VALUES ('4', '99', '3', '80');
INSERT INTO `fy_admin_access` VALUES ('4', '100', '3', '80');
INSERT INTO `fy_admin_access` VALUES ('4', '90', '3', '80');
INSERT INTO `fy_admin_access` VALUES ('4', '101', '3', '80');
INSERT INTO `fy_admin_access` VALUES ('4', '83', '3', '80');
INSERT INTO `fy_admin_access` VALUES ('4', '82', '3', '80');
INSERT INTO `fy_admin_access` VALUES ('4', '81', '3', '80');
INSERT INTO `fy_admin_access` VALUES ('4', '80', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('4', '24', '3', '23');
INSERT INTO `fy_admin_access` VALUES ('4', '23', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('4', '26', '3', '22');
INSERT INTO `fy_admin_access` VALUES ('4', '25', '3', '22');
INSERT INTO `fy_admin_access` VALUES ('4', '22', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('4', '8', '3', '6');
INSERT INTO `fy_admin_access` VALUES ('4', '7', '3', '6');
INSERT INTO `fy_admin_access` VALUES ('4', '6', '2', '1');
INSERT INTO `fy_admin_access` VALUES ('4', '1', '1', '0');

-- ----------------------------
-- Table structure for fy_admin_group
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of fy_admin_group
-- ----------------------------
INSERT INTO `fy_admin_group` VALUES ('1', '系统管理', '&#xe61d;', '2', '1', '', '0', '1450752856', '1481180175');
INSERT INTO `fy_admin_group` VALUES ('2', '工具', '&amp;#xe616;', '3', '0', '', '0', '1476016712', '1532419172');

-- ----------------------------
-- Table structure for fy_admin_node
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
) ENGINE=MyISAM AUTO_INCREMENT=299 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

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
INSERT INTO `fy_admin_node` VALUES ('30', '21', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('31', '21', '0', 'deleteForever', '永久删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('32', '9', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('33', '9', '0', 'generate', '生成方法', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('34', '5', '0', 'password', '修改密码', '', '3', '0', '49', '1', '0');
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
INSERT INTO `fy_admin_node` VALUES ('290', '112', '0', 'getskudata', '获取sku数据', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('46', '3', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('47', '3', '0', 'add', '添加', '', '3', '0', '49', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('48', '3', '0', 'edit', '编辑', '', '3', '0', '48', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('49', '3', '0', 'forbid', '默认禁用操作', '', '3', '0', '47', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('50', '3', '0', 'resume', '默认恢复操作', '', '2', '0', '0', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('51', '2', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('52', '2', '0', 'add', '添加', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('53', '2', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('54', '2', '0', 'forbid', '默认禁用操作', '', '3', '0', '51', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('55', '2', '0', 'resume', '默认恢复操作', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('56', '1', '2', 'one', '一级菜单', '', '2', '1', '13', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('60', '56', '2', 'two', '二级', '', '3', '1', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('61', '60', '2', 'three', '三级菜单', '', '4', '1', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('62', '61', '2', 'Four', '四级菜单', '', '5', '1', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('104', '85', '0', 'delete', '删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('64', '2', '0', 'delete', '删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('65', '2', '0', 'recycleBin', '回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('66', '2', '0', 'delete', '默认删除操作', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('67', '2', '0', 'recycle', '从回收站恢复', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('68', '2', '0', 'deleteForever', '永久删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('69', '2', '0', 'clear', '清空回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('70', '2', '0', 'saveOrder', '保存排序', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('103', '75', '0', 'resume', '默认恢复操作', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('80', '1', '1', 'Notice', '公告管理', '', '2', '1', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('102', '75', '0', 'delete', '删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('75', '1', '1', 'SildeShow', '轮播图', '', '2', '1', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('76', '75', '0', 'add', '添加', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('77', '75', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('78', '75', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('81', '80', '0', 'add', '添加', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('82', '80', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('83', '80', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('101', '80', '0', 'resume', '默认恢复操作', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('85', '1', '1', 'Modular', '前端功能模块', '', '2', '1', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('86', '1', '1', 'GoodsClass', '商品分类', '', '2', '1', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('87', '85', '0', 'index', '列表', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('88', '85', '0', 'add', '添加', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('89', '85', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('90', '80', '0', 'delete', '删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('100', '80', '0', 'recycle', '从回收站恢复', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('99', '80', '0', 'deleteForever', '永久删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('98', '80', '0', 'recycleBin', '回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('97', '80', '0', 'clear', '清空回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('96', '80', '0', 'forbid', '默认禁用操作', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('105', '85', '0', 'resume', '默认恢复操作', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('106', '85', '0', 'forbid', '默认禁用操作', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('107', '75', '0', 'forbid', '默认禁用操作', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('108', '86', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('109', '86', '0', 'add', '添加', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('110', '86', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('111', '86', '0', 'delete', '删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('112', '1', '1', 'Goods', '商品管理', '', '2', '1', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('113', '112', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('114', '112', '0', 'add', '添加', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('115', '112', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('116', '112', '0', 'delete', '删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('117', '1', '1', 'Brand', '商品品牌管理', '', '2', '1', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('118', '117', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('119', '117', '0', 'add', '添加', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('120', '117', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('121', '117', '0', 'delete', '删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('123', '1', '0', 'Upload', '图片上传', '', '2', '1', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('124', '123', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('125', '123', '0', 'upload', '文件上传', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('126', '123', '0', 'remote', '远程图片抓取', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('127', '123', '0', 'listImage', '图片列表', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('128', '1', '1', 'Customer', '会员管理', '', '2', '1', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('129', '128', '0', 'index', '列表', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('130', '1', '1', 'Lottery', '奖券中心', '', '2', '1', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('131', '130', '0', 'add', '添加', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('132', '130', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('133', '130', '0', 'edit', '修改', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('134', '130', '0', 'delete', '删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('135', '1', '1', 'CustomerTask', '会员任务管理', '', '2', '1', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('136', '135', '0', 'index', '列表', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('137', '135', '0', 'add', '添加', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('138', '135', '0', 'delete', '删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('139', '135', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('140', '1', '1', 'CustomerGrade', '会员等级管理', '', '2', '1', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('141', '140', '0', 'index', '列表', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('142', '140', '0', 'add', '新增', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('143', '140', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('294', '292', '0', 'recycleBin', '回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('145', '1', '1', 'CustomerGradeDesc', '会员等级规则', '', '2', '1', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('146', '145', '0', 'index', '列表', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('147', '145', '0', 'add', '添加', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('148', '145', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('149', '145', '0', 'delete', '删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('150', '1', '1', 'LotteryLog', '奖券领取详情', '', '2', '1', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('151', '1', '1', 'Activity', '活动管理', '', '2', '1', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('152', '1', '1', 'Transaction', '交易设置', '', '2', '1', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('153', '1', '1', 'Order', '订单管理', '', '2', '1', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('154', '1', '1', 'Message', '消息中心', '', '2', '1', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('155', '153', '0', 'index', '列表', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('156', '153', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('157', '153', '0', 'orderDetail', '订单详情', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('158', '1', '1', 'GoodsComment', '商品评论管理', '', '2', '1', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('159', '1', '1', 'WxPayRefundLog', '交易记录', '', '2', '1', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('160', '153', '0', 'addPost', '订单发货', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('161', '153', '0', 'refund', '订单退款', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('162', '153', '0', 'editTotalPrice', '修改订单总价', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('163', '153', '0', 'delete', '删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('164', '153', '0', 'recycleBin', '回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('165', '153', '0', 'deleteForever', '永久删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('166', '153', '0', 'clear', '清空回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('167', '153', '0', 'recycle', '还原', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('168', '158', '0', 'delete', '删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('169', '158', '0', 'forbid', '禁用', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('170', '158', '0', 'recyclebin', '回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('171', '158', '0', 'resume', '恢复', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('172', '158', '0', 'clear', '清空回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('173', '158', '0', 'deleteForever', '彻底删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('174', '158', '0', 'recycle', '还原', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('175', '158', '0', 'returncomment', '回复', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('176', '135', '0', 'detail', '详情', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('177', '159', '0', 'forbid', '禁用', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('178', '159', '0', 'recyclebin', '回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('179', '159', '0', 'delete', '删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('180', '159', '0', 'resume', '恢复', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('181', '159', '0', 'deleteForever', '彻底删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('182', '159', '0', 'clear', '清空回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('183', '159', '0', 'recycle', '还原', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('184', '154', '0', 'delete', '删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('185', '154', '0', 'add', '添加', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('186', '154', '0', 'forbid', '禁用', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('187', '154', '0', 'resume', '恢复', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('188', '154', '0', 'recyclebin', '回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('189', '154', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('190', '154', '0', 'clear', '清空回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('191', '154', '0', 'deleteForever', '彻底删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('192', '154', '0', 'recycle', '还原', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('193', '152', '0', 'add', '添加', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('194', '152', '0', 'eidt', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('195', '152', '0', 'delete', '删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('196', '152', '0', 'forbid', '禁用', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('197', '128', '0', 'delete', '删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('198', '128', '0', 'recycleBin', '回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('199', '128', '0', 'excel', '导出excel', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('200', '128', '0', 'recycle', '从回收站还原', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('201', '128', '0', 'deleteForever', '永久删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('202', '128', '0', 'clear', '清空回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('203', '152', '0', 'recyclebin', '回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('204', '117', '0', 'recycleBin', '回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('205', '117', '0', 'deleteForever', '永久删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('206', '152', '0', 'resume', '恢复', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('207', '117', '0', 'recycle', '从回收站还原', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('208', '117', '0', 'clear', '清空回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('209', '152', '0', 'deleteForever', '彻底删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('210', '112', '0', 'forbid', '禁用', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('211', '112', '0', 'resume', '恢复', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('212', '152', '0', 'recycle', '还原', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('213', '112', '0', 'recycleBin', '回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('214', '112', '0', 'recycle', '从回收站还原', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('215', '112', '0', 'deleteForever', '永久删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('216', '112', '0', 'clear', '清空回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('217', '152', '0', 'clear', '清空回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('222', '130', '0', 'recyclebin', '回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('223', '85', '0', 'recycleBin', '回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('224', '85', '0', 'recycle', '从回收站还原', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('225', '130', '0', 'resume', '还原', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('226', '85', '0', 'deleteForever', '永久删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('227', '85', '0', 'clear', '清空回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('228', '130', '0', 'deleteForever', '彻底删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('229', '75', '0', 'recycleBin', '回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('230', '75', '0', 'recycle', '从回收站还原', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('231', '75', '0', 'clear', '清空回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('232', '75', '0', 'deleteForever', '永久删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('233', '5', '0', 'forbid', '禁用', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('234', '5', '0', 'resume', '恢复', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('235', '4', '0', 'recycleBin', '回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('236', '4', '0', 'recycle', '从回收站还原', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('237', '4', '0', 'deleteForever', '永久删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('238', '4', '0', 'clear', '清空回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('293', '292', '0', 'index', '列表', '', '3', '0', '51', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('239', '4', '0', 'delete', '删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('240', '3', '0', 'delete', '删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('241', '3', '0', 'recycleBin', '回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('242', '130', '0', 'clear', '清空回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('243', '3', '0', 'recycle', '从回收站还原', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('244', '3', '0', 'deleteForever', '永久删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('245', '3', '0', 'clear', '清空回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('246', '135', '0', 'resume', '恢复', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('247', '21', '0', 'add', '添加', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('248', '135', '0', 'recycleBin', '回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('249', '135', '0', 'recycle', '还原', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('250', '135', '0', 'deleteForever', '彻底删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('292', '1', '1', 'useLottery', '代金券核销记录', '', '2', '1', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('291', '112', '0', 'upDownTip', '上架下架提醒', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('251', '135', '0', 'clear', '清空回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('252', '128', '0', 'detail', '详情', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('253', '45', '1', 'edit', '编辑', '', '4', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('254', '135', '0', 'excel', '导出', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('255', '140', '0', 'delete', '删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('256', '140', '0', 'recycleBin', '回收站', '', '3', '1', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('257', '140', '0', 'recycle', '还原', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('258', '140', '0', 'deleteForever', '彻底删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('259', '140', '0', 'clear', '清空回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('260', '145', '0', 'forbid', '禁用', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('261', '145', '0', 'resume', '恢复', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('262', '145', '0', 'recycleBin', '回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('263', '145', '0', 'recycle', '还原', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('264', '145', '0', 'deleteForever', '彻底删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('265', '145', '0', 'clear', '清空回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('266', '151', '0', 'add', '添加', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('267', '151', '0', 'forbid', '禁用', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('268', '151', '0', 'resume', '恢复', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('269', '151', '0', 'delete', '删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('270', '151', '0', 'recycleBin', '回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('271', '151', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('272', '151', '0', 'recycle', '还原', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('273', '151', '0', 'deleteForever', '彻底删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('274', '151', '0', 'clear', '清空回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('275', '159', '0', 'index', '列表', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('276', '154', '0', 'index', '列表', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('277', '152', '0', 'index', '列表', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('278', '151', '0', 'index', '列表', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('279', '150', '0', 'index', '列表', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('280', '150', '0', 'add', '添加', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('281', '150', '0', 'forbid', '禁用', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('282', '150', '0', 'resume', '恢复', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('283', '135', '0', 'forbid', '禁用', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('289', '153', '0', 'afterSaleHandle', '售后处理', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('285', '158', '0', 'index', '列表', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('286', '130', '0', 'editStatus', '发行', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('287', '154', '0', 'sendUser', '发送', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('288', '150', '0', 'detail', '领取详情', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('295', '292', '0', 'delete', '删除', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('296', '1', '1', 'GiftBag', '礼包管理', '', '2', '1', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('297', '153', '0', 'shopSure', '商家退货确认收货', '', '3', '0', '50', '1', '0');
INSERT INTO `fy_admin_node` VALUES ('298', '153', '0', 'shopsSendGoods', '商家售后确认发货', '', '3', '0', '50', '1', '0');

-- ----------------------------
-- Table structure for fy_admin_node_load
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
-- Table structure for fy_admin_role
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of fy_admin_role
-- ----------------------------
INSERT INTO `fy_admin_role` VALUES ('1', '0', '领导组', ' ', '1', '0', '1208784792', '1254325558');
INSERT INTO `fy_admin_role` VALUES ('2', '0', '网编组', ' ', '1', '0', '1215496283', '1454049929');
INSERT INTO `fy_admin_role` VALUES ('3', '0', 'test', 'testsartsrt', '1', '0', '1527663705', '1527663705');
INSERT INTO `fy_admin_role` VALUES ('4', '0', 'welcome', '市场部', '1', '0', '1533115093', '1533115093');
INSERT INTO `fy_admin_role` VALUES ('5', '0', '啊啊啊', '', '1', '1', '1534732490', '1534732490');

-- ----------------------------
-- Table structure for fy_admin_role_user
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
INSERT INTO `fy_admin_role_user` VALUES ('5', '23');
INSERT INTO `fy_admin_role_user` VALUES ('2', '4');
INSERT INTO `fy_admin_role_user` VALUES ('2', '2');
INSERT INTO `fy_admin_role_user` VALUES ('4', '21');
INSERT INTO `fy_admin_role_user` VALUES ('4', '20');
INSERT INTO `fy_admin_role_user` VALUES ('4', '23');

-- ----------------------------
-- Table structure for fy_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `fy_admin_user`;
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

-- ----------------------------
-- Records of fy_admin_user
-- ----------------------------
INSERT INTO `fy_admin_user` VALUES ('1', 'admin', '超级管理员', 'e10adc3949ba59abbe56e057f20f883e', '1534831601', '220.197.182.69', '672', 'tianpian0805@gmail.comaaa', '13121126169', '我是超级管理员', '1', '0', '1222907803', '1451033528', '0', '', '0.00');
INSERT INTO `fy_admin_user` VALUES ('2', 'demo', '测试', 'e10adc3949ba59abbe56e057f20f883e', '1532331682', '10.110.111.23', '15', '', '13111111111', '', '0', '0', '1476777133', '1477399793', '1', 'weixinnichen', '0.00');
INSERT INTO `fy_admin_user` VALUES ('3', 'test1', '罗正波', 'e10adc3949ba59abbe56e057f20f883e', '1530351402', '10.110.111.46', '11', '1060049850@qq.com', '18285111561', 'test', '0', '0', '1527663753', '1527663753', '1', 'luozhengbo9850', '0.00');
INSERT INTO `fy_admin_user` VALUES ('4', '123456', '123333', 'fcea920f7412b5da7be0cf42b8c93759', '1529564512', '10.110.111.36', '1', '617641705@qq.com', '', '', '0', '0', '1529549152', '1529549152', '1', null, '0.00');
INSERT INTO `fy_admin_user` VALUES ('21', 'jyf', '江永飞', 'e10adc3949ba59abbe56e057f20f883e', '0', '', '0', '', '', '', '1', '0', '1533866369', '1533866369', '1', null, '0.00');
INSERT INTO `fy_admin_user` VALUES ('20', 'welcome', '泛亚', 'e10adc3949ba59abbe56e057f20f883e', '1534749586', '220.197.182.84', '17', '', '', '', '1', '0', '1533806651', '1533806651', '1', null, '0.00');
INSERT INTO `fy_admin_user` VALUES ('23', 'fy', '测试商户', 'e10adc3949ba59abbe56e057f20f883e', '1534732619', '220.197.182.70', '6', '', '', '', '1', '0', '1534469233', '1534469233', '1', null, '0.00');

-- ----------------------------
-- Table structure for fy_admin_user_customer
-- ----------------------------
DROP TABLE IF EXISTS `fy_admin_user_customer`;
CREATE TABLE `fy_admin_user_customer` (
  `user_id` mediumint(9) unsigned DEFAULT NULL,
  `customer_id` char(32) DEFAULT NULL,
  KEY `group_id` (`user_id`),
  KEY `user_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of fy_admin_user_customer
-- ----------------------------
INSERT INTO `fy_admin_user_customer` VALUES ('23', '123');
INSERT INTO `fy_admin_user_customer` VALUES ('21', '136');
INSERT INTO `fy_admin_user_customer` VALUES ('23', '119');
INSERT INTO `fy_admin_user_customer` VALUES ('20', '120');

-- ----------------------------
-- Table structure for fy_after_sale_following
-- ----------------------------
DROP TABLE IF EXISTS `fy_after_sale_following`;
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_after_sale_following
-- ----------------------------
INSERT INTO `fy_after_sale_following` VALUES ('14', '231', '575', '13608507163', '1441217402201808201455538416', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '1', '不满意', '3', '', '', '', null, null, null, '1', '1534749834', '1534749184', null, '1534749834', '圆通', '{\"id\":159,\"uid\":120,\"name\":\"\\u97e9\",\"mobile\":\"13608507163\",\"address\":\"\\u8d35\\u5dde\\u7701\\u8d35\\u9633\\u5e02\\u89c2\\u5c71\\u6e56\\u533a\\u89c2\\u5c71\\u793e\\u533a\\u670d\\u52a1\\u4e2d\\u5fc3\",\"street\":\"\\u9ad8\\u79d1\\u4e00\\u53f7\",\"status\":1,\"addtime\":1533275841,\"updatetime\":1533275841}', null, null, null, null, '1');
INSERT INTO `fy_after_sale_following` VALUES ('15', '231', '577', '13608507163', '1441217402201808201550257773', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '6', '东西损坏', '1', '', '', '', '1534751593', null, '长岭南路高科一号', '1', '1534752294', '1534751556', null, '1534752294', '圆通', '{\"id\":159,\"uid\":120,\"name\":\"\\u97e9\",\"mobile\":\"13608507163\",\"address\":\"\\u8d35\\u5dde\\u7701\\u8d35\\u9633\\u5e02\\u89c2\\u5c71\\u6e56\\u533a\\u89c2\\u5c71\\u793e\\u533a\\u670d\\u52a1\\u4e2d\\u5fc3\",\"street\":\"\\u9ad8\\u79d1\\u4e00\\u53f7\",\"status\":1,\"addtime\":1533275841,\"updatetime\":1533275841}', null, '1534752332', '圆通', '123456', '1');
INSERT INTO `fy_after_sale_following` VALUES ('16', '231', '577', '13608507163', '1441217402201808201550257773', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '1', '东西坏了需维修', '2', '', '', '', null, null, null, null, null, '1534752609', null, '1534752609', null, '{\"id\":159,\"uid\":120,\"name\":\"\\u97e9\",\"mobile\":\"13608507163\",\"address\":\"\\u8d35\\u5dde\\u7701\\u8d35\\u9633\\u5e02\\u89c2\\u5c71\\u6e56\\u533a\\u89c2\\u5c71\\u793e\\u533a\\u670d\\u52a1\\u4e2d\\u5fc3\",\"street\":\"\\u9ad8\\u79d1\\u4e00\\u53f7\",\"status\":1,\"addtime\":1533275841,\"updatetime\":1533275841}', null, null, null, null, '0');
INSERT INTO `fy_after_sale_following` VALUES ('17', '231', '578', '13608507163', '1441217402201808201615594268', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '6', '东西坏了', '2', '', '', '', '1534753494', null, '长岭南路高科一号', '1', '1534753552', '1534753447', null, '1534753552', '圆通', '{\"id\":159,\"uid\":120,\"name\":\"\\u97e9\",\"mobile\":\"13608507163\",\"address\":\"\\u8d35\\u5dde\\u7701\\u8d35\\u9633\\u5e02\\u89c2\\u5c71\\u6e56\\u533a\\u89c2\\u5c71\\u793e\\u533a\\u670d\\u52a1\\u4e2d\\u5fc3\",\"street\":\"\\u9ad8\\u79d1\\u4e00\\u53f7\",\"status\":1,\"addtime\":1533275841,\"updatetime\":1533275841}', null, '1534753599', '圆通', '123456', '1');

-- ----------------------------
-- Table structure for fy_brand
-- ----------------------------
DROP TABLE IF EXISTS `fy_brand`;
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_brand
-- ----------------------------
INSERT INTO `fy_brand` VALUES ('15', 'ONLY', '/pic/uploads/20180817/4708e60a8d639063a68d3621e431afce.png', '', '20', '1534471133', '1534471133', '0');
INSERT INTO `fy_brand` VALUES ('16', 'ochirly', '/pic/uploads/20180817/0d9222085bdc8a62b30753a9d685191b.png', '', '21', '1534472464', '1534472464', '0');
INSERT INTO `fy_brand` VALUES ('17', 'Lee', '/pic/uploads/20180817/24566dbf09a88d562f9709b94ea479eb.png', '', '23', '1534473367', '1534473367', '0');
INSERT INTO `fy_brand` VALUES ('18', '李宁', '/pic/uploads/20180817/2412232686f7bbcc2e8861c8848a066a.png', '', '21', '1534474516', '1534474516', '0');
INSERT INTO `fy_brand` VALUES ('19', '叮当猫', '/pic/uploads/20180820/04b70532101f2e32bc80bf2beca7e1b5.jpg', '', '20', '1534732108', '1534730915', '0');

-- ----------------------------
-- Table structure for fy_car
-- ----------------------------
DROP TABLE IF EXISTS `fy_car`;
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
) ENGINE=InnoDB AUTO_INCREMENT=330 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_car
-- ----------------------------
INSERT INTO `fy_car` VALUES ('186', '204', null, 'omQYXwMttcgYATxUYMuVsSAVeDSU', '1', '1533117580', '1533117580', '1', null, '1066', '1', 'S');
INSERT INTO `fy_car` VALUES ('309', '227', null, 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '1', '1534493313', '1534493313', '1', null, '1220', '1', '基础白/基础黑+37');
INSERT INTO `fy_car` VALUES ('326', '230', null, 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2', '1534520561', '1534520561', '1', null, '1246', '1', '');
INSERT INTO `fy_car` VALUES ('329', '227', null, 'omQYXwNAT5uC15TQqMGxajJzqo4s', '1', '1534745734', '1534745734', '1', null, '1215', '1', '荧光桃红/白+36');

-- ----------------------------
-- Table structure for fy_customer
-- ----------------------------
DROP TABLE IF EXISTS `fy_customer`;
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
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_customer
-- ----------------------------

-- ----------------------------
-- Table structure for fy_customer_activity_log
-- ----------------------------
DROP TABLE IF EXISTS `fy_customer_activity_log`;
CREATE TABLE `fy_customer_activity_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'activitylog表',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `activity_detail` text,
  `status` tinyint(1) DEFAULT NULL COMMENT '1已参与|2参与中',
  `create_time` int(11) DEFAULT NULL COMMENT '开始参与活动时间',
  `update_time` int(11) DEFAULT NULL COMMENT '活动参与完成时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_customer_activity_log
-- ----------------------------

-- ----------------------------
-- Table structure for fy_customer_address
-- ----------------------------
DROP TABLE IF EXISTS `fy_customer_address`;
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
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_customer_address
-- ----------------------------

-- ----------------------------
-- Table structure for fy_customer_collect
-- ----------------------------
DROP TABLE IF EXISTS `fy_customer_collect`;
CREATE TABLE `fy_customer_collect` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '收藏表',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  `addtime` int(11) NOT NULL COMMENT '收藏时间',
  `status` tinyint(1) DEFAULT NULL COMMENT '1状态备用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_customer_collect
-- ----------------------------

-- ----------------------------
-- Table structure for fy_customer_grade
-- ----------------------------
DROP TABLE IF EXISTS `fy_customer_grade`;
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

-- ----------------------------
-- Records of fy_customer_grade
-- ----------------------------
INSERT INTO `fy_customer_grade` VALUES ('34', '青铜会员', '0', '1999', '1530841065', '1532600931', '1', '0', '1.00');
INSERT INTO `fy_customer_grade` VALUES ('35', '白银会员', '2000', '9999', '1530841120', '1532600928', '1<br/>2', '0', '1.50');
INSERT INTO `fy_customer_grade` VALUES ('36', '黄金会员', '10000', '29999', '1530841155', '1532600925', '1<br/>2<br/>4', '0', '2.00');
INSERT INTO `fy_customer_grade` VALUES ('37', '钻石会员', '30000', '10000000', '1530841210', '1534129185', '1<br/>2<br/>3<br/>4', '0', '3.00');

-- ----------------------------
-- Table structure for fy_customer_grade_desc
-- ----------------------------
DROP TABLE IF EXISTS `fy_customer_grade_desc`;
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

-- ----------------------------
-- Records of fy_customer_grade_desc
-- ----------------------------
INSERT INTO `fy_customer_grade_desc` VALUES ('5', '&lt;p style=&quot;text-align: center;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;1.会员共分为4个等级，分别为：青铜会员、白银会员、黄金会员、钻石会员。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;2.会员级别由经验值决定，经验值越高会员等级越高，享受到的会员权益越多。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;3.成长值与消费金额成正比，完成购物后获得与结算金额相对应的成长值。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;4.会员级别的升降均由系统自动处理，无需申请。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;/span&gt;&lt;/p&gt;', '1530842063', '1', '1534478144', '0', '1');
INSERT INTO `fy_customer_grade_desc` VALUES ('6', '&lt;p style=&quot;text-align: center;&quot;&gt;&lt;strong&gt;会员专属特权&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;table width=&quot;613&quot; align=&quot;center&quot;&gt;&lt;tbody&gt;&lt;tr class=&quot;firstRow&quot;&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;126&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;会员专属特权&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;青铜会员&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;79&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;白银会员&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;黄金会员&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;261&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;钻石会员&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;126&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;新人礼包&lt;/span&gt;&lt;/p&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;可享&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;79&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;/&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;/&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;261&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;/&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;126&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;购物积分&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;标准积分&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;79&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;1.5倍积分&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;2倍积分&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;261&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;3倍积分&lt;/span&gt;&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;126&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;会员优惠活动&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;可享&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;79&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;可享&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;可享&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;261&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;可享&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;126&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;游戏抽奖&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;可享&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;79&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;可享&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;可享&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;261&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;可享&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;126&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;会员升级送积分&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;/&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;79&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;100积分&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;500积分&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;261&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;1000积分&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;126&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;免邮券&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;/&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;79&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;三月1张&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;单月1张&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;261&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;每月1张&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;126&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;生日礼包&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;/&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;79&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;可享&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;可享&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;261&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;可享&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;126&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;超值优惠券&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;/&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;79&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;/&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;每月2张&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;261&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;每月5张&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;126&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;钻石会员尊享体验&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;/&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;79&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;/&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;73&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;/&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot; width=&quot;261&quot; class=&quot;selectTdClass&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: 宋体, SimSun;&quot;&gt;包括但不限于新品体验、尊享定制体验等&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1530842847', '1', '1532600984', '0', '3');
INSERT INTO `fy_customer_grade_desc` VALUES ('7', '&lt;p&gt;1.通过经验值计算会员等级；&lt;/p&gt;&lt;p&gt;2.购物送相应的经验值。&lt;br/&gt;&lt;/p&gt;', '1532601039', '1', '1534130353', '0', '2');

-- ----------------------------
-- Table structure for fy_customer_login_log
-- ----------------------------
DROP TABLE IF EXISTS `fy_customer_login_log`;
CREATE TABLE `fy_customer_login_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '表ID',
  `uid` mediumint(8) NOT NULL COMMENT '用户ID',
  `openid` varchar(50) NOT NULL COMMENT '用户openid',
  `login_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '登录时间',
  `login_ip` char(15) NOT NULL COMMENT '登录IP',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=722 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_customer_login_log
-- ----------------------------
INSERT INTO `fy_customer_login_log` VALUES ('194', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-01 16:17:59', '220.197.182.86');
INSERT INTO `fy_customer_login_log` VALUES ('195', '113', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '2018-08-01 16:48:29', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('200', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-01 17:22:24', '220.197.182.85');
INSERT INTO `fy_customer_login_log` VALUES ('201', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-01 17:53:06', '221.13.63.130');
INSERT INTO `fy_customer_login_log` VALUES ('202', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-01 18:26:09', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('203', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-01 19:51:34', '221.13.63.168');
INSERT INTO `fy_customer_login_log` VALUES ('204', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-01 19:53:21', '221.13.63.168');
INSERT INTO `fy_customer_login_log` VALUES ('205', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-01 19:56:26', '221.13.63.168');
INSERT INTO `fy_customer_login_log` VALUES ('206', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-01 19:56:47', '221.13.63.168');
INSERT INTO `fy_customer_login_log` VALUES ('207', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-01 19:59:58', '221.13.63.168');
INSERT INTO `fy_customer_login_log` VALUES ('208', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-01 20:00:04', '221.13.63.168');
INSERT INTO `fy_customer_login_log` VALUES ('209', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-01 20:00:20', '221.13.63.168');
INSERT INTO `fy_customer_login_log` VALUES ('210', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-01 20:00:39', '221.13.63.168');
INSERT INTO `fy_customer_login_log` VALUES ('211', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-01 20:00:52', '221.13.63.168');
INSERT INTO `fy_customer_login_log` VALUES ('212', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-01 20:01:02', '221.13.63.168');
INSERT INTO `fy_customer_login_log` VALUES ('213', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-01 20:06:53', '221.13.63.168');
INSERT INTO `fy_customer_login_log` VALUES ('214', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-01 20:07:06', '221.13.63.168');
INSERT INTO `fy_customer_login_log` VALUES ('215', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-01 20:08:32', '221.13.63.168');
INSERT INTO `fy_customer_login_log` VALUES ('216', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-01 20:09:24', '221.13.63.168');
INSERT INTO `fy_customer_login_log` VALUES ('217', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-01 20:10:05', '221.13.63.168');
INSERT INTO `fy_customer_login_log` VALUES ('218', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-01 20:11:23', '221.13.63.168');
INSERT INTO `fy_customer_login_log` VALUES ('219', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-01 20:12:16', '221.13.63.168');
INSERT INTO `fy_customer_login_log` VALUES ('220', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-01 20:12:33', '221.13.63.168');
INSERT INTO `fy_customer_login_log` VALUES ('221', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-01 20:13:12', '221.13.63.168');
INSERT INTO `fy_customer_login_log` VALUES ('222', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-01 20:13:37', '221.13.63.168');
INSERT INTO `fy_customer_login_log` VALUES ('223', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-01 21:57:07', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('224', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-01 21:57:44', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('225', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-01 22:01:16', '112.195.68.211');
INSERT INTO `fy_customer_login_log` VALUES ('226', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-01 22:33:35', '112.195.68.211');
INSERT INTO `fy_customer_login_log` VALUES ('227', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-01 22:34:11', '112.195.68.211');
INSERT INTO `fy_customer_login_log` VALUES ('228', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-01 22:48:11', '112.195.68.211');
INSERT INTO `fy_customer_login_log` VALUES ('234', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-02 08:50:20', '220.197.182.68');
INSERT INTO `fy_customer_login_log` VALUES ('238', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-02 09:05:45', '112.195.68.211');
INSERT INTO `fy_customer_login_log` VALUES ('239', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-02 09:27:38', '112.195.68.211');
INSERT INTO `fy_customer_login_log` VALUES ('240', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-02 10:11:06', '220.197.182.68');
INSERT INTO `fy_customer_login_log` VALUES ('241', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-02 10:21:30', '220.197.182.68');
INSERT INTO `fy_customer_login_log` VALUES ('242', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-02 10:29:14', '220.197.182.89');
INSERT INTO `fy_customer_login_log` VALUES ('243', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-02 10:45:43', '220.197.182.89');
INSERT INTO `fy_customer_login_log` VALUES ('244', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-02 10:49:20', '220.197.182.68');
INSERT INTO `fy_customer_login_log` VALUES ('245', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-02 11:00:52', '220.197.182.89');
INSERT INTO `fy_customer_login_log` VALUES ('246', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-02 11:02:18', '220.197.182.68');
INSERT INTO `fy_customer_login_log` VALUES ('247', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-02 11:22:32', '220.197.182.68');
INSERT INTO `fy_customer_login_log` VALUES ('248', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-02 11:34:40', '220.197.182.68');
INSERT INTO `fy_customer_login_log` VALUES ('249', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-02 11:44:52', '220.197.182.68');
INSERT INTO `fy_customer_login_log` VALUES ('250', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-02 11:52:17', '220.197.182.89');
INSERT INTO `fy_customer_login_log` VALUES ('251', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-02 13:23:49', '220.197.182.68');
INSERT INTO `fy_customer_login_log` VALUES ('252', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-02 13:25:51', '221.13.63.53');
INSERT INTO `fy_customer_login_log` VALUES ('253', '113', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '2018-08-02 13:40:07', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('254', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-02 13:50:48', '220.197.182.89');
INSERT INTO `fy_customer_login_log` VALUES ('255', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-02 14:01:05', '220.197.182.89');
INSERT INTO `fy_customer_login_log` VALUES ('256', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-02 14:33:09', '220.197.182.68');
INSERT INTO `fy_customer_login_log` VALUES ('257', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '2018-08-02 14:41:17', '223.104.95.199');
INSERT INTO `fy_customer_login_log` VALUES ('258', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-02 14:46:45', '220.197.182.68');
INSERT INTO `fy_customer_login_log` VALUES ('259', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-02 14:51:28', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('260', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '2018-08-02 14:52:10', '223.104.95.199');
INSERT INTO `fy_customer_login_log` VALUES ('261', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-02 14:58:40', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('262', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-02 15:11:50', '220.197.182.89');
INSERT INTO `fy_customer_login_log` VALUES ('263', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '2018-08-02 15:38:45', '223.104.95.199');
INSERT INTO `fy_customer_login_log` VALUES ('264', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-02 15:40:08', '220.197.182.89');
INSERT INTO `fy_customer_login_log` VALUES ('265', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '2018-08-02 16:22:58', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('266', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-02 16:33:53', '220.197.182.89');
INSERT INTO `fy_customer_login_log` VALUES ('267', '113', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '2018-08-02 16:36:02', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('268', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-02 17:02:26', '220.197.182.89');
INSERT INTO `fy_customer_login_log` VALUES ('269', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-02 17:14:46', '220.197.182.89');
INSERT INTO `fy_customer_login_log` VALUES ('270', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '2018-08-02 17:24:44', '223.104.94.238');
INSERT INTO `fy_customer_login_log` VALUES ('271', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-02 17:33:04', '220.197.182.89');
INSERT INTO `fy_customer_login_log` VALUES ('272', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-02 17:52:45', '220.197.182.89');
INSERT INTO `fy_customer_login_log` VALUES ('273', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-02 18:27:26', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('274', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '2018-08-03 08:34:38', '223.104.94.238');
INSERT INTO `fy_customer_login_log` VALUES ('275', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '2018-08-03 08:48:37', '223.104.94.238');
INSERT INTO `fy_customer_login_log` VALUES ('276', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-03 08:58:30', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('277', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '2018-08-03 09:01:08', '223.104.94.238');
INSERT INTO `fy_customer_login_log` VALUES ('278', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-03 09:03:01', '220.197.182.68');
INSERT INTO `fy_customer_login_log` VALUES ('279', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-03 09:15:52', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('280', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-03 09:28:07', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('281', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '2018-08-03 09:34:59', '223.104.94.238');
INSERT INTO `fy_customer_login_log` VALUES ('282', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-03 09:43:58', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('283', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-03 10:59:48', '220.197.182.68');
INSERT INTO `fy_customer_login_log` VALUES ('284', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-03 11:11:12', '220.197.182.68');
INSERT INTO `fy_customer_login_log` VALUES ('285', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '2018-08-03 11:18:05', '223.104.94.238');
INSERT INTO `fy_customer_login_log` VALUES ('286', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-03 11:21:20', '220.197.182.68');
INSERT INTO `fy_customer_login_log` VALUES ('287', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-03 11:35:33', '220.197.182.68');
INSERT INTO `fy_customer_login_log` VALUES ('288', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-03 11:49:38', '220.197.182.68');
INSERT INTO `fy_customer_login_log` VALUES ('289', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '2018-08-03 11:50:56', '223.104.94.238');
INSERT INTO `fy_customer_login_log` VALUES ('290', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '2018-08-03 12:08:13', '223.104.94.238');
INSERT INTO `fy_customer_login_log` VALUES ('291', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-03 12:25:44', '220.197.182.86');
INSERT INTO `fy_customer_login_log` VALUES ('292', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-03 13:31:12', '220.197.182.68');
INSERT INTO `fy_customer_login_log` VALUES ('293', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '2018-08-03 13:48:54', '223.104.97.4');
INSERT INTO `fy_customer_login_log` VALUES ('294', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '2018-08-03 14:04:28', '223.104.97.4');
INSERT INTO `fy_customer_login_log` VALUES ('295', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-03 14:24:21', '220.197.182.68');
INSERT INTO `fy_customer_login_log` VALUES ('296', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-03 14:46:39', '220.197.182.68');
INSERT INTO `fy_customer_login_log` VALUES ('297', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-03 15:02:00', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('298', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-03 15:02:52', '220.197.182.68');
INSERT INTO `fy_customer_login_log` VALUES ('299', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-03 15:15:22', '220.197.182.90');
INSERT INTO `fy_customer_login_log` VALUES ('300', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-03 15:26:03', '220.197.182.90');
INSERT INTO `fy_customer_login_log` VALUES ('301', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '2018-08-03 15:32:46', '223.104.97.60');
INSERT INTO `fy_customer_login_log` VALUES ('302', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-03 15:42:35', '220.197.182.72');
INSERT INTO `fy_customer_login_log` VALUES ('303', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-03 15:47:58', '220.197.182.90');
INSERT INTO `fy_customer_login_log` VALUES ('304', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '2018-08-03 15:54:11', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('305', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-03 15:58:50', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('306', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '2018-08-03 16:18:32', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('307', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-03 16:18:48', '220.197.182.86');
INSERT INTO `fy_customer_login_log` VALUES ('308', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-03 16:25:57', '220.197.182.90');
INSERT INTO `fy_customer_login_log` VALUES ('309', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-03 16:26:27', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('310', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-03 16:35:17', '220.197.182.89');
INSERT INTO `fy_customer_login_log` VALUES ('311', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-03 16:42:01', '220.197.182.90');
INSERT INTO `fy_customer_login_log` VALUES ('312', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '2018-08-03 16:51:35', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('313', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '2018-08-03 17:10:03', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('314', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-03 17:42:22', '220.197.182.85');
INSERT INTO `fy_customer_login_log` VALUES ('315', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '2018-08-03 18:22:23', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('316', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-04 04:53:13', '14.16.101.199');
INSERT INTO `fy_customer_login_log` VALUES ('317', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-04 09:57:56', '220.197.182.68');
INSERT INTO `fy_customer_login_log` VALUES ('318', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-04 11:12:06', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('319', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-04 11:15:27', '220.197.182.86');
INSERT INTO `fy_customer_login_log` VALUES ('320', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-04 15:08:51', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('321', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-04 15:38:17', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('322', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-04 15:44:11', '220.197.182.68');
INSERT INTO `fy_customer_login_log` VALUES ('323', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-04 15:54:59', '220.197.182.68');
INSERT INTO `fy_customer_login_log` VALUES ('324', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-04 17:38:50', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('325', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-04 17:43:39', '220.197.182.68');
INSERT INTO `fy_customer_login_log` VALUES ('326', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-04 17:48:05', '223.104.95.179');
INSERT INTO `fy_customer_login_log` VALUES ('327', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-04 17:49:28', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('328', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-04 18:19:42', '220.197.182.71');
INSERT INTO `fy_customer_login_log` VALUES ('329', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-04 21:38:18', '183.37.38.174');
INSERT INTO `fy_customer_login_log` VALUES ('330', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-04 21:51:41', '183.37.38.174');
INSERT INTO `fy_customer_login_log` VALUES ('331', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-04 22:01:57', '183.37.38.174');
INSERT INTO `fy_customer_login_log` VALUES ('332', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-06 09:24:17', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('333', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-06 09:27:54', '223.104.97.55');
INSERT INTO `fy_customer_login_log` VALUES ('334', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-06 09:49:14', '220.197.182.68');
INSERT INTO `fy_customer_login_log` VALUES ('335', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-06 10:04:39', '223.104.97.55');
INSERT INTO `fy_customer_login_log` VALUES ('336', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-06 12:03:00', '223.104.97.55');
INSERT INTO `fy_customer_login_log` VALUES ('337', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-06 15:15:45', '221.13.63.41');
INSERT INTO `fy_customer_login_log` VALUES ('338', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-07 08:40:34', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('339', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-07 11:38:56', '220.197.182.72');
INSERT INTO `fy_customer_login_log` VALUES ('340', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-07 14:55:50', '223.104.24.100');
INSERT INTO `fy_customer_login_log` VALUES ('341', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-07 15:22:53', '223.104.24.100');
INSERT INTO `fy_customer_login_log` VALUES ('342', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-07 15:34:23', '220.197.182.68');
INSERT INTO `fy_customer_login_log` VALUES ('343', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-07 18:18:35', '220.197.182.72');
INSERT INTO `fy_customer_login_log` VALUES ('344', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-08 09:03:10', '220.197.182.72');
INSERT INTO `fy_customer_login_log` VALUES ('345', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-08 10:21:53', '220.197.182.89');
INSERT INTO `fy_customer_login_log` VALUES ('346', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-08 10:22:11', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('347', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-08 10:48:33', '220.197.182.72');
INSERT INTO `fy_customer_login_log` VALUES ('348', '121', 'omQYXwNHPeY_xGIxXQMxv9Z4jigc', '2018-08-08 11:15:28', '220.197.182.86');
INSERT INTO `fy_customer_login_log` VALUES ('349', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-08 11:27:17', '220.197.182.72');
INSERT INTO `fy_customer_login_log` VALUES ('350', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-08 11:40:36', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('351', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-08 11:56:36', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('352', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-08 11:57:53', '223.104.24.101');
INSERT INTO `fy_customer_login_log` VALUES ('353', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-08 12:09:34', '223.104.24.101');
INSERT INTO `fy_customer_login_log` VALUES ('354', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-08 13:42:08', '220.197.182.68');
INSERT INTO `fy_customer_login_log` VALUES ('355', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-08 13:54:03', '220.197.182.68');
INSERT INTO `fy_customer_login_log` VALUES ('356', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-08 14:17:36', '220.197.182.68');
INSERT INTO `fy_customer_login_log` VALUES ('357', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-08 14:21:49', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('358', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-08 14:28:42', '220.197.182.68');
INSERT INTO `fy_customer_login_log` VALUES ('359', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-08 14:33:20', '220.197.208.9');
INSERT INTO `fy_customer_login_log` VALUES ('360', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-08 14:39:35', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('361', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-08 14:43:23', '220.197.208.9');
INSERT INTO `fy_customer_login_log` VALUES ('362', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-08 14:59:34', '220.197.208.9');
INSERT INTO `fy_customer_login_log` VALUES ('363', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-08 15:21:47', '220.197.208.9');
INSERT INTO `fy_customer_login_log` VALUES ('364', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-08 15:35:59', '220.197.208.9');
INSERT INTO `fy_customer_login_log` VALUES ('365', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-08 16:02:12', '220.197.208.9');
INSERT INTO `fy_customer_login_log` VALUES ('366', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-08 16:13:23', '220.197.208.9');
INSERT INTO `fy_customer_login_log` VALUES ('367', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-08 16:33:49', '220.197.208.9');
INSERT INTO `fy_customer_login_log` VALUES ('368', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-08 16:44:18', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('369', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-08 16:54:46', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('370', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-08 16:58:59', '220.197.208.9');
INSERT INTO `fy_customer_login_log` VALUES ('371', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-08 17:07:13', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('372', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-08 18:04:29', '220.197.208.9');
INSERT INTO `fy_customer_login_log` VALUES ('373', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-08 21:24:09', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('374', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-08 21:36:20', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('375', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-09 10:21:38', '220.197.208.9');
INSERT INTO `fy_customer_login_log` VALUES ('376', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-09 11:06:11', '220.197.182.90');
INSERT INTO `fy_customer_login_log` VALUES ('377', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-09 11:25:02', '220.197.182.90');
INSERT INTO `fy_customer_login_log` VALUES ('378', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-09 13:28:07', '220.197.208.9');
INSERT INTO `fy_customer_login_log` VALUES ('379', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-09 13:32:50', '220.197.182.90');
INSERT INTO `fy_customer_login_log` VALUES ('380', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-09 15:01:54', '220.197.208.9');
INSERT INTO `fy_customer_login_log` VALUES ('381', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-09 15:28:03', '220.197.208.9');
INSERT INTO `fy_customer_login_log` VALUES ('382', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-09 15:42:55', '220.197.208.9');
INSERT INTO `fy_customer_login_log` VALUES ('383', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-09 16:45:05', '220.197.182.90');
INSERT INTO `fy_customer_login_log` VALUES ('384', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-09 17:01:31', '220.197.182.90');
INSERT INTO `fy_customer_login_log` VALUES ('385', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-09 17:30:02', '220.197.182.90');
INSERT INTO `fy_customer_login_log` VALUES ('386', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-09 17:40:17', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('387', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-09 17:51:13', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('388', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-09 22:46:46', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('389', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-10 09:07:31', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('390', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-10 09:40:51', '220.197.182.72');
INSERT INTO `fy_customer_login_log` VALUES ('391', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-10 09:53:23', '220.197.182.87');
INSERT INTO `fy_customer_login_log` VALUES ('392', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-10 10:04:32', '220.197.182.87');
INSERT INTO `fy_customer_login_log` VALUES ('393', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-10 10:18:42', '220.197.182.87');
INSERT INTO `fy_customer_login_log` VALUES ('394', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-10 10:44:01', '220.197.182.87');
INSERT INTO `fy_customer_login_log` VALUES ('395', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-10 10:46:25', '220.197.182.87');
INSERT INTO `fy_customer_login_log` VALUES ('396', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-10 10:50:48', '220.197.182.87');
INSERT INTO `fy_customer_login_log` VALUES ('397', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-10 11:32:24', '220.197.182.87');
INSERT INTO `fy_customer_login_log` VALUES ('398', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-10 11:46:39', '220.197.182.87');
INSERT INTO `fy_customer_login_log` VALUES ('399', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-10 13:28:20', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('400', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-10 13:47:54', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('401', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-10 13:58:41', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('402', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-10 14:08:40', '220.197.182.87');
INSERT INTO `fy_customer_login_log` VALUES ('403', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-10 14:13:43', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('404', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-10 14:24:13', '220.197.182.87');
INSERT INTO `fy_customer_login_log` VALUES ('405', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-10 14:29:36', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('406', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-10 14:44:31', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('407', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-10 14:55:44', '10.27.36.177');
INSERT INTO `fy_customer_login_log` VALUES ('408', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-10 14:59:03', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('409', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-10 15:22:14', '10.27.36.177');
INSERT INTO `fy_customer_login_log` VALUES ('410', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-10 16:13:31', '10.27.36.177');
INSERT INTO `fy_customer_login_log` VALUES ('411', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-10 16:55:35', '10.27.36.177');
INSERT INTO `fy_customer_login_log` VALUES ('412', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-10 18:59:16', '221.13.63.75');
INSERT INTO `fy_customer_login_log` VALUES ('413', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-10 19:05:22', '59.63.206.193');
INSERT INTO `fy_customer_login_log` VALUES ('414', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-10 19:10:06', '221.13.63.75');
INSERT INTO `fy_customer_login_log` VALUES ('415', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-10 19:22:33', '59.63.206.193');
INSERT INTO `fy_customer_login_log` VALUES ('416', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-10 19:44:11', '117.188.3.185');
INSERT INTO `fy_customer_login_log` VALUES ('417', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-10 19:45:17', '59.63.206.193');
INSERT INTO `fy_customer_login_log` VALUES ('418', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-10 19:47:15', '221.13.63.75');
INSERT INTO `fy_customer_login_log` VALUES ('419', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-10 21:40:04', '59.63.206.193');
INSERT INTO `fy_customer_login_log` VALUES ('420', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-11 10:23:13', '221.13.63.108');
INSERT INTO `fy_customer_login_log` VALUES ('421', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-11 20:27:08', '59.63.206.193');
INSERT INTO `fy_customer_login_log` VALUES ('422', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-11 20:38:16', '59.63.206.193');
INSERT INTO `fy_customer_login_log` VALUES ('423', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-13 09:52:51', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('424', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-13 09:54:27', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('425', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '2018-08-13 09:57:20', '223.104.95.176');
INSERT INTO `fy_customer_login_log` VALUES ('426', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '2018-08-13 10:11:06', '223.104.95.176');
INSERT INTO `fy_customer_login_log` VALUES ('427', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-13 10:13:59', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('428', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-13 10:32:18', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('429', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-13 10:35:18', '220.197.182.72');
INSERT INTO `fy_customer_login_log` VALUES ('430', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-13 11:06:16', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('431', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-13 11:26:57', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('432', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-13 13:15:35', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('433', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-13 13:40:14', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('434', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-13 13:40:58', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('435', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-13 14:00:42', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('436', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-13 14:11:28', '220.197.182.72');
INSERT INTO `fy_customer_login_log` VALUES ('437', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-13 14:19:24', '10.110.111.23');
INSERT INTO `fy_customer_login_log` VALUES ('438', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-13 14:22:13', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('439', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-13 14:28:03', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('440', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-13 14:28:45', '10.110.111.23');
INSERT INTO `fy_customer_login_log` VALUES ('441', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-13 14:31:52', '10.27.31.199');
INSERT INTO `fy_customer_login_log` VALUES ('442', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-13 14:32:11', '10.27.31.199');
INSERT INTO `fy_customer_login_log` VALUES ('443', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-13 14:35:37', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('444', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-13 14:38:48', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('445', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-13 14:50:38', '10.27.32.116');
INSERT INTO `fy_customer_login_log` VALUES ('446', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-13 14:55:46', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('447', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-13 15:01:11', '220.197.182.87');
INSERT INTO `fy_customer_login_log` VALUES ('448', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-13 15:17:31', '220.197.182.71');
INSERT INTO `fy_customer_login_log` VALUES ('449', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-13 15:20:53', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('450', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-13 15:22:53', '220.197.182.87');
INSERT INTO `fy_customer_login_log` VALUES ('451', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-13 15:35:51', '220.197.182.72');
INSERT INTO `fy_customer_login_log` VALUES ('452', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-13 15:38:32', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('453', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-13 15:43:20', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('454', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-13 15:52:40', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('455', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-13 16:04:41', '220.197.182.72');
INSERT INTO `fy_customer_login_log` VALUES ('456', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-13 16:09:31', '10.27.31.199');
INSERT INTO `fy_customer_login_log` VALUES ('457', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-13 16:18:47', '10.27.31.199');
INSERT INTO `fy_customer_login_log` VALUES ('458', '113', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '2018-08-13 16:19:19', '220.197.182.89');
INSERT INTO `fy_customer_login_log` VALUES ('459', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-13 16:23:01', '220.197.182.90');
INSERT INTO `fy_customer_login_log` VALUES ('460', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-13 16:28:53', '10.110.111.23');
INSERT INTO `fy_customer_login_log` VALUES ('461', '113', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '2018-08-13 16:29:53', '220.197.182.89');
INSERT INTO `fy_customer_login_log` VALUES ('462', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-13 16:42:26', '220.197.182.72');
INSERT INTO `fy_customer_login_log` VALUES ('463', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-13 16:45:11', '10.110.111.23');
INSERT INTO `fy_customer_login_log` VALUES ('464', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-13 17:07:38', '10.110.111.23');
INSERT INTO `fy_customer_login_log` VALUES ('465', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-13 17:10:41', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('466', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-13 17:16:55', '10.110.111.23');
INSERT INTO `fy_customer_login_log` VALUES ('467', '113', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '2018-08-13 17:18:48', '220.197.182.89');
INSERT INTO `fy_customer_login_log` VALUES ('468', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-13 17:27:18', '220.197.182.86');
INSERT INTO `fy_customer_login_log` VALUES ('469', '113', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '2018-08-13 17:29:00', '220.197.182.89');
INSERT INTO `fy_customer_login_log` VALUES ('470', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-14 09:03:41', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('471', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-14 09:25:57', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('472', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-14 10:16:42', '10.110.111.23');
INSERT INTO `fy_customer_login_log` VALUES ('473', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-14 10:29:25', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('474', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-14 10:31:49', '10.110.111.23');
INSERT INTO `fy_customer_login_log` VALUES ('475', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-14 11:03:13', '220.197.182.86');
INSERT INTO `fy_customer_login_log` VALUES ('476', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-14 11:35:43', '220.197.182.86');
INSERT INTO `fy_customer_login_log` VALUES ('477', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-14 11:52:13', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('478', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-14 11:54:34', '223.104.97.60');
INSERT INTO `fy_customer_login_log` VALUES ('479', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-14 12:05:12', '223.104.97.60');
INSERT INTO `fy_customer_login_log` VALUES ('480', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-14 13:32:24', '223.104.97.60');
INSERT INTO `fy_customer_login_log` VALUES ('481', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-14 13:50:30', '223.104.97.60');
INSERT INTO `fy_customer_login_log` VALUES ('482', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-14 14:01:19', '10.110.111.23');
INSERT INTO `fy_customer_login_log` VALUES ('483', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-14 14:12:37', '10.27.32.116');
INSERT INTO `fy_customer_login_log` VALUES ('484', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-14 14:35:52', '10.110.111.23');
INSERT INTO `fy_customer_login_log` VALUES ('485', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-14 14:48:04', '220.197.182.72');
INSERT INTO `fy_customer_login_log` VALUES ('486', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-14 14:54:03', '220.197.182.87');
INSERT INTO `fy_customer_login_log` VALUES ('487', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-14 14:54:47', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('488', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-14 15:01:46', '220.197.182.72');
INSERT INTO `fy_customer_login_log` VALUES ('489', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-14 15:05:01', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('490', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-14 15:24:42', '220.197.182.87');
INSERT INTO `fy_customer_login_log` VALUES ('491', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-14 15:25:49', '220.197.182.72');
INSERT INTO `fy_customer_login_log` VALUES ('492', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-14 15:35:13', '220.197.182.87');
INSERT INTO `fy_customer_login_log` VALUES ('493', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-14 15:40:25', '220.197.182.72');
INSERT INTO `fy_customer_login_log` VALUES ('494', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-14 16:00:09', '10.110.111.23');
INSERT INTO `fy_customer_login_log` VALUES ('495', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-14 16:16:12', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('496', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-14 16:28:35', '220.197.182.72');
INSERT INTO `fy_customer_login_log` VALUES ('497', '113', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '2018-08-14 16:52:15', '220.197.182.68');
INSERT INTO `fy_customer_login_log` VALUES ('498', '113', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '2018-08-14 17:26:29', '220.197.182.68');
INSERT INTO `fy_customer_login_log` VALUES ('499', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-14 17:26:48', '220.197.182.72');
INSERT INTO `fy_customer_login_log` VALUES ('500', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-14 17:29:14', '220.197.182.72');
INSERT INTO `fy_customer_login_log` VALUES ('501', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-14 17:34:22', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('502', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-14 21:55:12', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('503', '113', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '2018-08-15 08:49:54', '220.197.182.72');
INSERT INTO `fy_customer_login_log` VALUES ('504', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-15 08:54:53', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('505', '113', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '2018-08-15 09:03:37', '220.197.182.72');
INSERT INTO `fy_customer_login_log` VALUES ('506', '122', 'omQYXwAvpKaDHLw4Q537lN9Fkc74', '2018-08-15 09:09:58', '1.204.114.184');
INSERT INTO `fy_customer_login_log` VALUES ('507', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-15 09:11:59', '220.197.182.72');
INSERT INTO `fy_customer_login_log` VALUES ('508', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-15 09:12:07', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('509', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-15 09:12:26', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('510', '113', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '2018-08-15 09:14:03', '220.197.182.72');
INSERT INTO `fy_customer_login_log` VALUES ('511', '113', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '2018-08-15 09:29:49', '220.197.182.72');
INSERT INTO `fy_customer_login_log` VALUES ('512', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-15 09:32:55', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('513', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-15 09:36:37', '10.110.111.23');
INSERT INTO `fy_customer_login_log` VALUES ('514', '113', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '2018-08-15 09:41:14', '220.197.182.72');
INSERT INTO `fy_customer_login_log` VALUES ('515', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-15 09:42:30', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('516', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-15 09:47:51', '10.110.111.23');
INSERT INTO `fy_customer_login_log` VALUES ('517', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-15 10:41:45', '10.110.111.23');
INSERT INTO `fy_customer_login_log` VALUES ('518', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-15 10:42:49', '10.110.111.23');
INSERT INTO `fy_customer_login_log` VALUES ('519', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-15 10:58:00', '10.110.111.23');
INSERT INTO `fy_customer_login_log` VALUES ('520', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-15 11:00:46', '10.110.111.23');
INSERT INTO `fy_customer_login_log` VALUES ('521', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-15 11:20:39', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('522', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-15 11:33:15', '10.110.111.23');
INSERT INTO `fy_customer_login_log` VALUES ('523', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-15 11:38:25', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('524', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-15 11:45:36', '10.110.111.23');
INSERT INTO `fy_customer_login_log` VALUES ('525', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-15 12:36:21', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('526', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-15 13:21:26', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('527', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-15 13:38:59', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('528', '123', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-15 13:48:28', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('529', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-15 13:49:07', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('530', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-15 13:59:53', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('531', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-15 14:10:18', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('532', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-15 14:26:26', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('533', '113', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '2018-08-15 14:31:52', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('534', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-15 14:36:35', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('535', '113', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '2018-08-15 14:45:27', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('536', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-15 14:47:36', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('537', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-15 14:58:20', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('538', '113', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '2018-08-15 15:03:54', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('539', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-15 15:08:40', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('540', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-15 15:20:48', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('541', '124', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-15 15:40:37', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('542', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-15 15:57:26', '10.110.111.23');
INSERT INTO `fy_customer_login_log` VALUES ('543', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-15 16:00:32', '10.110.111.23');
INSERT INTO `fy_customer_login_log` VALUES ('544', '129', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-15 16:02:05', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('545', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-15 16:11:05', '10.110.111.23');
INSERT INTO `fy_customer_login_log` VALUES ('546', '129', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-15 16:12:09', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('547', '130', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-15 16:22:29', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('548', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-15 16:29:19', '10.110.111.23');
INSERT INTO `fy_customer_login_log` VALUES ('549', '113', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '2018-08-15 16:43:19', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('550', '0', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-15 16:44:25', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('551', '113', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '2018-08-15 16:54:46', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('552', '133', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-15 17:05:28', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('553', '133', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-15 17:16:33', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('554', '113', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '2018-08-15 17:31:05', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('555', '134', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-15 22:47:40', '59.63.206.193');
INSERT INTO `fy_customer_login_log` VALUES ('556', '134', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-16 09:37:14', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('557', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-16 09:49:37', '10.110.111.23');
INSERT INTO `fy_customer_login_log` VALUES ('558', '134', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-16 10:15:48', '220.197.182.85');
INSERT INTO `fy_customer_login_log` VALUES ('559', '134', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-16 10:26:19', '220.197.182.85');
INSERT INTO `fy_customer_login_log` VALUES ('560', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-16 10:34:06', '10.27.31.199');
INSERT INTO `fy_customer_login_log` VALUES ('561', '134', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-16 10:47:49', '220.197.182.85');
INSERT INTO `fy_customer_login_log` VALUES ('562', '134', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-16 10:58:06', '220.197.182.85');
INSERT INTO `fy_customer_login_log` VALUES ('563', '134', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-16 11:01:10', '220.197.182.85');
INSERT INTO `fy_customer_login_log` VALUES ('564', '134', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-16 11:14:09', '220.197.182.85');
INSERT INTO `fy_customer_login_log` VALUES ('565', '134', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-16 11:30:15', '220.197.182.85');
INSERT INTO `fy_customer_login_log` VALUES ('566', '134', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-16 13:34:27', '220.197.182.85');
INSERT INTO `fy_customer_login_log` VALUES ('567', '134', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-16 13:50:42', '220.197.182.85');
INSERT INTO `fy_customer_login_log` VALUES ('568', '134', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-16 14:36:53', '220.197.182.85');
INSERT INTO `fy_customer_login_log` VALUES ('569', '134', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-16 14:47:24', '220.197.182.85');
INSERT INTO `fy_customer_login_log` VALUES ('570', '0', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-16 14:53:42', '59.63.206.193');
INSERT INTO `fy_customer_login_log` VALUES ('571', '135', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-16 14:57:32', '10.27.32.116');
INSERT INTO `fy_customer_login_log` VALUES ('572', '0', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-16 15:10:19', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('573', '0', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-16 15:15:02', '220.197.182.85');
INSERT INTO `fy_customer_login_log` VALUES ('574', '0', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-16 15:24:00', '10.27.32.116');
INSERT INTO `fy_customer_login_log` VALUES ('575', '136', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-16 15:30:46', '10.27.32.116');
INSERT INTO `fy_customer_login_log` VALUES ('576', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-16 15:34:11', '10.110.111.23');
INSERT INTO `fy_customer_login_log` VALUES ('577', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-16 15:36:06', '220.197.182.90');
INSERT INTO `fy_customer_login_log` VALUES ('578', '136', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-16 15:38:51', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('579', '136', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-16 15:42:10', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('580', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-16 15:52:06', '220.197.182.70');
INSERT INTO `fy_customer_login_log` VALUES ('581', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-16 15:52:51', '220.197.182.70');
INSERT INTO `fy_customer_login_log` VALUES ('582', '136', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-16 15:54:21', '220.197.182.68');
INSERT INTO `fy_customer_login_log` VALUES ('583', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-16 16:03:21', '220.197.182.70');
INSERT INTO `fy_customer_login_log` VALUES ('584', '136', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-16 16:08:03', '220.197.182.68');
INSERT INTO `fy_customer_login_log` VALUES ('585', '113', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '2018-08-16 16:08:24', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('586', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-16 16:14:02', '220.197.182.70');
INSERT INTO `fy_customer_login_log` VALUES ('587', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-16 16:39:01', '220.197.182.70');
INSERT INTO `fy_customer_login_log` VALUES ('588', '136', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-16 16:43:49', '220.197.182.85');
INSERT INTO `fy_customer_login_log` VALUES ('589', '136', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-16 16:54:06', '220.197.182.85');
INSERT INTO `fy_customer_login_log` VALUES ('590', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-16 17:04:37', '220.197.182.70');
INSERT INTO `fy_customer_login_log` VALUES ('591', '136', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-16 17:06:44', '220.197.182.85');
INSERT INTO `fy_customer_login_log` VALUES ('592', '136', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-16 17:15:35', '220.197.182.85');
INSERT INTO `fy_customer_login_log` VALUES ('593', '136', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-16 17:29:45', '220.197.182.85');
INSERT INTO `fy_customer_login_log` VALUES ('594', '136', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-16 17:33:33', '220.197.182.85');
INSERT INTO `fy_customer_login_log` VALUES ('595', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-16 17:36:28', '112.96.115.87');
INSERT INTO `fy_customer_login_log` VALUES ('596', '136', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-16 17:40:50', '223.104.94.251');
INSERT INTO `fy_customer_login_log` VALUES ('597', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-16 17:41:14', '112.96.115.87');
INSERT INTO `fy_customer_login_log` VALUES ('598', '123', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-16 17:42:18', '58.16.228.63');
INSERT INTO `fy_customer_login_log` VALUES ('599', '136', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-16 17:43:47', '223.104.94.251');
INSERT INTO `fy_customer_login_log` VALUES ('600', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-16 17:47:45', '10.110.111.23');
INSERT INTO `fy_customer_login_log` VALUES ('601', '136', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-16 17:52:37', '223.104.94.251');
INSERT INTO `fy_customer_login_log` VALUES ('602', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '2018-08-16 19:18:31', '223.104.95.208');
INSERT INTO `fy_customer_login_log` VALUES ('603', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-16 19:39:46', '221.13.63.141');
INSERT INTO `fy_customer_login_log` VALUES ('604', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-16 19:42:49', '221.13.63.141');
INSERT INTO `fy_customer_login_log` VALUES ('605', '137', 'omQYXwBqWI__P_DGluDNg5xQ8UfU', '2018-08-16 22:03:58', '112.195.74.218');
INSERT INTO `fy_customer_login_log` VALUES ('606', '113', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '2018-08-17 08:54:32', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('607', '123', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-17 09:04:48', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('608', '113', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '2018-08-17 09:08:34', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('609', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-17 09:12:31', '10.110.111.23');
INSERT INTO `fy_customer_login_log` VALUES ('610', '136', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-17 09:13:28', '220.197.182.85');
INSERT INTO `fy_customer_login_log` VALUES ('611', '113', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '2018-08-17 09:18:36', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('612', '136', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-17 09:26:51', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('613', '123', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-17 09:27:30', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('614', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-17 09:31:27', '10.110.111.23');
INSERT INTO `fy_customer_login_log` VALUES ('615', '0', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-17 09:37:56', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('616', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-17 09:42:55', '220.197.182.90');
INSERT INTO `fy_customer_login_log` VALUES ('617', '143', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-17 09:48:48', '220.197.182.85');
INSERT INTO `fy_customer_login_log` VALUES ('618', '143', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-17 09:49:25', '220.197.182.85');
INSERT INTO `fy_customer_login_log` VALUES ('619', '144', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-17 10:18:15', '220.197.182.85');
INSERT INTO `fy_customer_login_log` VALUES ('620', '145', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-17 10:32:51', '220.197.182.85');
INSERT INTO `fy_customer_login_log` VALUES ('621', '145', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-17 10:54:33', '220.197.182.85');
INSERT INTO `fy_customer_login_log` VALUES ('622', '145', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-17 10:54:48', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('623', '145', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-17 11:07:45', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('624', '145', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-17 11:22:16', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('625', '119', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-17 11:22:41', '220.197.182.90');
INSERT INTO `fy_customer_login_log` VALUES ('626', '146', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-17 11:46:05', '220.197.182.90');
INSERT INTO `fy_customer_login_log` VALUES ('627', '146', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-17 11:53:41', '10.110.111.23');
INSERT INTO `fy_customer_login_log` VALUES ('628', '145', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-17 11:55:27', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('629', '146', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-17 11:57:04', '10.110.111.23');
INSERT INTO `fy_customer_login_log` VALUES ('630', '123', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-17 11:59:43', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('631', '113', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '2018-08-17 13:00:23', '223.104.94.236');
INSERT INTO `fy_customer_login_log` VALUES ('632', '145', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-17 13:32:48', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('633', '146', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-17 13:37:23', '220.197.182.70');
INSERT INTO `fy_customer_login_log` VALUES ('634', '113', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '2018-08-17 13:45:56', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('635', '123', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-17 13:55:14', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('636', '113', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '2018-08-17 13:56:03', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('637', '145', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-17 13:58:49', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('638', '146', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-17 14:03:24', '220.197.182.70');
INSERT INTO `fy_customer_login_log` VALUES ('639', '146', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-17 14:05:38', '10.110.111.23');
INSERT INTO `fy_customer_login_log` VALUES ('640', '123', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-17 14:07:57', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('641', '146', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-17 14:13:29', '10.110.111.23');
INSERT INTO `fy_customer_login_log` VALUES ('642', '113', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '2018-08-17 14:15:07', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('643', '145', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-17 14:23:03', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('644', '146', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-17 14:31:47', '10.110.111.23');
INSERT INTO `fy_customer_login_log` VALUES ('645', '146', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-17 14:33:46', '220.197.182.90');
INSERT INTO `fy_customer_login_log` VALUES ('646', '123', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-17 14:38:16', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('647', '146', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-17 15:03:28', '220.197.182.90');
INSERT INTO `fy_customer_login_log` VALUES ('648', '146', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-17 15:15:11', '220.197.182.90');
INSERT INTO `fy_customer_login_log` VALUES ('649', '145', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-17 15:16:39', '10.27.32.116');
INSERT INTO `fy_customer_login_log` VALUES ('650', '147', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-17 15:26:31', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('651', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '2018-08-17 15:39:57', '223.104.97.13');
INSERT INTO `fy_customer_login_log` VALUES ('652', '147', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-17 15:51:52', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('653', '145', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-17 16:00:38', '10.27.32.116');
INSERT INTO `fy_customer_login_log` VALUES ('654', '113', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '2018-08-17 16:05:14', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('655', '145', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-17 16:12:01', '10.27.32.116');
INSERT INTO `fy_customer_login_log` VALUES ('656', '145', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-17 16:17:57', '223.104.97.39');
INSERT INTO `fy_customer_login_log` VALUES ('657', '145', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-17 16:24:03', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('658', '146', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-17 16:24:14', '220.197.182.70');
INSERT INTO `fy_customer_login_log` VALUES ('659', '145', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-17 16:31:26', '220.197.182.85');
INSERT INTO `fy_customer_login_log` VALUES ('660', '147', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-17 16:38:48', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('661', '146', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-17 16:41:47', '220.197.182.70');
INSERT INTO `fy_customer_login_log` VALUES ('662', '145', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-17 16:46:09', '223.104.97.39');
INSERT INTO `fy_customer_login_log` VALUES ('663', '145', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-17 17:11:48', '223.104.97.39');
INSERT INTO `fy_customer_login_log` VALUES ('664', '146', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-17 17:18:08', '220.197.182.70');
INSERT INTO `fy_customer_login_log` VALUES ('665', '147', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-17 17:20:26', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('666', '146', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '2018-08-17 17:24:04', '10.110.111.23');
INSERT INTO `fy_customer_login_log` VALUES ('667', '145', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-17 17:26:58', '223.104.97.39');
INSERT INTO `fy_customer_login_log` VALUES ('668', '147', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-17 17:40:15', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('669', '145', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-17 17:40:57', '223.104.97.39');
INSERT INTO `fy_customer_login_log` VALUES ('670', '145', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-17 23:38:46', '223.104.97.39');
INSERT INTO `fy_customer_login_log` VALUES ('671', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-18 07:38:07', '221.13.63.172');
INSERT INTO `fy_customer_login_log` VALUES ('672', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-18 07:48:24', '221.13.63.172');
INSERT INTO `fy_customer_login_log` VALUES ('673', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-18 08:01:58', '221.13.63.172');
INSERT INTO `fy_customer_login_log` VALUES ('674', '145', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-18 09:50:30', '223.104.97.39');
INSERT INTO `fy_customer_login_log` VALUES ('675', '113', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '2018-08-18 17:43:56', '223.104.94.236');
INSERT INTO `fy_customer_login_log` VALUES ('676', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '2018-08-18 22:03:15', '183.43.138.168');
INSERT INTO `fy_customer_login_log` VALUES ('677', '145', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-19 20:20:43', '117.188.30.220');
INSERT INTO `fy_customer_login_log` VALUES ('678', '145', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-19 20:32:18', '117.188.30.220');
INSERT INTO `fy_customer_login_log` VALUES ('679', '145', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-20 08:58:12', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('680', '145', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-20 09:20:01', '10.27.59.247');
INSERT INTO `fy_customer_login_log` VALUES ('681', '147', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-20 09:39:36', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('682', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '2018-08-20 10:01:58', '223.104.97.36');
INSERT INTO `fy_customer_login_log` VALUES ('683', '147', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-20 10:03:19', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('684', '147', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-20 10:14:56', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('685', '145', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-20 10:14:58', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('686', '147', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-20 10:26:45', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('687', '113', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '2018-08-20 10:50:17', '220.197.182.90');
INSERT INTO `fy_customer_login_log` VALUES ('688', '147', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-20 11:14:15', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('689', '113', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '2018-08-20 11:32:25', '220.197.182.90');
INSERT INTO `fy_customer_login_log` VALUES ('690', '147', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-20 11:39:43', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('691', '147', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-20 14:09:58', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('692', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '2018-08-20 14:16:35', '223.104.97.36');
INSERT INTO `fy_customer_login_log` VALUES ('693', '147', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-20 14:20:11', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('694', '147', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-20 14:32:30', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('695', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '2018-08-20 14:34:40', '223.104.97.36');
INSERT INTO `fy_customer_login_log` VALUES ('696', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '2018-08-20 14:51:32', '223.104.97.36');
INSERT INTO `fy_customer_login_log` VALUES ('697', '147', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-20 14:56:27', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('698', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '2018-08-20 15:03:28', '223.104.97.36');
INSERT INTO `fy_customer_login_log` VALUES ('699', '145', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-20 15:13:24', '10.27.19.10');
INSERT INTO `fy_customer_login_log` VALUES ('700', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '2018-08-20 15:26:41', '223.104.97.36');
INSERT INTO `fy_customer_login_log` VALUES ('701', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '2018-08-20 15:42:19', '223.104.97.36');
INSERT INTO `fy_customer_login_log` VALUES ('702', '145', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-20 15:45:45', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('703', '145', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-20 15:49:01', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('704', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '2018-08-20 16:05:13', '223.104.97.36');
INSERT INTO `fy_customer_login_log` VALUES ('705', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '2018-08-20 16:15:36', '223.104.97.36');
INSERT INTO `fy_customer_login_log` VALUES ('706', '113', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '2018-08-20 16:18:59', '220.197.182.90');
INSERT INTO `fy_customer_login_log` VALUES ('707', '147', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-20 16:34:43', '220.197.182.84');
INSERT INTO `fy_customer_login_log` VALUES ('708', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '2018-08-20 16:37:05', '223.104.97.36');
INSERT INTO `fy_customer_login_log` VALUES ('709', '149', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '2018-08-20 16:48:57', '223.104.97.0');
INSERT INTO `fy_customer_login_log` VALUES ('710', '148', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-20 16:51:49', '220.197.182.86');
INSERT INTO `fy_customer_login_log` VALUES ('711', '149', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '2018-08-20 17:08:08', '223.104.97.0');
INSERT INTO `fy_customer_login_log` VALUES ('712', '149', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '2018-08-20 17:22:51', '223.104.97.0');
INSERT INTO `fy_customer_login_log` VALUES ('713', '148', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-20 17:45:02', '220.197.182.86');
INSERT INTO `fy_customer_login_log` VALUES ('714', '148', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-20 18:07:09', '220.197.182.86');
INSERT INTO `fy_customer_login_log` VALUES ('715', '145', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-21 09:14:35', '220.197.182.85');
INSERT INTO `fy_customer_login_log` VALUES ('716', '113', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '2018-08-21 11:14:09', '220.197.182.71');
INSERT INTO `fy_customer_login_log` VALUES ('717', '113', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '2018-08-21 11:37:52', '220.197.182.71');
INSERT INTO `fy_customer_login_log` VALUES ('718', '145', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-21 11:44:03', '220.197.182.85');
INSERT INTO `fy_customer_login_log` VALUES ('719', '145', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2018-08-21 11:51:49', '220.197.182.85');
INSERT INTO `fy_customer_login_log` VALUES ('720', '148', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-21 13:44:41', '220.197.182.69');
INSERT INTO `fy_customer_login_log` VALUES ('721', '148', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '2018-08-21 13:59:55', '220.197.182.69');

-- ----------------------------
-- Table structure for fy_customer_right
-- ----------------------------
DROP TABLE IF EXISTS `fy_customer_right`;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_customer_right
-- ----------------------------
INSERT INTO `fy_customer_right` VALUES ('1', '新人礼包', '/tmp/uploads/20180723/949ad4c57591a0793b777e74c0afbd33.jpg', '新人专享', '&lt;p&gt;礼包包含一张优惠券、一张抵用券、一张积分券&lt;/p&gt;', '1', '0', '1532339953', '1532339953');
INSERT INTO `fy_customer_right` VALUES ('2', '生日礼包', '/tmp/uploads/20180723/00b284f74955a532c941f0d4d061c7fd.jpg', '生日会员专享', '&lt;p&gt;生日会员专享&lt;/p&gt;', '1', '0', '1532340075', '1532340075');
INSERT INTO `fy_customer_right` VALUES ('3', '钻石会员专享', '/tmp/uploads/20180723/6486343a125aabff9602a9e54715d5dc.png', '钻石会员专享', '&lt;p&gt;钻石会员专享&lt;/p&gt;', '1', '0', '1532340098', '1532340098');
INSERT INTO `fy_customer_right` VALUES ('4', '升级送积分', '/tmp/uploads/20180723/1681a77828fe3083f2699165d26908bb.jpg', '升级送积分', '&lt;p&gt;升级送积分&lt;/p&gt;', '1', '0', '1532340122', '1532340122');

-- ----------------------------
-- Table structure for fy_customer_sign
-- ----------------------------
DROP TABLE IF EXISTS `fy_customer_sign`;
CREATE TABLE `fy_customer_sign` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '会员签到表',
  `uid` int(11) NOT NULL COMMENT '签到用户',
  `score` decimal(10,2) DEFAULT NULL COMMENT '签到积分',
  `reward_score` decimal(10,2) DEFAULT NULL COMMENT '奖励积分',
  `addtime` int(11) NOT NULL COMMENT '签到时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_customer_sign
-- ----------------------------

-- ----------------------------
-- Table structure for fy_customer_sign_rule
-- ----------------------------
DROP TABLE IF EXISTS `fy_customer_sign_rule`;
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

-- ----------------------------
-- Records of fy_customer_sign_rule
-- ----------------------------

-- ----------------------------
-- Table structure for fy_customer_task
-- ----------------------------
DROP TABLE IF EXISTS `fy_customer_task`;
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_customer_task
-- ----------------------------

-- ----------------------------
-- Table structure for fy_customer_task_log
-- ----------------------------
DROP TABLE IF EXISTS `fy_customer_task_log`;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of fy_customer_task_log
-- ----------------------------

-- ----------------------------
-- Table structure for fy_file
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
) ENGINE=InnoDB AUTO_INCREMENT=674 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_file
-- ----------------------------

-- ----------------------------
-- Table structure for fy_gift_bag
-- ----------------------------
DROP TABLE IF EXISTS `fy_gift_bag`;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_gift_bag
-- ----------------------------
INSERT INTO `fy_gift_bag` VALUES ('3', '1534310671', '1534468264', '1', '23', '0', '新人礼包', '');
INSERT INTO `fy_gift_bag` VALUES ('4', '1534310701', '1534468259', '1', '23', '0', '生日礼包', '');

-- ----------------------------
-- Table structure for fy_gift_bag_log
-- ----------------------------
DROP TABLE IF EXISTS `fy_gift_bag_log`;
CREATE TABLE `fy_gift_bag_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '礼包记录',
  `openid` varchar(255) DEFAULT NULL,
  `gift_bag_id` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '0未发送1已经发送',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL COMMENT '1新人礼包2生日礼包3待定',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_gift_bag_log
-- ----------------------------
INSERT INTO `fy_gift_bag_log` VALUES ('1', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '3', '1', '1534311551', null, '1');
INSERT INTO `fy_gift_bag_log` VALUES ('11', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '3', '1', '1534323137', null, '1');
INSERT INTO `fy_gift_bag_log` VALUES ('12', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '3', '1', '1534323901', null, '2');
INSERT INTO `fy_gift_bag_log` VALUES ('13', 'omQYXwAasNeXdGSMymd91487Ds1g', '3', '1', '1534323901', null, '2');
INSERT INTO `fy_gift_bag_log` VALUES ('14', 'omQYXwMttcgYATxUYMuVsSAVeDSU', '3', '0', '1534323901', null, '2');
INSERT INTO `fy_gift_bag_log` VALUES ('15', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '3', '1', '1534323901', null, '2');
INSERT INTO `fy_gift_bag_log` VALUES ('16', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '3', '1', '1534323901', null, '2');
INSERT INTO `fy_gift_bag_log` VALUES ('17', 'omQYXwNHPeY_xGIxXQMxv9Z4jigc', '3', '0', '1534323901', null, '2');
INSERT INTO `fy_gift_bag_log` VALUES ('18', 'omQYXwAvpKaDHLw4Q537lN9Fkc74', '3', '0', '1534323901', null, '2');
INSERT INTO `fy_gift_bag_log` VALUES ('19', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '3', '1', '1534323901', null, '2');
INSERT INTO `fy_gift_bag_log` VALUES ('20', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '2', '0', '1534323901', null, '2');
INSERT INTO `fy_gift_bag_log` VALUES ('21', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '3', '1', '1534325003', null, '1');
INSERT INTO `fy_gift_bag_log` VALUES ('22', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '3', '1', '1534402599', null, '1');
INSERT INTO `fy_gift_bag_log` VALUES ('23', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '3', '1', '1534404287', null, '1');
INSERT INTO `fy_gift_bag_log` VALUES ('24', 'omQYXwBqWI__P_DGluDNg5xQ8UfU', '3', '1', '1534428238', null, '1');
INSERT INTO `fy_gift_bag_log` VALUES ('25', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '3', '1', '1534469450', null, '1');
INSERT INTO `fy_gift_bag_log` VALUES ('26', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '3', '1', '1534469557', null, '1');
INSERT INTO `fy_gift_bag_log` VALUES ('27', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '3', '1', '1534469886', null, '1');
INSERT INTO `fy_gift_bag_log` VALUES ('28', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '3', '1', '1534469955', null, '1');
INSERT INTO `fy_gift_bag_log` VALUES ('29', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '3', '1', '1534470034', null, '1');
INSERT INTO `fy_gift_bag_log` VALUES ('30', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '3', '1', '1534470397', null, '1');
INSERT INTO `fy_gift_bag_log` VALUES ('31', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '3', '1', '1534470726', null, '1');
INSERT INTO `fy_gift_bag_log` VALUES ('32', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '3', '1', '1534472351', null, '1');
INSERT INTO `fy_gift_bag_log` VALUES ('33', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '3', '1', '1534477565', null, '1');
INSERT INTO `fy_gift_bag_log` VALUES ('34', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '3', '1', '1534487938', null, '1');
INSERT INTO `fy_gift_bag_log` VALUES ('35', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '3', '1', '1534754553', null, '1');
INSERT INTO `fy_gift_bag_log` VALUES ('36', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '3', '1', '1534754794', null, '1');

-- ----------------------------
-- Table structure for fy_goods
-- ----------------------------
DROP TABLE IF EXISTS `fy_goods`;
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
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_goods
-- ----------------------------
INSERT INTO `fy_goods` VALUES ('196', '21', '希区瑞普2018夏新品连衣裙短袖格子长裙蝴蝶结裙子 蓝色格子 XL预售付款后30天发货 ', '[\"\\/pic\\/uploads\\/20180727\\/a588d5812a3e2a8af8724c9c6ffa4e3e.jpg\",\"\\/pic\\/uploads\\/20180727\\/18bed701ab47cdb6fbc15955d7922525.png\",\"\\/pic\\/uploads\\/20180727\\/07d6ec2f50a9d00afc0ba7fc61541de4.png\"]', '150.00', '1', '57', '9', '4', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532669280640993.jpg&quot; title=&quot;1532669280640993.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532669280641097.jpg&quot; title=&quot;1532669280641097.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532669280631800.jpg&quot; title=&quot;1532669280631800.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532669280649315.jpg&quot; title=&quot;1532669280649315.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532669280821147.png&quot; title=&quot;1532669280821147.png&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532669280798698.jpg&quot; title=&quot;1532669280798698.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532669280628809.jpg&quot; title=&quot;1532669280628809.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532669280782983.jpg&quot; title=&quot;1532669280782983.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532669280992088.jpg&quot; title=&quot;1532669280992088.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532669280429531.jpg&quot; title=&quot;1532669280429531.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532669281614088.jpg&quot; title=&quot;1532669281614088.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532669280415908.jpg&quot; title=&quot;1532669280415908.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532669281556047.jpg&quot; title=&quot;1532669281556047.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532669281147742.jpg&quot; title=&quot;1532669281147742.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532669281934338.jpg&quot; title=&quot;1532669281934338.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532669281840676.jpg&quot; title=&quot;1532669281840676.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1', '/pic/uploads/20180814/2a77ef0ee06ff1c59be3a464f851e849.jpg', '', '1534235794', '1534235794', '10', null, '100.000', null, null, '0', '30', null, '0.00', null, '0.01', '1', '1', '1', '0.00', '7天无理由退换货', '{\"\\u4e0a\\u5e02\\u5e74\\u4efd\":\"2018\\u5e74\",\"\\u4f7f\\u7528\\u573a\\u666f\":\"\\u65e5\\u5e38\",\"\\u8896\\u957f\":\"\\u77ed\\u8896\",\"\\u88d9\\u957f\":\"\\u4e2d\\u957f\\u88d9\",\"\\u5c3a\\u7801\":\"S M L \"}', '', '3431', '', '1', '', '1', '0', null, '[]', '');
INSERT INTO `fy_goods` VALUES ('197', '21', ' 颜域重磅真丝连衣裙女夏2018新款100%桑蚕丝短袖印花系带修身裙子20S8762 花色1 X', '[\"\\/pic\\/uploads\\/20180727\\/732e918a00ba3acd9fecef93a96cd5de.jpg\",\"\\/pic\\/uploads\\/20180727\\/f5a1b41ca83f438fb2ef5f2696f7b80d.jpg\",\"\\/pic\\/uploads\\/20180727\\/d88133b58698187f6b248e6f885f49db.jpg\"]', '300.00', '1', '57', '9', '4', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532669602363329.jpg&quot; title=&quot;1532669602363329.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532669685678231.jpg&quot; title=&quot;1532669685678231.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532669685355969.jpg&quot; title=&quot;1532669685355969.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532669685572996.jpg&quot; title=&quot;1532669685572996.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532669685572894.jpg&quot; title=&quot;1532669685572894.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532669685303323.jpg&quot; title=&quot;1532669685303323.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532669685685926.jpg&quot; title=&quot;1532669685685926.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532669685251178.jpg&quot; title=&quot;1532669685251178.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532669685750829.jpg&quot; title=&quot;1532669685750829.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532669685212948.jpg&quot; title=&quot;1532669685212948.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532669685249787.jpg&quot; title=&quot;1532669685249787.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532669685807194.jpg&quot; title=&quot;1532669685807194.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532669685304048.jpg&quot; title=&quot;1532669685304048.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1', '/pic/uploads/20180727/c7b69cae200565ce44fc89554c35869c.jpg', '', '1534469291', '1534469291', '10', null, '100.000', null, null, '0', '15', null, '0.00', '10', '0.01', '1', '1', '0', '10.00', '7天无理由退换货', '{\"\\u4e0a\\u5e02\\u5e74\\u4efd\":\"2018\\u5e74\\u590f\\u5b63\",\"\\u539a\\u8584\":\"\\u5e38\\u89c4\",\"\\u6750\\u8d28\\u6210\\u5206\":\"\\u96ea\\u7eba\",\"\\u8896\\u957f\":\"\\u77ed\\u8896\",\"\\u9886\\u578b\":\"\\u5706\\u9886\",\"\\u989c\\u8272\":\"\\u5370\\u82b1\",\"\\u5c3a\\u7801\":\"S M L \",\"\\u4f7f\\u7528\\u573a\\u666f\":\"\\u65e5\\u5e38\"}', '', '65877', '', '1', '', '1', '0', '', '[\"\\u4e03\\u5929\\u5305\\u90ae\",\"\\u5305\\u9000\"]', '');
INSERT INTO `fy_goods` VALUES ('199', '3', '三福2018夏装新品男圆领短袖T恤 条纹合身棉质上衣男383246 白色 M ', '[\"\\/pic\\/uploads\\/20180727\\/3d63c3a84537bd83f3d515c450aa04a8.jpg\",\"\\/pic\\/uploads\\/20180727\\/34dd2a4450fc5f8ac6ecb187c2224795.jpg\",\"\\/pic\\/uploads\\/20180727\\/459d4548386dd1450216921f81b6048e.jpg\"]', '85.00', '1', '53', '1', '1', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532670259206488.jpg&quot; title=&quot;1532670259206488.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532670259699113.jpg&quot; title=&quot;1532670259699113.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532670259992333.jpg&quot; title=&quot;1532670259992333.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532670259442548.jpg&quot; title=&quot;1532670259442548.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532670259629397.jpg&quot; title=&quot;1532670259629397.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532670259930732.jpg&quot; title=&quot;1532670259930732.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532670259692024.jpg&quot; title=&quot;1532670259692024.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532670259423221.jpg&quot; title=&quot;1532670259423221.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532670259209915.jpg&quot; title=&quot;1532670259209915.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532670283562207.jpg&quot; title=&quot;1532670283562207.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532670283100335.jpg&quot; title=&quot;1532670283100335.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532670283355802.jpg&quot; title=&quot;1532670283355802.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532670283104911.jpg&quot; title=&quot;1532670283104911.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532670283390570.jpg&quot; title=&quot;1532670283390570.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532670283674066.jpg&quot; title=&quot;1532670283674066.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532670283657139.jpg&quot; title=&quot;1532670283657139.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532670283154811.jpg&quot; title=&quot;1532670283154811.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532670283148525.jpg&quot; title=&quot;1532670283148525.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532670283270959.jpg&quot; title=&quot;1532670283270959.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532670283604572.jpg&quot; title=&quot;1532670283604572.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532670283130646.jpg&quot; title=&quot;1532670283130646.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532670283141675.jpg&quot; title=&quot;1532670283141675.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532670283413401.jpg&quot; title=&quot;1532670283413401.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532670284923841.jpg&quot; title=&quot;1532670284923841.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '0', '/pic/uploads/20180727/16f1600b56e58dd7b7fa8af3dcb0d383.jpg', '', '1533805672', '1533805672', '10', null, '50.000', '1533052800', '1533916800', '0', '15', null, '0.00', '15', '0.01', '1', '1', '1', '0.00', '7天无理由退换货', null, '', '0', '', '0', '', '0', '0', '', '', '');
INSERT INTO `fy_goods` VALUES ('201', '2', '花花公子七分袖衬衫男夏季男士薄款韩版青年免烫休闲短袖白衬衣潮 ', '[\"\\/pic\\/uploads\\/20180731\\/6343aadc07ff2fe55cf16fc13dacb3f8.png\",\"\\/pic\\/uploads\\/20180731\\/d22cbe142b2388a81464233cbf6aeaec.png\",\"\\/pic\\/uploads\\/20180731\\/da68b5e4bd9872a9139208dcfd697b52.png\"]', '134.00', '3', '54', '1', '1', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532676040135294.jpg&quot; title=&quot;1532676040135294.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532676040384295.jpg&quot; title=&quot;1532676040384295.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532676040389014.jpg&quot; title=&quot;1532676040389014.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532676040286001.jpg&quot; title=&quot;1532676040286001.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532676040356493.jpg&quot; title=&quot;1532676040356493.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532676040230156.jpg&quot; title=&quot;1532676040230156.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532676041925261.jpg&quot; title=&quot;1532676041925261.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532676041588246.jpg&quot; title=&quot;1532676041588246.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532676041912000.jpg&quot; title=&quot;1532676041912000.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532676041241947.jpg&quot; title=&quot;1532676041241947.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532676041956144.jpg&quot; title=&quot;1532676041956144.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532676041452441.jpg&quot; title=&quot;1532676041452441.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532676041114445.jpg&quot; title=&quot;1532676041114445.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532676041829336.jpg&quot; title=&quot;1532676041829336.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532676041835464.jpg&quot; title=&quot;1532676041835464.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532676042210550.jpg&quot; title=&quot;1532676042210550.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532676042922442.jpg&quot; title=&quot;1532676042922442.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532676042454040.jpg&quot; title=&quot;1532676042454040.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532676042297743.jpg&quot; title=&quot;1532676042297743.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532676042693293.jpg&quot; title=&quot;1532676042693293.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532676042695707.jpg&quot; title=&quot;1532676042695707.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532676042421452.jpg&quot; title=&quot;1532676042421452.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '0', '/pic/uploads/20180727/fa9624580f2c1f276c14473e9433db51.jpg', '', '1533181757', '1533181757', '10', null, '75.000', '1533225600', '1534176000', '1', '12', null, '0.00', '10', '0.01', '1', '1', '1', '0.00', '7天无理由退换货', '{\"\\u4e0a\\u5e02\\u5e74\\u4efd\":\"2017\\u5e74\",\"\\u4f7f\\u7528\\u573a\\u666f\":\"\\u65e5\\u5e38\",\"\\u6750\\u8d28\\u6210\\u5206\":\"\\u68c9100%\",\"\\u9886\\u578b\":\"\\u7ffb\\u9886\",\"\\u8896\\u957f\":\"\\u4e03\\u5206\\u8896\",\"\\u989c\\u8272\":\"\\u767d\\u8272 \\u7c89\\u8272 \\u6d45\\u84dd\\u8272 \\u7070\\u8272 \\u85cf\\u9752\\u8272\",\"\\u5c3a\\u7801\":\"S M L XL\"}', '', '3706', '', '1', '', '1', '0', null, null, null);
INSERT INTO `fy_goods` VALUES ('204', '2', '私留推荐塑腿型白色休闲裤女士九分哈伦裤子女夏薄款2018新款显瘦 ', '[\"\\/pic\\/uploads\\/20180727\\/21d23ed87e71929fbfef9267fb951e50.png\",\"\\/pic\\/uploads\\/20180727\\/1705d1f08f69b30ccbadfb6b14a5221a.png\",\"\\/pic\\/uploads\\/20180727\\/98803ceda66458a8b7ae2271629ac702.png\"]', '130.00', '2', '47', '1', '2', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532685698616578.jpg&quot; title=&quot;1532685698616578.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532685698560955.jpg&quot; title=&quot;1532685698560955.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532685698679195.jpg&quot; title=&quot;1532685698679195.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532685698240272.jpg&quot; title=&quot;1532685698240272.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532685698673559.jpg&quot; title=&quot;1532685698673559.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532685699307274.jpg&quot; title=&quot;1532685699307274.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532685699395388.jpg&quot; title=&quot;1532685699395388.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532685699406546.jpg&quot; title=&quot;1532685699406546.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532685699694431.jpg&quot; title=&quot;1532685699694431.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532685699525268.jpg&quot; title=&quot;1532685699525268.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532685699509628.jpg&quot; title=&quot;1532685699509628.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532685699615572.jpg&quot; title=&quot;1532685699615572.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532685699408523.jpg&quot; title=&quot;1532685699408523.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532685699471329.jpg&quot; title=&quot;1532685699471329.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532685699993163.jpg&quot; title=&quot;1532685699993163.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532685699426334.jpg&quot; title=&quot;1532685699426334.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532685699614258.jpg&quot; title=&quot;1532685699614258.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532685699777120.jpg&quot; title=&quot;1532685699777120.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532685699753652.jpg&quot; title=&quot;1532685699753652.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532685699251196.jpg&quot; title=&quot;1532685699251196.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532685699641723.jpg&quot; title=&quot;1532685699641723.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532685699408485.jpg&quot; title=&quot;1532685699408485.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180727/1532685699443988.jpg&quot; title=&quot;1532685699443988.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '0', '/pic/uploads/20180727/4dc9c61ad6a9d66b45ac919e5efae8e7.png', '', '1534320775', '1534320775', '10', null, '120.000', null, null, '1', '15', null, '0.00', '1', '0.01', '1', '1', '0', '100.00', '7天无理由退换货', '{\"\\u4e0a\\u5e02\\u5e74\\u4efd\":\"2018\\u5e74\",\"\\u4f7f\\u7528\\u573a\\u666f\":\"\\u65e5\\u5e38\",\"\\u5c3a\\u7801\":\"25 26 27 28\"}', '', '0', '', '1', '', '1', '0', null, '[]', '');
INSERT INTO `fy_goods` VALUES ('205', '2', '魅蓝5s 全网通公开版 3GB+16GB 月光银 移动联通电信4G手机 双卡双待 ', '[\"\\/pic\\/uploads\\/20180801\\/53e096bd97bc97797a327faaf187834c.png\",\"\\/pic\\/uploads\\/20180801\\/6d12d25fd931bb84577823578eb21fbe.png\",\"\\/pic\\/uploads\\/20180801\\/f32f7cf396cd7d82e8b654e921c71e50.png\",\"\\/pic\\/uploads\\/20180801\\/371f18a43270a4ec4a20aba2ecfeb15d.png\",\"\\/pic\\/uploads\\/20180801\\/52f1cfc7dd3522f69849148456f3e5fd.png\"]', '599.00', '2', '33', '11', '2', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533000263379504.jpg&quot; title=&quot;1533000263379504.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533000263699496.jpg&quot; title=&quot;1533000263699496.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533000263503471.jpg&quot; title=&quot;1533000263503471.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533000263838753.jpg&quot; title=&quot;1533000263838753.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533000263603340.jpg&quot; title=&quot;1533000263603340.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533000263617797.jpg&quot; title=&quot;1533000263617797.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533000263668689.jpg&quot; title=&quot;1533000263668689.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533000263330177.jpg&quot; title=&quot;1533000263330177.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533000263225828.jpg&quot; title=&quot;1533000263225828.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533000264261906.jpg&quot; title=&quot;1533000264261906.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533000264214994.jpg&quot; title=&quot;1533000264214994.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533000264745174.jpg&quot; title=&quot;1533000264745174.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533000264738379.jpg&quot; title=&quot;1533000264738379.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533000264894396.jpg&quot; title=&quot;1533000264894396.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533000264786937.jpg&quot; title=&quot;1533000264786937.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '0', '/pic/uploads/20180731/82f599e2cf9a67a1dc74c52e2dd0df2f.png', '', '1533110473', '1533110473', '10', null, '350.000', null, null, '1', '24', null, '0.00', '1', '0.01', '1', '1', '0', '10.00', '7天无理由退换货', null, '', '0', '', '1', '', '1', '0', null, null, null);
INSERT INTO `fy_goods` VALUES ('206', '2', 'HLA海澜之家短袖T恤男V领字母舒适透气HNTBJ2E365A蓝灰(VP)175/92A(50) ', '[\"\\/pic\\/uploads\\/20180801\\/07e39952cc4bf5a1265270d5b70a3eda.png\",\"\\/pic\\/uploads\\/20180801\\/ddcbca4abd6f8ae911e4db1cbd0d17cb.png\",\"\\/pic\\/uploads\\/20180801\\/afbeb8e514134bee3bf613869558af38.png\"]', '150.00', '1', '53', '12', '3', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533003729860618.jpg&quot; title=&quot;1533003729860618.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533003729371289.jpg&quot; title=&quot;1533003729371289.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533003729699724.jpg&quot; title=&quot;1533003729699724.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533003729571744.png&quot; title=&quot;1533003729571744.png&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533003729519296.jpg&quot; title=&quot;1533003729519296.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533003729694242.jpg&quot; title=&quot;1533003729694242.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533003729521068.jpg&quot; title=&quot;1533003729521068.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533003729790476.jpg&quot; title=&quot;1533003729790476.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533003729969968.jpg&quot; title=&quot;1533003729969968.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533003729320578.jpg&quot; title=&quot;1533003729320578.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533003729984785.jpg&quot; title=&quot;1533003729984785.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533003729390235.jpg&quot; title=&quot;1533003729390235.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '0', '/pic/uploads/20180731/027aee2a3a08f8def6c2154f52b9c08f.png', '', '1533114294', '1533114294', '10', null, '500.000', null, null, '1', '15', null, '0.00', '6', '0.01', '1', '1', '1', '0.00', '7天无理由退换货', '{\"\\u5546\\u54c1\\u540d\\u79f0\":\"\\u6d77\\u6f9c\\u4e4b\\u5bb6HNTBJ2E365A\",\"\\u5546\\u54c1\\u7f16\\u53f7\":\"7319691\",\"\\u5546\\u54c1\\u6bdb\\u91cd\":\"500.00g\",\"\\u5546\\u54c1\\u4ea7\\u5730\":\"\\u6c5f\\u82cf\",\"\\u8d27\\u53f7\":\"HNTBJ2E365A\",\"\\u7248\\u578b\":\"\\u6807\\u51c6\\u578b\",\"\\u539a\\u5ea6\":\"\\u5e38\\u89c4\",\"\\u9886\\u578b\":\"V\\u9886\",\"\\u9002\\u7528\\u573a\\u666f\":\"\\u65e5\\u5e38\",\"\\u9002\\u7528\\u4eba\\u7fa4\":\"\\u9752\\u5e74\",\"\\u9002\\u7528\\u5b63\\u8282\":\"\\u9002\\u7528\\u5b63\\u8282\",\"\\u4e3b\\u8981\\u6750\\u8d28\":\"\\u68c9\",\"\\u4e0a\\u5e02\\u65f6\\u95f4\":\"2018\\u590f\\u5b63\"}', '', '0', '', '1', '', '1', '0', null, null, null);
INSERT INTO `fy_goods` VALUES ('207', '2', 'Apple iPhone 6 32GB 金色 移动联通电信4G手机 ', '[\"\\/pic\\/uploads\\/20180731\\/323e4feb2fe021b3e7244f22776087d0.png\",\"\\/pic\\/uploads\\/20180731\\/9ca1dffffb62870ae6da1bf217bd79a2.png\",\"\\/pic\\/uploads\\/20180731\\/ef8c6d84e4a1b54eae5fedee323cc826.png\"]', '150.00', '1', '32', '4', '3', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533004217356585.png&quot; title=&quot;1533004217356585.png&quot; alt=&quot;QQ截图20180731102949.png&quot;/&gt;&lt;/p&gt;', '0', '/pic/uploads/20180731/636a77339e0d8f6bce6f1b20aaf2c049.png', '', '1533004515', '1533004515', '10', null, '390.000', null, null, '1', '31', null, '0.00', '21', '0.01', '1', '1', '1', '0.00', '7天无理由退换货', '{\"\\u5546\\u54c1\\u540d\\u79f0\":\"Apple\",\"\\u5546\\u54c1\\u7f16\\u53f7\":\"4586850\",\"\\u5546\\u54c1\\u6bdb\\u91cd\":\"390.00g\",\"\\u5546\\u54c1\\u4ea7\\u5730\":\"\\u4e2d\\u56fd\\u5927\\u9646\",\"\\u5185\\u5b58\":\"32GB\",\"\\u540e\\u7f6e\\u6444\\u50cf\\u5934\\u50cf\\u7d20\":\"500\\u4e07-1199\\u4e07\",\"\\u5206\\u8fa8\\u7387\":\"1334*750\",\"\\u524d\\u7f6e\\u6444\\u50cf\\u5934\":\"\\u5176\\u4ed6\",\"\\u6838      \\u6570\":\"\\u5176\\u4ed6\",\"\\u9891      \\u7387\":\"\\u4ee5\\u5b98\\u7f51\\u4fe1\\u606f\\u4e3a\\u51c6\",\"\":\"\"}', '', '0', '', '1', '', '1', '0', null, null, null);
INSERT INTO `fy_goods` VALUES ('212', '2', '森马（Semir） 休闲裤男 男士运动裤黑色九分束脚裤韩版男裤子 13037271037 晨灰 31 ', '[\"\\/pic\\/uploads\\/20180731\\/edd21f59d2036cc9b32f2358d0ea0372.png\",\"\\/pic\\/uploads\\/20180731\\/0bfcece04ff9480925876c074fc87a00.png\",\"\\/pic\\/uploads\\/20180731\\/25631b8421a0e08ab94c8ddbe06dec58.png\"]', '120.00', '1', '47', '12', '4', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533030878294210.jpg&quot; title=&quot;1533030878294210.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533030878298602.jpg&quot; title=&quot;1533030878298602.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533030878644701.jpg&quot; title=&quot;1533030878644701.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533030878692922.jpg&quot; title=&quot;1533030878692922.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533030878809032.jpg&quot; title=&quot;1533030878809032.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533030878543247.png&quot; title=&quot;1533030878543247.png&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533030878246482.jpg&quot; title=&quot;1533030878246482.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533030878822409.jpg&quot; title=&quot;1533030878822409.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533030878318549.jpg&quot; title=&quot;1533030878318549.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533030878614762.jpg&quot; title=&quot;1533030878614762.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533030878862032.jpg&quot; title=&quot;1533030878862032.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533030878611867.jpg&quot; title=&quot;1533030878611867.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533030878293395.jpg&quot; title=&quot;1533030878293395.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533030878947014.jpg&quot; title=&quot;1533030878947014.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533030879537127.jpg&quot; title=&quot;1533030879537127.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533030879147600.jpg&quot; title=&quot;1533030879147600.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533030879220087.jpg&quot; title=&quot;1533030879220087.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533030879197514.jpg&quot; title=&quot;1533030879197514.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '0', '/pic/uploads/20180731/a26c8d58352df1d6cfeedec3b17cf4fc.png', '', '1533030894', '1533030894', '10', null, '1000.000', null, null, '1', '13', null, '0.00', '10', '0.01', '1', '1', '1', '0.00', '7天无理由退换货', '{\"\\u54c1\\u724c\":\"\\u6d77\\u6f9c\\u4e4b\\u5bb6\",\"\\u6bdb\\u91cd\":\"1.0kg\",\"\\u98ce\\u683c\":\"\\u57fa\\u7840\\u5927\\u4f17\",\"\\u4e3b\\u8981\\u6750\\u8d28\":\"\\u68c9\",\"\\u5f39\\u529b\":\"\\u5fae\\u5f39\",\"\\u88e4\\u578b\":\"\\u4fee\\u8eab\\u88e4\",\"\\u88e4\\u957f\":\"\\u4e5d\\u5206\\u88e4\",\"\\u8170\\u578b\":\"\\u4e2d\\u8170\",\"\\u9002\\u7528\\u5b63\\u8282\":\"\\u590f\\u5b63\",\"\\u539a\\u5ea6\":\"\\u5e38\\u89c4\",\"\\u9002\\u7528\\u4eba\\u7fa4\":\"\\u9752\\u5e74\",\"\\u4e0a\\u5e02\\u65f6\\u95f4\":\"2018\\u590f\\u5b63\"}', '', '32366', '', '1', '', '1', '0', null, null, null);
INSERT INTO `fy_goods` VALUES ('213', '2', '七匹狼新品短袖T恤男2018新款衣服男装圆领纯色莫代尔黑色男士短袖体恤衫半袖上衣打底衫 2841 001黑色 175/92A/xl ', '[\"\\/pic\\/uploads\\/20180731\\/a65ead72a7745f36d08fef162e2a6a7b.png\",\"\\/pic\\/uploads\\/20180731\\/2a784d391f59361e7567db116f2f824b.png\",\"\\/pic\\/uploads\\/20180801\\/f4008da768163316b02c947c056987df.png\"]', '150.00', '3', '53', '13', '4', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533031487952295.jpg&quot; title=&quot;1533031487952295.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533031487815588.jpg&quot; title=&quot;1533031487815588.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533031487174702.jpg&quot; title=&quot;1533031487174702.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533031487209366.jpg&quot; title=&quot;1533031487209366.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533031487181403.jpg&quot; title=&quot;1533031487181403.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533031487378388.jpg&quot; title=&quot;1533031487378388.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533031487408915.jpg&quot; title=&quot;1533031487408915.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533031488983836.jpg&quot; title=&quot;1533031488983836.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533031488780797.jpg&quot; title=&quot;1533031488780797.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533031488720813.jpg&quot; title=&quot;1533031488720813.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533031488623580.jpg&quot; title=&quot;1533031488623580.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533031488999890.jpg&quot; title=&quot;1533031488999890.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533031488404897.jpg&quot; title=&quot;1533031488404897.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533031488702119.jpg&quot; title=&quot;1533031488702119.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533031488514093.jpg&quot; title=&quot;1533031488514093.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533031488543647.jpg&quot; title=&quot;1533031488543647.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533031488283688.jpg&quot; title=&quot;1533031488283688.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533031488526514.jpg&quot; title=&quot;1533031488526514.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533031488135142.jpg&quot; title=&quot;1533031488135142.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '0', '/pic/uploads/20180731/e6000883df9f437706e6ccd296899ade.png', '', '1533282047', '1533282047', '0', null, '600.000', null, null, '1', '10', null, '0.00', '9', '0.01', '1', '1', '1', '0.00', '7天无理由退换货', '{\"\\u54c1\\u724c\":\"\\u4e03\\u5339\\u72fc\",\"\\u6bdb\\u91cd\":\"0.6kg\",\"\\u4ea7\\u5730\":\"\\u4e2d\\u56fd\\u5927\\u9646\",\"\\u98ce\\u683c\":\"\\u5546\\u52a1\\u4f11\\u95f2\",\"\\u9886\\u578b\":\"\\u7ffb\\u9886\",\"\\u7248\\u578b\":\"\\u6807\\u51c6\\u578b\"}', '', '16849', '', '1', '', '1', '0', null, null, null);
INSERT INTO `fy_goods` VALUES ('214', '2', '七匹狼新品短袖T恤男2018新款衣服男装圆领纯色莫代尔黑色男士短袖体恤衫半袖上衣打底衫 2841 001黑色 175/92A/xl ', '[\"\\/pic\\/uploads\\/20180731\\/56f50440d7b4a231941ce1e45239d205.png\",\"\\/pic\\/uploads\\/20180731\\/82a9fa6eeac732c073521eafed7200a7.png\",\"\\/pic\\/uploads\\/20180731\\/347116ba83ea906c1e1b7705cc447623.png\"]', '150.00', '3', '53', '13', '4', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533031487952295.jpg&quot; title=&quot;1533031487952295.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533031487815588.jpg&quot; title=&quot;1533031487815588.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533031487174702.jpg&quot; title=&quot;1533031487174702.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533031487209366.jpg&quot; title=&quot;1533031487209366.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533031487181403.jpg&quot; title=&quot;1533031487181403.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533031487378388.jpg&quot; title=&quot;1533031487378388.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533031487408915.jpg&quot; title=&quot;1533031487408915.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533031488983836.jpg&quot; title=&quot;1533031488983836.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533031488780797.jpg&quot; title=&quot;1533031488780797.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533031488720813.jpg&quot; title=&quot;1533031488720813.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533031488623580.jpg&quot; title=&quot;1533031488623580.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533031488999890.jpg&quot; title=&quot;1533031488999890.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533031488404897.jpg&quot; title=&quot;1533031488404897.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533031488702119.jpg&quot; title=&quot;1533031488702119.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533031488514093.jpg&quot; title=&quot;1533031488514093.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533031488543647.jpg&quot; title=&quot;1533031488543647.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533031488283688.jpg&quot; title=&quot;1533031488283688.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533031488526514.jpg&quot; title=&quot;1533031488526514.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180731/1533031488135142.jpg&quot; title=&quot;1533031488135142.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '0', '/pic/uploads/20180731/c6a034bc522cce3be88378441164faff.png', '', '1533282004', '1533282004', '0', null, '600.000', null, null, '1', '10', null, '0.00', '9', '0.01', '1', '1', '1', '0.00', '7天无理由退换货', '{\"\\u54c1\\u724c\":\"\\u4e03\\u5339\\u72fc\",\"\\u6bdb\\u91cd\":\"0.6kg\",\"\\u4ea7\\u5730\":\"\\u4e2d\\u56fd\\u5927\\u9646\",\"\\u98ce\\u683c\":\"\\u5546\\u52a1\\u4f11\\u95f2\",\"\\u9886\\u578b\":\"\\u7ffb\\u9886\",\"\\u7248\\u578b\":\"\\u6807\\u51c6\\u578b\"}', '', '16807', '', '1', '', '1', '0', '', null, null);
INSERT INTO `fy_goods` VALUES ('215', '4', 'Chanel香奈儿摩登Coco', '[\"\\/pic\\/uploads\\/20180803\\/d7fa5997805b03bcc641cfe57e5fa03f.jpg\",\"\\/pic\\/uploads\\/20180803\\/c6334fdbb5397cb6f7a70d85933a3df5.jpg\",\"\\/pic\\/uploads\\/20180803\\/9fa29368a47fcd1d64e3eeec21b51ee8.jpg\",\"\\/pic\\/uploads\\/20180803\\/09f6888de4d6823428c3654efe004f8e.jpg\",\"\\/pic\\/uploads\\/20180803\\/ed53aff151bcac0b6f562e72450edf59.jpg\",\"\\/pic\\/uploads\\/20180803\\/11245a57135d94928682a01bd1de0784.jpg\",\"\\/pic\\/uploads\\/20180803\\/78ce4e4f291ce9f1b33aea505aa75712.jpg\",\"\\/pic\\/uploads\\/20180803\\/5dff7cd9b7347106220f03bdcdd6e32a.jpg\",\"\\/pic\\/uploads\\/20180803\\/475a50c9478c64ea799482e917ad6dea.jpg\",\"\\/pic\\/uploads\\/20180803\\/1c6b1e409af9aadab6aaa4a35e797855.jpg\"]', '50.00', '1', '62', '14', '4', '&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;正品保障&lt;/p&gt;&lt;p&gt;100%海外原装正品：所有商品均属海外生产或销售；因此，所售商品一律为100%海外原装正品。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180803/1533259810350832.jpg&quot; title=&quot;1533259810350832.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180803/1533259810523111.jpg&quot; title=&quot;1533259810523111.jpg&quot; width=&quot;590&quot; height=&quot;968&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180803/1533259810766648.jpg&quot; title=&quot;1533259810766648.jpg&quot; width=&quot;596&quot; height=&quot;1115&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180803/1533259810673277.jpg&quot; title=&quot;1533259810673277.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180803/1533260023170586.jpg&quot; title=&quot;1533260023170586.jpg&quot; alt=&quot;TB1WiuuFf5TBuNjSspcXXbnGFXa_!!0-item_pic.jpg_60x60q90.jpg&quot;/&gt;&lt;/p&gt;', '0', '/pic/uploads/20180803/4149ab10c57be396f46f45cbe4279792.jpg', '可可小姐女士淡香水EDT50100ml持久包邮进口', '1534468666', '1534468666', '10000', null, '500.000', null, null, '1', '0', null, '0.00', null, '0.01', '1', '1', '1', '0.00', '正品保障\r\n100%海外原装正品：所有商品均属海外生产或销售；因此，所售商品一律为100%海外原装正品。', '{\"\\u4e1c\\u65b9\\u9999\\u8c03\":\"\"}', '', '23', '', '0', '法国', '1', '0', '', '[\"\\u4e03\\u5929\\u5305\\u90ae\"]', '');
INSERT INTO `fy_goods` VALUES ('217', '20', '精美礼盒亚菲儿女士香水女士持久淡香清新50ml香水女士法国专柜正品女人味送香水小样 ', '[\"\\/pic\\/uploads\\/20180804\\/534c817e06bf6e145389e305648d31da.png\",\"\\/pic\\/uploads\\/20180804\\/90fe0db8b7726445967e0f3666b6894e.png\"]', '599.00', '1', '62', '14', '4', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180804/1533368414613054.jpg&quot; title=&quot;1533368414613054.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180804/1533368414290931.jpg&quot; title=&quot;1533368414290931.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180804/1533368414553317.jpg&quot; title=&quot;1533368414553317.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180804/1533368414602754.jpg&quot; title=&quot;1533368414602754.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180804/1533368415126327.jpg&quot; title=&quot;1533368415126327.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180804/1533368415693680.jpg&quot; title=&quot;1533368415693680.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180804/1533368415402188.jpg&quot; title=&quot;1533368415402188.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180804/1533368415320583.jpg&quot; title=&quot;1533368415320583.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180804/1533368415848834.jpg&quot; title=&quot;1533368415848834.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180804/1533368415311612.jpg&quot; title=&quot;1533368415311612.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180804/1533368415274148.jpg&quot; title=&quot;1533368415274148.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180804/1533368415361322.jpg&quot; title=&quot;1533368415361322.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180804/1533368415523525.jpg&quot; title=&quot;1533368415523525.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1', '/pic/uploads/20180804/b324c6ec2a998150d0d01c8d40c747f4.png', '', '1534147544', '1534147544', '10', null, '200.000', null, null, '1', '12', null, '0.00', '15', '0.01', '1', '1', '1', '0.00', '七天无理由退换货，正品保障', '{\"\\u54c1\\u724c\":\"\\u4e9a\\u83f2\\u513f\",\"\\u4f7f\\u7528\\u6027\\u522b\":\"\\u5973\\u58eb\",\"\\u9999\\u8c03\":\"\\u82b1\\u679c\\u9999\\u8c03\",\"\\u4ea7\\u5730\":\"\\u4e2d\\u56fd\\u5927\\u9646\",\"\\u51c0\\u542b\\u91cf\":\"30ml-50ml\",\"\\u5305\\u88c5\":\"\\u793c\\u76d2\\u5305\\u88c5\"}', '', '24540', '', '1', '', '1', '0', '', '[\"\\u6b63\\u54c1\\u4fdd\\u969c\",\"\\u4e03\\u5929\\u65e0\\u7406\\u7531\\u9000\\u6362\\u8d27\"]', '13944565545');
INSERT INTO `fy_goods` VALUES ('218', '21', '红富士大苹果', '[\"\\/pic\\/uploads\\/20180814\\/b0ac16406cdd18ec5be1163f6197906c.jpg\",\"\\/pic\\/uploads\\/20180814\\/6badb052a89466278364febaffca7b17.jpg\"]', '30.00', '1', '63', '4', '3', '&lt;p&gt;好吃&lt;br/&gt;&lt;/p&gt;', '1', '/pic/uploads/20180814/b55c3ffbd200f1a14b380c1f47321e1e.jpg', '富士山大苹果', '1534468425', '1534468425', '10', null, '5.000', null, null, '1', '5', null, '0.00', null, '25', '1', '1', '0', '-1.00', '不退不换', null, '', '0', '', '0', '日本', '1', '0', '', '[\"\\u6ca1\\u6709\\u670d\\u52a1\"]', '13333333333');
INSERT INTO `fy_goods` VALUES ('221', '20', 'ONLY2018秋季新款粉红豹中长宽松T恤女', '[\"\\/pic\\/uploads\\/20180817\\/fa2691f4e3f0f360062c07efe1111a12.png\",\"\\/pic\\/uploads\\/20180817\\/aa8e055f3df6fd925d29040a388e87ba.png\",\"\\/pic\\/uploads\\/20180817\\/265a1130d3c50acaf3ad4cb0249e37ed.png\",\"\\/pic\\/uploads\\/20180817\\/207bab0cdf6681788f2a6e47bfbd48d6.png\",\"\\/pic\\/uploads\\/20180817\\/0fa7bedc78dba21d40afaf800ef89832.png\",\"\\/pic\\/uploads\\/20180817\\/e0f9ee9a811886be9832d72f0a07f654.png\"]', '300.00', '1', '76', '15', '4', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534472218139606.jpg&quot; title=&quot;1534472218139606.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534472218499901.jpg&quot; title=&quot;1534472218499901.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534472218693448.jpg&quot; title=&quot;1534472218693448.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534472218202739.jpg&quot; title=&quot;1534472218202739.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534472218671182.jpg&quot; title=&quot;1534472218671182.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534472218866998.jpg&quot; title=&quot;1534472218866998.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534472218680972.jpg&quot; title=&quot;1534472218680972.jpg&quot;/&gt;&lt;/p&gt;&lt;hr/&gt;&lt;p&gt;&lt;strong&gt;尺码&lt;/strong&gt;&lt;span style=&quot;font-size: 14px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; padding-bottom: 0px; padding-left: 20px; padding-right: 0px; padding-top: 0px;&quot;&gt;因不同的计量方法，测量允许1-3cm内误差（CM）&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; padding-bottom: 0px; padding-left: 20px; padding-right: 0px; padding-top: 0px;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;table align=&quot;center&quot;&gt;&lt;tbody&gt;&lt;tr class=&quot;firstRow&quot;&gt;&lt;td width=&quot;103&quot; valign=&quot;middle&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;text-align: -webkit-center;&quot;&gt;身高/净胸围/型号&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;57&quot; valign=&quot;middle&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;text-align: -webkit-center;&quot;&gt;肩宽&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;80&quot; valign=&quot;middle&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;text-align: -webkit-center;&quot;&gt;胸围&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;80&quot; valign=&quot;middle&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;text-align: -webkit-center;&quot;&gt;腰围&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; width=&quot;80&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;text-align: -webkit-center;&quot;&gt;衣长&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;80&quot; valign=&quot;middle&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;text-align: -webkit-center;&quot;&gt;袖长&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;103&quot; valign=&quot;middle&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;text-align: -webkit-center;&quot;&gt;155/76A/XS&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;57&quot; valign=&quot;middle&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;57&lt;/td&gt;&lt;td width=&quot;80&quot; valign=&quot;middle&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;110&lt;/td&gt;&lt;td width=&quot;80&quot; valign=&quot;middle&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;/&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; width=&quot;80&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;72&lt;/td&gt;&lt;td width=&quot;80&quot; valign=&quot;middle&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;19&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;103&quot; valign=&quot;middle&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;text-align: -webkit-center;&quot;&gt;160/80A/S&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;57&quot; valign=&quot;middle&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;58&lt;/td&gt;&lt;td width=&quot;80&quot; valign=&quot;middle&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;112&lt;/td&gt;&lt;td width=&quot;80&quot; valign=&quot;middle&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;/&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; width=&quot;80&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;73&lt;/td&gt;&lt;td width=&quot;80&quot; valign=&quot;middle&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;19.5&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot; width=&quot;23&quot;&gt;&lt;span style=&quot;text-align: -webkit-center;&quot;&gt;165/84A/M&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot; width=&quot;57&quot;&gt;60&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;116&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;/&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;75&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;20&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;102&quot; valign=&quot;middle&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;text-align: -webkit-center;&quot;&gt;170/88A/L&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;57&quot; valign=&quot;middle&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;62&lt;/td&gt;&lt;td width=&quot;80&quot; valign=&quot;middle&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;120&lt;/td&gt;&lt;td width=&quot;80&quot; valign=&quot;middle&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;/&lt;/td&gt;&lt;td valign=&quot;middle&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; width=&quot;80&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;77&lt;/td&gt;&lt;td width=&quot;80&quot; valign=&quot;middle&quot; style=&quot;word-break: break-all;&quot; align=&quot;center&quot;&gt;20.5&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; padding-bottom: 0px; padding-left: 20px; padding-right: 0px; padding-top: 0px;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;hr/&gt;&lt;table&gt;&lt;tbody&gt;&lt;tr class=&quot;firstRow&quot;&gt;&lt;td width=&quot;80&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;尺码参考&lt;br/&gt;&lt;/td&gt;&lt;td width=&quot;80&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;模特身高179&lt;/td&gt;&lt;td width=&quot;80&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;胸围82&lt;/td&gt;&lt;td width=&quot;80&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;臀围88&lt;/td&gt;&lt;td valign=&quot;top&quot; colspan=&quot;1&quot; rowspan=&quot;1&quot; width=&quot;80&quot; style=&quot;word-break: break-all;&quot;&gt;腰围60&lt;/td&gt;&lt;td width=&quot;80&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;text-align: -webkit-right;&quot;&gt;穿着M码&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;hr/&gt;&lt;table&gt;&lt;tbody&gt;&lt;tr class=&quot;firstRow&quot;&gt;&lt;td valign=&quot;top&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot;&gt;&lt;span style=&quot;background-color: rgb(237, 245, 250);&quot;&gt;商品指数&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;top&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot;&gt;薄厚指数轻薄薄适中厚实版型指数修身合体宽松&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td valign=&quot;top&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot;&gt;商品信息&lt;/td&gt;&lt;td valign=&quot;top&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot;&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal;&quot;&gt;货号：118201640&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal;&quot;&gt;款名：REPEAT PP PINKPANTHER PINK JERSEY TOP&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal;&quot;&gt;吊牌价：￥249&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal;&quot;&gt;颜色：新奶油色、辣红色、黑色&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal;&quot;&gt;面料:棉100%&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal;&quot;&gt;洗涤建议：30度水温下正常手洗，请避免含碱性的洗涤用品，反面洗涤、不宜用力拉伸，避免高温熨烫。&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td valign=&quot;top&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot;&gt;温馨提示&lt;/td&gt;&lt;td valign=&quot;top&quot; style=&quot;word-break: break-all; border-color: rgb(221, 221, 221);&quot;&gt;模特所佩戴饰品、配件均为搭配使用，不做销售用途&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;hr/&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534472218365462.jpg&quot; title=&quot;1534472218365462.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534472218140110.jpg&quot; title=&quot;1534472218140110.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534472218389006.jpg&quot; title=&quot;1534472218389006.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534472218813631.jpg&quot; title=&quot;1534472218813631.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534472218130367.jpg&quot; title=&quot;1534472218130367.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534472218122666.jpg&quot; title=&quot;1534472218122666.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534472219989995.jpg&quot; title=&quot;1534472219989995.jpg&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;&lt;strong&gt;新奶油色&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534472219268596.jpg&quot; title=&quot;1534472219268596.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534472219382637.jpg&quot; title=&quot;1534472219382637.jpg&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;辣红色&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534472219169058.jpg&quot; title=&quot;1534472219169058.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534472219194939.jpg&quot; title=&quot;1534472219194939.jpg&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;font-size: 20px;&quot;&gt;&lt;strong&gt;黑色&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534472219246805.jpg&quot; title=&quot;1534472219246805.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534472219595345.jpg&quot; title=&quot;1534472219595345.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534472219390271.jpg&quot; title=&quot;1534472219390271.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1', '/pic/uploads/20180817/37be6402f7831137056c5d6cb451bfe2.png', '1234', '1534822797', '1534822797', '10', null, '120.000', null, null, '1', '20', null, '0.00', '10', '0.01', '0', '1', '1', '0.00', '&lt;p&gt;正品保障：该商品由中国人保承保正品险；&lt;/p&gt;&lt;p&gt;极速退款：审核通过后即刻到账； 7天无理由退换：7天无理由退换。审核通过后即刻到账； 7天无理由退换：7天无理由退换。审核通过后即刻到账； 7天无理由退换：7天无理由退换。&lt;/p&gt;', '{\"\\u6750\\u8d28\\u6210\\u5206\":\"\\u68c9100%\",\"\\u8896\\u957f\":\"\\u4e03\\u5206\\u8896\",\"\\u8d27\\u53f7\":\"118201640\",\"\\u670d\\u88c5\\u7248\\u578b\":\"\\u5bbd\\u677e\",\"\\u8863\\u957f\\uff1a\":\"\\u4e2d\\u957f\\u6b3e\",\"\\u9886\\u578b\":\"\\u5706\\u9886\",\"\\u54c1\\u724c\":\"ONLY\",\"\\u9002\\u7528\\u5e74\\u9f84\":\"18-24\\u5468\\u5c81\",\"\\u5e74\\u4efd\\u5b63\\u8282\":\"2018\\u5e74\\u590f\\u5b63\",\"\\u4e3b\\u8981\\u989c\\u8272\":\"\\u8fa3\\u7ea2\\u8272   \\u9ed1\\u8272   \\u65b0\\u5976\\u6cb9\\u8272\",\"\\u5c3a\\u7801\":\"155\\/76A\\/XS  160\\/80A\\/S   165\\/84A\\/M    170\\/88A\\/L\"}', '', '299', '', '1', '', '1', '0', '', '[\"\\u6b63\\u54c1\\u4fdd\\u969c\",\"\\u6781\\u901f\\u9000\\u6b3e\",\"7\\u5929\\u65e0\\u7406\\u7531\\u9000\\u6362\"]', '13615421542');
INSERT INTO `fy_goods` VALUES ('222', '21', 'ochirly欧时力2018新女夏装拼接荷叶撞色印花T恤女短袖', '[\"\\/pic\\/uploads\\/20180817\\/08c4f9dbf46df44f209f1c70b1a75a58.png\",\"\\/pic\\/uploads\\/20180817\\/7e8403b748d14328fcd42ba180526c37.png\",\"\\/pic\\/uploads\\/20180817\\/70d36fd6b2a5aa45f4a0551a49acf637.png\",\"\\/pic\\/uploads\\/20180817\\/00cf88839c160cf10fae7b8fdd3fbc15.png\",\"\\/pic\\/uploads\\/20180817\\/499fc7c188f73b75bc8bdda11ac14c4d.png\"]', '240.00', '1', '68', '16', '4', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534472904562201.jpg&quot; title=&quot;1534472904562201.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534472904568066.jpg&quot; title=&quot;1534472904568066.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534472904618932.jpg&quot; title=&quot;1534472904618932.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534472904394144.jpg&quot; title=&quot;1534472904394144.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534472904937407.jpg&quot; title=&quot;1534472904937407.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534472904474469.jpg&quot; title=&quot;1534472904474469.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img class=&quot;img-ks-lazyload&quot; src=&quot;/ueditor/php/upload/image/20180817/1534472931138462.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;display: inline-block; font-weight: 700; margin: 0px; padding: 10px 0px 0px; vertical-align: top;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;设计说明&lt;/span&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;撞色字母+波普印花；&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;拼接不对称荷叶边；&lt;/p&gt;&lt;ul style=&quot;list-style-type: none;&quot; class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;精选亲肤含棉材质&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;img class=&quot;img-ks-lazyload&quot; src=&quot;/ueditor/php/upload/image/20180817/1534472931862805.jpg&quot;/&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;display: inline-block; line-height: 25px; margin-bottom: 17.92px; margin-top: 17.92px; padding: 0px; width: 350px;&quot;&gt;&lt;span style=&quot;font-weight: 700; margin: 0px; padding: 0px;&quot;&gt;货号：&lt;/span&gt;1GY2026690&lt;/p&gt;&lt;p style=&quot;display: inline-block; line-height: 25px; margin-bottom: 17.92px; margin-top: 17.92px; padding: 0px; width: 350px;&quot;&gt;&lt;span style=&quot;font-weight: 700; margin: 0px; padding: 0px;&quot;&gt;吊牌价：&lt;/span&gt;299元&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: 700; margin: 0px; padding: 0px;&quot;&gt;面料：&lt;/span&gt; &amp;nbsp; &amp;nbsp;面料:棉100%&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: 700; margin: 0px; padding: 0px; vertical-align: top;&quot;&gt;&lt;br/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: 700; margin: 0px; padding: 0px; vertical-align: top;&quot;&gt;长度：&lt;/span&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;border-top-color: rgb(255, 255, 255); border-top-style: solid; border-top-width: 15px; float: left; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; width: 50px;&quot;&gt;超短&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;span style=&quot;border-top-color: rgb(255, 255, 255); border-top-style: solid; border-top-width: 15px; float: left; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; width: 50px;&quot;&gt;短款&lt;/span&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;span style=&quot;border-top-color: rgb(201, 201, 201); border-top-style: solid; border-top-width: 15px; color: rgb(0, 0, 0); float: left; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; width: 50px;&quot;&gt;适中&lt;/span&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;span style=&quot;border-top-color: rgb(255, 255, 255); border-top-style: solid; border-top-width: 15px; float: left; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; width: 50px;&quot;&gt;中长&lt;/span&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;span style=&quot;border-top-color: rgb(255, 255, 255); border-top-style: solid; border-top-width: 15px; float: left; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; width: 50px;&quot;&gt;长款&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;款型：&lt;/strong&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;border-top-color: rgb(255, 255, 255); border-top-style: solid; border-top-width: 15px; float: left; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; width: 50px;&quot;&gt;宽松&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/span&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &lt;span style=&quot;border-top-color: rgb(201, 201, 201); border-top-style: solid; border-top-width: 15px; color: rgb(0, 0, 0); float: left; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; width: 50px;&quot;&gt;合体&lt;/span&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &lt;span style=&quot;border-top-color: rgb(255, 255, 255); border-top-style: solid; border-top-width: 15px; float: left; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; width: 50px;&quot;&gt;修身&lt;/span&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &lt;span style=&quot;border-top-color: rgb(255, 255, 255); border-top-style: solid; border-top-width: 15px; float: left; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; width: 50px;&quot;&gt;贴身&lt;/span&gt; &amp;nbsp; &amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534472904673713.jpg&quot; title=&quot;1534472904673713.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534472904615150.jpg&quot; title=&quot;1534472904615150.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534472904341152.jpg&quot; title=&quot;1534472904341152.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534472904397590.jpg&quot; title=&quot;1534472904397590.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534472904426536.jpg&quot; title=&quot;1534472904426536.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534472904877042.jpg&quot; title=&quot;1534472904877042.jpg&quot;/&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534472904422186.jpg&quot; title=&quot;1534472904422186.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1', '/pic/uploads/20180817/815ecbd075b850d99900a80bc3137473.png', '', '1534473246', '1534473246', '10', null, '100.000', null, null, '1', '15', null, '0.00', '8', '0.01', '0', '1', '1', '0.00', '正品保障：该商品由中国人保承保正品险；\r\n\r\n极速退款：审核通过后即刻到账；\r\n\r\n7天无理由退换：7天无理由退换。', '{\"\\u54c1\\u724c\\u540d\\u79f0\":\"Ochirly\\/\\u6b27\\u65f6\\u529b\",\"\\u6750\\u8d28\\u6210\\u5206\":\"\\u68c9100%\",\"\\u8896\\u957f\":\"\\u77ed\\u8896\",\"\\u9500\\u552e\\u6e20\\u9053\\u7c7b\\u578b\":\"\\u5546\\u57ce\\u540c\\u6b3e\",\"\\u8d27\\u53f7\":\"1GY2026690\",\"\\u8863\\u957f\":\"\\u77ed\\u6b3e\",\"\\u5e74\\u4efd\\u5b63\\u8282\":\"2018\\u5e74\\u590f\\u5b63\",\"\\u4e3b\\u8981\\u989c\\u8272\":\"\\u767d\\u8272018 \\u5929\\u84dd670\",\" \\u5c3a\\u7801\":\"XS S M L \"}', '', '170', '', '1', '', '1', '0', '', '[\"\\u6b63\\u54c1\\u4fdd\\u969c\",\"\\u6781\\u901f\\u9000\\u6b3e\",\"7\\u5929\\u65e0\\u7406\\u7531\\u9000\\u6362\"]', '13622312231');
INSERT INTO `fy_goods` VALUES ('223', '21', 'Lee男装 2018春夏新品深蓝色九分牛仔裤', '[\"\\/pic\\/uploads\\/20180817\\/c50e75958dbedb2eb056257fc8fd01b4.png\",\"\\/pic\\/uploads\\/20180817\\/e0859026d7b9d96df7ce4f958334d48b.png\",\"\\/pic\\/uploads\\/20180817\\/420a987b098ab57f4b8ba295a112714a.png\",\"\\/pic\\/uploads\\/20180817\\/297fa60fc7925030e937a7ebfcf456ff.png\",\"\\/pic\\/uploads\\/20180817\\/a309c130f549a47f4be358d525dab80a.png\"]', '450.00', '3', '70', '17', '1', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534473805520843.jpg&quot; title=&quot;1534473805520843.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534473805340536.jpg&quot; title=&quot;1534473805340536.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534473805748977.jpg&quot; title=&quot;1534473805748977.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534473805147696.jpg&quot; title=&quot;1534473805147696.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534473806357618.jpg&quot; title=&quot;1534473806357618.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534473806741172.jpg&quot; title=&quot;1534473806741172.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534473806263601.jpg&quot; title=&quot;1534473806263601.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534473806402041.jpg&quot; title=&quot;1534473806402041.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534473806675647.jpg&quot; title=&quot;1534473806675647.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534473806571309.jpg&quot; title=&quot;1534473806571309.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534473806489603.jpg&quot; title=&quot;1534473806489603.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534473806819040.jpg&quot; title=&quot;1534473806819040.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1', '/pic/uploads/20180817/e0e741905d93b039326309a64d0e42c1.png', '', '1534473824', '1534473824', '10', null, '200.000', '1534435200', '1534780800', '1', '12', null, '0.00', '18', '0.01', '0', '1', '1', null, '正品保障：该商品由中国人保承保正品险；\r\n\r\n7天无理由退换：7天无理由退换。', '{\"\\u4e0a\\u5e02\\u5e74\\u4efd\\u5b63\\u8282 \":\"2018\\u5e74\\u6625\\u5b63\",\" \\u6750\\u8d28\\u6210\\u5206\":\"\\u68c9100%\",\" \\u8d27\\u53f7\":\" LMZ7553HN8NY\",\"\\u725b\\u4ed4\\u9762\\u6599\":\"\\u5e38\\u89c4\\u725b\\u4ed4\\u5e03\",\"\\u54c1\\u724c\":\"Lee\",\" \\u539a\\u8584\":\"\\u8584\\u6b3e\",\"\\u57fa\\u7840\\u98ce\\u683c\":\"\\u9752\\u6625\\u6d41\\u884c\"}', '', '0', '', '1', '', '1', '0', '', '[\"\\u6b63\\u54c1\\u4fdd\\u969c\",\"7\\u5929\\u65e0\\u7406\\u7531\\u9000\\u6362\"]', '18715421124');
INSERT INTO `fy_goods` VALUES ('224', '23', 'Lee女款 2018年秋季洗水时髦蓝色牛仔裤', '[\"\\/pic\\/uploads\\/20180817\\/8d0c41f70b4791ab7ab9f738bd0a1804.png\",\"\\/pic\\/uploads\\/20180817\\/a6062c13f984ac4992438f68e645f088.png\",\"\\/pic\\/uploads\\/20180817\\/724fce262c15a6722c53ebff5ce05426.png\",\"\\/pic\\/uploads\\/20180817\\/38476cac33a1fee4788d93c05ea2d232.png\",\"\\/pic\\/uploads\\/20180817\\/d21d42802f283d96d407415d9d651e66.png\"]', '300.00', '2', '70', '17', '2', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534474289477159.jpg&quot; title=&quot;1534474289477159.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534474289798391.jpg&quot; title=&quot;1534474289798391.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534474289333553.jpg&quot; title=&quot;1534474289333553.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534474289584460.jpg&quot; title=&quot;1534474289584460.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534474289416631.jpg&quot; title=&quot;1534474289416631.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534474290235502.jpg&quot; title=&quot;1534474290235502.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534474290649545.jpg&quot; title=&quot;1534474290649545.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534474290726434.jpg&quot; title=&quot;1534474290726434.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534474290617344.jpg&quot; title=&quot;1534474290617344.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534474290543329.jpg&quot; title=&quot;1534474290543329.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534474290867617.jpg&quot; title=&quot;1534474290867617.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1', '/pic/uploads/20180817/ade976c331ea1bde7ef1543c329d3abf.png', '', '1534474299', '1534474299', '10', null, '260.000', null, null, '1', '24', null, '0.00', '13', '0.01', '0', '1', '1', null, '正品保障：该商品由中国人保承保正品险；\r\n\r\n7天无理由退换：7天无理由退换。', '{\"\\u6750\\u8d28\\u6210\\u5206 \":\"\\u68c971% \\u805a\\u916f\\u7ea4\\u7ef429%\",\"\\u54c1\\u724c\":\"Lee\",\"\\u8d27\\u53f7\":\" LWS4333YQ9JM\",\"\\u6b3e\\u5f0f\":\"\\u94c5\\u7b14\\u88e4\",\"\\u88e4\\u957f\":\"\\u957f\\u88e4\",\"\\u8170\\u578b\":\"\\u9ad8\\u8170\",\"\\u5e74\\u4efd\\u5b63\\u8282\":\"2018\\u5e74\\u79cb\\u5b63\",\"\\u989c\\u8272\\u5206\\u7c7b\":\"\\u84dd\\u8272\",\"\\u5c3a\\u5bf8 \":\"24\\/30 25\\/30 26\\/30 27\\/30 28\\/30\"}', '', '0', '', '1', '', '1', '0', '', '[\"\\u6b63\\u54c1\\u4fdd\\u969c\",\"7\\u5929\\u65e0\\u7406\\u7531\\u9000\\u6362\"]', '18516428896');
INSERT INTO `fy_goods` VALUES ('225', '21', '李宁男鞋运动鞋男休闲鞋2018新款正品夏季网面透气一体织跑步鞋子 ', '[\"\\/pic\\/uploads\\/20180817\\/13bc403956eb75be7e8dc8e20a600fa8.png\",\"\\/pic\\/uploads\\/20180817\\/217226ded3b1550573adb0df2121ec49.png\",\"\\/pic\\/uploads\\/20180817\\/f497928c27dbb88f7df14ea59a72fe10.png\",\"\\/pic\\/uploads\\/20180817\\/432f0fe336ffbb1f6ba5d325e2d630e8.png\",\"\\/pic\\/uploads\\/20180817\\/a182796dcf8d98738a14df22aa996083.png\"]', '310.00', '1', '72', '18', '4', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534475174683009.jpg&quot; title=&quot;1534475174683009.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534475174622056.jpg&quot; title=&quot;1534475174622056.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534475174219249.jpg&quot; title=&quot;1534475174219249.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534475174679723.jpg&quot; title=&quot;1534475174679723.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534475174167883.jpg&quot; title=&quot;1534475174167883.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534475174275123.jpg&quot; title=&quot;1534475174275123.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534475174276263.jpg&quot; title=&quot;1534475174276263.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534475174825892.jpg&quot; title=&quot;1534475174825892.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534475174350334.jpg&quot; title=&quot;1534475174350334.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534475174512471.jpg&quot; title=&quot;1534475174512471.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534475175926403.jpg&quot; title=&quot;1534475175926403.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534475175883448.jpg&quot; title=&quot;1534475175883448.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534475175922968.jpg&quot; title=&quot;1534475175922968.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534475175132931.jpg&quot; title=&quot;1534475175132931.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534475175925863.jpg&quot; title=&quot;1534475175925863.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534475175527483.jpg&quot; title=&quot;1534475175527483.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534475175511466.jpg&quot; title=&quot;1534475175511466.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534475175301763.jpg&quot; title=&quot;1534475175301763.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534475176194470.jpg&quot; title=&quot;1534475176194470.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534475176793628.jpg&quot; title=&quot;1534475176793628.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534475176848586.jpg&quot; title=&quot;1534475176848586.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534475176895996.jpg&quot; title=&quot;1534475176895996.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534475176672507.jpg&quot; title=&quot;1534475176672507.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534475176971786.jpg&quot; title=&quot;1534475176971786.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534475176779724.jpg&quot; title=&quot;1534475176779724.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1', '/pic/uploads/20180817/fbb8db6a96b0ba5e396fc6eb5baa762b.png', '', '1534486665', '1534486665', '10', null, '230.000', null, null, '1', '10', null, '0.00', '16', '0.01', '0', '1', '0', '1.00', '正品保障：该商品由中国人保承保正品险；\r\n\r\n极速退款：审核通过后即刻到账；\r\n\r\n7天无理由退换：7天无理由退换。', '{\"\\u4ea7\\u54c1\\u540d\\u79f0\":\"Lining\\/\\u674e\\u5b81 AGCM099\",\"\\u662f\\u5426\\u5546\\u573a\\u540c\\u6b3e\":\"\\u662f\",\"\\u6b3e\\u53f7\":\"AGCM099\",\" \\u54c1\\u724c\":\"Lining\\/\\u674e\\u5b81\",\"\\u4e0a\\u5e02\\u65f6\\u95f4\":\"2018\\u5e74\\u590f\\u5b63\",\"\\u6027\\u522b\":\"\\u7537\\u5b50\",\" \\u978b\\u5e2e\\u9ad8\\u5ea6\":\"\\u4f4e\\u5e2e\",\"\\u5e2e\\u9762\\u6750\\u8d28\":\"\\u7ec7\\u7269\",\" \\u978b\\u5e95\\u6750\\u8d28\":\"EVA+\\u6a61\\u80f6\",\"\\u529f\\u80fd\":\"\\u9632\\u6ed1 \\u8f7b\\u4fbf \\u900f\\u6c14\",\"\\u978b\\u7801\":\"39 39.5 40 41 42 43 \",\"\\u8fd0\\u52a8\\u7cfb\\u5217\":\"\\u8fd0\\u52a8\\u751f\\u6d3b\\u7cfb\\u5217\",\"\\u95ed\\u5408\\u65b9\\u5f0f\":\"\\u7cfb\\u5e26\"}', '', '0', '', '1', '', '1', '0', '', '[\"\\u6b63\\u54c1\\u4fdd\\u969c\",\"\\u6781\\u901f\\u9000\\u6b3e\",\"7\\u5929\\u65e0\\u7406\\u7531\\u9000\\u6362\"]', '18715157575');
INSERT INTO `fy_goods` VALUES ('226', '21', '一加手机6 8GB+128GB 月牙白 全面屏双摄游戏手机 全网通4G 双卡双待', '[\"\\/pic\\/uploads\\/20180817\\/dd1fc3ecb9c6fb7b65101fb6be146d19.png\"]', '30.00', '2', '75', '15', '1', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534494614265123.png&quot; title=&quot;1534494614265123.png&quot; alt=&quot;2018081711145821595.png&quot;/&gt;&lt;/p&gt;', '1', '/pic/uploads/20180817/6e3be47fd23b3298595f04be8409b70a.png', '一加手机6 8GB+128GB 月牙白 全面屏双摄游戏手机 全网通4G 双卡双待', '1534494619', '1534494619', '10', null, '10.000', '1534435200', '1534474800', '1', '20', null, '0.00', '2', '0.01', '0', '1', '1', '0.00', '七天包退，七天包邮', '{\"\\u5546\\u54c1\\u7f16\\u53f7\":\"2345667543245\",\"\\u989c\\u8272\":\"red\"}', '23456', '2', '21345', '1', '贵州', '1', '0', '', '[\"\\u4e03\\u5929\\u5305\\u90ae\",\"\\u4e03\\u5929\\u5305\\u9000\"]', '18302563273');
INSERT INTO `fy_goods` VALUES ('227', '21', '李宁跑步鞋女鞋2018夏季网面透气小白休闲鞋跑鞋女士秋季运动鞋女 ', '[\"\\/pic\\/uploads\\/20180817\\/b23c45c383020f75ba38be53ce404bae.png\",\"\\/pic\\/uploads\\/20180817\\/3ace68a3c1137f3369e16d7aa7840ffd.png\",\"\\/pic\\/uploads\\/20180817\\/79fda4a5d32b840fe19ddbd06ad42003.png\"]', '298.00', '1', '72', '18', '4', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476092199790.jpg&quot; title=&quot;1534476092199790.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476092581752.jpg&quot; title=&quot;1534476092581752.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476092576067.jpg&quot; title=&quot;1534476092576067.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476092587385.jpg&quot; title=&quot;1534476092587385.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476092651714.jpg&quot; title=&quot;1534476092651714.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093185273.jpg&quot; title=&quot;1534476093185273.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093558911.jpg&quot; title=&quot;1534476093558911.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093638858.jpg&quot; title=&quot;1534476093638858.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093737545.jpg&quot; title=&quot;1534476093737545.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093955897.jpg&quot; title=&quot;1534476093955897.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093233283.jpg&quot; title=&quot;1534476093233283.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093576570.jpg&quot; title=&quot;1534476093576570.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093875576.jpg&quot; title=&quot;1534476093875576.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093514174.jpg&quot; title=&quot;1534476093514174.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093881324.jpg&quot; title=&quot;1534476093881324.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093177507.jpg&quot; title=&quot;1534476093177507.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093507913.png&quot; title=&quot;1534476093507913.png&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093445210.png&quot; title=&quot;1534476093445210.png&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093405588.png&quot; title=&quot;1534476093405588.png&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093975360.png&quot; title=&quot;1534476093975360.png&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093651787.jpg&quot; title=&quot;1534476093651787.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093465535.jpg&quot; title=&quot;1534476093465535.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093801370.jpg&quot; title=&quot;1534476093801370.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093670960.jpg&quot; title=&quot;1534476093670960.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093873780.jpg&quot; title=&quot;1534476093873780.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093624021.jpg&quot; title=&quot;1534476093624021.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093126661.jpg&quot; title=&quot;1534476093126661.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1', '/pic/uploads/20180817/c364de722c766f5427e3951b1fb3b42f.png', '', '1534489613', '1534489613', '10', null, '170.000', '1534521600', '1534780800', '1', '18', null, '0.00', '9', '0.01', '0', '1', '1', '0.00', '正品保障：该商品由中国人保承保正品险；\r\n\r\n极速退款：审核通过后即刻到账；\r\n\r\n7天无理由退换：7天无理由退换。', '{\"\\u4ea7\\u54c1\\u540d\":\"Lining\\/\\u674e\\u5b81 ARBL048\",\"\\u662f\\u5426\\u5546\\u573a\\u540c\\u6b3e\":\"\\u662f\",\"\\u989c\\u8272\\u5206\\u7c7b\":\"\\u8367\\u5149\\u6843\\u7ea2\\/\\u767d \\u57fa\\u7840\\u767d\\/\\u57fa\\u7840\\u9ed1\",\"\\u6b3e\\u53f7\":\"ARBL048\",\"\\u54c1\\u724c\":\"Lining\\/\\u674e\\u5b81\",\"\\u4e0a\\u5e02\\u65f6\\u95f4\":\"2016\\u5e74\\u590f\\u5b63\",\"\\u6027\\u522b\":\"\\u5973\\u5b50\",\"\\u5e2e\\u9762\\u6750\\u8d28\":\"\\u7eba\\u7ec7\\u54c1+TPU+\\u5408\\u6210\\u9769\",\"\\u5916\\u5e95\\u6750\\u6599\":\"\\u6a61\\u80f6+EVA\",\"\\u978b\\u7801\":\"36 37 38 39 \",\" \\u95ed\\u5408\\u65b9\\u5f0f\":\"\\u7cfb\\u5e26\",\"\\u8fd0\\u52a8\\u7cfb\\u5217\":\"\\u8dd1\\u6b65\\u7cfb\\u5217\",\"\\u9002\\u7528\\u573a\\u666f\":\"\\u4f11\\u95f2\\u5065\\u6b65\"}', '', '0', '', '1', '', '1', '0', '', '[\"\\u6b63\\u54c1\\u4fdd\\u969c\",\"\\u6781\\u901f\\u9000\\u6b3e\",\"7\\u5929\\u65e0\\u7406\\u7531\\u9000\\u6362\"]', '13698987845');
INSERT INTO `fy_goods` VALUES ('228', '21', '李宁跑步鞋女鞋2018夏季网面透气小白休闲鞋跑鞋女士秋季运动鞋女 ', '[\"\\/pic\\/uploads\\/20180817\\/b23c45c383020f75ba38be53ce404bae.png\",\"\\/pic\\/uploads\\/20180817\\/3ace68a3c1137f3369e16d7aa7840ffd.png\",\"\\/pic\\/uploads\\/20180817\\/79fda4a5d32b840fe19ddbd06ad42003.png\"]', '298.00', '1', '72', '18', '1', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476092199790.jpg&quot; title=&quot;1534476092199790.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476092581752.jpg&quot; title=&quot;1534476092581752.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476092576067.jpg&quot; title=&quot;1534476092576067.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476092587385.jpg&quot; title=&quot;1534476092587385.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476092651714.jpg&quot; title=&quot;1534476092651714.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093185273.jpg&quot; title=&quot;1534476093185273.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093558911.jpg&quot; title=&quot;1534476093558911.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093638858.jpg&quot; title=&quot;1534476093638858.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093737545.jpg&quot; title=&quot;1534476093737545.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093955897.jpg&quot; title=&quot;1534476093955897.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093233283.jpg&quot; title=&quot;1534476093233283.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093576570.jpg&quot; title=&quot;1534476093576570.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093875576.jpg&quot; title=&quot;1534476093875576.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093514174.jpg&quot; title=&quot;1534476093514174.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093881324.jpg&quot; title=&quot;1534476093881324.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093177507.jpg&quot; title=&quot;1534476093177507.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093507913.png&quot; title=&quot;1534476093507913.png&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093445210.png&quot; title=&quot;1534476093445210.png&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093405588.png&quot; title=&quot;1534476093405588.png&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093975360.png&quot; title=&quot;1534476093975360.png&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093651787.jpg&quot; title=&quot;1534476093651787.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093465535.jpg&quot; title=&quot;1534476093465535.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093801370.jpg&quot; title=&quot;1534476093801370.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093670960.jpg&quot; title=&quot;1534476093670960.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093873780.jpg&quot; title=&quot;1534476093873780.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093624021.jpg&quot; title=&quot;1534476093624021.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534476093126661.jpg&quot; title=&quot;1534476093126661.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '0', '/pic/uploads/20180817/c364de722c766f5427e3951b1fb3b42f.png', '', '1534476133', '1534476133', '10', null, '170.000', '1534521600', '1534780800', '1', '18', null, '0.00', '9', '0.01', '1', '1', '1', null, '正品保障：该商品由中国人保承保正品险；\r\n\r\n极速退款：审核通过后即刻到账；\r\n\r\n7天无理由退换：7天无理由退换。', '{\"\\u4ea7\\u54c1\\u540d\":\"Lining\\/\\u674e\\u5b81 ARBL048\",\"\\u662f\\u5426\\u5546\\u573a\\u540c\\u6b3e\":\"\\u662f\",\"\\u989c\\u8272\\u5206\\u7c7b\":\"\\u8367\\u5149\\u6843\\u7ea2\\/\\u767d \\u57fa\\u7840\\u767d\\/\\u57fa\\u7840\\u9ed1\",\"\\u6b3e\\u53f7\":\"ARBL048\",\"\\u54c1\\u724c\":\"Lining\\/\\u674e\\u5b81\",\"\\u4e0a\\u5e02\\u65f6\\u95f4\":\"2016\\u5e74\\u590f\\u5b63\",\"\\u6027\\u522b\":\"\\u5973\\u5b50\",\"\\u5e2e\\u9762\\u6750\\u8d28\":\"\\u7eba\\u7ec7\\u54c1+TPU+\\u5408\\u6210\\u9769\",\"\\u5916\\u5e95\\u6750\\u6599\":\"\\u6a61\\u80f6+EVA\",\"\\u978b\\u7801\":\"36 37 38 39 \",\" \\u95ed\\u5408\\u65b9\\u5f0f\":\"\\u7cfb\\u5e26\",\"\\u8fd0\\u52a8\\u7cfb\\u5217\":\"\\u8dd1\\u6b65\\u7cfb\\u5217\",\"\\u9002\\u7528\\u573a\\u666f\":\"\\u4f11\\u95f2\\u5065\\u6b65\"}', '', '0', '', '1', '', '1', '0', null, '[\"\\u6b63\\u54c1\\u4fdd\\u969c\",\"\\u6781\\u901f\\u9000\\u6b3e\",\"7\\u5929\\u65e0\\u7406\\u7531\\u9000\\u6362\"]', '13698987845');
INSERT INTO `fy_goods` VALUES ('229', '21', '加拿大进口车厘子 1磅装 果径约26-28mm J级 新鲜水果', '[\"\\/pic\\/uploads\\/20180817\\/a409e5db831bf93fccab45b70b9023ce.png\"]', '0.10', '1', '76', '15', '4', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534494554694985.png&quot; title=&quot;1534494554694985.png&quot; alt=&quot;2018081715082594618.png&quot;/&gt;&lt;/p&gt;', '1', '/pic/uploads/20180817/c4616bf66d87362918b94b47529c4813.png', '加拿大进口车厘子 1磅装 果径约26-28mm J级 新鲜水果', '1534494565', '1534494565', '10', null, '10.000', null, null, '1', '10', null, '1.00', null, '', '1', '1', '1', '0.00', '水果类商品不支持退换', null, '213', '5', '2345', '1', '云南', '1', '0', '', '[\"\\u4e0d\\u5305\\u90ae\",\"\\u4e0d\\u652f\\u6301\\u9000\\u6362\"]', '18302563273');
INSERT INTO `fy_goods` VALUES ('230', '21', '美国进口车厘子  新鲜水果', '[\"\\/pic\\/uploads\\/20180817\\/98fba7e02b84d3564f0ca42aff4a343e.png\"]', '0.10', '1', '76', '15', '4', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180817/1534494649986766.png&quot; title=&quot;1534494649986766.png&quot; alt=&quot;2018081715082594618.png&quot;/&gt;&lt;/p&gt;', '1', '/pic/uploads/20180817/181cb6bfe3159163c948f08fc5ac6c28.png', '美国进口车厘子  新鲜水果', '1534498896', '1534498896', '10', null, '10.000', null, null, '1', '10', null, '1.00', null, '1', '0', '1', '0', '10.00', '水果类商品不支持退换', null, '213', '5', '2345', '1', '云南', '1', '0', '', '[\"\\u4e0d\\u5305\\u90ae\",\"\\u4e0d\\u652f\\u6301\\u9000\\u6362\"]', '18302563273');
INSERT INTO `fy_goods` VALUES ('231', '20', '哆啦a梦公仔机器猫毛绒玩具叮当猫超特大号蓝胖子生日礼物女生', '[\"\\/pic\\/uploads\\/20180820\\/b9a80fce0752cb5651334be2cbeb22ae.jpg\",\"\\/pic\\/uploads\\/20180820\\/c295bb68ad66eccbb81ad5e7474b81c3.jpg\",\"\\/pic\\/uploads\\/20180820\\/b37b24ed87b188363c90f854c28113cf.jpg\"]', '10.00', '1', '84', '19', '4', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180820/1534732722765220.jpg&quot; title=&quot;1534732722765220.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180820/1534732722677736.jpg&quot; title=&quot;1534732722677736.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1', '/pic/uploads/20180820/0f5ecc1f001134b7c2968b428a141b41.jpg', '', '1534753833', '1534753833', '10', null, '500.000', null, null, '1', '10', null, '0.00', null, '0.5', '0', '1', '1', '0.00', '&lt;p&gt;七天无理由&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/p&gt;&lt;p&gt;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx&lt;/p&gt;&lt;p&gt;包邮&lt;/p&gt;&lt;p&gt;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx&amp;nbsp;&lt;/p&gt;', '{\"\\u54c1\\u724c\":\" DORAEMON\\/\\u54c6\\u5566A\\u68a6\",\"\\u586b\\u5145\\u7269\":\"pp\\u68c9\",\"\\u73a9\\u5076\\u79cd\\u7c7b\":\"\\u516c\\u4ed4\"}', '', '295', '', '1', '国产', '1', '1', '', '[\"\\u4e03\\u5929\\u65e0\\u7406\\u7531\\u9000\\u8d27\",\"\\u5305\\u90ae\"]', '13608507163');
INSERT INTO `fy_goods` VALUES ('232', '21', '柔柔弱弱', '[\"\\/pic\\/uploads\\/20180820\\/130eb88a45bd1c60ab5c5e468c601394.jpg\",\"\\/pic\\/uploads\\/20180820\\/df666bbdeac45c241904e757d7202918.jpg\"]', '234.00', '1', '64', '15', '3', '&lt;p&gt;44444444444444444&lt;/p&gt;', '1', '/pic/uploads/20180820/aa33f635784cc4b5f347d7d5f580d73f.jpg', '所做的股份', '1534746089', '1534746089', '10', null, '345.000', null, null, '0', '44', null, '44.00', null, '52', '0', '1', '1', '0.00', '&lt;p&gt;打发斯蒂芬斯蒂芬&lt;/p&gt;&lt;p&gt;是的粉色的反式脂肪酸&lt;/p&gt;', null, '444', '444', '4444', '0', '水电费', '0', '0', '', '[\"777555\"]', '234567907');

-- ----------------------------
-- Table structure for fy_goods_attribute
-- ----------------------------
DROP TABLE IF EXISTS `fy_goods_attribute`;
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
) ENGINE=InnoDB AUTO_INCREMENT=1263 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_goods_attribute
-- ----------------------------
INSERT INTO `fy_goods_attribute` VALUES ('590', '190', '1531712931923_尺码:1531712936968_S', '', '43', '0.01', '154874651213', '0');
INSERT INTO `fy_goods_attribute` VALUES ('591', '190', '1531712931923_尺码:1531712939271_M', '', '57', '0.02', '154874651214', '0');
INSERT INTO `fy_goods_attribute` VALUES ('592', '190', '1531712931923_尺码:1531712943239_L', '', '60', '0.03', '154874651215', '0');
INSERT INTO `fy_goods_attribute` VALUES ('596', '191', '1531713078657_尺码:1531713083424_S', '', '51', '0.01', '56468545123', '5');
INSERT INTO `fy_goods_attribute` VALUES ('597', '191', '1531713078657_尺码:1531713086439_M', '', '45', '0.02', '56468545124', '10');
INSERT INTO `fy_goods_attribute` VALUES ('598', '191', '1531713078657_尺码:1531713089467_L', '', '48', '0.03', '56468545125', '15');
INSERT INTO `fy_goods_attribute` VALUES ('621', '187', '1531712091646_尺码:1531712102986_25,1531712117948_颜色:1531712127107_深蓝', '', '33', '0.00', '', '10');
INSERT INTO `fy_goods_attribute` VALUES ('622', '187', '1531712091646_尺码:1531712102986_25,1531712117948_颜色:1531712133718_黑色', '', '33', '0.00', '', '11');
INSERT INTO `fy_goods_attribute` VALUES ('623', '187', '1531712091646_尺码:1531712105835_26,1531712117948_颜色:1531712127107_深蓝', '', '33', '0.00', '', '13');
INSERT INTO `fy_goods_attribute` VALUES ('624', '187', '1531712091646_尺码:1531712105835_26,1531712117948_颜色:1531712133718_黑色', '', '33', '0.00', '', '14');
INSERT INTO `fy_goods_attribute` VALUES ('625', '187', '1531712091646_尺码:1531712108539_27,1531712117948_颜色:1531712127107_深蓝', '', '33', '0.00', '', '15');
INSERT INTO `fy_goods_attribute` VALUES ('626', '187', '1531712091646_尺码:1531712108539_27,1531712117948_颜色:1531712133718_黑色', '', '33', '0.00', '', '16');
INSERT INTO `fy_goods_attribute` VALUES ('635', '189', '1531712660817_颜色:1531712670353_玫红色,1531712678922_内存:1531712695321_4G 64G', '', '12', '0.02', '4561452178545', '0');
INSERT INTO `fy_goods_attribute` VALUES ('636', '189', '1531712660817_颜色:1531712673030_蓝色,1531712678922_内存:1531712689305_4G 32G', '', '15', '0.01', '456145217856', '0');
INSERT INTO `fy_goods_attribute` VALUES ('637', '189', '1531712660817_颜色:1531712673030_蓝色,1531712678922_内存:1531712695321_4G 64G', '', '23', '0.02', '456145217857', '0');
INSERT INTO `fy_goods_attribute` VALUES ('638', '189', '1531712660817_颜色:1531712678214_黑色,1531712678922_内存:1531712689305_4G 32G', '', '31', '0.01', '456145217858', '0');
INSERT INTO `fy_goods_attribute` VALUES ('639', '189', '1531712660817_颜色:1531712678214_黑色,1531712678922_内存:1531712695321_4G 64G', '', '24', '0.02', '456145217859', '0');
INSERT INTO `fy_goods_attribute` VALUES ('641', '192', '1531964534721_颜色:1531964542632_红色,1531964557086_内存:1531964569618_32G,1531964581903_尺寸:1531964590063_4.5', '', '1', '4000.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('642', '192', '1531964534721_颜色:1531964542632_红色,1531964557086_内存:1531964569618_32G,1531964581903_尺寸:1531964592641_4.7', '', '2', '4200.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('643', '192', '1531964534721_颜色:1531964542632_红色,1531964557086_内存:1531964569618_32G,1531964581903_尺寸:1531964595270_5.1', '', '3', '4400.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('644', '192', '1531964534721_颜色:1531964542632_红色,1531964557086_内存:1531964569618_32G,1531964581903_尺寸:1531964599548_5.5', '', '4', '4600.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('645', '192', '1531964534721_颜色:1531964542632_红色,1531964557086_内存:1531964572098_64G,1531964581903_尺寸:1531964590063_4.5', '', '5', '4000.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('646', '192', '1531964534721_颜色:1531964542632_红色,1531964557086_内存:1531964572098_64G,1531964581903_尺寸:1531964592641_4.7', '', '6', '4200.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('647', '192', '1531964534721_颜色:1531964542632_红色,1531964557086_内存:1531964572098_64G,1531964581903_尺寸:1531964595270_5.1', '', '7', '4400.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('648', '192', '1531964534721_颜色:1531964542632_红色,1531964557086_内存:1531964572098_64G,1531964581903_尺寸:1531964599548_5.5', '', '8', '4600.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('649', '192', '1531964534721_颜色:1531964542632_红色,1531964557086_内存:1531964574427_128G,1531964581903_尺寸:1531964590063_4.5', '', '9', '4000.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('650', '192', '1531964534721_颜色:1531964542632_红色,1531964557086_内存:1531964574427_128G,1531964581903_尺寸:1531964592641_4.7', '', '10', '4200.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('651', '192', '1531964534721_颜色:1531964542632_红色,1531964557086_内存:1531964574427_128G,1531964581903_尺寸:1531964595270_5.1', '', '10', '4400.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('652', '192', '1531964534721_颜色:1531964542632_红色,1531964557086_内存:1531964574427_128G,1531964581903_尺寸:1531964599548_5.5', '', '10', '4600.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('653', '192', '1531964534721_颜色:1531964542632_红色,1531964557086_内存:1531964578698_256G,1531964581903_尺寸:1531964590063_4.5', '', '10', '4000.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('654', '192', '1531964534721_颜色:1531964542632_红色,1531964557086_内存:1531964578698_256G,1531964581903_尺寸:1531964592641_4.7', '', '10', '4200.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('655', '192', '1531964534721_颜色:1531964542632_红色,1531964557086_内存:1531964578698_256G,1531964581903_尺寸:1531964595270_5.1', '', '10', '4400.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('656', '192', '1531964534721_颜色:1531964542632_红色,1531964557086_内存:1531964578698_256G,1531964581903_尺寸:1531964599548_5.5', '', '10', '4600.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('657', '192', '1531964534721_颜色:1531964546188_蓝色,1531964557086_内存:1531964569618_32G,1531964581903_尺寸:1531964590063_4.5', '', '10', '4000.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('658', '192', '1531964534721_颜色:1531964546188_蓝色,1531964557086_内存:1531964569618_32G,1531964581903_尺寸:1531964592641_4.7', '', '10', '4200.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('659', '192', '1531964534721_颜色:1531964546188_蓝色,1531964557086_内存:1531964569618_32G,1531964581903_尺寸:1531964595270_5.1', '', '10', '4400.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('660', '192', '1531964534721_颜色:1531964546188_蓝色,1531964557086_内存:1531964569618_32G,1531964581903_尺寸:1531964599548_5.5', '', '10', '4600.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('661', '192', '1531964534721_颜色:1531964546188_蓝色,1531964557086_内存:1531964572098_64G,1531964581903_尺寸:1531964590063_4.5', '', '10', '4000.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('662', '192', '1531964534721_颜色:1531964546188_蓝色,1531964557086_内存:1531964572098_64G,1531964581903_尺寸:1531964592641_4.7', '', '10', '4200.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('663', '192', '1531964534721_颜色:1531964546188_蓝色,1531964557086_内存:1531964572098_64G,1531964581903_尺寸:1531964595270_5.1', '', '10', '4400.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('664', '192', '1531964534721_颜色:1531964546188_蓝色,1531964557086_内存:1531964572098_64G,1531964581903_尺寸:1531964599548_5.5', '', '10', '4600.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('665', '192', '1531964534721_颜色:1531964546188_蓝色,1531964557086_内存:1531964574427_128G,1531964581903_尺寸:1531964590063_4.5', '', '10', '4000.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('666', '192', '1531964534721_颜色:1531964546188_蓝色,1531964557086_内存:1531964574427_128G,1531964581903_尺寸:1531964592641_4.7', '', '10', '4200.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('667', '192', '1531964534721_颜色:1531964546188_蓝色,1531964557086_内存:1531964574427_128G,1531964581903_尺寸:1531964595270_5.1', '', '10', '4400.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('668', '192', '1531964534721_颜色:1531964546188_蓝色,1531964557086_内存:1531964574427_128G,1531964581903_尺寸:1531964599548_5.5', '', '10', '4600.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('669', '192', '1531964534721_颜色:1531964546188_蓝色,1531964557086_内存:1531964578698_256G,1531964581903_尺寸:1531964590063_4.5', '', '10', '4000.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('670', '192', '1531964534721_颜色:1531964546188_蓝色,1531964557086_内存:1531964578698_256G,1531964581903_尺寸:1531964592641_4.7', '', '10', '4200.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('671', '192', '1531964534721_颜色:1531964546188_蓝色,1531964557086_内存:1531964578698_256G,1531964581903_尺寸:1531964595270_5.1', '', '10', '4400.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('672', '192', '1531964534721_颜色:1531964546188_蓝色,1531964557086_内存:1531964578698_256G,1531964581903_尺寸:1531964599548_5.5', '', '10', '4600.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('673', '192', '1531964534721_颜色:1531964548972_黑色,1531964557086_内存:1531964569618_32G,1531964581903_尺寸:1531964590063_4.5', '', '10', '4000.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('674', '192', '1531964534721_颜色:1531964548972_黑色,1531964557086_内存:1531964569618_32G,1531964581903_尺寸:1531964592641_4.7', '', '10', '4200.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('675', '192', '1531964534721_颜色:1531964548972_黑色,1531964557086_内存:1531964569618_32G,1531964581903_尺寸:1531964595270_5.1', '', '10', '4400.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('676', '192', '1531964534721_颜色:1531964548972_黑色,1531964557086_内存:1531964569618_32G,1531964581903_尺寸:1531964599548_5.5', '', '10', '4600.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('677', '192', '1531964534721_颜色:1531964548972_黑色,1531964557086_内存:1531964572098_64G,1531964581903_尺寸:1531964590063_4.5', '', '10', '4000.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('678', '192', '1531964534721_颜色:1531964548972_黑色,1531964557086_内存:1531964572098_64G,1531964581903_尺寸:1531964592641_4.7', '', '10', '4200.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('679', '192', '1531964534721_颜色:1531964548972_黑色,1531964557086_内存:1531964572098_64G,1531964581903_尺寸:1531964595270_5.1', '', '10', '4400.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('680', '192', '1531964534721_颜色:1531964548972_黑色,1531964557086_内存:1531964572098_64G,1531964581903_尺寸:1531964599548_5.5', '', '10', '4600.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('681', '192', '1531964534721_颜色:1531964548972_黑色,1531964557086_内存:1531964574427_128G,1531964581903_尺寸:1531964590063_4.5', '', '10', '4000.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('682', '192', '1531964534721_颜色:1531964548972_黑色,1531964557086_内存:1531964574427_128G,1531964581903_尺寸:1531964592641_4.7', '', '10', '4200.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('683', '192', '1531964534721_颜色:1531964548972_黑色,1531964557086_内存:1531964574427_128G,1531964581903_尺寸:1531964595270_5.1', '', '10', '4400.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('684', '192', '1531964534721_颜色:1531964548972_黑色,1531964557086_内存:1531964574427_128G,1531964581903_尺寸:1531964599548_5.5', '', '10', '4600.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('685', '192', '1531964534721_颜色:1531964548972_黑色,1531964557086_内存:1531964578698_256G,1531964581903_尺寸:1531964590063_4.5', '', '10', '4000.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('686', '192', '1531964534721_颜色:1531964548972_黑色,1531964557086_内存:1531964578698_256G,1531964581903_尺寸:1531964592641_4.7', '', '10', '4200.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('687', '192', '1531964534721_颜色:1531964548972_黑色,1531964557086_内存:1531964578698_256G,1531964581903_尺寸:1531964595270_5.1', '', '10', '4400.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('688', '192', '1531964534721_颜色:1531964548972_黑色,1531964557086_内存:1531964578698_256G,1531964581903_尺寸:1531964599548_5.5', '', '10', '4600.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('689', '192', '1531964534721_颜色:1531964553407_玫瑰金,1531964557086_内存:1531964569618_32G,1531964581903_尺寸:1531964590063_4.5', '', '10', '4000.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('690', '192', '1531964534721_颜色:1531964553407_玫瑰金,1531964557086_内存:1531964569618_32G,1531964581903_尺寸:1531964592641_4.7', '', '10', '4200.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('691', '192', '1531964534721_颜色:1531964553407_玫瑰金,1531964557086_内存:1531964569618_32G,1531964581903_尺寸:1531964595270_5.1', '', '10', '4400.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('692', '192', '1531964534721_颜色:1531964553407_玫瑰金,1531964557086_内存:1531964569618_32G,1531964581903_尺寸:1531964599548_5.5', '', '10', '4600.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('693', '192', '1531964534721_颜色:1531964553407_玫瑰金,1531964557086_内存:1531964572098_64G,1531964581903_尺寸:1531964590063_4.5', '', '10', '4000.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('694', '192', '1531964534721_颜色:1531964553407_玫瑰金,1531964557086_内存:1531964572098_64G,1531964581903_尺寸:1531964592641_4.7', '', '10', '4200.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('695', '192', '1531964534721_颜色:1531964553407_玫瑰金,1531964557086_内存:1531964572098_64G,1531964581903_尺寸:1531964595270_5.1', '', '10', '4400.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('696', '192', '1531964534721_颜色:1531964553407_玫瑰金,1531964557086_内存:1531964572098_64G,1531964581903_尺寸:1531964599548_5.5', '', '10', '4600.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('697', '192', '1531964534721_颜色:1531964553407_玫瑰金,1531964557086_内存:1531964574427_128G,1531964581903_尺寸:1531964590063_4.5', '', '10', '4000.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('698', '192', '1531964534721_颜色:1531964553407_玫瑰金,1531964557086_内存:1531964574427_128G,1531964581903_尺寸:1531964592641_4.7', '', '10', '4200.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('699', '192', '1531964534721_颜色:1531964553407_玫瑰金,1531964557086_内存:1531964574427_128G,1531964581903_尺寸:1531964595270_5.1', '', '10', '4400.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('700', '192', '1531964534721_颜色:1531964553407_玫瑰金,1531964557086_内存:1531964574427_128G,1531964581903_尺寸:1531964599548_5.5', '', '10', '4600.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('701', '192', '1531964534721_颜色:1531964553407_玫瑰金,1531964557086_内存:1531964578698_256G,1531964581903_尺寸:1531964590063_4.5', '', '10', '4000.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('702', '192', '1531964534721_颜色:1531964553407_玫瑰金,1531964557086_内存:1531964578698_256G,1531964581903_尺寸:1531964592641_4.7', '', '10', '4200.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('703', '192', '1531964534721_颜色:1531964553407_玫瑰金,1531964557086_内存:1531964578698_256G,1531964581903_尺寸:1531964595270_5.1', '', '10', '4400.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('704', '192', '1531964534721_颜色:1531964553407_玫瑰金,1531964557086_内存:1531964578698_256G,1531964581903_尺寸:1531964599548_5.5', '', '10', '4600.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('823', '187', '1531712091646_尺码:1531712102986_25,1531712117948_颜色:1531712127107_深蓝', '', '33', '0.01', '', '10');
INSERT INTO `fy_goods_attribute` VALUES ('824', '187', '1531712091646_尺码:1531712102986_25,1531712117948_颜色:1531712133718_黑色', '', '33', '0.01', '', '10');
INSERT INTO `fy_goods_attribute` VALUES ('825', '187', '1531712091646_尺码:1531712105835_26,1531712117948_颜色:1531712127107_深蓝', '', '33', '0.02', '', '10');
INSERT INTO `fy_goods_attribute` VALUES ('826', '187', '1531712091646_尺码:1531712105835_26,1531712117948_颜色:1531712133718_黑色', '', '33', '0.02', '', '10');
INSERT INTO `fy_goods_attribute` VALUES ('827', '187', '1531712091646_尺码:1531712108539_27,1531712117948_颜色:1531712127107_深蓝', '', '33', '0.03', '', '10');
INSERT INTO `fy_goods_attribute` VALUES ('828', '187', '1531712091646_尺码:1531712108539_27,1531712117948_颜色:1531712133718_黑色', '', '33', '0.03', '', '10');
INSERT INTO `fy_goods_attribute` VALUES ('830', '189', '1531712660817_颜色:1531712670353_玫红色,1531712678922_内存:1531712689305_4G 32G', '', '20', '0.01', '456145217854', '0');
INSERT INTO `fy_goods_attribute` VALUES ('831', '189', '1531712660817_颜色:1531712670353_玫红色,1531712678922_内存:1531712695321_4G 64G', '', '12', '0.02', '4561452178545', '0');
INSERT INTO `fy_goods_attribute` VALUES ('832', '189', '1531712660817_颜色:1531712673030_蓝色,1531712678922_内存:1531712689305_4G 32G', '', '15', '0.01', '456145217856', '0');
INSERT INTO `fy_goods_attribute` VALUES ('833', '189', '1531712660817_颜色:1531712673030_蓝色,1531712678922_内存:1531712695321_4G 64G', '', '23', '0.02', '456145217857', '0');
INSERT INTO `fy_goods_attribute` VALUES ('834', '189', '1531712660817_颜色:1531712678214_黑色,1531712678922_内存:1531712689305_4G 32G', '', '31', '0.01', '456145217858', '0');
INSERT INTO `fy_goods_attribute` VALUES ('835', '189', '1531712660817_颜色:1531712678214_黑色,1531712678922_内存:1531712695321_4G 64G', '', '24', '0.02', '456145217859', '0');
INSERT INTO `fy_goods_attribute` VALUES ('837', '187', '1531712091646_尺码:1531712102986_25,1531712117948_颜色:1531712127107_深蓝', '', '33', '0.01', '', '10');
INSERT INTO `fy_goods_attribute` VALUES ('838', '187', '1531712091646_尺码:1531712102986_25,1531712117948_颜色:1531712133718_黑色', '', '33', '0.01', '', '10');
INSERT INTO `fy_goods_attribute` VALUES ('839', '187', '1531712091646_尺码:1531712105835_26,1531712117948_颜色:1531712127107_深蓝', '', '33', '0.02', '', '10');
INSERT INTO `fy_goods_attribute` VALUES ('840', '187', '1531712091646_尺码:1531712105835_26,1531712117948_颜色:1531712133718_黑色', '', '33', '0.02', '', '10');
INSERT INTO `fy_goods_attribute` VALUES ('841', '187', '1531712091646_尺码:1531712108539_27,1531712117948_颜色:1531712127107_深蓝', '', '33', '0.03', '', '10');
INSERT INTO `fy_goods_attribute` VALUES ('842', '187', '1531712091646_尺码:1531712108539_27,1531712117948_颜色:1531712133718_黑色', '', '33', '0.03', '', '10');
INSERT INTO `fy_goods_attribute` VALUES ('844', '187', '1531712091646_尺码:1531712102986_25,1531712117948_颜色:1531712127107_深蓝', '', '33', '0.01', '', '10');
INSERT INTO `fy_goods_attribute` VALUES ('845', '187', '1531712091646_尺码:1531712102986_25,1531712117948_颜色:1531712133718_黑色', '', '33', '0.01', '', '10');
INSERT INTO `fy_goods_attribute` VALUES ('846', '187', '1531712091646_尺码:1531712105835_26,1531712117948_颜色:1531712127107_深蓝', '', '33', '0.02', '', '10');
INSERT INTO `fy_goods_attribute` VALUES ('847', '187', '1531712091646_尺码:1531712105835_26,1531712117948_颜色:1531712133718_黑色', '', '33', '0.02', '', '10');
INSERT INTO `fy_goods_attribute` VALUES ('848', '187', '1531712091646_尺码:1531712108539_27,1531712117948_颜色:1531712127107_深蓝', '', '33', '0.03', '', '10');
INSERT INTO `fy_goods_attribute` VALUES ('849', '187', '1531712091646_尺码:1531712108539_27,1531712117948_颜色:1531712133718_黑色', '', '33', '0.03', '', '10');
INSERT INTO `fy_goods_attribute` VALUES ('854', '187', '1531712091646_尺码:1531712102986_25,1531712117948_颜色:1531712127107_深蓝', '', '0', '0.01', '', '10');
INSERT INTO `fy_goods_attribute` VALUES ('855', '187', '1531712091646_尺码:1531712102986_25,1531712117948_颜色:1531712133718_黑色', '', '13', '0.01', '', '10');
INSERT INTO `fy_goods_attribute` VALUES ('856', '187', '1531712091646_尺码:1531712105835_26,1531712117948_颜色:1531712127107_深蓝', '', '0', '0.02', '', '10');
INSERT INTO `fy_goods_attribute` VALUES ('857', '187', '1531712091646_尺码:1531712105835_26,1531712117948_颜色:1531712133718_黑色', '', '23', '0.02', '', '10');
INSERT INTO `fy_goods_attribute` VALUES ('858', '187', '1531712091646_尺码:1531712108539_27,1531712117948_颜色:1531712127107_深蓝', '', '0', '0.03', '', '10');
INSERT INTO `fy_goods_attribute` VALUES ('859', '187', '1531712091646_尺码:1531712108539_27,1531712117948_颜色:1531712133718_黑色', '', '33', '0.03', '', '10');
INSERT INTO `fy_goods_attribute` VALUES ('870', '189', '1531712660817_颜色:1531712670353_玫红色,1531712678922_内存:1531712689305_4G 32G', '', '20', '0.01', '456145217854', '0');
INSERT INTO `fy_goods_attribute` VALUES ('871', '189', '1531712660817_颜色:1531712670353_玫红色,1531712678922_内存:1531712695321_4G 64G', '', '12', '0.02', '4561452178545', '0');
INSERT INTO `fy_goods_attribute` VALUES ('872', '189', '1531712660817_颜色:1531712673030_蓝色,1531712678922_内存:1531712689305_4G 32G', '', '15', '0.01', '456145217856', '0');
INSERT INTO `fy_goods_attribute` VALUES ('873', '189', '1531712660817_颜色:1531712673030_蓝色,1531712678922_内存:1531712695321_4G 64G', '', '23', '0.02', '456145217857', '0');
INSERT INTO `fy_goods_attribute` VALUES ('874', '189', '1531712660817_颜色:1531712678214_黑色,1531712678922_内存:1531712689305_4G 32G', '', '31', '0.01', '456145217858', '0');
INSERT INTO `fy_goods_attribute` VALUES ('875', '189', '1531712660817_颜色:1531712678214_黑色,1531712678922_内存:1531712695321_4G 64G', '', '24', '0.02', '456145217859', '0');
INSERT INTO `fy_goods_attribute` VALUES ('877', '189', '1531712660817_颜色:1531712670353_玫红色,1531712678922_内存:1531712689305_4G 32G', '', '20', '0.01', '456145217854', '0');
INSERT INTO `fy_goods_attribute` VALUES ('878', '189', '1531712660817_颜色:1531712670353_玫红色,1531712678922_内存:1531712695321_4G 64G', '', '12', '0.02', '4561452178545', '0');
INSERT INTO `fy_goods_attribute` VALUES ('879', '189', '1531712660817_颜色:1531712673030_蓝色,1531712678922_内存:1531712689305_4G 32G', '', '15', '0.01', '456145217856', '0');
INSERT INTO `fy_goods_attribute` VALUES ('880', '189', '1531712660817_颜色:1531712673030_蓝色,1531712678922_内存:1531712695321_4G 64G', '', '23', '0.02', '456145217857', '0');
INSERT INTO `fy_goods_attribute` VALUES ('881', '189', '1531712660817_颜色:1531712678214_黑色,1531712678922_内存:1531712689305_4G 32G', '', '31', '0.01', '456145217858', '0');
INSERT INTO `fy_goods_attribute` VALUES ('882', '189', '1531712660817_颜色:1531712678214_黑色,1531712678922_内存:1531712695321_4G 64G', '', '24', '0.02', '456145217859', '0');
INSERT INTO `fy_goods_attribute` VALUES ('894', '189', '1531712660817_颜色:1531712670353_玫红色,1531712678922_内存:1531712689305_4G 32G', '', '-2', '0.01', '456145217854', '0');
INSERT INTO `fy_goods_attribute` VALUES ('895', '189', '1531712660817_颜色:1531712670353_玫红色,1531712678922_内存:1531712695321_4G 64G', '', '12', '0.02', '4561452178545', '0');
INSERT INTO `fy_goods_attribute` VALUES ('896', '189', '1531712660817_颜色:1531712673030_蓝色,1531712678922_内存:1531712689305_4G 32G', '', '5', '0.01', '456145217856', '0');
INSERT INTO `fy_goods_attribute` VALUES ('897', '189', '1531712660817_颜色:1531712673030_蓝色,1531712678922_内存:1531712695321_4G 64G', '', '23', '0.02', '456145217857', '0');
INSERT INTO `fy_goods_attribute` VALUES ('898', '189', '1531712660817_颜色:1531712678214_黑色,1531712678922_内存:1531712689305_4G 32G', '', '29', '0.01', '456145217858', '0');
INSERT INTO `fy_goods_attribute` VALUES ('899', '189', '1531712660817_颜色:1531712678214_黑色,1531712678922_内存:1531712695321_4G 64G', '', '24', '0.02', '456145217859', '0');
INSERT INTO `fy_goods_attribute` VALUES ('904', '193', '1532426178132_大小:1532426190990_16G', 'f454', '33', '0.01', '13213', '0');
INSERT INTO `fy_goods_attribute` VALUES ('905', '193', '1532426178132_大小:1532426194779_32G', 'f454', '33', '0.01', '13213', '0');
INSERT INTO `fy_goods_attribute` VALUES ('942', '188', '1532485970088_颜色:1532485984345_绿色', '44', '443', '123.00', '4444', '333');
INSERT INTO `fy_goods_attribute` VALUES ('943', '194', '1532598149807_尺寸:1532598160007_S', '3254325234', '150', '0.01', '32543252343425', '100');
INSERT INTO `fy_goods_attribute` VALUES ('944', '194', '1532598149807_尺寸:1532598162618_M', '3254325235', '119', '0.02', '32543252343426', '100');
INSERT INTO `fy_goods_attribute` VALUES ('945', '194', '1532598149807_尺寸:1532598164791_L', '3254325236', '200', '0.03', '32543252343427', '100');
INSERT INTO `fy_goods_attribute` VALUES ('946', '195', '1532598376057_尺寸:1532598380278_S', '5345635', '451', '0.01', '756387934534', '20');
INSERT INTO `fy_goods_attribute` VALUES ('947', '195', '1532598376057_尺寸:1532598381926_M', '5345636', '454', '0.02', '756387934535', '20');
INSERT INTO `fy_goods_attribute` VALUES ('948', '195', '1532598376057_尺寸:1532598383446_L', '5345637', '452', '0.03', '756387934536', '20');
INSERT INTO `fy_goods_attribute` VALUES ('949', '196', '1532669182824_尺寸:1532669188681_S', '4542', '30', '100.01', '452758751', '10');
INSERT INTO `fy_goods_attribute` VALUES ('950', '196', '1532669182824_尺寸:1532669190725_M', '4542', '337', '100.01', '452758752', '10');
INSERT INTO `fy_goods_attribute` VALUES ('951', '196', '1532669182824_尺寸:1532669194906_L', '4542', '333', '100.01', '452758753', '10');
INSERT INTO `fy_goods_attribute` VALUES ('952', '197', '1532669550571_尺寸:1532669555391_S', '5345635', '1548', '50.01', '756387934534', '10');
INSERT INTO `fy_goods_attribute` VALUES ('953', '197', '1532669550571_尺寸:1532669557096_M', '5345635', '1546', '50.01', '756387934534', '10');
INSERT INTO `fy_goods_attribute` VALUES ('954', '197', '1532669550571_尺寸:1532669558971_L', '5345635', '1546', '100.01', '756387934534', '10');
INSERT INTO `fy_goods_attribute` VALUES ('955', '198', '1532669550571_尺寸:1532669555391_S', '45438', '740', '0.01', '5638438651', '10');
INSERT INTO `fy_goods_attribute` VALUES ('956', '198', '1532669550571_尺寸:1532669557096_M', '45438', '740', '0.01', '5638438652', '10');
INSERT INTO `fy_goods_attribute` VALUES ('957', '198', '1532669550571_尺寸:1532669558971_L', '45438', '740', '0.01', '5638438653', '10');
INSERT INTO `fy_goods_attribute` VALUES ('958', '199', '1532670128922_颜色:1532670135676_黑色,1532670173217_尺寸:1532670177552_S', '453453', '451', '0.01', '7837852541', '5');
INSERT INTO `fy_goods_attribute` VALUES ('959', '199', '1532670128922_颜色:1532670135676_黑色,1532670173217_尺寸:1532670179384_M', '453453', '451', '0.02', '7837852542', '5');
INSERT INTO `fy_goods_attribute` VALUES ('960', '199', '1532670128922_颜色:1532670135676_黑色,1532670173217_尺寸:1532670181253_L', '453453', '452', '0.03', '7837852543', '5');
INSERT INTO `fy_goods_attribute` VALUES ('961', '199', '1532670128922_颜色:1532670135676_黑色,1532670173217_尺寸:1532670184042_XL', '453453', '452', '0.04', '7837852544', '5');
INSERT INTO `fy_goods_attribute` VALUES ('962', '199', '1532670128922_颜色:1532670138286_白色,1532670173217_尺寸:1532670177552_S', '453453', '451', '0.01', '7837852545', '5');
INSERT INTO `fy_goods_attribute` VALUES ('963', '199', '1532670128922_颜色:1532670138286_白色,1532670173217_尺寸:1532670179384_M', '453453', '452', '0.02', '7837852546', '5');
INSERT INTO `fy_goods_attribute` VALUES ('964', '199', '1532670128922_颜色:1532670138286_白色,1532670173217_尺寸:1532670181253_L', '453453', '452', '0.03', '7837852547', '5');
INSERT INTO `fy_goods_attribute` VALUES ('965', '199', '1532670128922_颜色:1532670138286_白色,1532670173217_尺寸:1532670184042_XL', '453453', '452', '0.04', '7837852548', '5');
INSERT INTO `fy_goods_attribute` VALUES ('966', '199', '1532670128922_颜色:1532670146819_杏色,1532670173217_尺寸:1532670177552_S', '453453', '450', '0.01', '7837852549', '5');
INSERT INTO `fy_goods_attribute` VALUES ('967', '199', '1532670128922_颜色:1532670146819_杏色,1532670173217_尺寸:1532670179384_M', '453453', '452', '0.02', '7837852551', '5');
INSERT INTO `fy_goods_attribute` VALUES ('968', '199', '1532670128922_颜色:1532670146819_杏色,1532670173217_尺寸:1532670181253_L', '453453', '452', '0.03', '7837852552', '5');
INSERT INTO `fy_goods_attribute` VALUES ('969', '199', '1532670128922_颜色:1532670146819_杏色,1532670173217_尺寸:1532670184042_XL', '453453', '451', '0.04', '7837852553', '5');
INSERT INTO `fy_goods_attribute` VALUES ('973', '200', null, null, '4', '444.00', '4444', '44');
INSERT INTO `fy_goods_attribute` VALUES ('974', '201', '1532675900270_颜色:1532675906075_白色,1532675930894_尺码:1532675935374_S', '254054', '407', '0.01', '453275771', '12');
INSERT INTO `fy_goods_attribute` VALUES ('975', '201', '1532675900270_颜色:1532675906075_白色,1532675930894_尺码:1532675936800_M', '254054', '424', '0.02', '453275772', '12');
INSERT INTO `fy_goods_attribute` VALUES ('976', '201', '1532675900270_颜色:1532675906075_白色,1532675930894_尺码:1532675937818_L', '254054', '424', '0.03', '453275773', '12');
INSERT INTO `fy_goods_attribute` VALUES ('978', '201', '1532675900270_颜色:1532675908482_粉色,1532675930894_尺码:1532675935374_S', '254054', '424', '0.01', '453275775', '12');
INSERT INTO `fy_goods_attribute` VALUES ('979', '201', '1532675900270_颜色:1532675908482_粉色,1532675930894_尺码:1532675936800_M', '254054', '424', '0.02', '453275776', '12');
INSERT INTO `fy_goods_attribute` VALUES ('980', '201', '1532675900270_颜色:1532675908482_粉色,1532675930894_尺码:1532675937818_L', '254054', '424', '0.03', '453275777', '12');
INSERT INTO `fy_goods_attribute` VALUES ('982', '201', '1532675900270_颜色:1532675915393_浅蓝色,1532675930894_尺码:1532675935374_S', '254054', '424', '0.01', '453275779', '12');
INSERT INTO `fy_goods_attribute` VALUES ('983', '201', '1532675900270_颜色:1532675915393_浅蓝色,1532675930894_尺码:1532675936800_M', '254054', '424', '0.02', '453275780', '12');
INSERT INTO `fy_goods_attribute` VALUES ('984', '201', '1532675900270_颜色:1532675915393_浅蓝色,1532675930894_尺码:1532675937818_L', '254054', '424', '0.03', '453275781', '12');
INSERT INTO `fy_goods_attribute` VALUES ('986', '201', '1532675900270_颜色:1532675918192_灰色,1532675930894_尺码:1532675935374_S', '254054', '424', '0.01', '453275783', '12');
INSERT INTO `fy_goods_attribute` VALUES ('987', '201', '1532675900270_颜色:1532675918192_灰色,1532675930894_尺码:1532675936800_M', '254054', '424', '0.02', '453275784', '12');
INSERT INTO `fy_goods_attribute` VALUES ('988', '201', '1532675900270_颜色:1532675918192_灰色,1532675930894_尺码:1532675937818_L', '254054', '424', '0.03', '453275785', '12');
INSERT INTO `fy_goods_attribute` VALUES ('990', '201', '1532675900270_颜色:1532675930234_藏青色,1532675930894_尺码:1532675935374_S', '254054', '424', '0.01', '453275787', '12');
INSERT INTO `fy_goods_attribute` VALUES ('991', '201', '1532675900270_颜色:1532675930234_藏青色,1532675930894_尺码:1532675936800_M', '254054', '424', '0.02', '453275788', '12');
INSERT INTO `fy_goods_attribute` VALUES ('992', '201', '1532675900270_颜色:1532675930234_藏青色,1532675930894_尺码:1532675937818_L', '254054', '424', '0.03', '453275789', '12');
INSERT INTO `fy_goods_attribute` VALUES ('1005', '202', '1532675900270_颜色:1532675906075_白色,1532675930894_尺码:1532675935374_S', '254054', '424', '0.01', '453275771', '12');
INSERT INTO `fy_goods_attribute` VALUES ('1006', '202', '1532675900270_颜色:1532675906075_白色,1532675930894_尺码:1532675936800_M', '254054', '424', '0.02', '453275772', '12');
INSERT INTO `fy_goods_attribute` VALUES ('1007', '202', '1532675900270_颜色:1532675906075_白色,1532675930894_尺码:1532675937818_L', '254054', '424', '0.03', '453275773', '12');
INSERT INTO `fy_goods_attribute` VALUES ('1009', '202', '1532675900270_颜色:1532675908482_粉色,1532675930894_尺码:1532675935374_S', '254054', '424', '0.01', '453275775', '12');
INSERT INTO `fy_goods_attribute` VALUES ('1010', '202', '1532675900270_颜色:1532675908482_粉色,1532675930894_尺码:1532675936800_M', '254054', '424', '0.02', '453275776', '12');
INSERT INTO `fy_goods_attribute` VALUES ('1011', '202', '1532675900270_颜色:1532675908482_粉色,1532675930894_尺码:1532675937818_L', '254054', '424', '0.03', '453275777', '12');
INSERT INTO `fy_goods_attribute` VALUES ('1013', '202', '1532675900270_颜色:1532675915393_浅蓝色,1532675930894_尺码:1532675935374_S', '254054', '424', '0.01', '453275779', '12');
INSERT INTO `fy_goods_attribute` VALUES ('1014', '202', '1532675900270_颜色:1532675915393_浅蓝色,1532675930894_尺码:1532675936800_M', '254054', '424', '0.02', '453275780', '12');
INSERT INTO `fy_goods_attribute` VALUES ('1015', '202', '1532675900270_颜色:1532675915393_浅蓝色,1532675930894_尺码:1532675937818_L', '254054', '424', '0.03', '453275781', '12');
INSERT INTO `fy_goods_attribute` VALUES ('1017', '202', '1532675900270_颜色:1532675918192_灰色,1532675930894_尺码:1532675935374_S', '254054', '424', '0.01', '453275783', '12');
INSERT INTO `fy_goods_attribute` VALUES ('1018', '202', '1532675900270_颜色:1532675918192_灰色,1532675930894_尺码:1532675936800_M', '254054', '424', '0.02', '453275784', '12');
INSERT INTO `fy_goods_attribute` VALUES ('1019', '202', '1532675900270_颜色:1532675918192_灰色,1532675930894_尺码:1532675937818_L', '254054', '424', '0.03', '453275785', '12');
INSERT INTO `fy_goods_attribute` VALUES ('1021', '202', '1532675900270_颜色:1532675930234_藏青色,1532675930894_尺码:1532675935374_S', '254054', '424', '0.01', '453275787', '12');
INSERT INTO `fy_goods_attribute` VALUES ('1022', '202', '1532675900270_颜色:1532675930234_藏青色,1532675930894_尺码:1532675936800_M', '254054', '424', '0.02', '453275788', '12');
INSERT INTO `fy_goods_attribute` VALUES ('1023', '202', '1532675900270_颜色:1532675930234_藏青色,1532675930894_尺码:1532675937818_L', '254054', '424', '0.03', '453275789', '12');
INSERT INTO `fy_goods_attribute` VALUES ('1066', '204', '1532685664305_尺码:1532685669296_S', '5345635', '15', '0.01', '756387934534', '1');
INSERT INTO `fy_goods_attribute` VALUES ('1067', '204', '1532685664305_尺码:1532685671881_M', '5345635', '32', '0.01', '756387934534', '2');
INSERT INTO `fy_goods_attribute` VALUES ('1068', '204', '1532685664305_尺码:1532685673577_L', '5345635', '31', '0.01', '756387934534', '3');
INSERT INTO `fy_goods_attribute` VALUES ('1069', '205', '1533000176301_内存:1533000189653_16G', '425452', '742', '0.01', '752752877', '1');
INSERT INTO `fy_goods_attribute` VALUES ('1084', '207', '1533004029079_颜色:1533004045320_深空灰', '4586850', '457', '0.01', '1427574511', '21');
INSERT INTO `fy_goods_attribute` VALUES ('1085', '207', '1533004029079_颜色:1533004102153_金色', '4586850', '457', '0.01', '1427574522', '21');
INSERT INTO `fy_goods_attribute` VALUES ('1087', '206', '1533003413553_尺码:1533003428514_170/88A(48)', '44', '44', '123.00', '44', '234');
INSERT INTO `fy_goods_attribute` VALUES ('1088', '206', '1533003413553_尺码:1533003437545_175/92A(50)', '44', '44', '123.00', '44', '234');
INSERT INTO `fy_goods_attribute` VALUES ('1089', '206', '1533003413553_尺码:1533003447541_180/96A(52)', '44', '44', '123.00', '44', '234');
INSERT INTO `fy_goods_attribute` VALUES ('1090', '206', '1533003413553_尺码:1533003456989_185/100A(54)', '44', '44', '123.00', '44', '234');
INSERT INTO `fy_goods_attribute` VALUES ('1094', '208', '1533005369999_颜色:1533005380925_白色', '44', '444', '54555.00', '444', '344');
INSERT INTO `fy_goods_attribute` VALUES ('1095', '208', '1533005369999_颜色:1533005384052_黑色', '44', '444', '54555.00', '444', '344');
INSERT INTO `fy_goods_attribute` VALUES ('1096', '208', '1533005369999_颜色:1533005387811_旅行而', '44', '444', '54555.00', '444', '344');
INSERT INTO `fy_goods_attribute` VALUES ('1097', '209', '1533006291086_颜色:1533006297558_白色', '22222', '222', '12.00', '2222', '22');
INSERT INTO `fy_goods_attribute` VALUES ('1098', '209', '1533006291086_颜色:1533006302583_绿色', '22222', '222', '12.00', '2222', '22');
INSERT INTO `fy_goods_attribute` VALUES ('1100', '210', '1533006291086_颜色:1533006297558_白色', '22222', '222', '12.00', '2222', '22');
INSERT INTO `fy_goods_attribute` VALUES ('1101', '210', '1533006291086_颜色:1533006302583_绿色', '22222', '222', '12.00', '2222', '22');
INSERT INTO `fy_goods_attribute` VALUES ('1103', '211', '1533006291086_颜色:1533006297558_白色', '22222', '222', '12.00', '2222', '22');
INSERT INTO `fy_goods_attribute` VALUES ('1104', '211', '1533006291086_颜色:1533006302583_绿色', '22222', '222', '12.00', '2222', '22');
INSERT INTO `fy_goods_attribute` VALUES ('1106', '212', '1533030800452_颜色:1533030806536_藏青,1533030813165_尺码:1533030838586_S', '5345635', '381', '0.01', '7563879345341', '10');
INSERT INTO `fy_goods_attribute` VALUES ('1107', '212', '1533030800452_颜色:1533030806536_藏青,1533030813165_尺码:1533030840935_M', '5345635', '448', '0.01', '7563879345342', '10');
INSERT INTO `fy_goods_attribute` VALUES ('1108', '212', '1533030800452_颜色:1533030806536_藏青,1533030813165_尺码:1533030843105_L', '5345635', '447', '0.01', '7563879345343', '10');
INSERT INTO `fy_goods_attribute` VALUES ('1109', '212', '1533030800452_颜色:1533030812147_卡其,1533030813165_尺码:1533030838586_S', '5345635', '451', '0.01', '7563879345344', '10');
INSERT INTO `fy_goods_attribute` VALUES ('1110', '212', '1533030800452_颜色:1533030812147_卡其,1533030813165_尺码:1533030840935_M', '5345635', '452', '0.01', '7563879345345', '10');
INSERT INTO `fy_goods_attribute` VALUES ('1111', '212', '1533030800452_颜色:1533030812147_卡其,1533030813165_尺码:1533030843105_L', '5345635', '452', '0.01', '7563879345346', '10');
INSERT INTO `fy_goods_attribute` VALUES ('1113', '213', '1533031397740_尺码:1533031407084_S', '5345614', '452', '0.01', '7563875331', '50');
INSERT INTO `fy_goods_attribute` VALUES ('1114', '213', '1533031397740_尺码:1533031410081_M', '5345614', '450', '0.01', '7563875332', '9');
INSERT INTO `fy_goods_attribute` VALUES ('1115', '213', '1533031397740_尺码:1533031412402_L', '5345614', '413', '0.01', '7563875333', '9');
INSERT INTO `fy_goods_attribute` VALUES ('1116', '214', '1533031397740_尺码:1533031407084_S', '5345614', '407', '0.01', '7563875331', '9');
INSERT INTO `fy_goods_attribute` VALUES ('1117', '214', '1533031397740_尺码:1533031410081_M', '5345614', '452', '0.01', '7563875332', '9');
INSERT INTO `fy_goods_attribute` VALUES ('1118', '214', '1533031397740_尺码:1533031412402_L', '5345614', '452', '0.01', '7563875333', '9');
INSERT INTO `fy_goods_attribute` VALUES ('1119', '215', '1533259442366_香奈儿:1533259573454_30ML', '', '0', '10.01', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('1120', '215', '1533259442366_香奈儿:1533259583921_50ML', '', '5', '10.02', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('1121', '215', '1533259442366_香奈儿:1533259607899_120ML', '', '1', '10.03', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('1122', '216', '1533350808837_沃尔沃翁无:1533350814150_玩儿 ', '22', '222', '12.00', '222', '22');
INSERT INTO `fy_goods_attribute` VALUES ('1123', '216', '1533350808837_沃尔沃翁无:1533350815879_二 ', '22', '222', '12.00', '222', '22');
INSERT INTO `fy_goods_attribute` VALUES ('1125', '217', '1533368330819_净含量:1533368350371_30ml', '5345635', '392', '50.01', '1245275427', '15');
INSERT INTO `fy_goods_attribute` VALUES ('1126', '217', '1533368330819_净含量:1533368356096_40ml', '5345635', '452', '50.02', '1245275427', '15');
INSERT INTO `fy_goods_attribute` VALUES ('1127', '217', '1533368330819_净含量:1533368359574_50ml', '5345635', '451', '50.03', '1245275427', '15');
INSERT INTO `fy_goods_attribute` VALUES ('1128', '218', '1534227738937_重量:1534227747913_5kg', '', '102', '25.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('1129', '218', '1534227738937_重量:1534227751360_10kg', '', '100', '50.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('1130', '218', '1534227738937_重量:1534227755248_15kg', '', '100', '75.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('1131', '219', '1532685664305_尺码:1532685669296_S', '5345635', '18', '0.01', '756387934534', '1');
INSERT INTO `fy_goods_attribute` VALUES ('1132', '219', '1532685664305_尺码:1532685671881_M', '5345635', '33', '0.01', '756387934534', '2');
INSERT INTO `fy_goods_attribute` VALUES ('1133', '219', '1532685664305_尺码:1532685673577_L', '5345635', '31', '0.01', '756387934534', '3');
INSERT INTO `fy_goods_attribute` VALUES ('1134', '220', '1534321394088_尺码:1534321403370_S', '5345635', '100', '0.01', '756387934534', '10');
INSERT INTO `fy_goods_attribute` VALUES ('1135', '220', '1534321394088_尺码:1534321405318_M', '5345635', '100', '0.01', '756387934534', '10');
INSERT INTO `fy_goods_attribute` VALUES ('1136', '220', '1534321394088_尺码:1534321407764_L', '5345635', '100', '0.01', '756387934534', '10');
INSERT INTO `fy_goods_attribute` VALUES ('1137', '221', '1534471812402_颜色:1534471821558_辣红色,1534471832857_尺码:1534471841310_155/76A/XS', '118201640', '298', '0.01', '1182016401', '10');
INSERT INTO `fy_goods_attribute` VALUES ('1138', '221', '1534471812402_颜色:1534471821558_辣红色,1534471832857_尺码:1534471860969_160/80A/S ', '118201640', '300', '0.02', '1182016402', '10');
INSERT INTO `fy_goods_attribute` VALUES ('1139', '221', '1534471812402_颜色:1534471821558_辣红色,1534471832857_尺码:1534471864571_165/84A/M ', '118201640', '300', '0.03', '1182016403', '10');
INSERT INTO `fy_goods_attribute` VALUES ('1140', '221', '1534471812402_颜色:1534471821558_辣红色,1534471832857_尺码:1534471867872_170/88A/L', '118201640', '300', '0.04', '1182016404', '10');
INSERT INTO `fy_goods_attribute` VALUES ('1141', '221', '1534471812402_颜色:1534471826034_ 黑色,1534471832857_尺码:1534471841310_155/76A/XS', '118201640', '300', '0.01', '1182016405', '10');
INSERT INTO `fy_goods_attribute` VALUES ('1142', '221', '1534471812402_颜色:1534471826034_ 黑色,1534471832857_尺码:1534471860969_160/80A/S ', '118201640', '300', '0.02', '1182016406', '10');
INSERT INTO `fy_goods_attribute` VALUES ('1143', '221', '1534471812402_颜色:1534471826034_ 黑色,1534471832857_尺码:1534471864571_165/84A/M ', '118201640', '300', '0.03', '1182016407', '10');
INSERT INTO `fy_goods_attribute` VALUES ('1144', '221', '1534471812402_颜色:1534471826034_ 黑色,1534471832857_尺码:1534471867872_170/88A/L', '118201640', '300', '0.04', '1182016408', '10');
INSERT INTO `fy_goods_attribute` VALUES ('1145', '221', '1534471812402_颜色:1534471832193_新奶油色,1534471832857_尺码:1534471841310_155/76A/XS', '118201640', '300', '0.01', '1182016409', '10');
INSERT INTO `fy_goods_attribute` VALUES ('1146', '221', '1534471812402_颜色:1534471832193_新奶油色,1534471832857_尺码:1534471860969_160/80A/S ', '118201640', '100', '0.02', '1182016410', '10');
INSERT INTO `fy_goods_attribute` VALUES ('1147', '221', '1534471812402_颜色:1534471832193_新奶油色,1534471832857_尺码:1534471864571_165/84A/M ', '118201640', '300', '0.03', '1182016411', '10');
INSERT INTO `fy_goods_attribute` VALUES ('1148', '221', '1534471812402_颜色:1534471832193_新奶油色,1534471832857_尺码:1534471867872_170/88A/L', '118201640', '300', '0.04', '1182016412', '10');
INSERT INTO `fy_goods_attribute` VALUES ('1152', '222', '1534472672469_颜色:1534472680423_白色,1534472693765_尺码:1534472716725_XS', '1GY2026690', '270', '0.01', '1GY20266901', '8');
INSERT INTO `fy_goods_attribute` VALUES ('1153', '222', '1534472672469_颜色:1534472680423_白色,1534472693765_尺码:1534472718016_S', '1GY2026690', '271', '0.02', '1GY20266902', '8');
INSERT INTO `fy_goods_attribute` VALUES ('1154', '222', '1534472672469_颜色:1534472680423_白色,1534472693765_尺码:1534472720962_M', '1GY2026690', '270', '0.03', '1GY20266903', '8');
INSERT INTO `fy_goods_attribute` VALUES ('1155', '222', '1534472672469_颜色:1534472680423_白色,1534472693765_尺码:1534472724308_L', '1GY2026690', '70', '0.04', '1GY20266904', '8');
INSERT INTO `fy_goods_attribute` VALUES ('1156', '222', '1534472672469_颜色:1534472683919_天蓝色,1534472693765_尺码:1534472716725_XS', '1GY2026690', '271', '0.01', '1GY20266905', '8');
INSERT INTO `fy_goods_attribute` VALUES ('1157', '222', '1534472672469_颜色:1534472683919_天蓝色,1534472693765_尺码:1534472718016_S', '1GY2026690', '271', '0.02', '1GY20266906', '8');
INSERT INTO `fy_goods_attribute` VALUES ('1158', '222', '1534472672469_颜色:1534472683919_天蓝色,1534472693765_尺码:1534472720962_M', '1GY2026690', '270', '0.03', '1GY20266907', '8');
INSERT INTO `fy_goods_attribute` VALUES ('1159', '222', '1534472672469_颜色:1534472683919_天蓝色,1534472693765_尺码:1534472724308_L', '1GY2026690', '270', '0.04', '1GY20266908', '8');
INSERT INTO `fy_goods_attribute` VALUES ('1167', '223', '1534473574146_尺码:1534473585134_29/27', 'LMZ7553HN8NY', '420', '0.01', 'LMZ7553HN8NY1', '18');
INSERT INTO `fy_goods_attribute` VALUES ('1168', '223', '1534473574146_尺码:1534473588679_30/27', 'LMZ7553HN8NY', '420', '0.01', 'LMZ7553HN8NY2', '18');
INSERT INTO `fy_goods_attribute` VALUES ('1169', '223', '1534473574146_尺码:1534473592482_31/27', 'LMZ7553HN8NY', '420', '0.02', 'LMZ7553HN8NY3', '18');
INSERT INTO `fy_goods_attribute` VALUES ('1170', '223', '1534473574146_尺码:1534473603515_32/27', 'LMZ7553HN8NY', '420', '0.02', 'LMZ7553HN8NY4', '18');
INSERT INTO `fy_goods_attribute` VALUES ('1171', '223', '1534473574146_尺码:1534473607065_34/27', 'LMZ7553HN8NY', '420', '0.03', 'LMZ7553HN8NY5', '18');
INSERT INTO `fy_goods_attribute` VALUES ('1172', '223', '1534473574146_尺码:1534473611282_36/27', 'LMZ7553HN8NY', '420', '0.03', 'LMZ7553HN8NY6', '18');
INSERT INTO `fy_goods_attribute` VALUES ('1174', '224', '1534474100016_尺码:1534474107817_24/30', 'LWS4333YQ9JM', '460', '0.01', 'LWS4333YQ9JM1', '13');
INSERT INTO `fy_goods_attribute` VALUES ('1175', '224', '1534474100016_尺码:1534474111343_25/30 ', 'LWS4333YQ9JM', '460', '0.01', 'LWS4333YQ9JM2', '13');
INSERT INTO `fy_goods_attribute` VALUES ('1176', '224', '1534474100016_尺码:1534474121531_26/30', 'LWS4333YQ9JM', '460', '0.01', 'LWS4333YQ9JM3', '13');
INSERT INTO `fy_goods_attribute` VALUES ('1177', '224', '1534474100016_尺码:1534474125496_27/30 ', 'LWS4333YQ9JM', '460', '0.01', 'LWS4333YQ9JM4', '13');
INSERT INTO `fy_goods_attribute` VALUES ('1178', '224', '1534474100016_尺码:1534474128629_28/30', 'LWS4333YQ9JM', '460', '0.01', 'LWS4333YQ9JM5', '13');
INSERT INTO `fy_goods_attribute` VALUES ('1181', '225', '1534474779828_颜色:1534475214669_橙黑色,1534475285723_尺码:1534475290437_39', 'AGCM099', '7311', '0.01', 'AGCM0991', '16');
INSERT INTO `fy_goods_attribute` VALUES ('1182', '225', '1534474779828_颜色:1534475214669_橙黑色,1534475285723_尺码:1534475293594_40', 'AGCM099', '452', '0.01', 'AGCM0992', '16');
INSERT INTO `fy_goods_attribute` VALUES ('1183', '225', '1534474779828_颜色:1534475214669_橙黑色,1534475285723_尺码:1534475294981_41', 'AGCM099', '452', '0.02', 'AGCM0993', '16');
INSERT INTO `fy_goods_attribute` VALUES ('1184', '225', '1534474779828_颜色:1534475214669_橙黑色,1534475285723_尺码:1534475297130_42', 'AGCM099', '452', '0.02', 'AGCM0994', '16');
INSERT INTO `fy_goods_attribute` VALUES ('1185', '225', '1534474779828_颜色:1534475214669_橙黑色,1534475285723_尺码:1534475299245_43', 'AGCM099', '452', '0.03', 'AGCM0995', '16');
INSERT INTO `fy_goods_attribute` VALUES ('1186', '225', '1534474779828_颜色:1534475224265_暗淡灰,1534475285723_尺码:1534475290437_39', 'AGCM099', '452', '0.01', 'AGCM0996', '16');
INSERT INTO `fy_goods_attribute` VALUES ('1187', '225', '1534474779828_颜色:1534475224265_暗淡灰,1534475285723_尺码:1534475293594_40', 'AGCM099', '452', '0.01', 'AGCM0997', '16');
INSERT INTO `fy_goods_attribute` VALUES ('1188', '225', '1534474779828_颜色:1534475224265_暗淡灰,1534475285723_尺码:1534475294981_41', 'AGCM099', '452', '0.02', 'AGCM0998', '16');
INSERT INTO `fy_goods_attribute` VALUES ('1189', '225', '1534474779828_颜色:1534475224265_暗淡灰,1534475285723_尺码:1534475297130_42', 'AGCM099', '452', '0.02', 'AGCM0999', '16');
INSERT INTO `fy_goods_attribute` VALUES ('1190', '225', '1534474779828_颜色:1534475224265_暗淡灰,1534475285723_尺码:1534475299245_43', 'AGCM099', '452', '0.03', 'AGCM09910', '16');
INSERT INTO `fy_goods_attribute` VALUES ('1191', '225', '1534474779828_颜色:1534475252226_火石蓝,1534475285723_尺码:1534475290437_39', 'AGCM099', '452', '0.01', 'AGCM09911', '16');
INSERT INTO `fy_goods_attribute` VALUES ('1192', '225', '1534474779828_颜色:1534475252226_火石蓝,1534475285723_尺码:1534475293594_40', 'AGCM099', '452', '0.01', 'AGCM09912', '16');
INSERT INTO `fy_goods_attribute` VALUES ('1193', '225', '1534474779828_颜色:1534475252226_火石蓝,1534475285723_尺码:1534475294981_41', 'AGCM099', '452', '0.02', 'AGCM09913', '16');
INSERT INTO `fy_goods_attribute` VALUES ('1194', '225', '1534474779828_颜色:1534475252226_火石蓝,1534475285723_尺码:1534475297130_42', 'AGCM099', '852', '0.02', 'AGCM09914', '16');
INSERT INTO `fy_goods_attribute` VALUES ('1195', '225', '1534474779828_颜色:1534475252226_火石蓝,1534475285723_尺码:1534475299245_43', 'AGCM099', '452', '0.03', 'AGCM09915', '16');
INSERT INTO `fy_goods_attribute` VALUES ('1196', '225', '1534474779828_颜色:1534475272814_凝雪灰,1534475285723_尺码:1534475290437_39', 'AGCM099', '452', '0.01', 'AGCM09916', '16');
INSERT INTO `fy_goods_attribute` VALUES ('1197', '225', '1534474779828_颜色:1534475272814_凝雪灰,1534475285723_尺码:1534475293594_40', 'AGCM099', '452', '0.01', 'AGCM09917', '16');
INSERT INTO `fy_goods_attribute` VALUES ('1198', '225', '1534474779828_颜色:1534475272814_凝雪灰,1534475285723_尺码:1534475294981_41', 'AGCM099', '452', '0.02', 'AGCM09918', '16');
INSERT INTO `fy_goods_attribute` VALUES ('1199', '225', '1534474779828_颜色:1534475272814_凝雪灰,1534475285723_尺码:1534475297130_42', 'AGCM099', '452', '0.02', 'AGCM09919', '16');
INSERT INTO `fy_goods_attribute` VALUES ('1200', '225', '1534474779828_颜色:1534475272814_凝雪灰,1534475285723_尺码:1534475299245_43', 'AGCM099', '352', '0.03', 'AGCM09920', '16');
INSERT INTO `fy_goods_attribute` VALUES ('1212', '226', '1534475965898_颜色:1534475995118_琥珀红', '21345', '19', '0.01', '12345', '1');
INSERT INTO `fy_goods_attribute` VALUES ('1213', '226', '1534475965898_颜色:1534476001184_月牙白', '21345', '20', '0.01', '12345', '1');
INSERT INTO `fy_goods_attribute` VALUES ('1214', '226', '1534475965898_颜色:1534476006397_墨岩黑', '21345', '20', '0.01', '12345', '1');
INSERT INTO `fy_goods_attribute` VALUES ('1215', '227', '1534475972128_颜色:1534475978133_荧光桃红/白,1534475982816_尺码:1534475998755_36', 'ARBL048', '484', '0.01', 'ARBL0481', '9');
INSERT INTO `fy_goods_attribute` VALUES ('1216', '227', '1534475972128_颜色:1534475978133_荧光桃红/白,1534475982816_尺码:1534476000227_37', 'ARBL048', '384', '0.01', 'ARBL0482', '9');
INSERT INTO `fy_goods_attribute` VALUES ('1217', '227', '1534475972128_颜色:1534475978133_荧光桃红/白,1534475982816_尺码:1534476001846_38', 'ARBL048', '384', '0.02', 'ARBL0483', '9');
INSERT INTO `fy_goods_attribute` VALUES ('1218', '227', '1534475972128_颜色:1534475978133_荧光桃红/白,1534475982816_尺码:1534476003530_39', 'ARBL048', '384', '0.03', 'ARBL0484', '9');
INSERT INTO `fy_goods_attribute` VALUES ('1219', '227', '1534475972128_颜色:1534475982161_基础白/基础黑,1534475982816_尺码:1534475998755_36', 'ARBL048', '384', '0.01', 'ARBL0485', '9');
INSERT INTO `fy_goods_attribute` VALUES ('1220', '227', '1534475972128_颜色:1534475982161_基础白/基础黑,1534475982816_尺码:1534476000227_37', 'ARBL048', '384', '0.01', 'ARBL0486', '9');
INSERT INTO `fy_goods_attribute` VALUES ('1221', '227', '1534475972128_颜色:1534475982161_基础白/基础黑,1534475982816_尺码:1534476001846_38', 'ARBL048', '384', '0.02', 'ARBL0487', '9');
INSERT INTO `fy_goods_attribute` VALUES ('1222', '227', '1534475972128_颜色:1534475982161_基础白/基础黑,1534475982816_尺码:1534476003530_39', 'ARBL048', '184', '0.03', 'ARBL0488', '9');
INSERT INTO `fy_goods_attribute` VALUES ('1230', '228', '1534475972128_颜色:1534475978133_荧光桃红/白,1534475982816_尺码:1534475998755_36', 'ARBL048', '384', '0.01', 'ARBL0481', '9');
INSERT INTO `fy_goods_attribute` VALUES ('1231', '228', '1534475972128_颜色:1534475978133_荧光桃红/白,1534475982816_尺码:1534476000227_37', 'ARBL048', '384', '0.01', 'ARBL0482', '9');
INSERT INTO `fy_goods_attribute` VALUES ('1232', '228', '1534475972128_颜色:1534475978133_荧光桃红/白,1534475982816_尺码:1534476001846_38', 'ARBL048', '384', '0.02', 'ARBL0483', '9');
INSERT INTO `fy_goods_attribute` VALUES ('1233', '228', '1534475972128_颜色:1534475978133_荧光桃红/白,1534475982816_尺码:1534476003530_39', 'ARBL048', '384', '0.03', 'ARBL0484', '9');
INSERT INTO `fy_goods_attribute` VALUES ('1234', '228', '1534475972128_颜色:1534475982161_基础白/基础黑,1534475982816_尺码:1534475998755_36', 'ARBL048', '384', '0.01', 'ARBL0485', '9');
INSERT INTO `fy_goods_attribute` VALUES ('1235', '228', '1534475972128_颜色:1534475982161_基础白/基础黑,1534475982816_尺码:1534476000227_37', 'ARBL048', '384', '0.01', 'ARBL0486', '9');
INSERT INTO `fy_goods_attribute` VALUES ('1236', '228', '1534475972128_颜色:1534475982161_基础白/基础黑,1534475982816_尺码:1534476001846_38', 'ARBL048', '384', '0.02', 'ARBL0487', '9');
INSERT INTO `fy_goods_attribute` VALUES ('1237', '228', '1534475972128_颜色:1534475982161_基础白/基础黑,1534475982816_尺码:1534476003530_39', 'ARBL048', '384', '0.03', 'ARBL0488', '9');
INSERT INTO `fy_goods_attribute` VALUES ('1245', '229', null, null, '30', '1.00', '2345', '200');
INSERT INTO `fy_goods_attribute` VALUES ('1246', '230', null, null, '60', '1.00', '2345', '200');
INSERT INTO `fy_goods_attribute` VALUES ('1247', '231', '1534732547524_颜色:1534732573042_黑色,1534732587642_尺寸:1534732610224_20cm', '', '99', '0.50', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('1248', '231', '1534732547524_颜色:1534732573042_黑色,1534732587642_尺寸:1534732639758_30cm', '', '100', '1.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('1249', '231', '1534732547524_颜色:1534732573042_黑色,1534732587642_尺寸:1534732644381_40cm', '', '0', null, '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('1250', '231', '1534732547524_颜色:1534732577331_白色,1534732587642_尺寸:1534732610224_20cm', '', '0', null, '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('1251', '231', '1534732547524_颜色:1534732577331_白色,1534732587642_尺寸:1534732639758_30cm', '', '96', '1.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('1252', '231', '1534732547524_颜色:1534732577331_白色,1534732587642_尺寸:1534732644381_40cm', '', '0', null, '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('1253', '231', '1534732547524_颜色:1534732586826_红色,1534732587642_尺寸:1534732610224_20cm', '', '100', '1.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('1254', '231', '1534732547524_颜色:1534732586826_红色,1534732587642_尺寸:1534732639758_30cm', '', '100', '1.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('1255', '231', '1534732547524_颜色:1534732586826_红色,1534732587642_尺寸:1534732644381_40cm', '', '100', '1.00', '', '0');
INSERT INTO `fy_goods_attribute` VALUES ('1262', '232', null, null, '555', '44.00', '4444', '2345');

-- ----------------------------
-- Table structure for fy_goods_browse
-- ----------------------------
DROP TABLE IF EXISTS `fy_goods_browse`;
CREATE TABLE `fy_goods_browse` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品浏览记录表',
  `uid` int(11) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `num` int(1) DEFAULT NULL COMMENT '浏览次数',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=984 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_goods_browse
-- ----------------------------
INSERT INTO `fy_goods_browse` VALUES ('177', null, 'omQYXwAasNeXdGSMymd91487Ds1g', '205', '1533111261', '11', '1533111261');
INSERT INTO `fy_goods_browse` VALUES ('178', null, 'omQYXwAasNeXdGSMymd91487Ds1g', '204', '1533111273', '12', '1533111273');
INSERT INTO `fy_goods_browse` VALUES ('179', null, 'omQYXwAasNeXdGSMymd91487Ds1g', '197', '1533111466', '22', '1533111466');
INSERT INTO `fy_goods_browse` VALUES ('180', null, 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '196', '1533111539', '5', '1533111539');
INSERT INTO `fy_goods_browse` VALUES ('181', null, 'omQYXwNAT5uC15TQqMGxajJzqo4s', '207', '1533111554', '3', '1533111554');
INSERT INTO `fy_goods_browse` VALUES ('182', null, 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '201', '1533111563', '5', '1533111563');
INSERT INTO `fy_goods_browse` VALUES ('183', null, 'omQYXwNAT5uC15TQqMGxajJzqo4s', '0', '1533111600', '122', '1533111600');
INSERT INTO `fy_goods_browse` VALUES ('184', null, 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '197', '1533111628', '50', '1533111628');
INSERT INTO `fy_goods_browse` VALUES ('185', null, 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '204', '1533111679', '9', '1533111679');
INSERT INTO `fy_goods_browse` VALUES ('186', null, 'omQYXwNAT5uC15TQqMGxajJzqo4s', '204', '1533111683', '3', '1533111683');
INSERT INTO `fy_goods_browse` VALUES ('187', null, 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '204', '1533111708', '11', '1533111708');
INSERT INTO `fy_goods_browse` VALUES ('188', null, 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '0', '1533111726', '242', '1533111726');
INSERT INTO `fy_goods_browse` VALUES ('189', null, 'omQYXwNAT5uC15TQqMGxajJzqo4s', '205', '1533111743', '2', '1533111743');
INSERT INTO `fy_goods_browse` VALUES ('190', null, 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '205', '1533111801', '3', '1533111801');
INSERT INTO `fy_goods_browse` VALUES ('191', null, 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '196', '1533113275', '64', '1533113275');
INSERT INTO `fy_goods_browse` VALUES ('192', null, 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '197', '1533113313', '27', '1533113313');
INSERT INTO `fy_goods_browse` VALUES ('193', null, 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '212', '1533113538', '14', '1533113538');
INSERT INTO `fy_goods_browse` VALUES ('194', null, 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '213', '1533113564', '13', '1533113564');
INSERT INTO `fy_goods_browse` VALUES ('195', null, 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '213', '1533113753', '17', '1533113753');
INSERT INTO `fy_goods_browse` VALUES ('196', null, 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '196', '1533113757', '36', '1533113757');
INSERT INTO `fy_goods_browse` VALUES ('197', null, 'omQYXwAasNeXdGSMymd91487Ds1g', '213', '1533114032', '10', '1533114032');
INSERT INTO `fy_goods_browse` VALUES ('198', null, 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '197', '1533114090', '233', '1533114090');
INSERT INTO `fy_goods_browse` VALUES ('199', null, 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '206', '1533114205', '3', '1533114205');
INSERT INTO `fy_goods_browse` VALUES ('200', null, 'omQYXwAasNeXdGSMymd91487Ds1g', '201', '1533117446', '6', '1533117446');
INSERT INTO `fy_goods_browse` VALUES ('201', null, 'omQYXwMttcgYATxUYMuVsSAVeDSU', '204', '1533117498', '1', '1533117498');
INSERT INTO `fy_goods_browse` VALUES ('202', null, 'omQYXwMttcgYATxUYMuVsSAVeDSU', '0', '1533117532', '2', '1533117532');
INSERT INTO `fy_goods_browse` VALUES ('203', null, 'omQYXwMttcgYATxUYMuVsSAVeDSU', '201', '1533117753', '1', '1533117753');
INSERT INTO `fy_goods_browse` VALUES ('204', null, 'omQYXwAasNeXdGSMymd91487Ds1g', '196', '1533124347', '9', '1533124347');
INSERT INTO `fy_goods_browse` VALUES ('205', null, 'omQYXwAasNeXdGSMymd91487Ds1g', '212', '1533124407', '6', '1533124407');
INSERT INTO `fy_goods_browse` VALUES ('206', null, 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '0', '1533175999', '143', '1533175999');
INSERT INTO `fy_goods_browse` VALUES ('207', null, 'omQYXwNAT5uC15TQqMGxajJzqo4s', '197', '1533176961', '41', '1533176961');
INSERT INTO `fy_goods_browse` VALUES ('208', null, 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '207', '1533180915', '2', '1533180915');
INSERT INTO `fy_goods_browse` VALUES ('209', null, 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '199', '1533181776', '4', '1533181776');
INSERT INTO `fy_goods_browse` VALUES ('210', null, 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '213', '1533192089', '8', '1533192089');
INSERT INTO `fy_goods_browse` VALUES ('211', null, 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '0', '1533192177', '51', '1533192177');
INSERT INTO `fy_goods_browse` VALUES ('212', null, 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '196', '1533192589', '5', '1533192589');
INSERT INTO `fy_goods_browse` VALUES ('213', null, 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '197', '1533192600', '1', '1533192600');
INSERT INTO `fy_goods_browse` VALUES ('214', null, 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '212', '1533192615', '6', '1533192615');
INSERT INTO `fy_goods_browse` VALUES ('215', null, 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '207', '1533193676', '1', '1533193676');
INSERT INTO `fy_goods_browse` VALUES ('216', null, 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '201', '1533198458', '1', '1533198458');
INSERT INTO `fy_goods_browse` VALUES ('217', null, 'omQYXwNAT5uC15TQqMGxajJzqo4s', '196', '1533198838', '57', '1533198838');
INSERT INTO `fy_goods_browse` VALUES ('218', null, 'omQYXwNAT5uC15TQqMGxajJzqo4s', '213', '1533201291', '2', '1533201291');
INSERT INTO `fy_goods_browse` VALUES ('219', null, 'omQYXwNAT5uC15TQqMGxajJzqo4s', '212', '1533201300', '26', '1533201300');
INSERT INTO `fy_goods_browse` VALUES ('220', null, 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '212', '1533205657', '3', '1533205657');
INSERT INTO `fy_goods_browse` VALUES ('221', null, 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '187', '1533258572', '1', '1533258572');
INSERT INTO `fy_goods_browse` VALUES ('222', null, 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '215', '1533268380', '9', '1533268380');
INSERT INTO `fy_goods_browse` VALUES ('223', null, 'omQYXwAasNeXdGSMymd91487Ds1g', '214', '1533270470', '4', '1533270470');
INSERT INTO `fy_goods_browse` VALUES ('224', null, 'omQYXwNAT5uC15TQqMGxajJzqo4s', '215', '1533284791', '9', '1533284791');
INSERT INTO `fy_goods_browse` VALUES ('225', null, 'omQYXwAasNeXdGSMymd91487Ds1g', '215', '1533284948', '3', '1533284948');
INSERT INTO `fy_goods_browse` VALUES ('226', null, 'omQYXwAasNeXdGSMymd91487Ds1g', '199', '1533285026', '1', '1533285026');
INSERT INTO `fy_goods_browse` VALUES ('227', null, 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '215', '1533285725', '34', '1533285725');
INSERT INTO `fy_goods_browse` VALUES ('228', null, null, '197', '1533288843', '1', '1533288843');
INSERT INTO `fy_goods_browse` VALUES ('229', null, null, '197', '1533288991', '1', '1533288991');
INSERT INTO `fy_goods_browse` VALUES ('230', null, null, '197', '1533289107', '1', '1533289107');
INSERT INTO `fy_goods_browse` VALUES ('231', null, null, '197', '1533289108', '1', '1533289108');
INSERT INTO `fy_goods_browse` VALUES ('232', null, null, '197', '1533289108', '1', '1533289108');
INSERT INTO `fy_goods_browse` VALUES ('233', null, null, '197', '1533289109', '1', '1533289109');
INSERT INTO `fy_goods_browse` VALUES ('234', null, null, '197', '1533289109', '1', '1533289109');
INSERT INTO `fy_goods_browse` VALUES ('235', null, null, '197', '1533289126', '1', '1533289126');
INSERT INTO `fy_goods_browse` VALUES ('236', null, null, '197', '1533289127', '1', '1533289127');
INSERT INTO `fy_goods_browse` VALUES ('237', null, null, '197', '1533289128', '1', '1533289128');
INSERT INTO `fy_goods_browse` VALUES ('238', null, 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '217', '1533368753', '27', '1533368753');
INSERT INTO `fy_goods_browse` VALUES ('239', null, null, '215', '1533373694', '1', '1533373694');
INSERT INTO `fy_goods_browse` VALUES ('240', null, null, '215', '1533373774', '1', '1533373774');
INSERT INTO `fy_goods_browse` VALUES ('241', null, 'omQYXwAasNeXdGSMymd91487Ds1g', '217', '1533378089', '10', '1533378089');
INSERT INTO `fy_goods_browse` VALUES ('242', null, null, '217', '1533378149', '1', '1533378149');
INSERT INTO `fy_goods_browse` VALUES ('243', null, null, '205', '1533378262', '1', '1533378262');
INSERT INTO `fy_goods_browse` VALUES ('244', null, null, '197', '1533390341', '1', '1533390341');
INSERT INTO `fy_goods_browse` VALUES ('245', null, null, '217', '1533390766', '1', '1533390766');
INSERT INTO `fy_goods_browse` VALUES ('246', null, null, '197', '1533391452', '1', '1533391452');
INSERT INTO `fy_goods_browse` VALUES ('247', null, null, '215', '1533518638', '1', '1533518638');
INSERT INTO `fy_goods_browse` VALUES ('248', null, null, '215', '1533518714', '1', '1533518714');
INSERT INTO `fy_goods_browse` VALUES ('249', null, 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '217', '1533519002', '11', '1533519002');
INSERT INTO `fy_goods_browse` VALUES ('250', null, null, '215', '1533519804', '1', '1533519804');
INSERT INTO `fy_goods_browse` VALUES ('251', null, null, '196', '1533519841', '1', '1533519841');
INSERT INTO `fy_goods_browse` VALUES ('252', null, null, '197', '1533519855', '1', '1533519855');
INSERT INTO `fy_goods_browse` VALUES ('253', null, null, '215', '1533520525', '1', '1533520525');
INSERT INTO `fy_goods_browse` VALUES ('254', null, null, '215', '1533613412', '1', '1533613412');
INSERT INTO `fy_goods_browse` VALUES ('255', null, null, '204', '1533625058', '1', '1533625058');
INSERT INTO `fy_goods_browse` VALUES ('256', null, 'omQYXwNAT5uC15TQqMGxajJzqo4s', '217', '1533637131', '10', '1533637131');
INSERT INTO `fy_goods_browse` VALUES ('257', null, null, '215', '1533637181', '1', '1533637181');
INSERT INTO `fy_goods_browse` VALUES ('258', null, null, '217', '1533637191', '1', '1533637191');
INSERT INTO `fy_goods_browse` VALUES ('259', null, null, '196', '1533637279', '1', '1533637279');
INSERT INTO `fy_goods_browse` VALUES ('260', null, null, '217', '1533696586', '1', '1533696586');
INSERT INTO `fy_goods_browse` VALUES ('261', null, null, '212', '1533696768', '1', '1533696768');
INSERT INTO `fy_goods_browse` VALUES ('262', null, 'omQYXwNHPeY_xGIxXQMxv9Z4jigc', '215', '1533698137', '3', '1533698137');
INSERT INTO `fy_goods_browse` VALUES ('263', null, null, '215', '1533698168', '1', '1533698168');
INSERT INTO `fy_goods_browse` VALUES ('264', null, null, '215', '1533698168', '1', '1533698168');
INSERT INTO `fy_goods_browse` VALUES ('265', null, null, '215', '1533698168', '1', '1533698168');
INSERT INTO `fy_goods_browse` VALUES ('266', null, null, '215', '1533698168', '1', '1533698168');
INSERT INTO `fy_goods_browse` VALUES ('267', null, null, '215', '1533698168', '1', '1533698168');
INSERT INTO `fy_goods_browse` VALUES ('268', null, null, '215', '1533698168', '1', '1533698168');
INSERT INTO `fy_goods_browse` VALUES ('269', null, null, '215', '1533698168', '1', '1533698168');
INSERT INTO `fy_goods_browse` VALUES ('270', null, null, '215', '1533698169', '1', '1533698169');
INSERT INTO `fy_goods_browse` VALUES ('271', null, null, '215', '1533698169', '1', '1533698169');
INSERT INTO `fy_goods_browse` VALUES ('272', null, null, '215', '1533698169', '1', '1533698169');
INSERT INTO `fy_goods_browse` VALUES ('273', null, null, '215', '1533698169', '1', '1533698169');
INSERT INTO `fy_goods_browse` VALUES ('274', null, null, '215', '1533698169', '1', '1533698169');
INSERT INTO `fy_goods_browse` VALUES ('275', null, null, '215', '1533698169', '1', '1533698169');
INSERT INTO `fy_goods_browse` VALUES ('276', null, null, '215', '1533698169', '1', '1533698169');
INSERT INTO `fy_goods_browse` VALUES ('277', null, null, '215', '1533698169', '1', '1533698169');
INSERT INTO `fy_goods_browse` VALUES ('278', null, null, '215', '1533698169', '1', '1533698169');
INSERT INTO `fy_goods_browse` VALUES ('279', null, null, '215', '1533698169', '1', '1533698169');
INSERT INTO `fy_goods_browse` VALUES ('280', null, null, '215', '1533698169', '1', '1533698169');
INSERT INTO `fy_goods_browse` VALUES ('281', null, null, '215', '1533698169', '1', '1533698169');
INSERT INTO `fy_goods_browse` VALUES ('282', null, null, '215', '1533698169', '1', '1533698169');
INSERT INTO `fy_goods_browse` VALUES ('283', null, null, '215', '1533698169', '1', '1533698169');
INSERT INTO `fy_goods_browse` VALUES ('284', null, null, '215', '1533698170', '1', '1533698170');
INSERT INTO `fy_goods_browse` VALUES ('285', null, null, '215', '1533698170', '1', '1533698170');
INSERT INTO `fy_goods_browse` VALUES ('286', null, null, '215', '1533698170', '1', '1533698170');
INSERT INTO `fy_goods_browse` VALUES ('287', null, null, '215', '1533698170', '1', '1533698170');
INSERT INTO `fy_goods_browse` VALUES ('288', null, null, '215', '1533698170', '1', '1533698170');
INSERT INTO `fy_goods_browse` VALUES ('289', null, null, '215', '1533698170', '1', '1533698170');
INSERT INTO `fy_goods_browse` VALUES ('290', null, null, '215', '1533698170', '1', '1533698170');
INSERT INTO `fy_goods_browse` VALUES ('291', null, null, '215', '1533698170', '1', '1533698170');
INSERT INTO `fy_goods_browse` VALUES ('292', null, null, '215', '1533698170', '1', '1533698170');
INSERT INTO `fy_goods_browse` VALUES ('293', null, null, '215', '1533698170', '1', '1533698170');
INSERT INTO `fy_goods_browse` VALUES ('294', null, null, '215', '1533698170', '1', '1533698170');
INSERT INTO `fy_goods_browse` VALUES ('295', null, null, '215', '1533698170', '1', '1533698170');
INSERT INTO `fy_goods_browse` VALUES ('296', null, null, '215', '1533698170', '1', '1533698170');
INSERT INTO `fy_goods_browse` VALUES ('297', null, null, '215', '1533698170', '1', '1533698170');
INSERT INTO `fy_goods_browse` VALUES ('298', null, null, '215', '1533698170', '1', '1533698170');
INSERT INTO `fy_goods_browse` VALUES ('299', null, null, '215', '1533698170', '1', '1533698170');
INSERT INTO `fy_goods_browse` VALUES ('300', null, null, '215', '1533698170', '1', '1533698170');
INSERT INTO `fy_goods_browse` VALUES ('301', null, null, '215', '1533698170', '1', '1533698170');
INSERT INTO `fy_goods_browse` VALUES ('302', null, null, '215', '1533698170', '1', '1533698170');
INSERT INTO `fy_goods_browse` VALUES ('303', null, null, '215', '1533698170', '1', '1533698170');
INSERT INTO `fy_goods_browse` VALUES ('304', null, null, '215', '1533698170', '1', '1533698170');
INSERT INTO `fy_goods_browse` VALUES ('305', null, null, '215', '1533698170', '1', '1533698170');
INSERT INTO `fy_goods_browse` VALUES ('306', null, null, '215', '1533698170', '1', '1533698170');
INSERT INTO `fy_goods_browse` VALUES ('307', null, null, '215', '1533698171', '1', '1533698171');
INSERT INTO `fy_goods_browse` VALUES ('308', null, null, '215', '1533698171', '1', '1533698171');
INSERT INTO `fy_goods_browse` VALUES ('309', null, null, '215', '1533698171', '1', '1533698171');
INSERT INTO `fy_goods_browse` VALUES ('310', null, null, '215', '1533698171', '1', '1533698171');
INSERT INTO `fy_goods_browse` VALUES ('311', null, null, '215', '1533698171', '1', '1533698171');
INSERT INTO `fy_goods_browse` VALUES ('312', null, null, '215', '1533698171', '1', '1533698171');
INSERT INTO `fy_goods_browse` VALUES ('313', null, null, '215', '1533698171', '1', '1533698171');
INSERT INTO `fy_goods_browse` VALUES ('314', null, null, '215', '1533698171', '1', '1533698171');
INSERT INTO `fy_goods_browse` VALUES ('315', null, null, '215', '1533698171', '1', '1533698171');
INSERT INTO `fy_goods_browse` VALUES ('316', null, null, '215', '1533698171', '1', '1533698171');
INSERT INTO `fy_goods_browse` VALUES ('317', null, null, '215', '1533698171', '1', '1533698171');
INSERT INTO `fy_goods_browse` VALUES ('318', null, null, '215', '1533698171', '1', '1533698171');
INSERT INTO `fy_goods_browse` VALUES ('319', null, null, '215', '1533698171', '1', '1533698171');
INSERT INTO `fy_goods_browse` VALUES ('320', null, null, '215', '1533698171', '1', '1533698171');
INSERT INTO `fy_goods_browse` VALUES ('321', null, null, '215', '1533698171', '1', '1533698171');
INSERT INTO `fy_goods_browse` VALUES ('322', null, null, '215', '1533698171', '1', '1533698171');
INSERT INTO `fy_goods_browse` VALUES ('323', null, null, '215', '1533698171', '1', '1533698171');
INSERT INTO `fy_goods_browse` VALUES ('324', null, null, '215', '1533698172', '1', '1533698172');
INSERT INTO `fy_goods_browse` VALUES ('325', null, null, '215', '1533698172', '1', '1533698172');
INSERT INTO `fy_goods_browse` VALUES ('326', null, null, '215', '1533698172', '1', '1533698172');
INSERT INTO `fy_goods_browse` VALUES ('327', null, null, '215', '1533698172', '1', '1533698172');
INSERT INTO `fy_goods_browse` VALUES ('328', null, null, '215', '1533698172', '1', '1533698172');
INSERT INTO `fy_goods_browse` VALUES ('329', null, null, '215', '1533698172', '1', '1533698172');
INSERT INTO `fy_goods_browse` VALUES ('330', null, null, '215', '1533698172', '1', '1533698172');
INSERT INTO `fy_goods_browse` VALUES ('331', null, null, '215', '1533698172', '1', '1533698172');
INSERT INTO `fy_goods_browse` VALUES ('332', null, null, '215', '1533698172', '1', '1533698172');
INSERT INTO `fy_goods_browse` VALUES ('333', null, null, '215', '1533698172', '1', '1533698172');
INSERT INTO `fy_goods_browse` VALUES ('334', null, null, '215', '1533698172', '1', '1533698172');
INSERT INTO `fy_goods_browse` VALUES ('335', null, null, '215', '1533698173', '1', '1533698173');
INSERT INTO `fy_goods_browse` VALUES ('336', null, null, '215', '1533698173', '1', '1533698173');
INSERT INTO `fy_goods_browse` VALUES ('337', null, null, '215', '1533698173', '1', '1533698173');
INSERT INTO `fy_goods_browse` VALUES ('338', null, null, '215', '1533698173', '1', '1533698173');
INSERT INTO `fy_goods_browse` VALUES ('339', null, null, '215', '1533698173', '1', '1533698173');
INSERT INTO `fy_goods_browse` VALUES ('340', null, null, '215', '1533698173', '1', '1533698173');
INSERT INTO `fy_goods_browse` VALUES ('341', null, null, '215', '1533698173', '1', '1533698173');
INSERT INTO `fy_goods_browse` VALUES ('342', null, null, '215', '1533698173', '1', '1533698173');
INSERT INTO `fy_goods_browse` VALUES ('343', null, null, '215', '1533698173', '1', '1533698173');
INSERT INTO `fy_goods_browse` VALUES ('344', null, null, '215', '1533698173', '1', '1533698173');
INSERT INTO `fy_goods_browse` VALUES ('345', null, null, '215', '1533698173', '1', '1533698173');
INSERT INTO `fy_goods_browse` VALUES ('346', null, null, '215', '1533698173', '1', '1533698173');
INSERT INTO `fy_goods_browse` VALUES ('347', null, null, '215', '1533698173', '1', '1533698173');
INSERT INTO `fy_goods_browse` VALUES ('348', null, null, '215', '1533698173', '1', '1533698173');
INSERT INTO `fy_goods_browse` VALUES ('349', null, null, '215', '1533698173', '1', '1533698173');
INSERT INTO `fy_goods_browse` VALUES ('350', null, null, '215', '1533698173', '1', '1533698173');
INSERT INTO `fy_goods_browse` VALUES ('351', null, null, '215', '1533698173', '1', '1533698173');
INSERT INTO `fy_goods_browse` VALUES ('352', null, null, '215', '1533698173', '1', '1533698173');
INSERT INTO `fy_goods_browse` VALUES ('353', null, null, '215', '1533698173', '1', '1533698173');
INSERT INTO `fy_goods_browse` VALUES ('354', null, null, '215', '1533698173', '1', '1533698173');
INSERT INTO `fy_goods_browse` VALUES ('355', null, null, '215', '1533698174', '1', '1533698174');
INSERT INTO `fy_goods_browse` VALUES ('356', null, null, '215', '1533698174', '1', '1533698174');
INSERT INTO `fy_goods_browse` VALUES ('357', null, null, '215', '1533698174', '1', '1533698174');
INSERT INTO `fy_goods_browse` VALUES ('358', null, null, '215', '1533698174', '1', '1533698174');
INSERT INTO `fy_goods_browse` VALUES ('359', null, null, '215', '1533698174', '1', '1533698174');
INSERT INTO `fy_goods_browse` VALUES ('360', null, null, '215', '1533698174', '1', '1533698174');
INSERT INTO `fy_goods_browse` VALUES ('361', null, null, '215', '1533698174', '1', '1533698174');
INSERT INTO `fy_goods_browse` VALUES ('362', null, null, '215', '1533698174', '1', '1533698174');
INSERT INTO `fy_goods_browse` VALUES ('363', null, null, '215', '1533698174', '1', '1533698174');
INSERT INTO `fy_goods_browse` VALUES ('364', null, null, '215', '1533698174', '1', '1533698174');
INSERT INTO `fy_goods_browse` VALUES ('365', null, null, '215', '1533698174', '1', '1533698174');
INSERT INTO `fy_goods_browse` VALUES ('366', null, null, '215', '1533698174', '1', '1533698174');
INSERT INTO `fy_goods_browse` VALUES ('367', null, null, '215', '1533698174', '1', '1533698174');
INSERT INTO `fy_goods_browse` VALUES ('368', null, null, '215', '1533698174', '1', '1533698174');
INSERT INTO `fy_goods_browse` VALUES ('369', null, null, '215', '1533698174', '1', '1533698174');
INSERT INTO `fy_goods_browse` VALUES ('370', null, null, '215', '1533698174', '1', '1533698174');
INSERT INTO `fy_goods_browse` VALUES ('371', null, null, '215', '1533698174', '1', '1533698174');
INSERT INTO `fy_goods_browse` VALUES ('372', null, null, '215', '1533698174', '1', '1533698174');
INSERT INTO `fy_goods_browse` VALUES ('373', null, null, '215', '1533698175', '1', '1533698175');
INSERT INTO `fy_goods_browse` VALUES ('374', null, null, '215', '1533698175', '1', '1533698175');
INSERT INTO `fy_goods_browse` VALUES ('375', null, null, '215', '1533698175', '1', '1533698175');
INSERT INTO `fy_goods_browse` VALUES ('376', null, null, '215', '1533698175', '1', '1533698175');
INSERT INTO `fy_goods_browse` VALUES ('377', null, null, '215', '1533698175', '1', '1533698175');
INSERT INTO `fy_goods_browse` VALUES ('378', null, null, '215', '1533698175', '1', '1533698175');
INSERT INTO `fy_goods_browse` VALUES ('379', null, null, '215', '1533698175', '1', '1533698175');
INSERT INTO `fy_goods_browse` VALUES ('380', null, null, '215', '1533698175', '1', '1533698175');
INSERT INTO `fy_goods_browse` VALUES ('381', null, null, '215', '1533698175', '1', '1533698175');
INSERT INTO `fy_goods_browse` VALUES ('382', null, null, '215', '1533698175', '1', '1533698175');
INSERT INTO `fy_goods_browse` VALUES ('383', null, null, '215', '1533698175', '1', '1533698175');
INSERT INTO `fy_goods_browse` VALUES ('384', null, null, '215', '1533698175', '1', '1533698175');
INSERT INTO `fy_goods_browse` VALUES ('385', null, null, '215', '1533698175', '1', '1533698175');
INSERT INTO `fy_goods_browse` VALUES ('386', null, null, '215', '1533698175', '1', '1533698175');
INSERT INTO `fy_goods_browse` VALUES ('387', null, null, '215', '1533698175', '1', '1533698175');
INSERT INTO `fy_goods_browse` VALUES ('388', null, null, '215', '1533698175', '1', '1533698175');
INSERT INTO `fy_goods_browse` VALUES ('389', null, null, '215', '1533698175', '1', '1533698175');
INSERT INTO `fy_goods_browse` VALUES ('390', null, null, '215', '1533698175', '1', '1533698175');
INSERT INTO `fy_goods_browse` VALUES ('391', null, null, '215', '1533698175', '1', '1533698175');
INSERT INTO `fy_goods_browse` VALUES ('392', null, null, '215', '1533698175', '1', '1533698175');
INSERT INTO `fy_goods_browse` VALUES ('393', null, null, '215', '1533698176', '1', '1533698176');
INSERT INTO `fy_goods_browse` VALUES ('394', null, null, '215', '1533698176', '1', '1533698176');
INSERT INTO `fy_goods_browse` VALUES ('395', null, null, '215', '1533698176', '1', '1533698176');
INSERT INTO `fy_goods_browse` VALUES ('396', null, null, '215', '1533698176', '1', '1533698176');
INSERT INTO `fy_goods_browse` VALUES ('397', null, null, '215', '1533698176', '1', '1533698176');
INSERT INTO `fy_goods_browse` VALUES ('398', null, null, '215', '1533698176', '1', '1533698176');
INSERT INTO `fy_goods_browse` VALUES ('399', null, null, '215', '1533698176', '1', '1533698176');
INSERT INTO `fy_goods_browse` VALUES ('400', null, null, '215', '1533698176', '1', '1533698176');
INSERT INTO `fy_goods_browse` VALUES ('401', null, null, '215', '1533698176', '1', '1533698176');
INSERT INTO `fy_goods_browse` VALUES ('402', null, null, '215', '1533698176', '1', '1533698176');
INSERT INTO `fy_goods_browse` VALUES ('403', null, null, '215', '1533698176', '1', '1533698176');
INSERT INTO `fy_goods_browse` VALUES ('404', null, null, '215', '1533698176', '1', '1533698176');
INSERT INTO `fy_goods_browse` VALUES ('405', null, null, '215', '1533698176', '1', '1533698176');
INSERT INTO `fy_goods_browse` VALUES ('406', null, null, '215', '1533698176', '1', '1533698176');
INSERT INTO `fy_goods_browse` VALUES ('407', null, null, '215', '1533698176', '1', '1533698176');
INSERT INTO `fy_goods_browse` VALUES ('408', null, null, '215', '1533698176', '1', '1533698176');
INSERT INTO `fy_goods_browse` VALUES ('409', null, null, '215', '1533698176', '1', '1533698176');
INSERT INTO `fy_goods_browse` VALUES ('410', null, null, '215', '1533698177', '1', '1533698177');
INSERT INTO `fy_goods_browse` VALUES ('411', null, null, '215', '1533698177', '1', '1533698177');
INSERT INTO `fy_goods_browse` VALUES ('412', null, null, '215', '1533698177', '1', '1533698177');
INSERT INTO `fy_goods_browse` VALUES ('413', null, null, '215', '1533698177', '1', '1533698177');
INSERT INTO `fy_goods_browse` VALUES ('414', null, null, '215', '1533698177', '1', '1533698177');
INSERT INTO `fy_goods_browse` VALUES ('415', null, null, '215', '1533698177', '1', '1533698177');
INSERT INTO `fy_goods_browse` VALUES ('416', null, null, '215', '1533698177', '1', '1533698177');
INSERT INTO `fy_goods_browse` VALUES ('417', null, null, '215', '1533698177', '1', '1533698177');
INSERT INTO `fy_goods_browse` VALUES ('418', null, null, '215', '1533698177', '1', '1533698177');
INSERT INTO `fy_goods_browse` VALUES ('419', null, null, '215', '1533698177', '1', '1533698177');
INSERT INTO `fy_goods_browse` VALUES ('420', null, null, '215', '1533698177', '1', '1533698177');
INSERT INTO `fy_goods_browse` VALUES ('421', null, null, '215', '1533698177', '1', '1533698177');
INSERT INTO `fy_goods_browse` VALUES ('422', null, null, '215', '1533698177', '1', '1533698177');
INSERT INTO `fy_goods_browse` VALUES ('423', null, null, '215', '1533698177', '1', '1533698177');
INSERT INTO `fy_goods_browse` VALUES ('424', null, null, '215', '1533698177', '1', '1533698177');
INSERT INTO `fy_goods_browse` VALUES ('425', null, null, '215', '1533698177', '1', '1533698177');
INSERT INTO `fy_goods_browse` VALUES ('426', null, null, '215', '1533698177', '1', '1533698177');
INSERT INTO `fy_goods_browse` VALUES ('427', null, null, '215', '1533698177', '1', '1533698177');
INSERT INTO `fy_goods_browse` VALUES ('428', null, null, '215', '1533698178', '1', '1533698178');
INSERT INTO `fy_goods_browse` VALUES ('429', null, null, '215', '1533698178', '1', '1533698178');
INSERT INTO `fy_goods_browse` VALUES ('430', null, null, '215', '1533698178', '1', '1533698178');
INSERT INTO `fy_goods_browse` VALUES ('431', null, null, '215', '1533698178', '1', '1533698178');
INSERT INTO `fy_goods_browse` VALUES ('432', null, null, '215', '1533698178', '1', '1533698178');
INSERT INTO `fy_goods_browse` VALUES ('433', null, null, '215', '1533698178', '1', '1533698178');
INSERT INTO `fy_goods_browse` VALUES ('434', null, null, '215', '1533698178', '1', '1533698178');
INSERT INTO `fy_goods_browse` VALUES ('435', null, null, '215', '1533698178', '1', '1533698178');
INSERT INTO `fy_goods_browse` VALUES ('436', null, null, '215', '1533698178', '1', '1533698178');
INSERT INTO `fy_goods_browse` VALUES ('437', null, null, '215', '1533698178', '1', '1533698178');
INSERT INTO `fy_goods_browse` VALUES ('438', null, null, '215', '1533698178', '1', '1533698178');
INSERT INTO `fy_goods_browse` VALUES ('439', null, null, '215', '1533698178', '1', '1533698178');
INSERT INTO `fy_goods_browse` VALUES ('440', null, null, '215', '1533698178', '1', '1533698178');
INSERT INTO `fy_goods_browse` VALUES ('441', null, null, '215', '1533698178', '1', '1533698178');
INSERT INTO `fy_goods_browse` VALUES ('442', null, null, '215', '1533698178', '1', '1533698178');
INSERT INTO `fy_goods_browse` VALUES ('443', null, null, '215', '1533698179', '1', '1533698179');
INSERT INTO `fy_goods_browse` VALUES ('444', null, null, '215', '1533698179', '1', '1533698179');
INSERT INTO `fy_goods_browse` VALUES ('445', null, null, '215', '1533698179', '1', '1533698179');
INSERT INTO `fy_goods_browse` VALUES ('446', null, null, '215', '1533698179', '1', '1533698179');
INSERT INTO `fy_goods_browse` VALUES ('447', null, null, '215', '1533698179', '1', '1533698179');
INSERT INTO `fy_goods_browse` VALUES ('448', null, null, '215', '1533698179', '1', '1533698179');
INSERT INTO `fy_goods_browse` VALUES ('449', null, null, '215', '1533698179', '1', '1533698179');
INSERT INTO `fy_goods_browse` VALUES ('450', null, null, '215', '1533698179', '1', '1533698179');
INSERT INTO `fy_goods_browse` VALUES ('451', null, null, '215', '1533698179', '1', '1533698179');
INSERT INTO `fy_goods_browse` VALUES ('452', null, null, '215', '1533698179', '1', '1533698179');
INSERT INTO `fy_goods_browse` VALUES ('453', null, null, '215', '1533698179', '1', '1533698179');
INSERT INTO `fy_goods_browse` VALUES ('454', null, null, '215', '1533698179', '1', '1533698179');
INSERT INTO `fy_goods_browse` VALUES ('455', null, null, '215', '1533698179', '1', '1533698179');
INSERT INTO `fy_goods_browse` VALUES ('456', null, null, '215', '1533698179', '1', '1533698179');
INSERT INTO `fy_goods_browse` VALUES ('457', null, null, '215', '1533698179', '1', '1533698179');
INSERT INTO `fy_goods_browse` VALUES ('458', null, null, '215', '1533698179', '1', '1533698179');
INSERT INTO `fy_goods_browse` VALUES ('459', null, null, '215', '1533698179', '1', '1533698179');
INSERT INTO `fy_goods_browse` VALUES ('460', null, null, '215', '1533698179', '1', '1533698179');
INSERT INTO `fy_goods_browse` VALUES ('461', null, null, '215', '1533698179', '1', '1533698179');
INSERT INTO `fy_goods_browse` VALUES ('462', null, null, '215', '1533698180', '1', '1533698180');
INSERT INTO `fy_goods_browse` VALUES ('463', null, null, '215', '1533698180', '1', '1533698180');
INSERT INTO `fy_goods_browse` VALUES ('464', null, null, '215', '1533698180', '1', '1533698180');
INSERT INTO `fy_goods_browse` VALUES ('465', null, null, '215', '1533698180', '1', '1533698180');
INSERT INTO `fy_goods_browse` VALUES ('466', null, null, '215', '1533698180', '1', '1533698180');
INSERT INTO `fy_goods_browse` VALUES ('467', null, null, '215', '1533698180', '1', '1533698180');
INSERT INTO `fy_goods_browse` VALUES ('468', null, null, '215', '1533698180', '1', '1533698180');
INSERT INTO `fy_goods_browse` VALUES ('469', null, null, '215', '1533698180', '1', '1533698180');
INSERT INTO `fy_goods_browse` VALUES ('470', null, null, '215', '1533698180', '1', '1533698180');
INSERT INTO `fy_goods_browse` VALUES ('471', null, null, '215', '1533698180', '1', '1533698180');
INSERT INTO `fy_goods_browse` VALUES ('472', null, null, '215', '1533698180', '1', '1533698180');
INSERT INTO `fy_goods_browse` VALUES ('473', null, null, '215', '1533698180', '1', '1533698180');
INSERT INTO `fy_goods_browse` VALUES ('474', null, null, '215', '1533698180', '1', '1533698180');
INSERT INTO `fy_goods_browse` VALUES ('475', null, null, '215', '1533698180', '1', '1533698180');
INSERT INTO `fy_goods_browse` VALUES ('476', null, null, '215', '1533698180', '1', '1533698180');
INSERT INTO `fy_goods_browse` VALUES ('477', null, null, '215', '1533698180', '1', '1533698180');
INSERT INTO `fy_goods_browse` VALUES ('478', null, null, '215', '1533698180', '1', '1533698180');
INSERT INTO `fy_goods_browse` VALUES ('479', null, null, '215', '1533698180', '1', '1533698180');
INSERT INTO `fy_goods_browse` VALUES ('480', null, null, '215', '1533698180', '1', '1533698180');
INSERT INTO `fy_goods_browse` VALUES ('481', null, null, '215', '1533698181', '1', '1533698181');
INSERT INTO `fy_goods_browse` VALUES ('482', null, null, '215', '1533698181', '1', '1533698181');
INSERT INTO `fy_goods_browse` VALUES ('483', null, null, '215', '1533698181', '1', '1533698181');
INSERT INTO `fy_goods_browse` VALUES ('484', null, null, '215', '1533698253', '1', '1533698253');
INSERT INTO `fy_goods_browse` VALUES ('485', null, null, '215', '1533698254', '1', '1533698254');
INSERT INTO `fy_goods_browse` VALUES ('486', null, null, '215', '1533698254', '1', '1533698254');
INSERT INTO `fy_goods_browse` VALUES ('487', null, null, '215', '1533698254', '1', '1533698254');
INSERT INTO `fy_goods_browse` VALUES ('488', null, null, '215', '1533698254', '1', '1533698254');
INSERT INTO `fy_goods_browse` VALUES ('489', null, null, '215', '1533698254', '1', '1533698254');
INSERT INTO `fy_goods_browse` VALUES ('490', null, null, '215', '1533698254', '1', '1533698254');
INSERT INTO `fy_goods_browse` VALUES ('491', null, null, '215', '1533698254', '1', '1533698254');
INSERT INTO `fy_goods_browse` VALUES ('492', null, null, '215', '1533698254', '1', '1533698254');
INSERT INTO `fy_goods_browse` VALUES ('493', null, null, '215', '1533698254', '1', '1533698254');
INSERT INTO `fy_goods_browse` VALUES ('494', null, null, '215', '1533698254', '1', '1533698254');
INSERT INTO `fy_goods_browse` VALUES ('495', null, null, '215', '1533698254', '1', '1533698254');
INSERT INTO `fy_goods_browse` VALUES ('496', null, null, '215', '1533698254', '1', '1533698254');
INSERT INTO `fy_goods_browse` VALUES ('497', null, null, '215', '1533698254', '1', '1533698254');
INSERT INTO `fy_goods_browse` VALUES ('498', null, null, '215', '1533698254', '1', '1533698254');
INSERT INTO `fy_goods_browse` VALUES ('499', null, null, '215', '1533698254', '1', '1533698254');
INSERT INTO `fy_goods_browse` VALUES ('500', null, null, '215', '1533698254', '1', '1533698254');
INSERT INTO `fy_goods_browse` VALUES ('501', null, null, '215', '1533698254', '1', '1533698254');
INSERT INTO `fy_goods_browse` VALUES ('502', null, null, '215', '1533698254', '1', '1533698254');
INSERT INTO `fy_goods_browse` VALUES ('503', null, null, '215', '1533698254', '1', '1533698254');
INSERT INTO `fy_goods_browse` VALUES ('504', null, null, '215', '1533698255', '1', '1533698255');
INSERT INTO `fy_goods_browse` VALUES ('505', null, null, '215', '1533698255', '1', '1533698255');
INSERT INTO `fy_goods_browse` VALUES ('506', null, null, '215', '1533698255', '1', '1533698255');
INSERT INTO `fy_goods_browse` VALUES ('507', null, null, '215', '1533698255', '1', '1533698255');
INSERT INTO `fy_goods_browse` VALUES ('508', null, null, '215', '1533698255', '1', '1533698255');
INSERT INTO `fy_goods_browse` VALUES ('509', null, null, '215', '1533698255', '1', '1533698255');
INSERT INTO `fy_goods_browse` VALUES ('510', null, null, '215', '1533698255', '1', '1533698255');
INSERT INTO `fy_goods_browse` VALUES ('511', null, null, '215', '1533698255', '1', '1533698255');
INSERT INTO `fy_goods_browse` VALUES ('512', null, null, '215', '1533698255', '1', '1533698255');
INSERT INTO `fy_goods_browse` VALUES ('513', null, null, '215', '1533698255', '1', '1533698255');
INSERT INTO `fy_goods_browse` VALUES ('514', null, null, '215', '1533698255', '1', '1533698255');
INSERT INTO `fy_goods_browse` VALUES ('515', null, null, '215', '1533698255', '1', '1533698255');
INSERT INTO `fy_goods_browse` VALUES ('516', null, null, '215', '1533698255', '1', '1533698255');
INSERT INTO `fy_goods_browse` VALUES ('517', null, null, '215', '1533698255', '1', '1533698255');
INSERT INTO `fy_goods_browse` VALUES ('518', null, null, '215', '1533698255', '1', '1533698255');
INSERT INTO `fy_goods_browse` VALUES ('519', null, null, '215', '1533698255', '1', '1533698255');
INSERT INTO `fy_goods_browse` VALUES ('520', null, null, '215', '1533698255', '1', '1533698255');
INSERT INTO `fy_goods_browse` VALUES ('521', null, null, '215', '1533698255', '1', '1533698255');
INSERT INTO `fy_goods_browse` VALUES ('522', null, null, '215', '1533698255', '1', '1533698255');
INSERT INTO `fy_goods_browse` VALUES ('523', null, null, '215', '1533698255', '1', '1533698255');
INSERT INTO `fy_goods_browse` VALUES ('524', null, null, '215', '1533698256', '1', '1533698256');
INSERT INTO `fy_goods_browse` VALUES ('525', null, null, '215', '1533698256', '1', '1533698256');
INSERT INTO `fy_goods_browse` VALUES ('526', null, null, '215', '1533698256', '1', '1533698256');
INSERT INTO `fy_goods_browse` VALUES ('527', null, null, '215', '1533698256', '1', '1533698256');
INSERT INTO `fy_goods_browse` VALUES ('528', null, null, '215', '1533698256', '1', '1533698256');
INSERT INTO `fy_goods_browse` VALUES ('529', null, null, '215', '1533698256', '1', '1533698256');
INSERT INTO `fy_goods_browse` VALUES ('530', null, null, '215', '1533698256', '1', '1533698256');
INSERT INTO `fy_goods_browse` VALUES ('531', null, null, '215', '1533698256', '1', '1533698256');
INSERT INTO `fy_goods_browse` VALUES ('532', null, null, '215', '1533698256', '1', '1533698256');
INSERT INTO `fy_goods_browse` VALUES ('533', null, null, '215', '1533698256', '1', '1533698256');
INSERT INTO `fy_goods_browse` VALUES ('534', null, null, '215', '1533698256', '1', '1533698256');
INSERT INTO `fy_goods_browse` VALUES ('535', null, null, '215', '1533698256', '1', '1533698256');
INSERT INTO `fy_goods_browse` VALUES ('536', null, null, '215', '1533698256', '1', '1533698256');
INSERT INTO `fy_goods_browse` VALUES ('537', null, null, '215', '1533698256', '1', '1533698256');
INSERT INTO `fy_goods_browse` VALUES ('538', null, null, '215', '1533698256', '1', '1533698256');
INSERT INTO `fy_goods_browse` VALUES ('539', null, null, '215', '1533698256', '1', '1533698256');
INSERT INTO `fy_goods_browse` VALUES ('540', null, null, '215', '1533698256', '1', '1533698256');
INSERT INTO `fy_goods_browse` VALUES ('541', null, null, '215', '1533698257', '1', '1533698257');
INSERT INTO `fy_goods_browse` VALUES ('542', null, null, '215', '1533698257', '1', '1533698257');
INSERT INTO `fy_goods_browse` VALUES ('543', null, null, '215', '1533698257', '1', '1533698257');
INSERT INTO `fy_goods_browse` VALUES ('544', null, null, '215', '1533698257', '1', '1533698257');
INSERT INTO `fy_goods_browse` VALUES ('545', null, null, '215', '1533698257', '1', '1533698257');
INSERT INTO `fy_goods_browse` VALUES ('546', null, null, '215', '1533698257', '1', '1533698257');
INSERT INTO `fy_goods_browse` VALUES ('547', null, null, '215', '1533698257', '1', '1533698257');
INSERT INTO `fy_goods_browse` VALUES ('548', null, null, '215', '1533698257', '1', '1533698257');
INSERT INTO `fy_goods_browse` VALUES ('549', null, null, '215', '1533698257', '1', '1533698257');
INSERT INTO `fy_goods_browse` VALUES ('550', null, null, '215', '1533698257', '1', '1533698257');
INSERT INTO `fy_goods_browse` VALUES ('551', null, null, '215', '1533698257', '1', '1533698257');
INSERT INTO `fy_goods_browse` VALUES ('552', null, null, '215', '1533698257', '1', '1533698257');
INSERT INTO `fy_goods_browse` VALUES ('553', null, null, '215', '1533698257', '1', '1533698257');
INSERT INTO `fy_goods_browse` VALUES ('554', null, null, '215', '1533698257', '1', '1533698257');
INSERT INTO `fy_goods_browse` VALUES ('555', null, null, '215', '1533698257', '1', '1533698257');
INSERT INTO `fy_goods_browse` VALUES ('556', null, null, '215', '1533698257', '1', '1533698257');
INSERT INTO `fy_goods_browse` VALUES ('557', null, null, '215', '1533698257', '1', '1533698257');
INSERT INTO `fy_goods_browse` VALUES ('558', null, null, '215', '1533698257', '1', '1533698257');
INSERT INTO `fy_goods_browse` VALUES ('559', null, null, '215', '1533698257', '1', '1533698257');
INSERT INTO `fy_goods_browse` VALUES ('560', null, null, '215', '1533698258', '1', '1533698258');
INSERT INTO `fy_goods_browse` VALUES ('561', null, null, '215', '1533698258', '1', '1533698258');
INSERT INTO `fy_goods_browse` VALUES ('562', null, null, '215', '1533698258', '1', '1533698258');
INSERT INTO `fy_goods_browse` VALUES ('563', null, null, '215', '1533698258', '1', '1533698258');
INSERT INTO `fy_goods_browse` VALUES ('564', null, null, '215', '1533698258', '1', '1533698258');
INSERT INTO `fy_goods_browse` VALUES ('565', null, null, '215', '1533698258', '1', '1533698258');
INSERT INTO `fy_goods_browse` VALUES ('566', null, null, '215', '1533698258', '1', '1533698258');
INSERT INTO `fy_goods_browse` VALUES ('567', null, null, '215', '1533698258', '1', '1533698258');
INSERT INTO `fy_goods_browse` VALUES ('568', null, null, '215', '1533698258', '1', '1533698258');
INSERT INTO `fy_goods_browse` VALUES ('569', null, null, '215', '1533698258', '1', '1533698258');
INSERT INTO `fy_goods_browse` VALUES ('570', null, null, '215', '1533698258', '1', '1533698258');
INSERT INTO `fy_goods_browse` VALUES ('571', null, null, '215', '1533698258', '1', '1533698258');
INSERT INTO `fy_goods_browse` VALUES ('572', null, null, '215', '1533698258', '1', '1533698258');
INSERT INTO `fy_goods_browse` VALUES ('573', null, null, '215', '1533698258', '1', '1533698258');
INSERT INTO `fy_goods_browse` VALUES ('574', null, null, '215', '1533698258', '1', '1533698258');
INSERT INTO `fy_goods_browse` VALUES ('575', null, null, '215', '1533698258', '1', '1533698258');
INSERT INTO `fy_goods_browse` VALUES ('576', null, null, '215', '1533698258', '1', '1533698258');
INSERT INTO `fy_goods_browse` VALUES ('577', null, null, '215', '1533698259', '1', '1533698259');
INSERT INTO `fy_goods_browse` VALUES ('578', null, null, '215', '1533698259', '1', '1533698259');
INSERT INTO `fy_goods_browse` VALUES ('579', null, null, '215', '1533698259', '1', '1533698259');
INSERT INTO `fy_goods_browse` VALUES ('580', null, null, '215', '1533698259', '1', '1533698259');
INSERT INTO `fy_goods_browse` VALUES ('581', null, null, '215', '1533698259', '1', '1533698259');
INSERT INTO `fy_goods_browse` VALUES ('582', null, null, '215', '1533698259', '1', '1533698259');
INSERT INTO `fy_goods_browse` VALUES ('583', null, null, '215', '1533698259', '1', '1533698259');
INSERT INTO `fy_goods_browse` VALUES ('584', null, null, '215', '1533698259', '1', '1533698259');
INSERT INTO `fy_goods_browse` VALUES ('585', null, null, '215', '1533698259', '1', '1533698259');
INSERT INTO `fy_goods_browse` VALUES ('586', null, null, '215', '1533698259', '1', '1533698259');
INSERT INTO `fy_goods_browse` VALUES ('587', null, null, '215', '1533698259', '1', '1533698259');
INSERT INTO `fy_goods_browse` VALUES ('588', null, null, '215', '1533698259', '1', '1533698259');
INSERT INTO `fy_goods_browse` VALUES ('589', null, null, '215', '1533698259', '1', '1533698259');
INSERT INTO `fy_goods_browse` VALUES ('590', null, null, '215', '1533698259', '1', '1533698259');
INSERT INTO `fy_goods_browse` VALUES ('591', null, null, '215', '1533698259', '1', '1533698259');
INSERT INTO `fy_goods_browse` VALUES ('592', null, null, '215', '1533698259', '1', '1533698259');
INSERT INTO `fy_goods_browse` VALUES ('593', null, null, '215', '1533698259', '1', '1533698259');
INSERT INTO `fy_goods_browse` VALUES ('594', null, null, '215', '1533698260', '1', '1533698260');
INSERT INTO `fy_goods_browse` VALUES ('595', null, null, '215', '1533698260', '1', '1533698260');
INSERT INTO `fy_goods_browse` VALUES ('596', null, null, '215', '1533698260', '1', '1533698260');
INSERT INTO `fy_goods_browse` VALUES ('597', null, null, '215', '1533698260', '1', '1533698260');
INSERT INTO `fy_goods_browse` VALUES ('598', null, null, '215', '1533698260', '1', '1533698260');
INSERT INTO `fy_goods_browse` VALUES ('599', null, null, '215', '1533698260', '1', '1533698260');
INSERT INTO `fy_goods_browse` VALUES ('600', null, null, '215', '1533698260', '1', '1533698260');
INSERT INTO `fy_goods_browse` VALUES ('601', null, null, '215', '1533698260', '1', '1533698260');
INSERT INTO `fy_goods_browse` VALUES ('602', null, null, '215', '1533698260', '1', '1533698260');
INSERT INTO `fy_goods_browse` VALUES ('603', null, null, '215', '1533698260', '1', '1533698260');
INSERT INTO `fy_goods_browse` VALUES ('604', null, null, '215', '1533698260', '1', '1533698260');
INSERT INTO `fy_goods_browse` VALUES ('605', null, null, '215', '1533698260', '1', '1533698260');
INSERT INTO `fy_goods_browse` VALUES ('606', null, null, '215', '1533698260', '1', '1533698260');
INSERT INTO `fy_goods_browse` VALUES ('607', null, null, '215', '1533698260', '1', '1533698260');
INSERT INTO `fy_goods_browse` VALUES ('608', null, null, '215', '1533698260', '1', '1533698260');
INSERT INTO `fy_goods_browse` VALUES ('609', null, null, '215', '1533698260', '1', '1533698260');
INSERT INTO `fy_goods_browse` VALUES ('610', null, null, '215', '1533698260', '1', '1533698260');
INSERT INTO `fy_goods_browse` VALUES ('611', null, null, '215', '1533698260', '1', '1533698260');
INSERT INTO `fy_goods_browse` VALUES ('612', null, null, '215', '1533698261', '1', '1533698261');
INSERT INTO `fy_goods_browse` VALUES ('613', null, null, '215', '1533698261', '1', '1533698261');
INSERT INTO `fy_goods_browse` VALUES ('614', null, null, '215', '1533698261', '1', '1533698261');
INSERT INTO `fy_goods_browse` VALUES ('615', null, null, '215', '1533698261', '1', '1533698261');
INSERT INTO `fy_goods_browse` VALUES ('616', null, null, '215', '1533698261', '1', '1533698261');
INSERT INTO `fy_goods_browse` VALUES ('617', null, null, '215', '1533698261', '1', '1533698261');
INSERT INTO `fy_goods_browse` VALUES ('618', null, null, '215', '1533698261', '1', '1533698261');
INSERT INTO `fy_goods_browse` VALUES ('619', null, null, '215', '1533698261', '1', '1533698261');
INSERT INTO `fy_goods_browse` VALUES ('620', null, null, '215', '1533698261', '1', '1533698261');
INSERT INTO `fy_goods_browse` VALUES ('621', null, null, '215', '1533698261', '1', '1533698261');
INSERT INTO `fy_goods_browse` VALUES ('622', null, null, '215', '1533698261', '1', '1533698261');
INSERT INTO `fy_goods_browse` VALUES ('623', null, null, '215', '1533698261', '1', '1533698261');
INSERT INTO `fy_goods_browse` VALUES ('624', null, null, '215', '1533698261', '1', '1533698261');
INSERT INTO `fy_goods_browse` VALUES ('625', null, null, '215', '1533698261', '1', '1533698261');
INSERT INTO `fy_goods_browse` VALUES ('626', null, null, '215', '1533698261', '1', '1533698261');
INSERT INTO `fy_goods_browse` VALUES ('627', null, null, '215', '1533698261', '1', '1533698261');
INSERT INTO `fy_goods_browse` VALUES ('628', null, null, '215', '1533698261', '1', '1533698261');
INSERT INTO `fy_goods_browse` VALUES ('629', null, null, '215', '1533698261', '1', '1533698261');
INSERT INTO `fy_goods_browse` VALUES ('630', null, null, '215', '1533698262', '1', '1533698262');
INSERT INTO `fy_goods_browse` VALUES ('631', null, null, '215', '1533698262', '1', '1533698262');
INSERT INTO `fy_goods_browse` VALUES ('632', null, null, '215', '1533698262', '1', '1533698262');
INSERT INTO `fy_goods_browse` VALUES ('633', null, null, '215', '1533698262', '1', '1533698262');
INSERT INTO `fy_goods_browse` VALUES ('634', null, null, '215', '1533698262', '1', '1533698262');
INSERT INTO `fy_goods_browse` VALUES ('635', null, null, '215', '1533698262', '1', '1533698262');
INSERT INTO `fy_goods_browse` VALUES ('636', null, null, '215', '1533698262', '1', '1533698262');
INSERT INTO `fy_goods_browse` VALUES ('637', null, null, '215', '1533698262', '1', '1533698262');
INSERT INTO `fy_goods_browse` VALUES ('638', null, null, '215', '1533698262', '1', '1533698262');
INSERT INTO `fy_goods_browse` VALUES ('639', null, null, '215', '1533698262', '1', '1533698262');
INSERT INTO `fy_goods_browse` VALUES ('640', null, null, '215', '1533698262', '1', '1533698262');
INSERT INTO `fy_goods_browse` VALUES ('641', null, null, '215', '1533698262', '1', '1533698262');
INSERT INTO `fy_goods_browse` VALUES ('642', null, null, '215', '1533698262', '1', '1533698262');
INSERT INTO `fy_goods_browse` VALUES ('643', null, null, '215', '1533698262', '1', '1533698262');
INSERT INTO `fy_goods_browse` VALUES ('644', null, null, '215', '1533698262', '1', '1533698262');
INSERT INTO `fy_goods_browse` VALUES ('645', null, null, '215', '1533698262', '1', '1533698262');
INSERT INTO `fy_goods_browse` VALUES ('646', null, null, '215', '1533698262', '1', '1533698262');
INSERT INTO `fy_goods_browse` VALUES ('647', null, null, '215', '1533698262', '1', '1533698262');
INSERT INTO `fy_goods_browse` VALUES ('648', null, null, '215', '1533698263', '1', '1533698263');
INSERT INTO `fy_goods_browse` VALUES ('649', null, null, '215', '1533698263', '1', '1533698263');
INSERT INTO `fy_goods_browse` VALUES ('650', null, null, '215', '1533698263', '1', '1533698263');
INSERT INTO `fy_goods_browse` VALUES ('651', null, null, '215', '1533698263', '1', '1533698263');
INSERT INTO `fy_goods_browse` VALUES ('652', null, null, '215', '1533698263', '1', '1533698263');
INSERT INTO `fy_goods_browse` VALUES ('653', null, null, '215', '1533698263', '1', '1533698263');
INSERT INTO `fy_goods_browse` VALUES ('654', null, null, '215', '1533698263', '1', '1533698263');
INSERT INTO `fy_goods_browse` VALUES ('655', null, null, '215', '1533698263', '1', '1533698263');
INSERT INTO `fy_goods_browse` VALUES ('656', null, null, '215', '1533698263', '1', '1533698263');
INSERT INTO `fy_goods_browse` VALUES ('657', null, null, '215', '1533698263', '1', '1533698263');
INSERT INTO `fy_goods_browse` VALUES ('658', null, null, '215', '1533698263', '1', '1533698263');
INSERT INTO `fy_goods_browse` VALUES ('659', null, null, '215', '1533698263', '1', '1533698263');
INSERT INTO `fy_goods_browse` VALUES ('660', null, null, '215', '1533698263', '1', '1533698263');
INSERT INTO `fy_goods_browse` VALUES ('661', null, null, '215', '1533698263', '1', '1533698263');
INSERT INTO `fy_goods_browse` VALUES ('662', null, null, '215', '1533698263', '1', '1533698263');
INSERT INTO `fy_goods_browse` VALUES ('663', null, null, '215', '1533698263', '1', '1533698263');
INSERT INTO `fy_goods_browse` VALUES ('664', null, null, '215', '1533698263', '1', '1533698263');
INSERT INTO `fy_goods_browse` VALUES ('665', null, null, '215', '1533698263', '1', '1533698263');
INSERT INTO `fy_goods_browse` VALUES ('666', null, null, '215', '1533698263', '1', '1533698263');
INSERT INTO `fy_goods_browse` VALUES ('667', null, null, '215', '1533698263', '1', '1533698263');
INSERT INTO `fy_goods_browse` VALUES ('668', null, null, '215', '1533698264', '1', '1533698264');
INSERT INTO `fy_goods_browse` VALUES ('669', null, null, '215', '1533698264', '1', '1533698264');
INSERT INTO `fy_goods_browse` VALUES ('670', null, null, '215', '1533698264', '1', '1533698264');
INSERT INTO `fy_goods_browse` VALUES ('671', null, null, '215', '1533698264', '1', '1533698264');
INSERT INTO `fy_goods_browse` VALUES ('672', null, null, '215', '1533698264', '1', '1533698264');
INSERT INTO `fy_goods_browse` VALUES ('673', null, null, '215', '1533698264', '1', '1533698264');
INSERT INTO `fy_goods_browse` VALUES ('674', null, null, '215', '1533698264', '1', '1533698264');
INSERT INTO `fy_goods_browse` VALUES ('675', null, null, '215', '1533698264', '1', '1533698264');
INSERT INTO `fy_goods_browse` VALUES ('676', null, null, '215', '1533698264', '1', '1533698264');
INSERT INTO `fy_goods_browse` VALUES ('677', null, null, '215', '1533698264', '1', '1533698264');
INSERT INTO `fy_goods_browse` VALUES ('678', null, null, '215', '1533698264', '1', '1533698264');
INSERT INTO `fy_goods_browse` VALUES ('679', null, null, '215', '1533698264', '1', '1533698264');
INSERT INTO `fy_goods_browse` VALUES ('680', null, null, '215', '1533698264', '1', '1533698264');
INSERT INTO `fy_goods_browse` VALUES ('681', null, null, '215', '1533698264', '1', '1533698264');
INSERT INTO `fy_goods_browse` VALUES ('682', null, null, '215', '1533698264', '1', '1533698264');
INSERT INTO `fy_goods_browse` VALUES ('683', null, null, '215', '1533698264', '1', '1533698264');
INSERT INTO `fy_goods_browse` VALUES ('684', null, null, '215', '1533698264', '1', '1533698264');
INSERT INTO `fy_goods_browse` VALUES ('685', null, null, '215', '1533698264', '1', '1533698264');
INSERT INTO `fy_goods_browse` VALUES ('686', null, null, '215', '1533698264', '1', '1533698264');
INSERT INTO `fy_goods_browse` VALUES ('687', null, null, '215', '1533698264', '1', '1533698264');
INSERT INTO `fy_goods_browse` VALUES ('688', null, null, '215', '1533698265', '1', '1533698265');
INSERT INTO `fy_goods_browse` VALUES ('689', null, null, '215', '1533698265', '1', '1533698265');
INSERT INTO `fy_goods_browse` VALUES ('690', null, null, '215', '1533698265', '1', '1533698265');
INSERT INTO `fy_goods_browse` VALUES ('691', null, null, '215', '1533698265', '1', '1533698265');
INSERT INTO `fy_goods_browse` VALUES ('692', null, null, '215', '1533698265', '1', '1533698265');
INSERT INTO `fy_goods_browse` VALUES ('693', null, null, '215', '1533698265', '1', '1533698265');
INSERT INTO `fy_goods_browse` VALUES ('694', null, null, '215', '1533698265', '1', '1533698265');
INSERT INTO `fy_goods_browse` VALUES ('695', null, null, '215', '1533698265', '1', '1533698265');
INSERT INTO `fy_goods_browse` VALUES ('696', null, null, '215', '1533698265', '1', '1533698265');
INSERT INTO `fy_goods_browse` VALUES ('697', null, null, '215', '1533698265', '1', '1533698265');
INSERT INTO `fy_goods_browse` VALUES ('698', null, null, '215', '1533698265', '1', '1533698265');
INSERT INTO `fy_goods_browse` VALUES ('699', null, null, '215', '1533698265', '1', '1533698265');
INSERT INTO `fy_goods_browse` VALUES ('700', null, null, '215', '1533698265', '1', '1533698265');
INSERT INTO `fy_goods_browse` VALUES ('701', null, null, '215', '1533698265', '1', '1533698265');
INSERT INTO `fy_goods_browse` VALUES ('702', null, null, '215', '1533698265', '1', '1533698265');
INSERT INTO `fy_goods_browse` VALUES ('703', null, null, '215', '1533698265', '1', '1533698265');
INSERT INTO `fy_goods_browse` VALUES ('704', null, null, '215', '1533698266', '1', '1533698266');
INSERT INTO `fy_goods_browse` VALUES ('705', null, null, '215', '1533698266', '1', '1533698266');
INSERT INTO `fy_goods_browse` VALUES ('706', null, null, '215', '1533698266', '1', '1533698266');
INSERT INTO `fy_goods_browse` VALUES ('707', null, null, '215', '1533698266', '1', '1533698266');
INSERT INTO `fy_goods_browse` VALUES ('708', null, null, '215', '1533698266', '1', '1533698266');
INSERT INTO `fy_goods_browse` VALUES ('709', null, null, '215', '1533698266', '1', '1533698266');
INSERT INTO `fy_goods_browse` VALUES ('710', null, null, '215', '1533698266', '1', '1533698266');
INSERT INTO `fy_goods_browse` VALUES ('711', null, null, '215', '1533698266', '1', '1533698266');
INSERT INTO `fy_goods_browse` VALUES ('712', null, null, '215', '1533698266', '1', '1533698266');
INSERT INTO `fy_goods_browse` VALUES ('713', null, null, '215', '1533698266', '1', '1533698266');
INSERT INTO `fy_goods_browse` VALUES ('714', null, null, '215', '1533698266', '1', '1533698266');
INSERT INTO `fy_goods_browse` VALUES ('715', null, null, '215', '1533698266', '1', '1533698266');
INSERT INTO `fy_goods_browse` VALUES ('716', null, null, '215', '1533698266', '1', '1533698266');
INSERT INTO `fy_goods_browse` VALUES ('717', null, null, '215', '1533698266', '1', '1533698266');
INSERT INTO `fy_goods_browse` VALUES ('718', null, null, '215', '1533698266', '1', '1533698266');
INSERT INTO `fy_goods_browse` VALUES ('719', null, null, '215', '1533698266', '1', '1533698266');
INSERT INTO `fy_goods_browse` VALUES ('720', null, null, '215', '1533698266', '1', '1533698266');
INSERT INTO `fy_goods_browse` VALUES ('721', null, null, '215', '1533698266', '1', '1533698266');
INSERT INTO `fy_goods_browse` VALUES ('722', null, null, '215', '1533698266', '1', '1533698266');
INSERT INTO `fy_goods_browse` VALUES ('723', null, null, '215', '1533698267', '1', '1533698267');
INSERT INTO `fy_goods_browse` VALUES ('724', null, null, '215', '1533698267', '1', '1533698267');
INSERT INTO `fy_goods_browse` VALUES ('725', null, null, '215', '1533698267', '1', '1533698267');
INSERT INTO `fy_goods_browse` VALUES ('726', null, null, '215', '1533698267', '1', '1533698267');
INSERT INTO `fy_goods_browse` VALUES ('727', null, null, '215', '1533698267', '1', '1533698267');
INSERT INTO `fy_goods_browse` VALUES ('728', null, null, '215', '1533698267', '1', '1533698267');
INSERT INTO `fy_goods_browse` VALUES ('729', null, null, '215', '1533698267', '1', '1533698267');
INSERT INTO `fy_goods_browse` VALUES ('730', null, null, '215', '1533698267', '1', '1533698267');
INSERT INTO `fy_goods_browse` VALUES ('731', null, null, '215', '1533698267', '1', '1533698267');
INSERT INTO `fy_goods_browse` VALUES ('732', null, null, '215', '1533698267', '1', '1533698267');
INSERT INTO `fy_goods_browse` VALUES ('733', null, null, '215', '1533698267', '1', '1533698267');
INSERT INTO `fy_goods_browse` VALUES ('734', null, null, '215', '1533698267', '1', '1533698267');
INSERT INTO `fy_goods_browse` VALUES ('735', null, null, '215', '1533698267', '1', '1533698267');
INSERT INTO `fy_goods_browse` VALUES ('736', null, null, '215', '1533698267', '1', '1533698267');
INSERT INTO `fy_goods_browse` VALUES ('737', null, 'omQYXwNHPeY_xGIxXQMxv9Z4jigc', '201', '1533698332', '1', '1533698332');
INSERT INTO `fy_goods_browse` VALUES ('738', null, 'omQYXwNHPeY_xGIxXQMxv9Z4jigc', '0', '1533698390', '1', '1533698390');
INSERT INTO `fy_goods_browse` VALUES ('739', null, null, '196', '1533698872', '1', '1533698872');
INSERT INTO `fy_goods_browse` VALUES ('740', null, null, '196', '1533699442', '1', '1533699442');
INSERT INTO `fy_goods_browse` VALUES ('741', null, null, '196', '1533699495', '1', '1533699495');
INSERT INTO `fy_goods_browse` VALUES ('742', null, null, '0', '1533699496', '1', '1533699496');
INSERT INTO `fy_goods_browse` VALUES ('743', null, null, '0', '1533699498', '1', '1533699498');
INSERT INTO `fy_goods_browse` VALUES ('744', null, null, '196', '1533699512', '1', '1533699512');
INSERT INTO `fy_goods_browse` VALUES ('745', null, null, '196', '1533699538', '1', '1533699538');
INSERT INTO `fy_goods_browse` VALUES ('746', null, null, '0', '1533699558', '1', '1533699558');
INSERT INTO `fy_goods_browse` VALUES ('747', null, 'omQYXwNAT5uC15TQqMGxajJzqo4s', '214', '1533709405', '4', '1533709405');
INSERT INTO `fy_goods_browse` VALUES ('748', null, null, '212', '1533709426', '1', '1533709426');
INSERT INTO `fy_goods_browse` VALUES ('749', null, null, '196', '1533709433', '1', '1533709433');
INSERT INTO `fy_goods_browse` VALUES ('750', null, null, '214', '1533709465', '1', '1533709465');
INSERT INTO `fy_goods_browse` VALUES ('751', null, null, '197', '1533709714', '1', '1533709714');
INSERT INTO `fy_goods_browse` VALUES ('752', null, null, '197', '1533709799', '1', '1533709799');
INSERT INTO `fy_goods_browse` VALUES ('753', null, null, '212', '1533710467', '1', '1533710467');
INSERT INTO `fy_goods_browse` VALUES ('754', null, 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '215', '1533710486', '31', '1533710486');
INSERT INTO `fy_goods_browse` VALUES ('755', null, null, '213', '1533711109', '1', '1533711109');
INSERT INTO `fy_goods_browse` VALUES ('756', null, null, '201', '1533734926', '1', '1533734926');
INSERT INTO `fy_goods_browse` VALUES ('757', null, 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '208', '1533785173', '1', '1533785173');
INSERT INTO `fy_goods_browse` VALUES ('758', null, null, '208', '1533785235', '1', '1533785235');
INSERT INTO `fy_goods_browse` VALUES ('759', null, null, '204', '1533785454', '1', '1533785454');
INSERT INTO `fy_goods_browse` VALUES ('760', null, null, '196', '1533792866', '1', '1533792866');
INSERT INTO `fy_goods_browse` VALUES ('761', null, null, '199', '1533805639', '1', '1533805639');
INSERT INTO `fy_goods_browse` VALUES ('762', null, null, '217', '1533869169', '1', '1533869169');
INSERT INTO `fy_goods_browse` VALUES ('763', null, null, '197', '1533869183', '1', '1533869183');
INSERT INTO `fy_goods_browse` VALUES ('764', null, null, '212', '1533869200', '1', '1533869200');
INSERT INTO `fy_goods_browse` VALUES ('765', null, null, '196', '1533869210', '1', '1533869210');
INSERT INTO `fy_goods_browse` VALUES ('766', null, null, '215', '1533869216', '1', '1533869216');
INSERT INTO `fy_goods_browse` VALUES ('767', null, null, '213', '1533869747', '1', '1533869747');
INSERT INTO `fy_goods_browse` VALUES ('768', null, null, '204', '1533899257', '1', '1533899257');
INSERT INTO `fy_goods_browse` VALUES ('769', null, null, '201', '1533900038', '1', '1533900038');
INSERT INTO `fy_goods_browse` VALUES ('770', null, 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '199', '1533901783', '1', '1533901783');
INSERT INTO `fy_goods_browse` VALUES ('771', null, 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '214', '1533901864', '3', '1533901864');
INSERT INTO `fy_goods_browse` VALUES ('772', null, null, '214', '1533901924', '1', '1533901924');
INSERT INTO `fy_goods_browse` VALUES ('773', null, null, '204', '1533954271', '1', '1533954271');
INSERT INTO `fy_goods_browse` VALUES ('774', null, null, '215', '1534131353', '1', '1534131353');
INSERT INTO `fy_goods_browse` VALUES ('775', null, 'omQYXwNAT5uC15TQqMGxajJzqo4s', '11', '1534137384', '3', '1534137384');
INSERT INTO `fy_goods_browse` VALUES ('776', null, 'omQYXwNAT5uC15TQqMGxajJzqo4s', '10', '1534138373', '1', '1534138373');
INSERT INTO `fy_goods_browse` VALUES ('777', null, 'omQYXwNAT5uC15TQqMGxajJzqo4s', '201', '1534138620', '2', '1534138620');
INSERT INTO `fy_goods_browse` VALUES ('778', null, 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '206', '1534139983', '2', '1534139983');
INSERT INTO `fy_goods_browse` VALUES ('779', null, 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '201', '1534140636', '5', '1534140636');
INSERT INTO `fy_goods_browse` VALUES ('780', null, 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '214', '1534142008', '1', '1534142008');
INSERT INTO `fy_goods_browse` VALUES ('781', null, null, '197', '1534144743', '1', '1534144743');
INSERT INTO `fy_goods_browse` VALUES ('782', null, 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '12', '1534144820', '1', '1534144820');
INSERT INTO `fy_goods_browse` VALUES ('783', null, 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '9', '1534145333', '2', '1534145333');
INSERT INTO `fy_goods_browse` VALUES ('784', null, 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '1', '1534145903', '2', '1534145903');
INSERT INTO `fy_goods_browse` VALUES ('785', null, null, '201', '1534147788', '1', '1534147788');
INSERT INTO `fy_goods_browse` VALUES ('786', null, null, '201', '1534147850', '1', '1534147850');
INSERT INTO `fy_goods_browse` VALUES ('787', null, null, '187', '1534148351', '1', '1534148351');
INSERT INTO `fy_goods_browse` VALUES ('788', null, null, '187', '1534148353', '1', '1534148353');
INSERT INTO `fy_goods_browse` VALUES ('789', null, null, '187', '1534148410', '1', '1534148410');
INSERT INTO `fy_goods_browse` VALUES ('790', null, null, '215', '1534148615', '1', '1534148615');
INSERT INTO `fy_goods_browse` VALUES ('791', null, 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '201', '1534148829', '5', '1534148829');
INSERT INTO `fy_goods_browse` VALUES ('792', null, null, '201', '1534148889', '1', '1534148889');
INSERT INTO `fy_goods_browse` VALUES ('793', null, 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '215', '1534149205', '21', '1534149205');
INSERT INTO `fy_goods_browse` VALUES ('794', null, null, '197', '1534210100', '1', '1534210100');
INSERT INTO `fy_goods_browse` VALUES ('795', null, null, '197', '1534218978', '1', '1534218978');
INSERT INTO `fy_goods_browse` VALUES ('796', null, 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '205', '1534219223', '13', '1534219223');
INSERT INTO `fy_goods_browse` VALUES ('797', null, null, '205', '1534219288', '1', '1534219288');
INSERT INTO `fy_goods_browse` VALUES ('798', null, null, '196', '1534225901', '1', '1534225901');
INSERT INTO `fy_goods_browse` VALUES ('799', null, null, '212', '1534226664', '1', '1534226664');
INSERT INTO `fy_goods_browse` VALUES ('800', null, null, '215', '1534226967', '1', '1534226967');
INSERT INTO `fy_goods_browse` VALUES ('801', null, null, '207', '1534227512', '1', '1534227512');
INSERT INTO `fy_goods_browse` VALUES ('802', null, null, '218', '1534227980', '1', '1534227980');
INSERT INTO `fy_goods_browse` VALUES ('803', null, null, '205', '1534232032', '1', '1534232032');
INSERT INTO `fy_goods_browse` VALUES ('804', null, null, '215', '1534237346', '1', '1534237346');
INSERT INTO `fy_goods_browse` VALUES ('805', null, null, '196', '1534255265', '1', '1534255265');
INSERT INTO `fy_goods_browse` VALUES ('806', null, null, '197', '1534294660', '1', '1534294660');
INSERT INTO `fy_goods_browse` VALUES ('807', null, 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '204', '1534295659', '2', '1534295659');
INSERT INTO `fy_goods_browse` VALUES ('808', null, null, '204', '1534295721', '1', '1534295721');
INSERT INTO `fy_goods_browse` VALUES ('809', null, null, '201', '1534296119', '1', '1534296119');
INSERT INTO `fy_goods_browse` VALUES ('810', null, 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '218', '1534316722', '7', '1534316722');
INSERT INTO `fy_goods_browse` VALUES ('811', null, null, '218', '1534316791', '1', '1534316791');
INSERT INTO `fy_goods_browse` VALUES ('812', null, 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '219', '1534320886', '4', '1534320886');
INSERT INTO `fy_goods_browse` VALUES ('813', null, 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '220', '1534321765', '1', '1534321765');
INSERT INTO `fy_goods_browse` VALUES ('814', null, null, '215', '1534323471', '1', '1534323471');
INSERT INTO `fy_goods_browse` VALUES ('815', null, null, '218', '1534325318', '1', '1534325318');
INSERT INTO `fy_goods_browse` VALUES ('816', null, null, '218', '1534325534', '1', '1534325534');
INSERT INTO `fy_goods_browse` VALUES ('817', null, 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '207', '1534344513', '3', '1534344513');
INSERT INTO `fy_goods_browse` VALUES ('818', null, null, '207', '1534344573', '1', '1534344573');
INSERT INTO `fy_goods_browse` VALUES ('819', null, null, '206', '1534380253', '1', '1534380253');
INSERT INTO `fy_goods_browse` VALUES ('820', null, null, '213', '1534398401', '1', '1534398401');
INSERT INTO `fy_goods_browse` VALUES ('821', null, null, '197', '1534406335', '1', '1534406335');
INSERT INTO `fy_goods_browse` VALUES ('822', null, null, '215', '1534406427', '1', '1534406427');
INSERT INTO `fy_goods_browse` VALUES ('823', null, null, '217', '1534406465', '1', '1534406465');
INSERT INTO `fy_goods_browse` VALUES ('824', null, null, '205', '1534410206', '1', '1534410206');
INSERT INTO `fy_goods_browse` VALUES ('825', null, null, '204', '1534410390', '1', '1534410390');
INSERT INTO `fy_goods_browse` VALUES ('826', null, null, '213', '1534410595', '1', '1534410595');
INSERT INTO `fy_goods_browse` VALUES ('827', null, null, '214', '1534411784', '1', '1534411784');
INSERT INTO `fy_goods_browse` VALUES ('828', null, null, '204', '1534412550', '1', '1534412550');
INSERT INTO `fy_goods_browse` VALUES ('829', null, null, '205', '1534412564', '1', '1534412564');
INSERT INTO `fy_goods_browse` VALUES ('830', null, null, '0', '1534412616', '1', '1534412616');
INSERT INTO `fy_goods_browse` VALUES ('831', null, null, '204', '1534412846', '1', '1534412846');
INSERT INTO `fy_goods_browse` VALUES ('832', null, null, '204', '1534412870', '1', '1534412870');
INSERT INTO `fy_goods_browse` VALUES ('833', null, null, '196', '1534412875', '1', '1534412875');
INSERT INTO `fy_goods_browse` VALUES ('834', null, null, '204', '1534412890', '1', '1534412890');
INSERT INTO `fy_goods_browse` VALUES ('835', null, null, '204', '1534412892', '1', '1534412892');
INSERT INTO `fy_goods_browse` VALUES ('836', null, null, '0', '1534412898', '1', '1534412898');
INSERT INTO `fy_goods_browse` VALUES ('837', null, null, '196', '1534412903', '1', '1534412903');
INSERT INTO `fy_goods_browse` VALUES ('838', null, null, '197', '1534412923', '1', '1534412923');
INSERT INTO `fy_goods_browse` VALUES ('839', null, null, '204', '1534412940', '1', '1534412940');
INSERT INTO `fy_goods_browse` VALUES ('840', null, null, '0', '1534412943', '1', '1534412943');
INSERT INTO `fy_goods_browse` VALUES ('841', null, null, '217', '1534419787', '1', '1534419787');
INSERT INTO `fy_goods_browse` VALUES ('842', null, null, '197', '1534467499', '1', '1534467499');
INSERT INTO `fy_goods_browse` VALUES ('843', null, null, '215', '1534467607', '1', '1534467607');
INSERT INTO `fy_goods_browse` VALUES ('844', null, null, '215', '1534467803', '1', '1534467803');
INSERT INTO `fy_goods_browse` VALUES ('845', null, null, '196', '1534467841', '1', '1534467841');
INSERT INTO `fy_goods_browse` VALUES ('846', null, null, '196', '1534468340', '1', '1534468340');
INSERT INTO `fy_goods_browse` VALUES ('847', null, null, '218', '1534468516', '1', '1534468516');
INSERT INTO `fy_goods_browse` VALUES ('848', null, null, '215', '1534468638', '1', '1534468638');
INSERT INTO `fy_goods_browse` VALUES ('849', null, null, '215', '1534468674', '1', '1534468674');
INSERT INTO `fy_goods_browse` VALUES ('850', null, null, '221', '1534472986', '1', '1534472986');
INSERT INTO `fy_goods_browse` VALUES ('851', null, null, '222', '1534473031', '1', '1534473031');
INSERT INTO `fy_goods_browse` VALUES ('852', null, null, '196', '1534473907', '1', '1534473907');
INSERT INTO `fy_goods_browse` VALUES ('853', null, null, '0', '1534473986', '1', '1534473986');
INSERT INTO `fy_goods_browse` VALUES ('854', null, null, '196', '1534474029', '1', '1534474029');
INSERT INTO `fy_goods_browse` VALUES ('855', null, null, '196', '1534474032', '1', '1534474032');
INSERT INTO `fy_goods_browse` VALUES ('856', null, null, '0', '1534474037', '1', '1534474037');
INSERT INTO `fy_goods_browse` VALUES ('857', null, null, '196', '1534474076', '1', '1534474076');
INSERT INTO `fy_goods_browse` VALUES ('858', null, null, '196', '1534474078', '1', '1534474078');
INSERT INTO `fy_goods_browse` VALUES ('859', null, null, '196', '1534474081', '1', '1534474081');
INSERT INTO `fy_goods_browse` VALUES ('860', null, null, '196', '1534474083', '1', '1534474083');
INSERT INTO `fy_goods_browse` VALUES ('861', null, null, '196', '1534474086', '1', '1534474086');
INSERT INTO `fy_goods_browse` VALUES ('862', null, null, '196', '1534474088', '1', '1534474088');
INSERT INTO `fy_goods_browse` VALUES ('863', null, null, '0', '1534474100', '1', '1534474100');
INSERT INTO `fy_goods_browse` VALUES ('864', null, null, '196', '1534474118', '1', '1534474118');
INSERT INTO `fy_goods_browse` VALUES ('865', null, null, '196', '1534474120', '1', '1534474120');
INSERT INTO `fy_goods_browse` VALUES ('866', null, null, '0', '1534474123', '1', '1534474123');
INSERT INTO `fy_goods_browse` VALUES ('867', null, null, '196', '1534474141', '1', '1534474141');
INSERT INTO `fy_goods_browse` VALUES ('868', null, null, '196', '1534474143', '1', '1534474143');
INSERT INTO `fy_goods_browse` VALUES ('869', null, null, '0', '1534474146', '1', '1534474146');
INSERT INTO `fy_goods_browse` VALUES ('870', null, null, '196', '1534474171', '1', '1534474171');
INSERT INTO `fy_goods_browse` VALUES ('871', null, null, '196', '1534474173', '1', '1534474173');
INSERT INTO `fy_goods_browse` VALUES ('872', null, null, '0', '1534474177', '1', '1534474177');
INSERT INTO `fy_goods_browse` VALUES ('873', null, null, '196', '1534474281', '1', '1534474281');
INSERT INTO `fy_goods_browse` VALUES ('874', null, null, '196', '1534474283', '1', '1534474283');
INSERT INTO `fy_goods_browse` VALUES ('875', null, null, '196', '1534474286', '1', '1534474286');
INSERT INTO `fy_goods_browse` VALUES ('876', null, null, '196', '1534474288', '1', '1534474288');
INSERT INTO `fy_goods_browse` VALUES ('877', null, null, '0', '1534474291', '1', '1534474291');
INSERT INTO `fy_goods_browse` VALUES ('878', null, null, '0', '1534474316', '1', '1534474316');
INSERT INTO `fy_goods_browse` VALUES ('879', null, null, '196', '1534474370', '1', '1534474370');
INSERT INTO `fy_goods_browse` VALUES ('880', null, null, '196', '1534474373', '1', '1534474373');
INSERT INTO `fy_goods_browse` VALUES ('881', null, null, '0', '1534474380', '1', '1534474380');
INSERT INTO `fy_goods_browse` VALUES ('882', null, null, '196', '1534474385', '1', '1534474385');
INSERT INTO `fy_goods_browse` VALUES ('883', null, null, '196', '1534474387', '1', '1534474387');
INSERT INTO `fy_goods_browse` VALUES ('884', null, null, '0', '1534474393', '1', '1534474393');
INSERT INTO `fy_goods_browse` VALUES ('885', null, null, '196', '1534474446', '1', '1534474446');
INSERT INTO `fy_goods_browse` VALUES ('886', null, null, '196', '1534474449', '1', '1534474449');
INSERT INTO `fy_goods_browse` VALUES ('887', null, null, '0', '1534474452', '1', '1534474452');
INSERT INTO `fy_goods_browse` VALUES ('888', null, 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '222', '1534474498', '13', '1534474498');
INSERT INTO `fy_goods_browse` VALUES ('889', null, 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '223', '1534475060', '10', '1534475060');
INSERT INTO `fy_goods_browse` VALUES ('890', null, 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '226', '1534476241', '7', '1534476241');
INSERT INTO `fy_goods_browse` VALUES ('891', null, null, '226', '1534476347', '1', '1534476347');
INSERT INTO `fy_goods_browse` VALUES ('892', null, 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '227', '1534478391', '12', '1534478391');
INSERT INTO `fy_goods_browse` VALUES ('893', null, 'omQYXwNAT5uC15TQqMGxajJzqo4s', '225', '1534478506', '12', '1534478506');
INSERT INTO `fy_goods_browse` VALUES ('894', null, 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '221', '1534484307', '9', '1534484307');
INSERT INTO `fy_goods_browse` VALUES ('895', null, null, '221', '1534484367', '1', '1534484367');
INSERT INTO `fy_goods_browse` VALUES ('896', null, 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '224', '1534484821', '3', '1534484821');
INSERT INTO `fy_goods_browse` VALUES ('897', null, 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '221', '1534485043', '6', '1534485043');
INSERT INTO `fy_goods_browse` VALUES ('898', null, 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '225', '1534485197', '4', '1534485197');
INSERT INTO `fy_goods_browse` VALUES ('899', null, 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '222', '1534485206', '12', '1534485206');
INSERT INTO `fy_goods_browse` VALUES ('900', null, null, '225', '1534485257', '1', '1534485257');
INSERT INTO `fy_goods_browse` VALUES ('901', null, null, '222', '1534485266', '1', '1534485266');
INSERT INTO `fy_goods_browse` VALUES ('902', null, 'omQYXwNAT5uC15TQqMGxajJzqo4s', '222', '1534486099', '4', '1534486099');
INSERT INTO `fy_goods_browse` VALUES ('903', null, 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '222', '1534486375', '9', '1534486375');
INSERT INTO `fy_goods_browse` VALUES ('904', null, 'omQYXwNAT5uC15TQqMGxajJzqo4s', '221', '1534488047', '10', '1534488047');
INSERT INTO `fy_goods_browse` VALUES ('905', null, 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '227', '1534489625', '4', '1534489625');
INSERT INTO `fy_goods_browse` VALUES ('906', null, 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '225', '1534489666', '2', '1534489666');
INSERT INTO `fy_goods_browse` VALUES ('907', null, 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '230', '1534490218', '45', '1534490218');
INSERT INTO `fy_goods_browse` VALUES ('908', null, 'omQYXwNAT5uC15TQqMGxajJzqo4s', '230', '1534492638', '4', '1534492638');
INSERT INTO `fy_goods_browse` VALUES ('909', null, 'omQYXwNAT5uC15TQqMGxajJzqo4s', '229', '1534492645', '1', '1534492645');
INSERT INTO `fy_goods_browse` VALUES ('910', null, 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '221', '1534493010', '37', '1534493010');
INSERT INTO `fy_goods_browse` VALUES ('911', null, 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '230', '1534493213', '2', '1534493213');
INSERT INTO `fy_goods_browse` VALUES ('912', null, null, '230', '1534493273', '1', '1534493273');
INSERT INTO `fy_goods_browse` VALUES ('913', null, 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '229', '1534493288', '1', '1534493288');
INSERT INTO `fy_goods_browse` VALUES ('914', null, 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '227', '1534493303', '1', '1534493303');
INSERT INTO `fy_goods_browse` VALUES ('915', null, null, '229', '1534493348', '1', '1534493348');
INSERT INTO `fy_goods_browse` VALUES ('916', null, null, '227', '1534493363', '1', '1534493363');
INSERT INTO `fy_goods_browse` VALUES ('917', null, 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '229', '1534493381', '10', '1534493381');
INSERT INTO `fy_goods_browse` VALUES ('918', null, null, '230', '1534493424', '1', '1534493424');
INSERT INTO `fy_goods_browse` VALUES ('919', null, null, '230', '1534493426', '1', '1534493426');
INSERT INTO `fy_goods_browse` VALUES ('920', null, null, '0', '1534493443', '1', '1534493443');
INSERT INTO `fy_goods_browse` VALUES ('921', null, null, '230', '1534493938', '1', '1534493938');
INSERT INTO `fy_goods_browse` VALUES ('922', null, null, '0', '1534493954', '1', '1534493954');
INSERT INTO `fy_goods_browse` VALUES ('923', null, null, '223', '1534494180', '1', '1534494180');
INSERT INTO `fy_goods_browse` VALUES ('924', null, null, '222', '1534495404', '1', '1534495404');
INSERT INTO `fy_goods_browse` VALUES ('925', null, 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '230', '1534495517', '3', '1534495517');
INSERT INTO `fy_goods_browse` VALUES ('926', null, null, '221', '1534496309', '1', '1534496309');
INSERT INTO `fy_goods_browse` VALUES ('927', null, 'omQYXwNAT5uC15TQqMGxajJzqo4s', '227', '1534497959', '6', '1534497959');
INSERT INTO `fy_goods_browse` VALUES ('928', null, null, '230', '1534520604', '1', '1534520604');
INSERT INTO `fy_goods_browse` VALUES ('929', null, 'omQYXwAasNeXdGSMymd91487Ds1g', '224', '1534549096', '1', '1534549096');
INSERT INTO `fy_goods_browse` VALUES ('930', null, null, '224', '1534549156', '1', '1534549156');
INSERT INTO `fy_goods_browse` VALUES ('931', null, 'omQYXwAasNeXdGSMymd91487Ds1g', '225', '1534549404', '1', '1534549404');
INSERT INTO `fy_goods_browse` VALUES ('932', null, null, '225', '1534549464', '1', '1534549464');
INSERT INTO `fy_goods_browse` VALUES ('933', null, 'omQYXwAasNeXdGSMymd91487Ds1g', '221', '1534549500', '1', '1534549500');
INSERT INTO `fy_goods_browse` VALUES ('934', null, null, '224', '1534550505', '1', '1534550505');
INSERT INTO `fy_goods_browse` VALUES ('935', null, null, '221', '1534726631', '1', '1534726631');
INSERT INTO `fy_goods_browse` VALUES ('936', null, 'omQYXwNAT5uC15TQqMGxajJzqo4s', '187', '1534730615', '1', '1534730615');
INSERT INTO `fy_goods_browse` VALUES ('937', null, null, '231', '1534732775', '1', '1534732775');
INSERT INTO `fy_goods_browse` VALUES ('938', null, null, '231', '1534732908', '1', '1534732908');
INSERT INTO `fy_goods_browse` VALUES ('939', null, null, '221', '1534732941', '1', '1534732941');
INSERT INTO `fy_goods_browse` VALUES ('940', null, null, '231', '1534733032', '1', '1534733032');
INSERT INTO `fy_goods_browse` VALUES ('941', null, null, '231', '1534733084', '1', '1534733084');
INSERT INTO `fy_goods_browse` VALUES ('942', null, null, '221', '1534733164', '1', '1534733164');
INSERT INTO `fy_goods_browse` VALUES ('943', null, null, '221', '1534733246', '1', '1534733246');
INSERT INTO `fy_goods_browse` VALUES ('944', null, null, '221', '1534733373', '1', '1534733373');
INSERT INTO `fy_goods_browse` VALUES ('945', null, null, '221', '1534733397', '1', '1534733397');
INSERT INTO `fy_goods_browse` VALUES ('946', null, null, '231', '1534733407', '1', '1534733407');
INSERT INTO `fy_goods_browse` VALUES ('947', null, null, '221', '1534733430', '1', '1534733430');
INSERT INTO `fy_goods_browse` VALUES ('948', null, null, '221', '1534733440', '1', '1534733440');
INSERT INTO `fy_goods_browse` VALUES ('949', null, null, '221', '1534733452', '1', '1534733452');
INSERT INTO `fy_goods_browse` VALUES ('950', null, null, '231', '1534733459', '1', '1534733459');
INSERT INTO `fy_goods_browse` VALUES ('951', null, null, '221', '1534734332', '1', '1534734332');
INSERT INTO `fy_goods_browse` VALUES ('952', null, 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '231', '1534745834', '30', '1534745834');
INSERT INTO `fy_goods_browse` VALUES ('953', null, null, '231', '1534745895', '1', '1534745895');
INSERT INTO `fy_goods_browse` VALUES ('954', null, 'omQYXwNAT5uC15TQqMGxajJzqo4s', '232', '1534746029', '5', '1534746029');
INSERT INTO `fy_goods_browse` VALUES ('955', null, null, '231', '1534746076', '1', '1534746076');
INSERT INTO `fy_goods_browse` VALUES ('956', null, null, '231', '1534746090', '1', '1534746090');
INSERT INTO `fy_goods_browse` VALUES ('957', null, 'omQYXwNAT5uC15TQqMGxajJzqo4s', '231', '1534746348', '77', '1534746348');
INSERT INTO `fy_goods_browse` VALUES ('958', null, null, '231', '1534750556', '1', '1534750556');
INSERT INTO `fy_goods_browse` VALUES ('959', null, null, '231', '1534750774', '1', '1534750774');
INSERT INTO `fy_goods_browse` VALUES ('960', null, null, '231', '1534751150', '1', '1534751150');
INSERT INTO `fy_goods_browse` VALUES ('961', null, 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '231', '1534751160', '43', '1534751160');
INSERT INTO `fy_goods_browse` VALUES ('962', null, null, '221', '1534751367', '1', '1534751367');
INSERT INTO `fy_goods_browse` VALUES ('963', null, null, '222', '1534751372', '1', '1534751372');
INSERT INTO `fy_goods_browse` VALUES ('964', null, null, '221', '1534751374', '1', '1534751374');
INSERT INTO `fy_goods_browse` VALUES ('965', null, null, '221', '1534751391', '1', '1534751391');
INSERT INTO `fy_goods_browse` VALUES ('966', null, null, '221', '1534751768', '1', '1534751768');
INSERT INTO `fy_goods_browse` VALUES ('967', null, null, '221', '1534753095', '1', '1534753095');
INSERT INTO `fy_goods_browse` VALUES ('968', null, 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '231', '1534753163', '2', '1534753163');
INSERT INTO `fy_goods_browse` VALUES ('969', null, null, '231', '1534753208', '1', '1534753208');
INSERT INTO `fy_goods_browse` VALUES ('970', null, null, '221', '1534753213', '1', '1534753213');
INSERT INTO `fy_goods_browse` VALUES ('971', null, null, '231', '1534754030', '1', '1534754030');
INSERT INTO `fy_goods_browse` VALUES ('972', null, null, '231', '1534754078', '1', '1534754078');
INSERT INTO `fy_goods_browse` VALUES ('973', null, null, '231', '1534754157', '1', '1534754157');
INSERT INTO `fy_goods_browse` VALUES ('974', null, null, '0', '1534754164', '1', '1534754164');
INSERT INTO `fy_goods_browse` VALUES ('975', null, null, '231', '1534754543', '1', '1534754543');
INSERT INTO `fy_goods_browse` VALUES ('976', null, null, '0', '1534754550', '1', '1534754550');
INSERT INTO `fy_goods_browse` VALUES ('977', null, 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '232', '1534754850', '1', '1534754850');
INSERT INTO `fy_goods_browse` VALUES ('978', null, null, '232', '1534754911', '1', '1534754911');
INSERT INTO `fy_goods_browse` VALUES ('979', null, null, '231', '1534757028', '1', '1534757028');
INSERT INTO `fy_goods_browse` VALUES ('980', null, 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '222', '1534757068', '1', '1534757068');
INSERT INTO `fy_goods_browse` VALUES ('981', null, null, '222', '1534757128', '1', '1534757128');
INSERT INTO `fy_goods_browse` VALUES ('982', null, 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '187', '1534821835', '1', '1534821835');
INSERT INTO `fy_goods_browse` VALUES ('983', null, null, '187', '1534821895', '1', '1534821895');

-- ----------------------------
-- Table structure for fy_goods_class
-- ----------------------------
DROP TABLE IF EXISTS `fy_goods_class`;
CREATE TABLE `fy_goods_class` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) NOT NULL DEFAULT '0',
  `name` varchar(20) NOT NULL COMMENT '分类名称',
  `path` varchar(255) NOT NULL DEFAULT '0,' COMMENT '路径',
  `pic` varchar(255) DEFAULT NULL COMMENT '分类图片',
  `user_id` int(10) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_goods_class
-- ----------------------------
INSERT INTO `fy_goods_class` VALUES ('76', '0', '水果', '0,', '', null);
INSERT INTO `fy_goods_class` VALUES ('77', '0', '家居', '0,', '', null);
INSERT INTO `fy_goods_class` VALUES ('78', '0', '美食', '0,', '', null);
INSERT INTO `fy_goods_class` VALUES ('79', '0', '出行', '0,', '', null);
INSERT INTO `fy_goods_class` VALUES ('80', '0', '交通工具', '0,', '', null);
INSERT INTO `fy_goods_class` VALUES ('81', '0', '娱乐', '0,', '', null);
INSERT INTO `fy_goods_class` VALUES ('82', '0', '教程', '0,', '', null);
INSERT INTO `fy_goods_class` VALUES ('83', '0', '教育', '0,', '', null);
INSERT INTO `fy_goods_class` VALUES ('84', '0', '公仔', '0,', '/tmp/uploads/20180820/30e69c0a7c775276becd53f33fcb4463.jpg', null);

-- ----------------------------
-- Table structure for fy_goods_comment
-- ----------------------------
DROP TABLE IF EXISTS `fy_goods_comment`;
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_goods_comment
-- ----------------------------
INSERT INTO `fy_goods_comment` VALUES ('39', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '韩小豆', null, '231', '哆啦a梦公仔机器猫毛绒玩具叮当猫超特大号蓝胖子生日礼物女生', null, '一般', '1534748366', '0', '3.00', '2.50', '2.50', '2.67', '0', null, '0', '20', '575');
INSERT INTO `fy_goods_comment` VALUES ('40', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '韩小豆', null, '231', '哆啦a梦公仔机器猫毛绒玩具叮当猫超特大号蓝胖子生日礼物女生', null, '服务差', '1534754245', '1', '2.50', '2.50', '3.00', '2.67', '0', '感谢您的宝贵意见', '1', '20', '578');

-- ----------------------------
-- Table structure for fy_goods_comment_reply
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
-- Table structure for fy_goods_proprety_name
-- ----------------------------
DROP TABLE IF EXISTS `fy_goods_proprety_name`;
CREATE TABLE `fy_goods_proprety_name` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品属性名表',
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  `name` varchar(255) NOT NULL COMMENT '属性名',
  `goods_class_id` int(11) DEFAULT NULL COMMENT '分类id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=720 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_goods_proprety_name
-- ----------------------------
INSERT INTO `fy_goods_proprety_name` VALUES ('357', '192', '1531964534721_颜色', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('358', '192', '1531964557086_内存', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('359', '192', '1531964581903_尺寸', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('423', '190', '1531712931923_尺码', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('451', '187', '1531712091646_尺码', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('452', '187', '1531712117948_颜色', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('468', '188', '1532485970088_颜色', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('469', '189', '1531712660817_颜色', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('470', '189', '1531712678922_内存', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('474', '193', '1532426178132_大小', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('477', '195', '1532598376057_尺寸', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('478', '194', '1532598149807_尺寸', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('479', '191', '1531713078657_尺码', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('482', '198', '1532669550571_尺寸', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('489', '202', '1532675900270_颜色', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('490', '202', '1532675930894_尺码', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('538', '207', '1533004029079_颜色', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('543', '208', '1533005369999_颜色', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('544', '209', '1533006291086_颜色', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('545', '210', '1533006291086_颜色', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('546', '211', '1533006291086_颜色', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('552', '212', '1533030800452_颜色', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('553', '212', '1533030813165_尺码', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('574', '205', '1533000176301_内存', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('575', '206', '1533003413553_尺码', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('579', '201', '1532675900270_颜色', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('580', '201', '1532675930894_尺码', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('590', '214', '1533031397740_尺码', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('591', '213', '1533031397740_尺码', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('597', '216', '1533350808837_沃尔沃翁无', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('605', '199', '1532670128922_颜色', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('606', '199', '1532670173217_尺寸', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('616', '217', '1533368330819_净含量', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('623', '196', '1532669182824_尺寸', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('628', '204', '1532685664305_尺码', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('631', '219', '1534320988015_尺码', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('632', '220', '1534321394088_尺码', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('636', '218', '1534227738937_重量', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('637', '215', '1533259442366_香奈儿', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('639', '197', '1532669550571_尺寸', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('648', '222', '1534472672469_颜色', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('649', '222', '1534472693765_尺码', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('650', '223', '1534473574146_尺码', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('651', '224', '1534474100016_尺码', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('657', '228', '1534475972128_颜色', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('658', '228', '1534475982816_尺码', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('683', '225', '1534474779828_颜色', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('684', '225', '1534475285723_尺码', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('687', '227', '1534475972128_颜色', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('688', '227', '1534475982816_尺码', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('691', '226', '1534475965898_颜色', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('710', '231', '1534732547524_颜色', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('711', '231', '1534732587642_尺寸', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('718', '221', '1534471812402_颜色', null);
INSERT INTO `fy_goods_proprety_name` VALUES ('719', '221', '1534471832857_尺码', null);

-- ----------------------------
-- Table structure for fy_goods_proprety_val
-- ----------------------------
DROP TABLE IF EXISTS `fy_goods_proprety_val`;
CREATE TABLE `fy_goods_proprety_val` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品属性值表',
  `propre_name_id` int(11) NOT NULL COMMENT '属性名id',
  `value` varchar(255) NOT NULL COMMENT '属性值',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品id备用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2468 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_goods_proprety_val
-- ----------------------------
INSERT INTO `fy_goods_proprety_val` VALUES ('1075', '357', '1531964542632_红色', '192');
INSERT INTO `fy_goods_proprety_val` VALUES ('1076', '357', '1531964546188_蓝色', '192');
INSERT INTO `fy_goods_proprety_val` VALUES ('1077', '357', '1531964548972_黑色', '192');
INSERT INTO `fy_goods_proprety_val` VALUES ('1078', '357', '1531964553407_玫瑰金', '192');
INSERT INTO `fy_goods_proprety_val` VALUES ('1079', '358', '1531964569618_32G', '192');
INSERT INTO `fy_goods_proprety_val` VALUES ('1080', '358', '1531964572098_64G', '192');
INSERT INTO `fy_goods_proprety_val` VALUES ('1081', '358', '1531964574427_128G', '192');
INSERT INTO `fy_goods_proprety_val` VALUES ('1082', '358', '1531964578698_256G', '192');
INSERT INTO `fy_goods_proprety_val` VALUES ('1083', '359', '1531964590063_4.5', '192');
INSERT INTO `fy_goods_proprety_val` VALUES ('1084', '359', '1531964592641_4.7', '192');
INSERT INTO `fy_goods_proprety_val` VALUES ('1085', '359', '1531964595270_5.1', '192');
INSERT INTO `fy_goods_proprety_val` VALUES ('1086', '359', '1531964599548_5.5', '192');
INSERT INTO `fy_goods_proprety_val` VALUES ('1293', '423', '1531712936968_S', '190');
INSERT INTO `fy_goods_proprety_val` VALUES ('1294', '423', '1531712939271_M', '190');
INSERT INTO `fy_goods_proprety_val` VALUES ('1295', '423', '1531712943239_L', '190');
INSERT INTO `fy_goods_proprety_val` VALUES ('1390', '451', '1531712102986_25', '187');
INSERT INTO `fy_goods_proprety_val` VALUES ('1391', '451', '1531712105835_26', '187');
INSERT INTO `fy_goods_proprety_val` VALUES ('1392', '452', '1531712127107_深蓝', '187');
INSERT INTO `fy_goods_proprety_val` VALUES ('1393', '452', '1531712133718_黑色', '187');
INSERT INTO `fy_goods_proprety_val` VALUES ('1450', '468', '1532485984345_绿色', '188');
INSERT INTO `fy_goods_proprety_val` VALUES ('1451', '469', '1531712670353_玫红色', '189');
INSERT INTO `fy_goods_proprety_val` VALUES ('1452', '469', '1531712673030_蓝色', '189');
INSERT INTO `fy_goods_proprety_val` VALUES ('1453', '469', '1531712678214_黑色', '189');
INSERT INTO `fy_goods_proprety_val` VALUES ('1454', '470', '1531712689305_4G 32G', '189');
INSERT INTO `fy_goods_proprety_val` VALUES ('1455', '470', '1531712695321_4G 64G', '189');
INSERT INTO `fy_goods_proprety_val` VALUES ('1467', '474', '1532426190990_16G', '193');
INSERT INTO `fy_goods_proprety_val` VALUES ('1468', '474', '1532426194779_32G', '193');
INSERT INTO `fy_goods_proprety_val` VALUES ('1476', '477', '1532598380278_S', '195');
INSERT INTO `fy_goods_proprety_val` VALUES ('1477', '477', '1532598381926_M', '195');
INSERT INTO `fy_goods_proprety_val` VALUES ('1478', '477', '1532598383446_L', '195');
INSERT INTO `fy_goods_proprety_val` VALUES ('1479', '478', '1532598160007_S', '194');
INSERT INTO `fy_goods_proprety_val` VALUES ('1480', '478', '1532598162618_M', '194');
INSERT INTO `fy_goods_proprety_val` VALUES ('1481', '478', '1532598164791_L', '194');
INSERT INTO `fy_goods_proprety_val` VALUES ('1482', '479', '1531713083424_S', '191');
INSERT INTO `fy_goods_proprety_val` VALUES ('1483', '479', '1531713086439_M', '191');
INSERT INTO `fy_goods_proprety_val` VALUES ('1484', '479', '1531713089467_L', '191');
INSERT INTO `fy_goods_proprety_val` VALUES ('1491', '482', '1532669555391_S', '198');
INSERT INTO `fy_goods_proprety_val` VALUES ('1492', '482', '1532669557096_M', '198');
INSERT INTO `fy_goods_proprety_val` VALUES ('1493', '482', '1532669558971_L', '198');
INSERT INTO `fy_goods_proprety_val` VALUES ('1522', '489', '1532675906075_白色', '202');
INSERT INTO `fy_goods_proprety_val` VALUES ('1523', '489', '1532675908482_粉色', '202');
INSERT INTO `fy_goods_proprety_val` VALUES ('1524', '489', '1532675915393_浅蓝色', '202');
INSERT INTO `fy_goods_proprety_val` VALUES ('1525', '489', '1532675918192_灰色', '202');
INSERT INTO `fy_goods_proprety_val` VALUES ('1526', '489', '1532675930234_藏青色', '202');
INSERT INTO `fy_goods_proprety_val` VALUES ('1527', '490', '1532675935374_S', '202');
INSERT INTO `fy_goods_proprety_val` VALUES ('1528', '490', '1532675936800_M', '202');
INSERT INTO `fy_goods_proprety_val` VALUES ('1529', '490', '1532675937818_L', '202');
INSERT INTO `fy_goods_proprety_val` VALUES ('1530', '490', '1532675941177_XL', '202');
INSERT INTO `fy_goods_proprety_val` VALUES ('1738', '538', '1533004045320_深空灰', '207');
INSERT INTO `fy_goods_proprety_val` VALUES ('1739', '538', '1533004102153_金色', '207');
INSERT INTO `fy_goods_proprety_val` VALUES ('1761', '543', '1533005380925_白色', '208');
INSERT INTO `fy_goods_proprety_val` VALUES ('1762', '543', '1533005384052_黑色', '208');
INSERT INTO `fy_goods_proprety_val` VALUES ('1763', '543', '1533005387811_旅行而', '208');
INSERT INTO `fy_goods_proprety_val` VALUES ('1764', '544', '1533006297558_白色', '209');
INSERT INTO `fy_goods_proprety_val` VALUES ('1765', '544', '1533006302583_绿色', '209');
INSERT INTO `fy_goods_proprety_val` VALUES ('1767', '545', '1533006297558_白色', '210');
INSERT INTO `fy_goods_proprety_val` VALUES ('1768', '545', '1533006302583_绿色', '210');
INSERT INTO `fy_goods_proprety_val` VALUES ('1770', '546', '1533006297558_白色', '211');
INSERT INTO `fy_goods_proprety_val` VALUES ('1771', '546', '1533006302583_绿色', '211');
INSERT INTO `fy_goods_proprety_val` VALUES ('1798', '552', '1533030806536_藏青', '212');
INSERT INTO `fy_goods_proprety_val` VALUES ('1799', '552', '1533030812147_卡其', '212');
INSERT INTO `fy_goods_proprety_val` VALUES ('1800', '553', '1533030838586_S', '212');
INSERT INTO `fy_goods_proprety_val` VALUES ('1801', '553', '1533030840935_M', '212');
INSERT INTO `fy_goods_proprety_val` VALUES ('1802', '553', '1533030843105_L', '212');
INSERT INTO `fy_goods_proprety_val` VALUES ('1867', '574', '1533000189653_16G', '205');
INSERT INTO `fy_goods_proprety_val` VALUES ('1868', '575', '1533003428514_170/88A(48)', '206');
INSERT INTO `fy_goods_proprety_val` VALUES ('1869', '575', '1533003437545_175/92A(50)', '206');
INSERT INTO `fy_goods_proprety_val` VALUES ('1870', '575', '1533003447541_180/96A(52)', '206');
INSERT INTO `fy_goods_proprety_val` VALUES ('1871', '575', '1533003456989_185/100A(54)', '206');
INSERT INTO `fy_goods_proprety_val` VALUES ('1885', '579', '1532675906075_白色', '201');
INSERT INTO `fy_goods_proprety_val` VALUES ('1886', '579', '1532675908482_粉色', '201');
INSERT INTO `fy_goods_proprety_val` VALUES ('1887', '579', '1532675915393_浅蓝色', '201');
INSERT INTO `fy_goods_proprety_val` VALUES ('1888', '579', '1532675918192_灰色', '201');
INSERT INTO `fy_goods_proprety_val` VALUES ('1889', '579', '1532675930234_藏青色', '201');
INSERT INTO `fy_goods_proprety_val` VALUES ('1890', '580', '1532675935374_S', '201');
INSERT INTO `fy_goods_proprety_val` VALUES ('1891', '580', '1532675936800_M', '201');
INSERT INTO `fy_goods_proprety_val` VALUES ('1892', '580', '1532675937818_L', '201');
INSERT INTO `fy_goods_proprety_val` VALUES ('1927', '590', '1533031407084_S', '214');
INSERT INTO `fy_goods_proprety_val` VALUES ('1928', '590', '1533031410081_M', '214');
INSERT INTO `fy_goods_proprety_val` VALUES ('1929', '590', '1533031412402_L', '214');
INSERT INTO `fy_goods_proprety_val` VALUES ('1930', '591', '1533031407084_S', '213');
INSERT INTO `fy_goods_proprety_val` VALUES ('1931', '591', '1533031410081_M', '213');
INSERT INTO `fy_goods_proprety_val` VALUES ('1932', '591', '1533031412402_L', '213');
INSERT INTO `fy_goods_proprety_val` VALUES ('1948', '597', '1533350814150_玩儿 ', '216');
INSERT INTO `fy_goods_proprety_val` VALUES ('1949', '597', '1533350815879_二 ', '216');
INSERT INTO `fy_goods_proprety_val` VALUES ('1974', '605', '1532670135676_黑色', '199');
INSERT INTO `fy_goods_proprety_val` VALUES ('1975', '605', '1532670138286_白色', '199');
INSERT INTO `fy_goods_proprety_val` VALUES ('1976', '605', '1532670146819_杏色', '199');
INSERT INTO `fy_goods_proprety_val` VALUES ('1977', '606', '1532670177552_S', '199');
INSERT INTO `fy_goods_proprety_val` VALUES ('1978', '606', '1532670179384_M', '199');
INSERT INTO `fy_goods_proprety_val` VALUES ('1979', '606', '1532670181253_L', '199');
INSERT INTO `fy_goods_proprety_val` VALUES ('1980', '606', '1532670184042_XL', '199');
INSERT INTO `fy_goods_proprety_val` VALUES ('2008', '616', '1533368350371_30ml', '217');
INSERT INTO `fy_goods_proprety_val` VALUES ('2009', '616', '1533368356096_40ml', '217');
INSERT INTO `fy_goods_proprety_val` VALUES ('2010', '616', '1533368359574_50ml', '217');
INSERT INTO `fy_goods_proprety_val` VALUES ('2029', '623', '1532669188681_S', '196');
INSERT INTO `fy_goods_proprety_val` VALUES ('2030', '623', '1532669190725_M', '196');
INSERT INTO `fy_goods_proprety_val` VALUES ('2031', '623', '1532669194906_L', '196');
INSERT INTO `fy_goods_proprety_val` VALUES ('2044', '628', '1532685669296_S', '204');
INSERT INTO `fy_goods_proprety_val` VALUES ('2045', '628', '1532685671881_M', '204');
INSERT INTO `fy_goods_proprety_val` VALUES ('2046', '628', '1532685673577_L', '204');
INSERT INTO `fy_goods_proprety_val` VALUES ('2053', '631', '1534320998335_25', '219');
INSERT INTO `fy_goods_proprety_val` VALUES ('2054', '631', '1534321000318_26', '219');
INSERT INTO `fy_goods_proprety_val` VALUES ('2056', '632', '1534321403370_S', '220');
INSERT INTO `fy_goods_proprety_val` VALUES ('2057', '632', '1534321405318_M', '220');
INSERT INTO `fy_goods_proprety_val` VALUES ('2058', '632', '1534321407764_L', '220');
INSERT INTO `fy_goods_proprety_val` VALUES ('2068', '636', '1534227747913_5kg', '218');
INSERT INTO `fy_goods_proprety_val` VALUES ('2069', '636', '1534227751360_10kg', '218');
INSERT INTO `fy_goods_proprety_val` VALUES ('2070', '636', '1534227755248_15kg', '218');
INSERT INTO `fy_goods_proprety_val` VALUES ('2071', '637', '1533259573454_30ML', '215');
INSERT INTO `fy_goods_proprety_val` VALUES ('2072', '637', '1533259583921_50ML', '215');
INSERT INTO `fy_goods_proprety_val` VALUES ('2073', '637', '1533259607899_120ML', '215');
INSERT INTO `fy_goods_proprety_val` VALUES ('2077', '639', '1532669555391_S', '197');
INSERT INTO `fy_goods_proprety_val` VALUES ('2078', '639', '1532669557096_M', '197');
INSERT INTO `fy_goods_proprety_val` VALUES ('2079', '639', '1532669558971_L', '197');
INSERT INTO `fy_goods_proprety_val` VALUES ('2108', '648', '1534472680423_白色', '222');
INSERT INTO `fy_goods_proprety_val` VALUES ('2109', '648', '1534472683919_天蓝色', '222');
INSERT INTO `fy_goods_proprety_val` VALUES ('2110', '649', '1534472716725_XS', '222');
INSERT INTO `fy_goods_proprety_val` VALUES ('2111', '649', '1534472718016_S', '222');
INSERT INTO `fy_goods_proprety_val` VALUES ('2112', '649', '1534472720962_M', '222');
INSERT INTO `fy_goods_proprety_val` VALUES ('2113', '649', '1534472724308_L', '222');
INSERT INTO `fy_goods_proprety_val` VALUES ('2115', '650', '1534473585134_29/27', '223');
INSERT INTO `fy_goods_proprety_val` VALUES ('2116', '650', '1534473588679_30/27', '223');
INSERT INTO `fy_goods_proprety_val` VALUES ('2117', '650', '1534473592482_31/27', '223');
INSERT INTO `fy_goods_proprety_val` VALUES ('2118', '650', '1534473603515_32/27', '223');
INSERT INTO `fy_goods_proprety_val` VALUES ('2119', '650', '1534473607065_34/27', '223');
INSERT INTO `fy_goods_proprety_val` VALUES ('2120', '650', '1534473611282_36/27', '223');
INSERT INTO `fy_goods_proprety_val` VALUES ('2122', '651', '1534474107817_24/30', '224');
INSERT INTO `fy_goods_proprety_val` VALUES ('2123', '651', '1534474111343_25/30 ', '224');
INSERT INTO `fy_goods_proprety_val` VALUES ('2124', '651', '1534474121531_26/30', '224');
INSERT INTO `fy_goods_proprety_val` VALUES ('2125', '651', '1534474125496_27/30 ', '224');
INSERT INTO `fy_goods_proprety_val` VALUES ('2126', '651', '1534474128629_28/30', '224');
INSERT INTO `fy_goods_proprety_val` VALUES ('2154', '657', '1534475978133_荧光桃红/白', '228');
INSERT INTO `fy_goods_proprety_val` VALUES ('2155', '657', '1534475982161_基础白/基础黑', '228');
INSERT INTO `fy_goods_proprety_val` VALUES ('2156', '658', '1534475998755_36', '228');
INSERT INTO `fy_goods_proprety_val` VALUES ('2157', '658', '1534476000227_37', '228');
INSERT INTO `fy_goods_proprety_val` VALUES ('2158', '658', '1534476001846_38', '228');
INSERT INTO `fy_goods_proprety_val` VALUES ('2159', '658', '1534476003530_39', '228');
INSERT INTO `fy_goods_proprety_val` VALUES ('2332', '683', '1534475214669_橙黑色', '225');
INSERT INTO `fy_goods_proprety_val` VALUES ('2333', '683', '1534475224265_暗淡灰', '225');
INSERT INTO `fy_goods_proprety_val` VALUES ('2334', '683', '1534475252226_火石蓝', '225');
INSERT INTO `fy_goods_proprety_val` VALUES ('2335', '683', '1534475272814_凝雪灰', '225');
INSERT INTO `fy_goods_proprety_val` VALUES ('2336', '684', '1534475290437_39', '225');
INSERT INTO `fy_goods_proprety_val` VALUES ('2337', '684', '1534475293594_40', '225');
INSERT INTO `fy_goods_proprety_val` VALUES ('2338', '684', '1534475294981_41', '225');
INSERT INTO `fy_goods_proprety_val` VALUES ('2339', '684', '1534475297130_42', '225');
INSERT INTO `fy_goods_proprety_val` VALUES ('2340', '684', '1534475299245_43', '225');
INSERT INTO `fy_goods_proprety_val` VALUES ('2354', '687', '1534475978133_荧光桃红/白', '227');
INSERT INTO `fy_goods_proprety_val` VALUES ('2355', '687', '1534475982161_基础白/基础黑', '227');
INSERT INTO `fy_goods_proprety_val` VALUES ('2356', '688', '1534475998755_36', '227');
INSERT INTO `fy_goods_proprety_val` VALUES ('2357', '688', '1534476000227_37', '227');
INSERT INTO `fy_goods_proprety_val` VALUES ('2358', '688', '1534476001846_38', '227');
INSERT INTO `fy_goods_proprety_val` VALUES ('2359', '688', '1534476003530_39', '227');
INSERT INTO `fy_goods_proprety_val` VALUES ('2367', '691', '1534475995118_琥珀红', '226');
INSERT INTO `fy_goods_proprety_val` VALUES ('2368', '691', '1534476001184_月牙白', '226');
INSERT INTO `fy_goods_proprety_val` VALUES ('2369', '691', '1534476006397_墨岩黑', '226');
INSERT INTO `fy_goods_proprety_val` VALUES ('2433', '710', '1534732573042_黑色', '231');
INSERT INTO `fy_goods_proprety_val` VALUES ('2434', '710', '1534732577331_白色', '231');
INSERT INTO `fy_goods_proprety_val` VALUES ('2435', '710', '1534732586826_红色', '231');
INSERT INTO `fy_goods_proprety_val` VALUES ('2436', '711', '1534732610224_20cm', '231');
INSERT INTO `fy_goods_proprety_val` VALUES ('2437', '711', '1534732639758_30cm', '231');
INSERT INTO `fy_goods_proprety_val` VALUES ('2438', '711', '1534732644381_40cm', '231');
INSERT INTO `fy_goods_proprety_val` VALUES ('2461', '718', '1534471821558_辣红色', '221');
INSERT INTO `fy_goods_proprety_val` VALUES ('2462', '718', '1534471826034_ 黑色', '221');
INSERT INTO `fy_goods_proprety_val` VALUES ('2463', '718', '1534471832193_新奶油色', '221');
INSERT INTO `fy_goods_proprety_val` VALUES ('2464', '719', '1534471841310_155/76A/XS', '221');
INSERT INTO `fy_goods_proprety_val` VALUES ('2465', '719', '1534471860969_160/80A/S ', '221');
INSERT INTO `fy_goods_proprety_val` VALUES ('2466', '719', '1534471864571_165/84A/M ', '221');
INSERT INTO `fy_goods_proprety_val` VALUES ('2467', '719', '1534471867872_170/88A/L', '221');

-- ----------------------------
-- Table structure for fy_login_log
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
) ENGINE=InnoDB AUTO_INCREMENT=384 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_login_log
-- ----------------------------
INSERT INTO `fy_login_log` VALUES ('1', '1', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-05-30 14:27:07');
INSERT INTO `fy_login_log` VALUES ('2', '3', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-05-30 15:07:20');
INSERT INTO `fy_login_log` VALUES ('3', '1', '127.0.0.1', '本机地址 本机地址  ', 'Firefox(60.0)', 'Windows 7', '2018-05-30 15:08:58');
INSERT INTO `fy_login_log` VALUES ('4', '1', '127.0.0.1', '本机地址 本机地址  ', 'Firefox(60.0)', 'Windows 7', '2018-06-04 15:07:39');
INSERT INTO `fy_login_log` VALUES ('5', '1', '127.0.0.1', '本机地址 本机地址  ', 'Firefox(60.0)', 'Windows 7', '2018-06-05 09:00:26');
INSERT INTO `fy_login_log` VALUES ('6', '1', '127.0.0.1', '本机地址 本机地址  ', 'Firefox(60.0)', 'Windows 7', '2018-06-07 11:57:46');
INSERT INTO `fy_login_log` VALUES ('7', '1', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-06-07 16:58:47');
INSERT INTO `fy_login_log` VALUES ('8', '1', '127.0.0.1', '本机地址 本机地址  ', 'Firefox(60.0)', 'Windows 7', '2018-06-08 09:45:23');
INSERT INTO `fy_login_log` VALUES ('9', '1', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-06-08 10:39:14');
INSERT INTO `fy_login_log` VALUES ('10', '3', '127.0.0.1', '本机地址 本机地址  ', 'Firefox(60.0)', 'Windows 7', '2018-06-08 15:47:55');
INSERT INTO `fy_login_log` VALUES ('11', '1', '127.0.0.1', '本机地址 本机地址  ', 'Firefox(60.0)', 'Windows 7', '2018-06-11 09:06:49');
INSERT INTO `fy_login_log` VALUES ('12', '1', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-06-11 15:12:58');
INSERT INTO `fy_login_log` VALUES ('13', '3', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-06-11 15:13:59');
INSERT INTO `fy_login_log` VALUES ('14', '3', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-06-11 15:18:21');
INSERT INTO `fy_login_log` VALUES ('15', '1', '127.0.0.1', '本机地址 本机地址  ', 'Firefox(60.0)', 'Windows 7', '2018-06-12 09:06:02');
INSERT INTO `fy_login_log` VALUES ('16', '3', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-06-12 09:12:15');
INSERT INTO `fy_login_log` VALUES ('17', '2', '127.0.0.1', '本机地址 本机地址  ', 'IE(9.0)', 'Windows 7', '2018-06-12 09:15:31');
INSERT INTO `fy_login_log` VALUES ('18', '1', '127.0.0.1', '本机地址 本机地址  ', 'Firefox(60.0)', 'Windows 7', '2018-06-13 09:09:27');
INSERT INTO `fy_login_log` VALUES ('19', '1', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-06-13 09:23:53');
INSERT INTO `fy_login_log` VALUES ('20', '1', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-06-13 09:48:34');
INSERT INTO `fy_login_log` VALUES ('21', '1', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-06-13 09:59:48');
INSERT INTO `fy_login_log` VALUES ('22', '1', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-06-13 10:15:33');
INSERT INTO `fy_login_log` VALUES ('23', '3', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-06-13 10:52:25');
INSERT INTO `fy_login_log` VALUES ('24', '2', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-06-13 11:09:55');
INSERT INTO `fy_login_log` VALUES ('25', '1', '127.0.0.1', '本机地址 本机地址  ', 'Firefox(60.0)', 'Windows 7', '2018-06-14 09:06:44');
INSERT INTO `fy_login_log` VALUES ('26', '3', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-06-14 09:14:30');
INSERT INTO `fy_login_log` VALUES ('27', '1', '10.110.111.46', '局域网 局域网  ', 'Firefox(60.0)', 'Windows 7', '2018-06-14 15:33:50');
INSERT INTO `fy_login_log` VALUES ('28', '3', '10.110.111.46', '局域网 局域网  ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-06-14 15:55:34');
INSERT INTO `fy_login_log` VALUES ('29', '1', '10.110.111.38', '局域网 局域网  ', 'Chrome(64.0.3282.186)', 'Windows 10', '2018-06-14 16:33:51');
INSERT INTO `fy_login_log` VALUES ('30', '1', '10.110.111.38', '局域网 局域网  ', 'Chrome(64.0.3282.186)', 'Windows 10', '2018-06-14 16:39:03');
INSERT INTO `fy_login_log` VALUES ('31', '1', '10.110.111.46', '局域网 局域网  ', 'Firefox(60.0)', 'Windows 7', '2018-06-19 09:10:57');
INSERT INTO `fy_login_log` VALUES ('32', '1', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-06-19 09:33:10');
INSERT INTO `fy_login_log` VALUES ('33', '3', '10.110.111.46', '局域网 局域网  ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-06-19 09:41:29');
INSERT INTO `fy_login_log` VALUES ('34', '1', '10.20.1.65', '局域网 局域网  ', 'Firefox(60.0)', 'Windows NT', '2018-06-19 11:56:00');
INSERT INTO `fy_login_log` VALUES ('35', '1', '10.110.111.46', '局域网 局域网  ', 'Firefox(60.0)', 'Windows 7', '2018-06-19 16:31:41');
INSERT INTO `fy_login_log` VALUES ('36', '1', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-06-19 16:48:40');
INSERT INTO `fy_login_log` VALUES ('37', '1', '10.27.19.10', '局域网 局域网  ', 'Chrome(62.0.3202.62)', 'Windows 10', '2018-06-19 17:12:24');
INSERT INTO `fy_login_log` VALUES ('38', '1', '10.110.111.38', '局域网 局域网  ', 'Chrome(64.0.3282.186)', 'Windows 10', '2018-06-19 17:26:37');
INSERT INTO `fy_login_log` VALUES ('39', '1', '10.110.111.38', '局域网 局域网  ', 'Chrome(64.0.3282.186)', 'Windows 10', '2018-06-19 18:25:11');
INSERT INTO `fy_login_log` VALUES ('40', '1', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-06-20 08:45:54');
INSERT INTO `fy_login_log` VALUES ('41', '1', '10.110.111.36', '局域网 局域网  ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-06-20 09:14:29');
INSERT INTO `fy_login_log` VALUES ('42', '1', '10.110.111.46', '局域网 局域网  ', 'Firefox(60.0)', 'Windows 7', '2018-06-20 09:33:39');
INSERT INTO `fy_login_log` VALUES ('43', '2', '10.110.111.36', '局域网 局域网  ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-06-20 09:45:52');
INSERT INTO `fy_login_log` VALUES ('44', '2', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-06-20 16:39:07');
INSERT INTO `fy_login_log` VALUES ('45', '1', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-06-20 16:40:03');
INSERT INTO `fy_login_log` VALUES ('46', '1', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-06-20 16:48:52');
INSERT INTO `fy_login_log` VALUES ('47', '1', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-06-21 08:57:15');
INSERT INTO `fy_login_log` VALUES ('48', '1', '10.110.111.46', '局域网 局域网  ', 'Firefox(60.0)', 'Windows 7', '2018-06-21 08:57:16');
INSERT INTO `fy_login_log` VALUES ('49', '1', '10.110.111.36', '局域网 局域网  ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-06-21 09:49:33');
INSERT INTO `fy_login_log` VALUES ('50', '2', '10.110.111.36', '局域网 局域网  ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-06-21 10:13:34');
INSERT INTO `fy_login_log` VALUES ('51', '1', '10.110.111.36', '局域网 局域网  ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-06-21 10:16:09');
INSERT INTO `fy_login_log` VALUES ('52', '1', '10.110.111.36', '局域网 局域网  ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-06-21 10:20:53');
INSERT INTO `fy_login_log` VALUES ('53', '2', '10.110.111.36', '局域网 局域网  ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-06-21 10:22:09');
INSERT INTO `fy_login_log` VALUES ('54', '1', '10.110.111.36', '局域网 局域网  ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-06-21 10:44:38');
INSERT INTO `fy_login_log` VALUES ('55', '1', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-06-21 11:39:25');
INSERT INTO `fy_login_log` VALUES ('56', '1', '10.110.111.36', '局域网 局域网  ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-06-21 13:30:29');
INSERT INTO `fy_login_log` VALUES ('57', '1', '10.110.111.46', '局域网 局域网  ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-06-21 14:23:36');
INSERT INTO `fy_login_log` VALUES ('58', '1', '10.27.19.10', '局域网 局域网  ', 'Chrome(62.0.3202.62)', 'Windows 10', '2018-06-21 14:38:23');
INSERT INTO `fy_login_log` VALUES ('59', '1', '10.27.19.10', '局域网 局域网  ', 'Chrome(62.0.3202.62)', 'Windows 10', '2018-06-21 14:42:12');
INSERT INTO `fy_login_log` VALUES ('60', '1', '10.110.111.46', '局域网 局域网  ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-06-21 14:56:02');
INSERT INTO `fy_login_log` VALUES ('61', '2', '10.110.111.36', '局域网 局域网  ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-06-21 14:56:16');
INSERT INTO `fy_login_log` VALUES ('62', '4', '10.110.111.36', '局域网 局域网  ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-06-21 15:01:52');
INSERT INTO `fy_login_log` VALUES ('63', '1', '10.27.19.10', '局域网 局域网  ', 'Chrome(62.0.3202.62)', 'Windows 10', '2018-06-21 15:43:46');
INSERT INTO `fy_login_log` VALUES ('64', '1', '10.110.111.36', '局域网 局域网  ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-06-21 16:37:46');
INSERT INTO `fy_login_log` VALUES ('65', '2', '10.110.111.36', '局域网 局域网  ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-06-21 17:09:34');
INSERT INTO `fy_login_log` VALUES ('66', '1', '10.110.111.36', '局域网 局域网  ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-06-21 17:10:32');
INSERT INTO `fy_login_log` VALUES ('67', '1', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-06-22 09:05:32');
INSERT INTO `fy_login_log` VALUES ('68', '1', '10.110.111.36', '局域网 局域网  ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-06-22 09:14:46');
INSERT INTO `fy_login_log` VALUES ('69', '1', '10.110.111.23', '局域网 局域网  ', 'Edge(16.16299)', 'Windows 10', '2018-06-22 09:24:24');
INSERT INTO `fy_login_log` VALUES ('70', '1', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-06-22 09:28:00');
INSERT INTO `fy_login_log` VALUES ('71', '1', '10.110.111.46', '局域网 局域网  ', 'Firefox(60.0)', 'Windows 7', '2018-06-22 10:00:50');
INSERT INTO `fy_login_log` VALUES ('72', '1', '10.27.19.10', '局域网 局域网  ', 'Chrome(62.0.3202.62)', 'Windows 10', '2018-06-22 10:10:27');
INSERT INTO `fy_login_log` VALUES ('73', '1', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-06-22 10:16:06');
INSERT INTO `fy_login_log` VALUES ('74', '1', '10.110.111.23', '局域网 局域网  ', 'Edge(16.16299)', 'Windows 10', '2018-06-22 11:53:18');
INSERT INTO `fy_login_log` VALUES ('75', '1', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-06-25 08:52:01');
INSERT INTO `fy_login_log` VALUES ('76', '1', '10.110.111.46', '局域网 局域网  ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-06-25 10:01:56');
INSERT INTO `fy_login_log` VALUES ('77', '1', '10.110.111.36', '局域网 局域网  ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-06-25 10:35:25');
INSERT INTO `fy_login_log` VALUES ('78', '1', '10.27.19.10', '局域网 局域网  ', 'Chrome(62.0.3202.62)', 'Windows 10', '2018-06-25 11:31:17');
INSERT INTO `fy_login_log` VALUES ('79', '1', '10.110.111.38', '局域网 局域网  ', 'Chrome(64.0.3282.186)', 'Windows 10', '2018-06-25 12:04:50');
INSERT INTO `fy_login_log` VALUES ('80', '1', '10.27.19.10', '局域网 局域网  ', 'Chrome(62.0.3202.62)', 'Windows 10', '2018-06-25 13:40:33');
INSERT INTO `fy_login_log` VALUES ('81', '1', '10.27.19.10', '局域网 局域网  ', 'Chrome(62.0.3202.62)', 'Windows 10', '2018-06-25 13:50:18');
INSERT INTO `fy_login_log` VALUES ('82', '1', '10.27.19.10', '局域网 局域网  ', 'Chrome(62.0.3202.62)', 'Windows 10', '2018-06-25 14:07:25');
INSERT INTO `fy_login_log` VALUES ('83', '1', '10.110.111.23', '局域网 局域网  ', 'Edge(16.16299)', 'Windows 10', '2018-06-25 14:20:45');
INSERT INTO `fy_login_log` VALUES ('84', '1', '10.110.111.36', '局域网 局域网  ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-06-25 14:29:54');
INSERT INTO `fy_login_log` VALUES ('85', '1', '10.27.19.10', '局域网 局域网  ', 'Chrome(62.0.3202.62)', 'Windows 10', '2018-06-25 15:10:41');
INSERT INTO `fy_login_log` VALUES ('86', '1', '10.27.19.10', '局域网 局域网  ', 'Chrome(62.0.3202.62)', 'Windows 10', '2018-06-25 15:24:30');
INSERT INTO `fy_login_log` VALUES ('87', '1', '10.27.19.10', '局域网 局域网  ', 'Chrome(62.0.3202.62)', 'Windows 10', '2018-06-26 09:05:04');
INSERT INTO `fy_login_log` VALUES ('88', '1', '10.27.19.10', '局域网 局域网  ', 'Chrome(62.0.3202.62)', 'Windows 10', '2018-06-26 09:08:05');
INSERT INTO `fy_login_log` VALUES ('89', '1', '10.110.111.46', '局域网 局域网  ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-06-26 09:15:43');
INSERT INTO `fy_login_log` VALUES ('90', '1', '10.110.111.36', '局域网 局域网  ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-06-26 09:48:16');
INSERT INTO `fy_login_log` VALUES ('91', '1', '10.27.19.10', '局域网 局域网  ', 'Chrome(62.0.3202.62)', 'Windows 10', '2018-06-26 11:47:00');
INSERT INTO `fy_login_log` VALUES ('92', '1', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-06-26 14:49:29');
INSERT INTO `fy_login_log` VALUES ('93', '1', '10.110.111.46', '局域网 局域网  ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-06-27 09:02:18');
INSERT INTO `fy_login_log` VALUES ('94', '1', '10.110.111.36', '局域网 局域网  ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-06-27 14:16:20');
INSERT INTO `fy_login_log` VALUES ('95', '1', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-06-27 16:55:14');
INSERT INTO `fy_login_log` VALUES ('96', '1', '10.27.19.10', '局域网 局域网  ', 'Chrome(62.0.3202.62)', 'Windows 10', '2018-06-27 17:57:37');
INSERT INTO `fy_login_log` VALUES ('97', '1', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-06-28 08:52:23');
INSERT INTO `fy_login_log` VALUES ('98', '1', '10.110.111.46', '局域网 局域网  ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-06-28 09:06:30');
INSERT INTO `fy_login_log` VALUES ('99', '1', '10.110.111.36', '局域网 局域网  ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-06-28 09:15:09');
INSERT INTO `fy_login_log` VALUES ('100', '1', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-06-29 09:05:54');
INSERT INTO `fy_login_log` VALUES ('101', '1', '10.110.111.46', '局域网 局域网  ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-06-29 09:27:37');
INSERT INTO `fy_login_log` VALUES ('102', '1', '10.110.111.36', '局域网 局域网  ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-06-29 09:56:51');
INSERT INTO `fy_login_log` VALUES ('103', '1', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-06-29 16:55:33');
INSERT INTO `fy_login_log` VALUES ('104', '1', '10.110.111.46', '局域网 局域网  ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-06-30 08:48:27');
INSERT INTO `fy_login_log` VALUES ('105', '3', '10.110.111.46', '局域网 局域网  ', 'Firefox(61.0)', 'Windows 7', '2018-06-30 15:42:30');
INSERT INTO `fy_login_log` VALUES ('106', '3', '10.110.111.46', '局域网 局域网  ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-06-30 17:36:42');
INSERT INTO `fy_login_log` VALUES ('107', '1', '10.110.111.46', '局域网 局域网  ', 'Firefox(61.0)', 'Windows 7', '2018-07-02 08:55:34');
INSERT INTO `fy_login_log` VALUES ('108', '1', '10.27.19.10', '局域网 局域网  ', 'Chrome(62.0.3202.62)', 'Windows 10', '2018-07-02 09:47:01');
INSERT INTO `fy_login_log` VALUES ('109', '1', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-07-02 10:51:16');
INSERT INTO `fy_login_log` VALUES ('110', '1', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-07-02 13:03:22');
INSERT INTO `fy_login_log` VALUES ('111', '1', '10.110.111.36', '局域网 局域网  ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-07-02 13:06:52');
INSERT INTO `fy_login_log` VALUES ('112', '1', '10.20.1.65', '局域网 局域网  ', 'Firefox(60.0)', 'Windows NT', '2018-07-02 14:22:19');
INSERT INTO `fy_login_log` VALUES ('113', '1', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-07-02 14:47:46');
INSERT INTO `fy_login_log` VALUES ('114', '1', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-07-02 15:54:51');
INSERT INTO `fy_login_log` VALUES ('115', '1', '10.20.1.65', '局域网 局域网  ', 'Firefox(60.0)', 'Windows NT', '2018-07-02 16:12:16');
INSERT INTO `fy_login_log` VALUES ('116', '1', '10.110.111.46', '局域网 局域网  ', 'Firefox(61.0)', 'Windows 7', '2018-07-02 17:00:42');
INSERT INTO `fy_login_log` VALUES ('117', '1', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-07-02 17:28:46');
INSERT INTO `fy_login_log` VALUES ('118', '1', '10.110.111.46', '局域网 局域网  ', 'Firefox(61.0)', 'Windows 7', '2018-07-03 08:52:33');
INSERT INTO `fy_login_log` VALUES ('119', '1', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-07-03 10:34:53');
INSERT INTO `fy_login_log` VALUES ('120', '1', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-07-03 11:07:45');
INSERT INTO `fy_login_log` VALUES ('121', '1', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-07-03 11:33:03');
INSERT INTO `fy_login_log` VALUES ('122', '1', '10.110.111.36', '局域网 局域网  ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-07-03 14:31:58');
INSERT INTO `fy_login_log` VALUES ('123', '1', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-07-03 17:14:16');
INSERT INTO `fy_login_log` VALUES ('124', '1', '10.27.19.10', '局域网 局域网  ', 'Chrome(62.0.3202.62)', 'Windows 10', '2018-07-03 17:40:41');
INSERT INTO `fy_login_log` VALUES ('125', '1', '10.110.111.46', '局域网 局域网  ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-07-04 09:09:42');
INSERT INTO `fy_login_log` VALUES ('126', '1', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-07-04 09:41:53');
INSERT INTO `fy_login_log` VALUES ('127', '1', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-07-04 10:23:43');
INSERT INTO `fy_login_log` VALUES ('128', '1', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-07-04 10:24:10');
INSERT INTO `fy_login_log` VALUES ('129', '1', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-07-04 10:55:48');
INSERT INTO `fy_login_log` VALUES ('130', '1', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-07-04 11:17:45');
INSERT INTO `fy_login_log` VALUES ('131', '1', '10.20.1.65', '局域网 局域网  ', 'Chrome(67.0.3396.99)', 'Windows NT', '2018-07-05 10:29:43');
INSERT INTO `fy_login_log` VALUES ('132', '1', '10.110.111.46', '局域网 局域网  ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-07-05 13:22:50');
INSERT INTO `fy_login_log` VALUES ('133', '1', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-07-06 09:12:59');
INSERT INTO `fy_login_log` VALUES ('134', '1', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-07-06 13:40:20');
INSERT INTO `fy_login_log` VALUES ('135', '1', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-07-06 13:59:44');
INSERT INTO `fy_login_log` VALUES ('136', '1', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-07-09 09:48:00');
INSERT INTO `fy_login_log` VALUES ('137', '1', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-07-09 10:09:01');
INSERT INTO `fy_login_log` VALUES ('138', '1', '220.197.182.89', '中国 贵州 贵阳 ', 'Firefox(61.0)', 'Windows 7', '2018-07-09 15:28:01');
INSERT INTO `fy_login_log` VALUES ('139', '1', '220.197.182.89', '中国 贵州 贵阳 ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-07-10 13:26:13');
INSERT INTO `fy_login_log` VALUES ('140', '1', '220.197.182.89', '中国 贵州 贵阳 ', 'Firefox(61.0)', 'Windows 7', '2018-07-11 10:28:58');
INSERT INTO `fy_login_log` VALUES ('141', '1', '220.197.182.70', '中国 贵州 贵阳 ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-07-12 08:50:32');
INSERT INTO `fy_login_log` VALUES ('142', '3', '220.197.182.70', '中国 贵州 贵阳 ', 'Firefox(61.0)', 'Windows 7', '2018-07-12 09:20:20');
INSERT INTO `fy_login_log` VALUES ('143', '3', '220.197.182.70', '中国 贵州 贵阳 ', 'Firefox(61.0)', 'Windows 7', '2018-07-12 09:55:40');
INSERT INTO `fy_login_log` VALUES ('144', '1', '220.197.182.72', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-07-12 10:17:39');
INSERT INTO `fy_login_log` VALUES ('145', '1', '220.197.182.72', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-07-12 14:17:40');
INSERT INTO `fy_login_log` VALUES ('146', '1', '220.197.182.72', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-07-12 16:25:28');
INSERT INTO `fy_login_log` VALUES ('147', '1', '220.197.182.70', '中国 贵州 贵阳 ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-07-13 09:22:19');
INSERT INTO `fy_login_log` VALUES ('148', '1', '220.197.182.70', '中国 贵州 贵阳 ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-07-14 08:34:39');
INSERT INTO `fy_login_log` VALUES ('149', '3', '220.197.182.70', '中国 贵州 贵阳 ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-07-14 11:42:18');
INSERT INTO `fy_login_log` VALUES ('150', '1', '220.197.182.70', '中国 贵州 贵阳 ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-07-14 11:42:53');
INSERT INTO `fy_login_log` VALUES ('151', '1', '220.197.182.70', '中国 贵州 贵阳 ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-07-14 13:55:26');
INSERT INTO `fy_login_log` VALUES ('152', '1', '220.197.182.89', '中国 贵州 贵阳 ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-07-16 08:43:14');
INSERT INTO `fy_login_log` VALUES ('153', '1', '220.197.182.89', '中国 贵州 贵阳 ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-07-16 09:56:43');
INSERT INTO `fy_login_log` VALUES ('154', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-07-16 11:31:10');
INSERT INTO `fy_login_log` VALUES ('155', '1', '220.197.182.89', '中国 贵州 贵阳 ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-07-16 13:23:14');
INSERT INTO `fy_login_log` VALUES ('156', '1', '220.197.182.70', '中国 贵州 贵阳 ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-07-17 09:02:42');
INSERT INTO `fy_login_log` VALUES ('157', '1', '220.197.182.70', '中国 贵州 贵阳 ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-07-18 08:57:43');
INSERT INTO `fy_login_log` VALUES ('158', '1', '220.197.182.72', '中国 贵州 贵阳 ', 'Chrome(64.0.3282.186)', 'Windows 10', '2018-07-18 17:25:52');
INSERT INTO `fy_login_log` VALUES ('159', '1', '220.197.182.70', '中国 贵州 贵阳 ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-07-19 08:55:40');
INSERT INTO `fy_login_log` VALUES ('160', '1', '220.197.182.70', '中国 贵州 贵阳 ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-07-19 09:02:48');
INSERT INTO `fy_login_log` VALUES ('161', '1', '220.197.182.70', '中国 贵州 贵阳 ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-07-19 13:59:34');
INSERT INTO `fy_login_log` VALUES ('162', '1', '220.197.182.70', '中国 贵州 贵阳 ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-07-20 09:14:31');
INSERT INTO `fy_login_log` VALUES ('163', '1', '220.197.182.70', '中国 贵州 贵阳 ', 'Firefox(61.0)', 'Windows 7', '2018-07-24 08:50:53');
INSERT INTO `fy_login_log` VALUES ('164', '1', '220.197.182.72', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-07-24 10:05:15');
INSERT INTO `fy_login_log` VALUES ('165', '1', '220.197.182.72', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-07-24 11:39:14');
INSERT INTO `fy_login_log` VALUES ('166', '1', '220.197.182.70', '中国 贵州 贵阳 ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-07-24 15:49:34');
INSERT INTO `fy_login_log` VALUES ('167', '1', '220.197.182.70', '中国 贵州 贵阳 ', 'Firefox(61.0)', 'Windows 7', '2018-07-24 17:13:49');
INSERT INTO `fy_login_log` VALUES ('168', '1', '220.197.182.72', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-07-24 17:52:54');
INSERT INTO `fy_login_log` VALUES ('169', '1', '117.188.29.145', '中国 中国  ', 'Chrome(64.0.3282.186)', 'Windows 7', '2018-07-24 21:42:24');
INSERT INTO `fy_login_log` VALUES ('170', '1', '220.197.182.70', '中国 贵州 贵阳 ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-07-25 09:06:20');
INSERT INTO `fy_login_log` VALUES ('171', '1', '220.197.182.70', '中国 贵州 贵阳 ', 'Firefox(61.0)', 'Windows 7', '2018-07-25 09:10:49');
INSERT INTO `fy_login_log` VALUES ('172', '2', '220.197.182.70', '中国 贵州 贵阳 ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-07-25 09:35:21');
INSERT INTO `fy_login_log` VALUES ('173', '1', '220.197.182.70', '中国 贵州 贵阳 ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-07-25 09:57:06');
INSERT INTO `fy_login_log` VALUES ('174', '1', '220.197.182.72', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-07-25 10:03:46');
INSERT INTO `fy_login_log` VALUES ('175', '1', '220.197.182.70', '中国 贵州 贵阳 ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-07-25 13:47:31');
INSERT INTO `fy_login_log` VALUES ('176', '1', '220.197.182.89', '中国 贵州 贵阳 ', 'Firefox(61.0)', 'Windows 7', '2018-07-25 16:35:36');
INSERT INTO `fy_login_log` VALUES ('177', '1', '220.197.182.87', '中国 贵州 贵阳 ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-07-26 09:16:21');
INSERT INTO `fy_login_log` VALUES ('178', '1', '220.197.182.89', '中国 贵州 贵阳 ', 'Firefox(61.0)', 'Windows 7', '2018-07-26 09:17:56');
INSERT INTO `fy_login_log` VALUES ('179', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-07-26 10:36:49');
INSERT INTO `fy_login_log` VALUES ('180', '1', '220.197.182.85', '中国 贵州 贵阳 ', 'Chrome(62.0.3202.62)', 'Windows 10', '2018-07-26 14:12:11');
INSERT INTO `fy_login_log` VALUES ('181', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-07-26 15:03:05');
INSERT INTO `fy_login_log` VALUES ('182', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-07-26 17:09:01');
INSERT INTO `fy_login_log` VALUES ('183', '3', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-07-26 18:15:59');
INSERT INTO `fy_login_log` VALUES ('184', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-07-26 18:16:39');
INSERT INTO `fy_login_log` VALUES ('185', '1', '220.197.182.87', '中国 贵州 贵阳 ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-07-27 08:49:23');
INSERT INTO `fy_login_log` VALUES ('186', '2', '220.197.182.87', '中国 贵州 贵阳 ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-07-27 08:51:35');
INSERT INTO `fy_login_log` VALUES ('187', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-07-27 08:53:50');
INSERT INTO `fy_login_log` VALUES ('188', '1', '220.197.182.89', '中国 贵州 贵阳 ', 'Firefox(61.0)', 'Windows 7', '2018-07-27 08:57:03');
INSERT INTO `fy_login_log` VALUES ('189', '1', '220.197.182.87', '中国 贵州 贵阳 ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-07-27 08:59:14');
INSERT INTO `fy_login_log` VALUES ('190', '1', '220.197.182.72', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-07-27 10:14:02');
INSERT INTO `fy_login_log` VALUES ('191', '1', '220.197.182.72', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-07-27 11:09:27');
INSERT INTO `fy_login_log` VALUES ('192', '1', '220.197.182.70', '中国 贵州 贵阳 ', 'Firefox(61.0)', 'Windows 7', '2018-07-27 11:13:17');
INSERT INTO `fy_login_log` VALUES ('193', '1', '220.197.182.89', '中国 贵州 贵阳 ', 'Firefox(61.0)', 'Windows 7', '2018-07-27 15:58:21');
INSERT INTO `fy_login_log` VALUES ('194', '3', '220.197.182.89', '中国 贵州 贵阳 ', 'Chrome(41.0.2272.89)', 'Windows 7', '2018-07-27 17:14:38');
INSERT INTO `fy_login_log` VALUES ('195', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-07-27 17:47:57');
INSERT INTO `fy_login_log` VALUES ('196', '1', '220.197.182.70', '中国 贵州 贵阳 ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-07-30 09:42:43');
INSERT INTO `fy_login_log` VALUES ('197', '1', '220.197.182.70', '中国 贵州 贵阳 ', 'Firefox(61.0)', 'Windows 7', '2018-07-30 11:56:28');
INSERT INTO `fy_login_log` VALUES ('198', '1', '220.197.182.89', '中国 贵州 贵阳 ', 'Chrome(64.0.3282.186)', 'Windows 10', '2018-07-30 20:15:30');
INSERT INTO `fy_login_log` VALUES ('199', '1', '220.197.182.87', '中国 贵州 贵阳 ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-07-31 08:39:17');
INSERT INTO `fy_login_log` VALUES ('200', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-07-31 08:46:13');
INSERT INTO `fy_login_log` VALUES ('201', '1', '220.197.182.89', '中国 贵州 贵阳 ', 'Firefox(61.0)', 'Windows 7', '2018-07-31 08:49:36');
INSERT INTO `fy_login_log` VALUES ('202', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-07-31 09:14:04');
INSERT INTO `fy_login_log` VALUES ('203', '1', '220.197.182.87', '中国 贵州 贵阳 ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-07-31 13:21:02');
INSERT INTO `fy_login_log` VALUES ('204', '1', '220.197.182.87', '中国 贵州 贵阳 ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-07-31 17:40:42');
INSERT INTO `fy_login_log` VALUES ('205', '1', '220.197.182.85', '中国 贵州 贵阳 ', 'Chrome(62.0.3202.62)', 'Windows 10', '2018-07-31 17:55:42');
INSERT INTO `fy_login_log` VALUES ('206', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-07-31 18:12:29');
INSERT INTO `fy_login_log` VALUES ('207', '1', '220.197.182.89', '中国 贵州 贵阳 ', 'Firefox(61.0)', 'Windows 7', '2018-08-01 08:43:20');
INSERT INTO `fy_login_log` VALUES ('208', '1', '220.197.182.87', '中国 贵州 贵阳 ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-08-01 08:52:20');
INSERT INTO `fy_login_log` VALUES ('209', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-01 09:06:29');
INSERT INTO `fy_login_log` VALUES ('210', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-01 09:40:44');
INSERT INTO `fy_login_log` VALUES ('211', '2', '220.197.182.87', '中国 贵州 贵阳 ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-08-01 10:46:51');
INSERT INTO `fy_login_log` VALUES ('212', '1', '220.197.182.87', '中国 贵州 贵阳 ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-08-01 11:11:35');
INSERT INTO `fy_login_log` VALUES ('213', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-01 13:32:58');
INSERT INTO `fy_login_log` VALUES ('214', '1', '220.197.182.87', '中国 贵州 贵阳 ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-08-01 13:56:14');
INSERT INTO `fy_login_log` VALUES ('215', '1', '220.197.182.85', '中国 贵州 贵阳 ', 'Chrome(62.0.3202.62)', 'Windows 10', '2018-08-01 14:37:43');
INSERT INTO `fy_login_log` VALUES ('216', '1', '220.197.182.87', '中国 贵州 贵阳 ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-08-01 16:05:50');
INSERT INTO `fy_login_log` VALUES ('217', '2', '220.197.182.87', '中国 贵州 贵阳 ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-08-01 16:17:14');
INSERT INTO `fy_login_log` VALUES ('218', '1', '220.197.182.87', '中国 贵州 贵阳 ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-08-01 16:17:27');
INSERT INTO `fy_login_log` VALUES ('219', '5', '220.197.182.87', '中国 贵州 贵阳 ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-08-01 17:19:51');
INSERT INTO `fy_login_log` VALUES ('220', '1', '220.197.182.87', '中国 贵州 贵阳 ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-08-01 17:22:21');
INSERT INTO `fy_login_log` VALUES ('221', '5', '220.197.182.87', '中国 贵州 贵阳 ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-08-01 17:24:03');
INSERT INTO `fy_login_log` VALUES ('222', '1', '220.197.182.87', '中国 贵州 贵阳 ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-08-01 17:25:58');
INSERT INTO `fy_login_log` VALUES ('223', '5', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-01 17:29:18');
INSERT INTO `fy_login_log` VALUES ('224', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-01 17:29:38');
INSERT INTO `fy_login_log` VALUES ('225', '5', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-01 17:40:41');
INSERT INTO `fy_login_log` VALUES ('226', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-01 17:41:30');
INSERT INTO `fy_login_log` VALUES ('227', '5', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-01 17:42:10');
INSERT INTO `fy_login_log` VALUES ('228', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-01 17:42:30');
INSERT INTO `fy_login_log` VALUES ('229', '5', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-01 17:42:51');
INSERT INTO `fy_login_log` VALUES ('230', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-01 17:43:08');
INSERT INTO `fy_login_log` VALUES ('231', '5', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-01 17:43:56');
INSERT INTO `fy_login_log` VALUES ('232', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-01 17:44:18');
INSERT INTO `fy_login_log` VALUES ('233', '5', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-01 17:45:13');
INSERT INTO `fy_login_log` VALUES ('234', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Edge(17.17134)', 'Windows 10', '2018-08-01 17:45:58');
INSERT INTO `fy_login_log` VALUES ('235', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-01 17:55:53');
INSERT INTO `fy_login_log` VALUES ('236', '1', '220.197.182.69', '中国 贵州 贵阳 ', 'Firefox(61.0)', 'Windows NT', '2018-08-02 08:39:53');
INSERT INTO `fy_login_log` VALUES ('237', '1', '220.197.182.69', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.99)', 'Windows NT', '2018-08-02 08:46:20');
INSERT INTO `fy_login_log` VALUES ('238', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-02 08:56:36');
INSERT INTO `fy_login_log` VALUES ('239', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Edge(17.17134)', 'Windows 10', '2018-08-02 09:04:28');
INSERT INTO `fy_login_log` VALUES ('240', '5', '220.197.182.69', '中国 贵州 贵阳 ', 'IE(8.0)', 'Windows 7', '2018-08-02 10:05:30');
INSERT INTO `fy_login_log` VALUES ('241', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-02 11:01:30');
INSERT INTO `fy_login_log` VALUES ('242', '1', '220.197.182.69', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.99)', 'Windows NT', '2018-08-02 11:04:08');
INSERT INTO `fy_login_log` VALUES ('243', '5', '220.197.182.69', '中国 贵州 贵阳 ', 'IE(8.0)', 'Windows 7', '2018-08-02 11:36:17');
INSERT INTO `fy_login_log` VALUES ('244', '1', '220.197.182.87', '中国 贵州 贵阳 ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-08-02 13:41:53');
INSERT INTO `fy_login_log` VALUES ('245', '1', '220.197.182.69', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.99)', 'Windows NT', '2018-08-02 14:33:19');
INSERT INTO `fy_login_log` VALUES ('246', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-02 14:33:28');
INSERT INTO `fy_login_log` VALUES ('247', '1', '220.197.182.87', '中国 贵州 贵阳 ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-08-02 16:25:50');
INSERT INTO `fy_login_log` VALUES ('248', '5', '220.197.182.69', '中国 贵州 贵阳 ', 'IE(8.0)', 'Windows 7', '2018-08-02 16:33:48');
INSERT INTO `fy_login_log` VALUES ('249', '5', '220.197.182.69', '中国 贵州 贵阳 ', 'Chrome(39.0.2171.95)', 'Windows 95', '2018-08-02 16:36:37');
INSERT INTO `fy_login_log` VALUES ('250', '5', '220.197.182.69', '中国 贵州 贵阳 ', 'Chrome(39.0.2171.95)', 'Windows 95', '2018-08-03 08:42:16');
INSERT INTO `fy_login_log` VALUES ('251', '1', '220.197.182.87', '中国 贵州 贵阳 ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-08-03 08:56:48');
INSERT INTO `fy_login_log` VALUES ('252', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-03 09:03:40');
INSERT INTO `fy_login_log` VALUES ('253', '5', '220.197.182.69', '中国 贵州 贵阳 ', 'Firefox(61.0)', 'Windows NT', '2018-08-03 09:50:43');
INSERT INTO `fy_login_log` VALUES ('254', '5', '220.197.182.69', '中国 贵州 贵阳 ', 'Firefox(61.0)', 'Windows NT', '2018-08-03 09:56:22');
INSERT INTO `fy_login_log` VALUES ('255', '5', '220.197.182.69', '中国 贵州 贵阳 ', 'Chrome(39.0.2171.95)', 'Windows 95', '2018-08-03 09:57:47');
INSERT INTO `fy_login_log` VALUES ('256', '5', '220.197.182.69', '中国 贵州 贵阳 ', 'Firefox(61.0)', 'Windows NT', '2018-08-03 10:19:07');
INSERT INTO `fy_login_log` VALUES ('257', '5', '220.197.182.69', '中国 贵州 贵阳 ', 'Firefox(61.0)', 'Windows NT', '2018-08-03 10:21:53');
INSERT INTO `fy_login_log` VALUES ('258', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-03 11:04:27');
INSERT INTO `fy_login_log` VALUES ('259', '1', '220.197.182.69', '中国 贵州 贵阳 ', 'Chrome(39.0.2171.95)', 'Windows 95', '2018-08-03 13:51:40');
INSERT INTO `fy_login_log` VALUES ('260', '5', '220.197.182.69', '中国 贵州 贵阳 ', 'Chrome(39.0.2171.95)', 'Windows 95', '2018-08-03 13:52:45');
INSERT INTO `fy_login_log` VALUES ('261', '1', '220.197.182.69', '中国 贵州 贵阳 ', 'Chrome(39.0.2171.95)', 'Windows 95', '2018-08-03 13:55:42');
INSERT INTO `fy_login_log` VALUES ('262', '5', '220.197.182.69', '中国 贵州 贵阳 ', 'IE(8.0)', 'Windows 7', '2018-08-03 14:03:39');
INSERT INTO `fy_login_log` VALUES ('263', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-03 14:24:53');
INSERT INTO `fy_login_log` VALUES ('264', '5', '220.197.182.69', '中国 贵州 贵阳 ', 'IE(8.0)', 'Windows 7', '2018-08-03 15:24:55');
INSERT INTO `fy_login_log` VALUES ('265', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-03 15:25:38');
INSERT INTO `fy_login_log` VALUES ('266', '1', '220.197.182.69', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.99)', 'Windows NT', '2018-08-03 15:44:04');
INSERT INTO `fy_login_log` VALUES ('267', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-03 16:36:49');
INSERT INTO `fy_login_log` VALUES ('268', '5', '220.197.182.69', '中国 贵州 贵阳 ', 'Firefox(61.0)', 'Windows NT', '2018-08-03 17:25:05');
INSERT INTO `fy_login_log` VALUES ('269', '1', '220.197.182.89', '中国 贵州 贵阳 ', 'Chrome(64.0.3282.186)', 'Windows 10', '2018-08-03 18:26:50');
INSERT INTO `fy_login_log` VALUES ('270', '1', '220.197.182.72', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-04 15:16:39');
INSERT INTO `fy_login_log` VALUES ('271', '1', '220.197.182.72', '中国 贵州 贵阳 ', 'Edge(17.17134)', 'Windows 10', '2018-08-04 15:41:53');
INSERT INTO `fy_login_log` VALUES ('272', '1', '220.197.182.87', '中国 贵州 贵阳 ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-08-06 08:54:57');
INSERT INTO `fy_login_log` VALUES ('273', '1', '220.197.182.69', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.99)', 'Windows NT', '2018-08-06 09:21:19');
INSERT INTO `fy_login_log` VALUES ('274', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-06 09:43:12');
INSERT INTO `fy_login_log` VALUES ('275', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-06 09:55:06');
INSERT INTO `fy_login_log` VALUES ('276', '1', '220.197.182.69', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.99)', 'Windows NT', '2018-08-06 11:40:20');
INSERT INTO `fy_login_log` VALUES ('277', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-06 13:26:56');
INSERT INTO `fy_login_log` VALUES ('278', '1', '220.197.182.85', '中国 贵州 贵阳 ', 'Chrome(62.0.3202.62)', 'Windows 10', '2018-08-06 14:06:06');
INSERT INTO `fy_login_log` VALUES ('279', '1', '220.197.182.85', '中国 贵州 贵阳 ', 'Chrome(62.0.3202.62)', 'Windows 10', '2018-08-06 14:08:57');
INSERT INTO `fy_login_log` VALUES ('280', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-07 08:50:08');
INSERT INTO `fy_login_log` VALUES ('281', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-07 15:30:34');
INSERT INTO `fy_login_log` VALUES ('282', '5', '220.197.182.84', '中国 贵州 贵阳 ', 'IE(9.0)', 'Windows 7', '2018-08-08 09:26:27');
INSERT INTO `fy_login_log` VALUES ('283', '5', '220.197.182.69', '中国 贵州 贵阳 ', 'Chrome(39.0.2171.95)', 'Windows 95', '2018-08-08 09:38:09');
INSERT INTO `fy_login_log` VALUES ('284', '5', '220.197.182.84', '中国 贵州 贵阳 ', 'Chrome(39.0.2171.95)', 'Windows 95', '2018-08-08 09:40:00');
INSERT INTO `fy_login_log` VALUES ('285', '1', '220.197.182.69', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.99)', 'Windows NT', '2018-08-08 10:52:48');
INSERT INTO `fy_login_log` VALUES ('286', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-08 13:44:51');
INSERT INTO `fy_login_log` VALUES ('287', '1', '220.197.182.69', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.99)', 'Windows NT', '2018-08-08 14:02:20');
INSERT INTO `fy_login_log` VALUES ('288', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-08 14:17:10');
INSERT INTO `fy_login_log` VALUES ('289', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-08 14:28:10');
INSERT INTO `fy_login_log` VALUES ('290', '5', '220.197.182.84', '中国 贵州 贵阳 ', 'Chrome(39.0.2171.95)', 'Windows 95', '2018-08-08 14:36:55');
INSERT INTO `fy_login_log` VALUES ('291', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-09 10:37:07');
INSERT INTO `fy_login_log` VALUES ('292', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-09 10:38:24');
INSERT INTO `fy_login_log` VALUES ('293', '19', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-09 10:38:45');
INSERT INTO `fy_login_log` VALUES ('294', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-09 10:39:03');
INSERT INTO `fy_login_log` VALUES ('295', '19', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-09 10:39:48');
INSERT INTO `fy_login_log` VALUES ('296', '1', '220.197.182.72', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-09 10:58:02');
INSERT INTO `fy_login_log` VALUES ('297', '1', '220.197.182.72', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-09 11:05:46');
INSERT INTO `fy_login_log` VALUES ('298', '1', '220.197.182.72', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-09 11:26:38');
INSERT INTO `fy_login_log` VALUES ('299', '1', '220.197.182.84', '中国 贵州 贵阳 ', 'Firefox(61.0)', 'Windows NT', '2018-08-09 15:23:03');
INSERT INTO `fy_login_log` VALUES ('300', '1', '220.197.182.72', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-09 16:45:26');
INSERT INTO `fy_login_log` VALUES ('301', '19', '220.197.182.72', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-09 17:12:56');
INSERT INTO `fy_login_log` VALUES ('302', '1', '220.197.182.72', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-09 17:23:53');
INSERT INTO `fy_login_log` VALUES ('303', '20', '220.197.182.72', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-09 17:24:58');
INSERT INTO `fy_login_log` VALUES ('304', '1', '220.197.182.72', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-09 17:28:47');
INSERT INTO `fy_login_log` VALUES ('305', '1', '220.197.182.72', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-10 09:43:10');
INSERT INTO `fy_login_log` VALUES ('306', '1', '10.27.19.10', '局域网 局域网  ', 'Chrome(62.0.3202.62)', 'Windows 10', '2018-08-10 09:58:32');
INSERT INTO `fy_login_log` VALUES ('307', '1', '220.197.182.72', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-10 10:39:39');
INSERT INTO `fy_login_log` VALUES ('308', '20', '220.197.182.84', '中国 贵州 贵阳 ', 'Firefox(61.0)', 'Windows NT', '2018-08-10 13:39:52');
INSERT INTO `fy_login_log` VALUES ('309', '20', '220.197.182.84', '中国 贵州 贵阳 ', 'Firefox(61.0)', 'Windows NT', '2018-08-10 13:41:50');
INSERT INTO `fy_login_log` VALUES ('310', '20', '220.197.182.84', '中国 贵州 贵阳 ', 'Firefox(61.0)', 'Windows NT', '2018-08-10 13:42:58');
INSERT INTO `fy_login_log` VALUES ('311', '20', '220.197.182.84', '中国 贵州 贵阳 ', 'Firefox(61.0)', 'Windows NT', '2018-08-10 13:44:24');
INSERT INTO `fy_login_log` VALUES ('312', '1', '220.197.182.72', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-10 14:16:59');
INSERT INTO `fy_login_log` VALUES ('313', '20', '220.197.182.84', '中国 贵州 贵阳 ', 'Firefox(61.0)', 'Windows NT', '2018-08-10 14:51:54');
INSERT INTO `fy_login_log` VALUES ('314', '20', '220.197.182.84', '中国 贵州 贵阳 ', 'Firefox(61.0)', 'Windows NT', '2018-08-10 16:54:58');
INSERT INTO `fy_login_log` VALUES ('315', '1', '220.197.182.84', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.99)', 'Windows NT', '2018-08-13 09:55:40');
INSERT INTO `fy_login_log` VALUES ('316', '1', '220.197.182.72', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-13 09:56:09');
INSERT INTO `fy_login_log` VALUES ('317', '1', '10.27.19.10', '局域网 局域网  ', 'Chrome(62.0.3202.62)', 'Windows 10', '2018-08-13 10:04:03');
INSERT INTO `fy_login_log` VALUES ('318', '1', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-13 11:02:46');
INSERT INTO `fy_login_log` VALUES ('319', '1', '10.27.19.10', '局域网 局域网  ', 'Chrome(62.0.3202.62)', 'Windows 10', '2018-08-13 11:31:03');
INSERT INTO `fy_login_log` VALUES ('320', '1', '220.197.182.70', '中国 贵州 贵阳 ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-08-13 16:18:40');
INSERT INTO `fy_login_log` VALUES ('321', '1', '10.27.19.10', '局域网 局域网  ', 'Chrome(62.0.3202.62)', 'Windows 10', '2018-08-13 17:02:33');
INSERT INTO `fy_login_log` VALUES ('322', '1', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-14 08:59:44');
INSERT INTO `fy_login_log` VALUES ('323', '20', '220.197.182.84', '中国 贵州 贵阳 ', 'Firefox(61.0)', 'Windows NT', '2018-08-14 09:49:14');
INSERT INTO `fy_login_log` VALUES ('324', '1', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-14 11:44:45');
INSERT INTO `fy_login_log` VALUES ('325', '1', '220.197.182.72', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-14 14:04:22');
INSERT INTO `fy_login_log` VALUES ('326', '1', '220.197.182.70', '中国 贵州 贵阳 ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-08-14 14:04:48');
INSERT INTO `fy_login_log` VALUES ('327', '1', '220.197.182.72', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-14 14:51:07');
INSERT INTO `fy_login_log` VALUES ('328', '20', '220.197.182.84', '中国 贵州 贵阳 ', 'Firefox(61.0)', 'Windows NT', '2018-08-14 15:12:44');
INSERT INTO `fy_login_log` VALUES ('329', '20', '220.197.182.87', '中国 贵州 贵阳 ', 'Chrome(39.0.2171.95)', 'Windows 95', '2018-08-14 16:45:23');
INSERT INTO `fy_login_log` VALUES ('330', '1', '220.197.182.87', '中国 贵州 贵阳 ', 'Chrome(39.0.2171.95)', 'Windows 95', '2018-08-14 16:46:27');
INSERT INTO `fy_login_log` VALUES ('331', '1', '220.197.182.70', '中国 贵州 贵阳 ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-08-15 08:49:15');
INSERT INTO `fy_login_log` VALUES ('332', '1', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-15 09:34:38');
INSERT INTO `fy_login_log` VALUES ('333', '1', '220.197.182.72', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-15 09:37:34');
INSERT INTO `fy_login_log` VALUES ('334', '1', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-15 13:35:10');
INSERT INTO `fy_login_log` VALUES ('335', '1', '220.197.182.87', '中国 贵州 贵阳 ', 'Chrome(65.0.3325.181)', 'Windows 7', '2018-08-15 13:54:51');
INSERT INTO `fy_login_log` VALUES ('336', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-15 14:29:18');
INSERT INTO `fy_login_log` VALUES ('337', '1', '220.197.182.87', '中国 贵州 贵阳 ', 'Chrome(68.0.3440.106)', 'Windows 7', '2018-08-16 08:43:46');
INSERT INTO `fy_login_log` VALUES ('338', '1', '10.27.19.10', '局域网 局域网  ', 'Chrome(68.0.3440.106)', 'Windows 10', '2018-08-16 09:58:39');
INSERT INTO `fy_login_log` VALUES ('339', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-16 10:36:58');
INSERT INTO `fy_login_log` VALUES ('340', '1', '10.110.111.23', '局域网 局域网  ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-16 10:39:14');
INSERT INTO `fy_login_log` VALUES ('341', '1', '220.197.182.85', '中国 贵州 贵阳 ', 'Chrome(68.0.3440.106)', 'Windows 10', '2018-08-16 15:59:23');
INSERT INTO `fy_login_log` VALUES ('342', '1', '220.197.182.87', '中国 贵州 贵阳 ', 'Chrome(68.0.3440.106)', 'Windows 7', '2018-08-16 16:05:13');
INSERT INTO `fy_login_log` VALUES ('343', '1', '220.197.182.87', '中国 贵州 贵阳 ', 'Chrome(68.0.3440.106)', 'Windows 7', '2018-08-17 08:49:10');
INSERT INTO `fy_login_log` VALUES ('344', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-17 08:53:40');
INSERT INTO `fy_login_log` VALUES ('345', '1', '220.197.182.69', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.99)', 'Windows NT', '2018-08-17 10:14:33');
INSERT INTO `fy_login_log` VALUES ('346', '1', '220.197.182.69', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.99)', 'Windows NT', '2018-08-17 13:40:31');
INSERT INTO `fy_login_log` VALUES ('347', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-17 13:47:23');
INSERT INTO `fy_login_log` VALUES ('348', '1', '220.197.182.87', '中国 贵州 贵阳 ', 'Chrome(68.0.3440.106)', 'Windows 7', '2018-08-17 14:04:24');
INSERT INTO `fy_login_log` VALUES ('349', '1', '220.197.182.69', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.99)', 'Windows NT', '2018-08-17 16:12:32');
INSERT INTO `fy_login_log` VALUES ('350', '1', '220.197.182.90', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.62)', 'Windows 10', '2018-08-17 16:26:12');
INSERT INTO `fy_login_log` VALUES ('351', '1', '220.197.182.85', '中国 贵州 贵阳 ', 'Chrome(68.0.3440.106)', 'Windows 10', '2018-08-17 16:28:30');
INSERT INTO `fy_login_log` VALUES ('352', '1', '220.197.182.70', '中国 贵州 贵阳 ', 'Chrome(68.0.3440.106)', 'Windows 7', '2018-08-20 08:55:34');
INSERT INTO `fy_login_log` VALUES ('353', '1', '220.197.182.69', '中国 贵州 贵阳 ', 'IE(9.0)', 'Windows 7', '2018-08-20 09:49:49');
INSERT INTO `fy_login_log` VALUES ('354', '20', '220.197.182.87', '中国 贵州 贵阳 ', 'Chrome(39.0.2171.95)', 'Windows 95', '2018-08-20 09:49:58');
INSERT INTO `fy_login_log` VALUES ('355', '20', '220.197.182.87', '中国 贵州 贵阳 ', 'IE(8.0)', 'Windows 7', '2018-08-20 09:51:03');
INSERT INTO `fy_login_log` VALUES ('356', '1', '220.197.182.84', '中国 贵州 贵阳 ', 'Chrome(67.0.3396.99)', 'Windows NT', '2018-08-20 09:51:16');
INSERT INTO `fy_login_log` VALUES ('357', '1', '220.197.182.70', '中国 贵州 贵阳 ', 'Chrome(68.0.3440.106)', 'Windows 7', '2018-08-20 09:51:41');
INSERT INTO `fy_login_log` VALUES ('358', '20', '220.197.182.84', '中国 贵州 贵阳 ', 'Firefox(61.0)', 'Windows NT', '2018-08-20 09:51:42');
INSERT INTO `fy_login_log` VALUES ('359', '1', '220.197.182.87', '中国 贵州 贵阳 ', 'IE(8.0)', 'Windows 7', '2018-08-20 09:51:55');
INSERT INTO `fy_login_log` VALUES ('360', '23', '220.197.182.70', '中国 贵州 贵阳 ', 'Chrome(68.0.3440.106)', 'Windows 7', '2018-08-20 09:52:13');
INSERT INTO `fy_login_log` VALUES ('361', '1', '220.197.182.70', '中国 贵州 贵阳 ', 'Chrome(68.0.3440.106)', 'Windows 7', '2018-08-20 09:53:25');
INSERT INTO `fy_login_log` VALUES ('362', '23', '220.197.182.70', '中国 贵州 贵阳 ', 'Chrome(68.0.3440.106)', 'Windows 7', '2018-08-20 09:55:33');
INSERT INTO `fy_login_log` VALUES ('363', '1', '220.197.182.69', '中国 贵州 贵阳 ', 'Chrome(39.0.2171.95)', 'Windows 95', '2018-08-20 09:59:35');
INSERT INTO `fy_login_log` VALUES ('364', '1', '220.197.182.70', '中国 贵州 贵阳 ', 'Chrome(68.0.3440.106)', 'Windows 7', '2018-08-20 10:10:37');
INSERT INTO `fy_login_log` VALUES ('365', '23', '220.197.182.70', '中国 贵州 贵阳 ', 'Chrome(68.0.3440.106)', 'Windows 7', '2018-08-20 10:13:21');
INSERT INTO `fy_login_log` VALUES ('366', '1', '220.197.182.70', '中国 贵州 贵阳 ', 'Chrome(68.0.3440.106)', 'Windows 7', '2018-08-20 10:13:47');
INSERT INTO `fy_login_log` VALUES ('367', '23', '220.197.182.70', '中国 贵州 贵阳 ', 'Chrome(68.0.3440.106)', 'Windows 7', '2018-08-20 10:15:48');
INSERT INTO `fy_login_log` VALUES ('368', '1', '220.197.182.70', '中国 贵州 贵阳 ', 'Chrome(68.0.3440.106)', 'Windows 7', '2018-08-20 10:16:17');
INSERT INTO `fy_login_log` VALUES ('369', '23', '220.197.182.70', '中国 贵州 贵阳 ', 'Chrome(68.0.3440.106)', 'Windows 7', '2018-08-20 10:16:41');
INSERT INTO `fy_login_log` VALUES ('370', '1', '220.197.182.70', '中国 贵州 贵阳 ', 'Chrome(68.0.3440.106)', 'Windows 7', '2018-08-20 10:17:10');
INSERT INTO `fy_login_log` VALUES ('371', '23', '220.197.182.70', '中国 贵州 贵阳 ', 'Chrome(68.0.3440.106)', 'Windows 7', '2018-08-20 10:36:59');
INSERT INTO `fy_login_log` VALUES ('372', '1', '220.197.182.70', '中国 贵州 贵阳 ', 'Chrome(68.0.3440.106)', 'Windows 7', '2018-08-20 10:37:13');
INSERT INTO `fy_login_log` VALUES ('373', '1', '220.197.182.87', '中国 贵州 贵阳 ', 'IE(8.0)', 'Windows 7', '2018-08-20 10:57:29');
INSERT INTO `fy_login_log` VALUES ('374', '20', '220.197.182.87', '中国 贵州 贵阳 ', 'IE(8.0)', 'Windows 7', '2018-08-20 11:08:13');
INSERT INTO `fy_login_log` VALUES ('375', '20', '220.197.182.87', '中国 贵州 贵阳 ', 'Chrome(68.0.3440.106)', 'Windows 7', '2018-08-20 11:46:30');
INSERT INTO `fy_login_log` VALUES ('376', '20', '220.197.182.87', '中国 贵州 贵阳 ', 'Chrome(68.0.3440.106)', 'Windows 7', '2018-08-20 15:19:11');
INSERT INTO `fy_login_log` VALUES ('377', '20', '220.197.182.84', '中国 贵州 贵阳 ', 'Firefox(61.0)', 'Windows NT', '2018-08-20 15:19:46');
INSERT INTO `fy_login_log` VALUES ('378', '1', '220.197.182.69', '中国 贵州 贵阳 ', 'Chrome(68.0.3440.106)', 'Windows 10', '2018-08-20 15:44:29');
INSERT INTO `fy_login_log` VALUES ('379', '1', '220.197.182.87', '中国 贵州 贵阳 ', 'IE(8.0)', 'Windows 7', '2018-08-20 16:03:48');
INSERT INTO `fy_login_log` VALUES ('380', '1', '220.197.182.70', '中国 贵州 贵阳 ', 'Chrome(68.0.3440.106)', 'Windows 7', '2018-08-20 16:54:26');
INSERT INTO `fy_login_log` VALUES ('381', '1', '220.197.182.69', '中国 贵州 贵阳 ', 'Chrome(68.0.3440.106)', 'Windows 10', '2018-08-20 17:02:02');
INSERT INTO `fy_login_log` VALUES ('382', '1', '220.197.182.87', '中国 贵州 贵阳 ', 'Chrome(68.0.3440.106)', 'Windows 7', '2018-08-21 08:56:14');
INSERT INTO `fy_login_log` VALUES ('383', '1', '220.197.182.69', '中国 贵州 贵阳 ', 'Chrome(68.0.3440.106)', 'Windows NT', '2018-08-21 14:06:35');

-- ----------------------------
-- Table structure for fy_lottery
-- ----------------------------
DROP TABLE IF EXISTS `fy_lottery`;
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_lottery
-- ----------------------------
INSERT INTO `fy_lottery` VALUES ('23', '优惠券1（新人礼包）', '', '/tmp/uploads/20180820/3b56c472c8074fc71b778ea6227d0138.jpg', '0', '0', '0', '0', '2', '1.00', '2.00', '0', '19', '19', 'all', null, '', '&lt;p&gt;满2元减1元优惠券&lt;/p&gt;', '1', null, '0', '21', '1', '30', '0');
INSERT INTO `fy_lottery` VALUES ('24', '优惠券2', '', '/tmp/uploads/20180817/efb24ce395360a34dfca9e0e0087fef0.png', '1534348800', '1534608000', '1534435200', '1534694400', '2', '2.00', '4.00', '0', '30', '26', 'all', null, '', '', '1', null, '0', '21', '0', '0', '0');
INSERT INTO `fy_lottery` VALUES ('25', '优惠券3（生日礼包）', '', '/tmp/uploads/20180817/c8dfb57099ea9114d9808489899e68fe.png', '0', '0', '0', '0', '2', '20.00', '20.00', '0', '49', '49', 'all', null, '', '', '1', null, '0', '1', '1', '30', '1');
INSERT INTO `fy_lottery` VALUES ('26', '测试券', '', '/tmp/uploads/20180817/a4c90f3eeaaee35cd74223d1b891d428.png', '1534486243', '1534745447', '1534572652', '1534831855', '2', '1.00', '1.00', '0', '50', '47', 'all', null, '', '', '1', null, '0', '1', '0', '0', '0');
INSERT INTO `fy_lottery` VALUES ('27', '优惠券3', '', '/tmp/uploads/20180817/ab564b441a4c16d9c72df4217776a863.png', '0', '0', '0', '0', '2', '3.00', '3.00', '1', '49', '46', 'all', null, '', '', '1', null, '0', '1', '1', '3', '0');
INSERT INTO `fy_lottery` VALUES ('28', 'test', '', '/tmp/uploads/20180726/9b929b23d42150cc92a31a3261765898.jpg', '0', '0', '0', '0', '2', '1.00', '11.00', '0', '33', '33', 'all', null, '', '&lt;p&gt;3333333333333333333333&lt;/p&gt;', '0', null, '0', '20', '1', '12', '0');
INSERT INTO `fy_lottery` VALUES ('29', '反反复复', '', '/tmp/uploads/20180820/df14bc23c6baf3afc1a06d205039e86b.jpg', '0', '0', '0', '0', '2', '11.00', '111.00', '0', '1111', '1111', '221', 'ONLY2018秋季新款粉红豹中长宽松T恤女', '', '&lt;p&gt;222222222222&lt;br/&gt;&lt;/p&gt;', '0', null, '0', '20', '1', '12', '0');
INSERT INTO `fy_lottery` VALUES ('30', '叮当猫代金券1', '', '/tmp/uploads/20180820/aa33f635784cc4b5f347d7d5f580d73f.jpg', '1534746316', '1535696720', '1534735461', '1535167464', '2', '0.00', null, '0', '99', '99', '231', '哆啦a梦公仔机器猫毛绒玩具叮当猫超特大号蓝胖子生日礼物女生', '', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180820/1534745876502359.jpg&quot; title=&quot;1534745876502359.jpg&quot; alt=&quot;TB2HuKIiVXXXXc5XXXXXXXXXXXX_!!157498468.jpg&quot;/&gt;&lt;/p&gt;', '0', null, '1', '20', '0', '0', '1');
INSERT INTO `fy_lottery` VALUES ('31', '打工皇帝', '', '/tmp/uploads/20180820/f15c050da0573c5a43d8804d17cb6d81.jpg', '0', '0', '0', '0', '2', '33.00', '234.00', '0', '232', '232', '221', 'ONLY2018秋季新款粉红豹中长宽松T恤女', '', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180820/1534737294515705.jpg&quot; title=&quot;1534737294515705.jpg&quot; alt=&quot;微信图片_20180814113948.jpg&quot;/&gt;发放发放付付付付付付付付付付付付付&lt;/p&gt;', '0', null, '0', '20', '1', '23', '0');
INSERT INTO `fy_lottery` VALUES ('32', '叮当猫', '', '/tmp/uploads/20180820/3b56c472c8074fc71b778ea6227d0138.jpg', '0', '0', '0', '0', '2', '1.00', '1.00', '0', '99', '98', '231', '哆啦a梦公仔机器猫毛绒玩具叮当猫超特大号蓝胖子生日礼物女生', '', '', '0', null, '0', '20', '1', '30', '0');
INSERT INTO `fy_lottery` VALUES ('33', '叮叮当当', '', '/tmp/uploads/20180820/3227d4b1b98875766af26099067d4200.jpg', '0', '0', '0', '0', '2', '1.00', '1.00', '0', '99', '98', '231', '哆啦a梦公仔机器猫毛绒玩具叮当猫超特大号蓝胖子生日礼物女生', '', '', '1', null, '0', '20', '1', '20', '0');
INSERT INTO `fy_lottery` VALUES ('34', '零食代金券', '', '/tmp/uploads/20180820/9db79d2640dc0cffb70aa194f94c7f32.jpg', '1534668754', '1538211679', '1534669292', '1538211696', '3', '2.00', '0.10', '0', '50', '50', '231', '哆啦a梦公仔机器猫毛绒玩具叮当猫超特大号蓝胖子生日礼物女生', '', '', '1', null, '0', '20', '0', '0', '0');
INSERT INTO `fy_lottery` VALUES ('35', 'dfd', '', '/tmp/uploads/20180820/9db79d2640dc0cffb70aa194f94c7f32.jpg', '0', '0', '0', '0', '3', '3333.00', '333.00', '0', '4444', '4444', '', null, '', '&lt;p&gt;4444444444444444&lt;/p&gt;', '0', null, '1', '0', '1', '12', '0');
INSERT INTO `fy_lottery` VALUES ('36', '1111', '', '/tmp/uploads/20180726/9b929b23d42150cc92a31a3261765898.jpg', '1534821022', '1534907428', '1534993834', '1534993840', '0', '0.00', null, '0', '1', '1', '', null, '', '', '0', null, '1', '0', '0', '0', '0');
INSERT INTO `fy_lottery` VALUES ('37', 'a ', '', '/tmp/uploads/20180726/9b929b23d42150cc92a31a3261765898.jpg', '1534821600', '1534908002', '1534821604', '1534994406', '0', '0.00', null, '0', '10', '10', '', null, '', '', '0', null, '1', '0', '0', '0', '0');
INSERT INTO `fy_lottery` VALUES ('38', '水电费', '', '/tmp/uploads/20180820/f15c050da0573c5a43d8804d17cb6d81.jpg', '0', '0', '0', '0', '0', '0.00', null, '0', '222', '222', '', null, '', '&lt;p&gt;22222222哒哒哒哒哒哒&lt;/p&gt;', '0', null, '1', '20', '1', '12', '0');
INSERT INTO `fy_lottery` VALUES ('39', '12', '', '/tmp/uploads/20180726/9b929b23d42150cc92a31a3261765898.jpg', '1534821879', '1534908281', '1534821884', '1534994686', '3', '5.00', '0.10', '0', '15', '15', '', null, '', '', '0', null, '1', '0', '0', '0', '0');
INSERT INTO `fy_lottery` VALUES ('40', '113', '', '/tmp/uploads/20180726/9b929b23d42150cc92a31a3261765898.jpg', '1534822455', '1534908857', '1534822460', '1534908861', '2', '2.00', '1.00', '1', '14', '15', '', null, '', '', '0', null, '1', '0', '0', '0', '0');
INSERT INTO `fy_lottery` VALUES ('41', '通用券1', '', '/tmp/uploads/20180821/f0b6c7ed9672a30d4164d188f1450393.png', '0', '0', '0', '0', '2', '10.00', '20.00', '1', '29', '30', 'all', null, '', '', '0', null, '1', '0', '1', '30', '0');
INSERT INTO `fy_lottery` VALUES ('43', '水电费', '\"[\\\"\\\\\\/tmp\\\\\\/uploads\\\\\\/20180821\\\\\\/c93fe2c8a2ba9cce704337aa123504e9.jpg\\\",\\\"\\\\\\/tmp\\\\\\/uploads\\\\\\/20180821\\\\\\/c1a188772f256b92a93088d7d317d119.jpg\\\"]\"', '/tmp/uploads/20180821/4ebeb1829ac2b7e99e676b89c563c2e6.jpg', '0', '0', '0', '0', '2', '22.00', '22.00', '0', '22', '22', 'all', null, '', '&lt;p&gt;22222222&lt;/p&gt;', '0', null, '0', '20', '1', '12', '0');

-- ----------------------------
-- Table structure for fy_lottery_log
-- ----------------------------
DROP TABLE IF EXISTS `fy_lottery_log`;
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
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_lottery_log
-- ----------------------------
INSERT INTO `fy_lottery_log` VALUES ('161', '145', '非也非也', '1534472355', '23', '1', null, '优惠券1', '0', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '1', null, null, '0', '{\"id\":23,\"name\":\"\\u4f18\\u60e0\\u52381\",\"pic\":\"\",\"main_pic\":\"\\/tmp\\/uploads\\/20180817\\/33fdf66c2e479a14ac7134744604162a.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"1.00\",\"coupon_real_money\":\"2.00\",\"receive_number\":0,\"surplus_number\":20,\"number\":20,\"goods_id\":\"all\",\"goods_name\":null,\"url\":\"\",\"desc\":\"&lt;p&gt;\\u6ee12\\u5143\\u51cf1\\u5143\\u4f18\\u60e0\\u5238&lt;\\/p&gt;\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":21,\"expire_type\":1,\"expire_time\":30}', null, null, '0', null, null);
INSERT INTO `fy_lottery_log` VALUES ('162', null, null, '1534477569', '23', '1', null, '优惠券1', '0', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '1', null, null, '0', '{\"id\":23,\"name\":\"\\u4f18\\u60e0\\u52381\",\"pic\":\"\",\"main_pic\":\"\\/tmp\\/uploads\\/20180817\\/33fdf66c2e479a14ac7134744604162a.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"1.00\",\"coupon_real_money\":\"2.00\",\"receive_number\":0,\"surplus_number\":20,\"number\":20,\"goods_id\":\"all\",\"goods_name\":null,\"url\":\"\",\"desc\":\"&lt;p&gt;\\u6ee12\\u5143\\u51cf1\\u5143\\u4f18\\u60e0\\u5238&lt;\\/p&gt;\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":21,\"expire_type\":1,\"expire_time\":30}', null, null, '0', null, null);
INSERT INTO `fy_lottery_log` VALUES ('163', '146', '帆', '1534484442', '24', '1', null, '优惠券2', '0', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '1', null, null, '0', '{\"id\":24,\"name\":\"\\u4f18\\u60e0\\u52382\",\"pic\":\"\",\"main_pic\":\"\\/tmp\\/uploads\\/20180817\\/efb24ce395360a34dfca9e0e0087fef0.png\",\"grant_start_date\":1534348800,\"grant_end_date\":1534608000,\"expire_start_date\":1534435200,\"expire_end_date\":1534694400,\"type\":2,\"coupon_money\":\"2.00\",\"coupon_real_money\":\"4.00\",\"receive_number\":0,\"surplus_number\":30,\"number\":29,\"goods_id\":\"all\",\"goods_name\":null,\"url\":\"\",\"desc\":\"\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":21,\"expire_type\":0,\"expire_time\":0}', null, null, '0', null, null);
INSERT INTO `fy_lottery_log` VALUES ('164', '113', 'Baymax', '1534484874', '23', '1', null, '优惠券1（新人礼包）', '0', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '1', null, null, '0', '{\"id\":23,\"name\":\"\\u4f18\\u60e0\\u52381\\uff08\\u65b0\\u4eba\\u793c\\u5305\\uff09\",\"pic\":\"\",\"main_pic\":\"\\/tmp\\/uploads\\/20180817\\/33fdf66c2e479a14ac7134744604162a.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"1.00\",\"coupon_real_money\":\"2.00\",\"receive_number\":0,\"surplus_number\":20,\"number\":20,\"goods_id\":\"all\",\"goods_name\":null,\"url\":\"\",\"desc\":\"&lt;p&gt;\\u6ee12\\u5143\\u51cf1\\u5143\\u4f18\\u60e0\\u5238&lt;\\/p&gt;\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":21,\"expire_type\":1,\"expire_time\":30,\"use_type\":0}', null, null, '0', null, null);
INSERT INTO `fy_lottery_log` VALUES ('165', '113', 'Baymax', '1534484876', '24', '1', null, '优惠券2', '0', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '1', null, null, '0', '{\"id\":24,\"name\":\"\\u4f18\\u60e0\\u52382\",\"pic\":\"\",\"main_pic\":\"\\/tmp\\/uploads\\/20180817\\/efb24ce395360a34dfca9e0e0087fef0.png\",\"grant_start_date\":1534348800,\"grant_end_date\":1534608000,\"expire_start_date\":1534435200,\"expire_end_date\":1534694400,\"type\":2,\"coupon_money\":\"2.00\",\"coupon_real_money\":\"4.00\",\"receive_number\":0,\"surplus_number\":30,\"number\":28,\"goods_id\":\"all\",\"goods_name\":null,\"url\":\"\",\"desc\":\"\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":21,\"expire_type\":0,\"expire_time\":0,\"use_type\":0}', null, null, '0', null, null);
INSERT INTO `fy_lottery_log` VALUES ('166', '113', 'Baymax', '1534484877', '25', '1', null, '优惠券3（生日礼包）', '0', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '1', null, null, '0', '{\"id\":25,\"name\":\"\\u4f18\\u60e0\\u52383\\uff08\\u751f\\u65e5\\u793c\\u5305\\uff09\",\"pic\":\"\",\"main_pic\":\"\\/tmp\\/uploads\\/20180817\\/c8dfb57099ea9114d9808489899e68fe.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"20.00\",\"coupon_real_money\":\"20.00\",\"receive_number\":0,\"surplus_number\":50,\"number\":50,\"goods_id\":\"all\",\"goods_name\":null,\"url\":\"\",\"desc\":\"\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":1,\"expire_type\":1,\"expire_time\":30,\"use_type\":0}', null, null, '0', null, null);
INSERT INTO `fy_lottery_log` VALUES ('167', '113', 'Baymax', '1534486557', '26', '1', null, '测试券', '0', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '1', null, null, '0', '{\"id\":26,\"name\":\"\\u6d4b\\u8bd5\\u5238\",\"pic\":\"\",\"main_pic\":\"\\/tmp\\/uploads\\/20180817\\/a4c90f3eeaaee35cd74223d1b891d428.png\",\"grant_start_date\":1534486243,\"grant_end_date\":1534745447,\"expire_start_date\":1534572652,\"expire_end_date\":1534831855,\"type\":2,\"coupon_money\":\"1.00\",\"coupon_real_money\":\"1.00\",\"receive_number\":0,\"surplus_number\":50,\"number\":50,\"goods_id\":\"all\",\"goods_name\":null,\"url\":\"\",\"desc\":\"\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":1,\"expire_type\":0,\"expire_time\":0,\"use_type\":0}', null, null, '0', null, null);
INSERT INTO `fy_lottery_log` VALUES ('168', null, null, '1534487950', '23', '1', null, '优惠券1（新人礼包）', '0', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '1', null, null, '0', '{\"id\":23,\"name\":\"\\u4f18\\u60e0\\u52381\\uff08\\u65b0\\u4eba\\u793c\\u5305\\uff09\",\"pic\":\"\",\"main_pic\":\"\\/tmp\\/uploads\\/20180817\\/33fdf66c2e479a14ac7134744604162a.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"1.00\",\"coupon_real_money\":\"2.00\",\"receive_number\":0,\"surplus_number\":19,\"number\":19,\"goods_id\":\"all\",\"goods_name\":null,\"url\":\"\",\"desc\":\"&lt;p&gt;\\u6ee12\\u5143\\u51cf1\\u5143\\u4f18\\u60e0\\u5238&lt;\\/p&gt;\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":21,\"expire_type\":1,\"expire_time\":30,\"use_type\":1}', null, null, '0', null, null);
INSERT INTO `fy_lottery_log` VALUES ('169', '147', '葡萄不长牙', '1534488008', '24', '1', null, '优惠券2', '0', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '1', null, null, '0', '{\"id\":24,\"name\":\"\\u4f18\\u60e0\\u52382\",\"pic\":\"\",\"main_pic\":\"\\/tmp\\/uploads\\/20180817\\/efb24ce395360a34dfca9e0e0087fef0.png\",\"grant_start_date\":1534348800,\"grant_end_date\":1534608000,\"expire_start_date\":1534435200,\"expire_end_date\":1534694400,\"type\":2,\"coupon_money\":\"2.00\",\"coupon_real_money\":\"4.00\",\"receive_number\":0,\"surplus_number\":30,\"number\":27,\"goods_id\":\"all\",\"goods_name\":null,\"url\":\"\",\"desc\":\"\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":21,\"expire_type\":0,\"expire_time\":0,\"use_type\":0}', null, null, '0', null, null);
INSERT INTO `fy_lottery_log` VALUES ('170', '146', '帆', '1534489416', '27', '1', null, '优惠券3', '1', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '0', null, null, '0', '{\"id\":27,\"name\":\"\\u4f18\\u60e0\\u52383\",\"pic\":\"\",\"main_pic\":\"\\/tmp\\/uploads\\/20180817\\/ab564b441a4c16d9c72df4217776a863.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"3.00\",\"coupon_real_money\":\"3.00\",\"receive_number\":0,\"surplus_number\":50,\"number\":50,\"goods_id\":\"all\",\"goods_name\":null,\"url\":\"\",\"desc\":\"\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":1,\"expire_type\":1,\"expire_time\":3,\"use_type\":0}', null, null, '0', null, null);
INSERT INTO `fy_lottery_log` VALUES ('171', '146', '帆', '1534489418', '26', '1', null, '测试券', '0', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '1', null, null, '0', '{\"id\":26,\"name\":\"\\u6d4b\\u8bd5\\u5238\",\"pic\":\"\",\"main_pic\":\"\\/tmp\\/uploads\\/20180817\\/a4c90f3eeaaee35cd74223d1b891d428.png\",\"grant_start_date\":1534486243,\"grant_end_date\":1534745447,\"expire_start_date\":1534572652,\"expire_end_date\":1534831855,\"type\":2,\"coupon_money\":\"1.00\",\"coupon_real_money\":\"1.00\",\"receive_number\":0,\"surplus_number\":50,\"number\":49,\"goods_id\":\"all\",\"goods_name\":null,\"url\":\"\",\"desc\":\"\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":1,\"expire_type\":0,\"expire_time\":0,\"use_type\":0}', null, null, '0', null, null);
INSERT INTO `fy_lottery_log` VALUES ('172', '147', '葡萄不长牙', '1534490798', '26', '1', null, '测试券', '0', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '1', null, null, '0', '{\"id\":26,\"name\":\"\\u6d4b\\u8bd5\\u5238\",\"pic\":\"\",\"main_pic\":\"\\/tmp\\/uploads\\/20180817\\/a4c90f3eeaaee35cd74223d1b891d428.png\",\"grant_start_date\":1534486243,\"grant_end_date\":1534745447,\"expire_start_date\":1534572652,\"expire_end_date\":1534831855,\"type\":2,\"coupon_money\":\"1.00\",\"coupon_real_money\":\"1.00\",\"receive_number\":0,\"surplus_number\":50,\"number\":48,\"goods_id\":\"all\",\"goods_name\":null,\"url\":\"\",\"desc\":\"\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":1,\"expire_type\":0,\"expire_time\":0,\"use_type\":0}', null, null, '0', null, null);
INSERT INTO `fy_lottery_log` VALUES ('173', '147', '葡萄不长牙', '1534490800', '27', '1', null, '优惠券3', '0', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '1', null, null, '0', '{\"id\":27,\"name\":\"\\u4f18\\u60e0\\u52383\",\"pic\":\"\",\"main_pic\":\"\\/tmp\\/uploads\\/20180817\\/ab564b441a4c16d9c72df4217776a863.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"3.00\",\"coupon_real_money\":\"3.00\",\"receive_number\":0,\"surplus_number\":50,\"number\":49,\"goods_id\":\"all\",\"goods_name\":null,\"url\":\"\",\"desc\":\"\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":1,\"expire_type\":1,\"expire_time\":3,\"use_type\":0}', null, null, '0', null, null);
INSERT INTO `fy_lottery_log` VALUES ('174', '113', 'Baymax', '1534493159', '27', '1', null, '优惠券3', '0', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '1', null, null, '0', '{\"id\":27,\"name\":\"\\u4f18\\u60e0\\u52383\",\"pic\":\"\",\"main_pic\":\"\\/tmp\\/uploads\\/20180817\\/ab564b441a4c16d9c72df4217776a863.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"3.00\",\"coupon_real_money\":\"3.00\",\"receive_number\":0,\"surplus_number\":50,\"number\":48,\"goods_id\":\"all\",\"goods_name\":null,\"url\":\"\",\"desc\":\"\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":1,\"expire_type\":1,\"expire_time\":3,\"use_type\":0}', null, null, '0', null, null);
INSERT INTO `fy_lottery_log` VALUES ('175', '120', '韩小豆', '1534750583', '32', '1', null, '叮当猫', '0', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '1', null, null, '0', '{\"id\":32,\"name\":\"\\u53ee\\u5f53\\u732b\",\"pic\":\"\",\"main_pic\":\"\\/tmp\\/uploads\\/20180820\\/3b56c472c8074fc71b778ea6227d0138.jpg\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"0.00\",\"coupon_real_money\":\"1.00\",\"receive_number\":0,\"surplus_number\":99,\"number\":99,\"goods_id\":\"231\",\"goods_name\":\"\\u54c6\\u5566a\\u68a6\\u516c\\u4ed4\\u673a\\u5668\\u732b\\u6bdb\\u7ed2\\u73a9\\u5177\\u53ee\\u5f53\\u732b\\u8d85\\u7279\\u5927\\u53f7\\u84dd\\u80d6\\u5b50\\u751f\\u65e5\\u793c\\u7269\\u5973\\u751f\",\"url\":\"\",\"desc\":\"\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":20,\"expire_type\":1,\"expire_time\":30,\"use_type\":0}', null, null, '0', null, null);
INSERT INTO `fy_lottery_log` VALUES ('176', '120', '韩小豆', '1534751094', '33', '1', null, '叮叮当当', '1', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '0', null, null, '0', '{\"id\":33,\"name\":\"\\u53ee\\u53ee\\u5f53\\u5f53\",\"pic\":\"\",\"main_pic\":\"\\/tmp\\/uploads\\/20180820\\/3227d4b1b98875766af26099067d4200.jpg\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"1.00\",\"coupon_real_money\":\"1.00\",\"receive_number\":0,\"surplus_number\":99,\"number\":99,\"goods_id\":\"231\",\"goods_name\":\"\\u54c6\\u5566a\\u68a6\\u516c\\u4ed4\\u673a\\u5668\\u732b\\u6bdb\\u7ed2\\u73a9\\u5177\\u53ee\\u5f53\\u732b\\u8d85\\u7279\\u5927\\u53f7\\u84dd\\u80d6\\u5b50\\u751f\\u65e5\\u793c\\u7269\\u5973\\u751f\",\"url\":\"\",\"desc\":\"\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":20,\"expire_type\":1,\"expire_time\":20,\"use_type\":0}', null, null, '0', null, null);
INSERT INTO `fy_lottery_log` VALUES ('177', '120', '韩小豆', '1534752576', '27', '1', null, '优惠券3', '0', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '1', null, null, '0', '{\"id\":27,\"name\":\"\\u4f18\\u60e0\\u52383\",\"pic\":\"\",\"main_pic\":\"\\/tmp\\/uploads\\/20180817\\/ab564b441a4c16d9c72df4217776a863.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"3.00\",\"coupon_real_money\":\"3.00\",\"receive_number\":0,\"surplus_number\":50,\"number\":47,\"goods_id\":\"all\",\"goods_name\":null,\"url\":\"\",\"desc\":\"\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":1,\"expire_type\":1,\"expire_time\":3,\"use_type\":0}', null, null, '0', null, null);
INSERT INTO `fy_lottery_log` VALUES ('178', null, null, '1534754555', '23', '1', null, '优惠券1（新人礼包）', '0', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '1', null, null, '0', '{\"id\":23,\"name\":\"\\u4f18\\u60e0\\u52381\\uff08\\u65b0\\u4eba\\u793c\\u5305\\uff09\",\"pic\":\"\",\"main_pic\":\"\\/tmp\\/uploads\\/20180817\\/33fdf66c2e479a14ac7134744604162a.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"1.00\",\"coupon_real_money\":\"2.00\",\"receive_number\":0,\"surplus_number\":19,\"number\":19,\"goods_id\":\"all\",\"goods_name\":null,\"url\":\"\",\"desc\":\"&lt;p&gt;\\u6ee12\\u5143\\u51cf1\\u5143\\u4f18\\u60e0\\u5238&lt;\\/p&gt;\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":21,\"expire_type\":1,\"expire_time\":30,\"use_type\":1}', null, null, '0', null, null);
INSERT INTO `fy_lottery_log` VALUES ('179', null, null, '1534754810', '23', '1', null, '优惠券1（新人礼包）', '0', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '1', null, null, '0', '{\"id\":23,\"name\":\"\\u4f18\\u60e0\\u52381\\uff08\\u65b0\\u4eba\\u793c\\u5305\\uff09\",\"pic\":\"\",\"main_pic\":\"\\/tmp\\/uploads\\/20180817\\/33fdf66c2e479a14ac7134744604162a.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"1.00\",\"coupon_real_money\":\"2.00\",\"receive_number\":0,\"surplus_number\":19,\"number\":19,\"goods_id\":\"all\",\"goods_name\":null,\"url\":\"\",\"desc\":\"&lt;p&gt;\\u6ee12\\u5143\\u51cf1\\u5143\\u4f18\\u60e0\\u5238&lt;\\/p&gt;\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":21,\"expire_type\":1,\"expire_time\":30,\"use_type\":1}', null, null, '0', null, null);
INSERT INTO `fy_lottery_log` VALUES ('180', '113', 'Baymax', '1534822680', '40', '1', null, '113', '0', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '1', null, null, '0', '{\"id\":40,\"name\":\"113\",\"pic\":\"\",\"main_pic\":\"\\/tmp\\/uploads\\/20180726\\/9b929b23d42150cc92a31a3261765898.jpg\",\"grant_start_date\":1534822455,\"grant_end_date\":1534908857,\"expire_start_date\":1534822460,\"expire_end_date\":1534908861,\"type\":2,\"coupon_money\":\"2.00\",\"coupon_real_money\":\"1.00\",\"receive_number\":0,\"surplus_number\":15,\"number\":15,\"goods_id\":\"\",\"goods_name\":null,\"url\":\"\",\"desc\":\"\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":0,\"expire_type\":0,\"expire_time\":0,\"use_type\":0}', null, null, '0', null, null);
INSERT INTO `fy_lottery_log` VALUES ('181', '145', '非也非也', '1534823086', '27', '1', null, '优惠券3', '0', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '1', null, null, '0', '{\"id\":27,\"name\":\"\\u4f18\\u60e0\\u52383\",\"pic\":\"\",\"main_pic\":\"\\/tmp\\/uploads\\/20180817\\/ab564b441a4c16d9c72df4217776a863.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"3.00\",\"coupon_real_money\":\"3.00\",\"receive_number\":0,\"surplus_number\":50,\"number\":46,\"goods_id\":\"all\",\"goods_name\":null,\"url\":\"\",\"desc\":\"\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":1,\"expire_type\":1,\"expire_time\":3,\"use_type\":0}', null, null, '0', null, null);
INSERT INTO `fy_lottery_log` VALUES ('182', '145', '非也非也', '1534823324', '41', '1', null, '通用券1', '0', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '1', null, null, '0', '{\"id\":41,\"name\":\"\\u901a\\u7528\\u52381\",\"pic\":\"\",\"main_pic\":\"\\/tmp\\/uploads\\/20180821\\/f0b6c7ed9672a30d4164d188f1450393.png\",\"grant_start_date\":0,\"grant_end_date\":0,\"expire_start_date\":0,\"expire_end_date\":0,\"type\":2,\"coupon_money\":\"10.00\",\"coupon_real_money\":\"20.00\",\"receive_number\":0,\"surplus_number\":30,\"number\":30,\"goods_id\":\"all\",\"goods_name\":null,\"url\":\"\",\"desc\":\"\",\"status\":1,\"update_time\":null,\"isdelete\":0,\"user_id\":0,\"expire_type\":1,\"expire_time\":30,\"use_type\":0}', null, null, '0', null, null);

-- ----------------------------
-- Table structure for fy_lottery_order
-- ----------------------------
DROP TABLE IF EXISTS `fy_lottery_order`;
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_lottery_order
-- ----------------------------

-- ----------------------------
-- Table structure for fy_message
-- ----------------------------
DROP TABLE IF EXISTS `fy_message`;
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_message
-- ----------------------------
INSERT INTO `fy_message` VALUES ('6', '限时抢购开始了', '/tmp/uploads/20180718/6bc99543a88510e9c167994cfd92aec7.jpg', '限时抢购开始了，赶紧抢购吧', '4', '0', '1', '1', '1531817693', '1531964195', '1');
INSERT INTO `fy_message` VALUES ('7', '会员签到', '/tmp/uploads/20180717/a9ea6f826eca32c58263a6ff9e2de6e4.png', '天天签到领奖励', '4', '0', '1', '1', '1531817716', '1531964192', '1');
INSERT INTO `fy_message` VALUES ('10', '积分清零提醒', '/tmp/uploads/20180719/ccb21898dd9ec96fa2614bf06f56a126.png', '尊敬的会员：按照会员积分制度，您的积分即将达到两年有效期，将于一周后清零，请及时使用积分！', '1', '0', '1', '0', '1531962104', '1531964188', '1');
INSERT INTO `fy_message` VALUES ('11', '会员积分清零', '/tmp/uploads/20180719/d83aacecc27531a16e82974dec2bb535.png', '尊敬的会员：按照会员积分制度，您的积分已达到两年有效期，现已清零，您的积分将从零开始累计！', '2', '0', '1', '0', '1531962219', '1531964185', '1');
INSERT INTO `fy_message` VALUES ('12', '生日', '/tmp/uploads/20180719/4f14c25fe270d09933b5cbcb8f144ea5.jpg', '尊敬的会员：您的生日即将到达，我们为您准备了一张生日券，有效期为两个周，请及时使用！', '3', '0', '0', '0', '1531962399', '1534131625', '1');
INSERT INTO `fy_message` VALUES ('14', '消息模板测试', '/tmp/uploads/20180726/9b929b23d42150cc92a31a3261765898.jpg', '消息模板测试消息内容', '4', '0', '0', '1', '1532049437', '1534131600', '1');
INSERT INTO `fy_message` VALUES ('15', 'test', '/tmp/uploads/20180815/8b60ee391cb9254b560f98e3314b97a7.png', 'agsgsdgsag', '4', '0', '1', '1', '1534297264', '1534297264', '1');
INSERT INTO `fy_message` VALUES ('16', '七夕重磅好礼送不停', '/tmp/uploads/20180817/f6a88ed2e7dc06e68d213ca5e3112ce8.png', '即日起，商城限时抢购、积分兑换送好礼，价格优惠，快来抢购吧！', '4', '0', '1', '0', '1534485765', '1534485765', '1');

-- ----------------------------
-- Table structure for fy_message_user
-- ----------------------------
DROP TABLE IF EXISTS `fy_message_user`;
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
) ENGINE=InnoDB AUTO_INCREMENT=352 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_message_user
-- ----------------------------
INSERT INTO `fy_message_user` VALUES ('170', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.01<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d71<br\\/><br\\/>\"}', '0', '1533352895', '0', null);
INSERT INTO `fy_message_user` VALUES ('171', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u53d1\\u8d27\\u901a\\u77e5\",\"detail\":\"\\u60a8\\u8d2d\\u4e70\\u7684  \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X \\u5df2\\u7ecf\\u53d1\\u8d27\\u5566\\uff0c\\u6b63\\u5feb\\u9a6c\\u52a0\\u97ad\\u5411\\u60a8\\u98de\\u5954\\u800c\\u53bb\\u3002<br\\/>\\u8ba2\\u5355\\u7f16\\u53f7\\uff1a1441217402201808041120573074<br\\/>\\u53d1\\u8d27\\u65f6\\u95f4\\uff1a<br\\/>\\u7269\\u6d41\\u516c\\u53f8\\uff1a<br\\/>\\u5feb\\u9012\\u5355\\u53f7\\uff1a<br\\/>\\u8bf7\\u4fdd\\u6301\\u624b\\u673a\\u7545\\u901a\\uff01\"}', '0', '1533352918', '0', null);
INSERT INTO `fy_message_user` VALUES ('172', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.01<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d71<br\\/><br\\/>\"}', '0', '1533390348', '0', null);
INSERT INTO `fy_message_user` VALUES ('173', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.01<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/><br\\/>\"}', '0', '1533390743', '0', null);
INSERT INTO `fy_message_user` VALUES ('174', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.01<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/><br\\/>\"}', '0', '1533696719', '0', null);
INSERT INTO `fy_message_user` VALUES ('175', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u9000\\u6b3e\\u901a\\u77e5\",\"detail\":\"\\u60a8\\u7684\\u8ba2\\u5355\\u5df2\\u7ecf\\u5b8c\\u6210\\u9000\\u6b3e\\uff0c\\u539f\\u8def\\u9000\\u56de\\u5230\\u60a8\\u7684\\u652f\\u4ed8\\u8d26\\u6237\\uff08\\u96f6\\u94b120\\u5929\\u5185\\u5230\\u8d26\\uff1b\\u50a8\\u84c4\\u53611-3\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff1b\\u4fe1\\u7528\\u53612-5\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff09\\u8bf7\\u7559\\u610f\\u67e5\\u6536\\u3002<br\\/>\\u9000\\u6b3e\\u91d1\\u989d\\uff1a0.01<br\\/>\\u5546\\u54c1\\u540d\\u79f0\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31  \\u85cf\\u9752+S\\u00d71<br\\/><br\\/>\\u9000\\u6b3e\\u5355\\u53f7\\uff1a1441217402201808081051476281<br\\/>\\u6709\\u4ec0\\u4e48\\u7591\\u95ee\\u8bf7\\u8054\\u7cfb\\u30100851-86701701\\u3011\\u54a8\\u8be2\"}', '0', '1533696805', '0', null);
INSERT INTO `fy_message_user` VALUES ('176', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.01<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+L\\u00d71<br\\/><br\\/>\"}', '0', '1533697099', '0', null);
INSERT INTO `fy_message_user` VALUES ('177', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u9000\\u6b3e\\u901a\\u77e5\",\"detail\":\"\\u60a8\\u7684\\u8ba2\\u5355\\u5df2\\u7ecf\\u5b8c\\u6210\\u9000\\u6b3e\\uff0c\\u539f\\u8def\\u9000\\u56de\\u5230\\u60a8\\u7684\\u652f\\u4ed8\\u8d26\\u6237\\uff08\\u96f6\\u94b120\\u5929\\u5185\\u5230\\u8d26\\uff1b\\u50a8\\u84c4\\u53611-3\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff1b\\u4fe1\\u7528\\u53612-5\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff09\\u8bf7\\u7559\\u610f\\u67e5\\u6536\\u3002<br\\/>\\u9000\\u6b3e\\u91d1\\u989d\\uff1a0.01<br\\/>\\u5546\\u54c1\\u540d\\u79f0\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31  \\u85cf\\u9752+L\\u00d71<br\\/><br\\/>\\u9000\\u6b3e\\u5355\\u53f7\\uff1a1441217402201808081058078243<br\\/>\\u6709\\u4ec0\\u4e48\\u7591\\u95ee\\u8bf7\\u8054\\u7cfb\\u30100851-86701701\\u3011\\u54a8\\u8be2\"}', '0', '1533697450', '0', null);
INSERT INTO `fy_message_user` VALUES ('178', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/><br\\/>\"}', '0', '1533707117', '0', null);
INSERT INTO `fy_message_user` VALUES ('179', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/><br\\/>\"}', '0', '1533707117', '0', null);
INSERT INTO `fy_message_user` VALUES ('180', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/><br\\/>\"}', '0', '1533707159', '0', null);
INSERT INTO `fy_message_user` VALUES ('181', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/><br\\/>\"}', '0', '1533707159', '0', null);
INSERT INTO `fy_message_user` VALUES ('182', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/><br\\/>\"}', '0', '1533707160', '0', null);
INSERT INTO `fy_message_user` VALUES ('183', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/><br\\/>\"}', '0', '1533707161', '0', null);
INSERT INTO `fy_message_user` VALUES ('184', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/><br\\/>\"}', '0', '1533707177', '0', null);
INSERT INTO `fy_message_user` VALUES ('185', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/><br\\/>\"}', '0', '1533707177', '0', null);
INSERT INTO `fy_message_user` VALUES ('186', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/><br\\/>\"}', '0', '1533707463', '0', null);
INSERT INTO `fy_message_user` VALUES ('187', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/><br\\/>\"}', '0', '1533707480', '0', null);
INSERT INTO `fy_message_user` VALUES ('188', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/><br\\/>\"}', '0', '1533707496', '0', null);
INSERT INTO `fy_message_user` VALUES ('189', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/><br\\/>\"}', '0', '1533707528', '0', null);
INSERT INTO `fy_message_user` VALUES ('190', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/><br\\/>\"}', '0', '1533707895', '0', null);
INSERT INTO `fy_message_user` VALUES ('191', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/><br\\/>\"}', '0', '1533707895', '0', null);
INSERT INTO `fy_message_user` VALUES ('192', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u9000\\u6b3e\\u901a\\u77e5\",\"detail\":\"\\u60a8\\u7684\\u8ba2\\u5355\\u5df2\\u7ecf\\u5b8c\\u6210\\u9000\\u6b3e\\uff0c\\u539f\\u8def\\u9000\\u56de\\u5230\\u60a8\\u7684\\u652f\\u4ed8\\u8d26\\u6237\\uff08\\u96f6\\u94b120\\u5929\\u5185\\u5230\\u8d26\\uff1b\\u50a8\\u84c4\\u53611-3\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff1b\\u4fe1\\u7528\\u53612-5\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff09\\u8bf7\\u7559\\u610f\\u67e5\\u6536\\u3002<br\\/>\\u9000\\u6b3e\\u91d1\\u989d\\uff1a0.01<br\\/>\\u5546\\u54c1\\u540d\\u79f0\\uff1a\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837  30ml\\u00d71<br\\/><br\\/>\\u9000\\u6b3e\\u5355\\u53f7\\uff1a1441217402201808081157085438<br\\/>\\u6709\\u4ec0\\u4e48\\u7591\\u95ee\\u8bf7\\u8054\\u7cfb\\u30100851-86701701\\u3011\\u54a8\\u8be2\"}', '0', '1533708603', '0', null);
INSERT INTO `fy_message_user` VALUES ('194', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.04<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d71<br\\/><br\\/>\"}', '0', '1533709830', '0', null);
INSERT INTO `fy_message_user` VALUES ('195', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u9000\\u6b3e\\u901a\\u77e5\",\"detail\":\"\\u60a8\\u7684\\u8ba2\\u5355\\u5df2\\u7ecf\\u5b8c\\u6210\\u9000\\u6b3e\\uff0c\\u539f\\u8def\\u9000\\u56de\\u5230\\u60a8\\u7684\\u652f\\u4ed8\\u8d26\\u6237\\uff08\\u96f6\\u94b120\\u5929\\u5185\\u5230\\u8d26\\uff1b\\u50a8\\u84c4\\u53611-3\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff1b\\u4fe1\\u7528\\u53612-5\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff09\\u8bf7\\u7559\\u610f\\u67e5\\u6536\\u3002<br\\/>\\u9000\\u6b3e\\u91d1\\u989d\\uff1a0.01<br\\/>\\u5546\\u54c1\\u540d\\u79f0\\uff1a\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl  S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31  \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837  30ml\\u00d71<br\\/><br\\/>\\u9000\\u6b3e\\u5355\\u53f7\\uff1a1441217402201808081423488393<br\\/>\\u6709\\u4ec0\\u4e48\\u7591\\u95ee\\u8bf7\\u8054\\u7cfb\\u30100851-86701701\\u3011\\u54a8\\u8be2\"}', '0', '1533710061', '0', null);
INSERT INTO `fy_message_user` VALUES ('196', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u9000\\u6b3e\\u901a\\u77e5\",\"detail\":\"\\u60a8\\u7684\\u8ba2\\u5355\\u5df2\\u7ecf\\u5b8c\\u6210\\u9000\\u6b3e\\uff0c\\u539f\\u8def\\u9000\\u56de\\u5230\\u60a8\\u7684\\u652f\\u4ed8\\u8d26\\u6237\\uff08\\u96f6\\u94b120\\u5929\\u5185\\u5230\\u8d26\\uff1b\\u50a8\\u84c4\\u53611-3\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff1b\\u4fe1\\u7528\\u53612-5\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff09\\u8bf7\\u7559\\u610f\\u67e5\\u6536\\u3002<br\\/>\\u9000\\u6b3e\\u91d1\\u989d\\uff1a0.01<br\\/>\\u5546\\u54c1\\u540d\\u79f0\\uff1a \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X S\\u00d71<br\\/><br\\/>\\u9000\\u6b3e\\u5355\\u53f7\\uff1a1441217402201808081423489332<br\\/>\\u6709\\u4ec0\\u4e48\\u7591\\u95ee\\u8bf7\\u8054\\u7cfb\\u30100851-86701701\\u3011\\u54a8\\u8be2\"}', '0', '1533710069', '0', null);
INSERT INTO `fy_message_user` VALUES ('197', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u9000\\u6b3e\\u901a\\u77e5\",\"detail\":\"\\u60a8\\u7684\\u8ba2\\u5355\\u5df2\\u7ecf\\u5b8c\\u6210\\u9000\\u6b3e\\uff0c\\u539f\\u8def\\u9000\\u56de\\u5230\\u60a8\\u7684\\u652f\\u4ed8\\u8d26\\u6237\\uff08\\u96f6\\u94b120\\u5929\\u5185\\u5230\\u8d26\\uff1b\\u50a8\\u84c4\\u53611-3\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff1b\\u4fe1\\u7528\\u53612-5\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff09\\u8bf7\\u7559\\u610f\\u67e5\\u6536\\u3002<br\\/>\\u9000\\u6b3e\\u91d1\\u989d\\uff1a0.01<br\\/>\\u5546\\u54c1\\u540d\\u79f0\\uff1a\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl  S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31  \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837  30ml\\u00d71<br\\/><br\\/>\\u9000\\u6b3e\\u5355\\u53f7\\uff1a1441217402201808081423488393<br\\/>\\u6709\\u4ec0\\u4e48\\u7591\\u95ee\\u8bf7\\u8054\\u7cfb\\u30100851-86701701\\u3011\\u54a8\\u8be2\"}', '0', '1533710087', '0', null);
INSERT INTO `fy_message_user` VALUES ('198', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.04<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d71<br\\/><br\\/>\"}', '0', '1533710768', '0', null);
INSERT INTO `fy_message_user` VALUES ('199', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.04<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d71<br\\/><br\\/>\"}', '0', '1533711307', '0', null);
INSERT INTO `fy_message_user` VALUES ('200', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.04<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d71<br\\/><br\\/>\"}', '0', '1533711307', '0', null);
INSERT INTO `fy_message_user` VALUES ('201', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.04<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d71<br\\/><br\\/>\"}', '0', '1533711308', '0', null);
INSERT INTO `fy_message_user` VALUES ('202', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.04<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d71<br\\/><br\\/>\"}', '0', '1533711308', '0', null);
INSERT INTO `fy_message_user` VALUES ('203', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.04<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d71<br\\/><br\\/>\"}', '0', '1533711309', '0', null);
INSERT INTO `fy_message_user` VALUES ('204', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.04<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d71<br\\/><br\\/>\"}', '0', '1533711313', '0', null);
INSERT INTO `fy_message_user` VALUES ('205', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.04<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d71<br\\/><br\\/>\"}', '0', '1533711387', '0', null);
INSERT INTO `fy_message_user` VALUES ('206', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.04<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d71<br\\/><br\\/>\"}', '0', '1533711387', '0', null);
INSERT INTO `fy_message_user` VALUES ('207', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.04<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d71<br\\/><br\\/>\"}', '0', '1533711388', '0', null);
INSERT INTO `fy_message_user` VALUES ('208', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.04<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d71<br\\/><br\\/>\"}', '0', '1533711388', '0', null);
INSERT INTO `fy_message_user` VALUES ('209', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.04<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d71<br\\/><br\\/>\"}', '0', '1533711388', '0', null);
INSERT INTO `fy_message_user` VALUES ('210', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.04<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d71<br\\/><br\\/>\"}', '0', '1533711392', '0', null);
INSERT INTO `fy_message_user` VALUES ('211', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.04<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d71<br\\/><br\\/>\"}', '0', '1533711393', '0', null);
INSERT INTO `fy_message_user` VALUES ('212', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.04<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d71<br\\/><br\\/>\"}', '0', '1533711393', '0', null);
INSERT INTO `fy_message_user` VALUES ('213', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.04<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d71<br\\/><br\\/>\"}', '0', '1533711393', '0', null);
INSERT INTO `fy_message_user` VALUES ('214', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.04<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d71<br\\/><br\\/>\"}', '0', '1533711397', '0', null);
INSERT INTO `fy_message_user` VALUES ('215', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.04<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d71<br\\/><br\\/>\"}', '0', '1533711397', '0', null);
INSERT INTO `fy_message_user` VALUES ('216', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.04<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d71<br\\/><br\\/>\"}', '0', '1533711397', '0', null);
INSERT INTO `fy_message_user` VALUES ('217', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.04<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d71<br\\/><br\\/>\"}', '0', '1533711403', '0', null);
INSERT INTO `fy_message_user` VALUES ('218', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.04<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d71<br\\/><br\\/>\"}', '0', '1533711404', '0', null);
INSERT INTO `fy_message_user` VALUES ('219', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.04<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d71<br\\/><br\\/>\"}', '0', '1533711404', '0', null);
INSERT INTO `fy_message_user` VALUES ('220', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.04<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d71<br\\/><br\\/>\"}', '0', '1533711404', '0', null);
INSERT INTO `fy_message_user` VALUES ('221', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.04<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d71<br\\/><br\\/>\"}', '0', '1533711405', '0', null);
INSERT INTO `fy_message_user` VALUES ('222', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.04<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d71<br\\/><br\\/>\"}', '0', '1533711405', '0', null);
INSERT INTO `fy_message_user` VALUES ('223', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.04<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d71<br\\/><br\\/>\"}', '0', '1533711408', '0', null);
INSERT INTO `fy_message_user` VALUES ('224', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.04<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d71<br\\/><br\\/>\"}', '0', '1533711409', '0', null);
INSERT INTO `fy_message_user` VALUES ('225', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.04<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d71<br\\/><br\\/>\"}', '0', '1533711409', '0', null);
INSERT INTO `fy_message_user` VALUES ('226', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.04<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d71<br\\/><br\\/>\"}', '0', '1533711409', '0', null);
INSERT INTO `fy_message_user` VALUES ('227', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.04<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d71<br\\/><br\\/>\"}', '0', '1533711410', '0', null);
INSERT INTO `fy_message_user` VALUES ('228', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.04<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d71<br\\/><br\\/>\"}', '0', '1533711422', '0', null);
INSERT INTO `fy_message_user` VALUES ('229', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.04<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837   30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   L\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d71<br\\/><br\\/>\"}', '0', '1533711423', '0', null);
INSERT INTO `fy_message_user` VALUES ('230', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u9000\\u6b3e\\u901a\\u77e5\",\"detail\":\"\\u60a8\\u7684\\u8ba2\\u5355\\u5df2\\u7ecf\\u5b8c\\u6210\\u9000\\u6b3e\\uff0c\\u539f\\u8def\\u9000\\u56de\\u5230\\u60a8\\u7684\\u652f\\u4ed8\\u8d26\\u6237\\uff08\\u96f6\\u94b120\\u5929\\u5185\\u5230\\u8d26\\uff1b\\u50a8\\u84c4\\u53611-3\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff1b\\u4fe1\\u7528\\u53612-5\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff09\\u8bf7\\u7559\\u610f\\u67e5\\u6536\\u3002<br\\/>\\u9000\\u6b3e\\u91d1\\u989d\\uff1a0.01<br\\/>\\u5546\\u54c1\\u540d\\u79f0\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31  \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837  30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl  L\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl  S\\u00d71<br\\/><br\\/>\\u9000\\u6b3e\\u5355\\u53f7\\uff1a1441217402201808081444237774<br\\/>\\u6709\\u4ec0\\u4e48\\u7591\\u95ee\\u8bf7\\u8054\\u7cfb\\u30100851-86701701\\u3011\\u54a8\\u8be2\"}', '0', '1533711689', '0', null);
INSERT INTO `fy_message_user` VALUES ('231', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u9000\\u6b3e\\u901a\\u77e5\",\"detail\":\"\\u60a8\\u7684\\u8ba2\\u5355\\u5df2\\u7ecf\\u5b8c\\u6210\\u9000\\u6b3e\\uff0c\\u539f\\u8def\\u9000\\u56de\\u5230\\u60a8\\u7684\\u652f\\u4ed8\\u8d26\\u6237\\uff08\\u96f6\\u94b120\\u5929\\u5185\\u5230\\u8d26\\uff1b\\u50a8\\u84c4\\u53611-3\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff1b\\u4fe1\\u7528\\u53612-5\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff09\\u8bf7\\u7559\\u610f\\u67e5\\u6536\\u3002<br\\/>\\u9000\\u6b3e\\u91d1\\u989d\\uff1a0.01<br\\/>\\u5546\\u54c1\\u540d\\u79f0\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31  \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837  30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl  L\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl  S\\u00d71<br\\/><br\\/>\\u9000\\u6b3e\\u5355\\u53f7\\uff1a1441217402201808081444237774<br\\/>\\u6709\\u4ec0\\u4e48\\u7591\\u95ee\\u8bf7\\u8054\\u7cfb\\u30100851-86701701\\u3011\\u54a8\\u8be2\"}', '0', '1533711694', '0', null);
INSERT INTO `fy_message_user` VALUES ('232', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u9000\\u6b3e\\u901a\\u77e5\",\"detail\":\"\\u60a8\\u7684\\u8ba2\\u5355\\u5df2\\u7ecf\\u5b8c\\u6210\\u9000\\u6b3e\\uff0c\\u539f\\u8def\\u9000\\u56de\\u5230\\u60a8\\u7684\\u652f\\u4ed8\\u8d26\\u6237\\uff08\\u96f6\\u94b120\\u5929\\u5185\\u5230\\u8d26\\uff1b\\u50a8\\u84c4\\u53611-3\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff1b\\u4fe1\\u7528\\u53612-5\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff09\\u8bf7\\u7559\\u610f\\u67e5\\u6536\\u3002<br\\/>\\u9000\\u6b3e\\u91d1\\u989d\\uff1a0.01<br\\/>\\u5546\\u54c1\\u540d\\u79f0\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31  \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837  30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl  L\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl  S\\u00d71<br\\/><br\\/>\\u9000\\u6b3e\\u5355\\u53f7\\uff1a1441217402201808081444237774<br\\/>\\u6709\\u4ec0\\u4e48\\u7591\\u95ee\\u8bf7\\u8054\\u7cfb\\u30100851-86701701\\u3011\\u54a8\\u8be2\"}', '0', '1533711701', '0', null);
INSERT INTO `fy_message_user` VALUES ('233', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u9000\\u6b3e\\u901a\\u77e5\",\"detail\":\"\\u60a8\\u7684\\u8ba2\\u5355\\u5df2\\u7ecf\\u5b8c\\u6210\\u9000\\u6b3e\\uff0c\\u539f\\u8def\\u9000\\u56de\\u5230\\u60a8\\u7684\\u652f\\u4ed8\\u8d26\\u6237\\uff08\\u96f6\\u94b120\\u5929\\u5185\\u5230\\u8d26\\uff1b\\u50a8\\u84c4\\u53611-3\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff1b\\u4fe1\\u7528\\u53612-5\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff09\\u8bf7\\u7559\\u610f\\u67e5\\u6536\\u3002<br\\/>\\u9000\\u6b3e\\u91d1\\u989d\\uff1a0.01<br\\/>\\u5546\\u54c1\\u540d\\u79f0\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31  \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837  30ml\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl  L\\u00d71<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl  S\\u00d71<br\\/><br\\/>\\u9000\\u6b3e\\u5355\\u53f7\\uff1a1441217402201808081444237774<br\\/>\\u6709\\u4ec0\\u4e48\\u7591\\u95ee\\u8bf7\\u8054\\u7cfb\\u30100851-86701701\\u3011\\u54a8\\u8be2\"}', '0', '1533711708', '0', null);
INSERT INTO `fy_message_user` VALUES ('234', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u9000\\u6b3e\\u901a\\u77e5\",\"detail\":\"\\u60a8\\u7684\\u8ba2\\u5355\\u5df2\\u7ecf\\u5b8c\\u6210\\u9000\\u6b3e\\uff0c\\u539f\\u8def\\u9000\\u56de\\u5230\\u60a8\\u7684\\u652f\\u4ed8\\u8d26\\u6237\\uff08\\u96f6\\u94b120\\u5929\\u5185\\u5230\\u8d26\\uff1b\\u50a8\\u84c4\\u53611-3\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff1b\\u4fe1\\u7528\\u53612-5\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff09\\u8bf7\\u7559\\u610f\\u67e5\\u6536\\u3002<br\\/>\\u9000\\u6b3e\\u91d1\\u989d\\uff1a0.01<br\\/>\\u5546\\u54c1\\u540d\\u79f0\\uff1a\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl  S\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31  \\u85cf\\u9752+S\\u00d71<br\\/>\\u7cbe\\u7f8e\\u793c\\u76d2\\u4e9a\\u83f2\\u513f\\u5973\\u58eb\\u9999\\u6c34\\u5973\\u58eb\\u6301\\u4e45\\u6de1\\u9999\\u6e05\\u65b050ml\\u9999\\u6c34\\u5973\\u58eb\\u6cd5\\u56fd\\u4e13\\u67dc\\u6b63\\u54c1\\u5973\\u4eba\\u5473\\u9001\\u9999\\u6c34\\u5c0f\\u6837  30ml\\u00d71<br\\/><br\\/>\\u9000\\u6b3e\\u5355\\u53f7\\uff1a1441217402201808081423488393<br\\/>\\u6709\\u4ec0\\u4e48\\u7591\\u95ee\\u8bf7\\u8054\\u7cfb\\u30100851-86701701\\u3011\\u54a8\\u8be2\"}', '0', '1533711733', '0', null);
INSERT INTO `fy_message_user` VALUES ('235', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.02<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+M\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+M\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/><br\\/>\"}', '0', '1533712062', '0', null);
INSERT INTO `fy_message_user` VALUES ('236', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.01<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d71<br\\/><br\\/>\"}', '0', '1533713399', '0', null);
INSERT INTO `fy_message_user` VALUES ('237', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.01<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d71<br\\/><br\\/>\"}', '0', '1533713399', '0', null);
INSERT INTO `fy_message_user` VALUES ('238', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u9000\\u6b3e\\u901a\\u77e5\",\"detail\":\"\\u60a8\\u7684\\u8ba2\\u5355\\u5df2\\u7ecf\\u5b8c\\u6210\\u9000\\u6b3e\\uff0c\\u539f\\u8def\\u9000\\u56de\\u5230\\u60a8\\u7684\\u652f\\u4ed8\\u8d26\\u6237\\uff08\\u96f6\\u94b120\\u5929\\u5185\\u5230\\u8d26\\uff1b\\u50a8\\u84c4\\u53611-3\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff1b\\u4fe1\\u7528\\u53612-5\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff09\\u8bf7\\u7559\\u610f\\u67e5\\u6536\\u3002<br\\/>\\u9000\\u6b3e\\u91d1\\u989d\\uff1a0.01<br\\/>\\u5546\\u54c1\\u540d\\u79f0\\uff1a \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X S\\u00d71<br\\/><br\\/>\\u9000\\u6b3e\\u5355\\u53f7\\uff1a1441217402201808081522397678<br\\/>\\u6709\\u4ec0\\u4e48\\u7591\\u95ee\\u8bf7\\u8054\\u7cfb\\u30100851-86701701\\u3011\\u54a8\\u8be2\"}', '0', '1533713430', '0', null);
INSERT INTO `fy_message_user` VALUES ('239', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.01<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d71<br\\/><br\\/>\"}', '0', '1533713593', '0', null);
INSERT INTO `fy_message_user` VALUES ('240', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.01<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d71<br\\/><br\\/>\"}', '0', '1533713593', '0', null);
INSERT INTO `fy_message_user` VALUES ('241', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u9000\\u6b3e\\u901a\\u77e5\",\"detail\":\"\\u60a8\\u7684\\u8ba2\\u5355\\u5df2\\u7ecf\\u5b8c\\u6210\\u9000\\u6b3e\\uff0c\\u539f\\u8def\\u9000\\u56de\\u5230\\u60a8\\u7684\\u652f\\u4ed8\\u8d26\\u6237\\uff08\\u96f6\\u94b120\\u5929\\u5185\\u5230\\u8d26\\uff1b\\u50a8\\u84c4\\u53611-3\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff1b\\u4fe1\\u7528\\u53612-5\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff09\\u8bf7\\u7559\\u610f\\u67e5\\u6536\\u3002<br\\/>\\u9000\\u6b3e\\u91d1\\u989d\\uff1a0.01<br\\/>\\u5546\\u54c1\\u540d\\u79f0\\uff1a \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X S\\u00d71<br\\/><br\\/>\\u9000\\u6b3e\\u5355\\u53f7\\uff1a1441217402201808081531392860<br\\/>\\u6709\\u4ec0\\u4e48\\u7591\\u95ee\\u8bf7\\u8054\\u7cfb\\u30100851-86701701\\u3011\\u54a8\\u8be2\"}', '0', '1533713707', '0', null);
INSERT INTO `fy_message_user` VALUES ('242', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u9000\\u6b3e\\u901a\\u77e5\",\"detail\":\"\\u60a8\\u7684\\u8ba2\\u5355\\u5df2\\u7ecf\\u5b8c\\u6210\\u9000\\u6b3e\\uff0c\\u539f\\u8def\\u9000\\u56de\\u5230\\u60a8\\u7684\\u652f\\u4ed8\\u8d26\\u6237\\uff08\\u96f6\\u94b120\\u5929\\u5185\\u5230\\u8d26\\uff1b\\u50a8\\u84c4\\u53611-3\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff1b\\u4fe1\\u7528\\u53612-5\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff09\\u8bf7\\u7559\\u610f\\u67e5\\u6536\\u3002<br\\/>\\u9000\\u6b3e\\u91d1\\u989d\\uff1a0.01<br\\/>\\u5546\\u54c1\\u540d\\u79f0\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31  \\u85cf\\u9752+M\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31  \\u85cf\\u9752+S\\u00d71<br\\/><br\\/>\\u9000\\u6b3e\\u5355\\u53f7\\uff1a1441217402201808081503511185<br\\/>\\u6709\\u4ec0\\u4e48\\u7591\\u95ee\\u8bf7\\u8054\\u7cfb\\u30100851-86701701\\u3011\\u54a8\\u8be2\"}', '0', '1533713715', '0', null);
INSERT INTO `fy_message_user` VALUES ('243', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u9000\\u6b3e\\u901a\\u77e5\",\"detail\":\"\\u60a8\\u7684\\u8ba2\\u5355\\u5df2\\u7ecf\\u5b8c\\u6210\\u9000\\u6b3e\\uff0c\\u539f\\u8def\\u9000\\u56de\\u5230\\u60a8\\u7684\\u652f\\u4ed8\\u8d26\\u6237\\uff08\\u96f6\\u94b120\\u5929\\u5185\\u5230\\u8d26\\uff1b\\u50a8\\u84c4\\u53611-3\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff1b\\u4fe1\\u7528\\u53612-5\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff09\\u8bf7\\u7559\\u610f\\u67e5\\u6536\\u3002<br\\/>\\u9000\\u6b3e\\u91d1\\u989d\\uff1a0.01<br\\/>\\u5546\\u54c1\\u540d\\u79f0\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31  \\u85cf\\u9752+M\\u00d71<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31  \\u85cf\\u9752+S\\u00d71<br\\/><br\\/>\\u9000\\u6b3e\\u5355\\u53f7\\uff1a1441217402201808081503511185<br\\/>\\u6709\\u4ec0\\u4e48\\u7591\\u95ee\\u8bf7\\u8054\\u7cfb\\u30100851-86701701\\u3011\\u54a8\\u8be2\"}', '0', '1533713721', '0', null);
INSERT INTO `fy_message_user` VALUES ('244', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.01<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/><br\\/>\"}', '0', '1533715234', '0', null);
INSERT INTO `fy_message_user` VALUES ('245', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.01<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/><br\\/>\"}', '0', '1533715234', '0', null);
INSERT INTO `fy_message_user` VALUES ('246', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.01<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/><br\\/>\"}', '0', '1533715251', '0', null);
INSERT INTO `fy_message_user` VALUES ('247', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.01<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/><br\\/>\"}', '0', '1533715251', '0', null);
INSERT INTO `fy_message_user` VALUES ('248', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u9000\\u6b3e\\u901a\\u77e5\",\"detail\":\"\\u60a8\\u7684\\u8ba2\\u5355\\u5df2\\u7ecf\\u5b8c\\u6210\\u9000\\u6b3e\\uff0c\\u539f\\u8def\\u9000\\u56de\\u5230\\u60a8\\u7684\\u652f\\u4ed8\\u8d26\\u6237\\uff08\\u96f6\\u94b120\\u5929\\u5185\\u5230\\u8d26\\uff1b\\u50a8\\u84c4\\u53611-3\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff1b\\u4fe1\\u7528\\u53612-5\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff09\\u8bf7\\u7559\\u610f\\u67e5\\u6536\\u3002<br\\/>\\u9000\\u6b3e\\u91d1\\u989d\\uff1a0.01<br\\/>\\u5546\\u54c1\\u540d\\u79f0\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31  \\u85cf\\u9752+S\\u00d71<br\\/><br\\/>\\u9000\\u6b3e\\u5355\\u53f7\\uff1a1441217402201808081536108532<br\\/>\\u6709\\u4ec0\\u4e48\\u7591\\u95ee\\u8bf7\\u8054\\u7cfb\\u30100851-86701701\\u3011\\u54a8\\u8be2\"}', '0', '1533715354', '0', null);
INSERT INTO `fy_message_user` VALUES ('249', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.01<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1aChanel\\u9999\\u5948\\u513f\\u6469\\u767bCoco  30ML\\u00d71<br\\/><br\\/>\"}', '0', '1533715780', '0', null);
INSERT INTO `fy_message_user` VALUES ('250', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.01<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1aChanel\\u9999\\u5948\\u513f\\u6469\\u767bCoco  30ML\\u00d71<br\\/><br\\/>\"}', '0', '1533715780', '0', null);
INSERT INTO `fy_message_user` VALUES ('251', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.01<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+L\\u00d71<br\\/><br\\/>\"}', '0', '1533715802', '0', null);
INSERT INTO `fy_message_user` VALUES ('252', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.01<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+L\\u00d71<br\\/><br\\/>\"}', '0', '1533715802', '0', null);
INSERT INTO `fy_message_user` VALUES ('253', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u9000\\u6b3e\\u901a\\u77e5\",\"detail\":\"\\u60a8\\u7684\\u8ba2\\u5355\\u5df2\\u7ecf\\u5b8c\\u6210\\u9000\\u6b3e\\uff0c\\u539f\\u8def\\u9000\\u56de\\u5230\\u60a8\\u7684\\u652f\\u4ed8\\u8d26\\u6237\\uff08\\u96f6\\u94b120\\u5929\\u5185\\u5230\\u8d26\\uff1b\\u50a8\\u84c4\\u53611-3\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff1b\\u4fe1\\u7528\\u53612-5\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff09\\u8bf7\\u7559\\u610f\\u67e5\\u6536\\u3002<br\\/>\\u9000\\u6b3e\\u91d1\\u989d\\uff1a0.01<br\\/>\\u5546\\u54c1\\u540d\\u79f0\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31  \\u85cf\\u9752+L\\u00d71<br\\/><br\\/>\\u9000\\u6b3e\\u5355\\u53f7\\uff1a1441217402201808081606065097<br\\/>\\u6709\\u4ec0\\u4e48\\u7591\\u95ee\\u8bf7\\u8054\\u7cfb\\u30100851-86701701\\u3011\\u54a8\\u8be2\"}', '0', '1533715923', '0', null);
INSERT INTO `fy_message_user` VALUES ('254', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.01<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/><br\\/>\"}', '0', '1533715954', '0', null);
INSERT INTO `fy_message_user` VALUES ('255', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u9000\\u6b3e\\u901a\\u77e5\",\"detail\":\"\\u60a8\\u7684\\u8ba2\\u5355\\u5df2\\u7ecf\\u5b8c\\u6210\\u9000\\u6b3e\\uff0c\\u539f\\u8def\\u9000\\u56de\\u5230\\u60a8\\u7684\\u652f\\u4ed8\\u8d26\\u6237\\uff08\\u96f6\\u94b120\\u5929\\u5185\\u5230\\u8d26\\uff1b\\u50a8\\u84c4\\u53611-3\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff1b\\u4fe1\\u7528\\u53612-5\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff09\\u8bf7\\u7559\\u610f\\u67e5\\u6536\\u3002<br\\/>\\u9000\\u6b3e\\u91d1\\u989d\\uff1a0.01<br\\/>\\u5546\\u54c1\\u540d\\u79f0\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31  \\u85cf\\u9752+S\\u00d71<br\\/><br\\/>\\u9000\\u6b3e\\u5355\\u53f7\\uff1a1441217402201808081612239611<br\\/>\\u6709\\u4ec0\\u4e48\\u7591\\u95ee\\u8bf7\\u8054\\u7cfb\\u30100851-86701701\\u3011\\u54a8\\u8be2\"}', '0', '1533715976', '0', null);
INSERT INTO `fy_message_user` VALUES ('256', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a<br\\/>\"}', '0', '1533716822', '0', null);
INSERT INTO `fy_message_user` VALUES ('257', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a<br\\/>\"}', '0', '1533716893', '0', null);
INSERT INTO `fy_message_user` VALUES ('258', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.01<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d71<br\\/><br\\/>\"}', '0', '1533717266', '0', null);
INSERT INTO `fy_message_user` VALUES ('260', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a<br\\/>\"}', '0', '1533717356', '0', null);
INSERT INTO `fy_message_user` VALUES ('261', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a<br\\/>\"}', '0', '1533717490', '0', null);
INSERT INTO `fy_message_user` VALUES ('262', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u9000\\u6b3e\\u901a\\u77e5\",\"detail\":\"\\u60a8\\u7684\\u8ba2\\u5355\\u5df2\\u7ecf\\u5b8c\\u6210\\u9000\\u6b3e\\uff0c\\u539f\\u8def\\u9000\\u56de\\u5230\\u60a8\\u7684\\u652f\\u4ed8\\u8d26\\u6237\\uff08\\u96f6\\u94b120\\u5929\\u5185\\u5230\\u8d26\\uff1b\\u50a8\\u84c4\\u53611-3\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff1b\\u4fe1\\u7528\\u53612-5\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff09\\u8bf7\\u7559\\u610f\\u67e5\\u6536\\u3002<br\\/>\\u9000\\u6b3e\\u91d1\\u989d\\uff1a0.01<br\\/>\\u5546\\u54c1\\u540d\\u79f0\\uff1a \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X S\\u00d71<br\\/><br\\/>\\u9000\\u6b3e\\u5355\\u53f7\\uff1a1441217402201808081634133595<br\\/>\\u6709\\u4ec0\\u4e48\\u7591\\u95ee\\u8bf7\\u8054\\u7cfb\\u30100851-86701701\\u3011\\u54a8\\u8be2\"}', '0', '1533717808', '0', null);
INSERT INTO `fy_message_user` VALUES ('263', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.01<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/><br\\/>\"}', '0', '1533717873', '0', null);
INSERT INTO `fy_message_user` VALUES ('264', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a<br\\/>\"}', '0', '1533718135', '0', null);
INSERT INTO `fy_message_user` VALUES ('265', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u9000\\u6b3e\\u901a\\u77e5\",\"detail\":\"\\u60a8\\u7684\\u8ba2\\u5355\\u5df2\\u7ecf\\u5b8c\\u6210\\u9000\\u6b3e\\uff0c\\u539f\\u8def\\u9000\\u56de\\u5230\\u60a8\\u7684\\u652f\\u4ed8\\u8d26\\u6237\\uff08\\u96f6\\u94b120\\u5929\\u5185\\u5230\\u8d26\\uff1b\\u50a8\\u84c4\\u53611-3\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff1b\\u4fe1\\u7528\\u53612-5\\u4e2a\\u5de5\\u4f5c\\u65e5\\uff09\\u8bf7\\u7559\\u610f\\u67e5\\u6536\\u3002<br\\/>\\u9000\\u6b3e\\u91d1\\u989d\\uff1a0.01<br\\/>\\u5546\\u54c1\\u540d\\u79f0\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31  \\u85cf\\u9752+S\\u00d71<br\\/><br\\/>\\u9000\\u6b3e\\u5355\\u53f7\\uff1a1441217402201808081644223476<br\\/>\\u6709\\u4ec0\\u4e48\\u7591\\u95ee\\u8bf7\\u8054\\u7cfb\\u30100851-86701701\\u3011\\u54a8\\u8be2\"}', '0', '1533718481', '0', null);
INSERT INTO `fy_message_user` VALUES ('267', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a<br\\/>\"}', '0', '1533718621', '0', null);
INSERT INTO `fy_message_user` VALUES ('268', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a<br\\/>\"}', '0', '1533720495', '0', null);
INSERT INTO `fy_message_user` VALUES ('270', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a<br\\/>\"}', '0', '1533721736', '0', null);
INSERT INTO `fy_message_user` VALUES ('277', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5365.07<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d72<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d73<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d72<br\\/>\\u4e03\\u5339\\u72fc\\u65b0\\u54c1\\u77ed\\u8896T\\u6064\\u75372018\\u65b0\\u6b3e\\u8863\\u670d\\u7537\\u88c5\\u5706\\u9886\\u7eaf\\u8272\\u83ab\\u4ee3\\u5c14\\u9ed1\\u8272\\u7537\\u58eb\\u77ed\\u8896\\u4f53\\u6064\\u886b\\u534a\\u8896\\u4e0a\\u8863\\u6253\\u5e95\\u886b 2841 001\\u9ed1\\u8272 175\\/92A\\/xl   S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d73<br\\/>\\u5e0c\\u533a\\u745e\\u666e2018\\u590f\\u65b0\\u54c1\\u8fde\\u8863\\u88d9\\u77ed\\u8896\\u683c\\u5b50\\u957f\\u88d9\\u8774\\u8776\\u7ed3\\u88d9\\u5b50 \\u84dd\\u8272\\u683c\\u5b50 XL\\u9884\\u552e\\u4ed8\\u6b3e\\u540e30\\u5929\\u53d1\\u8d27   S\\u00d72<br\\/><br\\/>\"}', '0', '1534142971', '0', null);
INSERT INTO `fy_message_user` VALUES ('278', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5305.05<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/>\\u5e0c\\u533a\\u745e\\u666e2018\\u590f\\u65b0\\u54c1\\u8fde\\u8863\\u88d9\\u77ed\\u8896\\u683c\\u5b50\\u957f\\u88d9\\u8774\\u8776\\u7ed3\\u88d9\\u5b50 \\u84dd\\u8272\\u683c\\u5b50 XL\\u9884\\u552e\\u4ed8\\u6b3e\\u540e30\\u5929\\u53d1\\u8d27   S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/>\\u5e0c\\u533a\\u745e\\u666e2018\\u590f\\u65b0\\u54c1\\u8fde\\u8863\\u88d9\\u77ed\\u8896\\u683c\\u5b50\\u957f\\u88d9\\u8774\\u8776\\u7ed3\\u88d9\\u5b50 \\u84dd\\u8272\\u683c\\u5b50 XL\\u9884\\u552e\\u4ed8\\u6b3e\\u540e30\\u5929\\u53d1\\u8d27   S\\u00d72<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/><br\\/>\"}', '0', '1534143535', '0', null);
INSERT INTO `fy_message_user` VALUES ('279', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5305.05<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/>\\u5e0c\\u533a\\u745e\\u666e2018\\u590f\\u65b0\\u54c1\\u8fde\\u8863\\u88d9\\u77ed\\u8896\\u683c\\u5b50\\u957f\\u88d9\\u8774\\u8776\\u7ed3\\u88d9\\u5b50 \\u84dd\\u8272\\u683c\\u5b50 XL\\u9884\\u552e\\u4ed8\\u6b3e\\u540e30\\u5929\\u53d1\\u8d27   S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/>\\u5e0c\\u533a\\u745e\\u666e2018\\u590f\\u65b0\\u54c1\\u8fde\\u8863\\u88d9\\u77ed\\u8896\\u683c\\u5b50\\u957f\\u88d9\\u8774\\u8776\\u7ed3\\u88d9\\u5b50 \\u84dd\\u8272\\u683c\\u5b50 XL\\u9884\\u552e\\u4ed8\\u6b3e\\u540e30\\u5929\\u53d1\\u8d27   S\\u00d72<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/><br\\/>\"}', '0', '1534143706', '0', null);
INSERT INTO `fy_message_user` VALUES ('280', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5305.05<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/>\\u5e0c\\u533a\\u745e\\u666e2018\\u590f\\u65b0\\u54c1\\u8fde\\u8863\\u88d9\\u77ed\\u8896\\u683c\\u5b50\\u957f\\u88d9\\u8774\\u8776\\u7ed3\\u88d9\\u5b50 \\u84dd\\u8272\\u683c\\u5b50 XL\\u9884\\u552e\\u4ed8\\u6b3e\\u540e30\\u5929\\u53d1\\u8d27   S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/>\\u5e0c\\u533a\\u745e\\u666e2018\\u590f\\u65b0\\u54c1\\u8fde\\u8863\\u88d9\\u77ed\\u8896\\u683c\\u5b50\\u957f\\u88d9\\u8774\\u8776\\u7ed3\\u88d9\\u5b50 \\u84dd\\u8272\\u683c\\u5b50 XL\\u9884\\u552e\\u4ed8\\u6b3e\\u540e30\\u5929\\u53d1\\u8d27   S\\u00d72<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/><br\\/>\"}', '0', '1534143706', '0', null);
INSERT INTO `fy_message_user` VALUES ('281', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5305.05<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/>\\u5e0c\\u533a\\u745e\\u666e2018\\u590f\\u65b0\\u54c1\\u8fde\\u8863\\u88d9\\u77ed\\u8896\\u683c\\u5b50\\u957f\\u88d9\\u8774\\u8776\\u7ed3\\u88d9\\u5b50 \\u84dd\\u8272\\u683c\\u5b50 XL\\u9884\\u552e\\u4ed8\\u6b3e\\u540e30\\u5929\\u53d1\\u8d27   S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/>\\u5e0c\\u533a\\u745e\\u666e2018\\u590f\\u65b0\\u54c1\\u8fde\\u8863\\u88d9\\u77ed\\u8896\\u683c\\u5b50\\u957f\\u88d9\\u8774\\u8776\\u7ed3\\u88d9\\u5b50 \\u84dd\\u8272\\u683c\\u5b50 XL\\u9884\\u552e\\u4ed8\\u6b3e\\u540e30\\u5929\\u53d1\\u8d27   S\\u00d72<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/><br\\/>\"}', '0', '1534143759', '0', null);
INSERT INTO `fy_message_user` VALUES ('282', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5305.05<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/>\\u5e0c\\u533a\\u745e\\u666e2018\\u590f\\u65b0\\u54c1\\u8fde\\u8863\\u88d9\\u77ed\\u8896\\u683c\\u5b50\\u957f\\u88d9\\u8774\\u8776\\u7ed3\\u88d9\\u5b50 \\u84dd\\u8272\\u683c\\u5b50 XL\\u9884\\u552e\\u4ed8\\u6b3e\\u540e30\\u5929\\u53d1\\u8d27   S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/>\\u5e0c\\u533a\\u745e\\u666e2018\\u590f\\u65b0\\u54c1\\u8fde\\u8863\\u88d9\\u77ed\\u8896\\u683c\\u5b50\\u957f\\u88d9\\u8774\\u8776\\u7ed3\\u88d9\\u5b50 \\u84dd\\u8272\\u683c\\u5b50 XL\\u9884\\u552e\\u4ed8\\u6b3e\\u540e30\\u5929\\u53d1\\u8d27   S\\u00d72<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/><br\\/>\"}', '0', '1534143759', '0', null);
INSERT INTO `fy_message_user` VALUES ('283', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5305.05<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/>\\u5e0c\\u533a\\u745e\\u666e2018\\u590f\\u65b0\\u54c1\\u8fde\\u8863\\u88d9\\u77ed\\u8896\\u683c\\u5b50\\u957f\\u88d9\\u8774\\u8776\\u7ed3\\u88d9\\u5b50 \\u84dd\\u8272\\u683c\\u5b50 XL\\u9884\\u552e\\u4ed8\\u6b3e\\u540e30\\u5929\\u53d1\\u8d27   S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/>\\u5e0c\\u533a\\u745e\\u666e2018\\u590f\\u65b0\\u54c1\\u8fde\\u8863\\u88d9\\u77ed\\u8896\\u683c\\u5b50\\u957f\\u88d9\\u8774\\u8776\\u7ed3\\u88d9\\u5b50 \\u84dd\\u8272\\u683c\\u5b50 XL\\u9884\\u552e\\u4ed8\\u6b3e\\u540e30\\u5929\\u53d1\\u8d27   S\\u00d72<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/><br\\/>\"}', '0', '1534143759', '0', null);
INSERT INTO `fy_message_user` VALUES ('284', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5305.05<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/>\\u5e0c\\u533a\\u745e\\u666e2018\\u590f\\u65b0\\u54c1\\u8fde\\u8863\\u88d9\\u77ed\\u8896\\u683c\\u5b50\\u957f\\u88d9\\u8774\\u8776\\u7ed3\\u88d9\\u5b50 \\u84dd\\u8272\\u683c\\u5b50 XL\\u9884\\u552e\\u4ed8\\u6b3e\\u540e30\\u5929\\u53d1\\u8d27   S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/>\\u5e0c\\u533a\\u745e\\u666e2018\\u590f\\u65b0\\u54c1\\u8fde\\u8863\\u88d9\\u77ed\\u8896\\u683c\\u5b50\\u957f\\u88d9\\u8774\\u8776\\u7ed3\\u88d9\\u5b50 \\u84dd\\u8272\\u683c\\u5b50 XL\\u9884\\u552e\\u4ed8\\u6b3e\\u540e30\\u5929\\u53d1\\u8d27   S\\u00d72<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/><br\\/>\"}', '0', '1534143762', '0', null);
INSERT INTO `fy_message_user` VALUES ('285', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5305.05<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/>\\u5e0c\\u533a\\u745e\\u666e2018\\u590f\\u65b0\\u54c1\\u8fde\\u8863\\u88d9\\u77ed\\u8896\\u683c\\u5b50\\u957f\\u88d9\\u8774\\u8776\\u7ed3\\u88d9\\u5b50 \\u84dd\\u8272\\u683c\\u5b50 XL\\u9884\\u552e\\u4ed8\\u6b3e\\u540e30\\u5929\\u53d1\\u8d27   S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/>\\u5e0c\\u533a\\u745e\\u666e2018\\u590f\\u65b0\\u54c1\\u8fde\\u8863\\u88d9\\u77ed\\u8896\\u683c\\u5b50\\u957f\\u88d9\\u8774\\u8776\\u7ed3\\u88d9\\u5b50 \\u84dd\\u8272\\u683c\\u5b50 XL\\u9884\\u552e\\u4ed8\\u6b3e\\u540e30\\u5929\\u53d1\\u8d27   S\\u00d72<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/><br\\/>\"}', '0', '1534143763', '0', null);
INSERT INTO `fy_message_user` VALUES ('286', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5305.05<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/>\\u5e0c\\u533a\\u745e\\u666e2018\\u590f\\u65b0\\u54c1\\u8fde\\u8863\\u88d9\\u77ed\\u8896\\u683c\\u5b50\\u957f\\u88d9\\u8774\\u8776\\u7ed3\\u88d9\\u5b50 \\u84dd\\u8272\\u683c\\u5b50 XL\\u9884\\u552e\\u4ed8\\u6b3e\\u540e30\\u5929\\u53d1\\u8d27   S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/>\\u5e0c\\u533a\\u745e\\u666e2018\\u590f\\u65b0\\u54c1\\u8fde\\u8863\\u88d9\\u77ed\\u8896\\u683c\\u5b50\\u957f\\u88d9\\u8774\\u8776\\u7ed3\\u88d9\\u5b50 \\u84dd\\u8272\\u683c\\u5b50 XL\\u9884\\u552e\\u4ed8\\u6b3e\\u540e30\\u5929\\u53d1\\u8d27   S\\u00d72<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/><br\\/>\"}', '0', '1534143952', '0', null);
INSERT INTO `fy_message_user` VALUES ('287', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5305.05<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/>\\u5e0c\\u533a\\u745e\\u666e2018\\u590f\\u65b0\\u54c1\\u8fde\\u8863\\u88d9\\u77ed\\u8896\\u683c\\u5b50\\u957f\\u88d9\\u8774\\u8776\\u7ed3\\u88d9\\u5b50 \\u84dd\\u8272\\u683c\\u5b50 XL\\u9884\\u552e\\u4ed8\\u6b3e\\u540e30\\u5929\\u53d1\\u8d27   S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/>\\u5e0c\\u533a\\u745e\\u666e2018\\u590f\\u65b0\\u54c1\\u8fde\\u8863\\u88d9\\u77ed\\u8896\\u683c\\u5b50\\u957f\\u88d9\\u8774\\u8776\\u7ed3\\u88d9\\u5b50 \\u84dd\\u8272\\u683c\\u5b50 XL\\u9884\\u552e\\u4ed8\\u6b3e\\u540e30\\u5929\\u53d1\\u8d27   S\\u00d72<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/><br\\/>\"}', '0', '1534143954', '0', null);
INSERT INTO `fy_message_user` VALUES ('288', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5305.05<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/>\\u5e0c\\u533a\\u745e\\u666e2018\\u590f\\u65b0\\u54c1\\u8fde\\u8863\\u88d9\\u77ed\\u8896\\u683c\\u5b50\\u957f\\u88d9\\u8774\\u8776\\u7ed3\\u88d9\\u5b50 \\u84dd\\u8272\\u683c\\u5b50 XL\\u9884\\u552e\\u4ed8\\u6b3e\\u540e30\\u5929\\u53d1\\u8d27   S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/>\\u5e0c\\u533a\\u745e\\u666e2018\\u590f\\u65b0\\u54c1\\u8fde\\u8863\\u88d9\\u77ed\\u8896\\u683c\\u5b50\\u957f\\u88d9\\u8774\\u8776\\u7ed3\\u88d9\\u5b50 \\u84dd\\u8272\\u683c\\u5b50 XL\\u9884\\u552e\\u4ed8\\u6b3e\\u540e30\\u5929\\u53d1\\u8d27   S\\u00d72<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/><br\\/>\"}', '0', '1534144076', '0', null);
INSERT INTO `fy_message_user` VALUES ('289', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5305.05<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/>\\u5e0c\\u533a\\u745e\\u666e2018\\u590f\\u65b0\\u54c1\\u8fde\\u8863\\u88d9\\u77ed\\u8896\\u683c\\u5b50\\u957f\\u88d9\\u8774\\u8776\\u7ed3\\u88d9\\u5b50 \\u84dd\\u8272\\u683c\\u5b50 XL\\u9884\\u552e\\u4ed8\\u6b3e\\u540e30\\u5929\\u53d1\\u8d27   S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/>\\u5e0c\\u533a\\u745e\\u666e2018\\u590f\\u65b0\\u54c1\\u8fde\\u8863\\u88d9\\u77ed\\u8896\\u683c\\u5b50\\u957f\\u88d9\\u8774\\u8776\\u7ed3\\u88d9\\u5b50 \\u84dd\\u8272\\u683c\\u5b50 XL\\u9884\\u552e\\u4ed8\\u6b3e\\u540e30\\u5929\\u53d1\\u8d27   S\\u00d72<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/><br\\/>\"}', '0', '1534144076', '0', null);
INSERT INTO `fy_message_user` VALUES ('290', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5305.05<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/>\\u5e0c\\u533a\\u745e\\u666e2018\\u590f\\u65b0\\u54c1\\u8fde\\u8863\\u88d9\\u77ed\\u8896\\u683c\\u5b50\\u957f\\u88d9\\u8774\\u8776\\u7ed3\\u88d9\\u5b50 \\u84dd\\u8272\\u683c\\u5b50 XL\\u9884\\u552e\\u4ed8\\u6b3e\\u540e30\\u5929\\u53d1\\u8d27   S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/>\\u5e0c\\u533a\\u745e\\u666e2018\\u590f\\u65b0\\u54c1\\u8fde\\u8863\\u88d9\\u77ed\\u8896\\u683c\\u5b50\\u957f\\u88d9\\u8774\\u8776\\u7ed3\\u88d9\\u5b50 \\u84dd\\u8272\\u683c\\u5b50 XL\\u9884\\u552e\\u4ed8\\u6b3e\\u540e30\\u5929\\u53d1\\u8d27   S\\u00d72<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/><br\\/>\"}', '0', '1534144442', '0', null);
INSERT INTO `fy_message_user` VALUES ('291', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5305.05<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/>\\u5e0c\\u533a\\u745e\\u666e2018\\u590f\\u65b0\\u54c1\\u8fde\\u8863\\u88d9\\u77ed\\u8896\\u683c\\u5b50\\u957f\\u88d9\\u8774\\u8776\\u7ed3\\u88d9\\u5b50 \\u84dd\\u8272\\u683c\\u5b50 XL\\u9884\\u552e\\u4ed8\\u6b3e\\u540e30\\u5929\\u53d1\\u8d27   S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/>\\u5e0c\\u533a\\u745e\\u666e2018\\u590f\\u65b0\\u54c1\\u8fde\\u8863\\u88d9\\u77ed\\u8896\\u683c\\u5b50\\u957f\\u88d9\\u8774\\u8776\\u7ed3\\u88d9\\u5b50 \\u84dd\\u8272\\u683c\\u5b50 XL\\u9884\\u552e\\u4ed8\\u6b3e\\u540e30\\u5929\\u53d1\\u8d27   S\\u00d72<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/><br\\/>\"}', '0', '1534144443', '0', null);
INSERT INTO `fy_message_user` VALUES ('292', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5305.05<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/>\\u5e0c\\u533a\\u745e\\u666e2018\\u590f\\u65b0\\u54c1\\u8fde\\u8863\\u88d9\\u77ed\\u8896\\u683c\\u5b50\\u957f\\u88d9\\u8774\\u8776\\u7ed3\\u88d9\\u5b50 \\u84dd\\u8272\\u683c\\u5b50 XL\\u9884\\u552e\\u4ed8\\u6b3e\\u540e30\\u5929\\u53d1\\u8d27   S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/>\\u5e0c\\u533a\\u745e\\u666e2018\\u590f\\u65b0\\u54c1\\u8fde\\u8863\\u88d9\\u77ed\\u8896\\u683c\\u5b50\\u957f\\u88d9\\u8774\\u8776\\u7ed3\\u88d9\\u5b50 \\u84dd\\u8272\\u683c\\u5b50 XL\\u9884\\u552e\\u4ed8\\u6b3e\\u540e30\\u5929\\u53d1\\u8d27   S\\u00d72<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/><br\\/>\"}', '0', '1534144452', '0', null);
INSERT INTO `fy_message_user` VALUES ('293', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5305.05<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/>\\u5e0c\\u533a\\u745e\\u666e2018\\u590f\\u65b0\\u54c1\\u8fde\\u8863\\u88d9\\u77ed\\u8896\\u683c\\u5b50\\u957f\\u88d9\\u8774\\u8776\\u7ed3\\u88d9\\u5b50 \\u84dd\\u8272\\u683c\\u5b50 XL\\u9884\\u552e\\u4ed8\\u6b3e\\u540e30\\u5929\\u53d1\\u8d27   S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/>\\u5e0c\\u533a\\u745e\\u666e2018\\u590f\\u65b0\\u54c1\\u8fde\\u8863\\u88d9\\u77ed\\u8896\\u683c\\u5b50\\u957f\\u88d9\\u8774\\u8776\\u7ed3\\u88d9\\u5b50 \\u84dd\\u8272\\u683c\\u5b50 XL\\u9884\\u552e\\u4ed8\\u6b3e\\u540e30\\u5929\\u53d1\\u8d27   S\\u00d72<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/><br\\/>\"}', '0', '1534144453', '0', null);
INSERT INTO `fy_message_user` VALUES ('294', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5305.04<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/>\\u5e0c\\u533a\\u745e\\u666e2018\\u590f\\u65b0\\u54c1\\u8fde\\u8863\\u88d9\\u77ed\\u8896\\u683c\\u5b50\\u957f\\u88d9\\u8774\\u8776\\u7ed3\\u88d9\\u5b50 \\u84dd\\u8272\\u683c\\u5b50 XL\\u9884\\u552e\\u4ed8\\u6b3e\\u540e30\\u5929\\u53d1\\u8d27   S\\u00d72<br\\/><br\\/>\"}', '0', '1534144622', '0', null);
INSERT INTO `fy_message_user` VALUES ('295', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5305.05<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/>\\u5e0c\\u533a\\u745e\\u666e2018\\u590f\\u65b0\\u54c1\\u8fde\\u8863\\u88d9\\u77ed\\u8896\\u683c\\u5b50\\u957f\\u88d9\\u8774\\u8776\\u7ed3\\u88d9\\u5b50 \\u84dd\\u8272\\u683c\\u5b50 XL\\u9884\\u552e\\u4ed8\\u6b3e\\u540e30\\u5929\\u53d1\\u8d27   S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/>\\u5e0c\\u533a\\u745e\\u666e2018\\u590f\\u65b0\\u54c1\\u8fde\\u8863\\u88d9\\u77ed\\u8896\\u683c\\u5b50\\u957f\\u88d9\\u8774\\u8776\\u7ed3\\u88d9\\u5b50 \\u84dd\\u8272\\u683c\\u5b50 XL\\u9884\\u552e\\u4ed8\\u6b3e\\u540e30\\u5929\\u53d1\\u8d27   S\\u00d72<br\\/>\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/><br\\/>\"}', '0', '1534144623', '0', null);
INSERT INTO `fy_message_user` VALUES ('296', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5305.04<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/>\\u5e0c\\u533a\\u745e\\u666e2018\\u590f\\u65b0\\u54c1\\u8fde\\u8863\\u88d9\\u77ed\\u8896\\u683c\\u5b50\\u957f\\u88d9\\u8774\\u8776\\u7ed3\\u88d9\\u5b50 \\u84dd\\u8272\\u683c\\u5b50 XL\\u9884\\u552e\\u4ed8\\u6b3e\\u540e30\\u5929\\u53d1\\u8d27   S\\u00d72<br\\/><br\\/>\"}', '0', '1534144704', '0', null);
INSERT INTO `fy_message_user` VALUES ('297', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5305.04<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/>\\u5e0c\\u533a\\u745e\\u666e2018\\u590f\\u65b0\\u54c1\\u8fde\\u8863\\u88d9\\u77ed\\u8896\\u683c\\u5b50\\u957f\\u88d9\\u8774\\u8776\\u7ed3\\u88d9\\u5b50 \\u84dd\\u8272\\u683c\\u5b50 XL\\u9884\\u552e\\u4ed8\\u6b3e\\u540e30\\u5929\\u53d1\\u8d27   S\\u00d72<br\\/><br\\/>\"}', '0', '1534144704', '0', null);
INSERT INTO `fy_message_user` VALUES ('298', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5305.04<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/>\\u5e0c\\u533a\\u745e\\u666e2018\\u590f\\u65b0\\u54c1\\u8fde\\u8863\\u88d9\\u77ed\\u8896\\u683c\\u5b50\\u957f\\u88d9\\u8774\\u8776\\u7ed3\\u88d9\\u5b50 \\u84dd\\u8272\\u683c\\u5b50 XL\\u9884\\u552e\\u4ed8\\u6b3e\\u540e30\\u5929\\u53d1\\u8d27   S\\u00d72<br\\/><br\\/>\"}', '0', '1534144743', '0', null);
INSERT INTO `fy_message_user` VALUES ('299', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe5305.04<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/> \\u989c\\u57df\\u91cd\\u78c5\\u771f\\u4e1d\\u8fde\\u8863\\u88d9\\u5973\\u590f2018\\u65b0\\u6b3e100%\\u6851\\u8695\\u4e1d\\u77ed\\u8896\\u5370\\u82b1\\u7cfb\\u5e26\\u4fee\\u8eab\\u88d9\\u5b5020S8762 \\u82b1\\u82721 X  S\\u00d72<br\\/>\\u5e0c\\u533a\\u745e\\u666e2018\\u590f\\u65b0\\u54c1\\u8fde\\u8863\\u88d9\\u77ed\\u8896\\u683c\\u5b50\\u957f\\u88d9\\u8774\\u8776\\u7ed3\\u88d9\\u5b50 \\u84dd\\u8272\\u683c\\u5b50 XL\\u9884\\u552e\\u4ed8\\u6b3e\\u540e30\\u5929\\u53d1\\u8d27   S\\u00d72<br\\/><br\\/>\"}', '0', '1534144743', '0', null);
INSERT INTO `fy_message_user` VALUES ('307', '113', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '15', null, '0', '1534297268', '0', null);
INSERT INTO `fy_message_user` VALUES ('308', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '15', null, '0', '1534297268', '0', null);
INSERT INTO `fy_message_user` VALUES ('309', '115', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '15', null, '0', '1534297268', '0', null);
INSERT INTO `fy_message_user` VALUES ('310', '116', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '15', null, '1', '1534297268', '0', '1534410360');
INSERT INTO `fy_message_user` VALUES ('311', '118', 'omQYXwMttcgYATxUYMuVsSAVeDSU', '15', null, '0', '1534297268', '0', null);
INSERT INTO `fy_message_user` VALUES ('313', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '15', null, '0', '1534297268', '0', null);
INSERT INTO `fy_message_user` VALUES ('314', '121', 'omQYXwNHPeY_xGIxXQMxv9Z4jigc', '15', null, '0', '1534297268', '0', null);
INSERT INTO `fy_message_user` VALUES ('315', '122', 'omQYXwAvpKaDHLw4Q537lN9Fkc74', '15', null, '0', '1534297268', '0', null);
INSERT INTO `fy_message_user` VALUES ('322', '136', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.01<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u68ee\\u9a6c\\uff08Semir\\uff09 \\u4f11\\u95f2\\u88e4\\u7537 \\u7537\\u58eb\\u8fd0\\u52a8\\u88e4\\u9ed1\\u8272\\u4e5d\\u5206\\u675f\\u811a\\u88e4\\u97e9\\u7248\\u7537\\u88e4\\u5b50 13037271037 \\u6668\\u7070 31   \\u85cf\\u9752+S\\u00d71<br\\/><br\\/>\"}', '1', '1534405935', '0', '1534409811');
INSERT INTO `fy_message_user` VALUES ('328', '113', 'omQYXwM8TEkiBZR7Ldm891OOWbNQ', '16', null, '0', '1534485770', '0', null);
INSERT INTO `fy_message_user` VALUES ('329', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', '16', null, '1', '1534485770', '0', '1534549058');
INSERT INTO `fy_message_user` VALUES ('330', '118', 'omQYXwMttcgYATxUYMuVsSAVeDSU', '16', null, '0', '1534485770', '0', null);
INSERT INTO `fy_message_user` VALUES ('331', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', '16', null, '0', '1534485770', '0', null);
INSERT INTO `fy_message_user` VALUES ('332', '121', 'omQYXwNHPeY_xGIxXQMxv9Z4jigc', '16', null, '0', '1534485770', '0', null);
INSERT INTO `fy_message_user` VALUES ('333', '122', 'omQYXwAvpKaDHLw4Q537lN9Fkc74', '16', null, '0', '1534485770', '0', null);
INSERT INTO `fy_message_user` VALUES ('334', '123', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '16', null, '0', '1534485770', '0', null);
INSERT INTO `fy_message_user` VALUES ('335', '137', 'omQYXwBqWI__P_DGluDNg5xQ8UfU', '16', null, '0', '1534485770', '0', null);
INSERT INTO `fy_message_user` VALUES ('336', '145', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '16', null, '1', '1534485770', '0', '1534520491');
INSERT INTO `fy_message_user` VALUES ('337', '146', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '16', null, '1', '1534485770', '0', '1534485978');
INSERT INTO `fy_message_user` VALUES ('343', '146', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe51.00<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1aochirly\\u6b27\\u65f6\\u529b2018\\u65b0\\u5973\\u590f\\u88c5\\u62fc\\u63a5\\u8377\\u53f6\\u649e\\u8272\\u5370\\u82b1T\\u6064\\u5973\\u77ed\\u8896  \\u767d\\u8272+L\\u00d7100<br\\/><br\\/>\"}', '0', '1534495378', '0', null);
INSERT INTO `fy_message_user` VALUES ('344', '114', 'omQYXwAasNeXdGSMymd91487Ds1g', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.01<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1aONLY2018\\u79cb\\u5b63\\u65b0\\u6b3e\\u7c89\\u7ea2\\u8c79\\u4e2d\\u957f\\u5bbd\\u677eT\\u6064\\u5973  \\u00d71<br\\/><br\\/>\"}', '1', '1534549529', '0', '1534549672');
INSERT INTO `fy_message_user` VALUES ('345', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe51.00<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u54c6\\u5566a\\u68a6\\u516c\\u4ed4\\u673a\\u5668\\u732b\\u6bdb\\u7ed2\\u73a9\\u5177\\u53ee\\u5f53\\u732b\\u8d85\\u7279\\u5927\\u53f7\\u84dd\\u80d6\\u5b50\\u751f\\u65e5\\u793c\\u7269\\u5973\\u751f  \\u9ed1\\u8272+20cm\\u00d71<br\\/><br\\/>\"}', '0', '1534748199', '0', null);
INSERT INTO `fy_message_user` VALUES ('346', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', null, '{\"title\":\"\\u8ba2\\u5355\\u53d1\\u8d27\\u901a\\u77e5\",\"detail\":\"\\u60a8\\u8d2d\\u4e70\\u7684 \\u54c6\\u5566a\\u68a6\\u516c\\u4ed4\\u673a\\u5668\\u732b\\u6bdb\\u7ed2\\u73a9\\u5177\\u53ee\\u5f53\\u732b\\u8d85\\u7279\\u5927\\u53f7\\u84dd\\u80d6\\u5b50\\u751f\\u65e5\\u793c\\u7269\\u5973\\u751f \\u9ed1\\u8272+20cm\\u00d71 \\u5df2\\u7ecf\\u53d1\\u8d27\\u5566\\uff0c\\u6b63\\u5feb\\u9a6c\\u52a0\\u97ad\\u5411\\u60a8\\u98de\\u5954\\u800c\\u53bb\\u3002<br\\/>\\u8ba2\\u5355\\u7f16\\u53f7\\uff1a1441217402201808201455538416<br\\/>\\u53d1\\u8d27\\u65f6\\u95f4\\uff1a2018-08-20 14:57:23<br\\/>\\u7269\\u6d41\\u516c\\u53f8\\uff1a\\u5706\\u901a<br\\/>\\u5feb\\u9012\\u5355\\u53f7\\uff1a123456<br\\/>\\u6536\\u8d27\\u5730\\u5740\\uff1a\\u97e9   13608507163    \\u8d35\\u5dde\\u7701\\u8d35\\u9633\\u5e02\\u89c2\\u5c71\\u6e56\\u533a\\u89c2\\u5c71\\u793e\\u533a\\u670d\\u52a1\\u4e2d\\u5fc3\\u9ad8\\u79d1\\u4e00\\u53f7<br\\/>\\u8bf7\\u4fdd\\u6301\\u624b\\u673a\\u7545\\u901a\\uff01\"}', '0', '1534748243', '0', null);
INSERT INTO `fy_message_user` VALUES ('347', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.01<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u54c6\\u5566a\\u68a6\\u516c\\u4ed4\\u673a\\u5668\\u732b\\u6bdb\\u7ed2\\u73a9\\u5177\\u53ee\\u5f53\\u732b\\u8d85\\u7279\\u5927\\u53f7\\u84dd\\u80d6\\u5b50\\u751f\\u65e5\\u793c\\u7269\\u5973\\u751f  \\u767d\\u8272+30cm\\u00d71<br\\/><br\\/>\"}', '0', '1534751451', '0', null);
INSERT INTO `fy_message_user` VALUES ('348', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', null, '{\"title\":\"\\u8ba2\\u5355\\u53d1\\u8d27\\u901a\\u77e5\",\"detail\":\"\\u60a8\\u8d2d\\u4e70\\u7684 \\u54c6\\u5566a\\u68a6\\u516c\\u4ed4\\u673a\\u5668\\u732b\\u6bdb\\u7ed2\\u73a9\\u5177\\u53ee\\u5f53\\u732b\\u8d85\\u7279\\u5927\\u53f7\\u84dd\\u80d6\\u5b50\\u751f\\u65e5\\u793c\\u7269\\u5973\\u751f \\u767d\\u8272+30cm\\u00d71 \\u5df2\\u7ecf\\u53d1\\u8d27\\u5566\\uff0c\\u6b63\\u5feb\\u9a6c\\u52a0\\u97ad\\u5411\\u60a8\\u98de\\u5954\\u800c\\u53bb\\u3002<br\\/>\\u8ba2\\u5355\\u7f16\\u53f7\\uff1a1441217402201808201550257773<br\\/>\\u53d1\\u8d27\\u65f6\\u95f4\\uff1a2018-08-20 15:51:58<br\\/>\\u7269\\u6d41\\u516c\\u53f8\\uff1a\\u5706\\u901a<br\\/>\\u5feb\\u9012\\u5355\\u53f7\\uff1a123456<br\\/>\\u6536\\u8d27\\u5730\\u5740\\uff1a\\u97e9   13608507163    \\u8d35\\u5dde\\u7701\\u8d35\\u9633\\u5e02\\u89c2\\u5c71\\u6e56\\u533a\\u89c2\\u5c71\\u793e\\u533a\\u670d\\u52a1\\u4e2d\\u5fc3\\u9ad8\\u79d1\\u4e00\\u53f7<br\\/>\\u8bf7\\u4fdd\\u6301\\u624b\\u673a\\u7545\\u901a\\uff01\"}', '0', '1534751518', '0', null);
INSERT INTO `fy_message_user` VALUES ('349', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', null, '{\"title\":\"\\u8ba2\\u5355\\u652f\\u4ed8\\u6210\\u529f\",\"detail\":\"\\u6211\\u4eec\\u5df2\\u6536\\u5230\\u60a8\\u7684\\u8d27\\u6b3e\\uff0c\\u5f00\\u59cb\\u4e3a\\u60a8\\u6253\\u5305\\u5546\\u54c1\\uff0c\\u8bf7\\u8010\\u5fc3\\u7b49\\u5f85\\u3002<br\\/>\\u652f\\u4ed8\\u91d1\\u989d\\uff1a\\uffe50.01<br\\/>\\u5546\\u54c1\\u4fe1\\u606f\\uff1a\\u54c6\\u5566a\\u68a6\\u516c\\u4ed4\\u673a\\u5668\\u732b\\u6bdb\\u7ed2\\u73a9\\u5177\\u53ee\\u5f53\\u732b\\u8d85\\u7279\\u5927\\u53f7\\u84dd\\u80d6\\u5b50\\u751f\\u65e5\\u793c\\u7269\\u5973\\u751f  \\u767d\\u8272+30cm\\u00d71<br\\/><br\\/>\"}', '0', '1534752972', '0', null);
INSERT INTO `fy_message_user` VALUES ('350', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', null, '{\"title\":\"\\u8ba2\\u5355\\u53d1\\u8d27\\u901a\\u77e5\",\"detail\":\"\\u60a8\\u8d2d\\u4e70\\u7684 \\u54c6\\u5566a\\u68a6\\u516c\\u4ed4\\u673a\\u5668\\u732b\\u6bdb\\u7ed2\\u73a9\\u5177\\u53ee\\u5f53\\u732b\\u8d85\\u7279\\u5927\\u53f7\\u84dd\\u80d6\\u5b50\\u751f\\u65e5\\u793c\\u7269\\u5973\\u751f \\u767d\\u8272+30cm\\u00d71 \\u5df2\\u7ecf\\u53d1\\u8d27\\u5566\\uff0c\\u6b63\\u5feb\\u9a6c\\u52a0\\u97ad\\u5411\\u60a8\\u98de\\u5954\\u800c\\u53bb\\u3002<br\\/>\\u8ba2\\u5355\\u7f16\\u53f7\\uff1a1441217402201808201615594268<br\\/>\\u53d1\\u8d27\\u65f6\\u95f4\\uff1a2018-08-20 16:16:44<br\\/>\\u7269\\u6d41\\u516c\\u53f8\\uff1a\\u5706\\u901a<br\\/>\\u5feb\\u9012\\u5355\\u53f7\\uff1a<br\\/>\\u6536\\u8d27\\u5730\\u5740\\uff1a\\u97e9   13608507163    \\u8d35\\u5dde\\u7701\\u8d35\\u9633\\u5e02\\u89c2\\u5c71\\u6e56\\u533a\\u89c2\\u5c71\\u793e\\u533a\\u670d\\u52a1\\u4e2d\\u5fc3\\u9ad8\\u79d1\\u4e00\\u53f7<br\\/>\\u8bf7\\u4fdd\\u6301\\u624b\\u673a\\u7545\\u901a\\uff01\"}', '0', '1534753004', '0', null);
INSERT INTO `fy_message_user` VALUES ('351', '120', 'omQYXwA8qpkaMYAOG5h3aHHLJVOE', null, '{\"title\":\"\\u8ba2\\u5355\\u53d1\\u8d27\\u901a\\u77e5\",\"detail\":\"\\u60a8\\u8d2d\\u4e70\\u7684 \\u54c6\\u5566a\\u68a6\\u516c\\u4ed4\\u673a\\u5668\\u732b\\u6bdb\\u7ed2\\u73a9\\u5177\\u53ee\\u5f53\\u732b\\u8d85\\u7279\\u5927\\u53f7\\u84dd\\u80d6\\u5b50\\u751f\\u65e5\\u793c\\u7269\\u5973\\u751f \\u767d\\u8272+30cm\\u00d71 \\u5df2\\u7ecf\\u53d1\\u8d27\\u5566\\uff0c\\u6b63\\u5feb\\u9a6c\\u52a0\\u97ad\\u5411\\u60a8\\u98de\\u5954\\u800c\\u53bb\\u3002<br\\/>\\u8ba2\\u5355\\u7f16\\u53f7\\uff1a1441217402201808201615594268<br\\/>\\u53d1\\u8d27\\u65f6\\u95f4\\uff1a2018-08-20 16:16:45<br\\/>\\u7269\\u6d41\\u516c\\u53f8\\uff1a\\u5706\\u901a<br\\/>\\u5feb\\u9012\\u5355\\u53f7\\uff1a<br\\/>\\u6536\\u8d27\\u5730\\u5740\\uff1a\\u97e9   13608507163    \\u8d35\\u5dde\\u7701\\u8d35\\u9633\\u5e02\\u89c2\\u5c71\\u6e56\\u533a\\u89c2\\u5c71\\u793e\\u533a\\u670d\\u52a1\\u4e2d\\u5fc3\\u9ad8\\u79d1\\u4e00\\u53f7<br\\/>\\u8bf7\\u4fdd\\u6301\\u624b\\u673a\\u7545\\u901a\\uff01\"}', '0', '1534753005', '0', null);

-- ----------------------------
-- Table structure for fy_modular
-- ----------------------------
DROP TABLE IF EXISTS `fy_modular`;
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

-- ----------------------------
-- Records of fy_modular
-- ----------------------------
INSERT INTO `fy_modular` VALUES ('5', '/pic/uploads/20180815/37997791f696b84d28044c300ffab2c4.png', '券集市', '1530519950', '1', '2', '1534831696', 'http://www.fyxt701.com/index.php/index/lottery/market.html', '0');
INSERT INTO `fy_modular` VALUES ('6', '/pic/uploads/20180815/19bd2c8f934a1d30e29ea800ce8b0f6a.png', '积分商城', '1530519975', '1', '3', '1534831691', 'http://www.fyxt701.com/index.php/index/goods/goodsScore.html', '0');
INSERT INTO `fy_modular` VALUES ('7', '/pic/uploads/20180712/7e9ad7220a395482357dc96e6e065241.png', '充值中心', '1530519996', '1', '4', '1534831685', 'http://www.fyxt701.com/index.php/index', '0');
INSERT INTO `fy_modular` VALUES ('8', '/pic/uploads/20180727/19c301bf9f40b6c29c3d9fda684541bc.png', '会员签到', '1530520015', '1', '5', '1534831678', 'http://www.fyxt701.com/index.php/index/customer/my_sign.html', '0');
INSERT INTO `fy_modular` VALUES ('9', '/pic/uploads/20180815/e554024d8505052d6bb4deaaa2c23a03.png', '限时抢购', '1531961915', '1', '6', '1534831671', 'http://www.fyxt701.com/index.php/index/goods/rushPurchase.html', '0');

-- ----------------------------
-- Table structure for fy_node_map
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
) ENGINE=InnoDB AUTO_INCREMENT=474 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='节点图';

-- ----------------------------
-- Records of fy_node_map
-- ----------------------------
INSERT INTO `fy_node_map` VALUES ('1', 'admin', 'SildeShow', 'index', 'ALL', '轮播图');
INSERT INTO `fy_node_map` VALUES ('2', 'admin', 'AdminGroup', 'index', 'ALL', '分组管理');
INSERT INTO `fy_node_map` VALUES ('3', 'admin', 'AdminGroup', 'add', 'ALL', '分组添加');
INSERT INTO `fy_node_map` VALUES ('4', 'admin', 'Group', 'forbid', 'ALL', '分组禁止');
INSERT INTO `fy_node_map` VALUES ('5', 'admin', 'Group', 'resume', 'ALL', '分组恢复');
INSERT INTO `fy_node_map` VALUES ('6', 'admin', 'Group', 'delete', 'ALL', '分组删除');
INSERT INTO `fy_node_map` VALUES ('7', 'admin', 'Group', 'saveorder', 'ALL', '分组排序保存');
INSERT INTO `fy_node_map` VALUES ('8', 'admin', 'AdminGroup', 'recycleBin', 'ALL', 'AdminGroup 回收站');
INSERT INTO `fy_node_map` VALUES ('9', 'admin', 'AdminGroup', 'edit', 'ALL', 'AdminGroup 编辑');
INSERT INTO `fy_node_map` VALUES ('10', 'admin', 'AdminGroup', 'delete', 'ALL', 'AdminGroup 默认删除操作');
INSERT INTO `fy_node_map` VALUES ('11', 'admin', 'AdminGroup', 'recycle', 'ALL', 'AdminGroup 从回收站恢复');
INSERT INTO `fy_node_map` VALUES ('12', 'admin', 'AdminGroup', 'forbid', 'ALL', 'AdminGroup 默认禁用操作');
INSERT INTO `fy_node_map` VALUES ('13', 'admin', 'AdminGroup', 'resume', 'ALL', 'AdminGroup 默认恢复操作');
INSERT INTO `fy_node_map` VALUES ('14', 'admin', 'AdminGroup', 'deleteForever', 'ALL', 'AdminGroup 永久删除');
INSERT INTO `fy_node_map` VALUES ('15', 'admin', 'AdminGroup', 'clear', 'ALL', 'AdminGroup 清空回收站');
INSERT INTO `fy_node_map` VALUES ('16', 'admin', 'AdminGroup', 'saveOrder', 'ALL', 'AdminGroup 保存排序');
INSERT INTO `fy_node_map` VALUES ('23', 'admin', 'AdminNode', 'index', 'ALL', 'AdminNode 首页');
INSERT INTO `fy_node_map` VALUES ('24', 'admin', 'AdminNode', 'recycleBin', 'ALL', 'AdminNode 回收站');
INSERT INTO `fy_node_map` VALUES ('25', 'admin', 'AdminNode', 'sort', 'ALL', 'AdminNode 保存排序');
INSERT INTO `fy_node_map` VALUES ('26', 'admin', 'AdminNode', 'load', 'ALL', 'AdminNode 节点快速导入');
INSERT INTO `fy_node_map` VALUES ('27', 'admin', 'AdminNode', 'indexOld', 'ALL', 'AdminNode 首页');
INSERT INTO `fy_node_map` VALUES ('28', 'admin', 'AdminNode', 'add', 'ALL', 'AdminNode 添加');
INSERT INTO `fy_node_map` VALUES ('29', 'admin', 'AdminNode', 'edit', 'ALL', 'AdminNode 编辑');
INSERT INTO `fy_node_map` VALUES ('30', 'admin', 'AdminNode', 'delete', 'ALL', 'AdminNode 默认删除操作');
INSERT INTO `fy_node_map` VALUES ('31', 'admin', 'AdminNode', 'recycle', 'ALL', 'AdminNode 从回收站恢复');
INSERT INTO `fy_node_map` VALUES ('32', 'admin', 'AdminNode', 'forbid', 'ALL', 'AdminNode 默认禁用操作');
INSERT INTO `fy_node_map` VALUES ('33', 'admin', 'AdminNode', 'resume', 'ALL', 'AdminNode 默认恢复操作');
INSERT INTO `fy_node_map` VALUES ('34', 'admin', 'AdminNode', 'deleteForever', 'ALL', 'AdminNode 永久删除');
INSERT INTO `fy_node_map` VALUES ('35', 'admin', 'AdminNode', 'clear', 'ALL', 'AdminNode 清空回收站');
INSERT INTO `fy_node_map` VALUES ('36', 'admin', 'AdminNode', 'saveOrder', 'ALL', 'AdminNode 保存排序');
INSERT INTO `fy_node_map` VALUES ('38', 'admin', 'AdminNodeLoad', 'index', 'ALL', 'AdminNodeLoad 首页');
INSERT INTO `fy_node_map` VALUES ('39', 'admin', 'AdminNodeLoad', 'recycleBin', 'ALL', 'AdminNodeLoad 回收站');
INSERT INTO `fy_node_map` VALUES ('40', 'admin', 'AdminNodeLoad', 'add', 'ALL', 'AdminNodeLoad 添加');
INSERT INTO `fy_node_map` VALUES ('41', 'admin', 'AdminNodeLoad', 'edit', 'ALL', 'AdminNodeLoad 编辑');
INSERT INTO `fy_node_map` VALUES ('42', 'admin', 'AdminNodeLoad', 'forbid', 'ALL', 'AdminNodeLoad 默认禁用操作');
INSERT INTO `fy_node_map` VALUES ('43', 'admin', 'AdminNodeLoad', 'resume', 'ALL', 'AdminNodeLoad 默认恢复操作');
INSERT INTO `fy_node_map` VALUES ('44', 'admin', 'AdminNodeLoad', 'deleteForever', 'ALL', 'AdminNodeLoad 永久删除');
INSERT INTO `fy_node_map` VALUES ('45', 'admin', 'AdminNodeLoad', 'clear', 'ALL', 'AdminNodeLoad 清空回收站');
INSERT INTO `fy_node_map` VALUES ('46', 'admin', 'AdminNodeLoad', 'saveOrder', 'ALL', 'AdminNodeLoad 保存排序');
INSERT INTO `fy_node_map` VALUES ('53', 'admin', 'AdminRole', 'user', 'ALL', 'AdminRole 用户列表');
INSERT INTO `fy_node_map` VALUES ('54', 'admin', 'AdminRole', 'access', 'ALL', 'AdminRole 授权');
INSERT INTO `fy_node_map` VALUES ('55', 'admin', 'AdminRole', 'index', 'ALL', 'AdminRole 首页');
INSERT INTO `fy_node_map` VALUES ('56', 'admin', 'AdminRole', 'recycleBin', 'ALL', 'AdminRole 回收站');
INSERT INTO `fy_node_map` VALUES ('57', 'admin', 'AdminRole', 'add', 'ALL', 'AdminRole 添加');
INSERT INTO `fy_node_map` VALUES ('58', 'admin', 'AdminRole', 'edit', 'ALL', 'AdminRole 编辑');
INSERT INTO `fy_node_map` VALUES ('59', 'admin', 'AdminRole', 'delete', 'ALL', 'AdminRole 默认删除操作');
INSERT INTO `fy_node_map` VALUES ('60', 'admin', 'AdminRole', 'recycle', 'ALL', 'AdminRole 从回收站恢复');
INSERT INTO `fy_node_map` VALUES ('61', 'admin', 'AdminRole', 'forbid', 'ALL', 'AdminRole 默认禁用操作');
INSERT INTO `fy_node_map` VALUES ('62', 'admin', 'AdminRole', 'resume', 'ALL', 'AdminRole 默认恢复操作');
INSERT INTO `fy_node_map` VALUES ('63', 'admin', 'AdminRole', 'deleteForever', 'ALL', 'AdminRole 永久删除');
INSERT INTO `fy_node_map` VALUES ('64', 'admin', 'AdminRole', 'clear', 'ALL', 'AdminRole 清空回收站');
INSERT INTO `fy_node_map` VALUES ('65', 'admin', 'AdminRole', 'saveOrder', 'ALL', 'AdminRole 保存排序');
INSERT INTO `fy_node_map` VALUES ('68', 'admin', 'AdminUser', 'password', 'ALL', 'AdminUser 修改密码');
INSERT INTO `fy_node_map` VALUES ('69', 'admin', 'AdminUser', 'index', 'ALL', 'AdminUser 首页');
INSERT INTO `fy_node_map` VALUES ('70', 'admin', 'AdminUser', 'recycleBin', 'ALL', 'AdminUser 回收站');
INSERT INTO `fy_node_map` VALUES ('71', 'admin', 'AdminUser', 'add', 'ALL', 'AdminUser 添加');
INSERT INTO `fy_node_map` VALUES ('72', 'admin', 'AdminUser', 'edit', 'ALL', 'AdminUser 编辑');
INSERT INTO `fy_node_map` VALUES ('73', 'admin', 'AdminUser', 'delete', 'ALL', 'AdminUser 默认删除操作');
INSERT INTO `fy_node_map` VALUES ('74', 'admin', 'AdminUser', 'recycle', 'ALL', 'AdminUser 从回收站恢复');
INSERT INTO `fy_node_map` VALUES ('75', 'admin', 'AdminUser', 'forbid', 'ALL', 'AdminUser 默认禁用操作');
INSERT INTO `fy_node_map` VALUES ('76', 'admin', 'AdminUser', 'resume', 'ALL', 'AdminUser 默认恢复操作');
INSERT INTO `fy_node_map` VALUES ('77', 'admin', 'AdminUser', 'deleteForever', 'ALL', 'AdminUser 永久删除');
INSERT INTO `fy_node_map` VALUES ('78', 'admin', 'AdminUser', 'clear', 'ALL', 'AdminUser 清空回收站');
INSERT INTO `fy_node_map` VALUES ('79', 'admin', 'AdminUser', 'saveOrder', 'ALL', 'AdminUser 保存排序');
INSERT INTO `fy_node_map` VALUES ('83', 'admin', 'Demo', 'excel', 'ALL', 'Demo Excel一键导出');
INSERT INTO `fy_node_map` VALUES ('84', 'admin', 'Demo', 'download', 'ALL', 'Demo 下载文件');
INSERT INTO `fy_node_map` VALUES ('85', 'admin', 'Demo', 'downloadImage', 'ALL', 'Demo 下载远程图片');
INSERT INTO `fy_node_map` VALUES ('86', 'admin', 'Demo', 'mail', 'ALL', 'Demo 发送邮件');
INSERT INTO `fy_node_map` VALUES ('87', 'admin', 'Demo', 'ueditor', 'ALL', 'Demo 百度编辑器');
INSERT INTO `fy_node_map` VALUES ('88', 'admin', 'Demo', 'qiniu', 'ALL', 'Demo 七牛上传');
INSERT INTO `fy_node_map` VALUES ('89', 'admin', 'Demo', 'hashids', 'ALL', 'Demo ID加密');
INSERT INTO `fy_node_map` VALUES ('90', 'admin', 'Demo', 'layer', 'ALL', 'Demo 丰富弹层');
INSERT INTO `fy_node_map` VALUES ('91', 'admin', 'Demo', 'tableFixed', 'ALL', 'Demo 表格溢出');
INSERT INTO `fy_node_map` VALUES ('92', 'admin', 'Demo', 'imageUpload', 'ALL', 'Demo 图片上传回调');
INSERT INTO `fy_node_map` VALUES ('93', 'admin', 'Demo', 'qrcode', 'ALL', 'Demo 二维码生成');
INSERT INTO `fy_node_map` VALUES ('98', 'admin', 'Index', 'index', 'ALL', 'Index ');
INSERT INTO `fy_node_map` VALUES ('99', 'admin', 'Index', 'welcome', 'ALL', 'Index 欢迎页');
INSERT INTO `fy_node_map` VALUES ('101', 'admin', 'LoginLog', 'index', 'ALL', 'LoginLog 首页');
INSERT INTO `fy_node_map` VALUES ('102', 'admin', 'LoginLog', 'saveOrder', 'ALL', 'LoginLog 保存排序');
INSERT INTO `fy_node_map` VALUES ('104', 'admin', 'Modular', 'index', 'ALL', 'Modular ');
INSERT INTO `fy_node_map` VALUES ('105', 'admin', 'Modular', 'recycleBin', 'ALL', 'Modular 回收站');
INSERT INTO `fy_node_map` VALUES ('106', 'admin', 'Modular', 'add', 'ALL', 'Modular 添加');
INSERT INTO `fy_node_map` VALUES ('107', 'admin', 'Modular', 'edit', 'ALL', 'Modular 编辑');
INSERT INTO `fy_node_map` VALUES ('108', 'admin', 'Modular', 'delete', 'ALL', 'Modular 默认删除操作');
INSERT INTO `fy_node_map` VALUES ('109', 'admin', 'Modular', 'recycle', 'ALL', 'Modular 从回收站恢复');
INSERT INTO `fy_node_map` VALUES ('110', 'admin', 'Modular', 'forbid', 'ALL', 'Modular 默认禁用操作');
INSERT INTO `fy_node_map` VALUES ('111', 'admin', 'Modular', 'resume', 'ALL', 'Modular 默认恢复操作');
INSERT INTO `fy_node_map` VALUES ('112', 'admin', 'Modular', 'deleteForever', 'ALL', 'Modular 永久删除');
INSERT INTO `fy_node_map` VALUES ('113', 'admin', 'Modular', 'clear', 'ALL', 'Modular 清空回收站');
INSERT INTO `fy_node_map` VALUES ('114', 'admin', 'Modular', 'saveOrder', 'ALL', 'Modular 保存排序');
INSERT INTO `fy_node_map` VALUES ('119', 'admin', 'NodeMap', 'load', 'ALL', 'NodeMap 自动导入');
INSERT INTO `fy_node_map` VALUES ('120', 'admin', 'NodeMap', 'index', 'ALL', 'NodeMap 首页');
INSERT INTO `fy_node_map` VALUES ('121', 'admin', 'NodeMap', 'recycleBin', 'ALL', 'NodeMap 回收站');
INSERT INTO `fy_node_map` VALUES ('122', 'admin', 'NodeMap', 'add', 'ALL', 'NodeMap 添加');
INSERT INTO `fy_node_map` VALUES ('123', 'admin', 'NodeMap', 'edit', 'ALL', 'NodeMap 编辑');
INSERT INTO `fy_node_map` VALUES ('124', 'admin', 'NodeMap', 'deleteForever', 'ALL', 'NodeMap 永久删除');
INSERT INTO `fy_node_map` VALUES ('125', 'admin', 'NodeMap', 'saveOrder', 'ALL', 'NodeMap 保存排序');
INSERT INTO `fy_node_map` VALUES ('126', 'admin', 'Notice', 'index', 'ALL', 'Notice 首页');
INSERT INTO `fy_node_map` VALUES ('127', 'admin', 'Notice', 'recycleBin', 'ALL', 'Notice 回收站');
INSERT INTO `fy_node_map` VALUES ('128', 'admin', 'Notice', 'add', 'ALL', 'Notice 添加');
INSERT INTO `fy_node_map` VALUES ('129', 'admin', 'Notice', 'edit', 'ALL', 'Notice 编辑');
INSERT INTO `fy_node_map` VALUES ('130', 'admin', 'Notice', 'delete', 'ALL', 'Notice 默认删除操作');
INSERT INTO `fy_node_map` VALUES ('131', 'admin', 'Notice', 'recycle', 'ALL', 'Notice 从回收站恢复');
INSERT INTO `fy_node_map` VALUES ('132', 'admin', 'Notice', 'forbid', 'ALL', 'Notice 默认禁用操作');
INSERT INTO `fy_node_map` VALUES ('133', 'admin', 'Notice', 'resume', 'ALL', 'Notice 默认恢复操作');
INSERT INTO `fy_node_map` VALUES ('134', 'admin', 'Notice', 'deleteForever', 'ALL', 'Notice 永久删除');
INSERT INTO `fy_node_map` VALUES ('135', 'admin', 'Notice', 'clear', 'ALL', 'Notice 清空回收站');
INSERT INTO `fy_node_map` VALUES ('136', 'admin', 'Notice', 'saveOrder', 'ALL', 'Notice 保存排序');
INSERT INTO `fy_node_map` VALUES ('141', 'admin', 'Pub', 'login', 'ALL', 'Pub 用户登录页面');
INSERT INTO `fy_node_map` VALUES ('142', 'admin', 'Pub', 'loginFrame', 'ALL', 'Pub 小窗口登录页面');
INSERT INTO `fy_node_map` VALUES ('143', 'admin', 'Pub', 'index', 'ALL', 'Pub 首页');
INSERT INTO `fy_node_map` VALUES ('144', 'admin', 'Pub', 'logout', 'ALL', 'Pub 用户登出');
INSERT INTO `fy_node_map` VALUES ('145', 'admin', 'Pub', 'checkLogin', 'ALL', 'Pub 登录检测');
INSERT INTO `fy_node_map` VALUES ('146', 'admin', 'Pub', 'password', 'ALL', 'Pub 修改密码');
INSERT INTO `fy_node_map` VALUES ('147', 'admin', 'Pub', 'profile', 'ALL', 'Pub 查看用户信息|修改资料');
INSERT INTO `fy_node_map` VALUES ('148', 'admin', 'SildeShow', 'recycleBin', 'ALL', 'SildeShow 回收站');
INSERT INTO `fy_node_map` VALUES ('149', 'admin', 'SildeShow', 'add', 'ALL', 'SildeShow 添加');
INSERT INTO `fy_node_map` VALUES ('150', 'admin', 'SildeShow', 'edit', 'ALL', 'SildeShow 编辑');
INSERT INTO `fy_node_map` VALUES ('151', 'admin', 'SildeShow', 'delete', 'ALL', 'SildeShow 默认删除操作');
INSERT INTO `fy_node_map` VALUES ('152', 'admin', 'SildeShow', 'recycle', 'ALL', 'SildeShow 从回收站恢复');
INSERT INTO `fy_node_map` VALUES ('153', 'admin', 'SildeShow', 'forbid', 'ALL', 'SildeShow 默认禁用操作');
INSERT INTO `fy_node_map` VALUES ('154', 'admin', 'SildeShow', 'resume', 'ALL', 'SildeShow 默认恢复操作');
INSERT INTO `fy_node_map` VALUES ('155', 'admin', 'SildeShow', 'deleteForever', 'ALL', 'SildeShow 永久删除');
INSERT INTO `fy_node_map` VALUES ('156', 'admin', 'SildeShow', 'clear', 'ALL', 'SildeShow 清空回收站');
INSERT INTO `fy_node_map` VALUES ('157', 'admin', 'SildeShow', 'saveOrder', 'ALL', 'SildeShow 保存排序');
INSERT INTO `fy_node_map` VALUES ('163', 'admin', 'Upload', 'index', 'ALL', 'Upload 首页');
INSERT INTO `fy_node_map` VALUES ('164', 'admin', 'Upload', 'upload', 'ALL', 'Upload 文件上传');
INSERT INTO `fy_node_map` VALUES ('165', 'admin', 'Upload', 'remote', 'ALL', 'Upload 远程图片抓取');
INSERT INTO `fy_node_map` VALUES ('166', 'admin', 'Upload', 'listImage', 'ALL', 'Upload 图片列表');
INSERT INTO `fy_node_map` VALUES ('170', 'admin', 'WebLog', 'index', 'ALL', 'WebLog 列表');
INSERT INTO `fy_node_map` VALUES ('171', 'admin', 'WebLog', 'detail', 'ALL', 'WebLog 详情');
INSERT INTO `fy_node_map` VALUES ('173', 'admin', 'one.two.three.Four', 'index', 'ALL', 'Four 首页');
INSERT INTO `fy_node_map` VALUES ('174', 'admin', 'one.two.three.Four', 'recycleBin', 'ALL', 'Four 回收站');
INSERT INTO `fy_node_map` VALUES ('175', 'admin', 'one.two.three.Four', 'add', 'ALL', 'Four 添加');
INSERT INTO `fy_node_map` VALUES ('176', 'admin', 'one.two.three.Four', 'edit', 'ALL', 'Four 编辑');
INSERT INTO `fy_node_map` VALUES ('177', 'admin', 'one.two.three.Four', 'delete', 'ALL', 'Four 默认删除操作');
INSERT INTO `fy_node_map` VALUES ('178', 'admin', 'one.two.three.Four', 'recycle', 'ALL', 'Four 从回收站恢复');
INSERT INTO `fy_node_map` VALUES ('179', 'admin', 'one.two.three.Four', 'forbid', 'ALL', 'Four 默认禁用操作');
INSERT INTO `fy_node_map` VALUES ('180', 'admin', 'one.two.three.Four', 'resume', 'ALL', 'Four 默认恢复操作');
INSERT INTO `fy_node_map` VALUES ('181', 'admin', 'one.two.three.Four', 'deleteForever', 'ALL', 'Four 永久删除');
INSERT INTO `fy_node_map` VALUES ('182', 'admin', 'one.two.three.Four', 'clear', 'ALL', 'Four 清空回收站');
INSERT INTO `fy_node_map` VALUES ('183', 'admin', 'one.two.three.Four', 'saveOrder', 'ALL', 'Four 保存排序');
INSERT INTO `fy_node_map` VALUES ('184', 'admin', 'GoodsClass', 'add', 'ALL', 'GoodsClass 添加');
INSERT INTO `fy_node_map` VALUES ('185', 'admin', 'GoodsClass', 'edit', 'ALL', 'GoodsClass 编辑');
INSERT INTO `fy_node_map` VALUES ('186', 'admin', 'GoodsClass', 'delete', 'ALL', 'GoodsClass ');
INSERT INTO `fy_node_map` VALUES ('187', 'admin', 'GoodsClass', 'index', 'ALL', 'GoodsClass ');
INSERT INTO `fy_node_map` VALUES ('188', 'admin', 'GoodsClass', 'recycleBin', 'ALL', 'GoodsClass 回收站');
INSERT INTO `fy_node_map` VALUES ('189', 'admin', 'GoodsClass', 'recycle', 'ALL', 'GoodsClass 从回收站恢复');
INSERT INTO `fy_node_map` VALUES ('190', 'admin', 'GoodsClass', 'forbid', 'ALL', 'GoodsClass 默认禁用操作');
INSERT INTO `fy_node_map` VALUES ('191', 'admin', 'GoodsClass', 'resume', 'ALL', 'GoodsClass 默认恢复操作');
INSERT INTO `fy_node_map` VALUES ('192', 'admin', 'GoodsClass', 'deleteForever', 'ALL', 'GoodsClass 永久删除');
INSERT INTO `fy_node_map` VALUES ('193', 'admin', 'GoodsClass', 'clear', 'ALL', 'GoodsClass 清空回收站');
INSERT INTO `fy_node_map` VALUES ('194', 'admin', 'GoodsClass', 'saveOrder', 'ALL', 'GoodsClass 保存排序');
INSERT INTO `fy_node_map` VALUES ('199', 'admin', 'Brand', 'index', 'ALL', 'Brand 首页');
INSERT INTO `fy_node_map` VALUES ('200', 'admin', 'Brand', 'recycleBin', 'ALL', 'Brand 回收站');
INSERT INTO `fy_node_map` VALUES ('201', 'admin', 'Brand', 'add', 'ALL', 'Brand 添加');
INSERT INTO `fy_node_map` VALUES ('202', 'admin', 'Brand', 'edit', 'ALL', 'Brand 编辑');
INSERT INTO `fy_node_map` VALUES ('203', 'admin', 'Brand', 'delete', 'ALL', 'Brand 默认删除操作');
INSERT INTO `fy_node_map` VALUES ('204', 'admin', 'Brand', 'recycle', 'ALL', 'Brand 从回收站恢复');
INSERT INTO `fy_node_map` VALUES ('205', 'admin', 'Brand', 'forbid', 'ALL', 'Brand 默认禁用操作');
INSERT INTO `fy_node_map` VALUES ('206', 'admin', 'Brand', 'resume', 'ALL', 'Brand 默认恢复操作');
INSERT INTO `fy_node_map` VALUES ('207', 'admin', 'Brand', 'deleteForever', 'ALL', 'Brand 永久删除');
INSERT INTO `fy_node_map` VALUES ('208', 'admin', 'Brand', 'clear', 'ALL', 'Brand 清空回收站');
INSERT INTO `fy_node_map` VALUES ('209', 'admin', 'Brand', 'saveOrder', 'ALL', 'Brand 保存排序');
INSERT INTO `fy_node_map` VALUES ('210', 'admin', 'Customer', 'excel', 'ALL', 'Customer 会员信息一键导出');
INSERT INTO `fy_node_map` VALUES ('211', 'admin', 'Customer', 'index', 'ALL', 'Customer 首页');
INSERT INTO `fy_node_map` VALUES ('212', 'admin', 'Customer', 'recycleBin', 'ALL', 'Customer 回收站');
INSERT INTO `fy_node_map` VALUES ('213', 'admin', 'Customer', 'add', 'ALL', 'Customer 添加');
INSERT INTO `fy_node_map` VALUES ('214', 'admin', 'Customer', 'edit', 'ALL', 'Customer 编辑');
INSERT INTO `fy_node_map` VALUES ('215', 'admin', 'Customer', 'delete', 'ALL', 'Customer 默认删除操作');
INSERT INTO `fy_node_map` VALUES ('216', 'admin', 'Customer', 'recycle', 'ALL', 'Customer 从回收站恢复');
INSERT INTO `fy_node_map` VALUES ('217', 'admin', 'Customer', 'forbid', 'ALL', 'Customer 默认禁用操作');
INSERT INTO `fy_node_map` VALUES ('218', 'admin', 'Customer', 'resume', 'ALL', 'Customer 默认恢复操作');
INSERT INTO `fy_node_map` VALUES ('219', 'admin', 'Customer', 'deleteForever', 'ALL', 'Customer 永久删除');
INSERT INTO `fy_node_map` VALUES ('220', 'admin', 'Customer', 'clear', 'ALL', 'Customer 清空回收站');
INSERT INTO `fy_node_map` VALUES ('221', 'admin', 'Customer', 'saveOrder', 'ALL', 'Customer 保存排序');
INSERT INTO `fy_node_map` VALUES ('225', 'admin', 'Goods', 'add', 'ALL', 'Goods ');
INSERT INTO `fy_node_map` VALUES ('226', 'admin', 'Goods', 'index', 'ALL', 'Goods 首页');
INSERT INTO `fy_node_map` VALUES ('227', 'admin', 'Goods', 'recycleBin', 'ALL', 'Goods 回收站');
INSERT INTO `fy_node_map` VALUES ('228', 'admin', 'Goods', 'edit', 'ALL', 'Goods 编辑');
INSERT INTO `fy_node_map` VALUES ('229', 'admin', 'Goods', 'delete', 'ALL', 'Goods 默认删除操作');
INSERT INTO `fy_node_map` VALUES ('230', 'admin', 'Goods', 'recycle', 'ALL', 'Goods 从回收站恢复');
INSERT INTO `fy_node_map` VALUES ('231', 'admin', 'Goods', 'forbid', 'ALL', 'Goods 默认禁用操作');
INSERT INTO `fy_node_map` VALUES ('232', 'admin', 'Goods', 'resume', 'ALL', 'Goods 默认恢复操作');
INSERT INTO `fy_node_map` VALUES ('233', 'admin', 'Goods', 'deleteForever', 'ALL', 'Goods 永久删除');
INSERT INTO `fy_node_map` VALUES ('234', 'admin', 'Goods', 'clear', 'ALL', 'Goods 清空回收站');
INSERT INTO `fy_node_map` VALUES ('235', 'admin', 'Goods', 'saveOrder', 'ALL', 'Goods 保存排序');
INSERT INTO `fy_node_map` VALUES ('240', 'admin', 'CustomerTask', 'index', 'ALL', 'CustomerTask 首页');
INSERT INTO `fy_node_map` VALUES ('241', 'admin', 'CustomerTask', 'recycleBin', 'ALL', 'CustomerTask 回收站');
INSERT INTO `fy_node_map` VALUES ('242', 'admin', 'CustomerTask', 'add', 'ALL', 'CustomerTask 添加');
INSERT INTO `fy_node_map` VALUES ('243', 'admin', 'CustomerTask', 'edit', 'ALL', 'CustomerTask 编辑');
INSERT INTO `fy_node_map` VALUES ('244', 'admin', 'CustomerTask', 'delete', 'ALL', 'CustomerTask 默认删除操作');
INSERT INTO `fy_node_map` VALUES ('245', 'admin', 'CustomerTask', 'recycle', 'ALL', 'CustomerTask 从回收站恢复');
INSERT INTO `fy_node_map` VALUES ('246', 'admin', 'CustomerTask', 'forbid', 'ALL', 'CustomerTask 默认禁用操作');
INSERT INTO `fy_node_map` VALUES ('247', 'admin', 'CustomerTask', 'resume', 'ALL', 'CustomerTask 默认恢复操作');
INSERT INTO `fy_node_map` VALUES ('248', 'admin', 'CustomerTask', 'deleteForever', 'ALL', 'CustomerTask 永久删除');
INSERT INTO `fy_node_map` VALUES ('249', 'admin', 'CustomerTask', 'clear', 'ALL', 'CustomerTask 清空回收站');
INSERT INTO `fy_node_map` VALUES ('250', 'admin', 'CustomerTask', 'saveOrder', 'ALL', 'CustomerTask 保存排序');
INSERT INTO `fy_node_map` VALUES ('255', 'admin', 'Lottery', 'index', 'ALL', 'Lottery 首页');
INSERT INTO `fy_node_map` VALUES ('256', 'admin', 'Lottery', 'recycleBin', 'ALL', 'Lottery 回收站');
INSERT INTO `fy_node_map` VALUES ('257', 'admin', 'Lottery', 'add', 'ALL', 'Lottery 添加');
INSERT INTO `fy_node_map` VALUES ('258', 'admin', 'Lottery', 'edit', 'ALL', 'Lottery 编辑');
INSERT INTO `fy_node_map` VALUES ('259', 'admin', 'Lottery', 'delete', 'ALL', 'Lottery 默认删除操作');
INSERT INTO `fy_node_map` VALUES ('260', 'admin', 'Lottery', 'recycle', 'ALL', 'Lottery 从回收站恢复');
INSERT INTO `fy_node_map` VALUES ('261', 'admin', 'Lottery', 'forbid', 'ALL', 'Lottery 默认禁用操作');
INSERT INTO `fy_node_map` VALUES ('262', 'admin', 'Lottery', 'resume', 'ALL', 'Lottery 默认恢复操作');
INSERT INTO `fy_node_map` VALUES ('263', 'admin', 'Lottery', 'deleteForever', 'ALL', 'Lottery 永久删除');
INSERT INTO `fy_node_map` VALUES ('264', 'admin', 'Lottery', 'clear', 'ALL', 'Lottery 清空回收站');
INSERT INTO `fy_node_map` VALUES ('265', 'admin', 'Lottery', 'saveOrder', 'ALL', 'Lottery 保存排序');
INSERT INTO `fy_node_map` VALUES ('270', 'admin', 'Sildeshow', 'index', 'ALL', 'Sildeshow ');
INSERT INTO `fy_node_map` VALUES ('271', 'admin', 'Sildeshow', 'recycleBin', 'ALL', 'Sildeshow 回收站');
INSERT INTO `fy_node_map` VALUES ('272', 'admin', 'Sildeshow', 'add', 'ALL', 'Sildeshow 添加');
INSERT INTO `fy_node_map` VALUES ('273', 'admin', 'Sildeshow', 'edit', 'ALL', 'Sildeshow 编辑');
INSERT INTO `fy_node_map` VALUES ('274', 'admin', 'Sildeshow', 'delete', 'ALL', 'Sildeshow 默认删除操作');
INSERT INTO `fy_node_map` VALUES ('275', 'admin', 'Sildeshow', 'recycle', 'ALL', 'Sildeshow 从回收站恢复');
INSERT INTO `fy_node_map` VALUES ('276', 'admin', 'Sildeshow', 'forbid', 'ALL', 'Sildeshow 默认禁用操作');
INSERT INTO `fy_node_map` VALUES ('277', 'admin', 'Sildeshow', 'resume', 'ALL', 'Sildeshow 默认恢复操作');
INSERT INTO `fy_node_map` VALUES ('278', 'admin', 'Sildeshow', 'deleteForever', 'ALL', 'Sildeshow 永久删除');
INSERT INTO `fy_node_map` VALUES ('279', 'admin', 'Sildeshow', 'clear', 'ALL', 'Sildeshow 清空回收站');
INSERT INTO `fy_node_map` VALUES ('280', 'admin', 'Sildeshow', 'saveOrder', 'ALL', 'Sildeshow 保存排序');
INSERT INTO `fy_node_map` VALUES ('285', 'admin', 'CustomerGrade', 'add', 'ALL', 'CustomerGrade 添加');
INSERT INTO `fy_node_map` VALUES ('286', 'admin', 'CustomerGrade', 'edit', 'ALL', 'CustomerGrade 编辑');
INSERT INTO `fy_node_map` VALUES ('287', 'admin', 'CustomerGrade', 'index', 'ALL', 'CustomerGrade 首页');
INSERT INTO `fy_node_map` VALUES ('288', 'admin', 'CustomerGrade', 'recycleBin', 'ALL', 'CustomerGrade 回收站');
INSERT INTO `fy_node_map` VALUES ('289', 'admin', 'CustomerGrade', 'delete', 'ALL', 'CustomerGrade 默认删除操作');
INSERT INTO `fy_node_map` VALUES ('290', 'admin', 'CustomerGrade', 'recycle', 'ALL', 'CustomerGrade 从回收站恢复');
INSERT INTO `fy_node_map` VALUES ('291', 'admin', 'CustomerGrade', 'forbid', 'ALL', 'CustomerGrade 默认禁用操作');
INSERT INTO `fy_node_map` VALUES ('292', 'admin', 'CustomerGrade', 'resume', 'ALL', 'CustomerGrade 默认恢复操作');
INSERT INTO `fy_node_map` VALUES ('293', 'admin', 'CustomerGrade', 'deleteForever', 'ALL', 'CustomerGrade 永久删除');
INSERT INTO `fy_node_map` VALUES ('294', 'admin', 'CustomerGrade', 'clear', 'ALL', 'CustomerGrade 清空回收站');
INSERT INTO `fy_node_map` VALUES ('295', 'admin', 'CustomerGrade', 'saveOrder', 'ALL', 'CustomerGrade 保存排序');
INSERT INTO `fy_node_map` VALUES ('300', 'admin', 'Goods', 'return_json', 'ALL', 'Goods ');
INSERT INTO `fy_node_map` VALUES ('301', 'admin', 'CustomerGradeDesc', 'index', 'ALL', 'CustomerGradeDesc 首页');
INSERT INTO `fy_node_map` VALUES ('302', 'admin', 'CustomerGradeDesc', 'recycleBin', 'ALL', 'CustomerGradeDesc 回收站');
INSERT INTO `fy_node_map` VALUES ('303', 'admin', 'CustomerGradeDesc', 'add', 'ALL', 'CustomerGradeDesc 添加');
INSERT INTO `fy_node_map` VALUES ('304', 'admin', 'CustomerGradeDesc', 'edit', 'ALL', 'CustomerGradeDesc 编辑');
INSERT INTO `fy_node_map` VALUES ('305', 'admin', 'CustomerGradeDesc', 'delete', 'ALL', 'CustomerGradeDesc 默认删除操作');
INSERT INTO `fy_node_map` VALUES ('306', 'admin', 'CustomerGradeDesc', 'recycle', 'ALL', 'CustomerGradeDesc 从回收站恢复');
INSERT INTO `fy_node_map` VALUES ('307', 'admin', 'CustomerGradeDesc', 'forbid', 'ALL', 'CustomerGradeDesc 默认禁用操作');
INSERT INTO `fy_node_map` VALUES ('308', 'admin', 'CustomerGradeDesc', 'resume', 'ALL', 'CustomerGradeDesc 默认恢复操作');
INSERT INTO `fy_node_map` VALUES ('309', 'admin', 'CustomerGradeDesc', 'deleteForever', 'ALL', 'CustomerGradeDesc 永久删除');
INSERT INTO `fy_node_map` VALUES ('310', 'admin', 'CustomerGradeDesc', 'clear', 'ALL', 'CustomerGradeDesc 清空回收站');
INSERT INTO `fy_node_map` VALUES ('311', 'admin', 'CustomerGradeDesc', 'saveOrder', 'ALL', 'CustomerGradeDesc 保存排序');
INSERT INTO `fy_node_map` VALUES ('316', 'admin', 'LotteryLog', 'index', 'ALL', 'LotteryLog ');
INSERT INTO `fy_node_map` VALUES ('317', 'admin', 'LotteryLog', 'detail', 'ALL', 'LotteryLog ');
INSERT INTO `fy_node_map` VALUES ('318', 'admin', 'LotteryLog', 'recycleBin', 'ALL', 'LotteryLog 回收站');
INSERT INTO `fy_node_map` VALUES ('319', 'admin', 'LotteryLog', 'add', 'ALL', 'LotteryLog 添加');
INSERT INTO `fy_node_map` VALUES ('320', 'admin', 'LotteryLog', 'edit', 'ALL', 'LotteryLog 编辑');
INSERT INTO `fy_node_map` VALUES ('321', 'admin', 'LotteryLog', 'delete', 'ALL', 'LotteryLog 默认删除操作');
INSERT INTO `fy_node_map` VALUES ('322', 'admin', 'LotteryLog', 'recycle', 'ALL', 'LotteryLog 从回收站恢复');
INSERT INTO `fy_node_map` VALUES ('323', 'admin', 'LotteryLog', 'forbid', 'ALL', 'LotteryLog 默认禁用操作');
INSERT INTO `fy_node_map` VALUES ('324', 'admin', 'LotteryLog', 'resume', 'ALL', 'LotteryLog 默认恢复操作');
INSERT INTO `fy_node_map` VALUES ('325', 'admin', 'LotteryLog', 'deleteForever', 'ALL', 'LotteryLog 永久删除');
INSERT INTO `fy_node_map` VALUES ('326', 'admin', 'LotteryLog', 'clear', 'ALL', 'LotteryLog 清空回收站');
INSERT INTO `fy_node_map` VALUES ('327', 'admin', 'LotteryLog', 'saveOrder', 'ALL', 'LotteryLog 保存排序');
INSERT INTO `fy_node_map` VALUES ('331', 'admin', 'Activity', 'add', 'ALL', 'Activity ');
INSERT INTO `fy_node_map` VALUES ('332', 'admin', 'Activity', 'index', 'ALL', 'Activity 首页');
INSERT INTO `fy_node_map` VALUES ('333', 'admin', 'Activity', 'recycleBin', 'ALL', 'Activity 回收站');
INSERT INTO `fy_node_map` VALUES ('334', 'admin', 'Activity', 'edit', 'ALL', 'Activity 编辑');
INSERT INTO `fy_node_map` VALUES ('335', 'admin', 'Activity', 'delete', 'ALL', 'Activity 默认删除操作');
INSERT INTO `fy_node_map` VALUES ('336', 'admin', 'Activity', 'recycle', 'ALL', 'Activity 从回收站恢复');
INSERT INTO `fy_node_map` VALUES ('337', 'admin', 'Activity', 'forbid', 'ALL', 'Activity 默认禁用操作');
INSERT INTO `fy_node_map` VALUES ('338', 'admin', 'Activity', 'resume', 'ALL', 'Activity 默认恢复操作');
INSERT INTO `fy_node_map` VALUES ('339', 'admin', 'Activity', 'deleteForever', 'ALL', 'Activity 永久删除');
INSERT INTO `fy_node_map` VALUES ('340', 'admin', 'Activity', 'clear', 'ALL', 'Activity 清空回收站');
INSERT INTO `fy_node_map` VALUES ('341', 'admin', 'Activity', 'saveOrder', 'ALL', 'Activity 保存排序');
INSERT INTO `fy_node_map` VALUES ('346', 'admin', 'Customer', 'detail', 'ALL', 'Customer 会员信息详情');
INSERT INTO `fy_node_map` VALUES ('347', 'admin', 'Customer', 'getGradeVal', 'ALL', 'Customer ');
INSERT INTO `fy_node_map` VALUES ('349', 'admin', 'Goods', 'CreateProductSpecByCustomCidHasPid', 'ALL', 'Goods ');
INSERT INTO `fy_node_map` VALUES ('350', 'admin', 'Goods', 'CreateProductSpecValueByCustomCid', 'ALL', 'Goods ');
INSERT INTO `fy_node_map` VALUES ('351', 'admin', 'Goods', 'delProductSpecValueByCustomCid', 'ALL', 'Goods ');
INSERT INTO `fy_node_map` VALUES ('352', 'admin', 'Goods', 'delProductSpecByCustomCidHasPid', 'ALL', 'Goods ');
INSERT INTO `fy_node_map` VALUES ('356', 'admin', 'Lottery', 'editStatus', 'ALL', 'Lottery ');
INSERT INTO `fy_node_map` VALUES ('357', 'admin', 'CustomerTask', 'detail', 'ALL', 'CustomerTask 会员信息详情');
INSERT INTO `fy_node_map` VALUES ('358', 'admin', 'CustomerTask', 'excel', 'ALL', 'CustomerTask 会员参与任务信息一键导出');
INSERT INTO `fy_node_map` VALUES ('360', 'admin', 'Goods', 'getskudata', 'ALL', 'Goods ');
INSERT INTO `fy_node_map` VALUES ('361', 'admin', 'Order', 'index', 'ALL', 'Order 首页');
INSERT INTO `fy_node_map` VALUES ('362', 'admin', 'Order', 'recycleBin', 'ALL', 'Order 回收站');
INSERT INTO `fy_node_map` VALUES ('363', 'admin', 'Order', 'add', 'ALL', 'Order 添加');
INSERT INTO `fy_node_map` VALUES ('364', 'admin', 'Order', 'edit', 'ALL', 'Order 编辑');
INSERT INTO `fy_node_map` VALUES ('365', 'admin', 'Order', 'delete', 'ALL', 'Order 默认删除操作');
INSERT INTO `fy_node_map` VALUES ('366', 'admin', 'Order', 'recycle', 'ALL', 'Order 从回收站恢复');
INSERT INTO `fy_node_map` VALUES ('367', 'admin', 'Order', 'forbid', 'ALL', 'Order 默认禁用操作');
INSERT INTO `fy_node_map` VALUES ('368', 'admin', 'Order', 'resume', 'ALL', 'Order 默认恢复操作');
INSERT INTO `fy_node_map` VALUES ('369', 'admin', 'Order', 'deleteForever', 'ALL', 'Order 永久删除');
INSERT INTO `fy_node_map` VALUES ('370', 'admin', 'Order', 'clear', 'ALL', 'Order 清空回收站');
INSERT INTO `fy_node_map` VALUES ('371', 'admin', 'Order', 'saveOrder', 'ALL', 'Order 保存排序');
INSERT INTO `fy_node_map` VALUES ('376', 'admin', 'Transaction', 'add', 'ALL', 'Transaction ');
INSERT INTO `fy_node_map` VALUES ('377', 'admin', 'Transaction', 'edit', 'ALL', 'Transaction ');
INSERT INTO `fy_node_map` VALUES ('378', 'admin', 'Transaction', 'index', 'ALL', 'Transaction 首页');
INSERT INTO `fy_node_map` VALUES ('379', 'admin', 'Transaction', 'recycleBin', 'ALL', 'Transaction 回收站');
INSERT INTO `fy_node_map` VALUES ('380', 'admin', 'Transaction', 'delete', 'ALL', 'Transaction 默认删除操作');
INSERT INTO `fy_node_map` VALUES ('381', 'admin', 'Transaction', 'recycle', 'ALL', 'Transaction 从回收站恢复');
INSERT INTO `fy_node_map` VALUES ('382', 'admin', 'Transaction', 'forbid', 'ALL', 'Transaction 默认禁用操作');
INSERT INTO `fy_node_map` VALUES ('383', 'admin', 'Transaction', 'resume', 'ALL', 'Transaction 默认恢复操作');
INSERT INTO `fy_node_map` VALUES ('384', 'admin', 'Transaction', 'deleteForever', 'ALL', 'Transaction 永久删除');
INSERT INTO `fy_node_map` VALUES ('385', 'admin', 'Transaction', 'clear', 'ALL', 'Transaction 清空回收站');
INSERT INTO `fy_node_map` VALUES ('386', 'admin', 'Transaction', 'saveOrder', 'ALL', 'Transaction 保存排序');
INSERT INTO `fy_node_map` VALUES ('391', 'admin', 'Goods', 'editStatus', 'ALL', 'Goods ');
INSERT INTO `fy_node_map` VALUES ('392', 'admin', 'CustomerRight', 'index', 'ALL', 'CustomerRight 首页');
INSERT INTO `fy_node_map` VALUES ('393', 'admin', 'CustomerRight', 'recycleBin', 'ALL', 'CustomerRight 回收站');
INSERT INTO `fy_node_map` VALUES ('394', 'admin', 'CustomerRight', 'add', 'ALL', 'CustomerRight 添加');
INSERT INTO `fy_node_map` VALUES ('395', 'admin', 'CustomerRight', 'edit', 'ALL', 'CustomerRight 编辑');
INSERT INTO `fy_node_map` VALUES ('396', 'admin', 'CustomerRight', 'delete', 'ALL', 'CustomerRight 默认删除操作');
INSERT INTO `fy_node_map` VALUES ('397', 'admin', 'CustomerRight', 'recycle', 'ALL', 'CustomerRight 从回收站恢复');
INSERT INTO `fy_node_map` VALUES ('398', 'admin', 'CustomerRight', 'forbid', 'ALL', 'CustomerRight ');
INSERT INTO `fy_node_map` VALUES ('399', 'admin', 'CustomerRight', 'resume', 'ALL', 'CustomerRight 默认恢复操作');
INSERT INTO `fy_node_map` VALUES ('400', 'admin', 'CustomerRight', 'deleteForever', 'ALL', 'CustomerRight 永久删除');
INSERT INTO `fy_node_map` VALUES ('401', 'admin', 'CustomerRight', 'clear', 'ALL', 'CustomerRight 清空回收站');
INSERT INTO `fy_node_map` VALUES ('402', 'admin', 'CustomerRight', 'saveOrder', 'ALL', 'CustomerRight 保存排序');
INSERT INTO `fy_node_map` VALUES ('407', 'admin', 'GoodsComment', 'returnComment', 'ALL', 'GoodsComment ');
INSERT INTO `fy_node_map` VALUES ('408', 'admin', 'GoodsComment', 'index', 'ALL', 'GoodsComment 首页');
INSERT INTO `fy_node_map` VALUES ('409', 'admin', 'GoodsComment', 'recycleBin', 'ALL', 'GoodsComment 回收站');
INSERT INTO `fy_node_map` VALUES ('410', 'admin', 'GoodsComment', 'add', 'ALL', 'GoodsComment 添加');
INSERT INTO `fy_node_map` VALUES ('411', 'admin', 'GoodsComment', 'edit', 'ALL', 'GoodsComment 编辑');
INSERT INTO `fy_node_map` VALUES ('412', 'admin', 'GoodsComment', 'delete', 'ALL', 'GoodsComment 默认删除操作');
INSERT INTO `fy_node_map` VALUES ('413', 'admin', 'GoodsComment', 'recycle', 'ALL', 'GoodsComment 从回收站恢复');
INSERT INTO `fy_node_map` VALUES ('414', 'admin', 'GoodsComment', 'forbid', 'ALL', 'GoodsComment ');
INSERT INTO `fy_node_map` VALUES ('415', 'admin', 'GoodsComment', 'resume', 'ALL', 'GoodsComment 默认恢复操作');
INSERT INTO `fy_node_map` VALUES ('416', 'admin', 'GoodsComment', 'deleteForever', 'ALL', 'GoodsComment 永久删除');
INSERT INTO `fy_node_map` VALUES ('417', 'admin', 'GoodsComment', 'clear', 'ALL', 'GoodsComment 清空回收站');
INSERT INTO `fy_node_map` VALUES ('418', 'admin', 'GoodsComment', 'saveOrder', 'ALL', 'GoodsComment 保存排序');
INSERT INTO `fy_node_map` VALUES ('422', 'admin', 'Message', 'beforeEdit', 'ALL', 'Message ');
INSERT INTO `fy_node_map` VALUES ('423', 'admin', 'Message', 'beforeAdd', 'ALL', 'Message ');
INSERT INTO `fy_node_map` VALUES ('424', 'admin', 'Message', 'getLottery', 'ALL', 'Message ');
INSERT INTO `fy_node_map` VALUES ('425', 'admin', 'Message', 'add', 'ALL', 'Message 添加');
INSERT INTO `fy_node_map` VALUES ('426', 'admin', 'Message', 'edit', 'ALL', 'Message 编辑');
INSERT INTO `fy_node_map` VALUES ('427', 'admin', 'Message', 'sendUser', 'ALL', 'Message ');
INSERT INTO `fy_node_map` VALUES ('428', 'admin', 'Message', 'index', 'ALL', 'Message 首页');
INSERT INTO `fy_node_map` VALUES ('429', 'admin', 'Message', 'recycleBin', 'ALL', 'Message 回收站');
INSERT INTO `fy_node_map` VALUES ('430', 'admin', 'Message', 'delete', 'ALL', 'Message 默认删除操作');
INSERT INTO `fy_node_map` VALUES ('431', 'admin', 'Message', 'recycle', 'ALL', 'Message 从回收站恢复');
INSERT INTO `fy_node_map` VALUES ('432', 'admin', 'Message', 'forbid', 'ALL', 'Message ');
INSERT INTO `fy_node_map` VALUES ('433', 'admin', 'Message', 'resume', 'ALL', 'Message 默认恢复操作');
INSERT INTO `fy_node_map` VALUES ('434', 'admin', 'Message', 'deleteForever', 'ALL', 'Message 永久删除');
INSERT INTO `fy_node_map` VALUES ('435', 'admin', 'Message', 'clear', 'ALL', 'Message 清空回收站');
INSERT INTO `fy_node_map` VALUES ('436', 'admin', 'Message', 'saveOrder', 'ALL', 'Message 保存排序');
INSERT INTO `fy_node_map` VALUES ('437', 'admin', 'Order', 'orderDetail', 'ALL', 'Order ');
INSERT INTO `fy_node_map` VALUES ('438', 'admin', 'Order', 'addPost', 'ALL', 'Order ');
INSERT INTO `fy_node_map` VALUES ('439', 'admin', 'Order', 'editTotalPrice', 'ALL', 'Order ');
INSERT INTO `fy_node_map` VALUES ('440', 'admin', 'Order', 'afterSaleHandle', 'ALL', 'Order ');
INSERT INTO `fy_node_map` VALUES ('441', 'admin', 'Order', 'refund', 'ALL', 'Order ');
INSERT INTO `fy_node_map` VALUES ('444', 'admin', 'ScoreLog', 'index', 'ALL', 'ScoreLog 首页');
INSERT INTO `fy_node_map` VALUES ('445', 'admin', 'ScoreLog', 'recycleBin', 'ALL', 'ScoreLog 回收站');
INSERT INTO `fy_node_map` VALUES ('446', 'admin', 'ScoreLog', 'add', 'ALL', 'ScoreLog 添加');
INSERT INTO `fy_node_map` VALUES ('447', 'admin', 'ScoreLog', 'edit', 'ALL', 'ScoreLog 编辑');
INSERT INTO `fy_node_map` VALUES ('448', 'admin', 'ScoreLog', 'delete', 'ALL', 'ScoreLog 默认删除操作');
INSERT INTO `fy_node_map` VALUES ('449', 'admin', 'ScoreLog', 'recycle', 'ALL', 'ScoreLog 从回收站恢复');
INSERT INTO `fy_node_map` VALUES ('450', 'admin', 'ScoreLog', 'forbid', 'ALL', 'ScoreLog ');
INSERT INTO `fy_node_map` VALUES ('451', 'admin', 'ScoreLog', 'resume', 'ALL', 'ScoreLog 默认恢复操作');
INSERT INTO `fy_node_map` VALUES ('452', 'admin', 'ScoreLog', 'deleteForever', 'ALL', 'ScoreLog 永久删除');
INSERT INTO `fy_node_map` VALUES ('453', 'admin', 'ScoreLog', 'clear', 'ALL', 'ScoreLog 清空回收站');
INSERT INTO `fy_node_map` VALUES ('454', 'admin', 'ScoreLog', 'saveOrder', 'ALL', 'ScoreLog 保存排序');
INSERT INTO `fy_node_map` VALUES ('459', 'admin', 'WxPayRefundLog', 'index', 'ALL', 'WxPayRefundLog 首页');
INSERT INTO `fy_node_map` VALUES ('460', 'admin', 'WxPayRefundLog', 'recycleBin', 'ALL', 'WxPayRefundLog 回收站');
INSERT INTO `fy_node_map` VALUES ('461', 'admin', 'WxPayRefundLog', 'add', 'ALL', 'WxPayRefundLog 添加');
INSERT INTO `fy_node_map` VALUES ('462', 'admin', 'WxPayRefundLog', 'edit', 'ALL', 'WxPayRefundLog 编辑');
INSERT INTO `fy_node_map` VALUES ('463', 'admin', 'WxPayRefundLog', 'delete', 'ALL', 'WxPayRefundLog 默认删除操作');
INSERT INTO `fy_node_map` VALUES ('464', 'admin', 'WxPayRefundLog', 'recycle', 'ALL', 'WxPayRefundLog 从回收站恢复');
INSERT INTO `fy_node_map` VALUES ('465', 'admin', 'WxPayRefundLog', 'forbid', 'ALL', 'WxPayRefundLog ');
INSERT INTO `fy_node_map` VALUES ('466', 'admin', 'WxPayRefundLog', 'resume', 'ALL', 'WxPayRefundLog 默认恢复操作');
INSERT INTO `fy_node_map` VALUES ('467', 'admin', 'WxPayRefundLog', 'deleteForever', 'ALL', 'WxPayRefundLog 永久删除');
INSERT INTO `fy_node_map` VALUES ('468', 'admin', 'WxPayRefundLog', 'clear', 'ALL', 'WxPayRefundLog 清空回收站');
INSERT INTO `fy_node_map` VALUES ('469', 'admin', 'WxPayRefundLog', 'saveOrder', 'ALL', 'WxPayRefundLog 保存排序');

-- ----------------------------
-- Table structure for fy_notice
-- ----------------------------
DROP TABLE IF EXISTS `fy_notice`;
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

-- ----------------------------
-- Records of fy_notice
-- ----------------------------
INSERT INTO `fy_notice` VALUES ('7', '泛亚商城即将运营使用了！', '泛亚商城1.0即将试运营', '1532573107', '1', '7', '1534139243', '经过不懈的努力，泛亚商城1.0终于完成，将于一周后正式开始试运营，敬请期待！', '0');
INSERT INTO `fy_notice` VALUES ('8', '欢迎各位会员体验购买', '泛亚商城商品即将上线完毕，敬请期待！', '1532573355', '1', '7', '1534139239', '各位会员，泛亚商城各类商品即将上线完毕，商品类型多种多样，欢迎各位会员体验购买！', '0');
INSERT INTO `fy_notice` VALUES ('9', '泛亚科技简介', '', '1533258057', '1', '7', '1534139234', '泛亚科技是国家大数据战略践行者和新型大数据产业生态圈商业模式引领者。', '0');
INSERT INTO `fy_notice` VALUES ('10', '叮当猫', '   泛亚科技是国家大数据战略践行者和新型大数据产业生态圈商业模式引领者。', '1533258227', '1', '7', '1534139039', '    贵州泛亚信通网络科技有限公司（简称&ldquo;泛亚科技&rdquo;）是一家集泛在无线网络环境建设、数据可视化研究、大数据智能跨界应用为一体的大数据高科技企业，由郑州市讯捷贸易有限公司、阿里巴巴集团、贵阳广电传媒有限公司、贵阳市工业投资（集团）有限公司合资成立，注册资本1.2亿元。\r\n \r\n', '0');

-- ----------------------------
-- Table structure for fy_one_two_three_four
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
-- Table structure for fy_order
-- ----------------------------
DROP TABLE IF EXISTS `fy_order`;
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
) ENGINE=InnoDB AUTO_INCREMENT=528 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_order
-- ----------------------------

-- ----------------------------
-- Table structure for fy_order_all
-- ----------------------------
DROP TABLE IF EXISTS `fy_order_all`;
CREATE TABLE `fy_order_all` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) DEFAULT NULL COMMENT '总的订单id',
  `son_id` varchar(255) DEFAULT NULL COMMENT '子id',
  `status` tinyint(1) DEFAULT NULL COMMENT '1支付0，未支付',
  `total_price` decimal(10,2) DEFAULT NULL COMMENT '订单总价',
  `create_time` int(11) DEFAULT NULL,
  `is_tui` tinyint(1) DEFAULT '0' COMMENT '1已经推送0为推送',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=447 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_order_all
-- ----------------------------

-- ----------------------------
-- Table structure for fy_order_goods
-- ----------------------------
DROP TABLE IF EXISTS `fy_order_goods`;
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=581 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_order_goods
-- ----------------------------

-- ----------------------------
-- Table structure for fy_score_log
-- ----------------------------
DROP TABLE IF EXISTS `fy_score_log`;
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
) ENGINE=InnoDB AUTO_INCREMENT=569 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_score_log
-- ----------------------------

-- ----------------------------
-- Table structure for fy_search
-- ----------------------------
DROP TABLE IF EXISTS `fy_search`;
CREATE TABLE `fy_search` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '搜索关键词表',
  `uid` int(11) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `search` varchar(255) DEFAULT NULL COMMENT '搜索词',
  `create_time` int(11) DEFAULT NULL COMMENT '时间',
  `goods_id` text COMMENT '搜索到的商品id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1028 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_search
-- ----------------------------

-- ----------------------------
-- Table structure for fy_silde_show
-- ----------------------------
DROP TABLE IF EXISTS `fy_silde_show`;
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_silde_show
-- ----------------------------
INSERT INTO `fy_silde_show` VALUES ('6', '/pic/uploads/20180816/a4c15401cd86eaa5a241a8b93a420b86.png', '裤子', '1', '1', '1530519761', '1534831619', 'http://www.fyxt701.com/index.php/index/goods/detail/id/187.html', '0');
INSERT INTO `fy_silde_show` VALUES ('7', '/pic/uploads/20180816/c294033a256277ec75e05f92d702c498.png', '手提包', '1', '1', '1530520601', '1534831626', 'http://www.fyxt701.com/index.php/index/goods/detail/id/187.html', '0');
INSERT INTO `fy_silde_show` VALUES ('8', '/pic/uploads/20180816/b95d11e6b321bb3abfb7267a216c9c3f.png', '棉布', '1', '1', '1532572889', '1534831633', 'http://www.fyxt701.com/index.php/index/goods/rushPurchase.html', '0');
INSERT INTO `fy_silde_show` VALUES ('10', '/pic/uploads/20180816/69e7517edddc65cf02a342cdf76f32b7.png', '坚果', '1', '1', '1532575849', '1534831647', 'http://www.fyxt701.com/index.php/index/goods/rushPurchase.html', '0');

-- ----------------------------
-- Table structure for fy_sys_event_log
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
-- Table structure for fy_task_achievement
-- ----------------------------
DROP TABLE IF EXISTS `fy_task_achievement`;
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

-- ----------------------------
-- Records of fy_task_achievement
-- ----------------------------
INSERT INTO `fy_task_achievement` VALUES ('1', '11', '7', '1530151205', '1', '30.00', '1530151205', '1530151205');
INSERT INTO `fy_task_achievement` VALUES ('2', '31', '7', null, '0', '0.00', '1531151205', '1531151205');
INSERT INTO `fy_task_achievement` VALUES ('3', '21', '6', '1529747645', '1', '12.00', '1529747645', '1529823875');
INSERT INTO `fy_task_achievement` VALUES ('4', '41', '6', '1529823875', '1', '12.00', '1529823875', '1529823875');

-- ----------------------------
-- Table structure for fy_transaction
-- ----------------------------
DROP TABLE IF EXISTS `fy_transaction`;
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

-- ----------------------------
-- Records of fy_transaction
-- ----------------------------
INSERT INTO `fy_transaction` VALUES ('4', '1', '领导组', null, '1', '0', null, '1.00', null, '0');
INSERT INTO `fy_transaction` VALUES ('5', '3', 'test', null, '1', '0', null, '12.00', null, '0');
INSERT INTO `fy_transaction` VALUES ('7', '0', null, null, '1', '4', '123456', '3.00', null, '0');
INSERT INTO `fy_transaction` VALUES ('8', '0', null, null, '1', '3', null, '10.00', null, '1');
INSERT INTO `fy_transaction` VALUES ('9', '0', null, null, '1', '5', null, '3.00', null, '0');

-- ----------------------------
-- Table structure for fy_use_lottery
-- ----------------------------
DROP TABLE IF EXISTS `fy_use_lottery`;
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_use_lottery
-- ----------------------------
INSERT INTO `fy_use_lottery` VALUES ('1', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '葡萄不长牙', '1533804380', '1', '4', '20', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '1', '0.01', '0.05', '0', null);
INSERT INTO `fy_use_lottery` VALUES ('2', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '葡萄不长牙', '1533804393', '1', '4', '20', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '1', '0.01', '0.05', '0', null);
INSERT INTO `fy_use_lottery` VALUES ('8', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '葡萄不长牙', '1533805437', '1', '4', '20', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '1', '0.01', '0.05', '0', null);
INSERT INTO `fy_use_lottery` VALUES ('9', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '葡萄不长牙', '1533805439', '1', '4', '20', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '1', '0.01', '0.05', '0', null);
INSERT INTO `fy_use_lottery` VALUES ('10', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '葡萄不长牙', '1533805440', '1', '4', '20', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '1', '0.01', '0.05', '0', null);
INSERT INTO `fy_use_lottery` VALUES ('11', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '葡萄不长牙', '1533805441', '1', '4', '20', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '1', '0.01', '0.05', '0', null);
INSERT INTO `fy_use_lottery` VALUES ('12', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '葡萄不长牙', '1533805442', '1', '4', '20', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '1', '0.01', '0.05', '0', null);
INSERT INTO `fy_use_lottery` VALUES ('13', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '非也非也', '1533867035', '2', '4', '24', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '1', '0.01', '0.05', '0', null);
INSERT INTO `fy_use_lottery` VALUES ('18', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '非也非也', '1533867280', '2', '4', '24', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '1', '0.01', '0.05', '0', null);
INSERT INTO `fy_use_lottery` VALUES ('25', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '非也非也', '1534385913', '2', '4', '124', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '1', '0.01', '0.05', '0', '9413462421AA78C41FEDE01B9F40F6C7');
INSERT INTO `fy_use_lottery` VALUES ('26', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '非也非也', '1534385939', '2', '4', '124', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '1', '0.01', '0.05', '1', '9413462421AA78C41FEDE01B9F40F6C7');
INSERT INTO `fy_use_lottery` VALUES ('27', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '非也非也', '1534386017', '1', '4', '124', 'omQYXwNAT5uC15TQqMGxajJzqo4s', '1', '0.01', '0.05', '0', '9413462421AA78C41FEDE01B9F40F6C7');
INSERT INTO `fy_use_lottery` VALUES ('28', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '非也非也', '1534386597', '1', '4', '124', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '1', '0.01', '0.05', '0', 'E6E80A9E211E293248166AAF1ACFE90E');
INSERT INTO `fy_use_lottery` VALUES ('29', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '非也非也', '1534386648', '3', '4', '124', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '1', '0.01', '0.05', '0', '5E914C2D8F1146661E7CF3D1D42828D2');
INSERT INTO `fy_use_lottery` VALUES ('30', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '非也非也', '1534386701', '1', '4', '124', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '1', '0.01', '0.05', '1', 'D657AB9A7197B85F45D256EA53E1B880');
INSERT INTO `fy_use_lottery` VALUES ('31', 'omQYXwDVsykgBFcCiyYkL4AYJRzw', '非也非也', '1534406268', '1', '4', '124', 'omQYXwAnbPpTEgNYpxhqkRrfcoqE', '1', '0.01', '0.05', '0', 'C3D4C1F42B6F84E7CADCEFAE9BBA30A6');

-- ----------------------------
-- Table structure for fy_web_log_001
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
) ENGINE=MyISAM AUTO_INCREMENT=170 DEFAULT CHARSET=utf8 COMMENT='网站日志';

-- ----------------------------
-- Records of fy_web_log_001
-- ----------------------------

-- ----------------------------
-- Table structure for fy_web_log_all
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

-- ----------------------------
-- Table structure for fy_withdrawals_log
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

-- ----------------------------
-- Table structure for fy_wx_pay_refund_log
-- ----------------------------
DROP TABLE IF EXISTS `fy_wx_pay_refund_log`;
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fy_wx_pay_refund_log
-- ----------------------------
