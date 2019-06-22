/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-06-23 04:21:34
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
INSERT INTO `t_sys_oper_log` VALUES ('592077347629301760', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('592099881980526592', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-22');
INSERT INTO `t_sys_oper_log` VALUES ('592182771443564544', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-23');
INSERT INTO `t_sys_oper_log` VALUES ('592183990983589888', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-23');
INSERT INTO `t_sys_oper_log` VALUES ('592184576722337792', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-23');
INSERT INTO `t_sys_oper_log` VALUES ('592184687682650112', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-23');
INSERT INTO `t_sys_oper_log` VALUES ('592184763318534144', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-23');
INSERT INTO `t_sys_oper_log` VALUES ('592184804653400064', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-23');
INSERT INTO `t_sys_oper_log` VALUES ('592184829060055040', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-23');
INSERT INTO `t_sys_oper_log` VALUES ('592185269461975040', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-23');
INSERT INTO `t_sys_oper_log` VALUES ('592185550761361408', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-23');
INSERT INTO `t_sys_oper_log` VALUES ('592185605530583040', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-23');
INSERT INTO `t_sys_oper_log` VALUES ('592185627097694208', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-23');
INSERT INTO `t_sys_oper_log` VALUES ('592186203290206208', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-23');
INSERT INTO `t_sys_oper_log` VALUES ('592186341408636928', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-23');
INSERT INTO `t_sys_oper_log` VALUES ('592207407019458560', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-23');

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
INSERT INTO `t_sys_permission_role` VALUES ('03170f96-456b-47ac-abc0-252fffbc2260', '488243256161730560', '575852089792528384');
INSERT INTO `t_sys_permission_role` VALUES ('0499f424-54b0-4273-a508-da173d660eb5', '488243256161730560', '22');
INSERT INTO `t_sys_permission_role` VALUES ('0e10efc4-5dc4-4132-9091-0c3be9264ea8', '488243256161730560', '10');
INSERT INTO `t_sys_permission_role` VALUES ('0fd5aa4e-ce39-4f17-a8a3-72936dfddfce', '488243256161730560', '586003694080753664');
INSERT INTO `t_sys_permission_role` VALUES ('185bf18a-5164-4fb7-8084-7b14e980d6e0', '488243256161730560', '583063272123531264');
INSERT INTO `t_sys_permission_role` VALUES ('24fd77a9-d43b-4002-909c-c7bc6c7ad3a8', '488243256161730560', '14');
INSERT INTO `t_sys_permission_role` VALUES ('260c4fdf-1738-4dd0-b3be-aa93941f74c1', '488243256161730560', '592167738407911424');
INSERT INTO `t_sys_permission_role` VALUES ('2757189d-955f-44cd-b3e0-bee14a9baca8', '488243256161730560', '23');
INSERT INTO `t_sys_permission_role` VALUES ('2bb1c4a4-15bc-4760-acac-7f8d0c31a5e2', '488243256161730560', '1');
INSERT INTO `t_sys_permission_role` VALUES ('35275986-c81e-4de2-8415-4239b1bdd1ad', '488243256161730560', '9');
INSERT INTO `t_sys_permission_role` VALUES ('3a46b523-931f-43ad-8bf9-02d8bc3d89b9', '488243256161730560', '11');
INSERT INTO `t_sys_permission_role` VALUES ('3edf8582-ac97-483b-b52d-a5766a5e839b', '488243256161730560', '581541547099553792');
INSERT INTO `t_sys_permission_role` VALUES ('4971507e-0b6e-4c76-a61c-83066f9c9cdf', '488243256161730560', '4');
INSERT INTO `t_sys_permission_role` VALUES ('5912f2d1-95ba-445f-8a4e-cfd8e2edcb4d', '488243256161730560', '20');
INSERT INTO `t_sys_permission_role` VALUES ('5b94f63f-1f7a-4b8e-8a63-b24fbe385d62', '488243256161730560', '589559475422101504');
INSERT INTO `t_sys_permission_role` VALUES ('5d385307-a875-414f-bd47-56a872d1d376', '488243256161730560', '486690002869157888');
INSERT INTO `t_sys_permission_role` VALUES ('68aa2195-a307-4db0-a9cb-937193447a20', '488243256161730560', '589559916704825344');
INSERT INTO `t_sys_permission_role` VALUES ('6e006a7b-27e1-412c-a498-595e9706e0d6', '488243256161730560', '592059865673760768');
INSERT INTO `t_sys_permission_role` VALUES ('730ab1fe-1b1c-436d-9ae3-082979e7abe9', '488243256161730560', '575851658483859456');
INSERT INTO `t_sys_permission_role` VALUES ('784f1efa-d602-47e6-a7be-d2187bac1041', '488243256161730560', '15');
INSERT INTO `t_sys_permission_role` VALUES ('7add05d6-0a44-4e59-a897-1864e5720a6c', '488243256161730560', '16');
INSERT INTO `t_sys_permission_role` VALUES ('80f73f6b-6ede-4f96-88b5-4c6394ff2c8a', '488243256161730560', '19');
INSERT INTO `t_sys_permission_role` VALUES ('86e927f5-f202-40ac-98ff-854ff1dec462', '488243256161730560', '17');
INSERT INTO `t_sys_permission_role` VALUES ('910c1278-83b6-4165-b35f-5f35f7022d89', '488243256161730560', '496782496638173184');
INSERT INTO `t_sys_permission_role` VALUES ('9dfefd47-33a4-432b-8e89-76c6daf58b34', '488243256161730560', '13');
INSERT INTO `t_sys_permission_role` VALUES ('a17f8d2a-8809-4017-afa1-7a11397194e8', '488243256161730560', '12');
INSERT INTO `t_sys_permission_role` VALUES ('bcf8683a-9832-4bb2-9b8f-f61dad452771', '488243256161730560', '589559748521623552');
INSERT INTO `t_sys_permission_role` VALUES ('cf6712d5-b8e4-4d44-86d5-bf04c6fbc5c8', '488243256161730560', '21');
INSERT INTO `t_sys_permission_role` VALUES ('e4ff0e24-5f4b-4397-a319-7bbcc1f1c8b0', '488243256161730560', '592067570522128384');
INSERT INTO `t_sys_permission_role` VALUES ('e5987311-84f4-4ed3-bd39-691eecdf375b', '488243256161730560', '6');
INSERT INTO `t_sys_permission_role` VALUES ('ed749b25-a021-403b-94a4-a6f5aa6aeaba', '488243256161730560', '18');
INSERT INTO `t_sys_permission_role` VALUES ('edf2cfd6-7245-4271-b77f-b49ad7bcd926', '488243256161730560', '575853607149109248');
INSERT INTO `t_sys_permission_role` VALUES ('efdd590a-66c9-4991-bc60-aa90ac2f3d19', '488243256161730560', '7');
INSERT INTO `t_sys_permission_role` VALUES ('f4a7f584-1b78-491a-a4fa-16f401de06c6', '488243256161730560', '5');
INSERT INTO `t_sys_permission_role` VALUES ('fbd348de-7d37-467b-9046-d351484da36f', '488243256161730560', '8');
INSERT INTO `t_sys_permission_role` VALUES ('fd681bb8-ab09-4908-b452-d076691c486f', '488243256161730560', '587453033487532032');

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
INSERT INTO `t_sys_premission` VALUES ('592167738407911424', '系统监控', '系统监控', '/ServiceController/view', '0', '592059865673760768', 'system:service:view', '1', 'fa fa-video-camera', '7');
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
