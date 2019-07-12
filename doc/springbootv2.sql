/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : springbootv2

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-07-13 02:19:16
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
INSERT INTO `t_sys_datas` VALUES ('595007521958133760', 'static/images_upload/b1a3ce4c7a30db570b6a9248aa89c250.jpg');

-- ----------------------------
-- Table structure for t_sys_email
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_email`;
CREATE TABLE `t_sys_email` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `receivers_email` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '接收人电子邮件',
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '邮件标题',
  `content` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '内容',
  `send_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '发送人id',
  `send_user_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '发送人账号',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='电子邮件';

-- ----------------------------
-- Records of t_sys_email
-- ----------------------------
INSERT INTO `t_sys_email` VALUES ('595001021625794560', '87766867@qq.com', 'springbootv2测试邮件', '<p>测试测测测</p>', '1', 'admin', '2019-06-30 21:21:38');
INSERT INTO `t_sys_email` VALUES ('595005420867682304', '87766867@qq.com', '带带带', '<p>顶顶顶顶顶顶顶顶顶顶顶顶顶</p>', '1', 'admin', '2019-06-30 21:39:07');
INSERT INTO `t_sys_email` VALUES ('595007558129811456', '87766867@qq.com', '呱呱呱呱呱呱', '<p><img src=\"http://localhost:8080/static/images_upload/b1a3ce4c7a30db570b6a9248aa89c250.jpg\" title=\"ssss\" alt=\"\"/></p>', '1', 'admin', '2019-06-30 21:47:37');
INSERT INTO `t_sys_email` VALUES ('596902572028067840', '87766867@qq.com', '鲜花视频', '<p>水水水水水水水水水水<img src=\"http://img.baidu.com/hi/jx2/j_0002.gif\"/></p>', '1', 'admin', '2019-07-06 03:17:43');

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
INSERT INTO `t_sys_file` VALUES ('595007522008465408', '百度富文本上传', '1', 'admin', '2019-06-30 21:47:28', null, null, null);

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
INSERT INTO `t_sys_file_data` VALUES ('595007522008465408', '595007521958133760', '595007522008465408');

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
INSERT INTO `t_sys_oper_log` VALUES ('595006721877868544', '用户集合查询', 'com.fc.test.controller.admin.UserController.list()', 'admin', '/UserController/list', '{\"pageSize\":[\"10\"],\"pageNum\":[\"1\"]}', null, '2019-06-30');

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
INSERT INTO `t_sys_permission_role` VALUES ('0de15885-983b-493f-9b2a-0b50163300a5', '488243256161730560', '5946910264304599042');
INSERT INTO `t_sys_permission_role` VALUES ('0de7c0da-9870-4ee0-b94f-386aa2b32599', '488243256161730560', '4');
INSERT INTO `t_sys_permission_role` VALUES ('11973cdd-8918-474b-ab9f-222270310f8b', '488243256161730560', '589559475422101504');
INSERT INTO `t_sys_permission_role` VALUES ('1de02c62-2870-4c5d-b26c-fbe9eaa7fbe8', '488243256161730560', '496126970468237312');
INSERT INTO `t_sys_permission_role` VALUES ('25a3d23a-1181-4381-af7f-cc7afdc06d4b', '488243256161730560', '592167738407911424');
INSERT INTO `t_sys_permission_role` VALUES ('295e68d0-ebef-42c0-9453-442a86a628ea', '488243256161730560', '592067570522128384');
INSERT INTO `t_sys_permission_role` VALUES ('2c4efd0b-bc7f-4ba9-94a3-fa0a30846f6f', '488243256161730560', '575852089792528384');
INSERT INTO `t_sys_permission_role` VALUES ('357bfe4e-2bf1-48a2-8dbc-2dd7f77a635f', '488243256161730560', '581541547099553792');
INSERT INTO `t_sys_permission_role` VALUES ('36c9d272-b8a1-4bb7-a81b-f78068292f3e', '488243256161730560', '583063272123531264');
INSERT INTO `t_sys_permission_role` VALUES ('47053c3e-880c-43b0-a0c4-1b641135dd41', '488243256161730560', '21');
INSERT INTO `t_sys_permission_role` VALUES ('487b0f0c-3abc-4114-a38d-4d746330309b', '488243256161730560', '12');
INSERT INTO `t_sys_permission_role` VALUES ('4b1576ae-166a-4815-bdc4-91a34d8eff1d', '488243256161730560', '10');
INSERT INTO `t_sys_permission_role` VALUES ('504d0783-bd4b-4554-be79-4ae47dcfa45f', '488243256161730560', '16');
INSERT INTO `t_sys_permission_role` VALUES ('51d85368-7517-450a-b652-b9705fbea385', '488243256161730560', '599413796565417984');
INSERT INTO `t_sys_permission_role` VALUES ('5c200efe-d384-4a3d-a824-032d130ebe2b', '488243256161730560', '6');
INSERT INTO `t_sys_permission_role` VALUES ('60c7e035-28ed-4f2b-a05a-e544c5ad3d94', '488243256161730560', '594691026430459904');
INSERT INTO `t_sys_permission_role` VALUES ('61dbb3f2-4cc6-43d1-9567-b6ee52a90ee0', '488243256161730560', '5994137965654179842');
INSERT INTO `t_sys_permission_role` VALUES ('61ff3439-15d7-430c-97bd-49639cd200b3', '488243256161730560', '586003694080753664');
INSERT INTO `t_sys_permission_role` VALUES ('659b8c8e-9a9f-4157-9126-880e6613520b', '488243256161730560', '20');
INSERT INTO `t_sys_permission_role` VALUES ('68b22aaa-6cc1-4d04-b850-d71a6cb7b88e', '488243256161730560', '496127794879660032');
INSERT INTO `t_sys_permission_role` VALUES ('6b902038-ed82-4933-af5c-a2ad1b401722', '488243256161730560', '589559916704825344');
INSERT INTO `t_sys_permission_role` VALUES ('6c573669-70b8-413f-8304-b393a8b640dc', '488243256161730560', '8');
INSERT INTO `t_sys_permission_role` VALUES ('717820ce-eae4-44e0-8a85-0f42e253d365', '488243256161730560', '587453033487532032');
INSERT INTO `t_sys_permission_role` VALUES ('73c6778c-5d87-4b8c-8e79-0e9bcb4201dd', '488243256161730560', '486690002869157888');
INSERT INTO `t_sys_permission_role` VALUES ('7ac89db5-a859-4a8d-bc74-3f9b30a82684', '488243256161730560', '5994137965863895043');
INSERT INTO `t_sys_permission_role` VALUES ('7b32c323-92c4-4691-ace0-b60b45839d28', '488243256161730560', '13');
INSERT INTO `t_sys_permission_role` VALUES ('7c8e2f62-715b-45e6-bc36-889623a97832', '488243256161730560', '575853607149109248');
INSERT INTO `t_sys_permission_role` VALUES ('80c68508-3bef-4589-a2d1-859b1517f588', '488243256161730560', '17');
INSERT INTO `t_sys_permission_role` VALUES ('81824a81-32eb-4d0c-8e9b-59f8a964ba61', '488243256161730560', '15');
INSERT INTO `t_sys_permission_role` VALUES ('82578b6f-c1e5-41c3-b602-8a081644df9f', '488243256161730560', '11');
INSERT INTO `t_sys_permission_role` VALUES ('93ffe610-c5f7-4c3b-aed2-9fc1c30b7a64', '488243256161730560', '5994137965863895044');
INSERT INTO `t_sys_permission_role` VALUES ('96671d6f-70c0-4675-89c5-beff326be26f', '488243256161730560', '592059865673760768');
INSERT INTO `t_sys_permission_role` VALUES ('a25e8620-7c2c-4f33-b5ec-2a77fc00bec6', '488243256161730560', '19');
INSERT INTO `t_sys_permission_role` VALUES ('a7db9fda-7ded-4baa-b671-df5226e445ab', '488243256161730560', '18');
INSERT INTO `t_sys_permission_role` VALUES ('b5a7da5d-2da9-444d-8395-63704caa5e05', '488243256161730560', '496782496638173184');
INSERT INTO `t_sys_permission_role` VALUES ('be33d14c-40a6-4746-af36-8cdbd009f5d5', '488243256161730560', '5946910264304599044');
INSERT INTO `t_sys_permission_role` VALUES ('bfd71b32-0050-4fdb-be1b-f83ccf136e92', '488243256161730560', '575851658483859456');
INSERT INTO `t_sys_permission_role` VALUES ('c354abfd-34a4-4e52-9384-8b6f8b783fd7', '488243256161730560', '5');
INSERT INTO `t_sys_permission_role` VALUES ('c5e1fca0-99c7-471c-a414-e96a1d8f4d82', '488243256161730560', '23');
INSERT INTO `t_sys_permission_role` VALUES ('ccdab6fb-20c3-489a-8b2c-4f4e0547c7e1', '488243256161730560', '589559748521623552');
INSERT INTO `t_sys_permission_role` VALUES ('d2244ad7-45fc-4fa0-8468-f560b38017a2', '488243256161730560', '5946910264304599041');
INSERT INTO `t_sys_permission_role` VALUES ('d3aa1605-aafa-479c-b14b-c401db630cae', '488243256161730560', '14');
INSERT INTO `t_sys_permission_role` VALUES ('db9733f8-0fa8-4c15-97ae-36a3c543a6c1', '488243256161730560', '496127240363311104');
INSERT INTO `t_sys_permission_role` VALUES ('dedb947e-44ce-4c04-8599-c86411605095', '488243256161730560', '5994137965654179841');
INSERT INTO `t_sys_permission_role` VALUES ('e5e41c40-8ae8-462c-b02f-61b99dd5ffb1', '488243256161730560', '1');
INSERT INTO `t_sys_permission_role` VALUES ('eef5ae12-fde6-4a7a-b745-3d55ddd750a0', '488243256161730560', '22');
INSERT INTO `t_sys_permission_role` VALUES ('f5bf5780-fa8b-4e11-973e-55f09d95e21a', '488243256161730560', '5946910264304599043');
INSERT INTO `t_sys_permission_role` VALUES ('fd374a8c-c155-4766-b062-53993e101c7c', '488243256161730560', '7');
INSERT INTO `t_sys_permission_role` VALUES ('ffc67221-b248-4a66-a8d4-d11d64d11d0f', '488243256161730560', '9');

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
INSERT INTO `t_sys_premission` VALUES ('496126970468237312', '日志展示', '日志管理', '/LogController/view', '0', '592059865673760768', 'system:log:view', '1', 'fa fa-info', '9');
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
INSERT INTO `t_sys_premission` VALUES ('599413796565417984', '自动生成测试表管理', '自动生成测试表展示', '/TTestController/view', '0', '575851658483859456', 'gen:tTest:view', '1', 'fa fa-quora', null);
INSERT INTO `t_sys_premission` VALUES ('5994137965654179841', '自动生成测试表集合', '自动生成测试表集合', '/TTestController/list', '0', '599413796565417984', 'gen:tTest:list', '2', '', null);
INSERT INTO `t_sys_premission` VALUES ('5994137965654179842', '自动生成测试表添加', '自动生成测试表添加', '/TTestController/add', '0', '599413796565417984', 'gen:tTest:add', '2', 'entypo-plus-squared', null);
INSERT INTO `t_sys_premission` VALUES ('5994137965863895043', '自动生成测试表删除', '自动生成测试表删除', '/TTestController/remove', '0', '599413796565417984', 'gen:tTest:remove', '2', 'entypo-trash', null);
INSERT INTO `t_sys_premission` VALUES ('5994137965863895044', '自动生成测试表修改', '自动生成测试表修改', '/TTestController/edit', '0', '599413796565417984', 'gen:tTest:edit', '2', 'fa fa-wrench', null);
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

-- ----------------------------
-- Table structure for t_test
-- ----------------------------
DROP TABLE IF EXISTS `t_test`;
CREATE TABLE `t_test` (
  `id` varchar(255) NOT NULL COMMENT '主键',
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='自动生成测试表';

-- ----------------------------
-- Records of t_test
-- ----------------------------
INSERT INTO `t_test` VALUES ('599415492259610624', '钱钱钱', '333');
INSERT INTO `t_test` VALUES ('599421215236423680', '3333', '33');
