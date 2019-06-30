/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : springbootv2

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-06-30 20:51:22
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

-- ----------------------------
-- Table structure for t_sys_email
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_email`;
CREATE TABLE `t_sys_email` (
  `id` varchar(255) COLLATE utf8mb4_bin NOT NULL COMMENT '主键',
  `receivers_email` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '接收人电子邮件',
  `title` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '邮件标题',
  `content` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '内容',
  `send_user_id` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '发送人id',
  `send_user_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '发送人账号',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='电子邮件';

-- ----------------------------
-- Records of t_sys_email
-- ----------------------------
INSERT INTO `t_sys_email` VALUES ('594975125275672576', '87766867@qq.com', 'hhhhh', '<p>hhhhhhhhh</p>', '1', 'admin', '2019-06-30 19:38:44');
INSERT INTO `t_sys_email` VALUES ('594976803437674496', '87766867@qq.com', 'ffff', '<p>ccccccccccccccccccc</p>', '1', 'admin', '2019-06-30 19:45:24');
INSERT INTO `t_sys_email` VALUES ('594976935868628992', '87766867@qq.com', 'ffff', '<p>ccccccccccccccccccc</p>', '1', 'admin', '2019-06-30 19:45:56');
INSERT INTO `t_sys_email` VALUES ('594977087920537600', '87766867@qq.com', 'ffff', '<p>ccccccccccccccccccc</p>', '1', 'admin', '2019-06-30 19:46:32');

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
INSERT INTO `t_sys_file` VALUES ('594974831133327360', '百度富文本上传', '1', 'admin', '2019-06-30 19:37:34', null, null, null);

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
INSERT INTO `t_sys_permission_role` VALUES ('0317600c-530c-43bf-89e7-ea0da27355f9', '488243256161730560', '5946910264304599042');
INSERT INTO `t_sys_permission_role` VALUES ('0fa45fb1-e178-455d-9fc9-db2e9edf94c4', '488243256161730560', '11');
INSERT INTO `t_sys_permission_role` VALUES ('17b87513-b39d-419f-862e-ca50991fa960', '488243256161730560', '587453033487532032');
INSERT INTO `t_sys_permission_role` VALUES ('25e0494e-5ba2-41eb-a0eb-26a74792c125', '488243256161730560', '583063272123531264');
INSERT INTO `t_sys_permission_role` VALUES ('26fc8b12-a91b-444c-8419-8c81f1aed9d3', '488243256161730560', '575851658483859456');
INSERT INTO `t_sys_permission_role` VALUES ('29917eda-2c2f-44c9-ac35-e5506feb43f5', '488243256161730560', '9');
INSERT INTO `t_sys_permission_role` VALUES ('2baf99dd-1d2e-48cc-867d-a53381b35d50', '488243256161730560', '586003694080753664');
INSERT INTO `t_sys_permission_role` VALUES ('2eea7e07-b48f-405b-9c9c-c3d4cb22882c', '488243256161730560', '594691026430459904');
INSERT INTO `t_sys_permission_role` VALUES ('36a2d0a1-6289-4fb6-bda1-cd2a36bd50c3', '488243256161730560', '592059865673760768');
INSERT INTO `t_sys_permission_role` VALUES ('41844808-7c7f-4327-b3aa-871a5e29318a', '488243256161730560', '14');
INSERT INTO `t_sys_permission_role` VALUES ('41f4f559-2589-42b8-aaf7-e37be794c9f3', '488243256161730560', '589559916704825344');
INSERT INTO `t_sys_permission_role` VALUES ('447a458f-9698-44d5-8f6c-f082c8365b52', '488243256161730560', '1');
INSERT INTO `t_sys_permission_role` VALUES ('45fb85bf-650a-44cd-a122-d58e159de840', '488243256161730560', '22');
INSERT INTO `t_sys_permission_role` VALUES ('48e9b15e-ee72-40ff-a930-3ad633724958', '488243256161730560', '19');
INSERT INTO `t_sys_permission_role` VALUES ('4939b64a-cc7e-47f1-a48d-4e7b65dcf7bf', '488243256161730560', '5946910264304599043');
INSERT INTO `t_sys_permission_role` VALUES ('4c5cd84a-bfcd-41db-aab2-2228f7aca287', '488243256161730560', '589559748521623552');
INSERT INTO `t_sys_permission_role` VALUES ('4cf9b649-9ed3-4651-8791-7d5507648cf9', '488243256161730560', '589559475422101504');
INSERT INTO `t_sys_permission_role` VALUES ('4d9c7514-49d6-4650-8540-b39908f7009f', '488243256161730560', '575852089792528384');
INSERT INTO `t_sys_permission_role` VALUES ('562113de-f80c-4441-b88f-d369f9c2a4ac', '488243256161730560', '20');
INSERT INTO `t_sys_permission_role` VALUES ('58852549-71ea-4e98-8a0d-01bfb3919c95', '488243256161730560', '496782496638173184');
INSERT INTO `t_sys_permission_role` VALUES ('6f77a4af-7a6e-466e-b147-fa0599c0545a', '488243256161730560', '592067570522128384');
INSERT INTO `t_sys_permission_role` VALUES ('716b1186-6ec1-4915-b8f0-116b52b0d5ca', '488243256161730560', '7');
INSERT INTO `t_sys_permission_role` VALUES ('7d8fd33a-687d-4dcb-8b2f-6c6ec141b825', '488243256161730560', '13');
INSERT INTO `t_sys_permission_role` VALUES ('801eceed-5a42-4fda-a570-43a0c34dbabd', '488243256161730560', '592167738407911424');
INSERT INTO `t_sys_permission_role` VALUES ('845c8cdb-5a8c-4478-9d18-ca922539a965', '488243256161730560', '8');
INSERT INTO `t_sys_permission_role` VALUES ('8762ab1b-a9d0-49a9-8976-2400e3426679', '488243256161730560', '23');
INSERT INTO `t_sys_permission_role` VALUES ('87d50628-a4fe-4bc9-9f4d-6f7ba02c5940', '488243256161730560', '21');
INSERT INTO `t_sys_permission_role` VALUES ('96720169-cfee-4ba9-a69f-e525f82b090b', '488289006124007424', '589559748521623552');
INSERT INTO `t_sys_permission_role` VALUES ('9abe9d09-e70b-4012-9982-fbb75d77cbac', '488289006124007424', '1');
INSERT INTO `t_sys_permission_role` VALUES ('9ee2d0f8-9e6b-4068-8ff7-74500e417438', '488243256161730560', '575853607149109248');
INSERT INTO `t_sys_permission_role` VALUES ('a0a29f00-ceb0-4388-b2f3-c948dea7a4e0', '488243256161730560', '4');
INSERT INTO `t_sys_permission_role` VALUES ('b0cc68dd-5064-4f20-85da-a743cea61432', '488243256161730560', '18');
INSERT INTO `t_sys_permission_role` VALUES ('b2764c1e-5bb7-43d9-89a6-e4fd13a06490', '488243256161730560', '10');
INSERT INTO `t_sys_permission_role` VALUES ('b912944f-92ea-4388-b6ad-b5cf39db7d9f', '488243256161730560', '16');
INSERT INTO `t_sys_permission_role` VALUES ('b965d1b1-4001-4b91-8cf2-96d39128347a', '488289006124007424', '592067570522128384');
INSERT INTO `t_sys_permission_role` VALUES ('b9736118-5aa2-4f46-8e49-5f5a1f617ef3', '488243256161730560', '5');
INSERT INTO `t_sys_permission_role` VALUES ('bc10a7f4-fc50-4cb9-9ee4-4960af603312', '488243256161730560', '581541547099553792');
INSERT INTO `t_sys_permission_role` VALUES ('c0a31486-9d44-4e6c-9485-750197d0e44f', '488243256161730560', '486690002869157888');
INSERT INTO `t_sys_permission_role` VALUES ('c1bbc623-8a3d-4354-89c5-854c121d33d8', '488243256161730560', '12');
INSERT INTO `t_sys_permission_role` VALUES ('c8c53c44-76f9-4c38-8a88-b18e6e749b52', '488243256161730560', '6');
INSERT INTO `t_sys_permission_role` VALUES ('ca2d5a0b-d392-49fb-af21-d82bd5b2d1a4', '488243256161730560', '17');
INSERT INTO `t_sys_permission_role` VALUES ('d16acfca-4ac5-42b7-a654-b9a860122173', '488243256161730560', '15');
INSERT INTO `t_sys_permission_role` VALUES ('d29981f5-d243-47ad-8007-d3eecc0e9802', '488289006124007424', '589559475422101504');
INSERT INTO `t_sys_permission_role` VALUES ('dd07b5a4-ae9d-4f80-989d-8314951c58f0', '488243256161730560', '5946910264304599041');
INSERT INTO `t_sys_permission_role` VALUES ('f032f18a-b208-4f23-8a23-646802f3326a', '488243256161730560', '5946910264304599044');
INSERT INTO `t_sys_permission_role` VALUES ('fbbb5391-6206-45a9-99be-973572dd13ae', '488289006124007424', '589559916704825344');

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
INSERT INTO `t_sys_premission` VALUES ('594691026430459904', '电子邮件管理', '电子邮件展示', '/EmailController/view', '0', '592059865673760768', 'system:email:view', '1', 'fa fa-envelope', '8');
INSERT INTO `t_sys_premission` VALUES ('5946910264304599041', '电子邮件集合', '电子邮件集合', '/EmailController/list', '0', '594691026430459904', 'system:email:list', '2', '', null);
INSERT INTO `t_sys_premission` VALUES ('5946910264304599042', '电子邮件添加', '电子邮件添加', '/EmailController/add', '0', '594691026430459904', 'system:email:add', '2', 'entypo-plus-squared', null);
INSERT INTO `t_sys_premission` VALUES ('5946910264304599043', '电子邮件删除', '电子邮件删除', '/EmailController/remove', '0', '594691026430459904', 'system:email:remove', '2', 'entypo-trash', null);
INSERT INTO `t_sys_premission` VALUES ('5946910264304599044', '电子邮件修改', '电子邮件修改', '/EmailController/edit', '0', '594691026430459904', 'system:email:edit', '2', 'fa fa-wrench', null);
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
INSERT INTO `t_sys_role_user` VALUES ('594342089710370816', '1', '488243256161730560');
INSERT INTO `t_sys_role_user` VALUES ('594343820640911360', '488294747442511872', '488289006124007424');

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
