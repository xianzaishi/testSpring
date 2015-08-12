/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50610
Source Host           : localhost:3306
Source Database       : cms

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2015-08-12 10:01:42
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `images`
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 4096 kB';

-- ----------------------------
-- Records of images
-- ----------------------------
INSERT INTO `images` VALUES ('63', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/04/15/08/57/56/581/Koala.jpg');
INSERT INTO `images` VALUES ('64', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/04/15/09/09/40/856/Penguins.jpg');
INSERT INTO `images` VALUES ('65', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/04/15/09/13/05/357/Tulips.jpg');
INSERT INTO `images` VALUES ('66', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/04/15/09/23/19/881/Jellyfish.jpg');
INSERT INTO `images` VALUES ('67', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/04/15/09/27/10/256/Lighthouse.jpg');
INSERT INTO `images` VALUES ('68', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/04/15/09/30/06/31/Lighthouse.jpg');
INSERT INTO `images` VALUES ('69', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/04/15/09/36/19/201/Lighthouse.jpg');
INSERT INTO `images` VALUES ('70', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/04/15/09/37/47/400/Lighthouse.jpg');
INSERT INTO `images` VALUES ('71', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/04/15/09/38/19/131/Lighthouse.jpg');
INSERT INTO `images` VALUES ('72', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/04/15/09/38/28/259/Lighthouse.jpg');
INSERT INTO `images` VALUES ('73', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/04/15/09/38/45/30/Lighthouse.jpg');
INSERT INTO `images` VALUES ('74', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/04/15/09/39/52/901/Lighthouse.jpg');
INSERT INTO `images` VALUES ('75', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/04/15/09/56/23/758/Koala.jpg');
INSERT INTO `images` VALUES ('76', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/04/16/10/17/47/270/Tulips - 副本.jpg');
INSERT INTO `images` VALUES ('77', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/04/16/10/18/27/26/Tulips123.jpg');
INSERT INTO `images` VALUES ('78', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/04/17/08/36/16/921/Penguins.jpg');
INSERT INTO `images` VALUES ('79', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/04/17/09/18/06/341/Penguins.jpg');
INSERT INTO `images` VALUES ('80', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/04/17/11/14/04/756/Penguins.jpg');
INSERT INTO `images` VALUES ('81', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/04/24/11/23/34/365/Penguins.jpg');
INSERT INTO `images` VALUES ('82', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/04/24/11/25/21/789/Penguins.jpg');
INSERT INTO `images` VALUES ('83', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/04/24/11/26/58/664/Penguins.jpg');
INSERT INTO `images` VALUES ('84', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/04/24/11/39/57/199/Penguins.jpg');
INSERT INTO `images` VALUES ('85', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/08/26/10/16/46/47/哈哈.gif');
INSERT INTO `images` VALUES ('86', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/08/30/09/12/21/942/123.gif');
INSERT INTO `images` VALUES ('87', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/09/02/08/57/08/412/123.gif');
INSERT INTO `images` VALUES ('88', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/09/02/09/01/53/937/123.gif');
INSERT INTO `images` VALUES ('89', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/09/02/09/08/24/616/123.gif');
INSERT INTO `images` VALUES ('90', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/09/02/09/17/29/120/123.gif');
INSERT INTO `images` VALUES ('91', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/09/02/09/17/47/116/123.gif');
INSERT INTO `images` VALUES ('92', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/09/02/09/18/25/306/123.gif');
INSERT INTO `images` VALUES ('93', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/09/02/09/18/38/410/123.gif');
INSERT INTO `images` VALUES ('94', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/09/02/09/19/06/8/123.gif');
INSERT INTO `images` VALUES ('95', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/09/02/09/24/02/340/123.gif');
INSERT INTO `images` VALUES ('96', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/09/02/09/26/53/372/123.gif');
INSERT INTO `images` VALUES ('97', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2014/03/12/16/30/02/802/职称.jpg');
INSERT INTO `images` VALUES ('98', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2014/03/12/16/44/46/645/1.png');
INSERT INTO `images` VALUES ('99', 'D:\\apache-tomcat-6.0.26\\webapps\\testSpring/files/2014/03/13/09/57/45/900/1.png');
