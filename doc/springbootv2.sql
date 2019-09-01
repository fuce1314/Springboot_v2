/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1_3306
Source Server Version : 50725
Source Host           : 127.0.0.1:3306
Source Database       : springbootv2

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-09-01 16:06:07
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
INSERT INTO `t_sys_permission_role` VALUES ('0122486f-7a84-4ae6-bbb8-efc09f184f15', '488243256161730560', '9');
INSERT INTO `t_sys_permission_role` VALUES ('02044928-ee4b-4c47-b02b-a7bda50ee65e', '488243256161730560', '16');
INSERT INTO `t_sys_permission_role` VALUES ('050544cc-ddee-4459-ab20-f079bca427cc', '488243256161730560', '617751079701970944');
INSERT INTO `t_sys_permission_role` VALUES ('07206ea9-d4ae-4462-a4cd-1ec72c364618', '488243256161730560', '581541547099553792');
INSERT INTO `t_sys_permission_role` VALUES ('16ceefc6-1474-4f6c-ae6b-5348a472feca', '488243256161730560', '15');
INSERT INTO `t_sys_permission_role` VALUES ('27813322-48b9-45a8-8949-cf3e2e1bc886', '488243256161730560', '22');
INSERT INTO `t_sys_permission_role` VALUES ('2c85c522-cd00-4aff-ba4d-23102c22d33c', '488243256161730560', '496127240363311104');
INSERT INTO `t_sys_permission_role` VALUES ('2d894b51-17f4-4a87-af12-f568bd00f878', '488243256161730560', '587453033487532032');
INSERT INTO `t_sys_permission_role` VALUES ('30034b68-4379-42b1-aa37-57662fb84068', '488243256161730560', '5946910264304599043');
INSERT INTO `t_sys_permission_role` VALUES ('4343640e-9e28-4394-add6-570bdc9040c7', '488243256161730560', '610983815791247360');
INSERT INTO `t_sys_permission_role` VALUES ('44590528-5337-49ca-9b66-b1954bafdc1f', '488243256161730560', '18');
INSERT INTO `t_sys_permission_role` VALUES ('46bc4e13-ccaf-496f-96f6-356ccf1553cb', '488243256161730560', '610635950447394816');
INSERT INTO `t_sys_permission_role` VALUES ('47deee63-23db-43bf-960c-e413f281260d', '488243256161730560', '575853607149109248');
INSERT INTO `t_sys_permission_role` VALUES ('4d2b1d57-efd3-4220-a687-f45471087a86', '488243256161730560', '610635485890478080');
INSERT INTO `t_sys_permission_role` VALUES ('5207350d-eff3-4773-97d4-882e222d9d1f', '488243256161730560', '575852089792528384');
INSERT INTO `t_sys_permission_role` VALUES ('5603e86f-b355-4da8-8854-c14dc5648729', '488243256161730560', '19');
INSERT INTO `t_sys_permission_role` VALUES ('5cc51386-5e86-4292-8e17-ad2b6dba9ab8', '488243256161730560', '11');
INSERT INTO `t_sys_permission_role` VALUES ('5dc93601-4e40-4678-9321-b1f6a86bdf2c', '488243256161730560', '496782496638173184');
INSERT INTO `t_sys_permission_role` VALUES ('6e4b42bb-8668-408f-a07f-de44aa06fd64', '488243256161730560', '20');
INSERT INTO `t_sys_permission_role` VALUES ('7f16d0d8-6d03-4c65-a821-13961578e8e2', '488243256161730560', '17');
INSERT INTO `t_sys_permission_role` VALUES ('861ae4a7-7042-488d-b0c5-8de92b6dc0a7', '488243256161730560', '14');
INSERT INTO `t_sys_permission_role` VALUES ('8d6e98c7-443a-4db9-a825-669612b75202', '488243256161730560', '7');
INSERT INTO `t_sys_permission_role` VALUES ('95b66b52-0cdd-41cb-b322-0501c0f68c8b', '488243256161730560', '486690002869157888');
INSERT INTO `t_sys_permission_role` VALUES ('9779a199-f028-44c4-8500-b292cee4491f', '488243256161730560', '589559916704825344');
INSERT INTO `t_sys_permission_role` VALUES ('984a1700-4bfa-49e7-bc68-c42488a5033a', '488243256161730560', '1');
INSERT INTO `t_sys_permission_role` VALUES ('b63e782a-2774-492d-9726-b46916ea49a6', '488243256161730560', '586003694080753664');
INSERT INTO `t_sys_permission_role` VALUES ('b842449a-27d6-42d4-98f7-72a1e5fe338f', '488243256161730560', '13');
INSERT INTO `t_sys_permission_role` VALUES ('be36e76e-a4b0-478c-a5c0-b4dbfaa99993', '488243256161730560', '4');
INSERT INTO `t_sys_permission_role` VALUES ('be9ad2cf-10eb-4071-ba6b-0280cbe9ede1', '488243256161730560', '592067570522128384');
INSERT INTO `t_sys_permission_role` VALUES ('bf0d2232-1f13-42f6-92f0-e57ae8235be0', '488243256161730560', '592059865673760768');
INSERT INTO `t_sys_permission_role` VALUES ('bf37cdc6-f129-4fef-9291-8d96ed90c9e7', '488243256161730560', '575851658483859456');
INSERT INTO `t_sys_permission_role` VALUES ('c8438411-9775-478f-8f72-41e2b3014697', '488243256161730560', '23');
INSERT INTO `t_sys_permission_role` VALUES ('c85f5a90-8319-4131-b243-eb2570acba26', '488243256161730560', '21');
INSERT INTO `t_sys_permission_role` VALUES ('d02cc4bf-847d-4aca-b262-6fab1d9a0848', '488243256161730560', '12');
INSERT INTO `t_sys_permission_role` VALUES ('d3fce54d-227e-4bc3-83c6-08f0fd14c32b', '488243256161730560', '583063272123531264');
INSERT INTO `t_sys_permission_role` VALUES ('d4f781ed-1470-408f-bc5b-ca95697d09d5', '488243256161730560', '589559475422101504');
INSERT INTO `t_sys_permission_role` VALUES ('d689249a-0dc9-4393-8bad-f72dbc5d68ea', '488243256161730560', '594691026430459904');
INSERT INTO `t_sys_permission_role` VALUES ('d9d12ba5-2110-41cd-a21e-458e28a2d395', '488243256161730560', '592167738407911424');
INSERT INTO `t_sys_permission_role` VALUES ('e5b7df0f-6ee8-4883-ac00-c344a1ebf307', '488243256161730560', '589559748521623552');
INSERT INTO `t_sys_permission_role` VALUES ('e7281286-8403-4f85-9add-189dd951cb38', '488243256161730560', '10');
INSERT INTO `t_sys_permission_role` VALUES ('e7c587c4-185c-492e-a976-0496bc4f76d4', '488243256161730560', '8');
INSERT INTO `t_sys_permission_role` VALUES ('e8fa6028-e1ef-470e-be53-e2d16033e301', '488243256161730560', '6');
INSERT INTO `t_sys_permission_role` VALUES ('f78ffa30-4852-4e1e-80b4-67c1ffa243b5', '488243256161730560', '5946910264304599044');
INSERT INTO `t_sys_permission_role` VALUES ('f81e1587-19f9-46f3-ba4c-76cfb4a3b9b8', '488243256161730560', '5946910264304599041');
INSERT INTO `t_sys_permission_role` VALUES ('f9ca8890-0da2-452d-8a64-51e83fbd14c3', '488243256161730560', '496127794879660032');
INSERT INTO `t_sys_permission_role` VALUES ('fa20605a-97b1-4080-a176-5fb5cde64f8a', '488243256161730560', '496126970468237312');
INSERT INTO `t_sys_permission_role` VALUES ('fbab7ecd-e97e-4dbe-aec4-b8f3ff791332', '488243256161730560', '5946910264304599042');
INSERT INTO `t_sys_permission_role` VALUES ('fd0fbb5a-972e-4436-95ee-80a79777f6f6', '488243256161730560', '5');

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
INSERT INTO `t_sys_premission` VALUES ('496782496638173184', '后台设置', '后台设置', '#', '0', '1', '#', '0', 'fa fa-gear', '3');
INSERT INTO `t_sys_premission` VALUES ('5', '用户集合', '用户集合', '/UserController/list', '0', '4', 'system:user:list', '2', '', null);
INSERT INTO `t_sys_premission` VALUES ('575851658483859456', '代码生成1', '代码生成1', '#', '0', '617751079701970944', '#', '1', 'fa fa-ra', '2');
INSERT INTO `t_sys_premission` VALUES ('575852089792528384', '代码管理', '代码生成', '/generatorController/view', '0', '575851658483859456', 'system:generator:view', '1', 'fa fa-bug', '1');
INSERT INTO `t_sys_premission` VALUES ('575853607149109248', '代码集合', '代码集合', '/generatorController/list', '0', '575852089792528384', 'system:generator:list', '2', null, null);
INSERT INTO `t_sys_premission` VALUES ('581541547099553792', 'druid监控', 'druid监控', '/druid/', '0', '592059865673760768', 'user:list', '1', 'fa fa-line-chart', '6');
INSERT INTO `t_sys_premission` VALUES ('583063272123531264', 'API文档', 'API文档', '/swagger-ui.html', '1', '592059865673760768', '--', '1', 'fa fa-font', '8');
INSERT INTO `t_sys_premission` VALUES ('586003694080753664', '表单构建', '表单构建', '/ToolController/view', '0', '592059865673760768', 'system:tool:view', '1', 'fa fa-list-alt', '5');
INSERT INTO `t_sys_premission` VALUES ('587453033487532032', '后台模板', '后台模板', '/static/admin/bootstarp/index.html', '1', '592059865673760768', 'system:htmb:view', '1', 'fa fa-telegram', '9');
INSERT INTO `t_sys_premission` VALUES ('589559475422101504', '测试目录', '测试目录', null, '0', '1', null, '0', 'fa fa-etsy', '5');
INSERT INTO `t_sys_premission` VALUES ('589559748521623552', '一级菜单', '测试菜单', '#', '0', '589559475422101504', '#', '1', 'fa fa-address-book', null);
INSERT INTO `t_sys_premission` VALUES ('589559916704825344', '二级菜单', '二级菜单', '#', '0', '589559748521623552', '#', '1', 'fa fa-address-book', '1');
INSERT INTO `t_sys_premission` VALUES ('592059865673760768', '后台管理', '后台管理', '#', '0', '496782496638173184', '#', '1', 'fa fa-home', '1');
INSERT INTO `t_sys_premission` VALUES ('592067570522128384', '测试跳转', '测试跳转', 'http://www.baidu.com', '1', '589559748521623552', '#', '1', 'fa fa-address-book', null);
INSERT INTO `t_sys_premission` VALUES ('592167738407911424', '系统监控', '系统监控', '/ServiceController/view', '0', '592059865673760768', 'system:service:view', '1', 'fa fa-video-camera', '7');
INSERT INTO `t_sys_premission` VALUES ('594691026430459904', '电子邮件管理', '电子邮件展示', '/EmailController/view', '0', '592059865673760768', 'system:email:view', '1', 'fa fa-envelope', '8');
INSERT INTO `t_sys_premission` VALUES ('5946910264304599041', '电子邮件集合', '电子邮件集合', '/EmailController/list', '0', '594691026430459904', 'system:email:list', '2', '', null);
INSERT INTO `t_sys_premission` VALUES ('5946910264304599042', '电子邮件添加', '电子邮件添加', '/EmailController/add', '0', '594691026430459904', 'system:email:add', '2', 'entypo-plus-squared', null);
INSERT INTO `t_sys_premission` VALUES ('5946910264304599043', '电子邮件删除', '电子邮件删除', '/EmailController/remove', '0', '594691026430459904', 'system:email:remove', '2', 'entypo-trash', null);
INSERT INTO `t_sys_premission` VALUES ('5946910264304599044', '电子邮件修改', '电子邮件修改', '/EmailController/edit', '0', '594691026430459904', 'system:email:edit', '2', 'fa fa-wrench', null);
INSERT INTO `t_sys_premission` VALUES ('6', '用户添加', '用户添加', '/UserController/add', '0', '4', 'system:user:add', '2', 'entypo-plus-squared', null);
INSERT INTO `t_sys_premission` VALUES ('610635485890478080', '代码生成2', '代码生成2', '#', '0', '617751079701970944', '#', '1', 'fa fa-blind', '3');
INSERT INTO `t_sys_premission` VALUES ('610635950447394816', '全局配置', '', '/autoCodeController/global', '0', '610635485890478080', 'system:autocode:global', '1', 'fa fa-university', null);
INSERT INTO `t_sys_premission` VALUES ('610983815791247360', '单表生成', '', '/autoCodeController/one', '0', '610635485890478080', 'system:autocode:one', '1', 'fa fa-hand-peace-o', null);
INSERT INTO `t_sys_premission` VALUES ('617751079701970944', '代码生成', '代码生成', null, '0', '1', null, '0', 'fa fa-500px', '5');
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
