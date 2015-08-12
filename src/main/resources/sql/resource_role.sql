/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50610
Source Host           : localhost:3306
Source Database       : cms

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2015-08-12 10:01:58
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `resource_role`
-- ----------------------------
DROP TABLE IF EXISTS `resource_role`;
CREATE TABLE `resource_role` (
  `resource_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`resource_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resource_role
-- ----------------------------
INSERT INTO `resource_role` VALUES ('1', '1');
INSERT INTO `resource_role` VALUES ('2', '1');
INSERT INTO `resource_role` VALUES ('3', '1');
