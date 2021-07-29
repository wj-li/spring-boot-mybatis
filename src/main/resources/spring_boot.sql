/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50734
Source Host           : localhost:3306
Source Database       : spring_boot

Target Server Type    : MYSQL
Target Server Version : 50734
File Encoding         : 65001

Date: 2021-07-29 14:38:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `orderNo` varchar(20) DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL COMMENT '0:失败，1：成功',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('2', '123', '1');
INSERT INTO `t_order` VALUES ('3', '1234', '1');

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

-- ----------------------------
-- Table structure for t_user_202101
-- ----------------------------
DROP TABLE IF EXISTS `t_user_202101`;
CREATE TABLE `t_user_202101` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '姓名',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建日期',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_user_202101
-- ----------------------------

-- ----------------------------
-- Table structure for t_user_202102
-- ----------------------------
DROP TABLE IF EXISTS `t_user_202102`;
CREATE TABLE `t_user_202102` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '姓名',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建日期',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_user_202102
-- ----------------------------

-- ----------------------------
-- Table structure for t_user_202103
-- ----------------------------
DROP TABLE IF EXISTS `t_user_202103`;
CREATE TABLE `t_user_202103` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '姓名',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建日期',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_user_202103
-- ----------------------------

-- ----------------------------
-- Table structure for t_user_202104
-- ----------------------------
DROP TABLE IF EXISTS `t_user_202104`;
CREATE TABLE `t_user_202104` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '姓名',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建日期',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_user_202104
-- ----------------------------

-- ----------------------------
-- Table structure for t_user_202105
-- ----------------------------
DROP TABLE IF EXISTS `t_user_202105`;
CREATE TABLE `t_user_202105` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '姓名',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建日期',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_user_202105
-- ----------------------------
INSERT INTO `t_user_202105` VALUES ('1', '鸣人', '2021-05-01 08:33:16', '2021-07-26 08:33:19');
INSERT INTO `t_user_202105` VALUES ('2', '佐助', '2021-05-01 08:33:30', '2021-07-26 08:33:33');
INSERT INTO `t_user_202105` VALUES ('3', '雏田', '2021-05-01 08:35:33', '2021-07-26 08:35:41');
INSERT INTO `t_user_202105` VALUES ('4', '小樱', '2021-05-01 08:35:56', '2021-07-26 08:36:04');

-- ----------------------------
-- Table structure for t_user_202106
-- ----------------------------
DROP TABLE IF EXISTS `t_user_202106`;
CREATE TABLE `t_user_202106` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '姓名',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建日期',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_user_202106
-- ----------------------------
INSERT INTO `t_user_202106` VALUES ('1', '张飞', '2021-07-23 18:01:53', '2021-07-23 18:01:57');
INSERT INTO `t_user_202106` VALUES ('2', '关羽', '2021-07-26 08:32:28', '2021-07-26 08:32:32');

-- ----------------------------
-- Table structure for t_user_202107
-- ----------------------------
DROP TABLE IF EXISTS `t_user_202107`;
CREATE TABLE `t_user_202107` (
  `id` bigint(20) NOT NULL COMMENT '主键ID',
  `name` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '姓名',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建日期',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_user_202107
-- ----------------------------
INSERT INTO `t_user_202107` VALUES ('1', '王五', '2021-07-26 08:44:27', '2021-07-26 09:56:45');
INSERT INTO `t_user_202107` VALUES ('2', '李四', '2021-07-26 08:51:39', '2021-07-26 08:51:39');

-- ----------------------------
-- Table structure for t_user_202108
-- ----------------------------
DROP TABLE IF EXISTS `t_user_202108`;
CREATE TABLE `t_user_202108` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '姓名',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建日期',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_user_202108
-- ----------------------------

-- ----------------------------
-- Table structure for t_user_202109
-- ----------------------------
DROP TABLE IF EXISTS `t_user_202109`;
CREATE TABLE `t_user_202109` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '姓名',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建日期',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_user_202109
-- ----------------------------

-- ----------------------------
-- Table structure for t_user_202110
-- ----------------------------
DROP TABLE IF EXISTS `t_user_202110`;
CREATE TABLE `t_user_202110` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '姓名',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建日期',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_user_202110
-- ----------------------------

-- ----------------------------
-- Table structure for t_user_202111
-- ----------------------------
DROP TABLE IF EXISTS `t_user_202111`;
CREATE TABLE `t_user_202111` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '姓名',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建日期',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_user_202111
-- ----------------------------

-- ----------------------------
-- Table structure for t_user_202112
-- ----------------------------
DROP TABLE IF EXISTS `t_user_202112`;
CREATE TABLE `t_user_202112` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '姓名',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建日期',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_user_202112
-- ----------------------------

-- ----------------------------
-- Table structure for t_user_202201
-- ----------------------------
DROP TABLE IF EXISTS `t_user_202201`;
CREATE TABLE `t_user_202201` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '姓名',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建日期',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_user_202201
-- ----------------------------

-- ----------------------------
-- Table structure for t_user_202202
-- ----------------------------
DROP TABLE IF EXISTS `t_user_202202`;
CREATE TABLE `t_user_202202` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '姓名',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建日期',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_user_202202
-- ----------------------------

-- ----------------------------
-- Table structure for t_user_202203
-- ----------------------------
DROP TABLE IF EXISTS `t_user_202203`;
CREATE TABLE `t_user_202203` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '姓名',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建日期',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_user_202203
-- ----------------------------

-- ----------------------------
-- Table structure for t_user_202204
-- ----------------------------
DROP TABLE IF EXISTS `t_user_202204`;
CREATE TABLE `t_user_202204` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '姓名',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建日期',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_user_202204
-- ----------------------------

-- ----------------------------
-- Table structure for t_user_202205
-- ----------------------------
DROP TABLE IF EXISTS `t_user_202205`;
CREATE TABLE `t_user_202205` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '姓名',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建日期',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_user_202205
-- ----------------------------

-- ----------------------------
-- Table structure for t_user_202206
-- ----------------------------
DROP TABLE IF EXISTS `t_user_202206`;
CREATE TABLE `t_user_202206` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '姓名',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建日期',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_user_202206
-- ----------------------------

-- ----------------------------
-- Table structure for t_user_202207
-- ----------------------------
DROP TABLE IF EXISTS `t_user_202207`;
CREATE TABLE `t_user_202207` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '姓名',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建日期',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_user_202207
-- ----------------------------

-- ----------------------------
-- Table structure for t_user_202208
-- ----------------------------
DROP TABLE IF EXISTS `t_user_202208`;
CREATE TABLE `t_user_202208` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '姓名',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建日期',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_user_202208
-- ----------------------------

-- ----------------------------
-- Table structure for t_user_202209
-- ----------------------------
DROP TABLE IF EXISTS `t_user_202209`;
CREATE TABLE `t_user_202209` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '姓名',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建日期',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_user_202209
-- ----------------------------

-- ----------------------------
-- Table structure for t_user_202210
-- ----------------------------
DROP TABLE IF EXISTS `t_user_202210`;
CREATE TABLE `t_user_202210` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '姓名',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建日期',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_user_202210
-- ----------------------------

-- ----------------------------
-- Table structure for t_user_202211
-- ----------------------------
DROP TABLE IF EXISTS `t_user_202211`;
CREATE TABLE `t_user_202211` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '姓名',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建日期',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_user_202211
-- ----------------------------

-- ----------------------------
-- Table structure for t_user_202212
-- ----------------------------
DROP TABLE IF EXISTS `t_user_202212`;
CREATE TABLE `t_user_202212` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '姓名',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建日期',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_user_202212
-- ----------------------------
