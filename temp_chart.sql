/*
Navicat MySQL Data Transfer

Source Server         : localhost3309
Source Server Version : 50548
Source Host           : localhost:3309
Source Database       : yiidb

Target Server Type    : MYSQL
Target Server Version : 50548
File Encoding         : 65001

Date: 2016-06-26 08:41:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for temp_chart
-- ----------------------------
DROP TABLE IF EXISTS `temp_chart`;
CREATE TABLE `temp_chart` (
  `hos` varchar(255) NOT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`hos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of temp_chart
-- ----------------------------
INSERT INTO `temp_chart` VALUES ('รพ.ก', '10');
INSERT INTO `temp_chart` VALUES ('รพ.ข', '20');
INSERT INTO `temp_chart` VALUES ('รพ.ค', '15');
INSERT INTO `temp_chart` VALUES ('รพ.จ', '5');
