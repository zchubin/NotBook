/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50162
Source Host           : localhost:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50162
File Encoding         : 65001

Date: 2019-12-09 21:31:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `classify`
-- ----------------------------
DROP TABLE IF EXISTS `classify`;
CREATE TABLE `classify` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` char(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classify
-- ----------------------------
INSERT INTO `classify` VALUES ('1', '兰蔻');
INSERT INTO `classify` VALUES ('2', '娇兰');
INSERT INTO `classify` VALUES ('3', '雅诗兰黛');

-- ----------------------------
-- Table structure for `cosmeticform`
-- ----------------------------
DROP TABLE IF EXISTS `cosmeticform`;
CREATE TABLE `cosmeticform` (
  `cosmetic_number` char(255) NOT NULL DEFAULT '',
  `cosmetic_name` char(255) DEFAULT NULL,
  `cosmetic_made` char(255) DEFAULT NULL,
  `cosmetic_price` float DEFAULT NULL,
  `cosmetic_mess` char(255) DEFAULT NULL,
  `cosmetic_pic` char(255) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cosmetic_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cosmeticform
-- ----------------------------
INSERT INTO `cosmeticform` VALUES ('EsteeLauder1001', '雅诗兰黛眼霜', 'EsteeLauder', '389', '功效：云眼袋，云转眼圈', 'est1.jpg', '3');
INSERT INTO `cosmeticform` VALUES ('lan_a10002', '兰蔻乳液', '法国lancome', '588', '乳液功效;补水', 'lan2.jpg', '1');
INSERT INTO `cosmeticform` VALUES ('lan_a1001', '兰蔻清滢柔肤水', '法国lancome', '229', '化妆品净含量：400g', 'lan1.jpg', '1');

-- ----------------------------
-- Table structure for `orderform`
-- ----------------------------
DROP TABLE IF EXISTS `orderform`;
CREATE TABLE `orderform` (
  `id` int(10) NOT NULL DEFAULT '0',
  `logname` char(255) DEFAULT NULL,
  `mess` char(255) DEFAULT NULL,
  `sum` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderform
-- ----------------------------
INSERT INTO `orderform` VALUES ('0', 'aa', '1:(lan_a10002,兰蔻乳液,法国lancome,588.0)', '588');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `logname` char(255) DEFAULT NULL,
  `password` char(255) DEFAULT NULL,
  `phone` char(255) DEFAULT NULL,
  `address` char(255) DEFAULT NULL,
  `realname` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('aaa', 'bbb', '111', '广州市', '张三');
INSERT INTO `user` VALUES ('gzcc', 'bbb', '2222', '广东', 'gz');
INSERT INTO `user` VALUES ('aa', 'bb', '333', 'dd', 'dd');
