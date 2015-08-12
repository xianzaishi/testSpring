/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50610
Source Host           : localhost:3306
Source Database       : cms

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2015-08-12 10:01:52
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `question`
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `create_date` datetime NOT NULL,
  `creator` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('1', 'Q:asdasdasdasdasdasdasd', '2014-09-27 10:43:19', '匿名用户');
INSERT INTO `question` VALUES ('2', 'Q:asdasdasdasd', '2014-09-27 10:45:02', '匿名用户');
INSERT INTO `question` VALUES ('3', 'Q:asdasd', '2014-09-27 10:48:41', '匿名用户');
INSERT INTO `question` VALUES ('4', 'Q:asdasdasdasd', '2014-09-27 10:55:34', '匿名用户');
INSERT INTO `question` VALUES ('5', 'Q:asdasdasdasd', '2014-09-27 11:00:36', '匿名用户');
