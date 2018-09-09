/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2018-09-09 09:48:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_sys_permission_role`
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
INSERT INTO `t_sys_permission_role` VALUES ('0cc825f9-1d7c-4260-847b-3213efd03962', '488243256161730560', '12');
INSERT INTO `t_sys_permission_role` VALUES ('1019c647-72bd-45a4-93be-a1b64b8ab502', '488243256161730560', '7');
INSERT INTO `t_sys_permission_role` VALUES ('25bab76f-1f25-46fb-bf03-80ee0460fbc9', '488243256161730560', '8');
INSERT INTO `t_sys_permission_role` VALUES ('2778599b-846d-488e-9d7d-1ffc3f770db5', '488243256161730560', '14');
INSERT INTO `t_sys_permission_role` VALUES ('28e37678-edee-4459-9523-f231e747e78c', '488243256161730560', '16');
INSERT INTO `t_sys_permission_role` VALUES ('4485d5af-34bc-4a69-8cf3-18177e89f031', '488243256161730560', '18');
INSERT INTO `t_sys_permission_role` VALUES ('4747c8b4-8e25-4036-9c8a-d0b7448400ac', '488243256161730560', '5');
INSERT INTO `t_sys_permission_role` VALUES ('541d4c26-87e2-4efe-8e1d-a6ef4c92b030', '488243256161730560', '15');
INSERT INTO `t_sys_permission_role` VALUES ('67eefe68-93b4-488c-baee-fa84284829e1', '488243256161730560', '11');
INSERT INTO `t_sys_permission_role` VALUES ('78c32c17-506d-48fe-8e8f-d4d38172029c', '488243256161730560', '111');
INSERT INTO `t_sys_permission_role` VALUES ('8843dd76-0700-41c7-bf67-0137467a16e8', '488243256161730560', '222');
INSERT INTO `t_sys_permission_role` VALUES ('92b52a3b-5784-429a-b469-c90831d45054', '488243256161730560', '10');
INSERT INTO `t_sys_permission_role` VALUES ('ab06a29d-f782-4152-97ac-a4e1b7df965a', '488243256161730560', '9');
INSERT INTO `t_sys_permission_role` VALUES ('af4aac2c-c80f-46ae-825c-474b44a6739c', '488243256161730560', '4');
INSERT INTO `t_sys_permission_role` VALUES ('b126de28-be03-4ee9-8f2b-85056290be3a', '488243256161730560', '1');
INSERT INTO `t_sys_permission_role` VALUES ('b97f6991-7334-4638-89af-645adb5bf53a', '488243256161730560', '17');
INSERT INTO `t_sys_permission_role` VALUES ('ba1f1453-cb0b-498a-aaee-90234b465075', '488243256161730560', '486690002869157888');
INSERT INTO `t_sys_permission_role` VALUES ('e4db5fd2-844c-4d03-b2a6-b35b8d0a4798', '488243256161730560', '13');
INSERT INTO `t_sys_permission_role` VALUES ('e809e5d6-4e1b-4181-a9f8-800e1cc09509', '488243256161730560', '6');
INSERT INTO `t_sys_permission_role` VALUES ('f2b1b7b8-c440-4072-95ae-573ce7d4e518', '488243256161730560', '333');

-- ----------------------------
-- Table structure for `t_sys_premission`
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
INSERT INTO `t_sys_premission` VALUES ('111', '角色管理', '角色管理', null, '1', null, '0', null, null);
INSERT INTO `t_sys_premission` VALUES ('12', '角色删除', '角色删除', '/RoleController/remove', '9', 'system:role:remove', '2', 'entypo-trash', null);
INSERT INTO `t_sys_premission` VALUES ('13', '角色修改', '角色修改', '/RoleController/edit', '9', 'system:role:edit', '2', 'fa fa-wrench', null);
INSERT INTO `t_sys_premission` VALUES ('14', '权限展示', '权限展示', '/PremissionController/view', '222', 'system:premission:view', '1', 'fa fa-list-alt', null);
INSERT INTO `t_sys_premission` VALUES ('15', '权限集合', '权限集合', '/PremissionController/list', '14', 'system:premission:list', '2', '', null);
INSERT INTO `t_sys_premission` VALUES ('16', '权限添加', '权限添加', '/PremissionController/add', '14', 'system:premission:add', '2', 'entypo-plus-squared', null);
INSERT INTO `t_sys_premission` VALUES ('17', '权限删除', '权限删除', '/PremissionController/remove', '14', 'system:premission:remove', '2', 'entypo-trash', null);
INSERT INTO `t_sys_premission` VALUES ('18', '权限修改', '权限修改', '/PremissionController/edit', '14', 'system:premission:edit', '2', 'fa fa-wrench', null);
INSERT INTO `t_sys_premission` VALUES ('222', '权限管理', '权限管理', null, '1', null, '0', null, null);
INSERT INTO `t_sys_premission` VALUES ('333', '用户管理', '用户管理', '', '1', '', '0', null, null);
INSERT INTO `t_sys_premission` VALUES ('4', '用户展示', '用户展示', '/UserController/view', '333', 'system:user:view', '1', 'icon icon-user', '1');
INSERT INTO `t_sys_premission` VALUES ('486690002869157888', '用户密码修改', '用户密码修改', '/UserController/editPwd', '4', 'system:user:editPwd', '2', 'entypo-tools', '3');
INSERT INTO `t_sys_premission` VALUES ('5', '用户集合', '用户集合', '/UserController/list', '4', 'system:user:list', '2', '', null);
INSERT INTO `t_sys_premission` VALUES ('6', '用户添加', '用户添加', '/UserController/add', '4', 'system:user:add', '2', 'entypo-plus-squared', null);
INSERT INTO `t_sys_premission` VALUES ('7', '用户删除', '用户删除', '/UserController/remove', '4', 'system:user:remove', '2', 'entypo-trash', null);
INSERT INTO `t_sys_premission` VALUES ('8', '用户修改', '用户修改', '/UserController/edit', '4', 'system:user:edit', '2', 'fa fa-wrench', null);
INSERT INTO `t_sys_premission` VALUES ('9', '角色展示', '角色展示', '/RoleController/view', '111', 'system:role:view', '1', 'fa fa-list-alt', null);

-- ----------------------------
-- Table structure for `t_sys_role`
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

-- ----------------------------
-- Table structure for `t_sys_role_user`
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

-- ----------------------------
-- Table structure for `t_sys_user`
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
