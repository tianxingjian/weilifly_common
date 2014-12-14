/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50703
Source Host           : localhost:3306
Source Database       : weilifly

Target Server Type    : MYSQL
Target Server Version : 50703
File Encoding         : 65001

Date: 2014-12-14 19:47:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_navigationbar`
-- ----------------------------
DROP TABLE IF EXISTS `t_navigationbar`;
CREATE TABLE `t_navigationbar` (
  `id` bigint(5) NOT NULL AUTO_INCREMENT COMMENT '导航编号',
  `orderName` varchar(20) DEFAULT '一级' COMMENT '导航菜单项级别',
  `name` varchar(120) NOT NULL DEFAULT '' COMMENT '导航名称',
  `parentId` bigint(5) DEFAULT '-1' COMMENT '父级导航',
  `enable` int(11) NOT NULL DEFAULT '1' COMMENT '状态 1：启用2：禁用',
  `url` varchar(100) DEFAULT NULL COMMENT '导航项跳转链接',
  `type` int(11) unsigned zerofill DEFAULT NULL COMMENT '导航项模板类型',
  `sortIndex` int(11) DEFAULT NULL COMMENT '排序索引',
  `addTime` datetime DEFAULT NULL COMMENT '记录增加时间',
  `mark` text COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_navigationbar
-- ----------------------------
INSERT INTO `t_navigationbar` VALUES ('1', '一级', '首页', '-1', '1', 'index.do', null, '1', '2014-12-10 15:41:50', null);
INSERT INTO `t_navigationbar` VALUES ('2', '一级', '微力研究院', '-1', '1', '#', null, '2', '2014-12-10 15:48:44', null);
INSERT INTO `t_navigationbar` VALUES ('3', '一级', 'O2O兵器库', '-1', '1', '#', null, '3', '2014-12-10 15:49:05', null);
INSERT INTO `t_navigationbar` VALUES ('4', '一级', '标杆案例', '-1', '1', '#', null, '4', '2014-12-10 15:51:27', null);
INSERT INTO `t_navigationbar` VALUES ('5', '一级', '下载专区', '-1', '1', '#', null, '5', '2014-12-10 15:52:23', null);
INSERT INTO `t_navigationbar` VALUES ('6', '一级', '微力论坛', '-1', '1', '#', null, '6', '2014-12-10 15:52:45', null);
INSERT INTO `t_navigationbar` VALUES ('7', '二级', '方法论', '2', '1', '#', null, '1', '2014-12-10 15:53:15', null);
INSERT INTO `t_navigationbar` VALUES ('8', '二级', '最连续沙龙', '2', '1', '#', null, '2', '2014-12-10 15:53:53', null);
INSERT INTO `t_navigationbar` VALUES ('9', '二级', '必读书籍', '2', '1', '#', null, '3', '2014-12-10 15:54:16', null);
INSERT INTO `t_navigationbar` VALUES ('10', '二级', 'O2O型网站', '3', '1', '#', null, '1', '2014-12-10 15:54:40', null);
INSERT INTO `t_navigationbar` VALUES ('11', '二级', 'O2O型商城', '3', '1', '#', null, '2', '2014-12-10 15:55:25', null);
INSERT INTO `t_navigationbar` VALUES ('12', '二级', '手机APP', '3', '1', '#', null, '3', '2014-12-10 15:55:57', null);
INSERT INTO `t_navigationbar` VALUES ('13', '二级', '腾讯系列', '3', '1', '#', null, '4', '2014-12-10 15:56:21', null);
INSERT INTO `t_navigationbar` VALUES ('14', '二级', '阿里系列', '3', '1', '#', null, '5', '2014-12-10 15:56:44', null);
INSERT INTO `t_navigationbar` VALUES ('15', '二级', '百度系列', '3', '1', '#', null, '6', '2014-12-10 15:57:03', null);
INSERT INTO `t_navigationbar` VALUES ('16', '二级', '专业市场', '4', '1', '#', null, '1', '2014-12-10 15:58:40', null);
INSERT INTO `t_navigationbar` VALUES ('17', '二级', '传统商户', '4', '1', '#', null, '2', '2014-12-10 15:58:45', null);
INSERT INTO `t_navigationbar` VALUES ('18', '二级', '精品课件', '5', '1', '#', null, '1', '2014-12-10 15:59:37', null);
INSERT INTO `t_navigationbar` VALUES ('19', '二级', '精品视频', '5', '1', '#', null, '2', '2014-12-10 15:59:41', null);
INSERT INTO `t_navigationbar` VALUES ('20', '二级', '行业报告', '5', '1', '#', null, '3', '2014-12-10 15:59:44', null);
INSERT INTO `t_navigationbar` VALUES ('21', '二级', '案例下载', '5', '1', '#', null, '4', '2014-12-10 15:59:47', null);
