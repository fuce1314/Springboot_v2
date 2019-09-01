/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1_3306
Source Server Version : 50725
Source Host           : 127.0.0.1:3306
Source Database       : springbootv2

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-09-01 17:23:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_sys_datas
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_datas`;
CREATE TABLE `t_sys_datas` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `file_path` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '文件地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='文件表存储表';

-- ----------------------------
-- Records of t_sys_datas
-- ----------------------------

-- ----------------------------
-- Table structure for t_sys_email
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_email`;
CREATE TABLE `t_sys_email` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `receivers_email` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '接收人电子邮件',
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '邮件标题',
  `content` text COLLATE utf8_bin COMMENT '内容',
  `send_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '发送人id',
  `send_user_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '发送人账号',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='电子邮件';

-- ----------------------------
-- Records of t_sys_email
-- ----------------------------
INSERT INTO `t_sys_email` VALUES ('595001021625794560', '87766867@qq.com', 'springbootv2测试邮件', 0x3C703EE6B58BE8AF95E6B58BE6B58BE6B58B3C2F703E, '1', 'admin', '2019-06-30 21:21:38');
INSERT INTO `t_sys_email` VALUES ('595005420867682304', '87766867@qq.com', '带带带', 0x3C703EE9A1B6E9A1B6E9A1B6E9A1B6E9A1B6E9A1B6E9A1B6E9A1B6E9A1B6E9A1B6E9A1B6E9A1B6E9A1B63C2F703E, '1', 'admin', '2019-06-30 21:39:07');
INSERT INTO `t_sys_email` VALUES ('595007558129811456', '87766867@qq.com', '呱呱呱呱呱呱', 0x3C703E3C696D67207372633D22687474703A2F2F6C6F63616C686F73743A383038302F7374617469632F696D616765735F75706C6F61642F62316133636534633761333064623537306236613932343861613839633235302E6A706722207469746C653D22737373732220616C743D22222F3E3C2F703E, '1', 'admin', '2019-06-30 21:47:37');
INSERT INTO `t_sys_email` VALUES ('596902572028067840', '87766867@qq.com', '鲜花视频', 0x3C703EE6B0B4E6B0B4E6B0B4E6B0B4E6B0B4E6B0B4E6B0B4E6B0B4E6B0B4E6B0B43C696D67207372633D22687474703A2F2F696D672E62616964752E636F6D2F68692F6A78322F6A5F303030322E676966222F3E3C2F703E, '1', 'admin', '2019-07-06 03:17:43');
INSERT INTO `t_sys_email` VALUES ('601948054601334784', '87766867@qq.com', '嘻嘻嘻嘻嘻嘻嘻', 0x3C683120636C6173733D2275655F7422207374796C653D22626F726465722D626F74746F6D2D636F6C6F723A236363636363633B626F726465722D626F74746F6D2D77696474683A3270783B626F726465722D626F74746F6D2D7374796C653A736F6C69643B70616464696E673A3070782034707820307078203070783B746578742D616C69676E3A63656E7465723B6D617267696E3A3070782030707820323070783B223E3C7370616E207374796C653D22636F6C6F723A236330353034643B223E5BE994AEE585A5E69687E6A1A3E6A087E9A2985D3C2F7370616E3E3C2F68313E3C70207374796C653D22746578742D616C69676E3A63656E7465723B223E3C7374726F6E6720636C6173733D2275655F74223E5BE994AEE585A5E69687E6A1A3E589AFE6A087E9A2985D3C2F7374726F6E673E3C2F703E3C68333E3C7370616E20636C6173733D2275655F7422207374796C653D22666F6E742D66616D696C793AE5B9BCE59C86223E5BE6A087E9A29820315D3C2F7370616E3E3C2F68333E3C7020636C6173733D2275655F7422207374796C653D22746578742D696E64656E743A32656D3B223EE5AFB9E4BA8EE2809CE68F92E585A5E2809DE98089E9A1B9E58DA1E4B88AE79A84E5BA93EFBC8CE59CA8E8AEBEE8AEA1E697B6E983BDE58585E58886E88083E89991E4BA86E585B6E4B8ADE79A84E9A1B9E4B88EE69687E6A1A3E695B4E4BD93E5A496E8A782E79A84E58D8FE8B083E680A7E3808220E682A8E58FAFE4BBA5E4BDBFE794A8E8BF99E4BA9BE5BA93E69DA5E68F92E585A5E8A1A8E6A0BCE38081E9A1B5E79C89E38081E9A1B5E8849AE38081E58897E8A1A8E38081E5B081E99DA2E4BBA5E58F8AE585B6E4BB96E69687E6A1A3E69E84E5BBBAE59FBAE59D97E3808220E682A8E5889BE5BBBAE79A84E59BBEE78987E38081E59BBEE8A1A8E68896E585B3E7B3BBE59BBEE4B99FE5B086E4B88EE5BD93E5898DE79A84E69687E6A1A3E5A496E8A782E58D8FE8B083E4B880E887B4E380823C2F703E3C68333E3C7370616E20636C6173733D2275655F7422207374796C653D22666F6E742D66616D696C793AE5B9BCE59C86223E5BE6A087E9A29820325D3C2F7370616E3E3C2F68333E3C7020636C6173733D2275655F7422207374796C653D22746578742D696E64656E743A32656D3B223EE59CA8E2809CE5BC80E5A78BE2809DE98089E9A1B9E58DA1E4B88AEFBC8CE9809AE8BF87E4BB8EE5BFABE9809FE6A0B7E5BC8FE5BA93E4B8ADE4B8BAE68980E98089E69687E69CACE98089E68BA9E4B880E7A78DE5A496E8A782EFBC8CE682A8E58FAFE4BBA5E696B9E4BEBFE59CB0E69BB4E694B9E69687E6A1A3E4B8ADE68980E98089E69687E69CACE79A84E6A0BCE5BC8FE3808220E682A8E8BF98E58FAFE4BBA5E4BDBFE794A8E2809CE5BC80E5A78BE2809DE98089E9A1B9E58DA1E4B88AE79A84E585B6E4BB96E68EA7E4BBB6E69DA5E79BB4E68EA5E8AEBEE7BDAEE69687E69CACE6A0BCE5BC8FE38082E5A4A7E5A49AE695B0E68EA7E4BBB6E983BDE58581E8AEB8E682A8E98089E68BA9E698AFE4BDBFE794A8E5BD93E5898DE4B8BBE9A298E5A496E8A782EFBC8CE8BF98E698AFE4BDBFE794A8E69F90E7A78DE79BB4E68EA5E68C87E5AE9AE79A84E6A0BCE5BC8FE380823C2F703E3C68333E3C7370616E20636C6173733D2275655F7422207374796C653D22666F6E742D66616D696C793AE5B9BCE59C86223E5BE6A087E9A29820335D3C2F7370616E3E3C2F68333E3C7020636C6173733D2275655F74223EE5AFB9E4BA8EE2809CE68F92E585A5E2809DE98089E9A1B9E58DA1E4B88AE79A84E5BA93EFBC8CE59CA8E8AEBEE8AEA1E697B6E983BDE58585E58886E88083E89991E4BA86E585B6E4B8ADE79A84E9A1B9E4B88EE69687E6A1A3E695B4E4BD93E5A496E8A782E79A84E58D8FE8B083E680A7E3808220E682A8E58FAFE4BBA5E4BDBFE794A8E8BF99E4BA9BE5BA93E69DA5E68F92E585A5E8A1A8E6A0BCE38081E9A1B5E79C89E38081E9A1B5E8849AE38081E58897E8A1A8E38081E5B081E99DA2E4BBA5E58F8AE585B6E4BB96E69687E6A1A3E69E84E5BBBAE59FBAE59D97E3808220E682A8E5889BE5BBBAE79A84E59BBEE78987E38081E59BBEE8A1A8E68896E585B3E7B3BBE59BBEE4B99FE5B086E4B88EE5BD93E5898DE79A84E69687E6A1A3E5A496E8A782E58D8FE8B083E4B880E887B4E380823C2F703E3C7020636C6173733D2275655F74223E3C62722F3E3C2F703E3C703E3C62722F3E3C2F703E, '1', 'admin', '2019-07-20 01:26:40');

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

-- ----------------------------
-- Table structure for t_sys_file_data
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_file_data`;
CREATE TABLE `t_sys_file_data` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `data_id` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '数据id',
  `file_id` varchar(255) COLLATE utf8_bin DEFAULT '文件id' COMMENT '文件id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='文件数据外键绑定表';

-- ----------------------------
-- Records of t_sys_file_data
-- ----------------------------

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
INSERT INTO `t_sys_oper_log` VALUES ('605544888372559872', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-07-29');
INSERT INTO `t_sys_oper_log` VALUES ('605548429812170752', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-07-29');
INSERT INTO `t_sys_oper_log` VALUES ('605564257169309696', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-07-30');
INSERT INTO `t_sys_oper_log` VALUES ('607885077136801792', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-08-05');
INSERT INTO `t_sys_oper_log` VALUES ('607885478481362944', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-08-05');
INSERT INTO `t_sys_oper_log` VALUES ('607894176637386752', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-08-05');
INSERT INTO `t_sys_oper_log` VALUES ('607894181171429376', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-08-05');
INSERT INTO `t_sys_oper_log` VALUES ('608473029248286720', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-08-07');
INSERT INTO `t_sys_oper_log` VALUES ('608473792510951424', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-08-07');
INSERT INTO `t_sys_oper_log` VALUES ('608817243362426880', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-08-08');
INSERT INTO `t_sys_oper_log` VALUES ('608817349293768704', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-08-08');
INSERT INTO `t_sys_oper_log` VALUES ('612107873593327616', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-08-17');
INSERT INTO `t_sys_oper_log` VALUES ('612107938412101632', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-08-17');
INSERT INTO `t_sys_oper_log` VALUES ('612107953113137152', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-08-17');
INSERT INTO `t_sys_oper_log` VALUES ('613148152622481408', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-08-19');
INSERT INTO `t_sys_oper_log` VALUES ('613148164186177536', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-08-19');
INSERT INTO `t_sys_oper_log` VALUES ('613148169231925248', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-08-19');
INSERT INTO `t_sys_oper_log` VALUES ('613148183987486720', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-08-19');
INSERT INTO `t_sys_oper_log` VALUES ('613151957791539200', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-08-19');
INSERT INTO `t_sys_oper_log` VALUES ('613152185387057152', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-08-19');
INSERT INTO `t_sys_oper_log` VALUES ('613152505391480832', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-08-19');
INSERT INTO `t_sys_oper_log` VALUES ('616065367919296512', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-08-28');
INSERT INTO `t_sys_oper_log` VALUES ('616066059677466624', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-08-28');
INSERT INTO `t_sys_oper_log` VALUES ('616066103071735808', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-08-28');
INSERT INTO `t_sys_oper_log` VALUES ('616074313530867712', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-08-28');
INSERT INTO `t_sys_oper_log` VALUES ('617380223402377216', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-08-31');
INSERT INTO `t_sys_oper_log` VALUES ('617465932767297536', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-08-31');
INSERT INTO `t_sys_oper_log` VALUES ('617520987595866112', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-09-01');
INSERT INTO `t_sys_oper_log` VALUES ('617526441680044032', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-09-01');
INSERT INTO `t_sys_oper_log` VALUES ('617526474060070912', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-09-01');
INSERT INTO `t_sys_oper_log` VALUES ('617526560424984576', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-09-01');
INSERT INTO `t_sys_oper_log` VALUES ('617527069873537024', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-09-01');
INSERT INTO `t_sys_oper_log` VALUES ('617527149733085184', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-09-01');
INSERT INTO `t_sys_oper_log` VALUES ('617527543972495360', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-09-01');
INSERT INTO `t_sys_oper_log` VALUES ('617527606354378752', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-09-01');
INSERT INTO `t_sys_oper_log` VALUES ('617538059327504384', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-09-01');
INSERT INTO `t_sys_oper_log` VALUES ('617538116529422336', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-09-01');
INSERT INTO `t_sys_oper_log` VALUES ('617538136708218880', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-09-01');
INSERT INTO `t_sys_oper_log` VALUES ('617538192802840576', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-09-01');
INSERT INTO `t_sys_oper_log` VALUES ('617539132268216320', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-09-01');
INSERT INTO `t_sys_oper_log` VALUES ('617552645611061248', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-09-01');
INSERT INTO `t_sys_oper_log` VALUES ('617552658386911232', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-09-01');
INSERT INTO `t_sys_oper_log` VALUES ('617557394565627904', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-09-01');
INSERT INTO `t_sys_oper_log` VALUES ('617558317081821184', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-09-01');
INSERT INTO `t_sys_oper_log` VALUES ('617561862065618944', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-09-01');
INSERT INTO `t_sys_oper_log` VALUES ('617563283729154048', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-09-01');
INSERT INTO `t_sys_oper_log` VALUES ('617563332148199424', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-09-01');
INSERT INTO `t_sys_oper_log` VALUES ('617563605046394880', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-09-01');
INSERT INTO `t_sys_oper_log` VALUES ('617563826350456832', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-09-01');
INSERT INTO `t_sys_oper_log` VALUES ('617748268612321280', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-09-01');
INSERT INTO `t_sys_oper_log` VALUES ('617749083620114432', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-09-01');
INSERT INTO `t_sys_oper_log` VALUES ('617749610248536064', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-09-01');
INSERT INTO `t_sys_oper_log` VALUES ('617750211451682816', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-09-01');
INSERT INTO `t_sys_oper_log` VALUES ('617756725910437888', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-09-01');
INSERT INTO `t_sys_oper_log` VALUES ('617763210195369984', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-09-01');
INSERT INTO `t_sys_oper_log` VALUES ('617767171203792896', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-09-01');

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
INSERT INTO `t_sys_permission_role` VALUES ('00bfb18d-5168-4845-a26d-e3414064ba89', '488243256161730560', '19');
INSERT INTO `t_sys_permission_role` VALUES ('02fa207f-7cf4-48cd-a1bf-c8cd2f2b423b', '488243256161730560', '4');
INSERT INTO `t_sys_permission_role` VALUES ('0414af5c-3208-4cc4-a391-d73b625500eb', '488243256161730560', '21');
INSERT INTO `t_sys_permission_role` VALUES ('042823cc-c9d6-47a4-a0a8-d9962dcd806a', '488243256161730560', '589559916704825344');
INSERT INTO `t_sys_permission_role` VALUES ('04fc84ee-06a0-4721-b7f6-7d87b63d9e2f', '488243256161730560', '575851658483859456');
INSERT INTO `t_sys_permission_role` VALUES ('074ad619-7167-4035-93f0-ee3fef49541d', '488243256161730560', '5946910264304599041');
INSERT INTO `t_sys_permission_role` VALUES ('10c05a37-b52e-4a9b-8ff9-6c01cb71160c', '488243256161730560', '15');
INSERT INTO `t_sys_permission_role` VALUES ('1a1390cf-21a8-4791-b857-288be18fa784', '488243256161730560', '592059865673760768');
INSERT INTO `t_sys_permission_role` VALUES ('1a9fca85-c6ca-4bf5-8744-e43a7b24621d', '488243256161730560', '7');
INSERT INTO `t_sys_permission_role` VALUES ('1d1f91d8-0bfc-4617-bd27-c4511fcdf9ed', '488243256161730560', '617751079701970944');
INSERT INTO `t_sys_permission_role` VALUES ('1d98641e-1ad4-4c4e-bead-509a10942043', '488243256161730560', '594691026430459904');
INSERT INTO `t_sys_permission_role` VALUES ('1fca87bb-381e-409a-aa29-5c1ce1390699', '488243256161730560', '589559748521623552');
INSERT INTO `t_sys_permission_role` VALUES ('203f8998-6c8a-49d4-85a7-1ad14bf7de3b', '488243256161730560', '20');
INSERT INTO `t_sys_permission_role` VALUES ('2868d941-adbd-4b69-b42a-49bd7a103690', '488243256161730560', '496127794879660032');
INSERT INTO `t_sys_permission_role` VALUES ('292dba45-efd9-4de0-8bdb-e104a789492b', '488243256161730560', '586003694080753664');
INSERT INTO `t_sys_permission_role` VALUES ('2a6c4c40-0e75-453d-95c9-8e578a48ed29', '488243256161730560', '8');
INSERT INTO `t_sys_permission_role` VALUES ('37a2cda8-fb43-400a-b8fd-6fa59f58ad66', '488243256161730560', '23');
INSERT INTO `t_sys_permission_role` VALUES ('39ab491a-5c8a-4a24-af62-e7cfd4e91581', '488243256161730560', '583063272123531264');
INSERT INTO `t_sys_permission_role` VALUES ('419ace2c-91e9-48c1-8063-777b67d5d933', '488243256161730560', '581541547099553792');
INSERT INTO `t_sys_permission_role` VALUES ('42e777ae-62c5-44c3-b055-27ba499cb4ae', '488243256161730560', '496127240363311104');
INSERT INTO `t_sys_permission_role` VALUES ('456decee-7f50-42c2-8fd8-3d0968fc1f9d', '488243256161730560', '617766548966211584');
INSERT INTO `t_sys_permission_role` VALUES ('462a4841-e955-487a-9ac6-2fba1d20f30a', '488243256161730560', '496782496638173184');
INSERT INTO `t_sys_permission_role` VALUES ('52382f20-03b3-42a5-8510-86c11211ea66', '488243256161730560', '16');
INSERT INTO `t_sys_permission_role` VALUES ('5432df90-bbe5-4de5-af29-465c7d959466', '488243256161730560', '610983815791247360');
INSERT INTO `t_sys_permission_role` VALUES ('548379c7-2924-4a8d-99c3-dc9c21428993', '488243256161730560', '5');
INSERT INTO `t_sys_permission_role` VALUES ('5949f3ae-dac5-4ea3-80cc-60685170bfe1', '488243256161730560', '587453033487532032');
INSERT INTO `t_sys_permission_role` VALUES ('5b36041d-9f13-4504-9edc-99942a7c392f', '488243256161730560', '9');
INSERT INTO `t_sys_permission_role` VALUES ('5de61588-362d-41f5-b3e5-e4e8735b4842', '488243256161730560', '10');
INSERT INTO `t_sys_permission_role` VALUES ('5ff62b2b-dd3d-4981-a7b9-3595866d26c2', '488243256161730560', '11');
INSERT INTO `t_sys_permission_role` VALUES ('5ffb4591-5b8c-4a62-8089-ce1623316e7d', '488243256161730560', '6');
INSERT INTO `t_sys_permission_role` VALUES ('6ac27122-d7b1-40ef-bb63-9dd08fff1bfe', '488243256161730560', '496126970468237312');
INSERT INTO `t_sys_permission_role` VALUES ('6d91f68f-194b-4802-ad34-f02bd3510e77', '488243256161730560', '12');
INSERT INTO `t_sys_permission_role` VALUES ('6ebdb765-c17a-482e-b718-e616bd867fb9', '488243256161730560', '610635950447394816');
INSERT INTO `t_sys_permission_role` VALUES ('7010da69-a339-4eae-800c-03781a714930', '488243256161730560', '592167738407911424');
INSERT INTO `t_sys_permission_role` VALUES ('8a19459d-61ad-4073-a842-75538ed65ea3', '488243256161730560', '14');
INSERT INTO `t_sys_permission_role` VALUES ('99b597e5-dfbf-43d9-aa98-59b6546526ac', '488243256161730560', '5946910264304599042');
INSERT INTO `t_sys_permission_role` VALUES ('a265b5cd-0241-48a0-bba5-21a8ebbc6c57', '488243256161730560', '18');
INSERT INTO `t_sys_permission_role` VALUES ('a8ed0e7f-ed78-4b1e-ab20-ca1fc19380a6', '488243256161730560', '17');
INSERT INTO `t_sys_permission_role` VALUES ('ae4017f5-bf73-4ba5-9679-429597879cb5', '488243256161730560', '592067570522128384');
INSERT INTO `t_sys_permission_role` VALUES ('af7921d6-288f-4222-b50b-dccb277a95a9', '488243256161730560', '610635485890478080');
INSERT INTO `t_sys_permission_role` VALUES ('b39378e9-ee8d-4246-8d1f-b828b769ac4d', '488243256161730560', '589559475422101504');
INSERT INTO `t_sys_permission_role` VALUES ('c9aa31f4-cb36-4492-aa4d-e09d64c70aef', '488243256161730560', '22');
INSERT INTO `t_sys_permission_role` VALUES ('caee5587-1058-4dd4-8d25-c5251771be33', '488243256161730560', '575853607149109248');
INSERT INTO `t_sys_permission_role` VALUES ('d7298fcd-3550-4962-a49d-0d0c187a78cf', '488243256161730560', '13');
INSERT INTO `t_sys_permission_role` VALUES ('dd03da5f-f307-431f-b644-ad24035aa3df', '488243256161730560', '575852089792528384');
INSERT INTO `t_sys_permission_role` VALUES ('eece9de3-8005-45bf-b61c-864bef7d84a7', '488243256161730560', '5946910264304599043');
INSERT INTO `t_sys_permission_role` VALUES ('f3083c72-9986-407d-bc3e-b8e7a936a854', '488243256161730560', '5946910264304599044');
INSERT INTO `t_sys_permission_role` VALUES ('f9b35223-a7bc-4b68-b631-746061a99f0a', '488243256161730560', '1');
INSERT INTO `t_sys_permission_role` VALUES ('fef75865-0aae-49c9-863f-fc12d61ae409', '488243256161730560', '486690002869157888');

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
INSERT INTO `t_sys_premission` VALUES ('1', '首页', '首页', '#', '0', '0', '#', '0', 'fa fa-home', '1');
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
INSERT INTO `t_sys_premission` VALUES ('496126970468237312', '日志展示', '日志管理', '/LogController/view', '0', '592059865673760768', 'system:log:view', '1', 'fa fa-info', '9');
INSERT INTO `t_sys_premission` VALUES ('496127240363311104', '日志删除', '日志删除', '/LogController/remove', '0', '496126970468237312', 'system:log:remove', '2', 'entypo-trash', null);
INSERT INTO `t_sys_premission` VALUES ('496127794879660032', '日志集合', '日志集合', '/LogController/list', '0', '496126970468237312', 'system:log:list', '2', null, null);
INSERT INTO `t_sys_premission` VALUES ('496782496638173184', '系统设置', '后台设置', null, '0', '1', null, '0', 'fa fa-gear', '3');
INSERT INTO `t_sys_premission` VALUES ('5', '用户集合', '用户集合', '/UserController/list', '0', '4', 'system:user:list', '2', '', null);
INSERT INTO `t_sys_premission` VALUES ('575851658483859456', '代码生成旧', '代码生成1', '#', '0', '617751079701970944', '#', '1', 'fa fa-ra', '2');
INSERT INTO `t_sys_premission` VALUES ('575852089792528384', '代码管理', '代码生成', '/generatorController/view', '0', '575851658483859456', 'system:generator:view', '1', 'fa fa-bug', '1');
INSERT INTO `t_sys_premission` VALUES ('575853607149109248', '代码集合', '代码集合', '/generatorController/list', '0', '575852089792528384', 'system:generator:list', '2', null, null);
INSERT INTO `t_sys_premission` VALUES ('581541547099553792', 'druid监控', 'druid监控', '/druid/', '0', '617766548966211584', 'user:list', '1', 'fa fa-line-chart', '6');
INSERT INTO `t_sys_premission` VALUES ('583063272123531264', 'API文档', 'API文档', '/swagger-ui.html', '1', '617766548966211584', '--', '1', 'fa fa-font', '8');
INSERT INTO `t_sys_premission` VALUES ('586003694080753664', '表单构建', '表单构建', '/ToolController/view', '0', '617766548966211584', 'system:tool:view', '1', 'fa fa-list-alt', '5');
INSERT INTO `t_sys_premission` VALUES ('587453033487532032', '后台模板', '后台模板', '/static/admin/bootstarp/index.html', '1', '617766548966211584', 'system:htmb:view', '1', 'fa fa-telegram', '9');
INSERT INTO `t_sys_premission` VALUES ('589559475422101504', '测试目录', '测试目录', null, '0', '1', null, '0', 'fa fa-etsy', '5');
INSERT INTO `t_sys_premission` VALUES ('589559748521623552', '一级菜单', '测试菜单', '#', '0', '589559475422101504', '#', '1', 'fa fa-address-book', null);
INSERT INTO `t_sys_premission` VALUES ('589559916704825344', '二级菜单', '二级菜单', '#', '0', '589559748521623552', '#', '1', 'fa fa-address-book', '1');
INSERT INTO `t_sys_premission` VALUES ('592059865673760768', '系统管理', '后台管理', '#', '0', '496782496638173184', '#', '1', 'fa fa-home', '1');
INSERT INTO `t_sys_premission` VALUES ('592067570522128384', '测试跳转', '测试跳转', 'http://www.baidu.com', '1', '589559748521623552', '#', '1', 'fa fa-address-book', null);
INSERT INTO `t_sys_premission` VALUES ('592167738407911424', '系统监控', '系统监控', '/ServiceController/view', '0', '617766548966211584', 'system:service:view', '1', 'fa fa-video-camera', '7');
INSERT INTO `t_sys_premission` VALUES ('594691026430459904', '电子邮件管理', '电子邮件展示', '/EmailController/view', '0', '592059865673760768', 'system:email:view', '1', 'fa fa-envelope', '8');
INSERT INTO `t_sys_premission` VALUES ('5946910264304599041', '电子邮件集合', '电子邮件集合', '/EmailController/list', '0', '594691026430459904', 'system:email:list', '2', '', null);
INSERT INTO `t_sys_premission` VALUES ('5946910264304599042', '电子邮件添加', '电子邮件添加', '/EmailController/add', '0', '594691026430459904', 'system:email:add', '2', 'entypo-plus-squared', null);
INSERT INTO `t_sys_premission` VALUES ('5946910264304599043', '电子邮件删除', '电子邮件删除', '/EmailController/remove', '0', '594691026430459904', 'system:email:remove', '2', 'entypo-trash', null);
INSERT INTO `t_sys_premission` VALUES ('5946910264304599044', '电子邮件修改', '电子邮件修改', '/EmailController/edit', '0', '594691026430459904', 'system:email:edit', '2', 'fa fa-wrench', null);
INSERT INTO `t_sys_premission` VALUES ('6', '用户添加', '用户添加', '/UserController/add', '0', '4', 'system:user:add', '2', 'entypo-plus-squared', null);
INSERT INTO `t_sys_premission` VALUES ('610635485890478080', '代码生成新', '代码生成2', '#', '0', '617751079701970944', '#', '1', 'fa fa-blind', '1');
INSERT INTO `t_sys_premission` VALUES ('610635950447394816', '全局配置', '', '/autoCodeController/global', '0', '610635485890478080', 'system:autocode:global', '1', 'fa fa-university', null);
INSERT INTO `t_sys_premission` VALUES ('610983815791247360', '单表生成', '', '/autoCodeController/one', '0', '610635485890478080', 'system:autocode:one', '1', 'fa fa-hand-peace-o', null);
INSERT INTO `t_sys_premission` VALUES ('617751079701970944', '代码生成', '代码生成', null, '0', '1', null, '0', 'fa fa-500px', '4');
INSERT INTO `t_sys_premission` VALUES ('617766548966211584', '系统工具', '系统工具', '#', '0', '496782496638173184', '#', '1', 'fa fa-th-large', '2');
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
  `sys_user_id` varchar(255) DEFAULT NULL COMMENT '用户id',
  `sys_role_id` varchar(255) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色中间表';

-- ----------------------------
-- Records of t_sys_role_user
-- ----------------------------
INSERT INTO `t_sys_role_user` VALUES ('594342089710370816', '1', '488243256161730560');
INSERT INTO `t_sys_role_user` VALUES ('602322111859523584', '488294747442511872', '488289006124007424');
INSERT INTO `t_sys_role_user` VALUES ('612107905532952576', '612107905532952576', '488289006124007424');
INSERT INTO `t_sys_role_user` VALUES ('612107905537146880', '612107905532952576', '488305788310257664');

-- ----------------------------
-- Table structure for t_sys_user
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user`;
CREATE TABLE `t_sys_user` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `username` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户账号',
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户密码',
  `nickname` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '昵称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户表';

-- ----------------------------
-- Records of t_sys_user
-- ----------------------------
INSERT INTO `t_sys_user` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '管理员');
INSERT INTO `t_sys_user` VALUES ('488294747442511872', 'fuce', 'e10adc3949ba59abbe56e057f20f883e', '米西');

-- ----------------------------
-- Table structure for t_test
-- ----------------------------
DROP TABLE IF EXISTS `t_test`;
CREATE TABLE `t_test` (
  `id` varchar(255) NOT NULL COMMENT '主键',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `age` int(11) DEFAULT NULL COMMENT '性别',
  `cratetime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='测试表';

-- ----------------------------
-- Records of t_test
-- ----------------------------
