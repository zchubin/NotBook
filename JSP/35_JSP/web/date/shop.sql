/*
Navicat MySQL Data Transfer

Source Server         : zhong
Source Server Version : 50162
Source Host           : localhost:3306
Source Database       : zhong

Target Server Type    : MYSQL
Target Server Version : 50162
File Encoding         : 65001

Date: 2019-12-14 15:15:32
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
-- Records of classify 分类表
-- ----------------------------
INSERT INTO `classify` VALUES ('1', '热销水果');
INSERT INTO `classify` VALUES ('2', '特价专场');
INSERT INTO `classify` VALUES ('3', '优惠专场');
INSERT INTO `classify` VALUES ('4', '团购专场');

-- ----------------------------
-- Table structure for `goodsform`
-- ----------------------------
DROP TABLE IF EXISTS `goodsfrom`;
CREATE TABLE `goodsfrom` (
  `goods_number` char(255) NOT NULL DEFAULT '',
  `goods_name` char(255) DEFAULT NULL,
  `goods_made` char(255) DEFAULT NULL,
  `goods_price` float DEFAULT NULL,
  `goods_mess` char(255) DEFAULT NULL,
  `goods_pic` char(255) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  PRIMARY KEY (`goods_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodsform
-- ----------------------------
INSERT INTO `goodsform` VALUES ('1001', '红苹果', 'zhong', '2.5',  '味道鲜美，富含维生素，大量植物纤维有助于消化''apple-1.jpeg');
INSERT INTO `goodsform` VALUES ('1002', '青苹果', 'zhong', '2.5',  '味道鲜美，富含维生素，大量植物纤维有助于消化''apple-2.jpeg');
INSERT INTO `goodsform` VALUES ('1004', '香蕉',   'zhong', '3.5', '味道鲜美，富含维生素，大量植物纤维有助于消化' 'banana.jpg');
INSERT INTO `goodsform` VALUES ('1016', '橘子',   'zhong', '2.5', '味道鲜美，富含维生素，大量植物纤维有助于消化' 'orange.jpg');
INSERT INTO `goodsform` VALUES ('1017', '橙子',   'zhong', '2.5', '味道鲜美，富含维生素，大量植物纤维有助于消化' 'orange_2.jpg');
INSERT INTO `goodsform` VALUES ('1018', '软桃',   'zhong', '2.5', '味道鲜美，富含维生素，大量植物纤维有助于消化' 'peach.jpg');
INSERT INTO `goodsform` VALUES ('1019', '脆桃',   'zhong', '3.5', '味道鲜美，富含维生素，大量植物纤维有助于消化' 'peach.jpg');
INSERT INTO `goodsform` VALUES ('1020', '梨子',   'zhong', '3.0', '味道鲜美，富含维生素，大量植物纤维有助于消化' 'pear.jpg');
INSERT INTO `goodsform` VALUES ('2007', '椰子',   'zhong', '13.0','味道鲜美，富含维生素，大量植物纤维有助于消化' 'coconut.jpg');
INSERT INTO `goodsform` VALUES ('2008', '青柚子', 'zhong', '13.0', '味道鲜美，富含维生素，大量植物纤维有助于消化''grapefruit.jpg');
INSERT INTO `goodsform` VALUES ('2009', '熟柚子', 'zhong', '12.0', '味道鲜美，富含维生素，大量植物纤维有助于消化''grapefruit_2.jpg');
INSERT INTO `goodsform` VALUES ('2018', '软桃',   'zhong', '2.0', '味道鲜美，富含维生素，大量植物纤维有助于消化' 'peach.jpg');
INSERT INTO `goodsform` VALUES ('2021', '菠萝',   'zhong', '8.5', '味道鲜美，富含维生素，大量植物纤维有助于消化' 'pineapple.jpg');
INSERT INTO `goodsform` VALUES ('3003', '杏子',   'zhong', '1.5', '味道鲜美，富含维生素，大量植物纤维有助于消化' 'apricot.jpg');
INSERT INTO `goodsform` VALUES ('3010', '红柚子', 'zhong', '12.5', '味道鲜美，富含维生素，大量植物纤维有助于消化''grapefruit_3.jpg');
INSERT INTO `goodsform` VALUES ('3014', '猕猴桃', 'zhong', '2.5',  '味道鲜美，富含维生素，大量植物纤维有助于消化''Kiwi_ fruit.jpg');
INSERT INTO `goodsform` VALUES ('3022', '火龙果', 'zhong', '4.5',  '味道鲜美，富含维生素，大量植物纤维有助于消化''pitaya.jpg');
INSERT INTO `goodsform` VALUES ('3023', '石榴',   'zhong', '4.0', '味道鲜美，富含维生素，大量植物纤维有助于消化' 'pomegranate.jpg');
INSERT INTO `goodsform` VALUES ('3025', '西瓜',   'zhong', '8.0', '味道鲜美，富含维生素，大量植物纤维有助于消化' 'watermelon.jpg');
INSERT INTO `goodsform` VALUES ('4005', '蓝莓',   'zhong', '3.0', '味道鲜美，富含维生素，大量植物纤维有助于消化' 'blueberries.jpg');
INSERT INTO `goodsform` VALUES ('4006', '樱桃',   'zhong', '3.5', '味道鲜美，富含维生素，大量植物纤维有助于消化' 'cherry.jpg');
INSERT INTO `goodsform` VALUES ('4011', '红葡萄', 'zhong', '2.5',  '味道鲜美，富含维生素，大量植物纤维有助于消化''grapes.jpg');
INSERT INTO `goodsform` VALUES ('4012', '葡萄',   'zhong', '3.0', '味道鲜美，富含维生素，大量植物纤维有助于消化' 'grapes_2.jpg');
INSERT INTO `goodsform` VALUES ('4013', '青梅',   'zhong', '2.5', '味道鲜美，富含维生素，大量植物纤维有助于消化' 'greengage.jpg');
INSERT INTO `goodsform` VALUES ('4015', '桑葚',   'zhong', '2.5', '味道鲜美，富含维生素，大量植物纤维有助于消化' 'mulberry.jpg');
INSERT INTO `goodsform` VALUES ('4024', '草莓',   'zhong', '3.0', '味道鲜美，富含维生素，大量植物纤维有助于消化' 'strawberry.jpg');
INSERT INTO `goodsform` VALUES ('4026', '杨梅',   'zhong', '3.0', '味道鲜美，富含维生素，大量植物纤维有助于消化' 'Yang_ mei.jpg');

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
INSERT INTO `orderform` VALUES ('0', 'zhong', '1:(1001,苹果,zhong,2.5)', '2.5');
INSERT INTO `orderform` VALUES ('1', 'gzcc', '1:(1017,橙子,zhong,2.5)', '2.5');

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
INSERT INTO `user` VALUES ('zhong', 'zhongchubin', '13244825731', '广州市', '钟楚滨');
INSERT INTO `user` VALUES ('gzcc', 'guangzhoushangxueyuan', '13200000000', '广州市', '广州商学院');
INSERT INTO `user` VALUES ('jx', 'jixujiaoyuxueyaun', '1530200000', '广州市', '继续教育学院');
