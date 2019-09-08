/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1_3306
Source Server Version : 50725
Source Host           : 127.0.0.1:3306
Source Database       : springbootv2

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-09-09 03:05:00
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
-- Table structure for t_sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_dict_data`;
CREATE TABLE `t_sys_dict_data` (
  `id` varchar(255) NOT NULL COMMENT '主键',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT '' COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT '' COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典数据表';

-- ----------------------------
-- Records of t_sys_dict_data
-- ----------------------------
INSERT INTO `t_sys_dict_data` VALUES ('330692002083639296', '1', '男', '0', 'sys_user_sex', '', 'primary', 'Y', '0', '管理员', '2019-09-08 22:58:47', '', '2019-09-08 22:58:47', '性别男');
INSERT INTO `t_sys_dict_data` VALUES ('330753797402005504', '2', '女', '1', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2019-09-09 03:04:21', '', '2019-09-09 03:04:21', '');

-- ----------------------------
-- Table structure for t_sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_dict_type`;
CREATE TABLE `t_sys_dict_type` (
  `id` varchar(255) NOT NULL COMMENT '主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典类型表';

-- ----------------------------
-- Records of t_sys_dict_type
-- ----------------------------
INSERT INTO `t_sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', '管理员', '2019-09-08 22:54:53', '用户性别列表');
INSERT INTO `t_sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', '管理员', '2019-09-08 22:54:56', '菜单状态列表');
INSERT INTO `t_sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', '管理员', '2019-09-08 22:54:58', '系统开关列表');
INSERT INTO `t_sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11:33:00', '管理员', '2019-09-08 22:55:00', '任务状态列表');
INSERT INTO `t_sys_dict_type` VALUES ('5', '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', '管理员', '2019-09-08 22:55:03', '系统是否列表');
INSERT INTO `t_sys_dict_type` VALUES ('6', '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', '管理员', '2019-09-08 22:55:04', '通知类型列表');
INSERT INTO `t_sys_dict_type` VALUES ('7', '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', '管理员', '2019-09-08 22:55:08', '通知状态列表');
INSERT INTO `t_sys_dict_type` VALUES ('8', '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11:33:00', '管理员', '2019-09-08 22:55:10', '操作类型列表');
INSERT INTO `t_sys_dict_type` VALUES ('9', '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11:33:00', '管理员', '2019-09-08 22:55:12', '登录状态列表');

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
-- Table structure for t_sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_notice`;
CREATE TABLE `t_sys_notice` (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '主键',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '内容',
  `type` int(5) DEFAULT NULL COMMENT '类型',
  `create_id` varchar(255) DEFAULT NULL COMMENT '创建人id',
  `create_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '创建人name',
  `create_time` datetime DEFAULT NULL COMMENT '发信时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公告';

-- ----------------------------
-- Records of t_sys_notice
-- ----------------------------
INSERT INTO `t_sys_notice` VALUES ('330381411007729664', '测试公告', '<p>啊啊啊<img src=\"http://img.baidu.com/hi/jx2/j_0002.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0024.gif\"/></p>', '1', '1', 'admin', '2019-09-08 02:24:37');
INSERT INTO `t_sys_notice` VALUES ('330381806358630400', '鲜花视频', '<p>哈哈哈哈<img src=\"http://img.baidu.com/hi/jx2/j_0024.gif\"/></p>', '2', '1', 'admin', '2019-09-08 02:26:11');
INSERT INTO `t_sys_notice` VALUES ('330622143597514752', '水水水水水水水', '<p>水水水水水水水水水水水水水水水水水水水</p>', '1', '1', 'admin', '2019-09-08 18:21:12');

-- ----------------------------
-- Table structure for t_sys_notice_user
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_notice_user`;
CREATE TABLE `t_sys_notice_user` (
  `id` varchar(255) NOT NULL COMMENT '主键',
  `notice_id` varchar(255) DEFAULT NULL COMMENT '公告id',
  `user_id` varchar(255) DEFAULT NULL COMMENT '用户id',
  `state` int(2) DEFAULT NULL COMMENT '0未阅读 1 阅读',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公告_用户外键';

-- ----------------------------
-- Records of t_sys_notice_user
-- ----------------------------
INSERT INTO `t_sys_notice_user` VALUES ('330381411037089792', '330381411007729664', '1', '0');
INSERT INTO `t_sys_notice_user` VALUES ('330381411045478400', '330381411007729664', '488294747442511872', '0');
INSERT INTO `t_sys_notice_user` VALUES ('330381806375407616', '330381806358630400', '1', '0');
INSERT INTO `t_sys_notice_user` VALUES ('330381806379601920', '330381806358630400', '488294747442511872', '0');
INSERT INTO `t_sys_notice_user` VALUES ('330622143622680576', '330622143597514752', '1', '1');
INSERT INTO `t_sys_notice_user` VALUES ('330622143626874880', '330622143597514752', '488294747442511872', '0');

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
INSERT INTO `t_sys_oper_log` VALUES ('330647095008694272', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-09-08');
INSERT INTO `t_sys_oper_log` VALUES ('330672044641488896', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-09-08');
INSERT INTO `t_sys_oper_log` VALUES ('330672725418971136', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-09-08');
INSERT INTO `t_sys_oper_log` VALUES ('330693935833944064', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-09-08');
INSERT INTO `t_sys_oper_log` VALUES ('330701611326377984', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-09-08');
INSERT INTO `t_sys_oper_log` VALUES ('330701750719877120', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-09-08');
INSERT INTO `t_sys_oper_log` VALUES ('330703699347378176', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-09-08');

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
INSERT INTO `t_sys_permission_role` VALUES ('06e4c3dd-4a1d-4807-9529-e0615cfa7246', '488243256161730560', '592067570522128384');
INSERT INTO `t_sys_permission_role` VALUES ('06ea8ee1-d8ba-476d-a35c-29b4e989f045', '488243256161730560', '5946910264304599044');
INSERT INTO `t_sys_permission_role` VALUES ('08ee6094-0cef-44fc-ab48-ce3383bf49da', '488243256161730560', '583063272123531264');
INSERT INTO `t_sys_permission_role` VALUES ('0968f0d7-de48-4844-b046-da51d463a4c7', '488243256161730560', '6192095215075983364');
INSERT INTO `t_sys_permission_role` VALUES ('14236cdb-ceea-4d32-bcbe-305b68cc02ae', '488243256161730560', '10');
INSERT INTO `t_sys_permission_role` VALUES ('18290c41-e20d-43d4-b98a-4157e00db00c', '488243256161730560', '15');
INSERT INTO `t_sys_permission_role` VALUES ('183d22a9-c703-495d-8922-1c76a9723734', '488243256161730560', '5');
INSERT INTO `t_sys_permission_role` VALUES ('186464d9-0a1b-4572-8d48-5aba174f7dba', '488243256161730560', '575853607149109248');
INSERT INTO `t_sys_permission_role` VALUES ('22e8aa54-d820-44e2-afec-92cdff3cd2f0', '488243256161730560', '6192095215075983363');
INSERT INTO `t_sys_permission_role` VALUES ('26aa5575-85be-4da0-af87-1ee141794b7a', '488243256161730560', '610635950447394816');
INSERT INTO `t_sys_permission_role` VALUES ('29d6d9c5-35ec-4caf-9c55-4dfba4080bce', '488243256161730560', '496127240363311104');
INSERT INTO `t_sys_permission_role` VALUES ('2d17b4e3-62ac-4097-ae52-7c15f534469a', '488243256161730560', '575851658483859456');
INSERT INTO `t_sys_permission_role` VALUES ('38f44a8e-efa3-4c04-b397-d044c16a0ccb', '488243256161730560', '496126970468237312');
INSERT INTO `t_sys_permission_role` VALUES ('39e42fda-bbc3-4775-b7da-9b0d2bb17849', '488243256161730560', '3303650266428252171');
INSERT INTO `t_sys_permission_role` VALUES ('4294ec2c-9602-42d7-881c-a6867b6098c2', '488243256161730560', '617751079701970944');
INSERT INTO `t_sys_permission_role` VALUES ('43a8eace-7902-4361-98ca-fd7e0a82c24e', '488243256161730560', '14');
INSERT INTO `t_sys_permission_role` VALUES ('466b5837-6437-4052-91fb-1d4566937833', '488243256161730560', '12');
INSERT INTO `t_sys_permission_role` VALUES ('467cc81a-e0c8-4d14-a09f-355a3f1c135d', '488243256161730560', '618918631769636864');
INSERT INTO `t_sys_permission_role` VALUES ('49994d3a-1d08-4dd2-add5-0782feea4f52', '488243256161730560', '486690002869157888');
INSERT INTO `t_sys_permission_role` VALUES ('4c2da8be-42f7-47ff-9a12-bc2df515a7cb', '488243256161730560', '581541547099553792');
INSERT INTO `t_sys_permission_role` VALUES ('4db160ff-e9e1-464f-912d-e7b5a44219f2', '488243256161730560', '17');
INSERT INTO `t_sys_permission_role` VALUES ('556428b4-ee49-487c-a7f5-9e3c96579398', '488243256161730560', '496782496638173184');
INSERT INTO `t_sys_permission_role` VALUES ('55c7bf9e-1076-4aa9-8073-9e7b01797941', '488243256161730560', '6192095214866268161');
INSERT INTO `t_sys_permission_role` VALUES ('5746225f-ca66-4dfa-8767-bf87152df37d', '488243256161730560', '3303650266428252193');
INSERT INTO `t_sys_permission_role` VALUES ('59387cff-1ae2-431d-bb47-c0f8a09bd4c6', '488243256161730560', '587453033487532032');
INSERT INTO `t_sys_permission_role` VALUES ('6039cb1a-4146-4d55-9534-31a0b258821a', '488243256161730560', '330365026642825216');
INSERT INTO `t_sys_permission_role` VALUES ('631aa16b-eb3b-40ca-a3a2-ab471f6af37a', '488243256161730560', '617766548966211584');
INSERT INTO `t_sys_permission_role` VALUES ('632aca3a-8c73-40e2-9670-6984c4d1cc41', '488243256161730560', '6192095214866268162');
INSERT INTO `t_sys_permission_role` VALUES ('64ac9265-8d4e-4306-a52e-461606f40532', '488243256161730560', '23');
INSERT INTO `t_sys_permission_role` VALUES ('6544df83-9e83-4d56-adfe-3a799c416f6e', '488243256161730560', '589559748521623552');
INSERT INTO `t_sys_permission_role` VALUES ('68585478-f82b-42b4-85c9-03c7aa72de0d', '488243256161730560', '11');
INSERT INTO `t_sys_permission_role` VALUES ('6a20058c-381d-4e71-a6e7-eaaa37cbbe82', '488243256161730560', '594691026430459904');
INSERT INTO `t_sys_permission_role` VALUES ('79a48dc5-a79e-454d-8423-fe9bc0937c09', '488243256161730560', '6189186317948026882');
INSERT INTO `t_sys_permission_role` VALUES ('7a2eab2d-05bd-428d-976d-3b0256c8501b', '488243256161730560', '5946910264304599042');
INSERT INTO `t_sys_permission_role` VALUES ('7e7a5783-3196-4cb6-986c-0824c70c1652', '488243256161730560', '4');
INSERT INTO `t_sys_permission_role` VALUES ('85750ff5-f9c5-485a-8257-4640ec3b1502', '488243256161730560', '13');
INSERT INTO `t_sys_permission_role` VALUES ('87a92662-2a4a-4477-b163-19e7972dd1e9', '488243256161730560', '5946910264304599043');
INSERT INTO `t_sys_permission_role` VALUES ('9136968d-280d-4255-a9cc-38f5b306888a', '488243256161730560', '589559475422101504');
INSERT INTO `t_sys_permission_role` VALUES ('92371656-a957-494a-945b-49836fb2b078', '488243256161730560', '6189186317948026883');
INSERT INTO `t_sys_permission_role` VALUES ('9da8a8a1-1be0-49f8-b0cc-599983722ca5', '488243256161730560', '575852089792528384');
INSERT INTO `t_sys_permission_role` VALUES ('a2e9d37e-c115-4f79-88d5-8fff1b287014', '488243256161730560', '592167738407911424');
INSERT INTO `t_sys_permission_role` VALUES ('a4b50e5e-5237-4408-9554-8b1c1dd14c1b', '488243256161730560', '592059865673760768');
INSERT INTO `t_sys_permission_role` VALUES ('a75bfe3c-dc6a-42d4-b648-d428cb1221f0', '488243256161730560', '3303650266428252182');
INSERT INTO `t_sys_permission_role` VALUES ('ac4f6bbc-6b72-44f8-b80a-f170c7b44f51', '488243256161730560', '589559916704825344');
INSERT INTO `t_sys_permission_role` VALUES ('b03e814d-2f56-4851-86b5-d93103c061bb', '488243256161730560', '1');
INSERT INTO `t_sys_permission_role` VALUES ('b61f556d-7ae3-4438-a0d8-3be84d7d002f', '488243256161730560', '6');
INSERT INTO `t_sys_permission_role` VALUES ('ba07a477-b573-4e84-a80b-c4e0c4757d62', '488243256161730560', '6189186317738311681');
INSERT INTO `t_sys_permission_role` VALUES ('be5baf56-8b6b-4583-9194-59e7abe7f9f9', '488243256161730560', '586003694080753664');
INSERT INTO `t_sys_permission_role` VALUES ('bec24f4e-53d3-4305-823e-85fb5dd19d88', '488243256161730560', '619836559427895296');
INSERT INTO `t_sys_permission_role` VALUES ('c7f34307-66e4-4c80-8684-87f3178cae1e', '488243256161730560', '21');
INSERT INTO `t_sys_permission_role` VALUES ('c98e9027-fd50-44dd-9af2-96ad6f318320', '488243256161730560', '610635485890478080');
INSERT INTO `t_sys_permission_role` VALUES ('cd3bf9c0-72db-4d05-bad3-4dca6e0bbfe8', '488243256161730560', '7');
INSERT INTO `t_sys_permission_role` VALUES ('cd77976a-d3bc-40d3-9646-003baf0a9a00', '488243256161730560', '8');
INSERT INTO `t_sys_permission_role` VALUES ('cfe12c5f-a552-47bb-ae7b-7dd57547c65d', '488243256161730560', '22');
INSERT INTO `t_sys_permission_role` VALUES ('d050e4d3-078a-4e2e-9fa7-005f175c0d2e', '488243256161730560', '18');
INSERT INTO `t_sys_permission_role` VALUES ('d1bb1b96-4b9b-46b1-8152-856b8da6d3b1', '488243256161730560', '19');
INSERT INTO `t_sys_permission_role` VALUES ('d6463066-d772-4088-b625-9e42db7f4f52', '488243256161730560', '16');
INSERT INTO `t_sys_permission_role` VALUES ('d6d8b4d3-8007-4ff6-88a4-c459d5614cab', '488243256161730560', '5946910264304599041');
INSERT INTO `t_sys_permission_role` VALUES ('d725edb0-0bc8-41f4-817f-f7bfa48ee74f', '488243256161730560', '6189186317989969924');
INSERT INTO `t_sys_permission_role` VALUES ('e5c3e69d-aef4-4c46-9111-0ca11ab0609b', '488243256161730560', '610983815791247360');
INSERT INTO `t_sys_permission_role` VALUES ('e6194783-43d1-4a32-9dae-63016ad9428d', '488243256161730560', '9');
INSERT INTO `t_sys_permission_role` VALUES ('f8eff29b-ad1d-4147-9d3e-5e9c289955aa', '488243256161730560', '3303650266428252204');
INSERT INTO `t_sys_permission_role` VALUES ('ff58f69e-b9a8-4103-bdc1-1c8f48c257fe', '488243256161730560', '20');
INSERT INTO `t_sys_permission_role` VALUES ('ff771495-03c4-46a9-bdb3-f33df167b01c', '488243256161730560', '496127794879660032');

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
INSERT INTO `t_sys_premission` VALUES ('330365026642825216', '公告管理', '公告展示', '/SysNoticeController/view', '0', '592059865673760768', 'gen:sysNotice:view', '1', 'fa fa-telegram', '10');
INSERT INTO `t_sys_premission` VALUES ('3303650266428252171', '公告集合', '公告集合', '/SysNoticeController/list', '0', '330365026642825216', 'gen:sysNotice:list', '2', '', null);
INSERT INTO `t_sys_premission` VALUES ('3303650266428252182', '公告添加', '公告添加', '/SysNoticeController/add', '0', '330365026642825216', 'gen:sysNotice:add', '2', 'entypo-plus-squared', null);
INSERT INTO `t_sys_premission` VALUES ('3303650266428252193', '公告删除', '公告删除', '/SysNoticeController/remove', '0', '330365026642825216', 'gen:sysNotice:remove', '2', 'entypo-trash', null);
INSERT INTO `t_sys_premission` VALUES ('3303650266428252204', '公告修改', '公告修改', '/SysNoticeController/edit', '0', '330365026642825216', 'gen:sysNotice:edit', '2', 'fa fa-wrench', null);
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
INSERT INTO `t_sys_premission` VALUES ('618918631769636864', '字典管理', '字典类型表展示', '/DictTypeController/view', '0', '592059865673760768', 'system:dictType:view', '1', 'fa fa-quora', null);
INSERT INTO `t_sys_premission` VALUES ('6189186317738311681', '字典类型表集合', '字典类型表集合', '/DictTypeController/list', '0', '618918631769636864', 'system:dictType:list', '2', null, null);
INSERT INTO `t_sys_premission` VALUES ('6189186317948026882', '字典类型表添加', '字典类型表添加', '/DictTypeController/add', '0', '618918631769636864', 'system:dictType:add', '2', null, null);
INSERT INTO `t_sys_premission` VALUES ('6189186317948026883', '字典类型表删除', '字典类型表删除', '/DictTypeController/remove', '0', '618918631769636864', 'system:dictType:remove', '2', null, null);
INSERT INTO `t_sys_premission` VALUES ('6189186317989969924', '字典类型表修改', '字典类型表修改', '/DictTypeController/edit', '0', '618918631769636864', 'system:dictType:edit', '2', null, null);
INSERT INTO `t_sys_premission` VALUES ('6192095214866268161', '字典数据表集合', '字典数据表集合', '/DictDataController/list', '0', '618918631769636864', 'system:dictData:list', '2', null, null);
INSERT INTO `t_sys_premission` VALUES ('6192095214866268162', '字典数据表添加', '字典数据表添加', '/DictDataController/add', '0', '618918631769636864', 'system:dictData:add', '2', null, null);
INSERT INTO `t_sys_premission` VALUES ('6192095215075983363', '字典数据表删除', '字典数据表删除', '/DictDataController/remove', '0', '618918631769636864', 'system:dictData:remove', '2', null, null);
INSERT INTO `t_sys_premission` VALUES ('6192095215075983364', '字典数据表修改', '字典数据表修改', '/DictDataController/edit', '0', '618918631769636864', 'system:dictData:edit', '2', null, null);
INSERT INTO `t_sys_premission` VALUES ('619682152732164096', '测试2rr', '111', '-', '0', '619681831523975168', '-', '1', 'fa fa-address-book', '1');
INSERT INTO `t_sys_premission` VALUES ('619683076179492864', '2222', '', '#', '0', '619681831523975168', '#', '1', 'fa fa-address-book', null);
INSERT INTO `t_sys_premission` VALUES ('619836559427895296', '字典数据视图', '字典数据视图', '/DictDataController/view', '0', '618918631769636864', 'system:dictData:view', '2', null, null);
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
