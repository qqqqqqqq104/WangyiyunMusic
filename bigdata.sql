/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2020-06-21 22:19:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bigdata
-- ----------------------------
DROP TABLE IF EXISTS `bigdata`;
CREATE TABLE `bigdata` (
  `keys` varchar(40) NOT NULL,
  `frequency` int(5) NOT NULL,
  `weight` double NOT NULL,
  `id` int(3) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bigdata
-- ----------------------------
INSERT INTO `bigdata` VALUES ('加油', '2498', '1', '1');
INSERT INTO `bigdata` VALUES ('晚安', '1102', '0.988', '2');
