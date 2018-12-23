/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-12-23 22:12:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_cate
-- ----------------------------
DROP TABLE IF EXISTS `t_cate`;
CREATE TABLE `t_cate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '' COMMENT '分类名字',
  `tkey` varchar(128) DEFAULT '' COMMENT '关键字',
  `img` varchar(512) DEFAULT '' COMMENT '分类对应的图片',
  `addtime` varchar(32) DEFAULT '' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分类表';

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) DEFAULT NULL,
  `nid` int(11) NOT NULL COMMENT '笔记Id',
  `uid` int(11) DEFAULT NULL COMMENT '回复人id',
  `content` varchar(500) DEFAULT NULL COMMENT '回复内容',
  `addtime` varchar(32) DEFAULT NULL COMMENT '创建时间',
  `ip` varchar(500) DEFAULT NULL COMMENT 'ip',
  `nickname` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='评论表';

-- ----------------------------
-- Table structure for t_note
-- ----------------------------
DROP TABLE IF EXISTS `t_note`;
CREATE TABLE `t_note` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `stype` varchar(128) DEFAULT NULL,
  `ltype` varchar(255) DEFAULT NULL,
  `brief` varchar(512) DEFAULT NULL,
  `content` longtext,
  `create_time` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_test
-- ----------------------------
DROP TABLE IF EXISTS `t_test`;
CREATE TABLE `t_test` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(512) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_view
-- ----------------------------
DROP TABLE IF EXISTS `t_view`;
CREATE TABLE `t_view` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(500) DEFAULT NULL COMMENT 'ip',
  `info` varchar(500) DEFAULT NULL COMMENT '浏览内容',
  `addtime` varchar(32) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1291 DEFAULT CHARSET=utf8 COMMENT='浏览记录';

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `pwd` varchar(32) NOT NULL,
  `age` int(11) NOT NULL DEFAULT '0',
  `nickname` varchar(32) DEFAULT NULL,
  `head` varchar(128) NOT NULL DEFAULT '',
  `work` varchar(128) NOT NULL DEFAULT '',
  `addtime` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
