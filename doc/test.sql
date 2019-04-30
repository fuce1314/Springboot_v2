/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-05-01 03:48:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_sys_datas
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_datas`;
CREATE TABLE `t_sys_datas` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `file_path` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_sys_datas
-- ----------------------------
INSERT INTO `t_sys_datas` VALUES ('493164859534344192', 'D:/profile/57e6ed81bc836d122fcff4f86e0cebbc.jpg');
INSERT INTO `t_sys_datas` VALUES ('493191568597975040', 'D:/profile/499885e31867b77550deac0cb4596c22.jpg');
INSERT INTO `t_sys_datas` VALUES ('493194407776878592', 'D:/profile/304ed8bf6257c6b3a77e7f367e916b96.jpg');
INSERT INTO `t_sys_datas` VALUES ('493195419333951488', 'D:/profile/49c7c2126ea04b65c2164f0aff6c3279.jpg');
INSERT INTO `t_sys_datas` VALUES ('493195646874943488', 'D:/profile/b336f90e57ea73cc286e266103033c74.jpg');

-- ----------------------------
-- Table structure for t_sys_file
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_file`;
CREATE TABLE `t_sys_file` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `file_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '图片名字',
  `create_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人id',
  `create_user_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名字',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人',
  `update_user_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人名字',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_sys_file
-- ----------------------------
INSERT INTO `t_sys_file` VALUES ('493105775934177280', '水电费2', '1', 'admin', '2018-09-22 17:03:25', '1', 'admin', '2018-09-22 21:01:09');
INSERT INTO `t_sys_file` VALUES ('493191574256091136', '阿达达', '1', 'admin', '2018-09-22 22:47:14', null, null, null);

-- ----------------------------
-- Table structure for t_sys_file_data
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_file_data`;
CREATE TABLE `t_sys_file_data` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `data_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `file_id` varchar(255) COLLATE utf8_bin DEFAULT '文件id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='文件数据外键绑定表';

-- ----------------------------
-- Records of t_sys_file_data
-- ----------------------------
INSERT INTO `t_sys_file_data` VALUES ('493105048578949120', '493105005788659712', '493105048578949120');
INSERT INTO `t_sys_file_data` VALUES ('493164878349991936', '493164859534344192', '493105775934177280');
INSERT INTO `t_sys_file_data` VALUES ('493191574256091136', '493191568597975040', '493191574256091136');
INSERT INTO `t_sys_file_data` VALUES ('493191574256091137', '493164859534344192', '493191574256091136');
INSERT INTO `t_sys_file_data` VALUES ('493195660292521984', '493195646874943488', '493195660292521984');

-- ----------------------------
-- Table structure for t_sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_oper_log`;
CREATE TABLE `t_sys_oper_log` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '标题',
  `method` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '方法',
  `oper_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '操作人',
  `oper_url` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'url',
  `oper_param` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '参数',
  `error_msg` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `oper_time` date DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_sys_oper_log
-- ----------------------------
INSERT INTO `t_sys_oper_log` VALUES ('495981627277574144', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '//UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2018-09-30');
INSERT INTO `t_sys_oper_log` VALUES ('496130829131448320', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '//UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2018-10-01');
INSERT INTO `t_sys_oper_log` VALUES ('496130881971290112', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '//UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2018-10-01');
INSERT INTO `t_sys_oper_log` VALUES ('496131511678926848', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '//UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2018-10-01');
INSERT INTO `t_sys_oper_log` VALUES ('496133762661220352', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '//UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2018-10-01');
INSERT INTO `t_sys_oper_log` VALUES ('496801222838190080', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '//UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2018-10-02');
INSERT INTO `t_sys_oper_log` VALUES ('496801238482944000', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '//UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2018-10-02');
INSERT INTO `t_sys_oper_log` VALUES ('496802305908146176', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '//UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2018-10-02');
INSERT INTO `t_sys_oper_log` VALUES ('496804902987628544', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '//UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2018-10-02');
INSERT INTO `t_sys_oper_log` VALUES ('496805167543353344', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '//UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2018-10-02');
INSERT INTO `t_sys_oper_log` VALUES ('496806436433559552', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '//UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2018-10-02');
INSERT INTO `t_sys_oper_log` VALUES ('548521545325084672', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '//UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-02-22');
INSERT INTO `t_sys_oper_log` VALUES ('548522078878302208', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '//UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-02-22');
INSERT INTO `t_sys_oper_log` VALUES ('548522095005401088', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '//UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-02-22');
INSERT INTO `t_sys_oper_log` VALUES ('548522402275917824', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '//UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-02-22');
INSERT INTO `t_sys_oper_log` VALUES ('548522413080444928', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '//UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-02-22');
INSERT INTO `t_sys_oper_log` VALUES ('548522419581616128', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '//UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-02-22');
INSERT INTO `t_sys_oper_log` VALUES ('548522847354486784', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '//UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-02-22');
INSERT INTO `t_sys_oper_log` VALUES ('548527944973156352', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '//UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-02-22');
INSERT INTO `t_sys_oper_log` VALUES ('548527983720136704', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '//UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-02-22');
INSERT INTO `t_sys_oper_log` VALUES ('550320803963469824', '用户集合查询', 'cn.com.jetshine.datav.controller.admin.UserController.list()', 'admin', '//UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-02-27');
INSERT INTO `t_sys_oper_log` VALUES ('554024819377569792', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '//UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-03-09');
INSERT INTO `t_sys_oper_log` VALUES ('572829171173031936', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '///UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-04-30');
INSERT INTO `t_sys_oper_log` VALUES ('572829178798276608', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '///UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-04-30');
INSERT INTO `t_sys_oper_log` VALUES ('572829190399721472', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '///UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-04-30');
INSERT INTO `t_sys_oper_log` VALUES ('572946409100148736', '用户集合查询', 'cn.com.jetshine.user.controller.admin.UserController.list()', 'admin', '//UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572946451189989376', '用户集合查询', 'cn.com.jetshine.user.controller.admin.UserController.list()', 'admin', '//UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572946453597519872', '用户集合查询', 'cn.com.jetshine.user.controller.admin.UserController.list()', 'admin', '//UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572949769186443264', '用户集合查询', 'cn.com.jetshine.user.controller.admin.UserController.list()', 'admin', '//UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572949826359001088', '用户集合查询', 'cn.com.jetshine.user.controller.admin.UserController.list()', 'admin', '//UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572949834143629312', '用户集合查询', 'cn.com.jetshine.user.controller.admin.UserController.list()', 'admin', '//UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572950139371520000', '用户集合查询', 'cn.com.jetshine.user.controller.admin.UserController.list()', 'admin', '//UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572950429306978304', '用户集合查询', 'cn.com.jetshine.user.controller.admin.UserController.list()', 'admin', '//UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572950438211485696', '用户集合查询', 'cn.com.jetshine.user.controller.admin.UserController.list()', 'admin', '//UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572950443378868224', '用户集合查询', 'cn.com.jetshine.user.controller.admin.UserController.list()', 'admin', '//UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572952192667877376', '用户集合查询', 'cn.com.jetshine.user.controller.admin.UserController.list()', 'admin', '//UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572952194916024320', '用户集合查询', 'cn.com.jetshine.user.controller.admin.UserController.list()', 'admin', '//UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572952199684947968', '用户集合查询', 'cn.com.jetshine.user.controller.admin.UserController.list()', 'admin', '//UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572957590665822208', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '///UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572957612786581504', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '///UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572959611405991936', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '///UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572959625121366016', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '///UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572960399230500864', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '///UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572960403772932096', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '///UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572960405828141056', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '///UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572960407648468992', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '///UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572960408986451968', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '///UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572960409661734912', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '///UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572960410341212160', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '///UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572968038253461504', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '///UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572968047648702464', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '///UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572968061154361344', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '///UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572968071300382720', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '///UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572968085766537216', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '///UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572970121207742464', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '///UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572970169140248576', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '///UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572970186114596864', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '///UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572981002880679936', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572981031699742720', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572981121122304000', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572981123202678784', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572981127552172032', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572981129179561984', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572981136943218688', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572981830395887616', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572981835462606848', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572981892177985536', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572984108251086848', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572984472446697472', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572984639782649856', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572985386804969472', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/springboot/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572985407378030592', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/springboot/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572985417922510848', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/springboot/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572985907766886400', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572985925638815744', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572985934518157312', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572990439833993216', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/demo/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');
INSERT INTO `t_sys_oper_log` VALUES ('572990457194217472', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/demo/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-01');

-- ----------------------------
-- Table structure for t_sys_permission_role
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
INSERT INTO `t_sys_permission_role` VALUES ('019bfd91-6d1a-4d08-889c-7ff79ea62696', '488243256161730560', '15');
INSERT INTO `t_sys_permission_role` VALUES ('18d78238-7c4f-4b52-9f16-e76b2ea24aeb', '488289006124007424', '333');
INSERT INTO `t_sys_permission_role` VALUES ('1bfb1d2a-c67e-420b-8d5e-0bb35d575177', '488243256161730560', '19');
INSERT INTO `t_sys_permission_role` VALUES ('287460a3-f7dc-4f67-a370-54df839b46bb', '488289006124007424', '15');
INSERT INTO `t_sys_permission_role` VALUES ('2b0946a6-ffe7-492d-9b4f-4005d1dfb70d', '488289006124007424', '111');
INSERT INTO `t_sys_permission_role` VALUES ('30704f4e-b6cf-4010-86fc-0bf356c27fa8', '488289006124007424', '10');
INSERT INTO `t_sys_permission_role` VALUES ('378edca7-b8cd-4741-af44-55fe2b83dd17', '488289006124007424', '1');
INSERT INTO `t_sys_permission_role` VALUES ('42fa47a6-6703-46fd-919c-151f74ab33de', '488243256161730560', '16');
INSERT INTO `t_sys_permission_role` VALUES ('4593aaae-42e7-4877-ac9a-939e80e37d05', '488289006124007424', '4');
INSERT INTO `t_sys_permission_role` VALUES ('47e43343-c42e-4ca6-9b9c-f41b9e7cf34c', '488243256161730560', '14');
INSERT INTO `t_sys_permission_role` VALUES ('4ab0814d-98d3-4670-9dce-3e7fad98e14d', '488243256161730560', '111');
INSERT INTO `t_sys_permission_role` VALUES ('4c52bfa9-3718-405f-9c75-6ae8e969db26', '488243256161730560', '22');
INSERT INTO `t_sys_permission_role` VALUES ('560f9a30-083b-4ee7-895e-2b5916dd1aca', '488243256161730560', '18');
INSERT INTO `t_sys_permission_role` VALUES ('57c40767-eb8b-4ade-907f-579765c5c04d', '488243256161730560', '8');
INSERT INTO `t_sys_permission_role` VALUES ('5a7001e9-9c0b-44d9-908a-e3249ebb4e73', '488243256161730560', '444');
INSERT INTO `t_sys_permission_role` VALUES ('61c0c7c3-04c2-47de-ad3c-20e90f310f82', '488243256161730560', '496124944220946432');
INSERT INTO `t_sys_permission_role` VALUES ('7056c17a-2bd2-471f-bde3-7a2e84259b32', '488243256161730560', '20');
INSERT INTO `t_sys_permission_role` VALUES ('79d640e2-4bcf-4069-947f-6c616cd21bb1', '488243256161730560', '222');
INSERT INTO `t_sys_permission_role` VALUES ('88ecca2c-7a56-43f5-bdb8-4b6a4ee01da7', '488243256161730560', '10');
INSERT INTO `t_sys_permission_role` VALUES ('8a5ad29b-11f0-4101-9849-a416ec14a6a1', '488243256161730560', '1');
INSERT INTO `t_sys_permission_role` VALUES ('8ea76520-4b55-429e-8774-2e4a427e5a6e', '488243256161730560', '17');
INSERT INTO `t_sys_permission_role` VALUES ('908885b8-9f89-414b-ae4c-577780eda6a1', '488243256161730560', '11');
INSERT INTO `t_sys_permission_role` VALUES ('916b6dd6-d4f0-473a-a42d-dd421b2135ae', '488243256161730560', '5');
INSERT INTO `t_sys_permission_role` VALUES ('a19d1c49-5d53-4d39-9871-f03e1421d241', '488243256161730560', '496127240363311104');
INSERT INTO `t_sys_permission_role` VALUES ('a6b99b06-ef91-47a6-a854-bf612ffa7499', '488243256161730560', '496126970468237312');
INSERT INTO `t_sys_permission_role` VALUES ('a931f970-2a69-42d9-a426-0a97c4977147', '488289006124007424', '9');
INSERT INTO `t_sys_permission_role` VALUES ('a9e1a992-dec9-4657-860f-1a9558d4ba4f', '488305788310257664', '486690002869157888');
INSERT INTO `t_sys_permission_role` VALUES ('abb84372-d7c3-4923-92b6-968517da14b4', '488243256161730560', '333');
INSERT INTO `t_sys_permission_role` VALUES ('bb1bc4b3-414b-4a4a-a5a5-2432459083b3', '488243256161730560', '496127794879660032');
INSERT INTO `t_sys_permission_role` VALUES ('c5c998d0-aa42-4106-af58-2f50d0afe03c', '488289006124007424', '5');
INSERT INTO `t_sys_permission_role` VALUES ('db11f58b-41e8-4d18-8a3d-c9e3f88a6d0b', '488243256161730560', '23');
INSERT INTO `t_sys_permission_role` VALUES ('dd0b7a97-b3d0-4f24-b4b8-806b1ccdb45c', '488243256161730560', '486690002869157888');
INSERT INTO `t_sys_permission_role` VALUES ('e5c26a74-f2c8-4fb6-bf78-084e549c220f', '488243256161730560', '12');
INSERT INTO `t_sys_permission_role` VALUES ('e6d33929-1c05-4c54-b594-2ba0ab7312fb', '488289006124007424', '14');
INSERT INTO `t_sys_permission_role` VALUES ('e8c6dbad-02d7-4676-b6bc-3504968e4c94', '488243256161730560', '13');
INSERT INTO `t_sys_permission_role` VALUES ('e93fa426-f243-4a2e-9bcc-020f809aab83', '488243256161730560', '9');
INSERT INTO `t_sys_permission_role` VALUES ('f03e3d31-b235-4d4b-9f4d-1551420e4d2f', '488243256161730560', '21');
INSERT INTO `t_sys_permission_role` VALUES ('f3b43b28-d403-49f8-af2f-5e3390a17f4d', '488243256161730560', '4');
INSERT INTO `t_sys_permission_role` VALUES ('f5db385e-0d9b-49f7-bb9f-871e60b5d009', '488243256161730560', '7');
INSERT INTO `t_sys_permission_role` VALUES ('fb5dde47-fc84-4385-9cfa-cb16e92c6cd1', '488243256161730560', '6');
INSERT INTO `t_sys_permission_role` VALUES ('fe03a878-8400-4b5b-8829-a990b14cb3f2', '488289006124007424', '222');

-- ----------------------------
-- Table structure for t_sys_premission
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_premission`;
CREATE TABLE `t_sys_premission` (
  `id` varchar(255) NOT NULL COMMENT 'id',
  `name` varchar(255) DEFAULT NULL COMMENT '权限名称',
  `descripion` varchar(255) DEFAULT NULL COMMENT '权限描述',
  `url` varchar(255) DEFAULT NULL COMMENT '授权链接',
  `pid` varchar(255) DEFAULT NULL COMMENT '父节点id',
  `perms` varchar(255) DEFAULT NULL COMMENT '权限标识',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(255) DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限表';

-- ----------------------------
-- Records of t_sys_premission
-- ----------------------------
INSERT INTO `t_sys_premission` VALUES ('1', '首页', '首页', null, '0', null, '0', 'fa fa-home', '1');
INSERT INTO `t_sys_premission` VALUES ('10', '角色集合', '角色集合', '/RoleController/list', '9', 'system:role:list', '2', '', null);
INSERT INTO `t_sys_premission` VALUES ('11', '角色添加', '角色添加', '/RoleController/add', '9', 'system:role:add', '2', 'entypo-plus-squared', null);
INSERT INTO `t_sys_premission` VALUES ('12', '角色删除', '角色删除', '/RoleController/remove', '9', 'system:role:remove', '2', 'entypo-trash', null);
INSERT INTO `t_sys_premission` VALUES ('13', '角色修改', '角色修改', '/RoleController/edit', '9', 'system:role:edit', '2', 'fa fa-wrench', null);
INSERT INTO `t_sys_premission` VALUES ('14', '权限展示', '权限展示', '/PremissionController/view', '496782496638173184', 'system:premission:view', '1', 'fa fa-key', null);
INSERT INTO `t_sys_premission` VALUES ('15', '权限集合', '权限集合', '/PremissionController/list', '14', 'system:premission:list', '2', '', null);
INSERT INTO `t_sys_premission` VALUES ('16', '权限添加', '权限添加', '/PremissionController/add', '14', 'system:premission:add', '2', 'entypo-plus-squared', null);
INSERT INTO `t_sys_premission` VALUES ('17', '权限删除', '权限删除', '/PremissionController/remove', '14', 'system:premission:remove', '2', 'entypo-trash', null);
INSERT INTO `t_sys_premission` VALUES ('18', '权限修改', '权限修改', '/PremissionController/edit', '14', 'system:premission:edit', '2', 'fa fa-wrench', null);
INSERT INTO `t_sys_premission` VALUES ('19', '文件展示', '文件展示', '/FileController/view', '496782496638173184', 'system:file:view', '1', 'fa fa-file-image-o', null);
INSERT INTO `t_sys_premission` VALUES ('20', '文件添加', '文件添加', '/FileController/add', '19', 'system:file:add', '2', 'entypo-plus-squared', null);
INSERT INTO `t_sys_premission` VALUES ('21', '文件删除', '文件删除', '/FileController/remove', '19', 'system:file:remove', '2', 'entypo-trash', null);
INSERT INTO `t_sys_premission` VALUES ('22', '文件修改', '文件修改', '/FileController/edit', '19', 'system:file:edit', '2', 'fa fa-wrench', null);
INSERT INTO `t_sys_premission` VALUES ('23', '文件集合', '文件集合', '/FileController/list', '19', 'system:file:list', '2', '', null);
INSERT INTO `t_sys_premission` VALUES ('4', '用户管理', '用户展示', '/UserController/view', '496782496638173184', 'system:user:view', '1', 'icon icon-user', '1');
INSERT INTO `t_sys_premission` VALUES ('486690002869157888', '用户密码修改', '用户密码修改', '/UserController/editPwd', '4', 'system:user:editPwd', '2', 'entypo-tools', '3');
INSERT INTO `t_sys_premission` VALUES ('496126970468237312', '日志展示', '日志管理', '/LogController/view', '496124944220946432', 'system:log:view', '1', 'fa-bitbucket', null);
INSERT INTO `t_sys_premission` VALUES ('496127240363311104', '日志删除', '日志删除', '/LogController/remove', '496126970468237312', 'system:log:remove', '2', 'entypo-trash', null);
INSERT INTO `t_sys_premission` VALUES ('496127794879660032', '日志集合', '日志集合', '/LogController/list', '496126970468237312', 'system:log:list', '2', null, null);
INSERT INTO `t_sys_premission` VALUES ('496782496638173184', '系统设置', '系统设置', null, '1', null, '0', 'fa fa-gear', '3');
INSERT INTO `t_sys_premission` VALUES ('496803374054768640', '其他页面', '其他页面', null, '1', null, '0', 'fa fa-windows', '2');
INSERT INTO `t_sys_premission` VALUES ('496805860547231744', '图标页面', '图标页面', 'Icons/view', '496803374054768640', 'system:icons:view', '1', 'fa fa-magic', '2');
INSERT INTO `t_sys_premission` VALUES ('5', '用户集合', '用户集合', '/UserController/list', '4', 'system:user:list', '2', '', null);
INSERT INTO `t_sys_premission` VALUES ('6', '用户添加', '用户添加', '/UserController/add', '4', 'system:user:add', '2', 'entypo-plus-squared', null);
INSERT INTO `t_sys_premission` VALUES ('7', '用户删除', '用户删除', '/UserController/remove', '4', 'system:user:remove', '2', 'entypo-trash', null);
INSERT INTO `t_sys_premission` VALUES ('8', '用户修改', '用户修改', '/UserController/edit', '4', 'system:user:edit', '2', 'fa fa-wrench', null);
INSERT INTO `t_sys_premission` VALUES ('9', '角色管理', '角色展示', '/RoleController/view', '496782496638173184', 'system:role:view', '1', 'fa fa-group', null);

-- ----------------------------
-- Table structure for t_sys_role
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role`;
CREATE TABLE `t_sys_role` (
  `id` varchar(255) NOT NULL COMMENT 'id',
  `name` varchar(255) DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of t_sys_role
-- ----------------------------
INSERT INTO `t_sys_role` VALUES ('488243256161730560', '管理员');
INSERT INTO `t_sys_role` VALUES ('488289006124007424', '用户');
INSERT INTO `t_sys_role` VALUES ('488305788310257664', '能修改用户密码角色');

-- ----------------------------
-- Table structure for t_sys_role_user
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role_user`;
CREATE TABLE `t_sys_role_user` (
  `id` varchar(255) NOT NULL,
  `sys_user_id` varchar(255) DEFAULT NULL COMMENT 'ç”¨æˆ·id',
  `sys_role_id` varchar(255) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色中间表';

-- ----------------------------
-- Records of t_sys_role_user
-- ----------------------------
INSERT INTO `t_sys_role_user` VALUES ('2', '2', '2');
INSERT INTO `t_sys_role_user` VALUES ('488203259031322624', '487424004592762880', '488203230455529472');
INSERT INTO `t_sys_role_user` VALUES ('488243438727200768', '1', '488243256161730560');
INSERT INTO `t_sys_role_user` VALUES ('488305827225010176', '488294747442511872', '488289006124007424');
INSERT INTO `t_sys_role_user` VALUES ('488305827485057024', '488294747442511872', '488305788310257664');
INSERT INTO `t_sys_role_user` VALUES ('488857903675998208', '488857903675998208', '488289006124007424');

-- ----------------------------
-- Table structure for t_sys_user
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user`;
CREATE TABLE `t_sys_user` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户账号',
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户表';

-- ----------------------------
-- Records of t_sys_user
-- ----------------------------
INSERT INTO `t_sys_user` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3');
INSERT INTO `t_sys_user` VALUES ('488294747442511872', 'fuce', 'e10adc3949ba59abbe56e057f20f883e');

-- ----------------------------
-- Table structure for t_tsts
-- ----------------------------
DROP TABLE IF EXISTS `t_tsts`;
CREATE TABLE `t_tsts` (
  `id` varchar(255) NOT NULL,
  `test1` varchar(255) DEFAULT NULL,
  `test2` varchar(255) DEFAULT NULL,
  `test3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_tsts
-- ----------------------------
