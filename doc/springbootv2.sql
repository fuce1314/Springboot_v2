/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1_3306
Source Server Version : 50725
Source Host           : 127.0.0.1:3306
Source Database       : springbootv2

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-09-04 00:46:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_sys_blog
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_blog`;
CREATE TABLE `t_sys_blog` (
  `id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='博客表';

-- ----------------------------
-- Records of t_sys_blog
-- ----------------------------

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
-- Table structure for t_sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_dict_data`;
CREATE TABLE `t_sys_dict_data` (
  `dict_code` varchar(20) NOT NULL COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='字典数据表';

-- ----------------------------
-- Records of t_sys_dict_data
-- ----------------------------
INSERT INTO `t_sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别男');
INSERT INTO `t_sys_dict_data` VALUES ('10', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认是');
INSERT INTO `t_sys_dict_data` VALUES ('11', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认否');
INSERT INTO `t_sys_dict_data` VALUES ('12', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知');
INSERT INTO `t_sys_dict_data` VALUES ('13', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '公告');
INSERT INTO `t_sys_dict_data` VALUES ('14', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `t_sys_dict_data` VALUES ('15', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '关闭状态');
INSERT INTO `t_sys_dict_data` VALUES ('16', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO `t_sys_dict_data` VALUES ('17', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '修改操作');
INSERT INTO `t_sys_dict_data` VALUES ('18', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '删除操作');
INSERT INTO `t_sys_dict_data` VALUES ('19', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '授权操作');
INSERT INTO `t_sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别女');
INSERT INTO `t_sys_dict_data` VALUES ('20', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导出操作');
INSERT INTO `t_sys_dict_data` VALUES ('21', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导入操作');
INSERT INTO `t_sys_dict_data` VALUES ('22', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '强退操作');
INSERT INTO `t_sys_dict_data` VALUES ('23', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '生成操作');
INSERT INTO `t_sys_dict_data` VALUES ('24', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '清空操作');
INSERT INTO `t_sys_dict_data` VALUES ('25', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `t_sys_dict_data` VALUES ('26', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `t_sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别未知');
INSERT INTO `t_sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '显示菜单');
INSERT INTO `t_sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO `t_sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `t_sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `t_sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `t_sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');

-- ----------------------------
-- Table structure for t_sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_dict_type`;
CREATE TABLE `t_sys_dict_type` (
  `dict_id` varchar(20) NOT NULL COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='字典类型表';

-- ----------------------------
-- Records of t_sys_dict_type
-- ----------------------------
INSERT INTO `t_sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户性别列表');
INSERT INTO `t_sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO `t_sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO `t_sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO `t_sys_dict_type` VALUES ('5', '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO `t_sys_dict_type` VALUES ('6', '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO `t_sys_dict_type` VALUES ('7', '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO `t_sys_dict_type` VALUES ('8', '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作类型列表');
INSERT INTO `t_sys_dict_type` VALUES ('9', '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录状态列表');

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
INSERT INTO `t_sys_oper_log` VALUES ('618604421323948032', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-09-04');

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
INSERT INTO `t_sys_permission_role` VALUES ('0cedc4b6-1d3c-4f5d-8ed7-de189e87fbd1', '488243256161730560', '11');
INSERT INTO `t_sys_permission_role` VALUES ('0e99b733-d8f6-4c82-ba2b-de347cd1b99d', '488243256161730560', '16');
INSERT INTO `t_sys_permission_role` VALUES ('0ec542bc-beb5-45cb-ac0c-782d64a57f27', '488243256161730560', '5946910264304599043');
INSERT INTO `t_sys_permission_role` VALUES ('15100c12-5bcd-40ca-be79-2a3eb81be5e2', '488243256161730560', '610635485890478080');
INSERT INTO `t_sys_permission_role` VALUES ('161fddcf-59a6-4fa9-9dad-166f85ba9369', '488243256161730560', '13');
INSERT INTO `t_sys_permission_role` VALUES ('1b6a4a1f-ba16-427b-ae41-7f16c8d853ca', '488243256161730560', '592167738407911424');
INSERT INTO `t_sys_permission_role` VALUES ('1bddd6d5-463b-4f73-a381-a4fd6e9a4a49', '488243256161730560', '10');
INSERT INTO `t_sys_permission_role` VALUES ('1c91234c-ff71-410c-99dd-5a67922a26a4', '488243256161730560', '589559475422101504');
INSERT INTO `t_sys_permission_role` VALUES ('2a0df54c-bbb5-427e-8246-abec8fae0d99', '488243256161730560', '8');
INSERT INTO `t_sys_permission_role` VALUES ('2bcfdfba-db69-40a9-94f1-b7e43711ee11', '488243256161730560', '1');
INSERT INTO `t_sys_permission_role` VALUES ('2be1509c-08a7-42a4-a84f-50f611c1d2c1', '488243256161730560', '23');
INSERT INTO `t_sys_permission_role` VALUES ('2d568e67-1b97-451d-b7e1-38e48d715497', '488243256161730560', '587453033487532032');
INSERT INTO `t_sys_permission_role` VALUES ('35d3bc34-3736-4a12-a4d5-0557e308f8f0', '488243256161730560', '589559748521623552');
INSERT INTO `t_sys_permission_role` VALUES ('35ea2af3-6062-43c3-a3b6-1015c41dd053', '488243256161730560', '594691026430459904');
INSERT INTO `t_sys_permission_role` VALUES ('38b8e78c-e792-4aef-8750-0eb7ef19cb8d', '488243256161730560', '496782496638173184');
INSERT INTO `t_sys_permission_role` VALUES ('3b1a8394-b0b6-4e63-83b2-4b6fda8a52de', '488243256161730560', '496127240363311104');
INSERT INTO `t_sys_permission_role` VALUES ('3e9a83ce-de5b-46cc-ad64-5b4faff621d4', '488243256161730560', '575853607149109248');
INSERT INTO `t_sys_permission_role` VALUES ('3f25558c-b89e-41b5-ac22-ac15bbe4ca17', '488243256161730560', '5946910264304599041');
INSERT INTO `t_sys_permission_role` VALUES ('450392f2-a422-44a5-a9e5-cc66e1dd7eb3', '488243256161730560', '14');
INSERT INTO `t_sys_permission_role` VALUES ('455af242-e4d5-4744-bc1a-33ea3bb12655', '488243256161730560', '6');
INSERT INTO `t_sys_permission_role` VALUES ('4a64102e-a866-4db1-9978-969c26920a29', '488243256161730560', '610983815791247360');
INSERT INTO `t_sys_permission_role` VALUES ('4c4bb1b2-6da6-4a00-8a64-a994095e80eb', '488243256161730560', '617766548966211584');
INSERT INTO `t_sys_permission_role` VALUES ('51dea531-a5ce-4236-8c57-ab48bdb08971', '488243256161730560', '617883141264113664');
INSERT INTO `t_sys_permission_role` VALUES ('5d16cd6f-6fe7-4e19-8fdf-e181bda1c2ab', '488243256161730560', '17');
INSERT INTO `t_sys_permission_role` VALUES ('639853d3-746d-4071-9020-d991ea866859', '488243256161730560', '15');
INSERT INTO `t_sys_permission_role` VALUES ('819aca54-ecfe-463e-899b-f68c53d5df61', '488243256161730560', '617751079701970944');
INSERT INTO `t_sys_permission_role` VALUES ('9c3b3034-057b-4900-9f27-34228e8d7ef4', '488243256161730560', '19');
INSERT INTO `t_sys_permission_role` VALUES ('9f315453-9da9-41ed-9acf-145dd011e9cd', '488243256161730560', '4');
INSERT INTO `t_sys_permission_role` VALUES ('a266f95b-2821-40ad-b273-9f400e80e2d1', '488243256161730560', '21');
INSERT INTO `t_sys_permission_role` VALUES ('a3eac8a2-f9ae-4044-9375-9dd1780190cb', '488243256161730560', '592059865673760768');
INSERT INTO `t_sys_permission_role` VALUES ('ae9bb045-28a2-4267-aca5-c0dc032fe0f0', '488243256161730560', '12');
INSERT INTO `t_sys_permission_role` VALUES ('b16dd9e8-9ed4-4cb7-98d4-23dc1ffd1abc', '488243256161730560', '592067570522128384');
INSERT INTO `t_sys_permission_role` VALUES ('b4c918fd-6627-4c5e-8fe5-f3f704b94031', '488243256161730560', '496126970468237312');
INSERT INTO `t_sys_permission_role` VALUES ('b696186f-83c2-4b47-8b60-79eeaf830475', '488243256161730560', '610635950447394816');
INSERT INTO `t_sys_permission_role` VALUES ('bdc0f849-0ce5-4fe3-bc5e-4e77bad68cf5', '488243256161730560', '22');
INSERT INTO `t_sys_permission_role` VALUES ('c0777b28-0403-4ee1-9078-b9965beb41ba', '488243256161730560', '18');
INSERT INTO `t_sys_permission_role` VALUES ('c7a7a234-b964-4ac6-8076-dfde7d1e59c2', '488243256161730560', '7');
INSERT INTO `t_sys_permission_role` VALUES ('d091bd21-653b-4874-8c4a-7f70e56c8cfa', '488243256161730560', '5946910264304599044');
INSERT INTO `t_sys_permission_role` VALUES ('d1ec785c-9c1c-4873-a5ce-ce2755022c5d', '488243256161730560', '581541547099553792');
INSERT INTO `t_sys_permission_role` VALUES ('d269274d-855d-4c81-a327-2d2699822235', '488243256161730560', '575851658483859456');
INSERT INTO `t_sys_permission_role` VALUES ('da5c0cd2-eda8-4361-9d00-970e7bf7ce4b', '488243256161730560', '9');
INSERT INTO `t_sys_permission_role` VALUES ('db121cc8-7676-4d75-91a9-d40ff6e2f544', '488243256161730560', '589559916704825344');
INSERT INTO `t_sys_permission_role` VALUES ('dc7e4c91-2f5d-46ed-a380-ee5e93928a39', '488243256161730560', '586003694080753664');
INSERT INTO `t_sys_permission_role` VALUES ('e059107a-3465-4b03-9bad-0cb0df37eba1', '488243256161730560', '575852089792528384');
INSERT INTO `t_sys_permission_role` VALUES ('f0a0d2a0-503c-4bd1-906a-0f110d822f99', '488243256161730560', '583063272123531264');
INSERT INTO `t_sys_permission_role` VALUES ('f2574045-ea86-44b2-8bd8-0d7d7178d09d', '488243256161730560', '20');
INSERT INTO `t_sys_permission_role` VALUES ('faa60c34-2bd8-4689-a02b-cab12de58986', '488243256161730560', '486690002869157888');
INSERT INTO `t_sys_permission_role` VALUES ('fc1d6e38-b7f1-4cd6-82c5-135604dddbd6', '488243256161730560', '5946910264304599042');
INSERT INTO `t_sys_permission_role` VALUES ('fc294b2d-8e9a-462c-9806-5cf30374cc66', '488243256161730560', '496127794879660032');
INSERT INTO `t_sys_permission_role` VALUES ('fef24412-6e9d-49e7-91bc-9c9231789646', '488243256161730560', '5');

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
INSERT INTO `t_sys_premission` VALUES ('617883141264113664', '代码模块', '代码模块', null, '0', '1', null, '0', 'fa fa-git', '4');
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
