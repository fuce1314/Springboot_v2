/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1_3306
Source Server Version : 50725
Source Host           : 127.0.0.1:3306
Source Database       : springbootv2

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-11-21 00:26:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_sys_area
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_area`;
CREATE TABLE `t_sys_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增列',
  `area_code` varchar(40) NOT NULL COMMENT '区代码',
  `city_code` varchar(40) DEFAULT NULL COMMENT '父级市代码',
  `area_name` varchar(40) NOT NULL COMMENT '市名称',
  `short_name` varchar(20) NOT NULL COMMENT '简称',
  `lng` varchar(20) DEFAULT NULL COMMENT '经度',
  `lat` varchar(20) DEFAULT NULL COMMENT '纬度',
  `sort` int(6) DEFAULT NULL COMMENT '排序',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改时间',
  `memo` varchar(250) DEFAULT NULL COMMENT '备注',
  `data_state` int(11) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `Index_1` (`area_code`)
) ENGINE=InnoDB AUTO_INCREMENT=2013 DEFAULT CHARSET=utf8 COMMENT='地区设置';

-- ----------------------------
-- Records of t_sys_area
-- ----------------------------
INSERT INTO `t_sys_area` VALUES ('1975', '500101', '500100', '万州区', '万州', '108.380249', '30.807808', '28', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');
INSERT INTO `t_sys_area` VALUES ('1976', '500102', '500100', '涪陵区', '涪陵', '107.394905', '29.703651', '11', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');
INSERT INTO `t_sys_area` VALUES ('1977', '500103', '500100', '渝中区', '渝中', '106.562881', '29.556742', '37', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');
INSERT INTO `t_sys_area` VALUES ('1978', '500104', '500100', '大渡口区', '大渡口', '106.48613', '29.481003', '6', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');
INSERT INTO `t_sys_area` VALUES ('1979', '500105', '500100', '江北区', '江北', '106.532845', '29.575352', '13', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');
INSERT INTO `t_sys_area` VALUES ('1980', '500106', '500100', '沙坪坝区', '沙坪坝', '106.454201', '29.541224', '24', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');
INSERT INTO `t_sys_area` VALUES ('1981', '500107', '500100', '九龙坡区', '九龙坡', '106.480988', '29.523493', '15', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');
INSERT INTO `t_sys_area` VALUES ('1982', '500108', '500100', '南岸区', '南岸', '106.560814', '29.523993', '18', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');
INSERT INTO `t_sys_area` VALUES ('1983', '500109', '500100', '北碚区', '北碚', '106.437866', '29.82543', '2', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');
INSERT INTO `t_sys_area` VALUES ('1984', '500112', '500100', '渝北区', '渝北', '106.512848', '29.601452', '35', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');
INSERT INTO `t_sys_area` VALUES ('1985', '500113', '500100', '巴南区', '巴南', '106.519424', '29.38192', '1', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');
INSERT INTO `t_sys_area` VALUES ('1986', '500114', '500100', '黔江区', '黔江', '108.782578', '29.527548', '21', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');
INSERT INTO `t_sys_area` VALUES ('1987', '500115', '500100', '长寿区', '长寿', '107.074852', '29.833672', '4', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');
INSERT INTO `t_sys_area` VALUES ('1988', '500222', '500100', '綦江区', '綦江', '106.651421', '29.028091', '22', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');
INSERT INTO `t_sys_area` VALUES ('1989', '500223', '500100', '潼南县', '潼南', '105.84182', '30.189554', '27', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');
INSERT INTO `t_sys_area` VALUES ('1990', '500224', '500100', '铜梁县', '铜梁', '106.054947', '29.839945', '26', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');
INSERT INTO `t_sys_area` VALUES ('1991', '500225', '500100', '大足区', '大足', '105.715317', '29.700499', '7', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');
INSERT INTO `t_sys_area` VALUES ('1992', '500226', '500100', '荣昌县', '荣昌', '105.594063', '29.403627', '23', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');
INSERT INTO `t_sys_area` VALUES ('1993', '500227', '500100', '璧山县', '璧山', '106.231125', '29.59358', '3', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');
INSERT INTO `t_sys_area` VALUES ('1994', '500228', '500100', '梁平县', '梁平', '107.800034', '30.672169', '17', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');
INSERT INTO `t_sys_area` VALUES ('1995', '500229', '500100', '城口县', '城口', '108.664902', '31.946293', '5', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');
INSERT INTO `t_sys_area` VALUES ('1996', '500230', '500100', '丰都县', '丰都', '107.732483', '29.866425', '9', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');
INSERT INTO `t_sys_area` VALUES ('1997', '500231', '500100', '垫江县', '垫江', '107.348694', '30.330011', '8', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');
INSERT INTO `t_sys_area` VALUES ('1998', '500232', '500100', '武隆县', '武隆', '107.756554', '29.323759', '29', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');
INSERT INTO `t_sys_area` VALUES ('1999', '500233', '500100', '忠县', '忠县', '108.037521', '30.291536', '38', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');
INSERT INTO `t_sys_area` VALUES ('2000', '500234', '500100', '开县', '开县', '108.413315', '31.167734', '16', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');
INSERT INTO `t_sys_area` VALUES ('2001', '500235', '500100', '云阳县', '云阳', '108.697701', '30.930529', '36', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');
INSERT INTO `t_sys_area` VALUES ('2002', '500236', '500100', '奉节县', '奉节', '109.465775', '31.019966', '10', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');
INSERT INTO `t_sys_area` VALUES ('2003', '500237', '500100', '巫山县', '巫山', '109.878929', '31.074842', '30', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');
INSERT INTO `t_sys_area` VALUES ('2004', '500238', '500100', '巫溪县', '巫溪', '109.628914', '31.396601', '31', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');
INSERT INTO `t_sys_area` VALUES ('2005', '500240', '500100', '石柱土家族自治县', '石柱', '108.11245', '29.998529', '25', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');
INSERT INTO `t_sys_area` VALUES ('2006', '500241', '500100', '秀山土家族苗族自治县', '秀山', '108.99604', '28.444773', '32', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');
INSERT INTO `t_sys_area` VALUES ('2007', '500242', '500100', '酉阳土家族苗族自治县', '酉阳', '108.767204', '28.839828', '34', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');
INSERT INTO `t_sys_area` VALUES ('2008', '500243', '500100', '彭水苗族土家族自治县', '彭水', '108.16655', '29.293856', '20', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');
INSERT INTO `t_sys_area` VALUES ('2009', '500381', '500100', '江津区', '江津', '106.253159', '29.283386', '14', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');
INSERT INTO `t_sys_area` VALUES ('2010', '500382', '500100', '合川区', '合川', '106.265556', '29.990993', '12', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');
INSERT INTO `t_sys_area` VALUES ('2011', '500383', '500100', '永川区', '永川', '105.894714', '29.348747', '33', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');
INSERT INTO `t_sys_area` VALUES ('2012', '500384', '500100', '南川区', '南川', '107.098152', '29.156647', '19', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');

-- ----------------------------
-- Table structure for t_sys_city
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_city`;
CREATE TABLE `t_sys_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增列',
  `city_code` varchar(40) NOT NULL COMMENT '市代码',
  `city_name` varchar(40) NOT NULL COMMENT '市名称',
  `short_name` varchar(20) NOT NULL COMMENT '简称',
  `province_code` varchar(40) DEFAULT NULL COMMENT '省代码',
  `lng` varchar(20) DEFAULT NULL COMMENT '经度',
  `lat` varchar(20) DEFAULT NULL COMMENT '纬度',
  `sort` int(6) DEFAULT NULL COMMENT '排序',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改时间',
  `memo` varchar(250) DEFAULT NULL COMMENT '备注',
  `data_state` int(11) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `Index_1` (`city_code`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8 COMMENT='城市设置';

-- ----------------------------
-- Records of t_sys_city
-- ----------------------------
INSERT INTO `t_sys_city` VALUES ('255', '500100', '重庆市', '重庆', '500000', '106.504959', '29.533155', '1', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');

-- ----------------------------
-- Table structure for t_sys_datas
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_datas`;
CREATE TABLE `t_sys_datas` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `file_path` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '文件地址',
  `file_suffix` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '后缀',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='文件表存储表';

-- ----------------------------
-- Records of t_sys_datas
-- ----------------------------
INSERT INTO `t_sys_datas` VALUES ('354984152409444352', 'static/images_upload/655e075657837d5f18a8371b66b8a230.jpg', '.jpg');

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
INSERT INTO `t_sys_dict_data` VALUES ('340080322395901952', '1', '开启', '0', 'sys_province_state', '', 'info', 'Y', '0', 'admin', '2019-10-04 20:44:37', 'admin', '2019-10-04 20:46:41', '');
INSERT INTO `t_sys_dict_data` VALUES ('340080779201744896', '2', '关闭', '-1', 'sys_province_state', '', 'important', 'Y', '0', 'admin', '2019-10-04 20:46:26', 'admin', '2019-10-04 20:46:45', '');

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
INSERT INTO `t_sys_dict_type` VALUES ('340079827459641344', '省份状态', 'sys_province_state', '0', 'admin', '2019-10-04 20:42:39', '', '2019-10-04 20:42:39', '省份状态');
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
INSERT INTO `t_sys_file` VALUES ('354984159875305472', '3333', '1', 'admin', '2019-11-14 23:47:09', null, null, null);

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
INSERT INTO `t_sys_file_data` VALUES ('354984159875305473', '354984152409444352', '354984159875305472');

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
INSERT INTO `t_sys_notice_user` VALUES ('354984345649418240', '354984345632641024', '1', '1');

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
INSERT INTO `t_sys_oper_log` VALUES ('353711021405376512', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"admin1111\"],\"password\":[\"admin11111111111111\"],\"nickname\":[\"111111111111\"],\"roles\":[\"488289006124007424\"]}', null, '2019-11-11');
INSERT INTO `t_sys_oper_log` VALUES ('353711251710414848', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"admin22\"],\"password\":[\"admin22\"],\"nickname\":[\"222\"]}', null, '2019-11-11');
INSERT INTO `t_sys_oper_log` VALUES ('353711483206635520', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"admin1111111111111\"],\"password\":[\"admin1111111111111\"],\"nickname\":[\"111\"]}', null, '2019-11-11');
INSERT INTO `t_sys_oper_log` VALUES ('353890395106709504', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/springboot_v2/UserController/add', '{\"username\":[\"admin2\"],\"password\":[\"admin2\"],\"nickname\":[\"2\"]}', null, '2019-11-11');
INSERT INTO `t_sys_oper_log` VALUES ('354984005894017024', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"admin22\"],\"password\":[\"admin22\"],\"nickname\":[\"222\"],\"roles\":[\"488243256161730560\"]}', null, '2019-11-14');
INSERT INTO `t_sys_oper_log` VALUES ('354988722611163136', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"admin222\"],\"password\":[\"admin22\"],\"nickname\":[\"22222\"],\"roles\":[\"488243256161730560\"]}', null, '2019-11-15');
INSERT INTO `t_sys_oper_log` VALUES ('354989789822455808', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"admin33\"],\"password\":[\"admin33\"],\"nickname\":[\"333\"],\"roles\":[\"488305788310257664\"]}', null, '2019-11-15');

-- ----------------------------
-- Table structure for t_sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_permission`;
CREATE TABLE `t_sys_permission` (
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
-- Records of t_sys_permission
-- ----------------------------
INSERT INTO `t_sys_permission` VALUES ('1', '首页', '首页', '#', '0', '0', '#', '0', 'fa fa-home', '1', '0');
INSERT INTO `t_sys_permission` VALUES ('10', '角色集合', '角色集合', '/RoleController/list', '0', '9', 'system:role:list', '2', '', null, '0');
INSERT INTO `t_sys_permission` VALUES ('11', '角色添加', '角色添加', '/RoleController/add', '0', '9', 'system:role:add', '2', 'entypo-plus-squared', null, '0');
INSERT INTO `t_sys_permission` VALUES ('12', '角色删除', '角色删除', '/RoleController/remove', '0', '9', 'system:role:remove', '2', 'entypo-trash', null, '0');
INSERT INTO `t_sys_permission` VALUES ('13', '角色修改', '角色修改', '/RoleController/edit', '0', '9', 'system:role:edit', '2', 'fa fa-wrench', null, '0');
INSERT INTO `t_sys_permission` VALUES ('14', '权限展示', '权限展示', '/PermissionController/view', '0', '592059865673760768', 'system:permission:view', '1', 'fa fa-key', '3', '0');
INSERT INTO `t_sys_permission` VALUES ('15', '权限集合', '权限集合', '/PermissionController/list', '0', '14', 'system:permission:list', '2', '', null, '0');
INSERT INTO `t_sys_permission` VALUES ('16', '权限添加', '权限添加', '/permissionController/add', '0', '14', 'system:permission:add', '2', 'entypo-plus-squared', null, '0');
INSERT INTO `t_sys_permission` VALUES ('17', '权限删除', '权限删除', '/PermissionController/remove', '0', '14', 'system:permission:remove', '2', 'entypo-trash', null, '0');
INSERT INTO `t_sys_permission` VALUES ('18', '权限修改', '权限修改', '/PermissionController/edit', '0', '14', 'system:permission:edit', '2', 'fa fa-wrench', null, '0');
INSERT INTO `t_sys_permission` VALUES ('19', '文件展示', '文件展示', '/FileController/view', '0', '592059865673760768', 'system:file:view', '1', 'fa fa-file-image-o', '4', '0');
INSERT INTO `t_sys_permission` VALUES ('20', '文件添加', '文件添加', '/FileController/add', '0', '19', 'system:file:add', '2', 'entypo-plus-squared', null, '0');
INSERT INTO `t_sys_permission` VALUES ('21', '文件删除', '文件删除', '/FileController/remove', '0', '19', 'system:file:remove', '2', 'entypo-trash', null, '0');
INSERT INTO `t_sys_permission` VALUES ('22', '文件修改', '文件修改', '/FileController/edit', '0', '19', 'system:file:edit', '2', 'fa fa-wrench', null, '0');
INSERT INTO `t_sys_permission` VALUES ('23', '文件集合', '文件集合', '/FileController/list', '0', '19', 'system:file:list', '2', '', null, '0');
INSERT INTO `t_sys_permission` VALUES ('330365026642825216', '公告管理', '公告展示', '/SysNoticeController/view', '0', '592059865673760768', 'gen:sysNotice:view', '1', 'fa fa-telegram', '10', '0');
INSERT INTO `t_sys_permission` VALUES ('3303650266428252171', '公告集合', '公告集合', '/SysNoticeController/list', '0', '330365026642825216', 'gen:sysNotice:list', '2', '', null, '0');
INSERT INTO `t_sys_permission` VALUES ('3303650266428252182', '公告添加', '公告添加', '/SysNoticeController/add', '0', '330365026642825216', 'gen:sysNotice:add', '2', 'entypo-plus-squared', null, '0');
INSERT INTO `t_sys_permission` VALUES ('3303650266428252193', '公告删除', '公告删除', '/SysNoticeController/remove', '0', '330365026642825216', 'gen:sysNotice:remove', '2', 'entypo-trash', null, '0');
INSERT INTO `t_sys_permission` VALUES ('3303650266428252204', '公告修改', '公告修改', '/SysNoticeController/edit', '0', '330365026642825216', 'gen:sysNotice:edit', '2', 'fa fa-wrench', null, '0');
INSERT INTO `t_sys_permission` VALUES ('331778807298134016', '定时器表达式', '', '/quartz/view', '0', '592059865673760768', '#', '1', 'fa fa-flash', '12', '0');
INSERT INTO `t_sys_permission` VALUES ('332157860920299520', '定时任务', '定时任务调度表展示', '/SysQuartzJobController/view', '0', '592059865673760768', 'gen:sysQuartzJob:view', '1', 'fa fa-hourglass-1', '13', '0');
INSERT INTO `t_sys_permission` VALUES ('3321578609202995211', '定时任务调度表集合', '定时任务调度表集合', '/SysQuartzJobController/list', '0', '332157860920299520', 'gen:sysQuartzJob:list', '2', '', null, '0');
INSERT INTO `t_sys_permission` VALUES ('3321578609202995222', '定时任务调度表添加', '定时任务调度表添加', '/SysQuartzJobController/add', '0', '332157860920299520', 'gen:sysQuartzJob:add', '2', 'entypo-plus-squared', null, '0');
INSERT INTO `t_sys_permission` VALUES ('3321578609202995233', '定时任务调度表删除', '定时任务调度表删除', '/SysQuartzJobController/remove', '0', '332157860920299520', 'gen:sysQuartzJob:remove', '2', 'entypo-trash', null, '0');
INSERT INTO `t_sys_permission` VALUES ('3321578609202995244', '定时任务调度表修改', '定时任务调度表修改', '/SysQuartzJobController/edit', '0', '332157860920299520', 'gen:sysQuartzJob:edit', '2', 'fa fa-wrench', null, '0');
INSERT INTO `t_sys_permission` VALUES ('332857281479839744', '定时任务日志', '定时任务日志', '/SysQuartzJobLogController/view', '0', '592059865673760768', 'gen:sysQuartzJobLog:view', '1', 'fa fa-database', '14', '0');
INSERT INTO `t_sys_permission` VALUES ('3328572814798397451', '定时任务调度日志表集合', '定时任务调度日志表集合', '/SysQuartzJobLogController/list', '0', '332857281479839744', 'gen:sysQuartzJobLog:list', '2', '', null, '0');
INSERT INTO `t_sys_permission` VALUES ('3328572814798397473', '定时任务调度日志表删除', '定时任务调度日志表删除', '/SysQuartzJobLogController/remove', '0', '332857281479839744', 'gen:sysQuartzJobLog:remove', '2', 'entypo-trash', null, '0');
INSERT INTO `t_sys_permission` VALUES ('335330315113467904', 'Json工具', 'Json格式化工具', '/Json/view', '1', '617766548966211584', '#', '1', 'fa fa-retweet', '10', '0');
INSERT INTO `t_sys_permission` VALUES ('340066503263129600', '省份设置', '省份设置', null, '0', '1', null, '0', 'fa fa-building', '4', '0');
INSERT INTO `t_sys_permission` VALUES ('340067579836108800', '省份管理', '', '#', '0', '340066503263129600', '#', '1', 'fa fa-building-o', null, '0');
INSERT INTO `t_sys_permission` VALUES ('340068151804956672', '省份表管理', '省份表展示', '/SysProvinceController/view', '0', '340067579836108800', 'gen:sysProvince:view', '1', 'fa fa-quora', '2', '0');
INSERT INTO `t_sys_permission` VALUES ('3400681518049566731', '省份表集合', '省份表集合', '/SysProvinceController/list', '0', '340068151804956672', 'gen:sysProvince:list', '2', '', null, '0');
INSERT INTO `t_sys_permission` VALUES ('3400681518049566742', '省份表添加', '省份表添加', '/SysProvinceController/add', '0', '340068151804956672', 'gen:sysProvince:add', '2', 'entypo-plus-squared', null, '0');
INSERT INTO `t_sys_permission` VALUES ('3400681518049566753', '省份表删除', '省份表删除', '/SysProvinceController/remove', '0', '340068151804956672', 'gen:sysProvince:remove', '2', 'entypo-trash', null, '0');
INSERT INTO `t_sys_permission` VALUES ('3400681518049566764', '省份表修改', '省份表修改', '/SysProvinceController/edit', '0', '340068151804956672', 'gen:sysProvince:edit', '2', 'fa fa-wrench', null, '0');
INSERT INTO `t_sys_permission` VALUES ('340088022018166784', '城市表管理', '城市设置展示', '/SysCityController/view', '0', '340067579836108800', 'gen:sysCity:view', '1', 'fa fa-quora', '3', '0');
INSERT INTO `t_sys_permission` VALUES ('3400880220181667851', '城市设置集合', '城市设置集合', '/SysCityController/list', '0', '340088022018166784', 'gen:sysCity:list', '2', '', null, '0');
INSERT INTO `t_sys_permission` VALUES ('3400880220181667862', '城市设置添加', '城市设置添加', '/SysCityController/add', '0', '340088022018166784', 'gen:sysCity:add', '2', 'entypo-plus-squared', null, '0');
INSERT INTO `t_sys_permission` VALUES ('3400880220181667873', '城市设置删除', '城市设置删除', '/SysCityController/remove', '0', '340088022018166784', 'gen:sysCity:remove', '2', 'entypo-trash', null, '0');
INSERT INTO `t_sys_permission` VALUES ('3400880220181667884', '城市设置修改', '城市设置修改', '/SysCityController/edit', '0', '340088022018166784', 'gen:sysCity:edit', '2', 'fa fa-wrench', null, '0');
INSERT INTO `t_sys_permission` VALUES ('340096183135506432', '地区设置管理', '地区设置展示', '/SysAreaController/view', '0', '340067579836108800', 'gen:sysArea:view', '1', 'fa fa-quora', '4', '0');
INSERT INTO `t_sys_permission` VALUES ('3400961831355064331', '地区设置集合', '地区设置集合', '/SysAreaController/list', '0', '340096183135506432', 'gen:sysArea:list', '2', '', null, '0');
INSERT INTO `t_sys_permission` VALUES ('3400961831355064342', '地区设置添加', '地区设置添加', '/SysAreaController/add', '0', '340096183135506432', 'gen:sysArea:add', '2', 'entypo-plus-squared', null, '0');
INSERT INTO `t_sys_permission` VALUES ('3400961831355064353', '地区设置删除', '地区设置删除', '/SysAreaController/remove', '0', '340096183135506432', 'gen:sysArea:remove', '2', 'entypo-trash', null, '0');
INSERT INTO `t_sys_permission` VALUES ('3400961831355064364', '地区设置修改', '地区设置修改', '/SysAreaController/edit', '0', '340096183135506432', 'gen:sysArea:edit', '2', 'fa fa-wrench', null, '0');
INSERT INTO `t_sys_permission` VALUES ('340127412270534656', '街道设置管理', '街道设置展示', '/SysStreetController/view', '0', '340067579836108800', 'gen:sysStreet:view', '1', 'fa fa-quora', '5', '0');
INSERT INTO `t_sys_permission` VALUES ('3401274122705346571', '街道设置集合', '街道设置集合', '/SysStreetController/list', '0', '340127412270534656', 'gen:sysStreet:list', '2', '', null, '0');
INSERT INTO `t_sys_permission` VALUES ('3401274122705346582', '街道设置添加', '街道设置添加', '/SysStreetController/add', '0', '340127412270534656', 'gen:sysStreet:add', '2', 'entypo-plus-squared', null, '0');
INSERT INTO `t_sys_permission` VALUES ('3401274122705346593', '街道设置删除', '街道设置删除', '/SysStreetController/remove', '0', '340127412270534656', 'gen:sysStreet:remove', '2', 'entypo-trash', null, '0');
INSERT INTO `t_sys_permission` VALUES ('3401274122705346604', '街道设置修改', '街道设置修改', '/SysStreetController/edit', '0', '340127412270534656', 'gen:sysStreet:edit', '2', 'fa fa-wrench', null, '0');
INSERT INTO `t_sys_permission` VALUES ('340301160042860544', '省份联动', '省份联动', '/ProvinceLinkageController/view', '0', '340067579836108800', '#', '1', 'fa fa-etsy', '1', '0');
INSERT INTO `t_sys_permission` VALUES ('340381240911859712', 'JavaScript格式化', 'JavaScript格式化', '/static/admin/htmlformat/javascriptFormat.html', '1', '617766548966211584', '#', '1', 'fa fa-magic', '11', '0');
INSERT INTO `t_sys_permission` VALUES ('354851114446884864', '七牛文件上传', '七牛文件上传', '/QiNiuCloudController/view', '0', '592059865673760768', 'system:qiNiuCloud:view', '1', 'fa fa-globe', '15', '0');
INSERT INTO `t_sys_permission` VALUES ('354865752219717632', '云文件集合', '云文件集合', '/QiNiuCloudController/list', '0', '354851114446884864', 'system:qiNiuCloud:list', '2', null, null, '0');
INSERT INTO `t_sys_permission` VALUES ('4', '用户管理', '用户展示', '/UserController/view', '0', '592059865673760768', 'system:user:view', '1', 'icon icon-user', '1', '0');
INSERT INTO `t_sys_permission` VALUES ('486690002869157888', '用户密码修改', '用户密码修改', '/UserController/editPwd', '0', '4', 'system:user:editPwd', '2', 'entypo-tools', '3', '0');
INSERT INTO `t_sys_permission` VALUES ('496126970468237312', '日志展示', '日志管理', '/LogController/view', '0', '592059865673760768', 'system:log:view', '1', 'fa fa-info', '9', '0');
INSERT INTO `t_sys_permission` VALUES ('496127240363311104', '日志删除', '日志删除', '/LogController/remove', '0', '496126970468237312', 'system:log:remove', '2', 'entypo-trash', null, '0');
INSERT INTO `t_sys_permission` VALUES ('496127794879660032', '日志集合', '日志集合', '/LogController/list', '0', '496126970468237312', 'system:log:list', '2', null, null, '0');
INSERT INTO `t_sys_permission` VALUES ('496782496638173184', '系统设置', '后台设置', null, '0', '1', null, '0', 'fa fa-gear', '3', '0');
INSERT INTO `t_sys_permission` VALUES ('5', '用户集合', '用户集合', '/UserController/list', '0', '4', 'system:user:list', '2', '', null, '0');
INSERT INTO `t_sys_permission` VALUES ('581541547099553792', 'druid监控', 'druid监控', '/druid/', '0', '617766548966211584', 'user:list', '1', 'fa fa-line-chart', '6', '0');
INSERT INTO `t_sys_permission` VALUES ('583063272123531264', 'API文档', 'API文档', '/swagger-ui.html', '1', '617766548966211584', '--', '1', 'fa fa-font', '8', '0');
INSERT INTO `t_sys_permission` VALUES ('586003694080753664', '表单构建', '表单构建', '/ToolController/view', '0', '617766548966211584', 'system:tool:view', '1', 'fa fa-list-alt', '5', '0');
INSERT INTO `t_sys_permission` VALUES ('587453033487532032', '后台模板', '后台模板', '/static/admin/bootstarp/index.html', '1', '617766548966211584', 'system:htmb:view', '1', 'fa fa-telegram', '9', '0');
INSERT INTO `t_sys_permission` VALUES ('589559475422101504', '测试目录', '测试目录', null, '0', '1', null, '0', 'fa fa-etsy', '5', '0');
INSERT INTO `t_sys_permission` VALUES ('589559748521623552', '一级菜单', '测试菜单', '#', '0', '589559475422101504', '#', '1', 'fa fa-address-book', null, '0');
INSERT INTO `t_sys_permission` VALUES ('589559916704825344', '二级菜单', '二级菜单', '#', '0', '589559748521623552', '#', '1', 'fa fa-address-book', '1', '0');
INSERT INTO `t_sys_permission` VALUES ('592059865673760768', '系统管理', '后台管理', '#', '0', '496782496638173184', '#', '1', 'fa fa-home', '1', '0');
INSERT INTO `t_sys_permission` VALUES ('592067570522128384', '测试跳转', '测试跳转', 'http://www.baidu.com', '1', '589559748521623552', '#', '1', 'fa fa-address-book', null, '0');
INSERT INTO `t_sys_permission` VALUES ('592167738407911424', '系统监控', '系统监控', '/ServiceController/view', '0', '617766548966211584', 'system:service:view', '1', 'fa fa-video-camera', '7', '0');
INSERT INTO `t_sys_permission` VALUES ('594691026430459904', '电子邮件管理', '电子邮件展示', '/EmailController/view', '0', '592059865673760768', 'system:email:view', '1', 'fa fa-envelope', '8', '0');
INSERT INTO `t_sys_permission` VALUES ('5946910264304599041', '电子邮件集合', '电子邮件集合', '/EmailController/list', '0', '594691026430459904', 'system:email:list', '2', '', null, '0');
INSERT INTO `t_sys_permission` VALUES ('5946910264304599042', '电子邮件添加', '电子邮件添加', '/EmailController/add', '0', '594691026430459904', 'system:email:add', '2', 'entypo-plus-squared', null, '0');
INSERT INTO `t_sys_permission` VALUES ('5946910264304599043', '电子邮件删除', '电子邮件删除', '/EmailController/remove', '0', '594691026430459904', 'system:email:remove', '2', 'entypo-trash', null, '0');
INSERT INTO `t_sys_permission` VALUES ('5946910264304599044', '电子邮件修改', '电子邮件修改', '/EmailController/edit', '0', '594691026430459904', 'system:email:edit', '2', 'fa fa-wrench', null, '0');
INSERT INTO `t_sys_permission` VALUES ('6', '用户添加', '用户添加', '/UserController/add', '0', '4', 'system:user:add', '2', 'entypo-plus-squared', null, '0');
INSERT INTO `t_sys_permission` VALUES ('610635485890478080', '代码生成新', '代码生成2', '#', '0', '617751079701970944', '#', '1', 'fa fa-blind', '1', '0');
INSERT INTO `t_sys_permission` VALUES ('610635950447394816', '全局配置', '', '/autoCodeController/global', '0', '610635485890478080', 'system:autocode:global', '1', 'fa fa-university', null, '0');
INSERT INTO `t_sys_permission` VALUES ('610983815791247360', '单表生成', '', '/autoCodeController/one', '0', '610635485890478080', 'system:autocode:one', '1', 'fa fa-hand-peace-o', null, '0');
INSERT INTO `t_sys_permission` VALUES ('617751079701970944', '代码生成', '代码生成', null, '0', '1', null, '0', 'fa fa-500px', '4', '0');
INSERT INTO `t_sys_permission` VALUES ('617766548966211584', '系统工具', '系统工具', '#', '0', '496782496638173184', '#', '1', 'fa fa-th-large', '2', '0');
INSERT INTO `t_sys_permission` VALUES ('618918631769636864', '字典管理', '字典类型表展示', '/DictTypeController/view', '0', '592059865673760768', 'system:dictType:view', '1', 'fa fa-puzzle-piece', '11', '0');
INSERT INTO `t_sys_permission` VALUES ('6189186317738311681', '字典类型表集合', '字典类型表集合', '/DictTypeController/list', '0', '618918631769636864', 'system:dictType:list', '2', null, null, '0');
INSERT INTO `t_sys_permission` VALUES ('6189186317948026882', '字典类型表添加', '字典类型表添加', '/DictTypeController/add', '0', '618918631769636864', 'system:dictType:add', '2', null, null, '0');
INSERT INTO `t_sys_permission` VALUES ('6189186317948026883', '字典类型表删除', '字典类型表删除', '/DictTypeController/remove', '0', '618918631769636864', 'system:dictType:remove', '2', null, null, '0');
INSERT INTO `t_sys_permission` VALUES ('6189186317989969924', '字典类型表修改', '字典类型表修改', '/DictTypeController/edit', '0', '618918631769636864', 'system:dictType:edit', '2', null, null, '0');
INSERT INTO `t_sys_permission` VALUES ('6192095214866268161', '字典数据表集合', '字典数据表集合', '/DictDataController/list', '0', '618918631769636864', 'system:dictData:list', '2', null, null, '0');
INSERT INTO `t_sys_permission` VALUES ('6192095214866268162', '字典数据表添加', '字典数据表添加', '/DictDataController/add', '0', '618918631769636864', 'system:dictData:add', '2', null, null, '0');
INSERT INTO `t_sys_permission` VALUES ('6192095215075983363', '字典数据表删除', '字典数据表删除', '/DictDataController/remove', '0', '618918631769636864', 'system:dictData:remove', '2', null, null, '0');
INSERT INTO `t_sys_permission` VALUES ('6192095215075983364', '字典数据表修改', '字典数据表修改', '/DictDataController/edit', '0', '618918631769636864', 'system:dictData:edit', '2', null, null, '0');
INSERT INTO `t_sys_permission` VALUES ('619836559427895296', '字典数据视图', '字典数据视图', '/DictDataController/view', '0', '618918631769636864', 'system:dictData:view', '2', null, null, '0');
INSERT INTO `t_sys_permission` VALUES ('7', '用户删除', '用户删除', '/UserController/remove', '0', '4', 'system:user:remove', '2', 'entypo-trash', null, '0');
INSERT INTO `t_sys_permission` VALUES ('8', '用户修改', '用户修改', '/UserController/edit', '0', '4', 'system:user:edit', '2', 'fa fa-wrench', null, '0');
INSERT INTO `t_sys_permission` VALUES ('9', '角色管理', '角色展示', '/RoleController/view', '0', '592059865673760768', 'system:role:view', '1', 'fa fa-group', '2', '0');

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
INSERT INTO `t_sys_permission_role` VALUES ('0090d5c9-1876-492f-bb3c-3efc7cb1c666', '488243256161730560', '3401274122705346604');
INSERT INTO `t_sys_permission_role` VALUES ('03a88782-7d67-49f1-8bb8-b896ff887f28', '488243256161730560', '3400961831355064331');
INSERT INTO `t_sys_permission_role` VALUES ('0c540c9e-b56c-442c-b387-3af08f25d0e4', '488243256161730560', '3400880220181667862');
INSERT INTO `t_sys_permission_role` VALUES ('0d97d3d5-2e84-4048-9e94-1b14f32a29b2', '488243256161730560', '10');
INSERT INTO `t_sys_permission_role` VALUES ('0e03ce36-bcaf-4f8e-ac09-df8ebfaa6f5d', '488243256161730560', '3303650266428252193');
INSERT INTO `t_sys_permission_role` VALUES ('0f4498e2-5312-42f9-829c-bdad1ed62999', '488243256161730560', '9');
INSERT INTO `t_sys_permission_role` VALUES ('1a7f2cdb-791b-443f-9864-432442b94f57', '488243256161730560', '14');
INSERT INTO `t_sys_permission_role` VALUES ('1ebfcbc3-ae48-4b0e-938e-7c23606f8be5', '488243256161730560', '3303650266428252171');
INSERT INTO `t_sys_permission_role` VALUES ('211fb1a5-dcd6-4ed9-a030-8d240db78ed3', '488243256161730560', '19');
INSERT INTO `t_sys_permission_role` VALUES ('290c05af-d1a5-4ab2-99f5-b5ac3b9a8b3d', '488243256161730560', '6192095215075983363');
INSERT INTO `t_sys_permission_role` VALUES ('299688d1-7693-4760-8003-a9dafb94a177', '488243256161730560', '354851114446884864');
INSERT INTO `t_sys_permission_role` VALUES ('2d400632-a55e-4c51-8d55-d9f1f8393c63', '488243256161730560', '594691026430459904');
INSERT INTO `t_sys_permission_role` VALUES ('2dcb219c-1c8b-4630-8d4f-1ad5c4bb4acf', '488243256161730560', '3303650266428252204');
INSERT INTO `t_sys_permission_role` VALUES ('2e313899-b8e2-49f2-924d-4afea3e0218b', '488243256161730560', '496126970468237312');
INSERT INTO `t_sys_permission_role` VALUES ('365b4bf9-4de4-46ed-948e-2ce634de3adb', '488243256161730560', '496127794879660032');
INSERT INTO `t_sys_permission_role` VALUES ('37cb39da-1b96-471e-80fe-e9e5493b8575', '488243256161730560', '5946910264304599042');
INSERT INTO `t_sys_permission_role` VALUES ('38fd8a7f-6c95-4bf6-8773-26d312e7359b', '488243256161730560', '6');
INSERT INTO `t_sys_permission_role` VALUES ('39bc81c3-b9e7-4be4-a72e-1c70749abfea', '488243256161730560', '617751079701970944');
INSERT INTO `t_sys_permission_role` VALUES ('3cbced01-80b1-41a6-b449-e33936ce9232', '488243256161730560', '17');
INSERT INTO `t_sys_permission_role` VALUES ('4085b466-36f5-4d63-97fc-d1fa5e67813b', '488243256161730560', '619836559427895296');
INSERT INTO `t_sys_permission_role` VALUES ('4405da52-6acd-4740-9b85-1ab47114c171', '488243256161730560', '340068151804956672');
INSERT INTO `t_sys_permission_role` VALUES ('455c9886-28aa-44e4-bbff-a3308495662a', '488243256161730560', '4');
INSERT INTO `t_sys_permission_role` VALUES ('457bdd8b-d0d1-4e52-bae1-3aadf255eeee', '488243256161730560', '332857281479839744');
INSERT INTO `t_sys_permission_role` VALUES ('45fa8d8f-696f-44e9-887c-978700d21d4a', '488243256161730560', '3400961831355064342');
INSERT INTO `t_sys_permission_role` VALUES ('46d1e57c-390c-434d-b5cd-0c5c56612adb', '488243256161730560', '592059865673760768');
INSERT INTO `t_sys_permission_role` VALUES ('4b0744e9-822b-46ef-ba14-934edb980949', '488243256161730560', '1');
INSERT INTO `t_sys_permission_role` VALUES ('4cdc3dd6-e413-486f-a5d9-d748d0805175', '488243256161730560', '21');
INSERT INTO `t_sys_permission_role` VALUES ('4d739a52-e255-4765-a37b-1ab190009673', '488243256161730560', '610635950447394816');
INSERT INTO `t_sys_permission_role` VALUES ('5522c3d4-a77b-40c2-84a9-98690bb19088', '488243256161730560', '589559748521623552');
INSERT INTO `t_sys_permission_role` VALUES ('5885a0c0-b3ea-462a-982f-e3c2563879be', '488243256161730560', '16');
INSERT INTO `t_sys_permission_role` VALUES ('5ab7408b-c4b2-40f1-a7c2-eba57c22f937', '488243256161730560', '3400961831355064364');
INSERT INTO `t_sys_permission_role` VALUES ('5ac4b1e9-97d5-40da-ad54-37e8bc7170a9', '488243256161730560', '8');
INSERT INTO `t_sys_permission_role` VALUES ('5d1fe335-b4d3-4b0d-9491-b516765f9021', '488243256161730560', '581541547099553792');
INSERT INTO `t_sys_permission_role` VALUES ('5f3c2d58-db6c-45b7-ac60-7ebf04b71b0b', '488243256161730560', '3401274122705346571');
INSERT INTO `t_sys_permission_role` VALUES ('63b4953c-92a2-45ee-9b98-9ebbf1ccf24f', '488243256161730560', '5');
INSERT INTO `t_sys_permission_role` VALUES ('6913358e-ba94-4405-b57b-75a9e8403f6e', '488243256161730560', '6189186317738311681');
INSERT INTO `t_sys_permission_role` VALUES ('6e555311-06e3-4c62-9efb-f22f2407f407', '488243256161730560', '332157860920299520');
INSERT INTO `t_sys_permission_role` VALUES ('702060c9-127f-41aa-a215-da5b4bfce437', '488243256161730560', '6189186317948026883');
INSERT INTO `t_sys_permission_role` VALUES ('73a1946a-cdb7-4e5a-bf8e-6c43ac5a2fa4', '488243256161730560', '3400681518049566742');
INSERT INTO `t_sys_permission_role` VALUES ('73cf0a3f-b495-4826-9416-e2caefa7aed5', '488243256161730560', '496782496638173184');
INSERT INTO `t_sys_permission_role` VALUES ('75b3c8a9-1d70-4886-b0fb-23b61bf8f229', '488243256161730560', '589559916704825344');
INSERT INTO `t_sys_permission_role` VALUES ('76eac718-c28e-41bf-a7e7-b0cfe5aa160b', '488243256161730560', '3400681518049566731');
INSERT INTO `t_sys_permission_role` VALUES ('77b52a5e-05d1-4412-bc77-fd937e4c3674', '488243256161730560', '617766548966211584');
INSERT INTO `t_sys_permission_role` VALUES ('77f34e60-272f-4a08-93c1-c66cd57d61c1', '488243256161730560', '583063272123531264');
INSERT INTO `t_sys_permission_role` VALUES ('7d18f463-7cef-4803-b2c7-619975d78ef7', '488243256161730560', '340381240911859712');
INSERT INTO `t_sys_permission_role` VALUES ('7dcb14a8-c5de-4a62-90f9-6be1f9b21315', '488243256161730560', '7');
INSERT INTO `t_sys_permission_role` VALUES ('7fc78a8f-68fb-413c-b467-42bd93dffbd5', '488243256161730560', '3400961831355064353');
INSERT INTO `t_sys_permission_role` VALUES ('843d5d46-6bb0-4926-ac0a-29946db39ea3', '488243256161730560', '354865752219717632');
INSERT INTO `t_sys_permission_role` VALUES ('868e4019-707c-408e-bd90-62ee48dd6777', '488243256161730560', '3321578609202995222');
INSERT INTO `t_sys_permission_role` VALUES ('87f7b4a9-8154-4426-be27-2c8f0ac7ef09', '488243256161730560', '23');
INSERT INTO `t_sys_permission_role` VALUES ('88c4a254-bd53-4d17-b03a-b7a5c0797aeb', '488243256161730560', '3321578609202995233');
INSERT INTO `t_sys_permission_role` VALUES ('897c5817-6d87-44c8-97d5-28bd1d9003ad', '488243256161730560', '3328572814798397473');
INSERT INTO `t_sys_permission_role` VALUES ('8a58798c-1345-4fa6-b8dd-55c53e0b044c', '488243256161730560', '5946910264304599043');
INSERT INTO `t_sys_permission_role` VALUES ('8e4cffe8-cb39-4ff0-81e4-56930936506f', '488243256161730560', '12');
INSERT INTO `t_sys_permission_role` VALUES ('94127884-ad8a-46dd-a410-f9b6e263efe4', '488243256161730560', '3400880220181667884');
INSERT INTO `t_sys_permission_role` VALUES ('959b731d-ea12-41aa-a84e-94f86882ed68', '488243256161730560', '335330315113467904');
INSERT INTO `t_sys_permission_role` VALUES ('969771a4-9b73-402b-8120-d3996ee9eb5a', '488243256161730560', '331778807298134016');
INSERT INTO `t_sys_permission_role` VALUES ('96bdc02d-88e9-4371-9861-9a9681d217f0', '488243256161730560', '5946910264304599044');
INSERT INTO `t_sys_permission_role` VALUES ('99819aea-4fe6-4768-8cfa-fc20a743c64f', '488243256161730560', '589559475422101504');
INSERT INTO `t_sys_permission_role` VALUES ('9b762be6-c6a2-4f99-98cb-144ccd3f31d0', '488243256161730560', '340088022018166784');
INSERT INTO `t_sys_permission_role` VALUES ('a4ef1c3a-cb65-4a31-95bb-ddea8a28ecad', '488243256161730560', '3400681518049566764');
INSERT INTO `t_sys_permission_role` VALUES ('a53330e8-f331-445d-b173-048e90850499', '488243256161730560', '18');
INSERT INTO `t_sys_permission_role` VALUES ('a7e62b90-8aac-4c68-b2b4-d1b94e6e9d35', '488243256161730560', '3401274122705346593');
INSERT INTO `t_sys_permission_role` VALUES ('ab406df5-b01d-4628-b6fe-344b1938a6bc', '488243256161730560', '592067570522128384');
INSERT INTO `t_sys_permission_role` VALUES ('aee228dd-098f-47d0-a957-c725e95e3a7c', '488243256161730560', '6192095214866268161');
INSERT INTO `t_sys_permission_role` VALUES ('af7124d8-eba8-4aaf-94f5-d79a20b86555', '488243256161730560', '15');
INSERT INTO `t_sys_permission_role` VALUES ('b3f83e32-031d-4f55-be06-f4db71b1d8a3', '488243256161730560', '5946910264304599041');
INSERT INTO `t_sys_permission_role` VALUES ('ba501b39-f17b-4872-8df7-0cb70e3481bf', '488243256161730560', '610635485890478080');
INSERT INTO `t_sys_permission_role` VALUES ('bcb7fede-678b-4bf1-b0c8-ffc8453e3504', '488243256161730560', '3400880220181667873');
INSERT INTO `t_sys_permission_role` VALUES ('bd1a51b6-6af2-4f66-9279-b04a4958f2ac', '488243256161730560', '587453033487532032');
INSERT INTO `t_sys_permission_role` VALUES ('bf7fc00a-0b2b-4db5-bc14-479a2576faf4', '488243256161730560', '6192095215075983364');
INSERT INTO `t_sys_permission_role` VALUES ('c231a93a-9820-4eac-a275-b25b750d299f', '488243256161730560', '3401274122705346582');
INSERT INTO `t_sys_permission_role` VALUES ('c2828dd0-a9a5-470a-8eef-7d81115b1f06', '488243256161730560', '20');
INSERT INTO `t_sys_permission_role` VALUES ('c35923c4-db40-4fcd-be57-b481198d22f9', '488243256161730560', '3328572814798397451');
INSERT INTO `t_sys_permission_role` VALUES ('c36838fd-2092-4e78-928f-27f4067442cc', '488243256161730560', '340066503263129600');
INSERT INTO `t_sys_permission_role` VALUES ('c7bebb4a-09ab-4d7f-b8ba-790eff827181', '488243256161730560', '486690002869157888');
INSERT INTO `t_sys_permission_role` VALUES ('c8106a7d-f233-4a59-b23c-485fc713a1dd', '488243256161730560', '330365026642825216');
INSERT INTO `t_sys_permission_role` VALUES ('ccb23c0f-3a92-4c7e-aa28-9a4cd8ff3cb2', '488243256161730560', '340127412270534656');
INSERT INTO `t_sys_permission_role` VALUES ('ceac98d2-393a-4096-a7c9-cc6fd037cf3b', '488243256161730560', '3321578609202995211');
INSERT INTO `t_sys_permission_role` VALUES ('d0eb0e6e-e009-4a37-ab91-1da8305dcfc4', '488243256161730560', '22');
INSERT INTO `t_sys_permission_role` VALUES ('d1069950-07df-4cc1-a84a-6be4582bb58b', '488243256161730560', '11');
INSERT INTO `t_sys_permission_role` VALUES ('d1810151-6e20-41b1-803a-cb84ef03ffa8', '488243256161730560', '3303650266428252182');
INSERT INTO `t_sys_permission_role` VALUES ('d28e1e18-7645-419d-bd3a-e9c1fa722d68', '488243256161730560', '586003694080753664');
INSERT INTO `t_sys_permission_role` VALUES ('d383ffdf-9e79-4240-b743-a97771632b80', '488243256161730560', '618918631769636864');
INSERT INTO `t_sys_permission_role` VALUES ('d7cbfd44-f4d8-4771-b91f-823750b81970', '488243256161730560', '6189186317989969924');
INSERT INTO `t_sys_permission_role` VALUES ('d96c35d0-b836-4120-adc3-95cb6c3bc199', '488243256161730560', '3400880220181667851');
INSERT INTO `t_sys_permission_role` VALUES ('de923fd7-934e-4a3e-b037-1840fec14c2c', '488243256161730560', '6189186317948026882');
INSERT INTO `t_sys_permission_role` VALUES ('dff41a0f-2467-4f9c-bc63-a0d62c856807', '488243256161730560', '592167738407911424');
INSERT INTO `t_sys_permission_role` VALUES ('e55a272d-c197-41df-97cc-6a6107d74f33', '488243256161730560', '3400681518049566753');
INSERT INTO `t_sys_permission_role` VALUES ('e70fd931-f762-49a0-b84e-886cdc23c75c', '488243256161730560', '340301160042860544');
INSERT INTO `t_sys_permission_role` VALUES ('ebe1b826-d30e-4463-ba6e-1855df4d67ed', '488243256161730560', '610983815791247360');
INSERT INTO `t_sys_permission_role` VALUES ('f0b25019-fe8a-4f7c-af63-83ce1e78ee55', '488243256161730560', '340096183135506432');
INSERT INTO `t_sys_permission_role` VALUES ('f14392d5-b6d4-442e-85cb-b203584594e6', '488243256161730560', '340067579836108800');
INSERT INTO `t_sys_permission_role` VALUES ('f1d5389d-b3ee-401b-aa01-6e40250532a0', '488243256161730560', '496127240363311104');
INSERT INTO `t_sys_permission_role` VALUES ('f8221a34-7759-4cdf-8215-f033e277a755', '488243256161730560', '3321578609202995244');
INSERT INTO `t_sys_permission_role` VALUES ('f983b7ff-cca6-4df5-b789-4ee6c7302646', '488243256161730560', '13');
INSERT INTO `t_sys_permission_role` VALUES ('fe51b7e1-ccf5-4e46-b4d7-c5fb6f3547cc', '488243256161730560', '6192095214866268162');

-- ----------------------------
-- Table structure for t_sys_province
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_province`;
CREATE TABLE `t_sys_province` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增列',
  `province_code` varchar(40) NOT NULL COMMENT '省份代码',
  `province_name` varchar(50) NOT NULL COMMENT '省份名称',
  `short_name` varchar(20) NOT NULL COMMENT '简称',
  `lng` varchar(20) DEFAULT NULL COMMENT '经度',
  `lat` varchar(20) DEFAULT NULL COMMENT '纬度',
  `sort` int(6) DEFAULT NULL COMMENT '排序',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改时间',
  `memo` varchar(250) DEFAULT NULL COMMENT '备注',
  `data_state` int(11) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `Index_1` (`province_code`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='省份表';

-- ----------------------------
-- Records of t_sys_province
-- ----------------------------
INSERT INTO `t_sys_province` VALUES ('22', '500000', '重庆', '重庆', '106.504959', '29.533155', '22', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');

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
INSERT INTO `t_sys_quartz_job_log` VALUES ('333610541354455040', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：3毫秒', '0', null, '2019-09-17 00:16:01', '2019-09-17 00:16:01');
INSERT INTO `t_sys_quartz_job_log` VALUES ('333610547549442048', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2019-09-17 00:16:03', '2019-09-17 00:16:03');
INSERT INTO `t_sys_quartz_job_log` VALUES ('333610553832509440', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2019-09-17 00:16:04', '2019-09-17 00:16:04');
INSERT INTO `t_sys_quartz_job_log` VALUES ('333610558995697664', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2019-09-17 00:16:06', '2019-09-17 00:16:06');
INSERT INTO `t_sys_quartz_job_log` VALUES ('333610566486724608', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2019-09-17 00:16:07', '2019-09-17 00:16:07');
INSERT INTO `t_sys_quartz_job_log` VALUES ('333610572270669824', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2019-09-17 00:16:09', '2019-09-17 00:16:09');
INSERT INTO `t_sys_quartz_job_log` VALUES ('354984595927732224', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：3毫秒', '0', null, '2019-11-14 23:48:53', '2019-11-14 23:48:53');
INSERT INTO `t_sys_quartz_job_log` VALUES ('354990312722141184', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：2毫秒', '0', null, '2019-11-15 00:11:36', '2019-11-15 00:11:36');
INSERT INTO `t_sys_quartz_job_log` VALUES ('354996339316232192', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：3毫秒', '0', null, '2019-11-15 00:35:33', '2019-11-15 00:35:33');

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
INSERT INTO `t_sys_role_user` VALUES ('353711021275353089', '353711021275353088', '488289006124007424');
INSERT INTO `t_sys_role_user` VALUES ('353714370687143936', '488294747442511872', '488289006124007424');
INSERT INTO `t_sys_role_user` VALUES ('354984037766533120', '354984005751410688', '488243256161730560');
INSERT INTO `t_sys_role_user` VALUES ('354988722443390977', '354988722443390976', '488243256161730560');
INSERT INTO `t_sys_role_user` VALUES ('354989789679849472', '354989789675655168', '488305788310257664');
INSERT INTO `t_sys_role_user` VALUES ('594342089710370816', '1', '488243256161730560');
INSERT INTO `t_sys_role_user` VALUES ('612107905532952576', '612107905532952576', '488289006124007424');
INSERT INTO `t_sys_role_user` VALUES ('612107905537146880', '612107905532952576', '488305788310257664');

-- ----------------------------
-- Table structure for t_sys_street
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_street`;
CREATE TABLE `t_sys_street` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增列',
  `street_code` varchar(40) NOT NULL COMMENT '街道代码',
  `area_code` varchar(40) DEFAULT NULL COMMENT '父级区代码',
  `street_name` varchar(50) NOT NULL COMMENT '街道名称',
  `short_name` varchar(30) NOT NULL COMMENT '简称',
  `lng` varchar(20) DEFAULT NULL COMMENT '经度',
  `lat` varchar(20) DEFAULT NULL COMMENT '纬度',
  `sort` int(6) DEFAULT NULL COMMENT '排序',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改时间',
  `memo` varchar(250) DEFAULT NULL COMMENT '备注',
  `data_state` int(11) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `Index_1` (`street_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='街道设置';

-- ----------------------------
-- Records of t_sys_street
-- ----------------------------

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
