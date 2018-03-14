/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : spring_boot

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-03-14 15:27:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '姓名',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建日期',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '关羽', '2018-03-10 14:23:50', '2018-03-10 14:23:54');
INSERT INTO `t_user` VALUES ('2', '诸葛亮', '2018-03-10 14:32:20', '2018-03-10 14:32:22');
INSERT INTO `t_user` VALUES ('3', '刘备', '2018-03-10 14:32:37', '2018-03-10 14:32:41');
