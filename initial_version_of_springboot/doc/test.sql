/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2018-08-28 00:03:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `test`
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `t_name` varchar(255) DEFAULT NULL,
  `t_txt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('1', '121', '5151');
INSERT INTO `test` VALUES ('2', '6', '6');
INSERT INTO `test` VALUES ('3', '7', '7');
INSERT INTO `test` VALUES ('4', '8', '8');

-- ----------------------------
-- Table structure for `t_sys_permission_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_permission_role`;
CREATE TABLE `t_sys_permission_role` (
  `id` varchar(255) NOT NULL,
  `role_id` varchar(255) DEFAULT NULL COMMENT '角色id',
  `permission_id` varchar(255) DEFAULT NULL COMMENT '权限id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色权限中间表';

-- ----------------------------
-- Records of t_sys_permission_role
-- ----------------------------
INSERT INTO `t_sys_permission_role` VALUES ('1', '1', '1');
INSERT INTO `t_sys_permission_role` VALUES ('2', '1', '2');
INSERT INTO `t_sys_permission_role` VALUES ('3', '2', '1');
INSERT INTO `t_sys_permission_role` VALUES ('4', '1', '3');
INSERT INTO `t_sys_permission_role` VALUES ('5', '1', '4');
INSERT INTO `t_sys_permission_role` VALUES ('6', '1', '5');
INSERT INTO `t_sys_permission_role` VALUES ('7', '1', '6');

-- ----------------------------
-- Table structure for `t_sys_premission`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_premission`;
CREATE TABLE `t_sys_premission` (
  `id` varchar(255) NOT NULL COMMENT 'id',
  `name` varchar(255) DEFAULT NULL COMMENT '权限名称',
  `descripion` varchar(255) DEFAULT NULL COMMENT '权限描述',
  `url` varchar(255) DEFAULT NULL COMMENT '授权链接',
  `pid` varchar(255) DEFAULT NULL COMMENT '父节点id',
  `perms` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '权限标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限表';

-- ----------------------------
-- Records of t_sys_premission
-- ----------------------------
INSERT INTO `t_sys_premission` VALUES ('1', 'ROLE_HOME', 'home', '/home', null, 'home');
INSERT INTO `t_sys_premission` VALUES ('2', 'ROLE_ADMIN', 'ABel', '/admin', null, 'admin');
INSERT INTO `t_sys_premission` VALUES ('3', 'ROLE_ADMIN', 'json', '/TestController/test', null, 'test');
INSERT INTO `t_sys_premission` VALUES ('4', '用户展示', '用户展示', '/UserController/view', null, 'system:user:view');
INSERT INTO `t_sys_premission` VALUES ('5', '用户集合', '用户集合', '/UserController/list', null, 'system:user:list');
INSERT INTO `t_sys_premission` VALUES ('6', '用户添加', '用户添加', '/UserController/add', null, 'system:user:add');

-- ----------------------------
-- Table structure for `t_sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role`;
CREATE TABLE `t_sys_role` (
  `id` varchar(255) DEFAULT NULL COMMENT 'id',
  `name` varchar(255) DEFAULT NULL COMMENT '角色名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of t_sys_role
-- ----------------------------
INSERT INTO `t_sys_role` VALUES ('1', 'ROLE_ADMIN');
INSERT INTO `t_sys_role` VALUES ('2', 'ROLE_USER');

-- ----------------------------
-- Table structure for `t_sys_role_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role_user`;
CREATE TABLE `t_sys_role_user` (
  `id` varchar(255) NOT NULL,
  `sys_user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'ç”¨æˆ·id',
  `sys_role_id` varchar(255) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色中间表';

-- ----------------------------
-- Records of t_sys_role_user
-- ----------------------------
INSERT INTO `t_sys_role_user` VALUES ('1', '1', '1');
INSERT INTO `t_sys_role_user` VALUES ('2', '2', '2');

-- ----------------------------
-- Table structure for `t_sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user`;
CREATE TABLE `t_sys_user` (
  `id` varchar(255) CHARACTER SET utf8 NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户账号',
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户表';

-- ----------------------------
-- Records of t_sys_user
-- ----------------------------
INSERT INTO `t_sys_user` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3');
INSERT INTO `t_sys_user` VALUES ('2', 'f', '8fa14cdd754f91cc6554c9e71929cce7');
INSERT INTO `t_sys_user` VALUES ('483781996040945664', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782007394926592', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782008053432320', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782008695160832', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782009362055168', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782009966034944', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782010607763456', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782011245297664', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782011849277440', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782012482617344', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782013120151552', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782013761880064', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782014395219968', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782015036948480', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782015703842816', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782016416874496', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782017050214400', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782017683554304', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782018354642944', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782019025731584', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782019663265792', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782020334354432', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782020976082944', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782021642977280', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782022280511488', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782022918045696', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782023555579904', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782024201502720', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782024830648320', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782025472376832', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782026139271168', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782026776805376', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782027414339584', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782028051873792', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782028689408000', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782029331136512', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782029998030848', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782030568456192', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782031210184704', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782031843524608', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782032481058816', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782033085038592', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782033693212672', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782034326552576', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782035027001344', '38052z138', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('483782035702284288', '38052z138', '33333333333333');
