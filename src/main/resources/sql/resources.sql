/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50610
Source Host           : localhost:3306
Source Database       : cms

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2015-08-12 10:02:02
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `resources`
-- ----------------------------
DROP TABLE IF EXISTS `resources`;
CREATE TABLE `resources` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `enable` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  `desc` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resources
-- ----------------------------
INSERT INTO `resources` VALUES ('1', '1', 'URL', '/123', '1');
INSERT INTO `resources` VALUES ('2', '1', 'URL', '/user/management', '1');
INSERT INTO `resources` VALUES ('3', '1', 'URL', '/cms/index/asdasd', '1');
