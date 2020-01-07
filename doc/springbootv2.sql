/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1_3306
Source Server Version : 50725
Source Host           : 127.0.0.1:3306
Source Database       : springbootv2

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2020-01-07 14:30:00
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
INSERT INTO `t_sys_dict_data` VALUES ('373494384659927040', '0', 'GET请求', '1', 'sys_inter_url_type', '', 'primary', 'Y', '0', 'admin', '2020-01-05 01:40:11', 'admin', '2020-01-05 01:52:43', '');
INSERT INTO `t_sys_dict_data` VALUES ('373494483465146368', '1', 'POST请求', '2', 'sys_inter_url_type', '', 'info', 'N', '0', 'admin', '2020-01-05 01:40:34', 'admin', '2020-01-05 01:52:18', '');

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
INSERT INTO `t_sys_dict_type` VALUES ('373493952487231488', '拦截器类型', 'sys_inter_url_type', '0', 'admin', '2020-01-05 01:38:28', 'admin', '2020-01-05 01:38:50', '拦截器类型');
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
INSERT INTO `t_sys_permission` VALUES ('373489907429150720', 'URL拦截管理', '拦截url表展示', '/SysInterUrlController/view', '0', '592059865673760768', 'gen:sysInterUrl:view', '1', 'fa fa-hand-stop-o', null, '0');
INSERT INTO `t_sys_permission` VALUES ('3734899074291507211', '拦截url表集合', '拦截url表集合', '/SysInterUrlController/list', '0', '373489907429150720', 'gen:sysInterUrl:list', '2', '', null, '0');
INSERT INTO `t_sys_permission` VALUES ('3734899074291507222', '拦截url表添加', '拦截url表添加', '/SysInterUrlController/add', '0', '373489907429150720', 'gen:sysInterUrl:add', '2', 'entypo-plus-squared', null, '0');
INSERT INTO `t_sys_permission` VALUES ('3734899074291507233', '拦截url表删除', '拦截url表删除', '/SysInterUrlController/remove', '0', '373489907429150720', 'gen:sysInterUrl:remove', '2', 'entypo-trash', null, '0');
INSERT INTO `t_sys_permission` VALUES ('3734899074291507244', '拦截url表修改', '拦截url表修改', '/SysInterUrlController/edit', '0', '373489907429150720', 'gen:sysInterUrl:edit', '2', 'fa fa-wrench', null, '0');
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
INSERT INTO `t_sys_permission_role` VALUES ('03a83c1b-35cb-4d81-aa51-cae0bbe0b765', '488243256161730560', '5946910264304599041');
INSERT INTO `t_sys_permission_role` VALUES ('08528670-8cd2-4992-a509-6bddaccaca67', '488243256161730560', '3303650266428252204');
INSERT INTO `t_sys_permission_role` VALUES ('0b033771-71c1-4b80-8b08-1b5ed0853e1c', '488243256161730560', '3400681518049566731');
INSERT INTO `t_sys_permission_role` VALUES ('0d82f572-834f-41e5-a1d9-7cba8f74bed1', '488243256161730560', '583063272123531264');
INSERT INTO `t_sys_permission_role` VALUES ('0f0f21ea-2e2f-4cdd-808b-1231b77c78ed', '488243256161730560', '10');
INSERT INTO `t_sys_permission_role` VALUES ('109eda4c-e389-42a1-b82a-6fe714354ff6', '488243256161730560', '3734899074291507233');
INSERT INTO `t_sys_permission_role` VALUES ('14703932-e6a1-4791-8e5c-53541c9502f2', '488243256161730560', '8');
INSERT INTO `t_sys_permission_role` VALUES ('14cddcdb-9457-441c-a35f-58f1cb34921b', '488243256161730560', '3400681518049566753');
INSERT INTO `t_sys_permission_role` VALUES ('1df68085-24b0-433d-8a6f-1feba151363b', '488243256161730560', '617766548966211584');
INSERT INTO `t_sys_permission_role` VALUES ('1e2c0b23-f5fd-4099-903f-f4d420ef084f', '488243256161730560', '589559748521623552');
INSERT INTO `t_sys_permission_role` VALUES ('21fd161e-5fbb-4949-a426-cf2a580706be', '488243256161730560', '3303650266428252193');
INSERT INTO `t_sys_permission_role` VALUES ('2269ebef-7146-40d7-9333-1b7280a47cb9', '488243256161730560', '3401274122705346582');
INSERT INTO `t_sys_permission_role` VALUES ('22c8a593-df10-4d21-a10f-b5d019ab78a5', '488243256161730560', '496127794879660032');
INSERT INTO `t_sys_permission_role` VALUES ('259a398f-0258-41b4-b77b-c53bc2039e3c', '488243256161730560', '587453033487532032');
INSERT INTO `t_sys_permission_role` VALUES ('25ed0fc1-cd60-4d8f-b068-1dfe42d70931', '488243256161730560', '618918631769636864');
INSERT INTO `t_sys_permission_role` VALUES ('296eda17-fc13-495e-a622-5f9d4fe23b7d', '488243256161730560', '3321578609202995211');
INSERT INTO `t_sys_permission_role` VALUES ('2aed95cd-8f6a-4b4e-a327-23f5b55940e8', '488243256161730560', '5946910264304599042');
INSERT INTO `t_sys_permission_role` VALUES ('2b3ba94c-ad87-4147-9d93-57be13b8d7ae', '488243256161730560', '3303650266428252182');
INSERT INTO `t_sys_permission_role` VALUES ('2b44a69d-edc3-4650-ac1c-12db7951acb7', '488243256161730560', '6');
INSERT INTO `t_sys_permission_role` VALUES ('2b8dc363-a8e0-4ded-9930-317ecda42e8f', '488243256161730560', '354865752219717632');
INSERT INTO `t_sys_permission_role` VALUES ('2dd2608b-234e-492e-9bfc-72d97883ec2f', '488243256161730560', '3303650266428252171');
INSERT INTO `t_sys_permission_role` VALUES ('304654f3-3e36-44b8-b2d8-8b440d5647a7', '488243256161730560', '340068151804956672');
INSERT INTO `t_sys_permission_role` VALUES ('393cc234-5442-4b70-abc8-e70a18f332a9', '488243256161730560', '7');
INSERT INTO `t_sys_permission_role` VALUES ('43715e01-9bab-48a6-a048-ced41f0bfed0', '488243256161730560', '17');
INSERT INTO `t_sys_permission_role` VALUES ('46d1d8c1-9f66-4ffe-a87d-f3c47f4bc590', '488243256161730560', '3401274122705346604');
INSERT INTO `t_sys_permission_role` VALUES ('471bcabd-b5e2-4d5e-acc8-12ba8dd76ff3', '488243256161730560', '3734899074291507211');
INSERT INTO `t_sys_permission_role` VALUES ('473fb2b6-f94e-45bb-b689-ef05e6671a97', '488243256161730560', '594691026430459904');
INSERT INTO `t_sys_permission_role` VALUES ('48059cbe-77d3-4482-9193-296f47f372cc', '488243256161730560', '6189186317989969924');
INSERT INTO `t_sys_permission_role` VALUES ('4c2174fa-d95a-4493-bab2-4b2133f9e87b', '488243256161730560', '610635485890478080');
INSERT INTO `t_sys_permission_role` VALUES ('4db4a5b9-5c61-47fc-bd03-d9eb4146f68f', '488243256161730560', '340088022018166784');
INSERT INTO `t_sys_permission_role` VALUES ('55649c93-d0b0-40ea-a6e9-fb5ab48f9434', '488243256161730560', '3328572814798397451');
INSERT INTO `t_sys_permission_role` VALUES ('562671fd-98e6-47ac-8941-8669f01163ce', '488243256161730560', '340066503263129600');
INSERT INTO `t_sys_permission_role` VALUES ('586b8e2d-6f8d-4c42-9f0f-202c202d460d', '488243256161730560', '3400961831355064364');
INSERT INTO `t_sys_permission_role` VALUES ('595266e4-a441-4982-a787-fa03a8e75c34', '488243256161730560', '617751079701970944');
INSERT INTO `t_sys_permission_role` VALUES ('5a510527-6f28-44db-a529-66f34b835b80', '488243256161730560', '589559916704825344');
INSERT INTO `t_sys_permission_role` VALUES ('5b1b4a45-b79d-4b47-8b4c-d37769800d59', '488243256161730560', '331778807298134016');
INSERT INTO `t_sys_permission_role` VALUES ('5f3668e4-af36-47a5-891f-801db8689108', '488243256161730560', '14');
INSERT INTO `t_sys_permission_role` VALUES ('616bb9c5-5197-47d3-96ed-9717d4925868', '488243256161730560', '610635950447394816');
INSERT INTO `t_sys_permission_role` VALUES ('64cb3094-62cf-4e80-8c1d-67efe4d16956', '488243256161730560', '592167738407911424');
INSERT INTO `t_sys_permission_role` VALUES ('68d60246-4d06-4669-a582-894935c80e26', '488243256161730560', '6189186317948026883');
INSERT INTO `t_sys_permission_role` VALUES ('6e49f96c-f47b-43d8-ac1b-4fc0d57d3ccf', '488243256161730560', '12');
INSERT INTO `t_sys_permission_role` VALUES ('6ef44507-6ca4-40fd-beb6-bfc2fddf57b9', '488243256161730560', '581541547099553792');
INSERT INTO `t_sys_permission_role` VALUES ('70957e03-ec1e-43bc-ae37-beaa9953dfcd', '488243256161730560', '5');
INSERT INTO `t_sys_permission_role` VALUES ('767164a5-a914-47e2-aa56-db4e72a56424', '488243256161730560', '354851114446884864');
INSERT INTO `t_sys_permission_role` VALUES ('7bb9b3d3-bcbb-48a3-b6ec-569b6e3b5eff', '488243256161730560', '13');
INSERT INTO `t_sys_permission_role` VALUES ('7e5ecdb2-edd9-4640-8875-4e1237137dc4', '488243256161730560', '4');
INSERT INTO `t_sys_permission_role` VALUES ('7f39e9bd-5885-4666-ab34-fc0444657caa', '488243256161730560', '5946910264304599044');
INSERT INTO `t_sys_permission_role` VALUES ('860dd91b-8191-42ef-94a9-5d2c84f269e6', '488243256161730560', '332857281479839744');
INSERT INTO `t_sys_permission_role` VALUES ('86703428-7920-4f6c-8178-3415177a2004', '488243256161730560', '619836559427895296');
INSERT INTO `t_sys_permission_role` VALUES ('8699828e-4dfd-4796-ad79-fd82a327656e', '488243256161730560', '3321578609202995244');
INSERT INTO `t_sys_permission_role` VALUES ('893f4ac3-f445-4574-b875-15c2b19e4021', '488243256161730560', '3400961831355064331');
INSERT INTO `t_sys_permission_role` VALUES ('8c5ff6bb-1a77-4af3-a4d0-7c1161b15358', '488243256161730560', '335330315113467904');
INSERT INTO `t_sys_permission_role` VALUES ('8fb70182-83c1-4a6e-b61c-a54312885cff', '488243256161730560', '6192095215075983363');
INSERT INTO `t_sys_permission_role` VALUES ('9193b742-7b35-44f5-8332-0ac948d317dc', '488243256161730560', '6189186317738311681');
INSERT INTO `t_sys_permission_role` VALUES ('92e87860-982b-4793-be40-f3d01eba1a7e', '488243256161730560', '592059865673760768');
INSERT INTO `t_sys_permission_role` VALUES ('94079847-bc27-40cc-b318-394e886bd490', '488243256161730560', '19');
INSERT INTO `t_sys_permission_role` VALUES ('97a98605-7437-41fb-8671-7f1439947238', '488243256161730560', '15');
INSERT INTO `t_sys_permission_role` VALUES ('9e1173ce-2504-47c2-a471-6c4e7baaa796', '488243256161730560', '9');
INSERT INTO `t_sys_permission_role` VALUES ('a2ec9fbe-523e-48e7-9235-c7d1cb8e5193', '488243256161730560', '3734899074291507222');
INSERT INTO `t_sys_permission_role` VALUES ('a32d55df-9275-4a25-91c6-f0f8459ab178', '488243256161730560', '3400961831355064353');
INSERT INTO `t_sys_permission_role` VALUES ('a338753e-eb3b-43cd-a118-9e3ae62075e8', '488243256161730560', '592067570522128384');
INSERT INTO `t_sys_permission_role` VALUES ('a3acbe5c-4205-43dc-9c30-7a9972e9aed4', '488243256161730560', '586003694080753664');
INSERT INTO `t_sys_permission_role` VALUES ('a8df9b93-4447-4053-aa13-4169322f47ac', '488243256161730560', '3400681518049566764');
INSERT INTO `t_sys_permission_role` VALUES ('aad30dec-fd2f-4c04-8450-bbc09ce5cf0a', '488243256161730560', '3321578609202995222');
INSERT INTO `t_sys_permission_role` VALUES ('adc9f9e0-1bf9-41ca-9aef-0a3a28f4e276', '488243256161730560', '589559475422101504');
INSERT INTO `t_sys_permission_role` VALUES ('ae694e19-7a79-46b6-a2fd-805e59c7bb51', '488243256161730560', '21');
INSERT INTO `t_sys_permission_role` VALUES ('aff1b5fa-7efd-4481-b4d7-7b023e8ad25d', '488243256161730560', '22');
INSERT INTO `t_sys_permission_role` VALUES ('aff2e673-9fcb-4fd2-a97e-a56229a2c62b', '488243256161730560', '340301160042860544');
INSERT INTO `t_sys_permission_role` VALUES ('b1368635-f1df-46ba-9a00-d86b96ba8369', '488243256161730560', '20');
INSERT INTO `t_sys_permission_role` VALUES ('b2c1047a-4d5d-4495-8308-49c27b24f7d2', '488243256161730560', '1');
INSERT INTO `t_sys_permission_role` VALUES ('b2f16c7b-41cb-42ed-b623-da9a5aefe685', '488243256161730560', '496127240363311104');
INSERT INTO `t_sys_permission_role` VALUES ('b73b5de3-11d2-4a6a-9de6-64ce2ba203eb', '488243256161730560', '610983815791247360');
INSERT INTO `t_sys_permission_role` VALUES ('b785173b-432a-4d45-8416-3494bbb6804a', '488243256161730560', '340096183135506432');
INSERT INTO `t_sys_permission_role` VALUES ('b8484a6b-9f7e-4795-b909-678f486924e8', '488243256161730560', '496126970468237312');
INSERT INTO `t_sys_permission_role` VALUES ('b9e41983-a10f-40e2-8efa-7ec5b63123cd', '488243256161730560', '3328572814798397473');
INSERT INTO `t_sys_permission_role` VALUES ('bb4dc7f0-198f-4873-a7a0-5a5b9c184fc8', '488243256161730560', '3401274122705346593');
INSERT INTO `t_sys_permission_role` VALUES ('be2c324c-6782-485b-b735-439c6efe2418', '488243256161730560', '340127412270534656');
INSERT INTO `t_sys_permission_role` VALUES ('c2000cb4-3138-4c11-a610-59b65b776a84', '488243256161730560', '3321578609202995233');
INSERT INTO `t_sys_permission_role` VALUES ('c450cb2e-9fa0-4d79-baaa-5458ffef8307', '488243256161730560', '3400880220181667851');
INSERT INTO `t_sys_permission_role` VALUES ('c54e7579-f9a5-4414-a4ce-a9cf85e8343a', '488243256161730560', '332157860920299520');
INSERT INTO `t_sys_permission_role` VALUES ('c6a4a5b5-1ca0-4f32-b178-7d2f4f9ed5dc', '488243256161730560', '6192095214866268161');
INSERT INTO `t_sys_permission_role` VALUES ('c7659468-9c2c-47c8-9fc4-e8b7455f1bb0', '488243256161730560', '340381240911859712');
INSERT INTO `t_sys_permission_role` VALUES ('cc95746c-ae79-4f58-b176-2a690bac872c', '488243256161730560', '3400880220181667873');
INSERT INTO `t_sys_permission_role` VALUES ('cd9b7d06-3c66-4a0f-9ae5-7d33b044e8b2', '488243256161730560', '6192095214866268162');
INSERT INTO `t_sys_permission_role` VALUES ('cdc68c16-7c78-4a25-bf9c-e5022587c42b', '488243256161730560', '3734899074291507244');
INSERT INTO `t_sys_permission_role` VALUES ('cea270ea-1210-4dd5-9cb5-a4aa0953cb53', '488243256161730560', '18');
INSERT INTO `t_sys_permission_role` VALUES ('d001de90-a55f-4229-9003-7a2eb10aa64e', '488243256161730560', '23');
INSERT INTO `t_sys_permission_role` VALUES ('d0cc6969-bbea-48c5-9e50-27b32083f303', '488243256161730560', '16');
INSERT INTO `t_sys_permission_role` VALUES ('d7975e4e-9041-4349-a899-03ea60c6dcac', '488243256161730560', '6192095215075983364');
INSERT INTO `t_sys_permission_role` VALUES ('d8f78d30-6288-4b6f-9d2c-93d823fbe2de', '488243256161730560', '6189186317948026882');
INSERT INTO `t_sys_permission_role` VALUES ('dfd56d6f-c9da-4ea8-9cb2-e94243aa4d1b', '488243256161730560', '11');
INSERT INTO `t_sys_permission_role` VALUES ('e1dc47d0-3e87-46b5-804a-a6ca59f2c528', '488243256161730560', '3401274122705346571');
INSERT INTO `t_sys_permission_role` VALUES ('e264ef92-2fe1-43a0-b1ee-1c1b2a1a40a7', '488243256161730560', '496782496638173184');
INSERT INTO `t_sys_permission_role` VALUES ('e46b83cd-056b-4471-8962-a4d30120778a', '488243256161730560', '5946910264304599043');
INSERT INTO `t_sys_permission_role` VALUES ('e4940f36-27b0-42cf-a117-8381f55b505b', '488243256161730560', '3400880220181667862');
INSERT INTO `t_sys_permission_role` VALUES ('e8c80a34-837c-4bed-bfe3-57cd7d38beb9', '488243256161730560', '330365026642825216');
INSERT INTO `t_sys_permission_role` VALUES ('ef1a92eb-faa8-461b-bf3e-c51108472bf5', '488243256161730560', '373489907429150720');
INSERT INTO `t_sys_permission_role` VALUES ('f282ddcf-ac1e-41bd-a7d1-6ae67685d4cc', '488243256161730560', '486690002869157888');
INSERT INTO `t_sys_permission_role` VALUES ('f2b181d6-43ee-4abd-a5d8-01d58df2c9d5', '488243256161730560', '3400961831355064342');
INSERT INTO `t_sys_permission_role` VALUES ('f59da34f-87b7-4635-ab3f-01cf63c07e5c', '488243256161730560', '3400880220181667884');
INSERT INTO `t_sys_permission_role` VALUES ('f6ab167b-fc05-4aac-af7e-1cbfa91d7611', '488243256161730560', '340067579836108800');
INSERT INTO `t_sys_permission_role` VALUES ('ff4bf594-7269-4aca-88c1-d568fa708feb', '488243256161730560', '3400681518049566742');

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
INSERT INTO `t_sys_user` VALUES ('368026921239449600', 'admin1', 'e00cf25ad42683b3df678c61f42c6bda', '');
INSERT INTO `t_sys_user` VALUES ('368026937181999104', 'admin2', 'c84258e9c39059a89ab77d846ddab909', '');
INSERT INTO `t_sys_user` VALUES ('368027013392502784', '44', '73882ab1fa529d7273da0db6b49cc4f3', '444');
INSERT INTO `t_sys_user` VALUES ('368027030899527680', '5555555', '7a48932b26f04fccb55f0409ba3451fc', '5555555555555');
INSERT INTO `t_sys_user` VALUES ('368027048402358272', '66', '9f0863dd5f0256b0f586a7b523f8cfe8', '6666666666');
INSERT INTO `t_sys_user` VALUES ('368027066563694592', '2222', '0d777e9e30b918e9034ab610712c90cf', '2222222222222222');
INSERT INTO `t_sys_user` VALUES ('368027087866564608', '4444', '9a741f0ad60975ae15d3d83a769442a1', '44444444444');
INSERT INTO `t_sys_user` VALUES ('368027104895438848', '5555', '90a3e7de4de4a1f8bbe3c092858ed812', '555555555555');
INSERT INTO `t_sys_user` VALUES ('368027130728157184', '666', '68bac75ed032e0a86bc3eae1b5c996cf', '666666666');
INSERT INTO `t_sys_user` VALUES ('368027151624179712', '33333333333333', '7b9e4ac60eb7c66e06592cee6dbd0c57', '33333333333333');
INSERT INTO `t_sys_user` VALUES ('368382463233363968', 'adminpppoooo', '8769c8e5c430f5a461e10680357bef09', 'pppppppppp');

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
