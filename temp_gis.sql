/*
Navicat MySQL Data Transfer

Source Server         : localhost3309
Source Server Version : 50548
Source Host           : localhost:3309
Source Database       : yiidb

Target Server Type    : MYSQL
Target Server Version : 50548
File Encoding         : 65001

Date: 2016-06-26 08:41:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for temp_gis
-- ----------------------------
DROP TABLE IF EXISTS `temp_gis`;
CREATE TABLE `temp_gis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lat` varchar(255) DEFAULT NULL,
  `lng` varchar(255) DEFAULT NULL,
  `risk` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of temp_gis
-- ----------------------------
INSERT INTO `temp_gis` VALUES ('1', '16', '100', '1', 'นาย ก');
INSERT INTO `temp_gis` VALUES ('2', '16.1', '99.80', '2', 'นาย ข');
INSERT INTO `temp_gis` VALUES ('3', '15.890', '99.9945', '3', 'นาย ค');
INSERT INTO `temp_gis` VALUES ('4', '16.00034', '99.3222', '2', 'นาย จ');
