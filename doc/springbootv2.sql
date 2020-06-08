/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : springbootv2

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2020-06-09 01:02:15
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
  `file_absolute_path` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '绝对路径',
  `file_suffix` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '后缀',
  `file_type` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'Y 项目目录，N盘符目录',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='文件表存储表';

-- ----------------------------
-- Records of t_sys_datas
-- ----------------------------
INSERT INTO `t_sys_datas` VALUES ('429674403882733568', 'static/file_upload/218be0e66289829b748e4f4b69ee3e5b.jpg', 'D:/v2file/218be0e66289829b748e4f4b69ee3e5b.jpg', '.jpg', 'N');
INSERT INTO `t_sys_datas` VALUES ('429678130744135680', 'static/file_upload/aadc2a6b5befbc3858350a09154ed486.txt', 'static/file_upload/aadc2a6b5befbc3858350a09154ed486.txt', '.txt', 'Y');

-- ----------------------------
-- Table structure for t_sys_department
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_department`;
CREATE TABLE `t_sys_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `parent_id` varchar(255) DEFAULT NULL COMMENT '父id',
  `dept_name` varchar(255) DEFAULT NULL COMMENT '部门名称',
  `leader` varchar(255) DEFAULT NULL COMMENT '部门负责人',
  `phone` varchar(255) DEFAULT NULL COMMENT '电话',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `status` int(255) DEFAULT NULL COMMENT '状态',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of t_sys_department
-- ----------------------------
INSERT INTO `t_sys_department` VALUES ('1', '0', 'v2', 'v2', '13012345678', 'v2@qq.com', '1', '1');
INSERT INTO `t_sys_department` VALUES ('2', '1', '技术部门', 'x某某', '13012345678', 'v2@qq.com', '1', '2');
INSERT INTO `t_sys_department` VALUES ('3', '1', '人事部门', 'a某某', '13012345678', 'v2@qq.com', '1', '3');
INSERT INTO `t_sys_department` VALUES ('4', '2', '开发一小组', 'b某某', '13012345678', 'v2@qq.com', '1', '4');
INSERT INTO `t_sys_department` VALUES ('5', '3', '销售部门', 'd某某', '13012345678', 'v2@qq.com', '1', '5');
INSERT INTO `t_sys_department` VALUES ('6', '5', '销售一组', 'e某某', '13012345678', 'v2@qq.com', '1', '6');

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
INSERT INTO `t_sys_dict_data` VALUES ('373494384659927040', '0', 'GET请求', '1', 'sys_inter_url_type', '', 'primary', 'Y', '0', 'admin', '2020-01-05 01:40:11', 'admin', '2020-03-29 23:23:58', '');
INSERT INTO `t_sys_dict_data` VALUES ('373494483465146368', '1', 'POST请求', '2', 'sys_inter_url_type', '', 'info', 'Y', '0', 'admin', '2020-01-05 01:40:34', 'admin', '2020-03-29 23:23:25', '');

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
INSERT INTO `t_sys_dict_type` VALUES ('373493952487231488', '拦截器类型', 'sys_inter_url_type', '0', 'admin', '2020-01-05 01:38:28', 'admin', '2020-03-29 23:23:43', '拦截器类型');
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
INSERT INTO `t_sys_file` VALUES ('429678140500086784', '111', '1', 'admin', '2020-06-08 02:34:22', null, null, null);

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
INSERT INTO `t_sys_file_data` VALUES ('429678140500086785', '429678130744135680', '429678140500086784');

-- ----------------------------
-- Table structure for t_sys_inter_url
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_inter_url`;
CREATE TABLE `t_sys_inter_url` (
  `id` varchar(255) NOT NULL COMMENT '主键',
  `inter_name` varchar(255) DEFAULT NULL COMMENT '拦截名称',
  `url` varchar(255) DEFAULT NULL COMMENT '拦截url',
  `type` int(2) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拦截url表';

-- ----------------------------
-- Records of t_sys_inter_url
-- ----------------------------
INSERT INTO `t_sys_inter_url` VALUES ('373496755515428864', '用户添加', '/UserController/add', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373497670557372416', '用户删除', '/UserController/remove', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373497840930000896', '用户修改', '/UserController/edit', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373497897913815040', '用户修改密码', '/UserController/editPwd', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373498025491959808', '自动生成添加', '/autoCodeController/addGlobal', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373498096644132864', '自动生成保存', '/autoCodeController/saveOne', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373498292627181568', '字典表添加', '/DictDataController/add', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373498349552275456', '字典表删除', '/DictDataController/remove', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373498496684265472', '字典表修改', '/DictDataController/edit', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373498567521865728', '字典表类型添加', '/DictTypeController/add', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373498625474564096', '字典表类型删除', '/DictTypeController/remove', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373498715475939328', '字典表类型修改', '/DictTypeController/edit', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373498811429031936', '邮箱添加', '/EmailController/add', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373498868127633408', '邮箱修改', '/EmailController/edit', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373498918975180800', '邮箱删除', '/EmailController/remove', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373498988751622144', '文件上传', '/FileController/upload', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373499051250946048', '文件上传添加', '/FileController/add', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373499108104736768', '文件上传删除', '/FileController/remove', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373499205047685120', '文件上传删除2', '/FileController/del_file', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373499263713415168', '文件上传修改', '/FileController/edit', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373499326967713792', '日志删除', '/LogController/remove', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373499404776247296', '权限添加', '/PermissionController/add', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373499452364820480', '权限删除', '/PermissionController/remove', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373499526859853824', '权限修改', '/PermissionController/edit', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373499613015052288', '定时器添加', '/SysQuartzJobController/add', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373499677636694016', '定时器删除', '/SysQuartzJobController/remove', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373499748591734784', '定时器修改', '/SysQuartzJobController/edit', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373499825582379008', '定时器状态切换', '/SysQuartzJobController/changeStatus', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373499894721286144', '定时器启动', '/SysQuartzJobController/run', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373499948769087488', '定时器日志删除', '/SysQuartzJobLogController/remove', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373500039596740608', '角色添加', '/RoleController/add', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373500088284221440', '角色删除', '/RoleController/remove', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373500133054222336', '角色修改', '/RoleController/edit', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373500178268819456', '公告添加', '/SysNoticeController/add', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373500217934352384', '公告删除', '/SysNoticeController/remove', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373500268949671936', '公告展示', '/SysNoticeController/viewinfo', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373500319365206016', '公告修改', '/SysNoticeController/edit', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373500397240848384', '省份添加', '/SysProvinceController/add', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373500437623607296', '省份删除', '/SysProvinceController/remove', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373500524961599488', '省份修改', '/SysProvinceController/edit', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373500569433804800', '地区添加', '/SysAreaController/add', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373500609669763072', '地区删除', '/SysAreaController/remove', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373500648181862400', '地区修改', '/SysAreaController/edit', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373500706268778496', '城市添加', '/SysCityController/add', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373500743581306880', '城市删除', '/SysCityController/remove', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373500781405540352', '城市修改', '/SysCityController/edit', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373500835193294848', '街道添加', '/SysStreetController/add', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373500877971001344', '街道删除', '/SysStreetController/remove', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373500915308695552', '街道修改', '/SysStreetController/edit', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373501029066608640', '百度编辑器添加', '/UeditorController/ueditor', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373501103570030592', '百度编辑器', '/UeditorController/', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373501147362758656', '百度编辑器上传', '/UeditorController/imgUpload', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373501199686701056', '七牛文件上传', '/QiNiuCloudController/uploadToQiNiu', '2');
INSERT INTO `t_sys_inter_url` VALUES ('373501333854097408', '定时器停止', '/quartz/stop', '1');
INSERT INTO `t_sys_inter_url` VALUES ('373501434756468736', '定时器继续', '/quartz/resume', '1');
INSERT INTO `t_sys_inter_url` VALUES ('373501545595146240', '定时器状态修改', '/quartz/update', '1');
INSERT INTO `t_sys_inter_url` VALUES ('373501599198351360', '定时器删除2', '/quartz/delete', '1');
INSERT INTO `t_sys_inter_url` VALUES ('411485475971403776', '岗位添加', '/SysPositionController/add', '2');
INSERT INTO `t_sys_inter_url` VALUES ('411490182756438016', '岗位删除', '/SysPositionController/remove', '2');
INSERT INTO `t_sys_inter_url` VALUES ('411490841580933120', '岗位修改', '/SysPositionController/edit', '2');
INSERT INTO `t_sys_inter_url` VALUES ('411492914938646528', '部门添加', '/SysDepartmentController/add', '2');
INSERT INTO `t_sys_inter_url` VALUES ('411493078512308224', '部门删除', '/SysDepartmentController/remove', '2');
INSERT INTO `t_sys_inter_url` VALUES ('411494526608347136', '部门修改', '/SysDepartmentController/edit', '2');
INSERT INTO `t_sys_inter_url` VALUES ('411495018801532928', '拦截器新增', '/SysInterUrlController/add', '2');
INSERT INTO `t_sys_inter_url` VALUES ('411495038321823744', '拦截器复制', '/SysInterUrlController/copy', '1');
INSERT INTO `t_sys_inter_url` VALUES ('411495141359095808', '拦截器删除', '/SysInterUrlController/remove', '2');
INSERT INTO `t_sys_inter_url` VALUES ('411495220283314176', '拦截器修改', '/SysInterUrlController/edit', '2');

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
INSERT INTO `t_sys_notice` VALUES ('373478036928073728', '顶顶顶顶顶顶顶顶顶', '<p>顶顶顶顶顶顶顶顶顶顶<img src=\"http://img.baidu.com/hi/jx2/j_0014.gif\"/></p>', '1', '1', 'admin', '2020-01-05 00:35:13');

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
INSERT INTO `t_sys_notice_user` VALUES ('330381806375407616', '330381806358630400', '1', '1');
INSERT INTO `t_sys_notice_user` VALUES ('330381806379601920', '330381806358630400', '488294747442511872', '0');
INSERT INTO `t_sys_notice_user` VALUES ('330622143622680576', '330622143597514752', '1', '1');
INSERT INTO `t_sys_notice_user` VALUES ('330622143626874880', '330622143597514752', '488294747442511872', '0');
INSERT INTO `t_sys_notice_user` VALUES ('354984345649418240', '354984345632641024', '1', '1');
INSERT INTO `t_sys_notice_user` VALUES ('373478037158760448', '373478036928073728', '1', '1');
INSERT INTO `t_sys_notice_user` VALUES ('373478037162954752', '373478036928073728', '368026921239449600', '0');
INSERT INTO `t_sys_notice_user` VALUES ('373478037171343360', '373478036928073728', '368026937181999104', '0');
INSERT INTO `t_sys_notice_user` VALUES ('373478037175537664', '373478036928073728', '368027013392502784', '0');
INSERT INTO `t_sys_notice_user` VALUES ('373478037183926272', '373478036928073728', '368027030899527680', '0');
INSERT INTO `t_sys_notice_user` VALUES ('373478037192314880', '373478036928073728', '368027048402358272', '0');
INSERT INTO `t_sys_notice_user` VALUES ('373478037204897792', '373478036928073728', '368027066563694592', '0');
INSERT INTO `t_sys_notice_user` VALUES ('373478037213286400', '373478036928073728', '368027087866564608', '0');
INSERT INTO `t_sys_notice_user` VALUES ('373478037217480704', '373478036928073728', '368027104895438848', '0');
INSERT INTO `t_sys_notice_user` VALUES ('373478037225869312', '373478036928073728', '368027130728157184', '0');
INSERT INTO `t_sys_notice_user` VALUES ('373478037230063616', '373478036928073728', '368027151624179712', '0');
INSERT INTO `t_sys_notice_user` VALUES ('373478037238452224', '373478036928073728', '368382463233363968', '0');

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
INSERT INTO `t_sys_oper_log` VALUES ('368026921411416064', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"admin1\"],\"password\":[\"admin1\"],\"nickname\":[\"\"]}', null, '2019-12-20');
INSERT INTO `t_sys_oper_log` VALUES ('368026937215553536', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"admin2\"],\"password\":[\"admin2\"],\"nickname\":[\"\"]}', null, '2019-12-20');
INSERT INTO `t_sys_oper_log` VALUES ('368026972204437504', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"33333\"],\"password\":[\"3333333\"],\"nickname\":[\"333\"]}', null, '2019-12-20');
INSERT INTO `t_sys_oper_log` VALUES ('368027013421862912', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"44\"],\"password\":[\"444444\"],\"nickname\":[\"444\"]}', null, '2019-12-20');
INSERT INTO `t_sys_oper_log` VALUES ('368027030928887808', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"5555555\"],\"password\":[\"555555555555\"],\"nickname\":[\"5555555555555\"]}', null, '2019-12-20');
INSERT INTO `t_sys_oper_log` VALUES ('368027048427524096', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"66\"],\"password\":[\"666666666\"],\"nickname\":[\"6666666666\"]}', null, '2019-12-20');
INSERT INTO `t_sys_oper_log` VALUES ('368027066593054720', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"2222\"],\"password\":[\"222222222\"],\"nickname\":[\"2222222222222222\"]}', null, '2019-12-20');
INSERT INTO `t_sys_oper_log` VALUES ('368027087887536128', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"4444\"],\"password\":[\"44444444444444\"],\"nickname\":[\"44444444444\"]}', null, '2019-12-20');
INSERT INTO `t_sys_oper_log` VALUES ('368027104924798976', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"5555\"],\"password\":[\"55555555555555\"],\"nickname\":[\"555555555555\"]}', null, '2019-12-20');
INSERT INTO `t_sys_oper_log` VALUES ('368027130757517312', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"666\"],\"password\":[\"66666666666\"],\"nickname\":[\"666666666\"]}', null, '2019-12-20');
INSERT INTO `t_sys_oper_log` VALUES ('368027151649345536', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"33333333333333\"],\"password\":[\"333333333333\"],\"nickname\":[\"33333333333333\"]}', null, '2019-12-20');
INSERT INTO `t_sys_oper_log` VALUES ('368382463388553216', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"adminpppoooo\"],\"password\":[\"adminppp\"],\"nickname\":[\"pppppppppp\"]}', null, '2019-12-21');

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
INSERT INTO `t_sys_permission` VALUES ('14', '权限展示', '权限展示', '/PermissionController/view', '0', '411522822607867904', 'system:permission:view', '1', 'fa fa-key', '3', '0');
INSERT INTO `t_sys_permission` VALUES ('15', '权限集合', '权限集合', '/PermissionController/list', '0', '14', 'system:permission:list', '2', '', null, '0');
INSERT INTO `t_sys_permission` VALUES ('16', '权限添加', '权限添加', '/permissionController/add', '0', '14', 'system:permission:add', '2', 'entypo-plus-squared', null, '0');
INSERT INTO `t_sys_permission` VALUES ('17', '权限删除', '权限删除', '/PermissionController/remove', '0', '14', 'system:permission:remove', '2', 'entypo-trash', null, '0');
INSERT INTO `t_sys_permission` VALUES ('18', '权限修改', '权限修改', '/PermissionController/edit', '0', '14', 'system:permission:edit', '2', 'fa fa-wrench', null, '0');
INSERT INTO `t_sys_permission` VALUES ('19', '文件管理', '文件管理', '/FileController/view', '0', '592059865673760768', 'system:file:view', '1', 'fa fa-file-image-o', '4', '0');
INSERT INTO `t_sys_permission` VALUES ('20', '文件添加', '文件添加', '/FileController/add', '0', '19', 'system:file:add', '2', 'entypo-plus-squared', null, '0');
INSERT INTO `t_sys_permission` VALUES ('21', '文件删除', '文件删除', '/FileController/remove', '0', '19', 'system:file:remove', '2', 'entypo-trash', null, '0');
INSERT INTO `t_sys_permission` VALUES ('22', '文件修改', '文件修改', '/FileController/edit', '0', '19', 'system:file:edit', '2', 'fa fa-wrench', null, '0');
INSERT INTO `t_sys_permission` VALUES ('23', '文件集合', '文件集合', '/FileController/list', '0', '19', 'system:file:list', '2', '', null, '0');
INSERT INTO `t_sys_permission` VALUES ('330365026642825216', '公告管理', '公告展示', '/SysNoticeController/view', '0', '592059865673760768', 'gen:sysNotice:view', '1', 'fa fa-telegram', '10', '0');
INSERT INTO `t_sys_permission` VALUES ('3303650266428252171', '公告集合', '公告集合', '/SysNoticeController/list', '0', '330365026642825216', 'gen:sysNotice:list', '2', '', null, '0');
INSERT INTO `t_sys_permission` VALUES ('3303650266428252182', '公告添加', '公告添加', '/SysNoticeController/add', '0', '330365026642825216', 'gen:sysNotice:add', '2', 'entypo-plus-squared', null, '0');
INSERT INTO `t_sys_permission` VALUES ('3303650266428252193', '公告删除', '公告删除', '/SysNoticeController/remove', '0', '330365026642825216', 'gen:sysNotice:remove', '2', 'entypo-trash', null, '0');
INSERT INTO `t_sys_permission` VALUES ('3303650266428252204', '公告修改', '公告修改', '/SysNoticeController/edit', '0', '330365026642825216', 'gen:sysNotice:edit', '2', 'fa fa-wrench', null, '0');
INSERT INTO `t_sys_permission` VALUES ('331778807298134016', '定时器表达式', '', '/quartz/view', '1', '617766548966211584', '#', '1', 'fa fa-flash', '12', '0');
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
INSERT INTO `t_sys_permission` VALUES ('373489907429150720', 'URL拦截管理', '拦截url表展示', '/SysInterUrlController/view', '0', '617766548966211584', 'gen:sysInterUrl:view', '1', 'fa fa-hand-stop-o', '16', '0');
INSERT INTO `t_sys_permission` VALUES ('3734899074291507211', '拦截url表集合', '拦截url表集合', '/SysInterUrlController/list', '0', '373489907429150720', 'gen:sysInterUrl:list', '2', '', null, '0');
INSERT INTO `t_sys_permission` VALUES ('3734899074291507222', '拦截url表添加', '拦截url表添加', '/SysInterUrlController/add', '0', '373489907429150720', 'gen:sysInterUrl:add', '2', 'entypo-plus-squared', null, '0');
INSERT INTO `t_sys_permission` VALUES ('3734899074291507233', '拦截url表删除', '拦截url表删除', '/SysInterUrlController/remove', '0', '373489907429150720', 'gen:sysInterUrl:remove', '2', 'entypo-trash', null, '0');
INSERT INTO `t_sys_permission` VALUES ('3734899074291507244', '拦截url表修改', '拦截url表修改', '/SysInterUrlController/edit', '0', '373489907429150720', 'gen:sysInterUrl:edit', '2', 'fa fa-wrench', null, '0');
INSERT INTO `t_sys_permission` VALUES ('379959240841891840', '测试表管理', '测试表展示', '/TestController/view', '0', '589559748521623552', 'gen:test:view', '1', 'fa fa-quora', null, '0');
INSERT INTO `t_sys_permission` VALUES ('3799592408418918411', '测试表集合', '测试表集合', '/TestController/list', '0', '379959240841891840', 'gen:test:list', '2', '', null, '0');
INSERT INTO `t_sys_permission` VALUES ('3799592408418918422', '测试表添加', '测试表添加', '/TestController/add', '0', '379959240841891840', 'gen:test:add', '2', 'entypo-plus-squared', null, '0');
INSERT INTO `t_sys_permission` VALUES ('3799592408418918433', '测试表删除', '测试表删除', '/TestController/remove', '0', '379959240841891840', 'gen:test:remove', '2', 'entypo-trash', null, '0');
INSERT INTO `t_sys_permission` VALUES ('3799592408418918444', '测试表修改', '测试表修改', '/TestController/edit', '0', '379959240841891840', 'gen:test:edit', '2', 'fa fa-wrench', null, '0');
INSERT INTO `t_sys_permission` VALUES ('4', '用户管理', '用户展示', '/UserController/view', '0', '411522822607867904', 'system:user:view', '1', 'icon icon-user', '1', '0');
INSERT INTO `t_sys_permission` VALUES ('410791701859405824', '岗位管理', '岗位展示', '/SysPositionController/view', '0', '411522822607867904', 'gen:sysPosition:view', '1', 'fa fa-vcard', '17', '0');
INSERT INTO `t_sys_permission` VALUES ('4107917018594058251', '岗位表集合', '岗位集合', '/SysPositionController/list', '0', '410791701859405824', 'gen:sysPosition:list', '2', '', null, '0');
INSERT INTO `t_sys_permission` VALUES ('4107917018594058262', '岗位表添加', '岗位添加', '/SysPositionController/add', '0', '410791701859405824', 'gen:sysPosition:add', '2', 'entypo-plus-squared', null, '0');
INSERT INTO `t_sys_permission` VALUES ('4107917018594058273', '岗位表删除', '岗位删除', '/SysPositionController/remove', '0', '410791701859405824', 'gen:sysPosition:remove', '2', 'entypo-trash', null, '0');
INSERT INTO `t_sys_permission` VALUES ('4107917018594058284', '岗位表修改', '岗位修改', '/SysPositionController/edit', '0', '410791701859405824', 'gen:sysPosition:edit', '2', 'fa fa-wrench', null, '0');
INSERT INTO `t_sys_permission` VALUES ('410989805699207168', '部门管理', '部门展示', '/SysDepartmentController/view', '0', '411522822607867904', 'gen:sysDepartment:view', '1', 'fa fa-odnoklassniki', '18', '0');
INSERT INTO `t_sys_permission` VALUES ('4109898056992071691', '部门集合', '部门集合', '/SysDepartmentController/list', '0', '410989805699207168', 'gen:sysDepartment:list', '2', '', null, '0');
INSERT INTO `t_sys_permission` VALUES ('4109898056992071702', '部门添加', '部门添加', '/SysDepartmentController/add', '0', '410989805699207168', 'gen:sysDepartment:add', '2', 'entypo-plus-squared', null, '0');
INSERT INTO `t_sys_permission` VALUES ('4109898056992071713', '部门删除', '部门删除', '/SysDepartmentController/remove', '0', '410989805699207168', 'gen:sysDepartment:remove', '2', 'entypo-trash', null, '0');
INSERT INTO `t_sys_permission` VALUES ('4109898056992071724', '部门修改', '部门修改', '/SysDepartmentController/edit', '0', '410989805699207168', 'gen:sysDepartment:edit', '2', 'fa fa-wrench', null, '0');
INSERT INTO `t_sys_permission` VALUES ('411522822607867904', '用户管理', '用户管理', '#', '0', '496782496638173184', '#', '1', 'fa fa-id-badge', '3', '0');
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
INSERT INTO `t_sys_permission` VALUES ('9', '角色管理', '角色展示', '/RoleController/view', '0', '411522822607867904', 'system:role:view', '1', 'fa fa-group', '2', '0');

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
INSERT INTO `t_sys_permission_role` VALUES ('006cbf8c-5208-4cc9-8f5f-de6f767ceee6', '488243256161730560', '3401274122705346604');
INSERT INTO `t_sys_permission_role` VALUES ('01435dcd-dbf0-4b90-8654-1b8d26e112c1', '488243256161730560', '3328572814798397451');
INSERT INTO `t_sys_permission_role` VALUES ('04c6f963-f75f-48de-80ff-3ca107f4e29b', '488243256161730560', '3400880220181667873');
INSERT INTO `t_sys_permission_role` VALUES ('06986324-8397-4c04-9a6f-38cd179cf095', '488243256161730560', '6189186317948026883');
INSERT INTO `t_sys_permission_role` VALUES ('0a9f7e75-9693-4797-8220-b4073eda4051', '488243256161730560', '3401274122705346582');
INSERT INTO `t_sys_permission_role` VALUES ('0ad27e5c-5d5c-4800-9043-06bccacbe9ca', '488243256161730560', '3328572814798397473');
INSERT INTO `t_sys_permission_role` VALUES ('0d6a454a-8797-4363-bbb4-89bd8179b5a2', '488243256161730560', '586003694080753664');
INSERT INTO `t_sys_permission_role` VALUES ('0e03a943-2ee5-4dbd-83a3-5ee83765aadd', '488243256161730560', '5946910264304599042');
INSERT INTO `t_sys_permission_role` VALUES ('10aa6f17-c1fd-4c5a-bb83-e507ef7c3e83', '488243256161730560', '411522822607867904');
INSERT INTO `t_sys_permission_role` VALUES ('11089b00-d638-44a9-bd06-2f613bebb6ca', '488243256161730560', '379959240841891840');
INSERT INTO `t_sys_permission_role` VALUES ('129ab3a5-20b6-451e-a0b5-99eb96658985', '488243256161730560', '619836559427895296');
INSERT INTO `t_sys_permission_role` VALUES ('135eb0f6-21a6-4281-b14e-13e8f95a2032', '488243256161730560', '3400681518049566742');
INSERT INTO `t_sys_permission_role` VALUES ('13c97cb5-700c-4ae6-8da7-a8110a2353e5', '488243256161730560', '3303650266428252171');
INSERT INTO `t_sys_permission_role` VALUES ('1693bd6b-3e86-4fa9-8263-b04b8e955fcc', '488243256161730560', '6189186317738311681');
INSERT INTO `t_sys_permission_role` VALUES ('184a5ee4-c28e-4bfd-8e23-c0b85feb7ca4', '488243256161730560', '589559748521623552');
INSERT INTO `t_sys_permission_role` VALUES ('186924b7-3eaa-4307-83db-f2e02e0415cd', '488243256161730560', '3321578609202995211');
INSERT INTO `t_sys_permission_role` VALUES ('1a60b2f9-7f57-4018-95ca-ea2455f94faf', '488243256161730560', '3400961831355064331');
INSERT INTO `t_sys_permission_role` VALUES ('1f6d16d1-5f76-4569-9363-abb08ceaa1c9', '488243256161730560', '3400961831355064353');
INSERT INTO `t_sys_permission_role` VALUES ('205495dd-254b-4a87-8b9b-dbe5d34aaa68', '488243256161730560', '3734899074291507222');
INSERT INTO `t_sys_permission_role` VALUES ('25dc2407-07dd-48f4-bd73-0a565ea4907c', '488243256161730560', '15');
INSERT INTO `t_sys_permission_role` VALUES ('26f7cf1c-0cc5-4284-9d2b-c2d8d8c847dd', '488243256161730560', '4107917018594058262');
INSERT INTO `t_sys_permission_role` VALUES ('27577ee4-8a7d-40f2-8eda-c64a1f7009d4', '488243256161730560', '5946910264304599043');
INSERT INTO `t_sys_permission_role` VALUES ('28d400aa-aeae-4176-ac59-3aafc60ddf02', '488243256161730560', '3303650266428252204');
INSERT INTO `t_sys_permission_role` VALUES ('28dc00d4-8cf2-415b-850c-d799b30825ea', '488243256161730560', '4109898056992071713');
INSERT INTO `t_sys_permission_role` VALUES ('2fccf3f2-541f-4b53-b713-1d1e8bdb1807', '488243256161730560', '6192095214866268161');
INSERT INTO `t_sys_permission_role` VALUES ('31544271-6ad4-49c7-a345-9654714f7773', '488243256161730560', '8');
INSERT INTO `t_sys_permission_role` VALUES ('33742769-7ec0-41f9-9b41-6a3622061cff', '488243256161730560', '618918631769636864');
INSERT INTO `t_sys_permission_role` VALUES ('34685d9b-990f-4a74-9512-f9304a450371', '488243256161730560', '3799592408418918444');
INSERT INTO `t_sys_permission_role` VALUES ('3aa5cca7-02e6-42e4-a122-6db07a949959', '488243256161730560', '3401274122705346571');
INSERT INTO `t_sys_permission_role` VALUES ('3b4cdbc0-2651-4128-99d5-e8008098ccb3', '488243256161730560', '340127412270534656');
INSERT INTO `t_sys_permission_role` VALUES ('3d642362-5e6f-4caf-b352-4be8b8f3d9a6', '488243256161730560', '496127240363311104');
INSERT INTO `t_sys_permission_role` VALUES ('3e1f5813-1ca8-416b-898c-128741fbf4f9', '488243256161730560', '496782496638173184');
INSERT INTO `t_sys_permission_role` VALUES ('3e543c7a-2783-4be9-91e7-c071e618cd16', '488243256161730560', '4109898056992071702');
INSERT INTO `t_sys_permission_role` VALUES ('3f4a5684-a7e2-412e-8bde-efceb1448050', '488243256161730560', '583063272123531264');
INSERT INTO `t_sys_permission_role` VALUES ('4287b491-d049-405f-9303-96e691d10380', '488243256161730560', '23');
INSERT INTO `t_sys_permission_role` VALUES ('44627a6b-972e-4464-a94d-506b81324211', '488243256161730560', '3400681518049566753');
INSERT INTO `t_sys_permission_role` VALUES ('447b50a3-700c-4634-862f-8782eae6b2ad', '488243256161730560', '3400681518049566764');
INSERT INTO `t_sys_permission_role` VALUES ('46746e02-382b-4795-9642-9d2412f564a1', '488243256161730560', '335330315113467904');
INSERT INTO `t_sys_permission_role` VALUES ('49fceaeb-1315-4ef5-995b-aba280892d5a', '488243256161730560', '354865752219717632');
INSERT INTO `t_sys_permission_role` VALUES ('4ab3ebda-c852-41e2-b8c8-057ed1943bd6', '488243256161730560', '5');
INSERT INTO `t_sys_permission_role` VALUES ('4d46d00a-6e2a-4f5e-815b-44add496d646', '488243256161730560', '18');
INSERT INTO `t_sys_permission_role` VALUES ('5599c799-5195-40bb-9840-397edb9e1ddc', '488243256161730560', '12');
INSERT INTO `t_sys_permission_role` VALUES ('568189db-18b9-42c7-9e82-8cd66fdda570', '488243256161730560', '617751079701970944');
INSERT INTO `t_sys_permission_role` VALUES ('58fa3cdb-7cdc-40a8-8ed0-813b9be4a4c7', '488243256161730560', '410791701859405824');
INSERT INTO `t_sys_permission_role` VALUES ('5b4739b0-9d85-4a51-a4a9-ab4c078d92ca', '488243256161730560', '7');
INSERT INTO `t_sys_permission_role` VALUES ('5e50e383-4b3b-4424-b76c-952619737803', '488243256161730560', '340381240911859712');
INSERT INTO `t_sys_permission_role` VALUES ('5eef75e1-c72a-4484-8fe8-b5b7b20ab41a', '488243256161730560', '340066503263129600');
INSERT INTO `t_sys_permission_role` VALUES ('5ef1a2ef-fbc1-4ac2-a89c-3b3a586be619', '488243256161730560', '3401274122705346593');
INSERT INTO `t_sys_permission_role` VALUES ('5f565729-a961-4079-bb79-e3b1921a62f4', '488243256161730560', '5946910264304599044');
INSERT INTO `t_sys_permission_role` VALUES ('60d52140-41f7-412e-a153-87ff44aef5d3', '488243256161730560', '581541547099553792');
INSERT INTO `t_sys_permission_role` VALUES ('626620ce-3de9-41e0-a12f-9434506fa2ab', '488243256161730560', '589559475422101504');
INSERT INTO `t_sys_permission_role` VALUES ('63d66346-66ec-490d-a617-0aba4249af45', '488243256161730560', '20');
INSERT INTO `t_sys_permission_role` VALUES ('660042c8-793e-47d8-9dd6-6e54cd46ab25', '488243256161730560', '331778807298134016');
INSERT INTO `t_sys_permission_role` VALUES ('672b6ff9-2fac-4672-a624-c196e283f6b1', '488243256161730560', '6192095214866268162');
INSERT INTO `t_sys_permission_role` VALUES ('6849e9f6-053e-4d9b-a39f-ac55a0932856', '488243256161730560', '496126970468237312');
INSERT INTO `t_sys_permission_role` VALUES ('6ba3615d-3c34-4ea5-bd1c-50f8452a9106', '488243256161730560', '13');
INSERT INTO `t_sys_permission_role` VALUES ('6f1977e7-7e31-4f57-8fc7-bf435c7e5daa', '488243256161730560', '496127794879660032');
INSERT INTO `t_sys_permission_role` VALUES ('722c8859-c8ee-4545-a452-e2e648d90d18', '488243256161730560', '594691026430459904');
INSERT INTO `t_sys_permission_role` VALUES ('73444b08-804b-4505-af17-71e2f936d422', '488243256161730560', '340067579836108800');
INSERT INTO `t_sys_permission_role` VALUES ('7c9c52e7-7045-4a4a-8e0a-5d8f3fad4696', '488243256161730560', '14');
INSERT INTO `t_sys_permission_role` VALUES ('7d2a2c06-ec85-421e-8629-867348a831a6', '488243256161730560', '592067570522128384');
INSERT INTO `t_sys_permission_role` VALUES ('7ea60fb8-9660-4d42-8bc6-598bb586992e', '488243256161730560', '3321578609202995222');
INSERT INTO `t_sys_permission_role` VALUES ('7f7bd559-7ce8-437c-b4a9-1f1a42afe8d2', '488243256161730560', '332857281479839744');
INSERT INTO `t_sys_permission_role` VALUES ('8076a9bf-f826-45f7-be01-d5b23ece5b38', '488243256161730560', '3400880220181667851');
INSERT INTO `t_sys_permission_role` VALUES ('82aa144b-a71e-4f5d-8f84-4256014c5acf', '488243256161730560', '592167738407911424');
INSERT INTO `t_sys_permission_role` VALUES ('82b4c654-eec0-4361-bf14-0e1d5df2c41d', '488243256161730560', '17');
INSERT INTO `t_sys_permission_role` VALUES ('849a26aa-a428-4f1a-ad24-06314bab0204', '488243256161730560', '4109898056992071691');
INSERT INTO `t_sys_permission_role` VALUES ('8923b8e8-501f-4ad1-93da-aed83dfac5cd', '488243256161730560', '1');
INSERT INTO `t_sys_permission_role` VALUES ('8a2b4b48-4bba-4bec-92d0-967da3083e97', '488243256161730560', '6189186317989969924');
INSERT INTO `t_sys_permission_role` VALUES ('8aea7793-9aee-4c21-aaf6-e9fda319c02d', '488243256161730560', '587453033487532032');
INSERT INTO `t_sys_permission_role` VALUES ('8b055ddd-2e5c-4e1d-bbbe-3213ebc1b491', '488243256161730560', '373489907429150720');
INSERT INTO `t_sys_permission_role` VALUES ('8d0b29ab-7ad8-4176-8c1d-ac25ef01426c', '488243256161730560', '592059865673760768');
INSERT INTO `t_sys_permission_role` VALUES ('914a630e-81b8-4d9e-8389-8005956e6589', '488243256161730560', '3400880220181667884');
INSERT INTO `t_sys_permission_role` VALUES ('9226683b-7cf5-4085-bced-de093cbeeae7', '488243256161730560', '3734899074291507211');
INSERT INTO `t_sys_permission_role` VALUES ('94247c65-56a9-40ff-9373-444332b1e9e2', '488243256161730560', '9');
INSERT INTO `t_sys_permission_role` VALUES ('9a8eeae3-9b02-47b3-bf12-5f4948d5fa4a', '488243256161730560', '3303650266428252193');
INSERT INTO `t_sys_permission_role` VALUES ('9b68b4b5-53d5-445c-bef5-99fc38ec65e3', '488243256161730560', '3400961831355064364');
INSERT INTO `t_sys_permission_role` VALUES ('a268f3e9-1c15-40d9-9c16-965347e6a128', '488243256161730560', '410989805699207168');
INSERT INTO `t_sys_permission_role` VALUES ('a3203151-4089-4872-9987-cf0990316fc5', '488243256161730560', '332157860920299520');
INSERT INTO `t_sys_permission_role` VALUES ('a5969c2c-6ddc-488d-839a-9f5a1ecd91f3', '488243256161730560', '4107917018594058251');
INSERT INTO `t_sys_permission_role` VALUES ('a72ad744-076b-434a-b81b-0ae603f5051d', '488243256161730560', '11');
INSERT INTO `t_sys_permission_role` VALUES ('a9d5ea5c-1679-4ca2-a475-dc1809db2fbe', '488243256161730560', '6192095215075983364');
INSERT INTO `t_sys_permission_role` VALUES ('b13415a6-c181-4f25-b170-e756d311286b', '488243256161730560', '3799592408418918422');
INSERT INTO `t_sys_permission_role` VALUES ('b191d0e0-f9af-44a9-af80-98d31346070e', '488243256161730560', '340096183135506432');
INSERT INTO `t_sys_permission_role` VALUES ('b816d600-7920-4172-8f17-38f3eb5df54a', '488243256161730560', '3400880220181667862');
INSERT INTO `t_sys_permission_role` VALUES ('b9b4c094-7a67-434a-ae01-37726b31c29f', '488243256161730560', '3321578609202995233');
INSERT INTO `t_sys_permission_role` VALUES ('bb67fe48-4155-4b2c-b84a-08acc843f4bc', '488243256161730560', '340068151804956672');
INSERT INTO `t_sys_permission_role` VALUES ('bd06917c-08dd-433e-ba65-adfa762a6fe8', '488243256161730560', '10');
INSERT INTO `t_sys_permission_role` VALUES ('bda27d37-31fb-4a51-8e36-0e33b6c487ec', '488243256161730560', '4');
INSERT INTO `t_sys_permission_role` VALUES ('be63c5df-f455-43af-9eab-d30fffc493a3', '488243256161730560', '3400681518049566731');
INSERT INTO `t_sys_permission_role` VALUES ('c1508aaf-f324-450c-9a54-ede5feaa2df9', '488243256161730560', '486690002869157888');
INSERT INTO `t_sys_permission_role` VALUES ('c2779c0c-e255-4e46-8bcb-95f0c856e8ea', '488243256161730560', '22');
INSERT INTO `t_sys_permission_role` VALUES ('c6dbaa84-d4d7-48b3-a926-ec152cdebfa7', '488243256161730560', '4107917018594058284');
INSERT INTO `t_sys_permission_role` VALUES ('c8856acb-13ac-4ffc-92b0-ecfadd8dd5a4', '488243256161730560', '3734899074291507233');
INSERT INTO `t_sys_permission_role` VALUES ('ca3de3a7-7d37-455c-9635-e19545a1ab39', '488243256161730560', '6');
INSERT INTO `t_sys_permission_role` VALUES ('cb4177bb-72b3-47a9-b316-149cd38c2c27', '488243256161730560', '4107917018594058273');
INSERT INTO `t_sys_permission_role` VALUES ('cd252f87-cb19-4671-b861-03e8affb48d4', '488243256161730560', '3400961831355064342');
INSERT INTO `t_sys_permission_role` VALUES ('cdead1c8-201e-4e17-b21a-fe2fe74437c1', '488243256161730560', '21');
INSERT INTO `t_sys_permission_role` VALUES ('cf7fe3d0-08a5-4828-a8d5-2c6fe30cef91', '488243256161730560', '610635950447394816');
INSERT INTO `t_sys_permission_role` VALUES ('d41e7337-1de5-48ef-ad0e-95ddc2c8cd02', '488243256161730560', '6192095215075983363');
INSERT INTO `t_sys_permission_role` VALUES ('d822dd02-51d3-4b43-9c5d-e77fec8f83bb', '488243256161730560', '4109898056992071724');
INSERT INTO `t_sys_permission_role` VALUES ('d993e8cc-9d9b-4612-9597-aa533191a179', '488243256161730560', '354851114446884864');
INSERT INTO `t_sys_permission_role` VALUES ('dc5b4d21-bfac-4736-8c06-79670603d8c3', '488243256161730560', '340301160042860544');
INSERT INTO `t_sys_permission_role` VALUES ('e2127965-60cc-4f83-8068-e891496e5e4a', '488243256161730560', '589559916704825344');
INSERT INTO `t_sys_permission_role` VALUES ('e81962e4-1eb4-4857-a2d1-af2e411e2005', '488243256161730560', '5946910264304599041');
INSERT INTO `t_sys_permission_role` VALUES ('e821c907-253a-4124-807e-5c07ce464a48', '488243256161730560', '3303650266428252182');
INSERT INTO `t_sys_permission_role` VALUES ('ea00f0b3-6549-4d2d-98fe-496d09b47798', '488243256161730560', '3799592408418918433');
INSERT INTO `t_sys_permission_role` VALUES ('ec27ae37-0843-4948-afe2-7a9e15598d79', '488243256161730560', '16');
INSERT INTO `t_sys_permission_role` VALUES ('ef196190-c948-4c0b-b47f-4cc36a839fba', '488243256161730560', '19');
INSERT INTO `t_sys_permission_role` VALUES ('ef4314bc-5c04-4aa1-ac6b-bf51a417438c', '488243256161730560', '6189186317948026882');
INSERT INTO `t_sys_permission_role` VALUES ('efed0d86-d87c-48aa-acfc-cd084a823aad', '488243256161730560', '340088022018166784');
INSERT INTO `t_sys_permission_role` VALUES ('f4ca6075-90e2-4a23-854a-03ff367cb4a5', '488243256161730560', '330365026642825216');
INSERT INTO `t_sys_permission_role` VALUES ('f68637ea-de48-4f03-b928-ffaabdd3cdff', '488243256161730560', '617766548966211584');
INSERT INTO `t_sys_permission_role` VALUES ('f76112fe-1571-4307-b03d-9fe476ac6a1f', '488243256161730560', '3321578609202995244');
INSERT INTO `t_sys_permission_role` VALUES ('f77021b7-0381-4555-9838-1e80e957fded', '488243256161730560', '3799592408418918411');
INSERT INTO `t_sys_permission_role` VALUES ('fc7f8db3-95d4-4c5b-9cba-a20f78c4aab5', '488243256161730560', '610635485890478080');
INSERT INTO `t_sys_permission_role` VALUES ('fd9b66ea-5dba-4a6a-bb7b-877bd39c7429', '488243256161730560', '610983815791247360');
INSERT INTO `t_sys_permission_role` VALUES ('ff49ea2e-b1fa-43ab-bfff-4a5c3fff6be6', '488243256161730560', '3734899074291507244');

-- ----------------------------
-- Table structure for t_sys_position
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_position`;
CREATE TABLE `t_sys_position` (
  `id` varchar(255) NOT NULL COMMENT '主键',
  `post_name` varchar(255) DEFAULT NULL COMMENT '岗位名称',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `status` int(11) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='岗位表';

-- ----------------------------
-- Records of t_sys_position
-- ----------------------------
INSERT INTO `t_sys_position` VALUES ('410792368778907648', '总经理', '1', '1');
INSERT INTO `t_sys_position` VALUES ('410792443127140352', '技术经理', '2', '1');
INSERT INTO `t_sys_position` VALUES ('410792478929719296', '人事经理', '3', '1');
INSERT INTO `t_sys_position` VALUES ('411477874382606336', '员工', '4', '1');

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
INSERT INTO `t_sys_quartz_job` VALUES ('332182389491109888', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', '*/10 * * * * ?', '1', '1', '1');

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
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421274211356672', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：5毫秒', '0', null, '2020-04-29 18:22:40', '2020-04-29 18:22:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421274303631360', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:22:40', '2020-04-29 18:22:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421274324602880', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:22:40', '2020-04-29 18:22:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421274366545920', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:22:40', '2020-04-29 18:22:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421315554611200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:22:50', '2020-04-29 18:22:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421357501845504', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:23:00', '2020-04-29 18:23:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421399453274112', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:23:10', '2020-04-29 18:23:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421441375342592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:23:20', '2020-04-29 18:23:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421483351937024', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：2毫秒', '0', null, '2020-04-29 18:23:30', '2020-04-29 18:23:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421525257228288', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:23:40', '2020-04-29 18:23:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421567233822720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:23:50', '2020-04-29 18:23:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421609130725376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:24:00', '2020-04-29 18:24:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421648662040576', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:24:09', '2020-04-29 18:24:09');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421651073765376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:24:10', '2020-04-29 18:24:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421693041971200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:24:20', '2020-04-29 18:24:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421734959845376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:24:30', '2020-04-29 18:24:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421776974188544', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:24:40', '2020-04-29 18:24:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421818862702592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:24:50', '2020-04-29 18:24:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421860805742592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:25:00', '2020-04-29 18:25:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421902736199680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:25:10', '2020-04-29 18:25:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423552540512256', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：4毫秒', '0', null, '2020-04-29 18:31:43', '2020-04-29 18:31:43');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423552636981248', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:31:43', '2020-04-29 18:31:43');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423552670535680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:31:43', '2020-04-29 18:31:43');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423552687312896', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:31:43', '2020-04-29 18:31:43');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423552716673024', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:31:43', '2020-04-29 18:31:43');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423552741838848', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:31:43', '2020-04-29 18:31:43');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423559536611328', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:31:45', '2020-04-29 18:31:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423580482965504', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:31:50', '2020-04-29 18:31:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423601454485504', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:31:55', '2020-04-29 18:31:55');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423622405033984', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:32:00', '2020-04-29 18:32:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423643372359680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:32:05', '2020-04-29 18:32:05');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423664343879680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:32:10', '2020-04-29 18:32:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423685311205376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:32:15', '2020-04-29 18:32:15');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423706328862720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:32:20', '2020-04-29 18:32:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423727325548544', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:32:25', '2020-04-29 18:32:25');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423748250931200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:32:30', '2020-04-29 18:32:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423769188896768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:32:35', '2020-04-29 18:32:35');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423790227525632', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:32:40', '2020-04-29 18:32:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423811190657024', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:32:45', '2020-04-29 18:32:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423832178954240', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:32:50', '2020-04-29 18:32:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423853100142592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:32:55', '2020-04-29 18:32:55');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423874054885376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:33:00', '2020-04-29 18:33:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423895026405376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:33:05', '2020-04-29 18:33:05');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423916002119680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:33:10', '2020-04-29 18:33:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423937015582720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:33:15', '2020-04-29 18:33:15');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423957970325504', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:33:20', '2020-04-29 18:33:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423978925068288', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:33:25', '2020-04-29 18:33:25');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423999942725632', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:33:30', '2020-04-29 18:33:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424020889079808', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:33:35', '2020-04-29 18:33:35');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424041894154240', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:33:40', '2020-04-29 18:33:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424062844702720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:33:45', '2020-04-29 18:33:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424083803639808', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:33:50', '2020-04-29 18:33:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424104754188288', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:33:55', '2020-04-29 18:33:55');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424125746679808', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:34:00', '2020-04-29 18:34:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424146726588416', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:34:05', '2020-04-29 18:34:05');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424167727468544', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:34:10', '2020-04-29 18:34:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424188678017024', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:34:15', '2020-04-29 18:34:15');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424209636954112', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:34:20', '2020-04-29 18:34:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424230595891200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:34:25', '2020-04-29 18:34:25');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424251567411200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:34:30', '2020-04-29 18:34:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424272559902720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:34:35', '2020-04-29 18:34:35');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424293518839808', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:34:40', '2020-04-29 18:34:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424314507137024', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:34:45', '2020-04-29 18:34:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424335436713984', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:34:50', '2020-04-29 18:34:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424356404039680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:34:55', '2020-04-29 18:34:55');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424377396531200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:35:00', '2020-04-29 18:35:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424398414188544', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:35:05', '2020-04-29 18:35:05');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424419326988288', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:35:10', '2020-04-29 18:35:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424440332062720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:35:15', '2020-04-29 18:35:15');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424461282611200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:35:20', '2020-04-29 18:35:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424482254131200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:35:25', '2020-04-29 18:35:25');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424503200485376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:35:30', '2020-04-29 18:35:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424524163616768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:35:35', '2020-04-29 18:35:35');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424545135136768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:35:40', '2020-04-29 18:35:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424566148599808', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:35:45', '2020-04-29 18:35:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424587103342592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:35:50', '2020-04-29 18:35:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424608150360064', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:35:55', '2020-04-29 18:35:55');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424629029605376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:36:00', '2020-04-29 18:36:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424650072428544', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:36:05', '2020-04-29 18:36:05');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424671035559936', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:36:10', '2020-04-29 18:36:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424691981914112', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:36:15', '2020-04-29 18:36:15');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424712961822720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:36:20', '2020-04-29 18:36:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424733899788288', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:36:25', '2020-04-29 18:36:25');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424754862919680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:36:30', '2020-04-29 18:36:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424775888965632', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:36:35', '2020-04-29 18:36:35');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424796797571072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:36:40', '2020-04-29 18:36:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424817836199936', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:36:45', '2020-04-29 18:36:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424838769971200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:36:50', '2020-04-29 18:36:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424859741491200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:36:55', '2020-04-29 18:36:55');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424880696233984', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:37:00', '2020-04-29 18:37:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424901705502720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:37:05', '2020-04-29 18:37:05');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424922681217024', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:37:10', '2020-04-29 18:37:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424943690485760', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:37:15', '2020-04-29 18:37:15');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424964632645632', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:37:20', '2020-04-29 18:37:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424985562222592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:37:25', '2020-04-29 18:37:25');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425006516965376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:37:30', '2020-04-29 18:37:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425027484291072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:37:35', '2020-04-29 18:37:35');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425048476782592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：2毫秒', '0', null, '2020-04-29 18:37:40', '2020-04-29 18:37:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425069427331072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:37:45', '2020-04-29 18:37:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425090436599808', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:37:50', '2020-04-29 18:37:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425111412314112', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:37:55', '2020-04-29 18:37:55');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425132354473984', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:38:00', '2020-04-29 18:38:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425153334382592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:38:05', '2020-04-29 18:38:05');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425174335262720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:38:10', '2020-04-29 18:38:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425195290005504', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:38:15', '2020-04-29 18:38:15');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425216248942592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:38:20', '2020-04-29 18:38:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425237224656896', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：2毫秒', '0', null, '2020-04-29 18:38:25', '2020-04-29 18:38:25');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425258200371200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:38:30', '2020-04-29 18:38:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425279192862720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:38:35', '2020-04-29 18:38:35');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425300126633984', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:38:40', '2020-04-29 18:38:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425321089765376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:38:45', '2020-04-29 18:38:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425342082256896', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:38:50', '2020-04-29 18:38:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425363041193984', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:38:55', '2020-04-29 18:38:55');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425384000131072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:39:00', '2020-04-29 18:39:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425404967456768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:39:05', '2020-04-29 18:39:05');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425425997697024', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:39:10', '2020-04-29 18:39:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425446956634112', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:39:15', '2020-04-29 18:39:15');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425467902988288', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:39:20', '2020-04-29 18:39:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425488866119680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:39:25', '2020-04-29 18:39:25');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425509825056768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:39:30', '2020-04-29 18:39:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425530800771072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:39:35', '2020-04-29 18:39:35');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425551768096768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:39:40', '2020-04-29 18:39:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425572743811072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:39:45', '2020-04-29 18:39:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425593706942464', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:39:50', '2020-04-29 18:39:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425614678462464', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:39:55', '2020-04-29 18:39:55');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425635654176768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:40:00', '2020-04-29 18:40:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425656629891072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:40:05', '2020-04-29 18:40:05');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425677597216768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:40:10', '2020-04-29 18:40:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425698568736768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:40:15', '2020-04-29 18:40:15');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425719540256768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:40:20', '2020-04-29 18:40:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425740515971072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:40:25', '2020-04-29 18:40:25');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425761487491072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:40:30', '2020-04-29 18:40:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425782454816768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:40:35', '2020-04-29 18:40:35');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425803430531072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:40:40', '2020-04-29 18:40:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425824397856768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:40:45', '2020-04-29 18:40:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425845373571072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:40:50', '2020-04-29 18:40:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425866340896768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:40:55', '2020-04-29 18:40:55');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425887312416768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:41:00', '2020-04-29 18:41:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425908283936768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:41:05', '2020-04-29 18:41:05');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425929255456768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:41:10', '2020-04-29 18:41:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425950226976768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:41:15', '2020-04-29 18:41:15');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425971198496768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:41:20', '2020-04-29 18:41:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425992165822464', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:41:25', '2020-04-29 18:41:25');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426013141536768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:41:30', '2020-04-29 18:41:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426034117251072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:41:35', '2020-04-29 18:41:35');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426055088771072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:41:40', '2020-04-29 18:41:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426076056096768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:41:45', '2020-04-29 18:41:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426117479043072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：4毫秒', '0', null, '2020-04-29 18:41:51', '2020-04-29 18:41:51');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426138983239680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:42:00', '2020-04-29 18:42:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426180909502464', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:42:10', '2020-04-29 18:42:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426222856736768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:42:20', '2020-04-29 18:42:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426264799776768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:42:30', '2020-04-29 18:42:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426306742816768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:42:40', '2020-04-29 18:42:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426348685856768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:42:50', '2020-04-29 18:42:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426390633091072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:43:00', '2020-04-29 18:43:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426432580325376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:43:10', '2020-04-29 18:43:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426453539262464', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:43:15', '2020-04-29 18:43:15');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426474519171072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：2毫秒', '0', null, '2020-04-29 18:43:20', '2020-04-29 18:43:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426495486496768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:43:25', '2020-04-29 18:43:25');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426516462211072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:43:30', '2020-04-29 18:43:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426537437925376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:43:35', '2020-04-29 18:43:35');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426558417833984', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:43:40', '2020-04-29 18:43:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426579372576768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:43:45', '2020-04-29 18:43:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426600344096768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:43:50', '2020-04-29 18:43:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426789146497024', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：3毫秒', '0', null, '2020-04-29 18:44:35', '2020-04-29 18:44:35');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426810071879680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:44:40', '2020-04-29 18:44:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426831039205376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:44:45', '2020-04-29 18:44:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426851998142464', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:44:50', '2020-04-29 18:44:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426872982245376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:44:55', '2020-04-29 18:44:55');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426894041845760', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:45:00', '2020-04-29 18:45:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426914921091072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:45:05', '2020-04-29 18:45:05');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426935888416768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:45:10', '2020-04-29 18:45:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426956864131072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:45:15', '2020-04-29 18:45:15');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426977835651072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:45:20', '2020-04-29 18:45:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415427019774496768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:45:30', '2020-04-29 18:45:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415427061713342464', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:45:40', '2020-04-29 18:45:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415427103660576768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:45:50', '2020-04-29 18:45:50');

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
  `crate_time` datetime DEFAULT NULL COMMENT '创建时间',
  `tes_name` varchar(255) DEFAULT NULL COMMENT '名字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='测试表';

-- ----------------------------
-- Records of t_test
-- ----------------------------
INSERT INTO `t_test` VALUES ('382894613100367872', '111', '11', '2020-01-31 00:00:00', '1');
INSERT INTO `t_test` VALUES ('382894651864125440', '22', '22', '2020-01-31 00:00:00', '22');
INSERT INTO `t_test` VALUES ('382895269890625536', '333', '33', '1899-12-31 00:00:00', '3333');
INSERT INTO `t_test` VALUES ('382895290488852480', '4', '44444', '2020-01-31 00:00:00', '4444444444');
