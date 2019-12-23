/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50162
Source Host           : localhost:3306
Source Database       : warehouse

Target Server Type    : MYSQL
Target Server Version : 50162
File Encoding         : 65001

Date: 2019-11-19 22:23:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `number` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `madeTime` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1001', '苹果手机', '2016-05-05 15:55:20', '6000');
INSERT INTO `product` VALUES ('1002', 'android手机', '2016-05-05 16:03:44', '5000');
INSERT INTO `product` VALUES ('10021', '计算机3', '2019-09-09 00:00:00', '3000');
INSERT INTO `product` VALUES ('1003', '戴尔计算机', '2016-05-05 16:04:08', '3000');
INSERT INTO `product` VALUES ('1004', '华硕计算机', '2016-05-05 16:04:30', '2900');
INSERT INTO `product` VALUES ('1008', '计算机', '2019-09-09 00:00:00', '2300');
INSERT INTO `product` VALUES ('1009', '计算机2', '2019-09-09 00:00:00', '4000');
INSERT INTO `product` VALUES ('1010', '计算机4', '2019-09-09', '4000.0');
INSERT INTO `product` VALUES ('1011', '计算机1', '2019-09-09', '2300.0');
INSERT INTO `product` VALUES ('1012', '计算机', '2019-9-9', '2300.0');
