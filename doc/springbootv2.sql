/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1_3306
Source Server Version : 50725
Source Host           : 127.0.0.1:3306
Source Database       : springbootv2

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-09-15 02:53:29
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
INSERT INTO `t_sys_dict_data` VALUES ('331043380933038080', '1', '一般', '1', 'sys_notice_type', '', 'info', 'Y', '0', 'admin', '2019-09-09 22:15:03', 'admin', '2019-09-09 22:15:43', '');
INSERT INTO `t_sys_dict_data` VALUES ('331043525137403904', '2', '重要', '2', 'sys_notice_type', '', 'important', 'N', '0', 'admin', '2019-09-09 22:15:37', 'admin', '2019-09-11 00:30:04', '');

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
INSERT INTO `t_sys_dict_type` VALUES ('6', '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-09-15 00:29:19', '通知类型列表');

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
INSERT INTO `t_sys_notice_user` VALUES ('330381411037089792', '330381411007729664', '1', '1');
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
INSERT INTO `t_sys_permission_role` VALUES ('0ba89ac3-c5b6-4d54-a2da-19648cde82b9', '488243256161730560', '610635950447394816');
INSERT INTO `t_sys_permission_role` VALUES ('0c8da973-0edc-4dac-8163-d1520c3218fd', '488243256161730560', '3303650266428252171');
INSERT INTO `t_sys_permission_role` VALUES ('12fe1ede-2eca-4c3d-aba3-59c6226d1e2c', '488243256161730560', '20');
INSERT INTO `t_sys_permission_role` VALUES ('17ec54d0-e584-4ecb-a030-2a433671c3bf', '488243256161730560', '3328572814798397451');
INSERT INTO `t_sys_permission_role` VALUES ('1c6ae0ec-1147-4f03-9ad4-a8e603feb21b', '488243256161730560', '575853607149109248');
INSERT INTO `t_sys_permission_role` VALUES ('1ecd7a47-3b56-441e-b91f-4e1cb702e0ec', '488243256161730560', '6189186317989969924');
INSERT INTO `t_sys_permission_role` VALUES ('22549992-7fc9-4d80-ad57-ca2d35def462', '488243256161730560', '610983815791247360');
INSERT INTO `t_sys_permission_role` VALUES ('2394423d-b31c-42ff-9a17-80a51dd5efd4', '488243256161730560', '5');
INSERT INTO `t_sys_permission_role` VALUES ('23dd18fd-f6e2-4b6a-895e-9a69a6ed1325', '488243256161730560', '3321578609202995211');
INSERT INTO `t_sys_permission_role` VALUES ('2775bb1a-9322-4d0e-aca6-9a93c3c2c395', '488243256161730560', '5946910264304599041');
INSERT INTO `t_sys_permission_role` VALUES ('2b64efbd-c6ee-49b6-ab00-28835fc556b2', '488243256161730560', '589559475422101504');
INSERT INTO `t_sys_permission_role` VALUES ('305589c4-79c2-4a70-b076-ba8d83fbfe91', '488243256161730560', '592067570522128384');
INSERT INTO `t_sys_permission_role` VALUES ('30ad43a4-eee1-4344-b858-f7d3d40a8527', '488243256161730560', '19');
INSERT INTO `t_sys_permission_role` VALUES ('376860b1-a5fd-4272-9812-13de98b42d92', '488243256161730560', '575851658483859456');
INSERT INTO `t_sys_permission_role` VALUES ('37d90940-638f-4c83-821f-f28577c9732b', '488243256161730560', '13');
INSERT INTO `t_sys_permission_role` VALUES ('3bc58d50-cc06-4ff4-bdaf-9649312edaed', '488243256161730560', '16');
INSERT INTO `t_sys_permission_role` VALUES ('3e0bf768-8ec2-4c9b-ad5a-d4bcb3050a96', '488243256161730560', '496127794879660032');
INSERT INTO `t_sys_permission_role` VALUES ('4124f237-3273-4030-a600-38569ff26276', '488243256161730560', '6192095214866268162');
INSERT INTO `t_sys_permission_role` VALUES ('421c7882-a700-4769-9537-899a45556e28', '488243256161730560', '575852089792528384');
INSERT INTO `t_sys_permission_role` VALUES ('44fe82fa-3b24-468b-92e8-4d92dd37ee85', '488243256161730560', '486690002869157888');
INSERT INTO `t_sys_permission_role` VALUES ('4580e707-debb-4bf8-a32c-ced25de250a7', '488243256161730560', '22');
INSERT INTO `t_sys_permission_role` VALUES ('4f3b74b4-a3ce-4ec0-9343-25adbc068b45', '488243256161730560', '5946910264304599043');
INSERT INTO `t_sys_permission_role` VALUES ('5130e1ca-709d-4b5f-a687-eaf087ea7804', '488243256161730560', '17');
INSERT INTO `t_sys_permission_role` VALUES ('564202dc-90b0-4566-bec4-29bd601d3634', '488243256161730560', '592167738407911424');
INSERT INTO `t_sys_permission_role` VALUES ('5707a240-b186-494b-ba70-df7f90918f7f', '488243256161730560', '332857281479839744');
INSERT INTO `t_sys_permission_role` VALUES ('57252840-3a12-405e-9236-f7393807cdca', '488243256161730560', '3328572814798397473');
INSERT INTO `t_sys_permission_role` VALUES ('5965be24-2989-45a6-8b48-66d77b0c8444', '488243256161730560', '6192095215075983363');
INSERT INTO `t_sys_permission_role` VALUES ('60b92a13-7a70-492f-9c24-07be074352c1', '488243256161730560', '15');
INSERT INTO `t_sys_permission_role` VALUES ('624f41c6-fc22-4657-b8c5-a79e14552fe6', '488243256161730560', '12');
INSERT INTO `t_sys_permission_role` VALUES ('63f50bbb-27c0-44f0-a4cd-6cc8bfb302b0', '488243256161730560', '8');
INSERT INTO `t_sys_permission_role` VALUES ('64043eeb-8566-4840-83cf-be755125c82c', '488243256161730560', '23');
INSERT INTO `t_sys_permission_role` VALUES ('647f8761-46fe-4a9c-b8b5-ae578f7094fa', '488243256161730560', '6');
INSERT INTO `t_sys_permission_role` VALUES ('649aa94a-07fc-4c8a-81fd-244fab3b337b', '488243256161730560', '610635485890478080');
INSERT INTO `t_sys_permission_role` VALUES ('693392d4-1b07-4142-9e6e-647aba8ec691', '488243256161730560', '587453033487532032');
INSERT INTO `t_sys_permission_role` VALUES ('6a04e796-e961-4819-b00d-c530c7305f39', '488243256161730560', '11');
INSERT INTO `t_sys_permission_role` VALUES ('76091e1b-7595-4954-8822-f7e830f30981', '488243256161730560', '496782496638173184');
INSERT INTO `t_sys_permission_role` VALUES ('7a1b3a76-2240-4c34-9019-65fd9f99a40c', '488243256161730560', '496126970468237312');
INSERT INTO `t_sys_permission_role` VALUES ('7f892e5b-28ee-4800-bf4e-e92d79741b77', '488243256161730560', '331778807298134016');
INSERT INTO `t_sys_permission_role` VALUES ('7f9b425e-070d-47a0-9377-dcf2295eabf2', '488243256161730560', '6189186317738311681');
INSERT INTO `t_sys_permission_role` VALUES ('810f0ba9-1ac1-4c97-94b6-cb150415e264', '488243256161730560', '619836559427895296');
INSERT INTO `t_sys_permission_role` VALUES ('837e3de1-e5d0-4200-bde8-4260e44ddd55', '488243256161730560', '3303650266428252182');
INSERT INTO `t_sys_permission_role` VALUES ('877c65da-e14e-48c2-afa4-1f7081c0ba24', '488243256161730560', '14');
INSERT INTO `t_sys_permission_role` VALUES ('8a79db5c-70d8-4bd5-96a2-980f848f6347', '488243256161730560', '6189186317948026883');
INSERT INTO `t_sys_permission_role` VALUES ('8d4507a1-33a2-4bdd-9c7d-f29de07f49d8', '488243256161730560', '5946910264304599042');
INSERT INTO `t_sys_permission_role` VALUES ('8e614261-9827-4eee-8ffe-300c848cb7a5', '488243256161730560', '618918631769636864');
INSERT INTO `t_sys_permission_role` VALUES ('8feec57c-867f-47eb-9b2b-f453c355ce01', '488243256161730560', '9');
INSERT INTO `t_sys_permission_role` VALUES ('906a163e-68d1-4412-8438-a33321856325', '488243256161730560', '592059865673760768');
INSERT INTO `t_sys_permission_role` VALUES ('916460d4-2878-4010-82e3-f60bf43028cf', '488243256161730560', '3321578609202995244');
INSERT INTO `t_sys_permission_role` VALUES ('91cab476-a39e-4111-8f7e-cd3d404bd5ab', '488243256161730560', '18');
INSERT INTO `t_sys_permission_role` VALUES ('9405d8db-125f-4fc6-96ca-d51f816fc790', '488243256161730560', '7');
INSERT INTO `t_sys_permission_role` VALUES ('9aa32b19-3502-4957-ade0-83ac50da5dc2', '488243256161730560', '332157860920299520');
INSERT INTO `t_sys_permission_role` VALUES ('9bb05ae8-cde0-4567-8384-889e12126f84', '488243256161730560', '3303650266428252193');
INSERT INTO `t_sys_permission_role` VALUES ('a113811a-6fa9-43aa-9384-45e49601f918', '488243256161730560', '496127240363311104');
INSERT INTO `t_sys_permission_role` VALUES ('a1365e41-ff7f-4ac6-9349-45bec422dc7d', '488243256161730560', '3321578609202995233');
INSERT INTO `t_sys_permission_role` VALUES ('a4251b86-a853-4d81-bded-b91306e99de7', '488243256161730560', '6192095215075983364');
INSERT INTO `t_sys_permission_role` VALUES ('a4d92caf-7334-407b-a9fc-2a7b972b2248', '488243256161730560', '583063272123531264');
INSERT INTO `t_sys_permission_role` VALUES ('a523acb1-13c4-4dea-88de-1c2a1628694e', '488243256161730560', '5946910264304599044');
INSERT INTO `t_sys_permission_role` VALUES ('b7a39152-694b-4d14-9d71-c69f84a05833', '488243256161730560', '21');
INSERT INTO `t_sys_permission_role` VALUES ('b9a96bc2-c831-4cc1-b0ca-aa11a86e4f51', '488243256161730560', '581541547099553792');
INSERT INTO `t_sys_permission_role` VALUES ('c36e93d3-b08a-4cfc-81dd-2c7c8629a603', '488243256161730560', '617751079701970944');
INSERT INTO `t_sys_permission_role` VALUES ('c59d29ad-67c6-408c-b0d2-857bde42b6f7', '488243256161730560', '589559916704825344');
INSERT INTO `t_sys_permission_role` VALUES ('c642c5f6-4b80-4de2-b277-b32672388290', '488243256161730560', '594691026430459904');
INSERT INTO `t_sys_permission_role` VALUES ('c7fed677-92ed-41ec-9035-14d64e5ba172', '488243256161730560', '3321578609202995222');
INSERT INTO `t_sys_permission_role` VALUES ('c7ffc515-ac7c-4afd-8643-a77df894ba51', '488243256161730560', '1');
INSERT INTO `t_sys_permission_role` VALUES ('ca6b9e7d-9ccc-4a64-ab37-dfcb49f1f767', '488243256161730560', '586003694080753664');
INSERT INTO `t_sys_permission_role` VALUES ('ce121e75-7fba-42b4-a60e-a03f1044956b', '488243256161730560', '3303650266428252204');
INSERT INTO `t_sys_permission_role` VALUES ('e4f82682-4ce8-4876-a2e5-91e3e081d825', '488243256161730560', '4');
INSERT INTO `t_sys_permission_role` VALUES ('e67f687a-d8b4-4739-a2ee-2a752fd3a0f7', '488243256161730560', '330365026642825216');
INSERT INTO `t_sys_permission_role` VALUES ('f1127e67-9b12-42e4-ae36-285b11b52186', '488243256161730560', '10');
INSERT INTO `t_sys_permission_role` VALUES ('f7e57952-eae7-4807-8a0b-ec0fcee0cd6b', '488243256161730560', '617766548966211584');
INSERT INTO `t_sys_permission_role` VALUES ('f7f31811-d7bc-4c38-aeb8-d4255c0b455e', '488243256161730560', '589559748521623552');
INSERT INTO `t_sys_permission_role` VALUES ('f959be52-6607-43fe-b283-2be06b666599', '488243256161730560', '6189186317948026882');
INSERT INTO `t_sys_permission_role` VALUES ('f97eaf39-539a-4a80-9b68-51c692730dc9', '488243256161730560', '6192095214866268161');

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
  `visible` int(255) DEFAULT NULL COMMENT '是否可见',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限表';

-- ----------------------------
-- Records of t_sys_premission
-- ----------------------------
INSERT INTO `t_sys_premission` VALUES ('1', '首页', '首页', '#', '0', '0', '#', '0', 'fa fa-home', '1', '0');
INSERT INTO `t_sys_premission` VALUES ('10', '角色集合', '角色集合', '/RoleController/list', '0', '9', 'system:role:list', '2', '', null, '0');
INSERT INTO `t_sys_premission` VALUES ('11', '角色添加', '角色添加', '/RoleController/add', '0', '9', 'system:role:add', '2', 'entypo-plus-squared', null, '0');
INSERT INTO `t_sys_premission` VALUES ('12', '角色删除', '角色删除', '/RoleController/remove', '0', '9', 'system:role:remove', '2', 'entypo-trash', null, '0');
INSERT INTO `t_sys_premission` VALUES ('13', '角色修改', '角色修改', '/RoleController/edit', '0', '9', 'system:role:edit', '2', 'fa fa-wrench', null, '0');
INSERT INTO `t_sys_premission` VALUES ('14', '权限展示', '权限展示', '/PremissionController/view', '0', '592059865673760768', 'system:premission:view', '1', 'fa fa-key', '3', '0');
INSERT INTO `t_sys_premission` VALUES ('15', '权限集合', '权限集合', '/PremissionController/list', '0', '14', 'system:premission:list', '2', '', null, '0');
INSERT INTO `t_sys_premission` VALUES ('16', '权限添加', '权限添加', '/PremissionController/add', '0', '14', 'system:premission:add', '2', 'entypo-plus-squared', null, '0');
INSERT INTO `t_sys_premission` VALUES ('17', '权限删除', '权限删除', '/PremissionController/remove', '0', '14', 'system:premission:remove', '2', 'entypo-trash', null, '0');
INSERT INTO `t_sys_premission` VALUES ('18', '权限修改', '权限修改', '/PremissionController/edit', '0', '14', 'system:premission:edit', '2', 'fa fa-wrench', null, '0');
INSERT INTO `t_sys_premission` VALUES ('19', '文件展示', '文件展示', '/FileController/view', '0', '592059865673760768', 'system:file:view', '1', 'fa fa-file-image-o', '4', '0');
INSERT INTO `t_sys_premission` VALUES ('20', '文件添加', '文件添加', '/FileController/add', '0', '19', 'system:file:add', '2', 'entypo-plus-squared', null, '0');
INSERT INTO `t_sys_premission` VALUES ('21', '文件删除', '文件删除', '/FileController/remove', '0', '19', 'system:file:remove', '2', 'entypo-trash', null, '0');
INSERT INTO `t_sys_premission` VALUES ('22', '文件修改', '文件修改', '/FileController/edit', '0', '19', 'system:file:edit', '2', 'fa fa-wrench', null, '0');
INSERT INTO `t_sys_premission` VALUES ('23', '文件集合', '文件集合', '/FileController/list', '0', '19', 'system:file:list', '2', '', null, '0');
INSERT INTO `t_sys_premission` VALUES ('330365026642825216', '公告管理', '公告展示', '/SysNoticeController/view', '0', '592059865673760768', 'gen:sysNotice:view', '1', 'fa fa-telegram', '10', '0');
INSERT INTO `t_sys_premission` VALUES ('3303650266428252171', '公告集合', '公告集合', '/SysNoticeController/list', '0', '330365026642825216', 'gen:sysNotice:list', '2', '', null, '0');
INSERT INTO `t_sys_premission` VALUES ('3303650266428252182', '公告添加', '公告添加', '/SysNoticeController/add', '0', '330365026642825216', 'gen:sysNotice:add', '2', 'entypo-plus-squared', null, '0');
INSERT INTO `t_sys_premission` VALUES ('3303650266428252193', '公告删除', '公告删除', '/SysNoticeController/remove', '0', '330365026642825216', 'gen:sysNotice:remove', '2', 'entypo-trash', null, '0');
INSERT INTO `t_sys_premission` VALUES ('3303650266428252204', '公告修改', '公告修改', '/SysNoticeController/edit', '0', '330365026642825216', 'gen:sysNotice:edit', '2', 'fa fa-wrench', null, '0');
INSERT INTO `t_sys_premission` VALUES ('331778807298134016', '定时器表达式', '', '/quartz/view', '0', '592059865673760768', '#', '1', 'fa fa-flash', '12', '0');
INSERT INTO `t_sys_premission` VALUES ('332157860920299520', '定时任务', '定时任务调度表展示', '/SysQuartzJobController/view', '0', '592059865673760768', 'gen:sysQuartzJob:view', '1', 'fa fa-hourglass-1', '13', '0');
INSERT INTO `t_sys_premission` VALUES ('3321578609202995211', '定时任务调度表集合', '定时任务调度表集合', '/SysQuartzJobController/list', '0', '332157860920299520', 'gen:sysQuartzJob:list', '2', '', null, '0');
INSERT INTO `t_sys_premission` VALUES ('3321578609202995222', '定时任务调度表添加', '定时任务调度表添加', '/SysQuartzJobController/add', '0', '332157860920299520', 'gen:sysQuartzJob:add', '2', 'entypo-plus-squared', null, '0');
INSERT INTO `t_sys_premission` VALUES ('3321578609202995233', '定时任务调度表删除', '定时任务调度表删除', '/SysQuartzJobController/remove', '0', '332157860920299520', 'gen:sysQuartzJob:remove', '2', 'entypo-trash', null, '0');
INSERT INTO `t_sys_premission` VALUES ('3321578609202995244', '定时任务调度表修改', '定时任务调度表修改', '/SysQuartzJobController/edit', '0', '332157860920299520', 'gen:sysQuartzJob:edit', '2', 'fa fa-wrench', null, '0');
INSERT INTO `t_sys_premission` VALUES ('332857281479839744', '定时任务日志', '定时任务日志', '/SysQuartzJobLogController/view', '0', '592059865673760768', 'gen:sysQuartzJobLog:view', '1', 'fa fa-database', '14', '0');
INSERT INTO `t_sys_premission` VALUES ('3328572814798397451', '定时任务调度日志表集合', '定时任务调度日志表集合', '/SysQuartzJobLogController/list', '0', '332857281479839744', 'gen:sysQuartzJobLog:list', '2', '', null, '0');
INSERT INTO `t_sys_premission` VALUES ('3328572814798397473', '定时任务调度日志表删除', '定时任务调度日志表删除', '/SysQuartzJobLogController/remove', '0', '332857281479839744', 'gen:sysQuartzJobLog:remove', '2', 'entypo-trash', null, '0');
INSERT INTO `t_sys_premission` VALUES ('4', '用户管理', '用户展示', '/UserController/view', '0', '592059865673760768', 'system:user:view', '1', 'icon icon-user', '1', '0');
INSERT INTO `t_sys_premission` VALUES ('486690002869157888', '用户密码修改', '用户密码修改', '/UserController/editPwd', '0', '4', 'system:user:editPwd', '2', 'entypo-tools', '3', '0');
INSERT INTO `t_sys_premission` VALUES ('496126970468237312', '日志展示', '日志管理', '/LogController/view', '0', '592059865673760768', 'system:log:view', '1', 'fa fa-info', '9', '0');
INSERT INTO `t_sys_premission` VALUES ('496127240363311104', '日志删除', '日志删除', '/LogController/remove', '0', '496126970468237312', 'system:log:remove', '2', 'entypo-trash', null, '0');
INSERT INTO `t_sys_premission` VALUES ('496127794879660032', '日志集合', '日志集合', '/LogController/list', '0', '496126970468237312', 'system:log:list', '2', null, null, '0');
INSERT INTO `t_sys_premission` VALUES ('496782496638173184', '系统设置', '后台设置', null, '0', '1', null, '0', 'fa fa-gear', '3', '0');
INSERT INTO `t_sys_premission` VALUES ('5', '用户集合', '用户集合', '/UserController/list', '0', '4', 'system:user:list', '2', '', null, '0');
INSERT INTO `t_sys_premission` VALUES ('575851658483859456', '代码生成旧', '代码生成1', '#', '0', '617751079701970944', '#', '1', 'fa fa-ra', '2', '0');
INSERT INTO `t_sys_premission` VALUES ('575852089792528384', '代码管理', '代码生成', '/generatorController/view', '0', '575851658483859456', 'system:generator:view', '1', 'fa fa-bug', '1', '0');
INSERT INTO `t_sys_premission` VALUES ('575853607149109248', '代码集合', '代码集合', '/generatorController/list', '0', '575852089792528384', 'system:generator:list', '2', null, null, '0');
INSERT INTO `t_sys_premission` VALUES ('581541547099553792', 'druid监控', 'druid监控', '/druid/', '0', '617766548966211584', 'user:list', '1', 'fa fa-line-chart', '6', '0');
INSERT INTO `t_sys_premission` VALUES ('583063272123531264', 'API文档', 'API文档', '/swagger-ui.html', '1', '617766548966211584', '--', '1', 'fa fa-font', '8', '0');
INSERT INTO `t_sys_premission` VALUES ('586003694080753664', '表单构建', '表单构建', '/ToolController/view', '0', '617766548966211584', 'system:tool:view', '1', 'fa fa-list-alt', '5', '0');
INSERT INTO `t_sys_premission` VALUES ('587453033487532032', '后台模板', '后台模板', '/static/admin/bootstarp/index.html', '1', '617766548966211584', 'system:htmb:view', '1', 'fa fa-telegram', '9', '0');
INSERT INTO `t_sys_premission` VALUES ('589559475422101504', '测试目录', '测试目录', null, '0', '1', null, '0', 'fa fa-etsy', '5', '0');
INSERT INTO `t_sys_premission` VALUES ('589559748521623552', '一级菜单', '测试菜单', '#', '0', '589559475422101504', '#', '1', 'fa fa-address-book', null, '0');
INSERT INTO `t_sys_premission` VALUES ('589559916704825344', '二级菜单', '二级菜单', '#', '0', '589559748521623552', '#', '1', 'fa fa-address-book', '1', '0');
INSERT INTO `t_sys_premission` VALUES ('592059865673760768', '系统管理', '后台管理', '#', '0', '496782496638173184', '#', '1', 'fa fa-home', '1', '0');
INSERT INTO `t_sys_premission` VALUES ('592067570522128384', '测试跳转', '测试跳转', 'http://www.baidu.com', '1', '589559748521623552', '#', '1', 'fa fa-address-book', null, '0');
INSERT INTO `t_sys_premission` VALUES ('592167738407911424', '系统监控', '系统监控', '/ServiceController/view', '0', '617766548966211584', 'system:service:view', '1', 'fa fa-video-camera', '7', '0');
INSERT INTO `t_sys_premission` VALUES ('594691026430459904', '电子邮件管理', '电子邮件展示', '/EmailController/view', '0', '592059865673760768', 'system:email:view', '1', 'fa fa-envelope', '8', '0');
INSERT INTO `t_sys_premission` VALUES ('5946910264304599041', '电子邮件集合', '电子邮件集合', '/EmailController/list', '0', '594691026430459904', 'system:email:list', '2', '', null, '0');
INSERT INTO `t_sys_premission` VALUES ('5946910264304599042', '电子邮件添加', '电子邮件添加', '/EmailController/add', '0', '594691026430459904', 'system:email:add', '2', 'entypo-plus-squared', null, '0');
INSERT INTO `t_sys_premission` VALUES ('5946910264304599043', '电子邮件删除', '电子邮件删除', '/EmailController/remove', '0', '594691026430459904', 'system:email:remove', '2', 'entypo-trash', null, '0');
INSERT INTO `t_sys_premission` VALUES ('5946910264304599044', '电子邮件修改', '电子邮件修改', '/EmailController/edit', '0', '594691026430459904', 'system:email:edit', '2', 'fa fa-wrench', null, '0');
INSERT INTO `t_sys_premission` VALUES ('6', '用户添加', '用户添加', '/UserController/add', '0', '4', 'system:user:add', '2', 'entypo-plus-squared', null, '0');
INSERT INTO `t_sys_premission` VALUES ('610635485890478080', '代码生成新', '代码生成2', '#', '0', '617751079701970944', '#', '1', 'fa fa-blind', '1', '0');
INSERT INTO `t_sys_premission` VALUES ('610635950447394816', '全局配置', '', '/autoCodeController/global', '0', '610635485890478080', 'system:autocode:global', '1', 'fa fa-university', null, '0');
INSERT INTO `t_sys_premission` VALUES ('610983815791247360', '单表生成', '', '/autoCodeController/one', '0', '610635485890478080', 'system:autocode:one', '1', 'fa fa-hand-peace-o', null, '0');
INSERT INTO `t_sys_premission` VALUES ('617751079701970944', '代码生成', '代码生成', null, '0', '1', null, '0', 'fa fa-500px', '4', '0');
INSERT INTO `t_sys_premission` VALUES ('617766548966211584', '系统工具', '系统工具', '#', '0', '496782496638173184', '#', '1', 'fa fa-th-large', '2', '0');
INSERT INTO `t_sys_premission` VALUES ('618918631769636864', '字典管理', '字典类型表展示', '/DictTypeController/view', '0', '592059865673760768', 'system:dictType:view', '1', 'fa fa-puzzle-piece', '11', '0');
INSERT INTO `t_sys_premission` VALUES ('6189186317738311681', '字典类型表集合', '字典类型表集合', '/DictTypeController/list', '0', '618918631769636864', 'system:dictType:list', '2', null, null, '0');
INSERT INTO `t_sys_premission` VALUES ('6189186317948026882', '字典类型表添加', '字典类型表添加', '/DictTypeController/add', '0', '618918631769636864', 'system:dictType:add', '2', null, null, '0');
INSERT INTO `t_sys_premission` VALUES ('6189186317948026883', '字典类型表删除', '字典类型表删除', '/DictTypeController/remove', '0', '618918631769636864', 'system:dictType:remove', '2', null, null, '0');
INSERT INTO `t_sys_premission` VALUES ('6189186317989969924', '字典类型表修改', '字典类型表修改', '/DictTypeController/edit', '0', '618918631769636864', 'system:dictType:edit', '2', null, null, '0');
INSERT INTO `t_sys_premission` VALUES ('6192095214866268161', '字典数据表集合', '字典数据表集合', '/DictDataController/list', '0', '618918631769636864', 'system:dictData:list', '2', null, null, '0');
INSERT INTO `t_sys_premission` VALUES ('6192095214866268162', '字典数据表添加', '字典数据表添加', '/DictDataController/add', '0', '618918631769636864', 'system:dictData:add', '2', null, null, '0');
INSERT INTO `t_sys_premission` VALUES ('6192095215075983363', '字典数据表删除', '字典数据表删除', '/DictDataController/remove', '0', '618918631769636864', 'system:dictData:remove', '2', null, null, '0');
INSERT INTO `t_sys_premission` VALUES ('6192095215075983364', '字典数据表修改', '字典数据表修改', '/DictDataController/edit', '0', '618918631769636864', 'system:dictData:edit', '2', null, null, '0');
INSERT INTO `t_sys_premission` VALUES ('619836559427895296', '字典数据视图', '字典数据视图', '/DictDataController/view', '0', '618918631769636864', 'system:dictData:view', '2', null, null, '0');
INSERT INTO `t_sys_premission` VALUES ('7', '用户删除', '用户删除', '/UserController/remove', '0', '4', 'system:user:remove', '2', 'entypo-trash', null, '0');
INSERT INTO `t_sys_premission` VALUES ('8', '用户修改', '用户修改', '/UserController/edit', '0', '4', 'system:user:edit', '2', 'fa fa-wrench', null, '0');
INSERT INTO `t_sys_premission` VALUES ('9', '角色管理', '角色展示', '/RoleController/view', '0', '592059865673760768', 'system:role:view', '1', 'fa fa-group', '2', '0');

-- ----------------------------
-- Table structure for t_sys_quartz_job
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_quartz_job`;
CREATE TABLE `t_sys_quartz_job` (
  `id` varchar(255) NOT NULL COMMENT '日志id',
  `job_name` varchar(255) DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(255) DEFAULT NULL COMMENT '任务组名',
  `invoke_target` varchar(255) DEFAULT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT NULL COMMENT 'cron执行表达式',
  `misfire_policy` varchar(255) DEFAULT NULL COMMENT 'cron计划策略',
  `concurrent` varchar(255) DEFAULT NULL COMMENT '是否并发执行（0允许 1禁止）',
  `status` int(11) DEFAULT NULL COMMENT '任务状态（0正常 1暂停）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务调度表';

-- ----------------------------
-- Records of t_sys_quartz_job
-- ----------------------------
INSERT INTO `t_sys_quartz_job` VALUES ('332182389491109888', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', '*/10 * * * * ?', '12', '1', '1');

-- ----------------------------
-- Table structure for t_sys_quartz_job_log
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_quartz_job_log`;
CREATE TABLE `t_sys_quartz_job_log` (
  `id` varchar(255) NOT NULL COMMENT '主键',
  `job_name` varchar(255) DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(255) DEFAULT NULL COMMENT '任务组名',
  `invoke_target` varchar(255) DEFAULT NULL COMMENT '调用目标字符串',
  `job_message` varchar(255) DEFAULT NULL COMMENT '日志信息',
  `status` int(11) DEFAULT NULL COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(255) DEFAULT NULL COMMENT '异常信息',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of t_sys_quartz_job_log
-- ----------------------------

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
