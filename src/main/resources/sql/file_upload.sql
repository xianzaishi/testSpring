/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50610
Source Host           : localhost:3306
Source Database       : cms

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2015-08-12 10:01:37
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `file_upload`
-- ----------------------------
DROP TABLE IF EXISTS `file_upload`;
CREATE TABLE `file_upload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(1000) NOT NULL,
  `real_path` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of file_upload
-- ----------------------------
INSERT INTO `file_upload` VALUES ('106', 'd:/files/2013/04/15/11/12/38/633/Penguins.jpg', '');
INSERT INTO `file_upload` VALUES ('107', '/files/2013/04/16/09/42/35/518/', '');
INSERT INTO `file_upload` VALUES ('108', '/files/2013/04/16/09/57/40/14/Koala.jpg', '');
INSERT INTO `file_upload` VALUES ('109', '/files/2013/04/16/10/01/52/167/Koala.jpg', '');
INSERT INTO `file_upload` VALUES ('110', '/files/2013/04/16/10/11/43/741/Lighthouse.jpg', '');
INSERT INTO `file_upload` VALUES ('111', '/files/2013/04/16/10/13/36/131/Tulips - 副本.jpg', '');
INSERT INTO `file_upload` VALUES ('112', 'd:/files/2013/04/16/10/21/37/109/Tulips123.jpg', '');
INSERT INTO `file_upload` VALUES ('113', '/files/2013/04/16/11/18/51/315/Tulips123.jpg', '');
INSERT INTO `file_upload` VALUES ('114', '/files/2013/04/16/11/24/44/87/Penguins.jpg', '');
INSERT INTO `file_upload` VALUES ('115', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/04/16/11/28/14/105/Tulips123.jpg', '');
INSERT INTO `file_upload` VALUES ('116', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/04/16/11/30/40/967/Tulips123.jpg', '');
INSERT INTO `file_upload` VALUES ('117', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/04/16/11/32/31/71/Tulips123.jpg', '');
INSERT INTO `file_upload` VALUES ('118', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/04/16/11/34/36/264/Lighthouse.jpg', '');
INSERT INTO `file_upload` VALUES ('119', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/04/17/08/36/22/178/Koala.jpg', '\\testSpring/files/2013/04/17/08/36/22/178/Koala.jpg');
INSERT INTO `file_upload` VALUES ('120', 'd:/files/2013/04/17/09/10/17/670/Penguins.jpg', 'd:/files/2013/04/17/09/10/17/670/Penguins.jpg');
INSERT INTO `file_upload` VALUES ('121', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/04/17/10/04/37/27/Tulips.jpg', '/files/2013/04/17/10/04/37/27/Tulips.jpg');
INSERT INTO `file_upload` VALUES ('122', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/04/17/10/05/09/666/Tulips.jpg', '/files/2013/04/17/10/05/09/666/Tulips.jpg');
INSERT INTO `file_upload` VALUES ('123', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/04/17/10/20/37/620/Tulips.jpg', '/files/2013/04/17/10/20/37/620/Tulips.jpg');
INSERT INTO `file_upload` VALUES ('124', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/04/17/11/05/49/267/Tulips.jpg', '/files/2013/04/17/11/05/49/267/Tulips.jpg');
INSERT INTO `file_upload` VALUES ('125', '/files/2013/04/17/11/08/20/430/Tulips.jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/04/17/11/08/20/430/Tulips.jpg');
INSERT INTO `file_upload` VALUES ('126', '/files/2013/04/24/11/39/45/497/Penguins.jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/04/24/11/39/45/497/Penguins.jpg');
INSERT INTO `file_upload` VALUES ('127', 'd:/files/2013/04/24/11/40/03/187/Tulips.jpg', 'd:/files/2013/04/24/11/40/03/187/Tulips.jpg');
INSERT INTO `file_upload` VALUES ('128', '/files/2013/04/24/11/56/27/218/Koala.jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/04/24/11/56/27/218/Koala.jpg');
INSERT INTO `file_upload` VALUES ('129', '/files/2013/05/17/09/27/41/385/1.jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/05/17/09/27/41/385/1.jpg');
INSERT INTO `file_upload` VALUES ('130', '/files/2013/05/17/09/28/29/646/2.jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/05/17/09/28/29/646/2.jpg');
INSERT INTO `file_upload` VALUES ('131', '/files/2013/05/17/09/28/43/237/3.jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/05/17/09/28/43/237/3.jpg');
INSERT INTO `file_upload` VALUES ('132', '/files/2013/05/17/09/29/01/414/4.jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/05/17/09/29/01/414/4.jpg');
INSERT INTO `file_upload` VALUES ('133', '/files/2013/05/17/09/29/20/745/5.jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/05/17/09/29/20/745/5.jpg');
INSERT INTO `file_upload` VALUES ('134', '/files/2013/05/17/09/29/35/630/6.jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/05/17/09/29/35/630/6.jpg');
INSERT INTO `file_upload` VALUES ('135', '/files/2013/05/17/09/29/56/304/7.jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/05/17/09/29/56/304/7.jpg');
INSERT INTO `file_upload` VALUES ('136', '/files/2013/06/05/16/27/21/137/images (1).jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/06/05/16/27/21/137/images (1).jpg');
INSERT INTO `file_upload` VALUES ('137', '/files/2013/06/05/16/27/28/984/images (2).jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/06/05/16/27/28/984/images (2).jpg');
INSERT INTO `file_upload` VALUES ('138', '/files/2013/06/05/16/27/46/816/images (3).jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/06/05/16/27/46/816/images (3).jpg');
INSERT INTO `file_upload` VALUES ('139', '/files/2013/06/05/16/27/53/906/images (4).jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/06/05/16/27/53/906/images (4).jpg');
INSERT INTO `file_upload` VALUES ('140', '/files/2013/06/05/16/28/00/481/images (5).jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/06/05/16/28/00/481/images (5).jpg');
INSERT INTO `file_upload` VALUES ('141', '/files/2013/06/05/16/28/07/904/images.jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/06/05/16/28/07/904/images.jpg');
INSERT INTO `file_upload` VALUES ('142', '/files/2013/06/05/16/28/15/514/Miami_Skyline_II_by_Aerostylaz.jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/06/05/16/28/15/514/Miami_Skyline_II_by_Aerostylaz.jpg');
INSERT INTO `file_upload` VALUES ('143', '/files/2013/06/06/09/41/40/274/images (1).jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/06/06/09/41/40/274/images (1).jpg');
INSERT INTO `file_upload` VALUES ('144', '/files/2013/06/06/09/41/55/526/images (2).jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/06/06/09/41/55/526/images (2).jpg');
INSERT INTO `file_upload` VALUES ('145', '/files/2013/06/06/09/42/12/416/images (3).jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/06/06/09/42/12/416/images (3).jpg');
INSERT INTO `file_upload` VALUES ('146', '/files/2013/06/06/09/42/26/37/images (4).jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/06/06/09/42/26/37/images (4).jpg');
INSERT INTO `file_upload` VALUES ('147', '/files/2013/06/06/09/42/35/174/images (5).jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/06/06/09/42/35/174/images (5).jpg');
INSERT INTO `file_upload` VALUES ('148', '/files/2013/06/06/09/42/48/115/images.jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/06/06/09/42/48/115/images.jpg');
INSERT INTO `file_upload` VALUES ('149', '/files/2013/06/06/09/43/02/456/下载 (1).jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/06/06/09/43/02/456/下载 (1).jpg');
INSERT INTO `file_upload` VALUES ('150', '/files/2013/06/06/09/43/07/155/下载 (1).jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/06/06/09/43/07/155/下载 (1).jpg');
INSERT INTO `file_upload` VALUES ('151', '/files/2013/06/06/09/43/26/951/下载.jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/06/06/09/43/26/951/下载.jpg');
INSERT INTO `file_upload` VALUES ('152', '/files/2013/06/06/10/29/36/840/images (2).jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/06/06/10/29/36/840/images (2).jpg');
INSERT INTO `file_upload` VALUES ('153', '/files/2013/06/06/10/29/50/446/images (1).jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/06/06/10/29/50/446/images (1).jpg');
INSERT INTO `file_upload` VALUES ('154', '/files/2013/06/06/11/20/01/960/下载 (2).jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/06/06/11/20/01/960/下载 (2).jpg');
INSERT INTO `file_upload` VALUES ('155', '/files/2013/06/06/11/20/28/429/下载.jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/06/06/11/20/28/429/下载.jpg');
INSERT INTO `file_upload` VALUES ('156', '/files/2013/06/06/11/20/36/951/下载 (1).jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/06/06/11/20/36/951/下载 (1).jpg');
INSERT INTO `file_upload` VALUES ('157', '/files/2013/06/06/11/20/48/656/images.jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/06/06/11/20/48/656/images.jpg');
INSERT INTO `file_upload` VALUES ('158', '/files/2013/06/06/11/20/56/634/images (5).jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/06/06/11/20/56/634/images (5).jpg');
INSERT INTO `file_upload` VALUES ('159', '/files/2013/06/06/11/21/05/295/images (4).jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/06/06/11/21/05/295/images (4).jpg');
INSERT INTO `file_upload` VALUES ('160', '/files/2013/06/06/11/21/13/191/images (3).jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/06/06/11/21/13/191/images (3).jpg');
INSERT INTO `file_upload` VALUES ('161', '/files/2013/06/06/11/21/22/262/images (1).jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/06/06/11/21/22/262/images (1).jpg');
INSERT INTO `file_upload` VALUES ('162', '/files/2013/06/08/11/35/54/39/Chrysanthemum.jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/06/08/11/35/54/39/Chrysanthemum.jpg');
INSERT INTO `file_upload` VALUES ('163', '/files/2013/06/08/11/36/08/256/Desert.jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/06/08/11/36/08/256/Desert.jpg');
INSERT INTO `file_upload` VALUES ('164', '/files/2013/06/08/11/36/21/184/Hydrangeas.jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/06/08/11/36/21/184/Hydrangeas.jpg');
INSERT INTO `file_upload` VALUES ('165', '/files/2013/06/08/11/36/32/597/Jellyfish.jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/06/08/11/36/32/597/Jellyfish.jpg');
INSERT INTO `file_upload` VALUES ('166', '/files/2013/06/08/11/36/44/402/Koala.jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/06/08/11/36/44/402/Koala.jpg');
INSERT INTO `file_upload` VALUES ('167', '/files/2013/06/08/11/36/55/820/Lighthouse.jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/06/08/11/36/55/820/Lighthouse.jpg');
INSERT INTO `file_upload` VALUES ('168', '/files/2013/06/08/11/37/09/792/Penguins.jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/06/08/11/37/09/792/Penguins.jpg');
INSERT INTO `file_upload` VALUES ('169', '/files/2013/06/08/11/37/22/384/Tulips.jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/06/08/11/37/22/384/Tulips.jpg');
INSERT INTO `file_upload` VALUES ('170', '/files/2013/06/08/11/37/36/223/Tulips123.jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/06/08/11/37/36/223/Tulips123.jpg');
INSERT INTO `file_upload` VALUES ('171', '/files/2013/06/08/17/03/52/947/Koala.jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/06/08/17/03/52/947/Koala.jpg');
INSERT INTO `file_upload` VALUES ('172', '/files/2013/06/08/17/05/08/154/Chrysanthemum.jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/06/08/17/05/08/154/Chrysanthemum.jpg');
INSERT INTO `file_upload` VALUES ('173', '/files/2013/06/08/17/05/42/887/Hydrangeas.jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/06/08/17/05/42/887/Hydrangeas.jpg');
INSERT INTO `file_upload` VALUES ('174', '/files/2013/06/08/17/06/23/192/Penguins.jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/06/08/17/06/23/192/Penguins.jpg');
INSERT INTO `file_upload` VALUES ('175', '/files/2013/08/26/09/51/19/903/001.gif', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/08/26/09/51/19/903/001.gif');
INSERT INTO `file_upload` VALUES ('176', '/files/2013/08/26/09/51/46/181/001.gif', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/08/26/09/51/46/181/001.gif');
INSERT INTO `file_upload` VALUES ('177', '/files/2013/08/26/09/55/02/508/001.gif', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/08/26/09/55/02/508/001.gif');
INSERT INTO `file_upload` VALUES ('178', '/files/2013/08/26/10/15/51/525/哈哈.gif', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/08/26/10/15/51/525/哈哈.gif');
INSERT INTO `file_upload` VALUES ('179', '/files/2013/08/26/10/28/46/20/123.gif', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/08/26/10/28/46/20/123.gif');
INSERT INTO `file_upload` VALUES ('180', '/files/2013/08/26/10/28/54/747/123.gif', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/08/26/10/28/54/747/123.gif');
INSERT INTO `file_upload` VALUES ('181', '/files/2013/08/26/10/29/02/797/123.gif', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/08/26/10/29/02/797/123.gif');
INSERT INTO `file_upload` VALUES ('182', '/files/2013/08/26/10/39/09/880/123.gif', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/08/26/10/39/09/880/123.gif');
INSERT INTO `file_upload` VALUES ('183', '/files/2013/08/26/10/39/20/545/123.gif', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/08/26/10/39/20/545/123.gif');
INSERT INTO `file_upload` VALUES ('184', '/files/2013/08/26/10/39/26/996/123.gif', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/08/26/10/39/26/996/123.gif');
INSERT INTO `file_upload` VALUES ('185', '/files/2013/08/26/10/39/33/709/123.gif', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/08/26/10/39/33/709/123.gif');
INSERT INTO `file_upload` VALUES ('186', '/files/2013/08/26/10/40/39/226/123.gif', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/08/26/10/40/39/226/123.gif');
INSERT INTO `file_upload` VALUES ('187', '/files/2013/08/26/10/41/53/304/123.gif', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/08/26/10/41/53/304/123.gif');
INSERT INTO `file_upload` VALUES ('188', '/files/2013/08/26/10/42/03/31/123.gif', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/08/26/10/42/03/31/123.gif');
INSERT INTO `file_upload` VALUES ('189', '/files/2013/08/30/15/03/05/211/123.gif', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/08/30/15/03/05/211/123.gif');
INSERT INTO `file_upload` VALUES ('190', '/files/2013/08/30/15/03/19/873/20130830145131.jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/08/30/15/03/19/873/20130830145131.jpg');
INSERT INTO `file_upload` VALUES ('191', '/files/2013/08/30/15/27/38/561/123.gif', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/08/30/15/27/38/561/123.gif');
INSERT INTO `file_upload` VALUES ('192', '/files/2013/08/30/15/27/50/966/123.gif', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/08/30/15/27/50/966/123.gif');
INSERT INTO `file_upload` VALUES ('193', '/files/2013/09/02/11/31/55/782/Chrysanthemum.jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/09/02/11/31/55/782/Chrysanthemum.jpg');
INSERT INTO `file_upload` VALUES ('194', '/files/2013/09/02/11/32/02/896/Desert.jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/09/02/11/32/02/896/Desert.jpg');
INSERT INTO `file_upload` VALUES ('195', '/files/2013/09/02/11/32/10/260/Hydrangeas.jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/09/02/11/32/10/260/Hydrangeas.jpg');
INSERT INTO `file_upload` VALUES ('196', '/files/2013/09/02/11/32/18/68/Jellyfish.jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/09/02/11/32/18/68/Jellyfish.jpg');
INSERT INTO `file_upload` VALUES ('197', '/files/2013/09/02/11/32/25/569/Koala.jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/09/02/11/32/25/569/Koala.jpg');
INSERT INTO `file_upload` VALUES ('198', '/files/2013/09/02/11/32/32/746/Lighthouse.jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/09/02/11/32/32/746/Lighthouse.jpg');
INSERT INTO `file_upload` VALUES ('199', '/files/2013/09/02/11/32/40/836/Penguins.jpg', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/09/02/11/32/40/836/Penguins.jpg');
INSERT INTO `file_upload` VALUES ('200', '/files/2013/09/03/09/38/39/290/1.png', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/09/03/09/38/39/290/1.png');
INSERT INTO `file_upload` VALUES ('201', '/files/2013/09/03/09/38/47/590/2.png', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/09/03/09/38/47/590/2.png');
INSERT INTO `file_upload` VALUES ('202', '/files/2013/09/03/09/38/55/258/3.png', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/09/03/09/38/55/258/3.png');
INSERT INTO `file_upload` VALUES ('203', '/files/2013/09/03/09/39/03/695/4.png', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/09/03/09/39/03/695/4.png');
INSERT INTO `file_upload` VALUES ('204', '/files/2013/09/03/09/39/11/721/5.png', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/09/03/09/39/11/721/5.png');
INSERT INTO `file_upload` VALUES ('205', '/files/2013/09/03/09/39/19/314/6.png', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/09/03/09/39/19/314/6.png');
INSERT INTO `file_upload` VALUES ('206', '/files/2013/09/03/09/39/29/291/7.png', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2013/09/03/09/39/29/291/7.png');
INSERT INTO `file_upload` VALUES ('207', '/files/2014/03/12/16/44/51/570/1.png', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2014/03/12/16/44/51/570/1.png');
INSERT INTO `file_upload` VALUES ('208', '/files/2014/03/13/09/57/30/852/1.png', null);
INSERT INTO `file_upload` VALUES ('209', '/files/2014/03/13/09/58/00/252/5.png', null);
INSERT INTO `file_upload` VALUES ('210', '/files/2014/04/24/10/15/48/69/1.png', 'D:\\apache-tomcat-6.0.26\\bin\\wtpwebapps\\testSpring/files/2014/04/24/10/15/48/69/1.png');
INSERT INTO `file_upload` VALUES ('211', '/files/2014/07/25/11/30/24/770/inNcHkIjDFB6T.png', 'D:\\workspace_source\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\testSpring/files/2014/07/25/11/30/24/770/inNcHkIjDFB6T.png');
INSERT INTO `file_upload` VALUES ('212', '/files/2014/07/25/11/39/29/221/inNcHkIjDFB6T.png', 'D:\\workspace_source\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\testSpring/files/2014/07/25/11/39/29/221/inNcHkIjDFB6T.png');
