/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-06-22 19:27:12
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
INSERT INTO `t_sys_oper_log` VALUES ('578214488637964288', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-15');
INSERT INTO `t_sys_oper_log` VALUES ('578215933424697344', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-15');
INSERT INTO `t_sys_oper_log` VALUES ('578295115655675904', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-15');
INSERT INTO `t_sys_oper_log` VALUES ('578334014285283328', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-15');
INSERT INTO `t_sys_oper_log` VALUES ('578334057562112000', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-15');
INSERT INTO `t_sys_oper_log` VALUES ('581539999485263872', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-24');
INSERT INTO `t_sys_oper_log` VALUES ('581641202755960832', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-25');
INSERT INTO `t_sys_oper_log` VALUES ('581642561861451776', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-25');
INSERT INTO `t_sys_oper_log` VALUES ('581642571026006016', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-25');
INSERT INTO `t_sys_oper_log` VALUES ('581642590676320256', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-25');
INSERT INTO `t_sys_oper_log` VALUES ('581642605851312128', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-25');
INSERT INTO `t_sys_oper_log` VALUES ('581643123252264960', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-25');
INSERT INTO `t_sys_oper_log` VALUES ('581643133494755328', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-25');
INSERT INTO `t_sys_oper_log` VALUES ('581643169863565312', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-25');
INSERT INTO `t_sys_oper_log` VALUES ('581643179921506304', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-25');
INSERT INTO `t_sys_oper_log` VALUES ('583058233808125952', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-28');
INSERT INTO `t_sys_oper_log` VALUES ('583062186411163648', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-28');
INSERT INTO `t_sys_oper_log` VALUES ('583063371524341760', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-28');
INSERT INTO `t_sys_oper_log` VALUES ('583063407133982720', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-28');
INSERT INTO `t_sys_oper_log` VALUES ('583063570846056448', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-28');
INSERT INTO `t_sys_oper_log` VALUES ('583071831351623680', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-28');
INSERT INTO `t_sys_oper_log` VALUES ('583072094544199680', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-28');
INSERT INTO `t_sys_oper_log` VALUES ('583072099438952448', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-28');
INSERT INTO `t_sys_oper_log` VALUES ('583072151200858112', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-28');
INSERT INTO `t_sys_oper_log` VALUES ('583797847309156352', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-30');
INSERT INTO `t_sys_oper_log` VALUES ('583803251602751488', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-30');
INSERT INTO `t_sys_oper_log` VALUES ('583803280786718720', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-30');
INSERT INTO `t_sys_oper_log` VALUES ('583803489046495232', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-30');
INSERT INTO `t_sys_oper_log` VALUES ('583803493261770752', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-30');
INSERT INTO `t_sys_oper_log` VALUES ('583803495354728448', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-30');
INSERT INTO `t_sys_oper_log` VALUES ('583803496118091776', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-30');
INSERT INTO `t_sys_oper_log` VALUES ('583803496843706368', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-30');
INSERT INTO `t_sys_oper_log` VALUES ('583803497602875392', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-30');
INSERT INTO `t_sys_oper_log` VALUES ('583803722170105856', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-30');
INSERT INTO `t_sys_oper_log` VALUES ('583803868144467968', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-30');
INSERT INTO `t_sys_oper_log` VALUES ('583804016316645376', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-30');
INSERT INTO `t_sys_oper_log` VALUES ('583804021488222208', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-30');
INSERT INTO `t_sys_oper_log` VALUES ('583806271379996672', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-30');
INSERT INTO `t_sys_oper_log` VALUES ('583806760712667136', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-30');
INSERT INTO `t_sys_oper_log` VALUES ('583811401370304512', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-31');
INSERT INTO `t_sys_oper_log` VALUES ('583812245419458560', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-31');
INSERT INTO `t_sys_oper_log` VALUES ('583814946324742144', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-31');
INSERT INTO `t_sys_oper_log` VALUES ('583818377806479360', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-31');
INSERT INTO `t_sys_oper_log` VALUES ('583818410891149312', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-31');
INSERT INTO `t_sys_oper_log` VALUES ('583818732158058496', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-31');
INSERT INTO `t_sys_oper_log` VALUES ('583818746162839552', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-31');
INSERT INTO `t_sys_oper_log` VALUES ('583819034252804096', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-31');
INSERT INTO `t_sys_oper_log` VALUES ('583821222869991424', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-31');
INSERT INTO `t_sys_oper_log` VALUES ('583824007833321472', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-31');
INSERT INTO `t_sys_oper_log` VALUES ('583825597319348224', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-31');
INSERT INTO `t_sys_oper_log` VALUES ('583827000246927360', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-31');
INSERT INTO `t_sys_oper_log` VALUES ('583827025316282368', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-31');
INSERT INTO `t_sys_oper_log` VALUES ('583827516024684544', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-31');
INSERT INTO `t_sys_oper_log` VALUES ('583831701122187264', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-31');
INSERT INTO `t_sys_oper_log` VALUES ('583831713088536576', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-31');
INSERT INTO `t_sys_oper_log` VALUES ('583831719505821696', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-05-31');
INSERT INTO `t_sys_oper_log` VALUES ('584559387373207552', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-02');
INSERT INTO `t_sys_oper_log` VALUES ('584559437671301120', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-02');
INSERT INTO `t_sys_oper_log` VALUES ('584560960216236032', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-02');
INSERT INTO `t_sys_oper_log` VALUES ('584592684212027392', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-02');
INSERT INTO `t_sys_oper_log` VALUES ('584592815695069184', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-02');
INSERT INTO `t_sys_oper_log` VALUES ('584595278275805184', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-02');
INSERT INTO `t_sys_oper_log` VALUES ('585265180322037760', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-04');
INSERT INTO `t_sys_oper_log` VALUES ('585265256717090816', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-04');
INSERT INTO `t_sys_oper_log` VALUES ('585265260223528960', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-04');
INSERT INTO `t_sys_oper_log` VALUES ('586130580777730048', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-06');
INSERT INTO `t_sys_oper_log` VALUES ('586133458451955712', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-06');
INSERT INTO `t_sys_oper_log` VALUES ('586133460305838080', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-06');
INSERT INTO `t_sys_oper_log` VALUES ('586317284658642944', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-06');
INSERT INTO `t_sys_oper_log` VALUES ('586318153621962752', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-06');
INSERT INTO `t_sys_oper_log` VALUES ('586352497895931904', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-07');
INSERT INTO `t_sys_oper_log` VALUES ('586352526106820608', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-07');
INSERT INTO `t_sys_oper_log` VALUES ('586352569534644224', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-07');
INSERT INTO `t_sys_oper_log` VALUES ('586379128484134912', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-07');
INSERT INTO `t_sys_oper_log` VALUES ('587069692800139264', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-09');
INSERT INTO `t_sys_oper_log` VALUES ('587081349144248320', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-09');
INSERT INTO `t_sys_oper_log` VALUES ('587083579423457280', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-09');
INSERT INTO `t_sys_oper_log` VALUES ('587086907150696448', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-09');
INSERT INTO `t_sys_oper_log` VALUES ('587107354512719872', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-09');
INSERT INTO `t_sys_oper_log` VALUES ('587134110997151744', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-09');
INSERT INTO `t_sys_oper_log` VALUES ('587386077048733696', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-09');
INSERT INTO `t_sys_oper_log` VALUES ('587386148117020672', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-09');
INSERT INTO `t_sys_oper_log` VALUES ('587390017240825856', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-09');
INSERT INTO `t_sys_oper_log` VALUES ('587390258719490048', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-09');
INSERT INTO `t_sys_oper_log` VALUES ('587390265283575808', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-09');
INSERT INTO `t_sys_oper_log` VALUES ('587390277564497920', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-09');
INSERT INTO `t_sys_oper_log` VALUES ('587390279829422080', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-09');
INSERT INTO `t_sys_oper_log` VALUES ('587390336532217856', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-09');
INSERT INTO `t_sys_oper_log` VALUES ('587390377162440704', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-09');
INSERT INTO `t_sys_oper_log` VALUES ('587391955558727680', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-09');
INSERT INTO `t_sys_oper_log` VALUES ('587395304353955840', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-09');
INSERT INTO `t_sys_oper_log` VALUES ('587398986516660224', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-09');
INSERT INTO `t_sys_oper_log` VALUES ('587399841152237568', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-09');
INSERT INTO `t_sys_oper_log` VALUES ('587451945061449728', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-10');
INSERT INTO `t_sys_oper_log` VALUES ('587453318058475520', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-10');
INSERT INTO `t_sys_oper_log` VALUES ('587453333334130688', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-10');
INSERT INTO `t_sys_oper_log` VALUES ('587453340225372160', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-10');
INSERT INTO `t_sys_oper_log` VALUES ('587456817747984384', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-10');
INSERT INTO `t_sys_oper_log` VALUES ('587457016872566784', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-10');
INSERT INTO `t_sys_oper_log` VALUES ('588163206275399680', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-12');
INSERT INTO `t_sys_oper_log` VALUES ('588189810649202688', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-12');
INSERT INTO `t_sys_oper_log` VALUES ('588189813304197120', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-12');
INSERT INTO `t_sys_oper_log` VALUES ('588191117254590464', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-12');
INSERT INTO `t_sys_oper_log` VALUES ('588191119964110848', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-12');
INSERT INTO `t_sys_oper_log` VALUES ('588368272961830912', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-12');
INSERT INTO `t_sys_oper_log` VALUES ('588558454956752896', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-13');
INSERT INTO `t_sys_oper_log` VALUES ('588560976631037952', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-13');
INSERT INTO `t_sys_oper_log` VALUES ('588560979223117824', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-13');
INSERT INTO `t_sys_oper_log` VALUES ('588561218206171136', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-13');
INSERT INTO `t_sys_oper_log` VALUES ('588561281905065984', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-13');
INSERT INTO `t_sys_oper_log` VALUES ('588561376096550912', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-13');
INSERT INTO `t_sys_oper_log` VALUES ('588561392802463744', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-13');
INSERT INTO `t_sys_oper_log` VALUES ('588561498016579584', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-13');
INSERT INTO `t_sys_oper_log` VALUES ('588561524272922624', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-13');
INSERT INTO `t_sys_oper_log` VALUES ('588561543763853312', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-13');
INSERT INTO `t_sys_oper_log` VALUES ('588561545923919872', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-13');
INSERT INTO `t_sys_oper_log` VALUES ('588561789042556928', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-13');
INSERT INTO `t_sys_oper_log` VALUES ('588880659909443584', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588890172821602304', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588891826212044800', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588891899595587584', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588891906985951232', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588892158438670336', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588892215518953472', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588892260788076544', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588912357434982400', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588912372664500224', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588912478511955968', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588912494693580800', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"100\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588912534224896000', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588912673622589440', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588912694912876544', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588912716589039616', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588912740534321152', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588912760369184768', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588912805848023040', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588912823124361216', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588912844695666688', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588912863293210624', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588912875913871360', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"25\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588912909946454016', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588912929949089792', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588912947594526720', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588912974136082432', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588912989348823040', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"25\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588913017194807296', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588913043715391488', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588913064363950080', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588913079534747648', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588913089693351936', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"25\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588913125655314432', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588913228050857984', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588913236984725504', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"25\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588913309562961920', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588913317741854720', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"25\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588913364609007616', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588913381830819840', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588913396842233856', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588913412726063104', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588913418199629824', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"25\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588914405899501568', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588914836532887552', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588914906519044096', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588914914819571712', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"2\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588914916514070528', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"3\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588914926999830528', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"25\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588914941323378688', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588914947820355584', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"2\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588914949439356928', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"3\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588914992389029888', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588915016686632960', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588915018750230528', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588915031077289984', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588915032926978048', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588915548587294720', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588915573673426944', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588915584578617344', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"2\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588915586336030720', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"3\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588915609668943872', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588915656808726528', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588915667630030848', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"25\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588915676450652160', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"25\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('588915683027320832', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"50\"],\"pageNum\":[\"1\"]}', null, '2019-06-14');
INSERT INTO `t_sys_oper_log` VALUES ('589289580792905728', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-15');
INSERT INTO `t_sys_oper_log` VALUES ('589301386785587200', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-15');
INSERT INTO `t_sys_oper_log` VALUES ('589302122130964480', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-15');
INSERT INTO `t_sys_oper_log` VALUES ('589302171518894080', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-15');
INSERT INTO `t_sys_oper_log` VALUES ('589302191144042496', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-15');
INSERT INTO `t_sys_oper_log` VALUES ('589302348338167808', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-15');
INSERT INTO `t_sys_oper_log` VALUES ('589307151189540864', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-15');
INSERT INTO `t_sys_oper_log` VALUES ('589452830469783552', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-15');
INSERT INTO `t_sys_oper_log` VALUES ('589452832269139968', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-15');
INSERT INTO `t_sys_oper_log` VALUES ('589452893937991680', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-15');
INSERT INTO `t_sys_oper_log` VALUES ('589462803706806272', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-15');
INSERT INTO `t_sys_oper_log` VALUES ('589463363046604800', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-15');
INSERT INTO `t_sys_oper_log` VALUES ('589463668970749952', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-15');
INSERT INTO `t_sys_oper_log` VALUES ('589463761685839872', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-15');
INSERT INTO `t_sys_oper_log` VALUES ('589466560976912384', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-15');
INSERT INTO `t_sys_oper_log` VALUES ('589466603448434688', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-15');
INSERT INTO `t_sys_oper_log` VALUES ('589467109558321152', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-15');
INSERT INTO `t_sys_oper_log` VALUES ('589468053427716096', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-15');
INSERT INTO `t_sys_oper_log` VALUES ('589478840779145216', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-15');
INSERT INTO `t_sys_oper_log` VALUES ('589500432410214400', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-15');
INSERT INTO `t_sys_oper_log` VALUES ('589535937298432000', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-15');
INSERT INTO `t_sys_oper_log` VALUES ('589535951743614976', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-15');
INSERT INTO `t_sys_oper_log` VALUES ('589535989890809856', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-15');
INSERT INTO `t_sys_oper_log` VALUES ('589535991862132736', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-15');
INSERT INTO `t_sys_oper_log` VALUES ('589542248547352576', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-15');
INSERT INTO `t_sys_oper_log` VALUES ('589542619055390720', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-15');
INSERT INTO `t_sys_oper_log` VALUES ('589542628106698752', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"25\"],\"pageNum\":[\"1\"]}', null, '2019-06-15');
INSERT INTO `t_sys_oper_log` VALUES ('589542639062220800', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"50\"],\"pageNum\":[\"1\"]}', null, '2019-06-15');
INSERT INTO `t_sys_oper_log` VALUES ('589542719278284800', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"50\"],\"pageNum\":[\"1\"]}', null, '2019-06-15');
INSERT INTO `t_sys_oper_log` VALUES ('589543165271212032', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-15');
INSERT INTO `t_sys_oper_log` VALUES ('589543195210153984', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-15');
INSERT INTO `t_sys_oper_log` VALUES ('589558961473060864', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-15');
INSERT INTO `t_sys_oper_log` VALUES ('589558975368790016', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-15');
INSERT INTO `t_sys_oper_log` VALUES ('591817467890761728', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('591817473985085440', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('591817476308729856', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('591817487385886720', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('591817631133073408', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('591817657724960768', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('591817691019345920', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('591817693523345408', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('591817695524028416', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('591817760359579648', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('591817762012135424', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('591817868803309568', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('591818522221346816', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('591825607109640192', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('591838096518021120', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('591838098271240192', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('591838140415606784', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('591838176172048384', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('591838254773305344', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('591838282183081984', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('591838289950932992', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('591838331709423616', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('591840366588592128', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('591840676103061504', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('591840677977915392', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('591840936040857600', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('591840957448585216', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('592024718278656000', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('592024729158680576', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('592024837518524416', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('592046987587616768', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('592047004561965056', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('592047010626928640', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('592047017451061248', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('592047030356934656', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('592047041241153536', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('592047044005199872', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('592047087860842496', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('592047090738135040', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('592060224173506560', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('592060230280413184', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('592060233057042432', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('592060749967261696', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('592060769906982912', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('592061035033133056', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('592066277195907072', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('592066986242998272', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('592072195610509312', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');

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
INSERT INTO `t_sys_permission_role` VALUES ('0d419824-3182-4455-a003-e31bb715a100', '488305788310257664', '14');
INSERT INTO `t_sys_permission_role` VALUES ('11a80f0d-0b41-4a0e-bb10-647da51f685a', '488243256161730560', '4');
INSERT INTO `t_sys_permission_role` VALUES ('141e6e84-f168-4c55-8708-38603e205960', '488243256161730560', '586003694080753664');
INSERT INTO `t_sys_permission_role` VALUES ('14c710cc-bbc4-440f-9bfb-dfaba965f727', '488305788310257664', '575853607149109248');
INSERT INTO `t_sys_permission_role` VALUES ('165ccd1e-c9c1-401b-9d02-08b4ffce296e', '488243256161730560', '13');
INSERT INTO `t_sys_permission_role` VALUES ('18d78238-7c4f-4b52-9f16-e76b2ea24aeb', '488289006124007424', '333');
INSERT INTO `t_sys_permission_role` VALUES ('1e4a34fa-183d-405b-b44c-56b479664192', '488305788310257664', '5766007011074375683');
INSERT INTO `t_sys_permission_role` VALUES ('1e9da378-1b26-45bc-88e5-5e1a2bc3e51f', '488305788310257664', '5766007011074375682');
INSERT INTO `t_sys_permission_role` VALUES ('204598c7-9708-4536-b28e-92a4e5da9b8d', '488305788310257664', '5766007011074375684');
INSERT INTO `t_sys_permission_role` VALUES ('20fb8ae7-b95a-4474-9e37-62192d9ae619', '488305788310257664', '9');
INSERT INTO `t_sys_permission_role` VALUES ('287460a3-f7dc-4f67-a370-54df839b46bb', '488289006124007424', '15');
INSERT INTO `t_sys_permission_role` VALUES ('2b0946a6-ffe7-492d-9b4f-4005d1dfb70d', '488289006124007424', '111');
INSERT INTO `t_sys_permission_role` VALUES ('2e934d17-627e-47be-bc0f-9c1e8e93fc16', '488243256161730560', '8');
INSERT INTO `t_sys_permission_role` VALUES ('30265174-b00c-47be-84d0-e75e7a7c9e1c', '488243256161730560', '19');
INSERT INTO `t_sys_permission_role` VALUES ('30704f4e-b6cf-4010-86fc-0bf356c27fa8', '488289006124007424', '10');
INSERT INTO `t_sys_permission_role` VALUES ('3070f2cc-b28c-469f-b2f6-38bfb390dfea', '488243256161730560', '16');
INSERT INTO `t_sys_permission_role` VALUES ('31633e59-cb83-436f-89ce-9626dd3531ac', '488305788310257664', '575852089792528384');
INSERT INTO `t_sys_permission_role` VALUES ('378edca7-b8cd-4741-af44-55fe2b83dd17', '488289006124007424', '1');
INSERT INTO `t_sys_permission_role` VALUES ('449ef61c-086f-47cd-b542-41b26839ea03', '488243256161730560', '10');
INSERT INTO `t_sys_permission_role` VALUES ('4593aaae-42e7-4877-ac9a-939e80e37d05', '488289006124007424', '4');
INSERT INTO `t_sys_permission_role` VALUES ('45d43d44-cf4c-45e0-82a2-57e7c1a42722', '488243256161730560', '20');
INSERT INTO `t_sys_permission_role` VALUES ('4afa8efc-f4dd-45d8-a7e3-ca06fd18b829', '488305788310257664', '496805860547231744');
INSERT INTO `t_sys_permission_role` VALUES ('4dc4c717-228b-45c9-b022-c9e4205f4708', '488305788310257664', '18');
INSERT INTO `t_sys_permission_role` VALUES ('50059c69-164d-45ec-b6e6-4a5401777421', '488305788310257664', '5766007011074375681');
INSERT INTO `t_sys_permission_role` VALUES ('536ff514-ac3c-48b2-a4d8-fb4bbce5e470', '488305788310257664', '5');
INSERT INTO `t_sys_permission_role` VALUES ('59b7e3df-72dc-4b7a-ac46-c57ccbd7a359', '488243256161730560', '14');
INSERT INTO `t_sys_permission_role` VALUES ('59d3e217-3fe5-47c1-8c08-efc6131ee3b1', '488243256161730560', '21');
INSERT INTO `t_sys_permission_role` VALUES ('615eb5fa-8b26-44e2-a8aa-baa7df4989b9', '488305788310257664', '12');
INSERT INTO `t_sys_permission_role` VALUES ('71dcae3a-f18e-4997-b966-518575497d4d', '488305788310257664', '10');
INSERT INTO `t_sys_permission_role` VALUES ('72278064-2a41-46cb-829a-1d18e6990998', '488305788310257664', '19');
INSERT INTO `t_sys_permission_role` VALUES ('7a5f9d37-e491-4f36-9835-00a662575bb5', '488243256161730560', '575851658483859456');
INSERT INTO `t_sys_permission_role` VALUES ('815c7b31-7d82-4d43-9683-8c4168237da3', '488305788310257664', '486690002869157888');
INSERT INTO `t_sys_permission_role` VALUES ('83a1171b-ba52-433e-82e6-07526658fe7e', '488305788310257664', '576600701107437568');
INSERT INTO `t_sys_permission_role` VALUES ('840933c6-b0ab-4629-845d-b19d73a0d75b', '488305788310257664', '21');
INSERT INTO `t_sys_permission_role` VALUES ('85845cb3-9a7a-41a2-986d-02ac10420492', '488305788310257664', '1');
INSERT INTO `t_sys_permission_role` VALUES ('8746b5f2-6858-48a8-bae4-568f0ded8fd5', '488305788310257664', '23');
INSERT INTO `t_sys_permission_role` VALUES ('8967fff4-8019-4aba-98cc-50d374c4bfd6', '488305788310257664', '11');
INSERT INTO `t_sys_permission_role` VALUES ('8c9c2a91-26e3-4400-9d7f-4ed1e009a1f8', '488305788310257664', '7');
INSERT INTO `t_sys_permission_role` VALUES ('97c876d9-5e21-422d-b7f9-71ebdac7e971', '488243256161730560', '23');
INSERT INTO `t_sys_permission_role` VALUES ('9bf63db5-0a50-4b4e-9487-cb71e39d5341', '488243256161730560', '18');
INSERT INTO `t_sys_permission_role` VALUES ('9c2b1e1f-bdc8-4862-9d87-3c0297cff282', '488243256161730560', '496782496638173184');
INSERT INTO `t_sys_permission_role` VALUES ('a1193ea2-6c42-498b-9c58-bf184b011342', '488243256161730560', '11');
INSERT INTO `t_sys_permission_role` VALUES ('a14593fa-bc98-4555-a5de-c09780940ca8', '488243256161730560', '1');
INSERT INTO `t_sys_permission_role` VALUES ('a3fab1c0-052e-4e83-a69f-2867a788b301', '488243256161730560', '9');
INSERT INTO `t_sys_permission_role` VALUES ('a4622fec-dffc-4c96-8a56-3c8d27584d9a', '488305788310257664', '20');
INSERT INTO `t_sys_permission_role` VALUES ('a89ccffd-1dec-4052-b49e-a07341e13b90', '488305788310257664', '496782496638173184');
INSERT INTO `t_sys_permission_role` VALUES ('a8a6b92f-f263-484f-8a3c-a3a801376a17', '488305788310257664', '6');
INSERT INTO `t_sys_permission_role` VALUES ('a931f970-2a69-42d9-a426-0a97c4977147', '488289006124007424', '9');
INSERT INTO `t_sys_permission_role` VALUES ('adcb47ea-08a8-40b3-80b9-da7d98587c4d', '488243256161730560', '7');
INSERT INTO `t_sys_permission_role` VALUES ('b141a6c5-1bc5-4e54-b80b-f56f47515400', '488305788310257664', '8');
INSERT INTO `t_sys_permission_role` VALUES ('b1df248a-8ae3-4a2d-9467-d538ba1b09f8', '488243256161730560', '575852089792528384');
INSERT INTO `t_sys_permission_role` VALUES ('bd9c08f1-2449-4a46-a531-94546aff0f9a', '488243256161730560', '5');
INSERT INTO `t_sys_permission_role` VALUES ('beb12cb9-198f-48f0-bcd0-e796834286e6', '488243256161730560', '486690002869157888');
INSERT INTO `t_sys_permission_role` VALUES ('c5b5e141-5bc0-4011-8342-af5021bb2572', '488243256161730560', '583063272123531264');
INSERT INTO `t_sys_permission_role` VALUES ('c5c998d0-aa42-4106-af58-2f50d0afe03c', '488289006124007424', '5');
INSERT INTO `t_sys_permission_role` VALUES ('cdb8fd34-23f7-4ac9-81cf-b24216c922b4', '488243256161730560', '587453033487532032');
INSERT INTO `t_sys_permission_role` VALUES ('ce6877e4-c467-4077-a8c9-7fccdd976122', '488305788310257664', '4');
INSERT INTO `t_sys_permission_role` VALUES ('d25610f3-a832-41b2-b75c-67498fbb9624', '488243256161730560', '575853607149109248');
INSERT INTO `t_sys_permission_role` VALUES ('d4d174e2-5e83-49b0-b658-c56b76a3ab05', '488305788310257664', '22');
INSERT INTO `t_sys_permission_role` VALUES ('d7d3db49-7aee-470b-a07a-f1ebeca8e8e0', '488243256161730560', '17');
INSERT INTO `t_sys_permission_role` VALUES ('d8c9517d-aaaa-43c9-b108-b367c692c094', '488305788310257664', '496803374054768640');
INSERT INTO `t_sys_permission_role` VALUES ('dad5b2ab-9afa-478d-a7b3-28b80dc42552', '488243256161730560', '22');
INSERT INTO `t_sys_permission_role` VALUES ('de70860c-c173-40bc-89c3-a9c18e64d082', '488243256161730560', '6');
INSERT INTO `t_sys_permission_role` VALUES ('ded3451c-9dce-4212-afed-d369380411e2', '488305788310257664', '17');
INSERT INTO `t_sys_permission_role` VALUES ('e6d33929-1c05-4c54-b594-2ba0ab7312fb', '488289006124007424', '14');
INSERT INTO `t_sys_permission_role` VALUES ('e991f3e0-7310-4dfc-83d8-f084a08ec5aa', '488243256161730560', '12');
INSERT INTO `t_sys_permission_role` VALUES ('efe66a6a-d29c-4447-a28a-539a7f0a55af', '488243256161730560', '15');
INSERT INTO `t_sys_permission_role` VALUES ('f31f64ad-0752-4bfd-8732-8c250722a44a', '488305788310257664', '13');
INSERT INTO `t_sys_permission_role` VALUES ('f42af1bf-a892-40f6-98cb-d21b746986bb', '488305788310257664', '15');
INSERT INTO `t_sys_permission_role` VALUES ('f60a0941-a1ea-4ae6-b5a1-f0a22e36a2a1', '488243256161730560', '581541547099553792');
INSERT INTO `t_sys_permission_role` VALUES ('f9eaa18f-7e35-40e0-84c7-235ce6873a14', '488305788310257664', '575851658483859456');
INSERT INTO `t_sys_permission_role` VALUES ('fe03a878-8400-4b5b-8829-a990b14cb3f2', '488289006124007424', '222');
INSERT INTO `t_sys_permission_role` VALUES ('ff422257-5bec-43f2-87f1-8a6294f9b3b1', '488305788310257664', '16');

-- ----------------------------
-- Table structure for t_sys_premission
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_premission`;
CREATE TABLE `t_sys_premission` (
  `id` varchar(255) NOT NULL COMMENT 'id',
  `name` varchar(255) DEFAULT NULL COMMENT '权限名称',
  `descripion` varchar(255) DEFAULT NULL COMMENT '权限描述',
  `url` varchar(255) DEFAULT NULL COMMENT '授权链接',
  `is_blank` int(255) DEFAULT '0' COMMENT '是否跳转 0 不跳转 1跳转',
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
INSERT INTO `t_sys_premission` VALUES ('1', '首页', '首页', null, '0', '0', null, '0', 'fa fa-home', '1');
INSERT INTO `t_sys_premission` VALUES ('10', '角色集合', '角色集合', '/RoleController/list', '0', '9', 'system:role:list', '2', '', null);
INSERT INTO `t_sys_premission` VALUES ('11', '角色添加', '角色添加', '/RoleController/add', '0', '9', 'system:role:add', '2', 'entypo-plus-squared', null);
INSERT INTO `t_sys_premission` VALUES ('12', '角色删除', '角色删除', '/RoleController/remove', '0', '9', 'system:role:remove', '2', 'entypo-trash', null);
INSERT INTO `t_sys_premission` VALUES ('13', '角色修改', '角色修改', '/RoleController/edit', '0', '9', 'system:role:edit', '2', 'fa fa-wrench', null);
INSERT INTO `t_sys_premission` VALUES ('14', '权限展示', '权限展示', '/PremissionController/view', '0', '592059865673760768', 'system:premission:view', '1', 'fa fa-key', '3');
INSERT INTO `t_sys_premission` VALUES ('15', '权限集合', '权限集合', '/PremissionController/list', '0', '14', 'system:premission:list', '2', '', null);
INSERT INTO `t_sys_premission` VALUES ('16', '权限添加', '权限添加', '/PremissionController/add', '0', '14', 'system:premission:add', '2', 'entypo-plus-squared', null);
INSERT INTO `t_sys_premission` VALUES ('17', '权限删除', '权限删除', '/PremissionController/remove', '0', '14', 'system:premission:remove', '2', 'entypo-trash', null);
INSERT INTO `t_sys_premission` VALUES ('18', '权限修改', '权限修改', '/PremissionController/edit', '0', '14', 'system:premission:edit', '2', 'fa fa-wrench', null);
INSERT INTO `t_sys_premission` VALUES ('19', '文件展示', '文件展示', '/FileController/view', '0', '592059865673760768', 'system:file:view', '1', 'fa fa-file-image-o', '4');
INSERT INTO `t_sys_premission` VALUES ('20', '文件添加', '文件添加', '/FileController/add', '0', '19', 'system:file:add', '2', 'entypo-plus-squared', null);
INSERT INTO `t_sys_premission` VALUES ('21', '文件删除', '文件删除', '/FileController/remove', '0', '19', 'system:file:remove', '2', 'entypo-trash', null);
INSERT INTO `t_sys_premission` VALUES ('22', '文件修改', '文件修改', '/FileController/edit', '0', '19', 'system:file:edit', '2', 'fa fa-wrench', null);
INSERT INTO `t_sys_premission` VALUES ('23', '文件集合', '文件集合', '/FileController/list', '0', '19', 'system:file:list', '2', '', null);
INSERT INTO `t_sys_premission` VALUES ('4', '用户管理', '用户展示', '/UserController/view', '0', '592059865673760768', 'system:user:view', '1', 'icon icon-user', '1');
INSERT INTO `t_sys_premission` VALUES ('486690002869157888', '用户密码修改', '用户密码修改', '/UserController/editPwd', '0', '4', 'system:user:editPwd', '2', 'entypo-tools', '3');
INSERT INTO `t_sys_premission` VALUES ('496126970468237312', '日志展示', '日志管理', '/LogController/view', '0', '496124944220946432', 'system:log:view', '1', 'fa-bitbucket', null);
INSERT INTO `t_sys_premission` VALUES ('496127240363311104', '日志删除', '日志删除', '/LogController/remove', '0', '496126970468237312', 'system:log:remove', '2', 'entypo-trash', null);
INSERT INTO `t_sys_premission` VALUES ('496127794879660032', '日志集合', '日志集合', '/LogController/list', '0', '496126970468237312', 'system:log:list', '2', null, null);
INSERT INTO `t_sys_premission` VALUES ('496782496638173184', '后台设置', '后台设置', null, '0', '1', null, '0', 'fa fa-gear', '3');
INSERT INTO `t_sys_premission` VALUES ('5', '用户集合', '用户集合', '/UserController/list', '0', '4', 'system:user:list', '2', '', null);
INSERT INTO `t_sys_premission` VALUES ('575851658483859456', '代码生成', '代码生成', '#', '0', '496782496638173184', '#', '1', 'fa fa-ra', '2');
INSERT INTO `t_sys_premission` VALUES ('575852089792528384', '代码管理', '代码生成', '/generatorController/view', '0', '575851658483859456', 'system:generator:view', '1', 'fa fa-bug', '1');
INSERT INTO `t_sys_premission` VALUES ('575853607149109248', '代码集合', '代码集合', '/generatorController/list', '0', '575852089792528384', 'system:generator:list', '2', null, null);
INSERT INTO `t_sys_premission` VALUES ('581541547099553792', 'druid监控', 'druid监控', '/druid/', '0', '592059865673760768', 'user:list', '1', 'fa fa-line-chart', '6');
INSERT INTO `t_sys_premission` VALUES ('583063272123531264', 'API文档', 'API文档', '/swagger-ui.html', '1', '575851658483859456', '--', '1', 'fa fa-font', '1');
INSERT INTO `t_sys_premission` VALUES ('586003694080753664', '表单构建', '表单构建', '/ToolController/view', '0', '592059865673760768', 'system:tool:view', '1', 'fa fa-list-alt', '5');
INSERT INTO `t_sys_premission` VALUES ('587453033487532032', '后台模板', '后台模板', '/static/admin/bootstarp/index.html', '1', '575851658483859456', 'system:htmb:view', '1', 'fa fa-telegram', '4');
INSERT INTO `t_sys_premission` VALUES ('589559475422101504', '测试目录', '测试目录', null, '0', '1', null, '0', 'fa fa-etsy', '4');
INSERT INTO `t_sys_premission` VALUES ('589559748521623552', '一级菜单', '测试菜单', '#', '0', '589559475422101504', '#', '1', 'fa fa-address-book', null);
INSERT INTO `t_sys_premission` VALUES ('589559916704825344', '二级菜单', '二级菜单', '#', '0', '589559748521623552', '#', '1', 'fa fa-address-book', '1');
INSERT INTO `t_sys_premission` VALUES ('592059865673760768', '后台管理', '后台管理', '#', '0', '496782496638173184', '#', '1', 'fa fa-home', '1');
INSERT INTO `t_sys_premission` VALUES ('592067570522128384', '测试跳转', '测试跳转', 'http://www.baidu.com', '1', '589559748521623552', '#', '1', 'fa fa-address-book', null);
INSERT INTO `t_sys_premission` VALUES ('6', '用户添加', '用户添加', '/UserController/add', '0', '4', 'system:user:add', '2', 'entypo-plus-squared', null);
INSERT INTO `t_sys_premission` VALUES ('7', '用户删除', '用户删除', '/UserController/remove', '0', '4', 'system:user:remove', '2', 'entypo-trash', null);
INSERT INTO `t_sys_premission` VALUES ('8', '用户修改', '用户修改', '/UserController/edit', '0', '4', 'system:user:edit', '2', 'fa fa-wrench', null);
INSERT INTO `t_sys_premission` VALUES ('9', '角色管理', '角色展示', '/RoleController/view', '0', '592059865673760768', 'system:role:view', '1', 'fa fa-group', '2');

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
