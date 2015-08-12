/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50610
Source Host           : localhost:3306
Source Database       : cms

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2015-08-12 10:01:28
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `channel`
-- ----------------------------
DROP TABLE IF EXISTS `channel`;
CREATE TABLE `channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of channel
-- ----------------------------
INSERT INTO `channel` VALUES ('1', '0', '目录');
INSERT INTO `channel` VALUES ('20', '86', '医院公告');
INSERT INTO `channel` VALUES ('21', '86', '医院动态');
INSERT INTO `channel` VALUES ('22', '86', '焦点图片');
INSERT INTO `channel` VALUES ('23', '47', '党建之窗');
INSERT INTO `channel` VALUES ('24', '86', '健康科普');
INSERT INTO `channel` VALUES ('25', '86', '视频专区');
INSERT INTO `channel` VALUES ('27', '86', '科室特色');
INSERT INTO `channel` VALUES ('28', '88', '眼科');
INSERT INTO `channel` VALUES ('30', '88', '骨外科');
INSERT INTO `channel` VALUES ('31', '88', '麻醉科');
INSERT INTO `channel` VALUES ('32', '88', '儿科');
INSERT INTO `channel` VALUES ('33', '89', '检验科');
INSERT INTO `channel` VALUES ('34', '86', '就诊指南');
INSERT INTO `channel` VALUES ('35', '38', '责任医院');
INSERT INTO `channel` VALUES ('36', '35', '就医指南');
INSERT INTO `channel` VALUES ('37', '35', '责任要闻');
INSERT INTO `channel` VALUES ('38', '86', '导航');
INSERT INTO `channel` VALUES ('39', '38', '责任行为');
INSERT INTO `channel` VALUES ('40', '39', '疾病与健康管理');
INSERT INTO `channel` VALUES ('41', '39', '责任天使');
INSERT INTO `channel` VALUES ('42', '38', '网上医疗');
INSERT INTO `channel` VALUES ('43', '38', '政策导航');
INSERT INTO `channel` VALUES ('44', '43', '医疗政策');
INSERT INTO `channel` VALUES ('45', '43', '医院院务');
INSERT INTO `channel` VALUES ('46', '43', '政策链接');
INSERT INTO `channel` VALUES ('47', '38', '医院文化');
INSERT INTO `channel` VALUES ('49', '47', '先进事迹');
INSERT INTO `channel` VALUES ('50', '47', '行风建设');
INSERT INTO `channel` VALUES ('51', '1', '工会');
INSERT INTO `channel` VALUES ('52', '51', '公告通知');
INSERT INTO `channel` VALUES ('53', '51', '图片新闻');
INSERT INTO `channel` VALUES ('54', '51', '工会动态');
INSERT INTO `channel` VALUES ('55', '51', '先进表彰');
INSERT INTO `channel` VALUES ('56', '51', '员工发展与关怀');
INSERT INTO `channel` VALUES ('57', '51', '职工文化');
INSERT INTO `channel` VALUES ('58', '51', '法律法规');
INSERT INTO `channel` VALUES ('59', '51', '精彩图片');
INSERT INTO `channel` VALUES ('60', '51', '联系我们');
INSERT INTO `channel` VALUES ('61', '86', '先进设备展示');
INSERT INTO `channel` VALUES ('62', '86', '认证');
INSERT INTO `channel` VALUES ('63', '87', '神经内科');
INSERT INTO `channel` VALUES ('64', '87', '肾内科');
INSERT INTO `channel` VALUES ('65', '87', '心血管内科');
INSERT INTO `channel` VALUES ('66', '88', '普外科');
INSERT INTO `channel` VALUES ('67', '89', '急诊科');
INSERT INTO `channel` VALUES ('68', '87', '妇产科');
INSERT INTO `channel` VALUES ('69', '86', '专家介绍');
INSERT INTO `channel` VALUES ('70', '90', '眼 科');
INSERT INTO `channel` VALUES ('71', '38', '责任之家');
INSERT INTO `channel` VALUES ('72', '71', '家之宣言');
INSERT INTO `channel` VALUES ('73', '71', '家人风采');
INSERT INTO `channel` VALUES ('74', '71', '家事分享');
INSERT INTO `channel` VALUES ('75', '78', '医疗服务');
INSERT INTO `channel` VALUES ('76', '78', '护理服务');
INSERT INTO `channel` VALUES ('77', '78', '责任快递');
INSERT INTO `channel` VALUES ('78', '38', '责任医疗');
INSERT INTO `channel` VALUES ('79', '80', '急救中心');
INSERT INTO `channel` VALUES ('80', '38', '快速链接');
INSERT INTO `channel` VALUES ('81', '80', '空中门诊');
INSERT INTO `channel` VALUES ('82', '80', '预约挂号');
INSERT INTO `channel` VALUES ('83', '51', '工会概况');
INSERT INTO `channel` VALUES ('84', '47', '医护文苑');
INSERT INTO `channel` VALUES ('86', '1', '医院首页');
INSERT INTO `channel` VALUES ('87', '27', '内科系统');
INSERT INTO `channel` VALUES ('88', '27', '外科系统');
INSERT INTO `channel` VALUES ('89', '27', '检验');
INSERT INTO `channel` VALUES ('90', '69', '内科 系统');
