/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-05-11 21:39:00
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='文件表存储表';

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='文件信息表';

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='日志记录表';

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
INSERT INTO `t_sys_oper_log` VALUES ('574746434637660160', '用户集合查询', 'cn.com.jetshine.ywzspt.controller.admin.UserController.list()', 'admin', '//UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-05');
INSERT INTO `t_sys_oper_log` VALUES ('574746459027537920', '用户集合查询', 'cn.com.jetshine.ywzspt.controller.admin.UserController.list()', 'admin', '//UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-05');
INSERT INTO `t_sys_oper_log` VALUES ('575103573847703552', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-06');
INSERT INTO `t_sys_oper_log` VALUES ('575103582882234368', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-06');
INSERT INTO `t_sys_oper_log` VALUES ('575103584832585728', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-06');
INSERT INTO `t_sys_oper_log` VALUES ('575103588733288448', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-06');
INSERT INTO `t_sys_oper_log` VALUES ('575106362099367936', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '//UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-06');
INSERT INTO `t_sys_oper_log` VALUES ('575106383096053760', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '//UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-06');
INSERT INTO `t_sys_oper_log` VALUES ('575106403916578816', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '//UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-06');
INSERT INTO `t_sys_oper_log` VALUES ('575114555802255360', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-07');
INSERT INTO `t_sys_oper_log` VALUES ('575114613012561920', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-07');
INSERT INTO `t_sys_oper_log` VALUES ('575114624546897920', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-07');
INSERT INTO `t_sys_oper_log` VALUES ('575114634210574336', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-07');
INSERT INTO `t_sys_oper_log` VALUES ('575114676153614336', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-07');
INSERT INTO `t_sys_oper_log` VALUES ('575114684047294464', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-07');
INSERT INTO `t_sys_oper_log` VALUES ('575114707627671552', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-07');
INSERT INTO `t_sys_oper_log` VALUES ('575125179835875328', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-07');
INSERT INTO `t_sys_oper_log` VALUES ('575125181685563392', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-07');
INSERT INTO `t_sys_oper_log` VALUES ('575125191626063872', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-07');
INSERT INTO `t_sys_oper_log` VALUES ('575125198718631936', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-07');
INSERT INTO `t_sys_oper_log` VALUES ('575125200337633280', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-07');
INSERT INTO `t_sys_oper_log` VALUES ('575125208873041920', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-07');
INSERT INTO `t_sys_oper_log` VALUES ('575126190109491200', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-07');
INSERT INTO `t_sys_oper_log` VALUES ('576600087799529472', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-11');

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
INSERT INTO `t_sys_permission_role` VALUES ('0b860a8d-1df1-4506-896b-c75ad5aac1b7', '488243256161730560', '13');
INSERT INTO `t_sys_permission_role` VALUES ('0d419824-3182-4455-a003-e31bb715a100', '488305788310257664', '14');
INSERT INTO `t_sys_permission_role` VALUES ('1072652c-779d-45fb-ab84-a48a1dfc1820', '488243256161730560', '19');
INSERT INTO `t_sys_permission_role` VALUES ('14c710cc-bbc4-440f-9bfb-dfaba965f727', '488305788310257664', '575853607149109248');
INSERT INTO `t_sys_permission_role` VALUES ('18d78238-7c4f-4b52-9f16-e76b2ea24aeb', '488289006124007424', '333');
INSERT INTO `t_sys_permission_role` VALUES ('195e5332-3e87-4667-bd0d-5f0a8b22bc42', '488243256161730560', '14');
INSERT INTO `t_sys_permission_role` VALUES ('1c87a8da-e995-44f2-a8c0-430279e4f0dc', '488243256161730560', '5766007011074375683');
INSERT INTO `t_sys_permission_role` VALUES ('1e4a34fa-183d-405b-b44c-56b479664192', '488305788310257664', '5766007011074375683');
INSERT INTO `t_sys_permission_role` VALUES ('1e9da378-1b26-45bc-88e5-5e1a2bc3e51f', '488305788310257664', '5766007011074375682');
INSERT INTO `t_sys_permission_role` VALUES ('204598c7-9708-4536-b28e-92a4e5da9b8d', '488305788310257664', '5766007011074375684');
INSERT INTO `t_sys_permission_role` VALUES ('20fb8ae7-b95a-4474-9e37-62192d9ae619', '488305788310257664', '9');
INSERT INTO `t_sys_permission_role` VALUES ('23b6cb6b-e5de-4c3b-935d-8333bbbe4f7a', '488243256161730560', '496782496638173184');
INSERT INTO `t_sys_permission_role` VALUES ('270864c3-628c-4786-8d1f-6372a5209008', '488243256161730560', '12');
INSERT INTO `t_sys_permission_role` VALUES ('287460a3-f7dc-4f67-a370-54df839b46bb', '488289006124007424', '15');
INSERT INTO `t_sys_permission_role` VALUES ('2b0946a6-ffe7-492d-9b4f-4005d1dfb70d', '488289006124007424', '111');
INSERT INTO `t_sys_permission_role` VALUES ('2c7b82c9-aaf1-463c-a4b6-7af2945c38c4', '488243256161730560', '10');
INSERT INTO `t_sys_permission_role` VALUES ('30704f4e-b6cf-4010-86fc-0bf356c27fa8', '488289006124007424', '10');
INSERT INTO `t_sys_permission_role` VALUES ('31633e59-cb83-436f-89ce-9626dd3531ac', '488305788310257664', '575852089792528384');
INSERT INTO `t_sys_permission_role` VALUES ('3296d7ad-5c69-42f8-b5bc-ef45d71d1b0a', '488243256161730560', '22');
INSERT INTO `t_sys_permission_role` VALUES ('37669625-c4da-459e-8a09-0759af9f8b73', '488243256161730560', '575852089792528384');
INSERT INTO `t_sys_permission_role` VALUES ('378edca7-b8cd-4741-af44-55fe2b83dd17', '488289006124007424', '1');
INSERT INTO `t_sys_permission_role` VALUES ('3c73d216-26fa-45ca-8822-0f34f4960771', '488243256161730560', '11');
INSERT INTO `t_sys_permission_role` VALUES ('4593aaae-42e7-4877-ac9a-939e80e37d05', '488289006124007424', '4');
INSERT INTO `t_sys_permission_role` VALUES ('4af16b5c-2f83-43c7-9596-fa1774b8a28f', '488243256161730560', '575853607149109248');
INSERT INTO `t_sys_permission_role` VALUES ('4afa8efc-f4dd-45d8-a7e3-ca06fd18b829', '488305788310257664', '496805860547231744');
INSERT INTO `t_sys_permission_role` VALUES ('4dc4c717-228b-45c9-b022-c9e4205f4708', '488305788310257664', '18');
INSERT INTO `t_sys_permission_role` VALUES ('50059c69-164d-45ec-b6e6-4a5401777421', '488305788310257664', '5766007011074375681');
INSERT INTO `t_sys_permission_role` VALUES ('536ff514-ac3c-48b2-a4d8-fb4bbce5e470', '488305788310257664', '5');
INSERT INTO `t_sys_permission_role` VALUES ('5ced3ff1-bbb3-40b8-aa11-e21e20adc320', '488243256161730560', '5766007011074375682');
INSERT INTO `t_sys_permission_role` VALUES ('615eb5fa-8b26-44e2-a8aa-baa7df4989b9', '488305788310257664', '12');
INSERT INTO `t_sys_permission_role` VALUES ('64ead52e-aa86-48fb-bc59-178a1385a98c', '488243256161730560', '5');
INSERT INTO `t_sys_permission_role` VALUES ('6a84468f-534c-48e0-8d2c-fd08128e424e', '488243256161730560', '6');
INSERT INTO `t_sys_permission_role` VALUES ('71dcae3a-f18e-4997-b966-518575497d4d', '488305788310257664', '10');
INSERT INTO `t_sys_permission_role` VALUES ('72278064-2a41-46cb-829a-1d18e6990998', '488305788310257664', '19');
INSERT INTO `t_sys_permission_role` VALUES ('7846968f-8256-426d-9abf-ec2f8be93622', '488243256161730560', '23');
INSERT INTO `t_sys_permission_role` VALUES ('7c5f438f-6a98-44b1-99a0-138fcfa3b22a', '488243256161730560', '4');
INSERT INTO `t_sys_permission_role` VALUES ('815c7b31-7d82-4d43-9683-8c4168237da3', '488305788310257664', '486690002869157888');
INSERT INTO `t_sys_permission_role` VALUES ('827415fe-4258-462e-a589-ff329ffd8793', '488243256161730560', '16');
INSERT INTO `t_sys_permission_role` VALUES ('83a1171b-ba52-433e-82e6-07526658fe7e', '488305788310257664', '576600701107437568');
INSERT INTO `t_sys_permission_role` VALUES ('840933c6-b0ab-4629-845d-b19d73a0d75b', '488305788310257664', '21');
INSERT INTO `t_sys_permission_role` VALUES ('85845cb3-9a7a-41a2-986d-02ac10420492', '488305788310257664', '1');
INSERT INTO `t_sys_permission_role` VALUES ('8746b5f2-6858-48a8-bae4-568f0ded8fd5', '488305788310257664', '23');
INSERT INTO `t_sys_permission_role` VALUES ('8967fff4-8019-4aba-98cc-50d374c4bfd6', '488305788310257664', '11');
INSERT INTO `t_sys_permission_role` VALUES ('8c9c2a91-26e3-4400-9d7f-4ed1e009a1f8', '488305788310257664', '7');
INSERT INTO `t_sys_permission_role` VALUES ('8ccc4a6f-9383-42fb-9513-28bc9ce7064a', '488243256161730560', '486690002869157888');
INSERT INTO `t_sys_permission_role` VALUES ('900ddc31-2bf0-4dde-a0d8-c6addf66a9e4', '488243256161730560', '9');
INSERT INTO `t_sys_permission_role` VALUES ('9aaaaeaf-84bf-4a0f-821e-0631a6dcdb3d', '488243256161730560', '5766007011074375684');
INSERT INTO `t_sys_permission_role` VALUES ('9b22e1ff-f3be-40a7-a96d-581de5b85600', '488243256161730560', '18');
INSERT INTO `t_sys_permission_role` VALUES ('9f43b744-779e-4a5d-b155-626f52cec1a6', '488243256161730560', '21');
INSERT INTO `t_sys_permission_role` VALUES ('a4622fec-dffc-4c96-8a56-3c8d27584d9a', '488305788310257664', '20');
INSERT INTO `t_sys_permission_role` VALUES ('a89ccffd-1dec-4052-b49e-a07341e13b90', '488305788310257664', '496782496638173184');
INSERT INTO `t_sys_permission_role` VALUES ('a8a6b92f-f263-484f-8a3c-a3a801376a17', '488305788310257664', '6');
INSERT INTO `t_sys_permission_role` VALUES ('a931f970-2a69-42d9-a426-0a97c4977147', '488289006124007424', '9');
INSERT INTO `t_sys_permission_role` VALUES ('b141a6c5-1bc5-4e54-b80b-f56f47515400', '488305788310257664', '8');
INSERT INTO `t_sys_permission_role` VALUES ('b584b1b0-9e89-4844-a9c7-769eb3928eba', '488243256161730560', '20');
INSERT INTO `t_sys_permission_role` VALUES ('b827d4ae-766b-4ad9-ae72-47f01cbe850c', '488243256161730560', '17');
INSERT INTO `t_sys_permission_role` VALUES ('ba0187e7-248c-44d8-9df1-664613316c2d', '488243256161730560', '496803374054768640');
INSERT INTO `t_sys_permission_role` VALUES ('c5c998d0-aa42-4106-af58-2f50d0afe03c', '488289006124007424', '5');
INSERT INTO `t_sys_permission_role` VALUES ('c64abfdb-be42-4296-9c79-699c23d9807d', '488243256161730560', '575851658483859456');
INSERT INTO `t_sys_permission_role` VALUES ('ce6877e4-c467-4077-a8c9-7fccdd976122', '488305788310257664', '4');
INSERT INTO `t_sys_permission_role` VALUES ('d4d174e2-5e83-49b0-b658-c56b76a3ab05', '488305788310257664', '22');
INSERT INTO `t_sys_permission_role` VALUES ('d7ab12cc-e9d2-4c15-8f32-6cb3b3368a96', '488243256161730560', '8');
INSERT INTO `t_sys_permission_role` VALUES ('d8c9517d-aaaa-43c9-b108-b367c692c094', '488305788310257664', '496803374054768640');
INSERT INTO `t_sys_permission_role` VALUES ('deaf7d37-6ab6-4ac7-86ac-9da9ed2aea7d', '488243256161730560', '7');
INSERT INTO `t_sys_permission_role` VALUES ('ded3451c-9dce-4212-afed-d369380411e2', '488305788310257664', '17');
INSERT INTO `t_sys_permission_role` VALUES ('e2c4a32b-50d6-4df0-b837-a9840fc1cfbf', '488243256161730560', '1');
INSERT INTO `t_sys_permission_role` VALUES ('e34faee0-3ab3-454c-befd-c2de3046fec2', '488243256161730560', '5766007011074375681');
INSERT INTO `t_sys_permission_role` VALUES ('e6d33929-1c05-4c54-b594-2ba0ab7312fb', '488289006124007424', '14');
INSERT INTO `t_sys_permission_role` VALUES ('f31f64ad-0752-4bfd-8732-8c250722a44a', '488305788310257664', '13');
INSERT INTO `t_sys_permission_role` VALUES ('f42af1bf-a892-40f6-98cb-d21b746986bb', '488305788310257664', '15');
INSERT INTO `t_sys_permission_role` VALUES ('f9eaa18f-7e35-40e0-84c7-235ce6873a14', '488305788310257664', '575851658483859456');
INSERT INTO `t_sys_permission_role` VALUES ('faf3348a-7b5f-4713-ae79-1710d606c6b6', '488243256161730560', '576600701107437568');
INSERT INTO `t_sys_permission_role` VALUES ('fbf49f39-310c-4ecc-9aaa-992042706bcb', '488243256161730560', '15');
INSERT INTO `t_sys_permission_role` VALUES ('fe03a878-8400-4b5b-8829-a990b14cb3f2', '488289006124007424', '222');
INSERT INTO `t_sys_permission_role` VALUES ('ff422257-5bec-43f2-87f1-8a6294f9b3b1', '488305788310257664', '16');
INSERT INTO `t_sys_permission_role` VALUES ('ffd49f42-3f22-421b-961f-b53df72fadae', '488243256161730560', '496805860547231744');

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
INSERT INTO `t_sys_premission` VALUES ('575851658483859456', '代码生成', '代码生成', null, '1', null, '0', 'fa fa-ra', '3');
INSERT INTO `t_sys_premission` VALUES ('575852089792528384', '代码管理', '代码生成', '/generatorController/view', '575851658483859456', 'system:generator:view', '1', 'fa fa-bug', '1');
INSERT INTO `t_sys_premission` VALUES ('575853607149109248', '代码集合', '代码集合', '/generatorController/list', '575852089792528384', 'system:generator:list', '2', null, null);
INSERT INTO `t_sys_premission` VALUES ('576600701107437568', '自动生成测试管理', '自动生成测试展示', '/TTstsController/view', '496803374054768640', 'gen:tTsts:view', '1', 'fa fa-quora', null);
INSERT INTO `t_sys_premission` VALUES ('5766007011074375681', '自动生成测试集合', '自动生成测试集合', '/TTstsController/list', '576600701107437568', 'gen:tTsts:list', '2', '', null);
INSERT INTO `t_sys_premission` VALUES ('5766007011074375682', '自动生成测试添加', '自动生成测试添加', '/TTstsController/add', '576600701107437568', 'gen:tTsts:add', '2', 'entypo-plus-squared', null);
INSERT INTO `t_sys_premission` VALUES ('5766007011074375683', '自动生成测试删除', '自动生成测试删除', '/TTstsController/remove', '576600701107437568', 'gen:tTsts:remove', '2', 'entypo-trash', null);
INSERT INTO `t_sys_premission` VALUES ('5766007011074375684', '自动生成测试修改', '自动生成测试修改', '/TTstsController/edit', '576600701107437568', 'gen:tTsts:edit', '2', 'fa fa-wrench', null);
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
INSERT INTO `t_sys_role_user` VALUES ('575114609501929472', '575114609501929472', '488243256161730560');

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
  `id` varchar(255) NOT NULL COMMENT '主键',
  `test1` varchar(255) DEFAULT NULL COMMENT '备注1',
  `test2` datetime DEFAULT NULL COMMENT '备注2',
  `test_hs` varchar(255) DEFAULT NULL COMMENT '备注3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='自动生成测试';

-- ----------------------------
-- Records of t_tsts
-- ----------------------------
INSERT INTO `t_tsts` VALUES ('365', 'lacinia convallis bibendum ultricies fermentum sociis ut porta euismod sem', '2019-05-07 00:00:00', 'Etiam Pellentesque urna libero');
INSERT INTO `t_tsts` VALUES ('366', 'rutrum consectetuer nascetur litora magna aliquam vitae imperdiet vulputate parturient', '2019-05-09 00:00:00', 'sociosqu Ut justo ad vulputate feugiat pulvinar');
INSERT INTO `t_tsts` VALUES ('373', 'Cum sapien convallis euismod tristique penatibus Morbi Phasellus quis nec', '2019-05-04 00:00:00', 'est');
INSERT INTO `t_tsts` VALUES ('375', 'sociis vulputate Quisque netus Vestibulum congue rutrum ornare placerat Pellentesque', '2019-05-10 00:00:00', 'dolor congue accumsan');
INSERT INTO `t_tsts` VALUES ('453', 'eu sit Curae magna in justo Aliquam felis libero Curabitur', '2019-05-09 00:00:00', 'semper mauris');
INSERT INTO `t_tsts` VALUES ('472', 'hendrerit primis iaculis at aliquam condimentum Phasellus fames eleifend Cum', '2019-05-10 00:00:00', 'Donec ipsum magnis penatibus Donec id Vestibulum mi');
INSERT INTO `t_tsts` VALUES ('478', 'dapibus ad diam ad Lorem per Quisque venenatis urna feugiat', '2019-05-09 00:00:00', 'ultrices tempor netus Ut');
INSERT INTO `t_tsts` VALUES ('495', 'facilisis blandit aliquet est litora diam viverra erat Nullam imperdiet', '2019-05-09 00:00:00', 'hendrerit erat tristique ultricies viverra mollis pellentesque scelerisque elementum auctor');
INSERT INTO `t_tsts` VALUES ('5', '5', '2019-05-11 01:48:03', '5');
INSERT INTO `t_tsts` VALUES ('504', 'In Pellentesque Phasellus convallis facilisis placerat morbi dapibus pulvinar convallis', '2019-05-05 00:00:00', 'Vestibulum');
INSERT INTO `t_tsts` VALUES ('509', 'ante volutpat non dignissim mauris morbi eleifend sit iaculis Phasellus', '2019-05-07 00:00:00', 'dictum Proin');
INSERT INTO `t_tsts` VALUES ('521', 'penatibus turpis nostra nec quis cubilia Proin velit a mauris', '2019-05-10 00:00:00', 'sagittis gravida eros semper');
INSERT INTO `t_tsts` VALUES ('522', 'ad blandit tristique eros magna euismod porta arcu libero Nunc', '2019-05-06 00:00:00', 'Mauris pulvinar commodo est Duis convallis Praesent');
INSERT INTO `t_tsts` VALUES ('523', 'velit ultricies orci nisi cubilia sem Nam Integer parturient conubia', '2019-05-07 00:00:00', 'pede metus aliquet a augue eu hymenaeos viverra turpis');
INSERT INTO `t_tsts` VALUES ('527', 'bibendum hendrerit consequat Cras euismod lacinia tempus Nunc aliquet sapien', '2019-05-05 00:00:00', 'pellentesque varius Vestibulum Maecenas porta');
INSERT INTO `t_tsts` VALUES ('529', 'conubia sociosqu purus mus Lorem faucibus sociosqu egestas Vivamus fermentum', '2019-05-06 00:00:00', 'tellus Phasellus volutpat scelerisque porttitor eget vel quis primis');
INSERT INTO `t_tsts` VALUES ('531', 'justo dapibus mollis Pellentesque Vestibulum tincidunt taciti Lorem nec Praesent', '2019-05-08 00:00:00', 'suscipit velit felis nonummy rutrum dolor ridiculus magnis nascetur');
INSERT INTO `t_tsts` VALUES ('547', 'cursus ut netus Donec dapibus dignissim rhoncus ultricies at dignissim', '2019-05-07 00:00:00', 'feugiat elit urna Morbi litora faucibus convallis mauris');
INSERT INTO `t_tsts` VALUES ('554', 'arcu parturient vel eu sollicitudin tellus Fusce torquent torquent mattis', '2019-05-08 00:00:00', 'dolor vestibulum sit ridiculus hendrerit Aliquam Fusce cubilia viverra in');
INSERT INTO `t_tsts` VALUES ('557', 'torquent sem scelerisque dui Morbi at convallis eu congue mollis', '2019-05-08 00:00:00', 'Nam fermentum mus nisi eu rhoncus accumsan in nostra');
INSERT INTO `t_tsts` VALUES ('564', 'volutpat Suspendisse Fusce vestibulum facilisi lobortis Aliquam Maecenas feugiat Proin', '2019-05-08 00:00:00', 'tellus conubia conubia convallis hendrerit Aenean est non');
INSERT INTO `t_tsts` VALUES ('57', 'vitae lobortis pharetra eu Ut primis est vehicula rutrum convallis', '2019-05-04 00:00:00', 'mauris est mattis');
INSERT INTO `t_tsts` VALUES ('570', 'leo libero consequat lacus ad rhoncus iaculis vel fermentum libero', '2019-05-05 00:00:00', 'urna commodo rutrum ligula magnis');
INSERT INTO `t_tsts` VALUES ('579', 'laoreet accumsan tincidunt sapien id nonummy eget eu diam viverra', '2019-05-07 00:00:00', 'conubia Nulla');
INSERT INTO `t_tsts` VALUES ('580', 'Cras Integer volutpat luctus luctus Curabitur ut vel Curabitur volutpat', '2019-05-05 00:00:00', 'Integer nisl');
INSERT INTO `t_tsts` VALUES ('584', 'nibh vel netus non Nunc montes nulla nec hymenaeos Ut', '2019-05-05 00:00:00', 'ultrices In nisl ultrices');
INSERT INTO `t_tsts` VALUES ('605', 'Fusce at tincidunt lacinia egestas sociis est quam ridiculus parturient', '2019-05-09 00:00:00', 'eget nulla torquent mus luctus habitant risus lobortis pretium convallis');
INSERT INTO `t_tsts` VALUES ('61', 'feugiat metus quis eros Praesent Cum eu Morbi conubia laoreet', '2019-05-07 00:00:00', 'congue sit dis mattis penatibus consectetuer montes');
INSERT INTO `t_tsts` VALUES ('617', 'tempus iaculis Mauris justo rutrum ultricies Duis id est eleifend', '2019-05-06 00:00:00', 'ad convallis conubia cubilia');
INSERT INTO `t_tsts` VALUES ('624', 'litora ultricies metus nostra commodo Integer augue ut interdum faucibus', '2019-05-07 00:00:00', 'consectetuer Etiam sollicitudin euismod lorem');
INSERT INTO `t_tsts` VALUES ('637', 'porta vestibulum euismod posuere porta convallis ultricies nulla elit at', '2019-05-04 00:00:00', 'dapibus');
INSERT INTO `t_tsts` VALUES ('648', 'mauris consectetuer Phasellus ipsum turpis per eros erat enim habitant', '2019-05-09 00:00:00', 'nostra');
INSERT INTO `t_tsts` VALUES ('652', 'congue hymenaeos blandit pulvinar torquent Vestibulum ridiculus nulla Fusce volutpat', '2019-05-07 00:00:00', 'metus nostra enim hymenaeos');
INSERT INTO `t_tsts` VALUES ('653', 'erat Mauris natoque consequat magnis suscipit sagittis Mauris eleifend ornare', '2019-05-09 00:00:00', 'conubia');
INSERT INTO `t_tsts` VALUES ('657', 'nec augue malesuada natoque eros vitae eget porttitor urna eget', '2019-05-07 00:00:00', 'condimentum ornare tortor lobortis');
INSERT INTO `t_tsts` VALUES ('660', 'ac risus risus blandit Suspendisse non Vestibulum Cum volutpat lacus', '2019-05-08 00:00:00', 'vel nisl dapibus sed amet ac lacinia semper imperdiet');
INSERT INTO `t_tsts` VALUES ('661', 'ipsum nisl Maecenas congue morbi Nunc Praesent venenatis semper facilisis', '2019-05-04 00:00:00', 'Suspendisse');
INSERT INTO `t_tsts` VALUES ('662', 'eros in et velit lectus sociis urna cursus nisl lorem', '2019-05-06 00:00:00', 'nec Phasellus aliquam sagittis fringilla faucibus semper et elit tellus');
INSERT INTO `t_tsts` VALUES ('671', 'ridiculus tincidunt fringilla Cum Aliquam amet Sed Quisque semper quam', '2019-05-04 00:00:00', 'purus ridiculus ut malesuada in');
INSERT INTO `t_tsts` VALUES ('674', 'arcu Curae odio taciti convallis tempor mus mollis dapibus Aliquam', '2019-05-08 00:00:00', 'sociosqu per');
INSERT INTO `t_tsts` VALUES ('679', 'sagittis Aenean orci est dis nostra feugiat est dis dignissim', '2019-05-09 00:00:00', 'consectetuer scelerisque egestas at ac per Nam facilisi habitant suscipit');
INSERT INTO `t_tsts` VALUES ('680', 'pharetra dignissim risus iaculis Aenean nulla ridiculus parturient sociis tempus', '2019-05-07 00:00:00', 'dapibus Aenean');
INSERT INTO `t_tsts` VALUES ('69', 'eget dapibus Phasellus habitant volutpat Donec et elit Ut Fusce', '2019-05-06 00:00:00', 'ut');
INSERT INTO `t_tsts` VALUES ('698', 'purus metus libero pulvinar torquent risus per morbi porta tincidunt', '2019-05-07 00:00:00', 'est sem Maecenas tortor erat nunc nisi sociis');
INSERT INTO `t_tsts` VALUES ('705', 'molestie sagittis conubia mus Curae ac scelerisque per volutpat Mauris', '2019-05-08 00:00:00', 'ante turpis urna Duis Morbi');
INSERT INTO `t_tsts` VALUES ('707', 'ornare quis Curae torquent conubia interdum Nullam Aliquam facilisi ornare', '2019-05-07 00:00:00', 'eu tempus faucibus pharetra taciti odio Nam luctus');
INSERT INTO `t_tsts` VALUES ('715', 'torquent laoreet tellus hymenaeos magnis Cras Etiam ante imperdiet Cras', '2019-05-10 00:00:00', 'ad natoque Proin in');
INSERT INTO `t_tsts` VALUES ('736', 'aliquet rutrum Pellentesque litora molestie sociis cubilia aliquam sociosqu Aenean', '2019-05-10 00:00:00', 'elit massa eu nostra Duis');
INSERT INTO `t_tsts` VALUES ('743', 'hendrerit fermentum aliquet pede quam sollicitudin pharetra tortor nunc elit', '2019-05-04 00:00:00', 'ut tortor laoreet magna et nostra ridiculus');
INSERT INTO `t_tsts` VALUES ('744', 'adipiscing molestie semper ut malesuada aliquam dapibus tristique Etiam placerat', '2019-05-06 00:00:00', 'Nam rutrum in');
INSERT INTO `t_tsts` VALUES ('745', 'facilisis lectus lectus scelerisque nostra mattis lacinia consequat habitant malesuada', '2019-05-05 00:00:00', 'pulvinar tincidunt');
INSERT INTO `t_tsts` VALUES ('747', 'rhoncus fringilla fermentum penatibus Duis natoque est dapibus fames purus', '2019-05-07 00:00:00', 'Donec neque conubia felis vitae ultrices');
INSERT INTO `t_tsts` VALUES ('753', 'rutrum Nulla pharetra cubilia Nunc id pellentesque sed penatibus montes', '2019-05-07 00:00:00', 'penatibus hymenaeos fermentum eget Proin');
INSERT INTO `t_tsts` VALUES ('76', 'cubilia at hymenaeos dui bibendum sed consectetuer hendrerit hymenaeos congue', '2019-05-10 00:00:00', 'a rutrum nisl mollis Fusce posuere fringilla');
INSERT INTO `t_tsts` VALUES ('768', 'dui euismod Curae ultrices sapien porttitor suscipit semper habitant volutpat', '2019-05-08 00:00:00', 'sed massa laoreet molestie Aenean purus fames Integer');
INSERT INTO `t_tsts` VALUES ('769', 'nulla condimentum Etiam risus ante dui congue feugiat vehicula elementum', '2019-05-06 00:00:00', 'eros a venenatis condimentum justo sit');
INSERT INTO `t_tsts` VALUES ('773', 'dis Class porttitor primis euismod euismod auctor massa Morbi litora', '2019-05-07 00:00:00', 'feugiat');
INSERT INTO `t_tsts` VALUES ('775', 'vestibulum Maecenas quis tempus rutrum per et odio sit tristique', '2019-05-04 00:00:00', 'eget quis rutrum Integer adipiscing euismod velit sollicitudin Vestibulum interdum');
INSERT INTO `t_tsts` VALUES ('785', 'morbi venenatis fames Maecenas Aliquam dignissim ornare libero mollis aptent', '2019-05-08 00:00:00', 'facilisis');
INSERT INTO `t_tsts` VALUES ('789', 'nostra tristique eros Mauris mi mollis iaculis Etiam aliquam sapien', '2019-05-10 00:00:00', 'mus Vivamus gravida elit Fusce');
INSERT INTO `t_tsts` VALUES ('791', 'aliquet iaculis Pellentesque sagittis viverra arcu blandit Nunc magna elementum', '2019-05-05 00:00:00', 'mus Aenean Aenean ut vulputate non');
INSERT INTO `t_tsts` VALUES ('801', 'quam ligula Sed gravida natoque fames dignissim ridiculus suscipit vel', '2019-05-07 00:00:00', 'rhoncus aptent commodo facilisi enim velit cubilia');
INSERT INTO `t_tsts` VALUES ('803', 'inceptos sapien diam varius sollicitudin malesuada tempor placerat Cum primis', '2019-05-07 00:00:00', 'nibh penatibus auctor auctor euismod Aliquam');
INSERT INTO `t_tsts` VALUES ('807', 'interdum lorem orci dolor Donec Integer adipiscing ullamcorper Phasellus Ut', '2019-05-04 00:00:00', 'eu nonummy Cum eget dolor lobortis senectus lorem per eget');
INSERT INTO `t_tsts` VALUES ('81', 'lacinia accumsan suscipit metus Praesent semper dapibus commodo dictum adipiscing', '2019-05-08 00:00:00', 'nisl commodo metus ridiculus penatibus commodo est suscipit dolor fermentum');
INSERT INTO `t_tsts` VALUES ('810', 'consequat Cum Nullam urna eget nonummy penatibus interdum non Duis', '2019-05-07 00:00:00', 'eros vel Cras lacinia tellus Sed');
INSERT INTO `t_tsts` VALUES ('821', 'posuere rutrum ipsum odio In sagittis luctus dapibus placerat orci', '2019-05-04 00:00:00', 'facilisis Vestibulum euismod Ut dictum');
INSERT INTO `t_tsts` VALUES ('827', 'Sed nunc hymenaeos Fusce Fusce Curae ad torquent enim nisl', '2019-05-04 00:00:00', 'tortor cursus Curae tempor In eros egestas');
INSERT INTO `t_tsts` VALUES ('840', 'conubia eros leo Integer consectetuer libero turpis rutrum fames Morbi', '2019-05-05 00:00:00', 'ante Fusce varius neque');
INSERT INTO `t_tsts` VALUES ('87', 'ac cubilia amet Aliquam sem nisi posuere rhoncus Mauris hendrerit', '2019-05-04 00:00:00', 'lobortis id Cras mi accumsan hymenaeos Nam adipiscing hendrerit feugiat');
INSERT INTO `t_tsts` VALUES ('874', 'vulputate malesuada natoque conubia dolor Cum interdum Duis nibh Maecenas', '2019-05-08 00:00:00', 'Lorem tempus senectus consectetuer Vestibulum non gravida diam morbi');
INSERT INTO `t_tsts` VALUES ('898', 'nonummy faucibus sapien Morbi Pellentesque Cum torquent sollicitudin ad vehicula', '2019-05-05 00:00:00', 'justo at pharetra taciti magnis nonummy Curabitur');
INSERT INTO `t_tsts` VALUES ('9', 'Praesent augue sodales diam pharetra gravida diam vehicula nascetur Praesent', '2019-05-04 00:00:00', 'mollis dui');
INSERT INTO `t_tsts` VALUES ('901', 'inceptos senectus ullamcorper laoreet Aenean elementum sagittis feugiat laoreet vel', '2019-05-07 00:00:00', 'est scelerisque In Vivamus lorem dignissim sagittis libero iaculis sem');
INSERT INTO `t_tsts` VALUES ('91', 'velit sociis ornare mus Curae porta Mauris laoreet lectus malesuada', '2019-05-04 00:00:00', 'elementum blandit cubilia Ut enim laoreet');
INSERT INTO `t_tsts` VALUES ('910', 'Morbi natoque posuere nibh nisi arcu tincidunt porttitor Morbi inceptos', '2019-05-07 00:00:00', 'purus');
INSERT INTO `t_tsts` VALUES ('92', 'dignissim diam Fusce convallis interdum torquent nec faucibus sociosqu aptent', '2019-05-07 00:00:00', 'eleifend arcu Integer sagittis Donec ac tellus bibendum');
