/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : springbootv2pear

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 18/01/2021 03:00:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_sys_area
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_area`;
CREATE TABLE `t_sys_area`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增列',
  `area_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区代码',
  `city_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父级市代码',
  `area_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '市名称',
  `short_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '简称',
  `lng` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经度',
  `lat` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '纬度',
  `sort` int(6) NULL DEFAULT NULL COMMENT '排序',
  `gmt_create` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `memo` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `data_state` int(11) NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `Index_1`(`area_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2013 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '地区设置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sys_area
-- ----------------------------
INSERT INTO `t_sys_area` VALUES (1975, '500101', '500100', '万州区', '万州', '108.380249', '30.807808', 28, '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', 0);
INSERT INTO `t_sys_area` VALUES (1976, '500102', '500100', '涪陵区', '涪陵', '107.394905', '29.703651', 11, '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', 0);
INSERT INTO `t_sys_area` VALUES (1977, '500103', '500100', '渝中区', '渝中', '106.562881', '29.556742', 37, '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', 0);
INSERT INTO `t_sys_area` VALUES (1978, '500104', '500100', '大渡口区', '大渡口', '106.48613', '29.481003', 6, '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', 0);
INSERT INTO `t_sys_area` VALUES (1979, '500105', '500100', '江北区', '江北', '106.532845', '29.575352', 13, '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', 0);
INSERT INTO `t_sys_area` VALUES (1980, '500106', '500100', '沙坪坝区', '沙坪坝', '106.454201', '29.541224', 24, '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', 0);
INSERT INTO `t_sys_area` VALUES (1981, '500107', '500100', '九龙坡区', '九龙坡', '106.480988', '29.523493', 15, '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', 0);
INSERT INTO `t_sys_area` VALUES (1982, '500108', '500100', '南岸区', '南岸', '106.560814', '29.523993', 18, '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', 0);
INSERT INTO `t_sys_area` VALUES (1983, '500109', '500100', '北碚区', '北碚', '106.437866', '29.82543', 2, '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', 0);
INSERT INTO `t_sys_area` VALUES (1984, '500112', '500100', '渝北区', '渝北', '106.512848', '29.601452', 35, '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', 0);
INSERT INTO `t_sys_area` VALUES (1985, '500113', '500100', '巴南区', '巴南', '106.519424', '29.38192', 1, '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', 0);
INSERT INTO `t_sys_area` VALUES (1986, '500114', '500100', '黔江区', '黔江', '108.782578', '29.527548', 21, '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', 0);
INSERT INTO `t_sys_area` VALUES (1987, '500115', '500100', '长寿区', '长寿', '107.074852', '29.833672', 4, '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', 0);
INSERT INTO `t_sys_area` VALUES (1988, '500222', '500100', '綦江区', '綦江', '106.651421', '29.028091', 22, '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', 0);
INSERT INTO `t_sys_area` VALUES (1989, '500223', '500100', '潼南县', '潼南', '105.84182', '30.189554', 27, '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', 0);
INSERT INTO `t_sys_area` VALUES (1990, '500224', '500100', '铜梁县', '铜梁', '106.054947', '29.839945', 26, '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', 0);
INSERT INTO `t_sys_area` VALUES (1991, '500225', '500100', '大足区', '大足', '105.715317', '29.700499', 7, '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', 0);
INSERT INTO `t_sys_area` VALUES (1992, '500226', '500100', '荣昌县', '荣昌', '105.594063', '29.403627', 23, '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', 0);
INSERT INTO `t_sys_area` VALUES (1993, '500227', '500100', '璧山县', '璧山', '106.231125', '29.59358', 3, '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', 0);
INSERT INTO `t_sys_area` VALUES (1994, '500228', '500100', '梁平县', '梁平', '107.800034', '30.672169', 17, '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', 0);
INSERT INTO `t_sys_area` VALUES (1995, '500229', '500100', '城口县', '城口', '108.664902', '31.946293', 5, '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', 0);
INSERT INTO `t_sys_area` VALUES (1996, '500230', '500100', '丰都县', '丰都', '107.732483', '29.866425', 9, '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', 0);
INSERT INTO `t_sys_area` VALUES (1997, '500231', '500100', '垫江县', '垫江', '107.348694', '30.330011', 8, '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', 0);
INSERT INTO `t_sys_area` VALUES (1998, '500232', '500100', '武隆县', '武隆', '107.756554', '29.323759', 29, '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', 0);
INSERT INTO `t_sys_area` VALUES (1999, '500233', '500100', '忠县', '忠县', '108.037521', '30.291536', 38, '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', 0);
INSERT INTO `t_sys_area` VALUES (2000, '500234', '500100', '开县', '开县', '108.413315', '31.167734', 16, '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', 0);
INSERT INTO `t_sys_area` VALUES (2001, '500235', '500100', '云阳县', '云阳', '108.697701', '30.930529', 36, '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', 0);
INSERT INTO `t_sys_area` VALUES (2002, '500236', '500100', '奉节县', '奉节', '109.465775', '31.019966', 10, '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', 0);
INSERT INTO `t_sys_area` VALUES (2003, '500237', '500100', '巫山县', '巫山', '109.878929', '31.074842', 30, '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', 0);
INSERT INTO `t_sys_area` VALUES (2004, '500238', '500100', '巫溪县', '巫溪', '109.628914', '31.396601', 31, '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', 0);
INSERT INTO `t_sys_area` VALUES (2005, '500240', '500100', '石柱土家族自治县', '石柱', '108.11245', '29.998529', 25, '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', 0);
INSERT INTO `t_sys_area` VALUES (2006, '500241', '500100', '秀山土家族苗族自治县', '秀山', '108.99604', '28.444773', 32, '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', 0);
INSERT INTO `t_sys_area` VALUES (2007, '500242', '500100', '酉阳土家族苗族自治县', '酉阳', '108.767204', '28.839828', 34, '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', 0);
INSERT INTO `t_sys_area` VALUES (2008, '500243', '500100', '彭水苗族土家族自治县', '彭水', '108.16655', '29.293856', 20, '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', 0);
INSERT INTO `t_sys_area` VALUES (2009, '500381', '500100', '江津区', '江津', '106.253159', '29.283386', 14, '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', 0);
INSERT INTO `t_sys_area` VALUES (2010, '500382', '500100', '合川区', '合川', '106.265556', '29.990993', 12, '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', 0);
INSERT INTO `t_sys_area` VALUES (2011, '500383', '500100', '永川区', '永川', '105.894714', '29.348747', 33, '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', 0);
INSERT INTO `t_sys_area` VALUES (2012, '500384', '500100', '南川区', '南川', '107.098152', '29.156647', 19, '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', 0);

-- ----------------------------
-- Table structure for t_sys_city
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_city`;
CREATE TABLE `t_sys_city`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增列',
  `city_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '市代码',
  `city_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '市名称',
  `short_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '简称',
  `province_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省代码',
  `lng` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经度',
  `lat` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '纬度',
  `sort` int(6) NULL DEFAULT NULL COMMENT '排序',
  `gmt_create` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `memo` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `data_state` int(11) NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `Index_1`(`city_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 256 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '城市设置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sys_city
-- ----------------------------
INSERT INTO `t_sys_city` VALUES (255, '500100', '重庆市', '重庆', '500000', '106.504959', '29.533155', 1, '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', 0);

-- ----------------------------
-- Table structure for t_sys_department
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_department`;
CREATE TABLE `t_sys_department`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `parent_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父id',
  `dept_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门名称',
  `leader` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门负责人',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` int(255) NULL DEFAULT NULL COMMENT '状态',
  `order_num` int(11) NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sys_department
-- ----------------------------
INSERT INTO `t_sys_department` VALUES (1, '0', 'v2', 'v2', '13012345678', 'v2@qq.com', 1, 1);
INSERT INTO `t_sys_department` VALUES (2, '1', '技术部门', 'x某某', '13012345678', 'v2@qq.com', 1, 2);
INSERT INTO `t_sys_department` VALUES (3, '1', '人事部门', 'a某某', '13012345678', 'v2@qq.com', 1, 3);
INSERT INTO `t_sys_department` VALUES (4, '2', '开发一小组', 'b某某', '13012345678', 'v2@qq.com', 1, 4);
INSERT INTO `t_sys_department` VALUES (5, '3', '销售部门', 'd某某', '13012345678', 'v2@qq.com', 1, 5);
INSERT INTO `t_sys_department` VALUES (6, '5', '销售一组', 'e某某', '13012345678', 'v2@qq.com', 1, 6);

-- ----------------------------
-- Table structure for t_sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_dict_data`;
CREATE TABLE `t_sys_dict_data`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sys_dict_data
-- ----------------------------
INSERT INTO `t_sys_dict_data` VALUES ('331043380933038080', 1, '一般', '1', 'sys_notice_type', '', 'info', 'Y', '0', 'admin', '2019-09-09 22:15:03', 'admin', '2019-09-09 22:15:43', '');
INSERT INTO `t_sys_dict_data` VALUES ('331043525137403904', 2, '重要', '2', 'sys_notice_type', '', 'important', 'N', '0', 'admin', '2019-09-09 22:15:37', 'admin', '2020-12-27 13:57:22', '');
INSERT INTO `t_sys_dict_data` VALUES ('340080322395901952', 1, '开启', '0', 'sys_province_state', '', 'info', 'Y', '0', 'admin', '2019-10-04 20:44:37', 'admin', '2019-10-04 20:46:41', '');
INSERT INTO `t_sys_dict_data` VALUES ('340080779201744896', 2, '关闭', '-1', 'sys_province_state', '', 'important', 'N', '0', 'admin', '2019-10-04 20:46:26', 'admin', '2020-12-27 13:57:46', '');
INSERT INTO `t_sys_dict_data` VALUES ('373494384659927040', 0, 'GET请求', '1', 'sys_inter_url_type', '', 'primary', 'Y', '0', 'admin', '2020-01-05 01:40:11', 'admin', '2020-12-27 14:27:28', '');
INSERT INTO `t_sys_dict_data` VALUES ('373494483465146368', 1, 'POST请求', '2', 'sys_inter_url_type', '', 'info', 'N', '0', 'admin', '2020-01-05 01:40:34', 'admin', '2020-12-27 14:26:59', '');
INSERT INTO `t_sys_dict_data` VALUES ('506431838588375040', 0, 'DELETE请求', '3', 'sys_inter_url_type', '', 'default', 'N', '0', 'admin', '2021-01-05 13:46:10', 'admin', '2021-01-05 13:48:43', '');
INSERT INTO `t_sys_dict_data` VALUES ('506432620712824832', 0, 'PUT请求', '4', 'sys_inter_url_type', '', 'default', 'N', '0', 'admin', '2021-01-05 13:49:16', 'admin', '2021-01-05 13:49:20', '');

-- ----------------------------
-- Table structure for t_sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_dict_type`;
CREATE TABLE `t_sys_dict_type`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sys_dict_type
-- ----------------------------
INSERT INTO `t_sys_dict_type` VALUES ('340079827459641344', '省份状态', 'sys_province_state', '0', 'admin', '2019-10-04 20:42:39', '', '2019-10-04 20:42:39', '省份状态');
INSERT INTO `t_sys_dict_type` VALUES ('373493952487231488', '拦截器类型', 'sys_inter_url_type', '0', 'admin', '2020-01-05 01:38:28', 'admin', '2020-03-29 23:23:43', '拦截器类型');
INSERT INTO `t_sys_dict_type` VALUES ('6', '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-12-27 14:26:42', '通知类型列表');

-- ----------------------------
-- Table structure for t_sys_email
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_email`;
CREATE TABLE `t_sys_email`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '主键',
  `receivers_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '接收人电子邮件',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '邮件标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '内容',
  `send_user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '发送人id',
  `send_user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '发送人账号',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '电子邮件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sys_email
-- ----------------------------
INSERT INTO `t_sys_email` VALUES ('503928650819833856', '87766867@qq.com', '87766867@qq.com', 'fffffff<img src=\"http://localhost:8080/demo/static/component/layui/images/face/22.gif\" alt=\"[委屈]\">', '1', 'admin', '2020-12-29 15:59:23');
INSERT INTO `t_sys_email` VALUES ('503928914918379520', '87766867@qq.com', '87766867@qq.com', 'ssssssfsdfsdfsdf<img src=\"http://localhost:8080/demo/static/component/layui/images/face/42.gif\" alt=\"[抓狂]\"><img src=\"http://localhost:8080/demo/static/component/layui/images/face/71.gif\" alt=\"[蛋糕]\">', '1', 'admin', '2020-12-29 16:00:26');
INSERT INTO `t_sys_email` VALUES ('595001021625794560', '87766867@qq.com', 'springbootv2测试邮件', '<p>测试测测测</p>', '1', 'admin', '2019-06-30 21:21:38');

-- ----------------------------
-- Table structure for t_sys_file
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_file`;
CREATE TABLE `t_sys_file`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '主键',
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '文件名字',
  `bucket_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '桶名',
  `file_size` bigint(50) NULL DEFAULT NULL COMMENT '文件大小',
  `file_suffix` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '后缀',
  `create_user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人id',
  `create_user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人名字',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '修改人',
  `update_user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '修改人名字',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '文件信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sys_file
-- ----------------------------
INSERT INTO `t_sys_file` VALUES ('503885495013609472', '503895116063313920.png', 'v2-cloud', 48831, 'image/png', '1', 'admin', '2020-12-29 13:07:54', '1', 'admin', '2020-12-29 13:46:08');
INSERT INTO `t_sys_file` VALUES ('503885528857448448', '503895039806672896.png', 'v2-cloud', 71460, 'image/png', '1', 'admin', '2020-12-29 13:08:02', '1', 'admin', '2020-12-29 13:45:50');

-- ----------------------------
-- Table structure for t_sys_inter_url
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_inter_url`;
CREATE TABLE `t_sys_inter_url`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `inter_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拦截名称',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拦截url',
  `type` int(2) NULL DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '拦截url表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sys_inter_url
-- ----------------------------
INSERT INTO `t_sys_inter_url` VALUES ('411495038321823744', '字典表新增', '/DictDataController/add', 2);
INSERT INTO `t_sys_inter_url` VALUES ('506433268967673856', '字典表修改', '/DictDataController/edit', 2);
INSERT INTO `t_sys_inter_url` VALUES ('506434978159136768', '字典表删除', '/DictDataController/remove', 3);
INSERT INTO `t_sys_inter_url` VALUES ('506435565655298048', '字典表状态修改', '/DictDataController/updateDefault', 4);
INSERT INTO `t_sys_inter_url` VALUES ('506435921147727872', '字典表状态修改2', '/DictDataController/updateEnable', 4);
INSERT INTO `t_sys_inter_url` VALUES ('506436031403397120', '字典表类型新增', '/DictTypeController/add', 2);
INSERT INTO `t_sys_inter_url` VALUES ('506436148680331264', '字典表类型修改', '/DictTypeController/edit', 2);
INSERT INTO `t_sys_inter_url` VALUES ('506436165776314368', '字典表类型删除', '/DictTypeController/remove', 3);
INSERT INTO `t_sys_inter_url` VALUES ('506436180578013184', '字典表类型状态修改', '/DictTypeController/updateEnable', 4);
INSERT INTO `t_sys_inter_url` VALUES ('506436662134444032', '邮件新增', '/EmailController/add', 2);
INSERT INTO `t_sys_inter_url` VALUES ('506436757722632192', '邮件删除', '/EmailController/remove', 3);
INSERT INTO `t_sys_inter_url` VALUES ('506437010966319104', '日志删除', '/LogController/remove', 3);
INSERT INTO `t_sys_inter_url` VALUES ('506437420099702784', 'oss新增', '/oss/bucket/', 2);
INSERT INTO `t_sys_inter_url` VALUES ('506437439112482816', 'oss删除', '/oss/bucket/', 3);
INSERT INTO `t_sys_inter_url` VALUES ('506437964436475904', '权限新增', '/PermissionController/add', 2);
INSERT INTO `t_sys_inter_url` VALUES ('506438040823140352', '权限保存', '/PermissionController/edit', 2);
INSERT INTO `t_sys_inter_url` VALUES ('506438121399914496', '权限删除', '/PermissionController/remove', 3);
INSERT INTO `t_sys_inter_url` VALUES ('506438208599494656', '权限授权', '/PermissionController/saveRolePower', 4);
INSERT INTO `t_sys_inter_url` VALUES ('506438306276446208', '权限状态修改', '/PermissionController/updateVisible', 4);
INSERT INTO `t_sys_inter_url` VALUES ('506438447226032128', '定时器新增', '/SysQuartzJobController/add', 2);
INSERT INTO `t_sys_inter_url` VALUES ('506438589874311168', ' 任务调度状态修改', '/SysQuartzJobController/changeStatus', 4);
INSERT INTO `t_sys_inter_url` VALUES ('506438725388079104', '定时器保存', '/SysQuartzJobController/edit', 2);
INSERT INTO `t_sys_inter_url` VALUES ('506438870959788032', '定时器修改', '/SysQuartzJobController/remove', 3);
INSERT INTO `t_sys_inter_url` VALUES ('506439003516571648', '定时任务日志删除', '/SysQuartzJobLogController/remove', 3);
INSERT INTO `t_sys_inter_url` VALUES ('506439171481669632', '角色新增', '/RoleController/add', 2);
INSERT INTO `t_sys_inter_url` VALUES ('506439186778296320', '角色修改', '/RoleController/edit', 4);
INSERT INTO `t_sys_inter_url` VALUES ('506439297122045952', '角色删除', '/RoleController/remove', 3);
INSERT INTO `t_sys_inter_url` VALUES ('506439669773373440', '地区新增', '/SysAreaController/add', 2);
INSERT INTO `t_sys_inter_url` VALUES ('506439687859212288', '地区修改', '/SysAreaController/edit', 2);
INSERT INTO `t_sys_inter_url` VALUES ('506439835490324480', '地区删除', '/SysAreaController/remove', 3);
INSERT INTO `t_sys_inter_url` VALUES ('506440103976112128', 'City新增', '/SysCityController/add', 2);
INSERT INTO `t_sys_inter_url` VALUES ('506440145147400192', 'City修改', ' /SysCityController/edit', 2);
INSERT INTO `t_sys_inter_url` VALUES ('506440217188765696', 'City删除', '/SysCityController/remove', 3);
INSERT INTO `t_sys_inter_url` VALUES ('506440386873528320', '部门新增', '/SysDepartmentController/add', 2);
INSERT INTO `t_sys_inter_url` VALUES ('506440448223612928', '部门修改', '/SysDepartmentController/edit', 4);
INSERT INTO `t_sys_inter_url` VALUES ('506440515110178816', '部门删除', '/SysDepartmentController/remove', 3);
INSERT INTO `t_sys_inter_url` VALUES ('506440574635741184', '部门状态', '/SysDepartmentController/updateVisible', 4);
INSERT INTO `t_sys_inter_url` VALUES ('506440668508459008', '拦截器url新增', '/SysInterUrlController/add', 2);
INSERT INTO `t_sys_inter_url` VALUES ('506440708056551424', '拦截器url修改', '/SysInterUrlController/edit', 2);
INSERT INTO `t_sys_inter_url` VALUES ('506440802856210432', '拦截器url删除', '/SysInterUrlController/remove', 3);
INSERT INTO `t_sys_inter_url` VALUES ('506441001783660544', '公告新增', '/SysNoticeController/add', 2);
INSERT INTO `t_sys_inter_url` VALUES ('506441051263864832', '公告修改', '/SysNoticeController/edit', 2);
INSERT INTO `t_sys_inter_url` VALUES ('506441105743679488', '公告删除', '/SysNoticeController/remove', 3);
INSERT INTO `t_sys_inter_url` VALUES ('506441242591236096', '职位新增', '/SysPositionController/add', 2);
INSERT INTO `t_sys_inter_url` VALUES ('506441287038275584', '职位修改', '/SysPositionController/edit', 2);
INSERT INTO `t_sys_inter_url` VALUES ('506441350200299520', '职位删除', '/SysPositionController/remove', 3);
INSERT INTO `t_sys_inter_url` VALUES ('506441420677189632', '职位状态修改', '/SysPositionController/updateVisible', 4);
INSERT INTO `t_sys_inter_url` VALUES ('506441780003213312', '省份新增', '/SysProvinceController/add', 2);
INSERT INTO `t_sys_inter_url` VALUES ('506441807383629824', '省份修改', '/SysProvinceController/edit', 2);
INSERT INTO `t_sys_inter_url` VALUES ('506441871850082304', '省份删除', '/SysProvinceController/remove', 3);
INSERT INTO `t_sys_inter_url` VALUES ('506441980012793856', '街道新增', '/SysStreetController/add', 2);
INSERT INTO `t_sys_inter_url` VALUES ('506442015706320896', '街道修改', '/SysStreetController/edit', 2);
INSERT INTO `t_sys_inter_url` VALUES ('506442092445306880', '街道删除', '/SysStreetController/remove', 3);
INSERT INTO `t_sys_inter_url` VALUES ('506442186552905728', '用户新增', '/UserController/add', 2);
INSERT INTO `t_sys_inter_url` VALUES ('506442212696002560', '用户修改', '/UserController/edit', 2);
INSERT INTO `t_sys_inter_url` VALUES ('506442271252680704', '用户修改密码', '/UserController/editPwd', 2);
INSERT INTO `t_sys_inter_url` VALUES ('506442344443285504', '用户删除', '/UserController/remove', 3);
INSERT INTO `t_sys_inter_url` VALUES ('506444610625736704', '拦截器url复制', '/SysInterUrlController/copy/', 3);

-- ----------------------------
-- Table structure for t_sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_notice`;
CREATE TABLE `t_sys_notice`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '主键',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '内容',
  `type` int(5) NULL DEFAULT NULL COMMENT '类型',
  `create_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人id',
  `create_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人name',
  `create_time` datetime NULL DEFAULT NULL COMMENT '发信时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公告' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sys_notice
-- ----------------------------
INSERT INTO `t_sys_notice` VALUES ('330381411007729664', '测试公告', '<p>啊啊啊<img src=\"http://img.baidu.com/hi/jx2/j_0002.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0024.gif\"/></p>', 1, '1', 'admin', '2019-09-08 02:24:37');
INSERT INTO `t_sys_notice` VALUES ('330381806358630400', '鲜花视频', '<p>哈哈哈哈<img src=\"http://img.baidu.com/hi/jx2/j_0024.gif\"/></p>', 2, '1', 'admin', '2019-09-08 02:26:11');
INSERT INTO `t_sys_notice` VALUES ('373478036928073728', '顶顶顶顶顶顶顶顶顶', '<p>顶顶顶顶顶顶顶顶顶顶<img src=\"http://img.baidu.com/hi/jx2/j_0014.gif\"/></p>', 1, '1', 'admin', '2020-01-05 00:35:13');

-- ----------------------------
-- Table structure for t_sys_notice_user
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_notice_user`;
CREATE TABLE `t_sys_notice_user`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `notice_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告id',
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `state` int(2) NULL DEFAULT NULL COMMENT '0未阅读 1 阅读',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公告_用户外键' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sys_notice_user
-- ----------------------------
INSERT INTO `t_sys_notice_user` VALUES ('330381411037089792', '330381411007729664', '1', 1);
INSERT INTO `t_sys_notice_user` VALUES ('330381411045478400', '330381411007729664', '488294747442511872', 0);
INSERT INTO `t_sys_notice_user` VALUES ('330381806375407616', '330381806358630400', '1', 1);
INSERT INTO `t_sys_notice_user` VALUES ('330381806379601920', '330381806358630400', '488294747442511872', 0);
INSERT INTO `t_sys_notice_user` VALUES ('330622143622680576', '330622143597514752', '1', 1);
INSERT INTO `t_sys_notice_user` VALUES ('330622143626874880', '330622143597514752', '488294747442511872', 0);
INSERT INTO `t_sys_notice_user` VALUES ('354984345649418240', '354984345632641024', '1', 1);
INSERT INTO `t_sys_notice_user` VALUES ('373478037158760448', '373478036928073728', '1', 1);
INSERT INTO `t_sys_notice_user` VALUES ('373478037162954752', '373478036928073728', '368026921239449600', 0);
INSERT INTO `t_sys_notice_user` VALUES ('373478037171343360', '373478036928073728', '368026937181999104', 0);
INSERT INTO `t_sys_notice_user` VALUES ('373478037175537664', '373478036928073728', '368027013392502784', 0);
INSERT INTO `t_sys_notice_user` VALUES ('373478037183926272', '373478036928073728', '368027030899527680', 0);
INSERT INTO `t_sys_notice_user` VALUES ('373478037192314880', '373478036928073728', '368027048402358272', 0);
INSERT INTO `t_sys_notice_user` VALUES ('373478037204897792', '373478036928073728', '368027066563694592', 0);
INSERT INTO `t_sys_notice_user` VALUES ('373478037213286400', '373478036928073728', '368027087866564608', 0);
INSERT INTO `t_sys_notice_user` VALUES ('373478037217480704', '373478036928073728', '368027104895438848', 0);
INSERT INTO `t_sys_notice_user` VALUES ('373478037225869312', '373478036928073728', '368027130728157184', 0);
INSERT INTO `t_sys_notice_user` VALUES ('373478037230063616', '373478036928073728', '368027151624179712', 0);
INSERT INTO `t_sys_notice_user` VALUES ('373478037238452224', '373478036928073728', '368382463233363968', 0);
INSERT INTO `t_sys_notice_user` VALUES ('502750147499921408', '502750147395063808', '1', 0);
INSERT INTO `t_sys_notice_user` VALUES ('502750147508310016', '502750147395063808', '433236479427350528', 0);
INSERT INTO `t_sys_notice_user` VALUES ('502758207983325184', '502758207907827712', '1', 0);
INSERT INTO `t_sys_notice_user` VALUES ('502758207991713792', '502758207907827712', '433236479427350528', 0);
INSERT INTO `t_sys_notice_user` VALUES ('502820822130495488', '502820822042415104', '1', 0);
INSERT INTO `t_sys_notice_user` VALUES ('502820822138884096', '502820822042415104', '433236479427350528', 0);

-- ----------------------------
-- Table structure for t_sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_oper_log`;
CREATE TABLE `t_sys_oper_log`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '标题',
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '方法',
  `oper_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '操作人',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'url',
  `oper_param` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '参数',
  `error_msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `oper_time` date NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '日志记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sys_oper_log
-- ----------------------------
INSERT INTO `t_sys_oper_log` VALUES ('354984005894017024', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"admin22\"],\"password\":[\"admin22\"],\"nickname\":[\"222\"],\"roles\":[\"488243256161730560\"]}', NULL, '2019-11-14');
INSERT INTO `t_sys_oper_log` VALUES ('354988722611163136', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"admin222\"],\"password\":[\"admin22\"],\"nickname\":[\"22222\"],\"roles\":[\"488243256161730560\"]}', NULL, '2019-11-15');
INSERT INTO `t_sys_oper_log` VALUES ('354989789822455808', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"admin33\"],\"password\":[\"admin33\"],\"nickname\":[\"333\"],\"roles\":[\"488305788310257664\"]}', NULL, '2019-11-15');
INSERT INTO `t_sys_oper_log` VALUES ('368026921411416064', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"admin1\"],\"password\":[\"admin1\"],\"nickname\":[\"\"]}', NULL, '2019-12-20');
INSERT INTO `t_sys_oper_log` VALUES ('368026937215553536', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"admin2\"],\"password\":[\"admin2\"],\"nickname\":[\"\"]}', NULL, '2019-12-20');
INSERT INTO `t_sys_oper_log` VALUES ('368026972204437504', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"33333\"],\"password\":[\"3333333\"],\"nickname\":[\"333\"]}', NULL, '2019-12-20');
INSERT INTO `t_sys_oper_log` VALUES ('368027013421862912', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"44\"],\"password\":[\"444444\"],\"nickname\":[\"444\"]}', NULL, '2019-12-20');
INSERT INTO `t_sys_oper_log` VALUES ('368027030928887808', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"5555555\"],\"password\":[\"555555555555\"],\"nickname\":[\"5555555555555\"]}', NULL, '2019-12-20');
INSERT INTO `t_sys_oper_log` VALUES ('368027048427524096', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"66\"],\"password\":[\"666666666\"],\"nickname\":[\"6666666666\"]}', NULL, '2019-12-20');
INSERT INTO `t_sys_oper_log` VALUES ('368027066593054720', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"2222\"],\"password\":[\"222222222\"],\"nickname\":[\"2222222222222222\"]}', NULL, '2019-12-20');
INSERT INTO `t_sys_oper_log` VALUES ('368027087887536128', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"4444\"],\"password\":[\"44444444444444\"],\"nickname\":[\"44444444444\"]}', NULL, '2019-12-20');
INSERT INTO `t_sys_oper_log` VALUES ('368027104924798976', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"5555\"],\"password\":[\"55555555555555\"],\"nickname\":[\"555555555555\"]}', NULL, '2019-12-20');
INSERT INTO `t_sys_oper_log` VALUES ('368027130757517312', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"666\"],\"password\":[\"66666666666\"],\"nickname\":[\"666666666\"]}', NULL, '2019-12-20');
INSERT INTO `t_sys_oper_log` VALUES ('368027151649345536', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"33333333333333\"],\"password\":[\"333333333333\"],\"nickname\":[\"33333333333333\"]}', NULL, '2019-12-20');
INSERT INTO `t_sys_oper_log` VALUES ('368382463388553216', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"adminpppoooo\"],\"password\":[\"adminppp\"],\"nickname\":[\"pppppppppp\"]}', NULL, '2019-12-21');
INSERT INTO `t_sys_oper_log` VALUES ('433236479515430912', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"fuce\"],\"password\":[\"111111\"],\"nickname\":[\"fuce\"]}', NULL, '2020-06-17');
INSERT INTO `t_sys_oper_log` VALUES ('495560243967823872', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"手动阀手动阀\"],\"password\":[\"123456\"],\"nickname\":[\"手动阀手动阀\"],\"depId\":[\"3\"],\"positionId\":[\"411477874382606336\"]}', NULL, '2020-12-06');
INSERT INTO `t_sys_oper_log` VALUES ('495570972590608384', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"何平\"],\"password\":[\"111111\"],\"nickname\":[\"手动阀手动阀\"],\"depId\":[\"4\"],\"posId\":[\"410792443127140352\"]}', NULL, '2020-12-06');
INSERT INTO `t_sys_oper_log` VALUES ('501769007083425792', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{}', '', '2020-12-24');
INSERT INTO `t_sys_oper_log` VALUES ('501772647076597760', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{}', '', '2020-12-24');
INSERT INTO `t_sys_oper_log` VALUES ('501775645991374848', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{}', '', '2020-12-24');
INSERT INTO `t_sys_oper_log` VALUES ('501776479886118912', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{}', '', '2020-12-24');
INSERT INTO `t_sys_oper_log` VALUES ('501779375067369472', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{}', '', '2020-12-24');
INSERT INTO `t_sys_oper_log` VALUES ('501779625379237888', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{}', '', '2020-12-24');
INSERT INTO `t_sys_oper_log` VALUES ('501780125961031680', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{}', '', '2020-12-24');
INSERT INTO `t_sys_oper_log` VALUES ('501782630312841216', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"eeee\"],\"password\":[\"eeeeee\"],\"nickname\":[\"eeeeeeee\"],\"depId\":[\"1\"],\"selectParent_select_input\":[\"v2\"],\"posId\":[\"410792368778907648\"],\"roleIds\":[\"488243256161730560,488289006124007424\"]}', NULL, '2020-12-24');
INSERT INTO `t_sys_oper_log` VALUES ('501783503843758080', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"55555\"],\"password\":[\"5555\"],\"nickname\":[\"555555\"],\"depId\":[\"1\"],\"selectParent_select_input\":[\"v2\"],\"posId\":[\"410792368778907648\"],\"roleIds\":[\"488243256161730560,488289006124007424\"]}', NULL, '2020-12-24');
INSERT INTO `t_sys_oper_log` VALUES ('501783738078859264', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"3\"],\"password\":[\"33333333\"],\"nickname\":[\"3333333333333333333\"],\"depId\":[\"3\"],\"selectParent_select_input\":[\"人事部门\"],\"posId\":[\"410792443127140352\"],\"roleIds\":[\"488289006124007424\"]}', NULL, '2020-12-24');
INSERT INTO `t_sys_oper_log` VALUES ('501786177666420736', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"eeee\"],\"password\":[\"eee\"],\"nickname\":[\"eeeee\"],\"depId\":[\"1\"],\"selectParent_select_input\":[\"v2\"],\"posId\":[\"410792478929719296\"],\"roleIds\":[\"488243256161730560,488289006124007424,488305788310257664\"]}', NULL, '2020-12-24');
INSERT INTO `t_sys_oper_log` VALUES ('501786241449201664', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"r\"],\"password\":[\"rrrrrrrrrrr\"],\"nickname\":[\"rrrrrrrrr\"],\"depId\":[\"1\"],\"selectParent_select_input\":[\"v2\"],\"posId\":[\"410792368778907648\"],\"roleIds\":[\"488243256161730560,488289006124007424,488305788310257664\"]}', NULL, '2020-12-24');
INSERT INTO `t_sys_oper_log` VALUES ('501786725912285184', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"rrrrr\"],\"password\":[\"rrrrrrrrrrrrrr\"],\"nickname\":[\"rrrrrrrrrrrrrr\"],\"depId\":[\"3\"],\"selectParent_select_input\":[\"人事部门\"],\"posId\":[\"410792478929719296\"],\"roleIds\":[\"488243256161730560,488289006124007424\"]}', NULL, '2020-12-24');
INSERT INTO `t_sys_oper_log` VALUES ('501787814850072576', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"rrrrrwwww\"],\"password\":[\"rrrrrrrrrrrrr\"],\"nickname\":[\"rrrrrrrrrrrrrrrrrr\"],\"depId\":[\"1\"],\"selectParent_select_input\":[\"v2\"],\"posId\":[\"410792368778907648\"],\"roleIds\":[\"\"]}', NULL, '2020-12-24');
INSERT INTO `t_sys_oper_log` VALUES ('501787928188555264', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"yyyy\"],\"password\":[\"yyyyyyyyyyyyy\"],\"nickname\":[\"yyyyyyyyyyyyyy\"],\"depId\":[\"5\"],\"selectParent_select_input\":[\"销售部门\"],\"posId\":[\"410792478929719296\"],\"roleIds\":[\"488243256161730560,488289006124007424,488305788310257664\"]}', NULL, '2020-12-24');
INSERT INTO `t_sys_oper_log` VALUES ('501796773694672896', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"tttt\"],\"password\":[\"ttt\"],\"nickname\":[\"tttttt\"],\"depId\":[\"4\"],\"selectParent_select_input\":[\"开发一小组\"],\"posId\":[\"410792443127140352\"],\"roleIds\":[\"488243256161730560,488305788310257664\"]}', NULL, '2020-12-24');
INSERT INTO `t_sys_oper_log` VALUES ('501985140440961024', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"admin\"],\"password\":[\"admin\"],\"nickname\":[\"11111111111\"],\"depId\":[\"1\"],\"selectParent_select_input\":[\"v2\"],\"posId\":[\"410792368778907648\"],\"roleIds\":[\"488289006124007424,488305788310257664\"]}', NULL, '2020-12-24');
INSERT INTO `t_sys_oper_log` VALUES ('501986656363089920', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"admin\"],\"password\":[\"admin\"],\"nickname\":[\"admin\"],\"depId\":[\"1\"],\"selectParent_select_input\":[\"v2\"],\"posId\":[\"410792368778907648\"],\"roleIds\":[\"488289006124007424,488305788310257664\"]}', NULL, '2020-12-24');

-- ----------------------------
-- Table structure for t_sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_permission`;
CREATE TABLE `t_sys_permission`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限名称',
  `descripion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限描述',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '授权链接',
  `is_blank` int(255) NULL DEFAULT 0 COMMENT '是否跳转 0 不跳转 1跳转',
  `pid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父节点id',
  `perms` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `type` int(11) NULL DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) NULL DEFAULT NULL COMMENT '排序',
  `visible` int(255) NULL DEFAULT NULL COMMENT '是否可见',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sys_permission
-- ----------------------------
INSERT INTO `t_sys_permission` VALUES ('10', '角色集合', '角色集合', '/RoleController/list', 0, '9', 'system:role:list', 2, '', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('11', '角色添加', '角色添加', '/RoleController/add', 0, '9', 'system:role:add', 2, 'entypo-plus-squared', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('12', '角色删除', '角色删除', '/RoleController/remove', 0, '9', 'system:role:remove', 2, 'entypo-trash', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('13', '角色修改', '角色修改', '/RoleController/edit', 0, '9', 'system:role:edit', 2, 'fa fa-wrench', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('14', '权限展示', '权限展示', '/PermissionController/view', 0, '411522822607867904', 'system:permission:view', 1, 'fa fa-key', 3, 0);
INSERT INTO `t_sys_permission` VALUES ('15', '权限集合', '权限集合', '/PermissionController/list', 0, '14', 'system:permission:list', 2, '', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('16', '权限添加', '权限添加', '/permissionController/add', 0, '14', 'system:permission:add', 2, 'entypo-plus-squared', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('17', '权限删除', '权限删除', '/PermissionController/remove', 0, '14', 'system:permission:remove', 2, 'entypo-trash', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('18', '权限修改', '权限修改', '/PermissionController/edit', 0, '14', 'system:permission:edit', 2, 'fa fa-wrench', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('19', '文件管理', '文件管理', '/FileController/view', 0, '592059865673760768', 'system:file:view', 1, 'fa fa-file-image-o', 4, 0);
INSERT INTO `t_sys_permission` VALUES ('20', '文件添加', '文件添加', '/FileController/add', 0, '19', 'system:file:add', 2, 'entypo-plus-squared', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('21', '文件删除', '文件删除', '/FileController/remove', 0, '19', 'system:file:remove', 2, 'entypo-trash', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('22', '文件修改', '文件修改', '/FileController/edit', 0, '19', 'system:file:edit', 2, 'fa fa-wrench', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('23', '文件集合', '文件集合', '/FileController/list', 0, '19', 'system:file:list', 2, '', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('330365026642825216', '公告管理', '公告展示', '/SysNoticeController/view', 0, '592059865673760768', 'gen:sysNotice:view', 1, 'fa fa-telegram', 10, 0);
INSERT INTO `t_sys_permission` VALUES ('3303650266428252171', '公告集合', '公告集合', '/SysNoticeController/list', 0, '330365026642825216', 'gen:sysNotice:list', 2, '', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3303650266428252182', '公告添加', '公告添加', '/SysNoticeController/add', 0, '330365026642825216', 'gen:sysNotice:add', 2, 'entypo-plus-squared', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3303650266428252193', '公告删除', '公告删除', '/SysNoticeController/remove', 0, '330365026642825216', 'gen:sysNotice:remove', 2, 'entypo-trash', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3303650266428252204', '公告修改', '公告修改', '/SysNoticeController/edit', 0, '330365026642825216', 'gen:sysNotice:edit', 2, 'fa fa-wrench', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('331778807298134016', '定时器表达式', NULL, 'https://www.bejson.com/othertools/cron/', 1, '617766548966211584', '#', 1, 'layui-icon fa fa-flash', 12, 0);
INSERT INTO `t_sys_permission` VALUES ('332157860920299520', '定时任务', '定时任务调度表展示', '/SysQuartzJobController/view', 0, '592059865673760768', 'gen:sysQuartzJob:view', 1, 'fa fa-hourglass-1', 13, 0);
INSERT INTO `t_sys_permission` VALUES ('3321578609202995211', '定时任务调度表集合', '定时任务调度表集合', '/SysQuartzJobController/list', 0, '332157860920299520', 'gen:sysQuartzJob:list', 2, '', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3321578609202995222', '定时任务调度表添加', '定时任务调度表添加', '/SysQuartzJobController/add', 0, '332157860920299520', 'gen:sysQuartzJob:add', 2, 'entypo-plus-squared', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3321578609202995233', '定时任务调度表删除', '定时任务调度表删除', '/SysQuartzJobController/remove', 0, '332157860920299520', 'gen:sysQuartzJob:remove', 2, 'entypo-trash', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3321578609202995244', '定时任务调度表修改', '定时任务调度表修改', '/SysQuartzJobController/edit', 0, '332157860920299520', 'gen:sysQuartzJob:edit', 2, 'fa fa-wrench', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('332857281479839744', '定时任务日志', '定时任务日志', '/SysQuartzJobLogController/view', 0, '592059865673760768', 'gen:sysQuartzJobLog:view', 1, 'fa fa-database', 14, 0);
INSERT INTO `t_sys_permission` VALUES ('3328572814798397451', '定时任务调度日志表集合', '定时任务调度日志表集合', '/SysQuartzJobLogController/list', 0, '332857281479839744', 'gen:sysQuartzJobLog:list', 2, '', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3328572814798397473', '定时任务调度日志表删除', '定时任务调度日志表删除', '/SysQuartzJobLogController/remove', 0, '332857281479839744', 'gen:sysQuartzJobLog:remove', 2, 'entypo-trash', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('335330315113467904', 'Json工具', NULL, 'https://www.bejson.com/jsonviewernew/', 1, '617766548966211584', '#', 1, 'layui-icon fa fa-retweet', 10, 0);
INSERT INTO `t_sys_permission` VALUES ('340067579836108800', '省份管理', NULL, '', 0, '0', '', 0, 'layui-icon layui-icon layui-icon-website', 4, 0);
INSERT INTO `t_sys_permission` VALUES ('340068151804956672', '省份表管理', '省份表展示', '/SysProvinceController/view', 0, '340067579836108800', 'gen:sysProvince:view', 1, 'fa fa-quora', 2, 0);
INSERT INTO `t_sys_permission` VALUES ('3400681518049566731', '省份表集合', '省份表集合', '/SysProvinceController/list', 0, '340068151804956672', 'gen:sysProvince:list', 2, '', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3400681518049566742', '省份表添加', '省份表添加', '/SysProvinceController/add', 0, '340068151804956672', 'gen:sysProvince:add', 2, 'entypo-plus-squared', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3400681518049566753', '省份表删除', '省份表删除', '/SysProvinceController/remove', 0, '340068151804956672', 'gen:sysProvince:remove', 2, 'entypo-trash', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3400681518049566764', '省份表修改', '省份表修改', '/SysProvinceController/edit', 0, '340068151804956672', 'gen:sysProvince:edit', 2, 'fa fa-wrench', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('340088022018166784', '城市表管理', '城市设置展示', '/SysCityController/view', 0, '340067579836108800', 'gen:sysCity:view', 1, 'fa fa-quora', 3, 0);
INSERT INTO `t_sys_permission` VALUES ('3400880220181667851', '城市设置集合', '城市设置集合', '/SysCityController/list', 0, '340088022018166784', 'gen:sysCity:list', 2, '', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3400880220181667862', '城市设置添加', '城市设置添加', '/SysCityController/add', 0, '340088022018166784', 'gen:sysCity:add', 2, 'entypo-plus-squared', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3400880220181667873', '城市设置删除', '城市设置删除', '/SysCityController/remove', 0, '340088022018166784', 'gen:sysCity:remove', 2, 'entypo-trash', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3400880220181667884', '城市设置修改', '城市设置修改', '/SysCityController/edit', 0, '340088022018166784', 'gen:sysCity:edit', 2, 'fa fa-wrench', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('340096183135506432', '地区设置管理', '地区设置展示', '/SysAreaController/view', 0, '340067579836108800', 'gen:sysArea:view', 1, 'fa fa-quora', 4, 0);
INSERT INTO `t_sys_permission` VALUES ('3400961831355064331', '地区设置集合', '地区设置集合', '/SysAreaController/list', 0, '340096183135506432', 'gen:sysArea:list', 2, '', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3400961831355064342', '地区设置添加', '地区设置添加', '/SysAreaController/add', 0, '340096183135506432', 'gen:sysArea:add', 2, 'entypo-plus-squared', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3400961831355064353', '地区设置删除', '地区设置删除', '/SysAreaController/remove', 0, '340096183135506432', 'gen:sysArea:remove', 2, 'entypo-trash', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3400961831355064364', '地区设置修改', '地区设置修改', '/SysAreaController/edit', 0, '340096183135506432', 'gen:sysArea:edit', 2, 'fa fa-wrench', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('340127412270534656', '街道设置管理', '街道设置展示', '/SysStreetController/view', 0, '340067579836108800', 'gen:sysStreet:view', 1, 'fa fa-quora', 5, 0);
INSERT INTO `t_sys_permission` VALUES ('3401274122705346571', '街道设置集合', '街道设置集合', '/SysStreetController/list', 0, '340127412270534656', 'gen:sysStreet:list', 2, '', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3401274122705346582', '街道设置添加', '街道设置添加', '/SysStreetController/add', 0, '340127412270534656', 'gen:sysStreet:add', 2, 'entypo-plus-squared', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3401274122705346593', '街道设置删除', '街道设置删除', '/SysStreetController/remove', 0, '340127412270534656', 'gen:sysStreet:remove', 2, 'entypo-trash', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3401274122705346604', '街道设置修改', '街道设置修改', '/SysStreetController/edit', 0, '340127412270534656', 'gen:sysStreet:edit', 2, 'fa fa-wrench', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('340301160042860544', '省份联动', '省份联动', '/ProvinceLinkageController/view', 0, '340067579836108800', '#', 1, 'fa fa-etsy', 1, 0);
INSERT INTO `t_sys_permission` VALUES ('340381240911859712', 'JavaScript格式化', NULL, '/static/tool/htmlformat/javascriptFormat.html', 0, '617766548966211584', '#', 1, 'layui-icon layui-icon fa fa-magic', 11, 0);
INSERT INTO `t_sys_permission` VALUES ('373489907429150720', 'URL拦截管理', '拦截url表展示', '/SysInterUrlController/view', 0, '617766548966211584', 'gen:sysInterUrl:view', 1, 'fa fa-hand-stop-o', 16, 0);
INSERT INTO `t_sys_permission` VALUES ('3734899074291507211', '拦截url表集合', '拦截url表集合', '/SysInterUrlController/list', 0, '373489907429150720', 'gen:sysInterUrl:list', 2, '', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3734899074291507222', '拦截url表添加', '拦截url表添加', '/SysInterUrlController/add', 0, '373489907429150720', 'gen:sysInterUrl:add', 2, 'entypo-plus-squared', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3734899074291507233', '拦截url表删除', '拦截url表删除', '/SysInterUrlController/remove', 0, '373489907429150720', 'gen:sysInterUrl:remove', 2, 'entypo-trash', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('3734899074291507244', '拦截url表修改', '拦截url表修改', '/SysInterUrlController/edit', 0, '373489907429150720', 'gen:sysInterUrl:edit', 2, 'fa fa-wrench', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('4', '用户管理', '用户展示', '/UserController/view', 0, '411522822607867904', 'system:user:view', 1, 'icon icon-user', 1, 0);
INSERT INTO `t_sys_permission` VALUES ('410791701859405824', '岗位管理', '岗位展示', '/SysPositionController/view', 0, '411522822607867904', 'gen:sysPosition:view', 1, 'fa fa-vcard', 17, 0);
INSERT INTO `t_sys_permission` VALUES ('4107917018594058251', '岗位表集合', '岗位集合', '/SysPositionController/list', 0, '410791701859405824', 'gen:sysPosition:list', 2, '', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('4107917018594058262', '岗位表添加', '岗位添加', '/SysPositionController/add', 0, '410791701859405824', 'gen:sysPosition:add', 2, 'entypo-plus-squared', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('4107917018594058273', '岗位表删除', '岗位删除', '/SysPositionController/remove', 0, '410791701859405824', 'gen:sysPosition:remove', 2, 'entypo-trash', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('4107917018594058284', '岗位表修改', '岗位修改', '/SysPositionController/edit', 0, '410791701859405824', 'gen:sysPosition:edit', 2, 'fa fa-wrench', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('410989805699207168', '部门管理', '部门展示', '/SysDepartmentController/view', 0, '411522822607867904', 'gen:sysDepartment:view', 1, 'fa fa-odnoklassniki', 18, 0);
INSERT INTO `t_sys_permission` VALUES ('4109898056992071691', '部门集合', '部门集合', '/SysDepartmentController/list', 0, '410989805699207168', 'gen:sysDepartment:list', 2, '', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('4109898056992071702', '部门添加', '部门添加', '/SysDepartmentController/add', 0, '410989805699207168', 'gen:sysDepartment:add', 2, 'entypo-plus-squared', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('4109898056992071713', '部门删除', '部门删除', '/SysDepartmentController/remove', 0, '410989805699207168', 'gen:sysDepartment:remove', 2, 'entypo-trash', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('4109898056992071724', '部门修改', '部门修改', '/SysDepartmentController/edit', 0, '410989805699207168', 'gen:sysDepartment:edit', 2, 'fa fa-wrench', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('411522822607867904', '用户管理', NULL, '', 0, '0', '', 0, 'layui-icon layui-icon-user', 3, 0);
INSERT INTO `t_sys_permission` VALUES ('486690002869157888', '用户密码修改', '用户密码修改', '/UserController/editPwd', 0, '4', 'system:user:editPwd', 2, 'entypo-tools', 3, 0);
INSERT INTO `t_sys_permission` VALUES ('496126970468237312', '日志展示', '日志管理', '/LogController/view', 0, '592059865673760768', 'system:log:view', 1, 'fa fa-info', 9, 0);
INSERT INTO `t_sys_permission` VALUES ('496127240363311104', '日志删除', '日志删除', '/LogController/remove', 0, '496126970468237312', 'system:log:remove', 2, 'entypo-trash', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('496127794879660032', '日志集合', '日志集合', '/LogController/list', 0, '496126970468237312', 'system:log:list', 2, NULL, NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('5', '用户集合', '用户集合', '/UserController/list', 0, '4', 'system:user:list', 2, '', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('581541547099553792', 'druid监控', 'druid监控', '/druid/', 0, '617766548966211584', 'user:list', 1, 'fa fa-line-chart', 6, 0);
INSERT INTO `t_sys_permission` VALUES ('583063272123531264', 'API文档', NULL, '/doc.html', 1, '617766548966211584', '--', 1, 'layui-icon fa fa-font', 8, 0);
INSERT INTO `t_sys_permission` VALUES ('586003694080753664', '表单构建', NULL, '/static/component/code/index.html', 0, '617766548966211584', 'system:tool:view', 1, 'layui-icon layui-icon fa fa-list-alt', 5, 0);
INSERT INTO `t_sys_permission` VALUES ('587453033487532032', '后台模板', NULL, 'https://www.layui.com/doc/', 1, '617766548966211584', '', 1, 'layui-icon layui-icon fa fa-telegram', 9, 0);
INSERT INTO `t_sys_permission` VALUES ('589559748521623552', '一级菜单', NULL, '', 0, '0', '', 0, 'layui-icon layui-icon layui-icon layui-icon-face-smile', 6, 0);
INSERT INTO `t_sys_permission` VALUES ('592059865673760768', '系统管理', NULL, '', 0, '0', '', 0, 'layui-icon layui-icon-home', 1, 0);
INSERT INTO `t_sys_permission` VALUES ('592067570522128384', '测试跳转', '测试跳转', 'http://www.baidu.com', 1, '589559748521623552', '#', 1, 'fa fa-address-book', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('592167738407911424', '系统监控', '系统监控', '/ServiceController/view', 0, '617766548966211584', 'system:service:view', 1, 'fa fa-video-camera', 7, 0);
INSERT INTO `t_sys_permission` VALUES ('594691026430459904', '电子邮件管理', '电子邮件展示', '/EmailController/view', 0, '592059865673760768', 'system:email:view', 1, 'fa fa-envelope', 8, 0);
INSERT INTO `t_sys_permission` VALUES ('5946910264304599041', '电子邮件集合', '电子邮件集合', '/EmailController/list', 0, '594691026430459904', 'system:email:list', 2, '', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('5946910264304599042', '电子邮件添加', '电子邮件添加', '/EmailController/add', 0, '594691026430459904', 'system:email:add', 2, 'entypo-plus-squared', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('5946910264304599043', '电子邮件删除', '电子邮件删除', '/EmailController/remove', 0, '594691026430459904', 'system:email:remove', 2, 'entypo-trash', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('5946910264304599044', '电子邮件修改', '电子邮件修改', '/EmailController/edit', 0, '594691026430459904', 'system:email:edit', 2, 'fa fa-wrench', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('6', '用户添加', '用户添加', '/UserController/add', 0, '4', 'system:user:add', 2, 'entypo-plus-squared', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('610635485890478080', '代码生成', NULL, '', 0, '0', '', 0, 'layui-icon layui-icon layui-icon layui-icon-praise', 2, 0);
INSERT INTO `t_sys_permission` VALUES ('610635950447394816', '全局配置', '', '/autoCodeController/global', 0, '610635485890478080', 'system:autocode:global', 1, 'fa fa-university', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('617766548966211584', '系统工具', NULL, '', 0, '0', '', 0, 'layui-icon layui-icon layui-icon layui-icon layui-icon layui-icon layui-icon-util', 5, 0);
INSERT INTO `t_sys_permission` VALUES ('618918631769636864', '字典管理', '字典类型表展示', '/DictTypeController/view', 0, '592059865673760768', 'system:dictType:view', 1, 'fa fa-puzzle-piece', 11, 0);
INSERT INTO `t_sys_permission` VALUES ('6189186317738311681', '字典类型表集合', '字典类型表集合', '/DictTypeController/list', 0, '618918631769636864', 'system:dictType:list', 2, NULL, NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('6189186317948026882', '字典类型表添加', '字典类型表添加', '/DictTypeController/add', 0, '618918631769636864', 'system:dictType:add', 2, NULL, NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('6189186317948026883', '字典类型表删除', '字典类型表删除', '/DictTypeController/remove', 0, '618918631769636864', 'system:dictType:remove', 2, NULL, NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('6189186317989969924', '字典类型表修改', '字典类型表修改', '/DictTypeController/edit', 0, '618918631769636864', 'system:dictType:edit', 2, NULL, NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('6192095214866268161', '字典数据表集合', '字典数据表集合', '/DictDataController/list', 0, '618918631769636864', 'system:dictData:list', 2, NULL, NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('6192095214866268162', '字典数据表添加', '字典数据表添加', '/DictDataController/add', 0, '618918631769636864', 'system:dictData:add', 2, NULL, NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('6192095215075983363', '字典数据表删除', '字典数据表删除', '/DictDataController/remove', 0, '618918631769636864', 'system:dictData:remove', 2, NULL, NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('6192095215075983364', '字典数据表修改', '字典数据表修改', '/DictDataController/edit', 0, '618918631769636864', 'system:dictData:edit', 2, NULL, NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('619836559427895296', '字典数据视图', '字典数据视图', '/DictDataController/view', 0, '618918631769636864', 'system:dictData:view', 2, NULL, NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('7', '用户删除', '用户删除', '/UserController/remove', 0, '4', 'system:user:remove', 2, 'entypo-trash', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('8', '用户修改', '用户修改', '/UserController/edit', 0, '4', 'system:user:edit', 2, 'fa fa-wrench', NULL, 0);
INSERT INTO `t_sys_permission` VALUES ('9', '角色管理', '角色展示', '/RoleController/view', 0, '411522822607867904', 'system:role:view', 1, 'fa fa-group', 2, 0);

-- ----------------------------
-- Table structure for t_sys_permission_role
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_permission_role`;
CREATE TABLE `t_sys_permission_role`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色id',
  `permission_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色权限中间表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sys_permission_role
-- ----------------------------
INSERT INTO `t_sys_permission_role` VALUES ('01fe56ea-22cb-4596-83bb-061af5b13c42', '488243256161730560', '496127794879660032');
INSERT INTO `t_sys_permission_role` VALUES ('0200d819-80e4-45fd-8240-bb8bb3c9c358', '488243256161730560', '619836559427895296');
INSERT INTO `t_sys_permission_role` VALUES ('042588ac-72b3-4ccd-98b9-99e8097d747e', '488243256161730560', '610635950447394816');
INSERT INTO `t_sys_permission_role` VALUES ('05d28e26-04dc-4ffb-943a-a48203d841ec', '488243256161730560', '3734899074291507244');
INSERT INTO `t_sys_permission_role` VALUES ('063ceacd-2fbd-4f29-a8f6-d929037c11d0', '488243256161730560', '3400880220181667862');
INSERT INTO `t_sys_permission_role` VALUES ('0b77727f-d792-4927-8e26-b57588db058b', '488243256161730560', '3303650266428252204');
INSERT INTO `t_sys_permission_role` VALUES ('0cad423c-c836-4d30-b02b-ffe426fd1e2d', '488243256161730560', '410791701859405824');
INSERT INTO `t_sys_permission_role` VALUES ('0e0b9dae-a60f-4cb1-a3bf-c7ea5b9f8b1c', '488243256161730560', '589559748521623552');
INSERT INTO `t_sys_permission_role` VALUES ('13186be6-96dc-4848-acef-43a87dc4f36d', '488243256161730560', '3401274122705346571');
INSERT INTO `t_sys_permission_role` VALUES ('1386562e-830a-4d5f-914e-980f3a9f47f4', '488243256161730560', '18');
INSERT INTO `t_sys_permission_role` VALUES ('1531d751-d2fb-4379-b700-87b47d1e4e1d', '488243256161730560', '3400681518049566742');
INSERT INTO `t_sys_permission_role` VALUES ('174b0472-9e11-44c8-8f1b-997c55d08b62', '488243256161730560', '15');
INSERT INTO `t_sys_permission_role` VALUES ('189d727b-5fff-4903-8980-5e796ce04061', '488243256161730560', '10');
INSERT INTO `t_sys_permission_role` VALUES ('1d9325bc-13a1-4b8b-90dc-16c0c1613585', '488243256161730560', '4107917018594058284');
INSERT INTO `t_sys_permission_role` VALUES ('217b5bae-a54d-4e77-b0e1-2ae6624b6b7b', '488243256161730560', '592059865673760768');
INSERT INTO `t_sys_permission_role` VALUES ('2ddcfb2c-5157-41d0-97cd-f747ed6da07c', '488243256161730560', '23');
INSERT INTO `t_sys_permission_role` VALUES ('30c6ab74-5154-4370-a77f-fb651db86432', '488243256161730560', '3400880220181667873');
INSERT INTO `t_sys_permission_role` VALUES ('31cf42c7-2ffa-498a-85a0-ff5e1dc2c732', '488243256161730560', '496126970468237312');
INSERT INTO `t_sys_permission_role` VALUES ('342dc223-f714-42df-adf9-7a5a0a1d2f60', '488243256161730560', '332157860920299520');
INSERT INTO `t_sys_permission_role` VALUES ('350dc609-fced-404b-b10f-f0291068b36a', '488243256161730560', '4');
INSERT INTO `t_sys_permission_role` VALUES ('374e76c4-f3ce-4ff1-8ed0-750bbfbbce5c', '488243256161730560', '617766548966211584');
INSERT INTO `t_sys_permission_role` VALUES ('39bb74e4-b62f-4cb8-bf5c-ffb44a97bb87', '488243256161730560', '3400681518049566731');
INSERT INTO `t_sys_permission_role` VALUES ('3c26f2be-ae37-4d53-97ac-323efd57b888', '488243256161730560', '4109898056992071724');
INSERT INTO `t_sys_permission_role` VALUES ('3dcd50c6-9540-4d5d-88ba-53a2a5e43ead', '488243256161730560', '5946910264304599044');
INSERT INTO `t_sys_permission_role` VALUES ('3f82e33f-ad1b-4c1a-9751-1f6a75a5abbe', '488243256161730560', '340096183135506432');
INSERT INTO `t_sys_permission_role` VALUES ('41f8a587-66ce-434b-84d4-5b7e08381081', '488243256161730560', '592067570522128384');
INSERT INTO `t_sys_permission_role` VALUES ('4361248c-f7cf-4475-96d8-4dcc7257bb74', '488243256161730560', '581541547099553792');
INSERT INTO `t_sys_permission_role` VALUES ('43fdb52f-51d6-4ddb-9dac-67552df5dba1', '488243256161730560', '5946910264304599042');
INSERT INTO `t_sys_permission_role` VALUES ('48c20e70-6492-4f46-be9b-cad6e440a807', '488243256161730560', '3734899074291507211');
INSERT INTO `t_sys_permission_role` VALUES ('4a344779-c6a0-4472-b733-b763bffa6c04', '488243256161730560', '587453033487532032');
INSERT INTO `t_sys_permission_role` VALUES ('4a9d9d69-6747-4e2b-8434-5c104788661a', '488243256161730560', '5');
INSERT INTO `t_sys_permission_role` VALUES ('4fb570b8-330f-49d3-ab18-1a5e6f069d89', '488243256161730560', '3321578609202995244');
INSERT INTO `t_sys_permission_role` VALUES ('52148df8-5a6e-4326-94ae-edbea445b410', '488243256161730560', '19');
INSERT INTO `t_sys_permission_role` VALUES ('55ad86df-e358-4b23-a1ce-bbcecf136dc9', '488243256161730560', '610635485890478080');
INSERT INTO `t_sys_permission_role` VALUES ('57b3bd8b-e182-4e53-bf04-036cfc6cc437', '488243256161730560', '340381240911859712');
INSERT INTO `t_sys_permission_role` VALUES ('57ff846a-f7b5-47aa-a7f5-c00d8154824e', '488243256161730560', '496127240363311104');
INSERT INTO `t_sys_permission_role` VALUES ('5801d9e4-b4e8-4cef-b6bc-e6c7faa301d0', '488243256161730560', '3734899074291507233');
INSERT INTO `t_sys_permission_role` VALUES ('5b4a6931-dd42-4b1e-b7c8-8a5af1149fce', '488243256161730560', '7');
INSERT INTO `t_sys_permission_role` VALUES ('5d7283db-48a2-46c8-b821-957276c1a505', '488243256161730560', '12');
INSERT INTO `t_sys_permission_role` VALUES ('617dc731-1724-4448-8c41-40e4a3d22997', '488243256161730560', '4109898056992071713');
INSERT INTO `t_sys_permission_role` VALUES ('688bbfef-2ffa-46c7-bfb4-e46650eeb991', '488243256161730560', '594691026430459904');
INSERT INTO `t_sys_permission_role` VALUES ('69af7da5-b37a-48d2-9040-734e6dc1e431', '488243256161730560', '5946910264304599043');
INSERT INTO `t_sys_permission_role` VALUES ('6e7b9204-2465-46e0-89a1-cb185476a4e0', '488243256161730560', '332857281479839744');
INSERT INTO `t_sys_permission_role` VALUES ('711e404e-e4c8-4bbd-8e9f-c15f692ef47e', '488243256161730560', '4109898056992071702');
INSERT INTO `t_sys_permission_role` VALUES ('71639639-8f63-4b46-bade-e0e493c037b6', '488243256161730560', '6192095215075983364');
INSERT INTO `t_sys_permission_role` VALUES ('755531bb-cfe2-4bd3-847c-742386b9f63e', '488243256161730560', '13');
INSERT INTO `t_sys_permission_role` VALUES ('79793511-a80d-4f66-852f-9ff0f1e0aed8', '488243256161730560', '3400681518049566753');
INSERT INTO `t_sys_permission_role` VALUES ('7ae45ff8-c0b5-4116-9f9f-d4a7e72edecb', '488243256161730560', '6192095214866268162');
INSERT INTO `t_sys_permission_role` VALUES ('7d63f4f1-eff7-43e2-bcc1-3bf4030ff81e', '488243256161730560', '20');
INSERT INTO `t_sys_permission_role` VALUES ('7e86ccb1-273e-4e31-bd44-0475fefe3053', '488243256161730560', '411522822607867904');
INSERT INTO `t_sys_permission_role` VALUES ('80f5ecd2-93c6-4534-b182-5d5c5b5699ca', '488243256161730560', '373489907429150720');
INSERT INTO `t_sys_permission_role` VALUES ('867562ec-2283-4cf8-b52d-bc3647796e63', '488243256161730560', '14');
INSERT INTO `t_sys_permission_role` VALUES ('892899c8-e0b2-4fcd-af1f-320a9c4d9c4d', '488243256161730560', '335330315113467904');
INSERT INTO `t_sys_permission_role` VALUES ('8cc91f61-6ed6-4b42-887f-7e5f1a436e71', '488243256161730560', '6189186317948026883');
INSERT INTO `t_sys_permission_role` VALUES ('8d8f4202-68ac-481b-bbce-70b7a1377a18', '488243256161730560', '16');
INSERT INTO `t_sys_permission_role` VALUES ('8e814dae-3d35-4920-a988-b060b755b2ae', '488243256161730560', '8');
INSERT INTO `t_sys_permission_role` VALUES ('8f3bd5a7-a723-45f4-9764-6b2b33a9ef26', '488243256161730560', '3303650266428252182');
INSERT INTO `t_sys_permission_role` VALUES ('92f1874b-64ab-4464-b4c2-79e2d6e48996', '488243256161730560', '21');
INSERT INTO `t_sys_permission_role` VALUES ('9ab8ff7d-ced8-4653-8ae9-9d2d1798e87e', '488243256161730560', '583063272123531264');
INSERT INTO `t_sys_permission_role` VALUES ('9ce696bf-62f8-4a96-ab71-1d18acc6a0c1', '488243256161730560', '3401274122705346593');
INSERT INTO `t_sys_permission_role` VALUES ('a170786f-9814-4879-9789-2e99d6692294', '488243256161730560', '3400961831355064331');
INSERT INTO `t_sys_permission_role` VALUES ('a3bc35ba-74b9-4ab0-84ff-7679382637ab', '488243256161730560', '3303650266428252171');
INSERT INTO `t_sys_permission_role` VALUES ('a403c0f1-bcc3-4824-a981-1f68409f3216', '488243256161730560', '340301160042860544');
INSERT INTO `t_sys_permission_role` VALUES ('aa7d7291-2b78-44a2-8f3a-aef0138cd159', '488243256161730560', '17');
INSERT INTO `t_sys_permission_role` VALUES ('ae34cbe4-a990-420b-8116-aa4c9a2dcd38', '488243256161730560', '3321578609202995233');
INSERT INTO `t_sys_permission_role` VALUES ('ae9f52b2-4680-4382-93dc-16a357d7e968', '488243256161730560', '3400681518049566764');
INSERT INTO `t_sys_permission_role` VALUES ('b0637cbe-4d08-4abb-928a-15333945c163', '488243256161730560', '3328572814798397451');
INSERT INTO `t_sys_permission_role` VALUES ('b1f30928-f4f2-4dc4-8192-e3e2edb043ee', '488243256161730560', '586003694080753664');
INSERT INTO `t_sys_permission_role` VALUES ('b2eee05b-e6b9-4348-abab-1924aa10c975', '488243256161730560', '9');
INSERT INTO `t_sys_permission_role` VALUES ('b35d8119-0c0f-41f7-8ffe-335d3e28f803', '488243256161730560', '4107917018594058262');
INSERT INTO `t_sys_permission_role` VALUES ('b370966f-5152-47ae-a2ee-064fc879a841', '488243256161730560', '3401274122705346604');
INSERT INTO `t_sys_permission_role` VALUES ('b6beab0f-2f35-4346-98c0-49966f02203e', '488243256161730560', '6192095215075983363');
INSERT INTO `t_sys_permission_role` VALUES ('ba73bdec-3e61-4dad-a7e7-afe3c8a401d4', '488243256161730560', '3328572814798397473');
INSERT INTO `t_sys_permission_role` VALUES ('bab2e069-cad0-46eb-9b67-3df7ecac9d07', '488243256161730560', '3400880220181667851');
INSERT INTO `t_sys_permission_role` VALUES ('bd6e654e-9f2e-42d8-9d9f-4640267611b0', '488243256161730560', '486690002869157888');
INSERT INTO `t_sys_permission_role` VALUES ('be2b7eaf-b644-42e9-a432-b12b95ca9a0e', '488243256161730560', '3400880220181667884');
INSERT INTO `t_sys_permission_role` VALUES ('c17b86b2-0c9a-461d-9fad-31b46e558f29', '488243256161730560', '330365026642825216');
INSERT INTO `t_sys_permission_role` VALUES ('c1e66043-2c55-449f-8fba-ed39cf24f6eb', '488243256161730560', '4107917018594058251');
INSERT INTO `t_sys_permission_role` VALUES ('c1f093fb-3823-46e5-af7f-1a035242a0a6', '488243256161730560', '5946910264304599041');
INSERT INTO `t_sys_permission_role` VALUES ('c4b019a2-5c40-4c1d-81d7-83ac1cb072bb', '488243256161730560', '340068151804956672');
INSERT INTO `t_sys_permission_role` VALUES ('cf0b0276-8fd4-451f-8a50-8a59786b6ca0', '488243256161730560', '6');
INSERT INTO `t_sys_permission_role` VALUES ('cf8b3988-2ed3-4aa6-a975-972ae22665fd', '488243256161730560', '6189186317738311681');
INSERT INTO `t_sys_permission_role` VALUES ('d22853ec-e1e7-478d-b7df-866d64ef1f1d', '488243256161730560', '4107917018594058273');
INSERT INTO `t_sys_permission_role` VALUES ('d9a3291a-8090-4a44-beb7-f2cedde1149a', '488243256161730560', '22');
INSERT INTO `t_sys_permission_role` VALUES ('da28049d-e25d-4cdf-aff9-6491603ea922', '488243256161730560', '331778807298134016');
INSERT INTO `t_sys_permission_role` VALUES ('da39f530-0b0f-4469-b061-eda8bde199ba', '488243256161730560', '340067579836108800');
INSERT INTO `t_sys_permission_role` VALUES ('dbefb52b-3d04-4cd9-aece-3896308173c1', '488243256161730560', '6189186317989969924');
INSERT INTO `t_sys_permission_role` VALUES ('dc55ecaa-665a-4a24-824d-0b30e11e5556', '488243256161730560', '6192095214866268161');
INSERT INTO `t_sys_permission_role` VALUES ('dceaaee8-6396-4f54-992a-367000518669', '488243256161730560', '3400961831355064364');
INSERT INTO `t_sys_permission_role` VALUES ('deb56b6a-0f1a-4134-8b6c-89c033660272', '488243256161730560', '11');
INSERT INTO `t_sys_permission_role` VALUES ('df16649c-8476-41f3-bba8-f358c0efd99c', '488243256161730560', '3400961831355064353');
INSERT INTO `t_sys_permission_role` VALUES ('dfc52b1f-0a30-4bb2-a653-96a02275b1cc', '488243256161730560', '4109898056992071691');
INSERT INTO `t_sys_permission_role` VALUES ('e14b1f89-5bd2-415d-9a0c-ee54f5b27b1b', '488243256161730560', '340088022018166784');
INSERT INTO `t_sys_permission_role` VALUES ('e58abb00-ffba-4fe5-b35e-041fbc50fde8', '488243256161730560', '6189186317948026882');
INSERT INTO `t_sys_permission_role` VALUES ('e87edf20-9d3e-4982-8378-04a407f6553e', '488243256161730560', '3303650266428252193');
INSERT INTO `t_sys_permission_role` VALUES ('ebd5c520-bcce-47e6-aaaa-ba45c76f0dab', '488243256161730560', '3734899074291507222');
INSERT INTO `t_sys_permission_role` VALUES ('ebf972aa-af98-4ec9-8d0f-43f4665a8717', '488243256161730560', '3401274122705346582');
INSERT INTO `t_sys_permission_role` VALUES ('ecf59fe8-bbda-41e9-a54d-5c48e68a4638', '488243256161730560', '3321578609202995211');
INSERT INTO `t_sys_permission_role` VALUES ('f3410fa8-ef46-49c7-946c-0e546f3bc528', '488243256161730560', '592167738407911424');
INSERT INTO `t_sys_permission_role` VALUES ('f3d3088d-1d08-4b77-b64d-099aed16f4e0', '488243256161730560', '410989805699207168');
INSERT INTO `t_sys_permission_role` VALUES ('f56c0f89-f16c-4de4-b1e4-9a8197ffd201', '488243256161730560', '3321578609202995222');
INSERT INTO `t_sys_permission_role` VALUES ('f7bea38d-7a42-4e0f-b7cf-460691630271', '488243256161730560', '340127412270534656');
INSERT INTO `t_sys_permission_role` VALUES ('fa039826-5c71-4fff-89f0-bb9a1aa0d354', '488243256161730560', '618918631769636864');
INSERT INTO `t_sys_permission_role` VALUES ('ff6c8942-b14f-4730-af7c-9756bb999031', '488243256161730560', '3400961831355064342');

-- ----------------------------
-- Table structure for t_sys_position
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_position`;
CREATE TABLE `t_sys_position`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `post_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '岗位名称',
  `order_num` int(11) NULL DEFAULT NULL COMMENT '排序',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sys_position
-- ----------------------------
INSERT INTO `t_sys_position` VALUES ('410792368778907648', '总经理', 1, 1);
INSERT INTO `t_sys_position` VALUES ('410792443127140352', '技术经理', 2, 1);
INSERT INTO `t_sys_position` VALUES ('410792478929719296', '人事经理', 3, 1);
INSERT INTO `t_sys_position` VALUES ('411477874382606336', '员工', 4, 1);

-- ----------------------------
-- Table structure for t_sys_province
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_province`;
CREATE TABLE `t_sys_province`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增列',
  `province_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '省份代码',
  `province_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '省份名称',
  `short_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '简称',
  `lng` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经度',
  `lat` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '纬度',
  `sort` int(6) NULL DEFAULT NULL COMMENT '排序',
  `gmt_create` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `memo` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `data_state` int(11) NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `Index_1`(`province_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '省份表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sys_province
-- ----------------------------
INSERT INTO `t_sys_province` VALUES (22, '500000', '重庆', '重庆', '106.504959', '29.533155', 22, '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', 0);

-- ----------------------------
-- Table structure for t_sys_quartz_job
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_quartz_job`;
CREATE TABLE `t_sys_quartz_job`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '日志id',
  `job_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务组名',
  `invoke_target` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'cron执行表达式',
  `misfire_policy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'cron计划策略',
  `concurrent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否并发执行（0允许 1禁止）',
  `status` int(11) NULL DEFAULT NULL COMMENT '任务状态（0正常 1暂停）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sys_quartz_job
-- ----------------------------
INSERT INTO `t_sys_quartz_job` VALUES ('332182389491109888', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', '*/5 * * * * ?', '2', '0', 1);

-- ----------------------------
-- Table structure for t_sys_quartz_job_log
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_quartz_job_log`;
CREATE TABLE `t_sys_quartz_job_log`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `job_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务组名',
  `invoke_target` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '调用目标字符串',
  `job_message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` int(11) NULL DEFAULT NULL COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '异常信息',
  `start_time` datetime NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime NULL DEFAULT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sys_quartz_job_log
-- ----------------------------
INSERT INTO `t_sys_quartz_job_log` VALUES ('333610566486724608', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2019-09-17 00:16:07', '2019-09-17 00:16:07');
INSERT INTO `t_sys_quartz_job_log` VALUES ('333610572270669824', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2019-09-17 00:16:09', '2019-09-17 00:16:09');
INSERT INTO `t_sys_quartz_job_log` VALUES ('354984595927732224', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：3毫秒', 0, NULL, '2019-11-14 23:48:53', '2019-11-14 23:48:53');
INSERT INTO `t_sys_quartz_job_log` VALUES ('354990312722141184', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：2毫秒', 0, NULL, '2019-11-15 00:11:36', '2019-11-15 00:11:36');
INSERT INTO `t_sys_quartz_job_log` VALUES ('354996339316232192', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：3毫秒', 0, NULL, '2019-11-15 00:35:33', '2019-11-15 00:35:33');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421274211356672', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：5毫秒', 0, NULL, '2020-04-29 18:22:40', '2020-04-29 18:22:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421274303631360', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:22:40', '2020-04-29 18:22:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421274324602880', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:22:40', '2020-04-29 18:22:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421274366545920', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:22:40', '2020-04-29 18:22:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421315554611200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:22:50', '2020-04-29 18:22:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421357501845504', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:23:00', '2020-04-29 18:23:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421399453274112', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:23:10', '2020-04-29 18:23:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421441375342592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:23:20', '2020-04-29 18:23:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421483351937024', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：2毫秒', 0, NULL, '2020-04-29 18:23:30', '2020-04-29 18:23:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421525257228288', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:23:40', '2020-04-29 18:23:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421567233822720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:23:50', '2020-04-29 18:23:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421609130725376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:24:00', '2020-04-29 18:24:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421648662040576', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:24:09', '2020-04-29 18:24:09');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421651073765376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:24:10', '2020-04-29 18:24:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421693041971200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:24:20', '2020-04-29 18:24:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421734959845376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:24:30', '2020-04-29 18:24:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421776974188544', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:24:40', '2020-04-29 18:24:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421818862702592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:24:50', '2020-04-29 18:24:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421860805742592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:25:00', '2020-04-29 18:25:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421902736199680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:25:10', '2020-04-29 18:25:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423552540512256', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：4毫秒', 0, NULL, '2020-04-29 18:31:43', '2020-04-29 18:31:43');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423552636981248', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:31:43', '2020-04-29 18:31:43');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423552670535680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:31:43', '2020-04-29 18:31:43');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423552687312896', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:31:43', '2020-04-29 18:31:43');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423552716673024', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:31:43', '2020-04-29 18:31:43');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423552741838848', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:31:43', '2020-04-29 18:31:43');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423559536611328', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:31:45', '2020-04-29 18:31:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423580482965504', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:31:50', '2020-04-29 18:31:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423601454485504', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:31:55', '2020-04-29 18:31:55');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423622405033984', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:32:00', '2020-04-29 18:32:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423643372359680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:32:05', '2020-04-29 18:32:05');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423664343879680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:32:10', '2020-04-29 18:32:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423685311205376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:32:15', '2020-04-29 18:32:15');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423706328862720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:32:20', '2020-04-29 18:32:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423727325548544', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:32:25', '2020-04-29 18:32:25');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423748250931200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:32:30', '2020-04-29 18:32:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423769188896768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:32:35', '2020-04-29 18:32:35');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423790227525632', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:32:40', '2020-04-29 18:32:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423811190657024', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:32:45', '2020-04-29 18:32:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423832178954240', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:32:50', '2020-04-29 18:32:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423853100142592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:32:55', '2020-04-29 18:32:55');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423874054885376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:33:00', '2020-04-29 18:33:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423895026405376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:33:05', '2020-04-29 18:33:05');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423916002119680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:33:10', '2020-04-29 18:33:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423937015582720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:33:15', '2020-04-29 18:33:15');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423957970325504', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:33:20', '2020-04-29 18:33:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423978925068288', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:33:25', '2020-04-29 18:33:25');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423999942725632', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:33:30', '2020-04-29 18:33:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424020889079808', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:33:35', '2020-04-29 18:33:35');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424041894154240', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:33:40', '2020-04-29 18:33:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424062844702720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:33:45', '2020-04-29 18:33:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424083803639808', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:33:50', '2020-04-29 18:33:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424104754188288', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:33:55', '2020-04-29 18:33:55');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424125746679808', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:34:00', '2020-04-29 18:34:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424146726588416', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:34:05', '2020-04-29 18:34:05');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424167727468544', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:34:10', '2020-04-29 18:34:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424188678017024', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:34:15', '2020-04-29 18:34:15');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424209636954112', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:34:20', '2020-04-29 18:34:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424230595891200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:34:25', '2020-04-29 18:34:25');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424251567411200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:34:30', '2020-04-29 18:34:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424272559902720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:34:35', '2020-04-29 18:34:35');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424293518839808', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:34:40', '2020-04-29 18:34:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424314507137024', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:34:45', '2020-04-29 18:34:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424335436713984', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:34:50', '2020-04-29 18:34:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424356404039680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:34:55', '2020-04-29 18:34:55');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424377396531200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:35:00', '2020-04-29 18:35:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424398414188544', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:35:05', '2020-04-29 18:35:05');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424419326988288', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:35:10', '2020-04-29 18:35:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424440332062720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:35:15', '2020-04-29 18:35:15');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424461282611200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:35:20', '2020-04-29 18:35:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424482254131200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:35:25', '2020-04-29 18:35:25');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424503200485376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:35:30', '2020-04-29 18:35:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424524163616768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:35:35', '2020-04-29 18:35:35');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424545135136768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:35:40', '2020-04-29 18:35:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424566148599808', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:35:45', '2020-04-29 18:35:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424587103342592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:35:50', '2020-04-29 18:35:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424608150360064', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:35:55', '2020-04-29 18:35:55');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424629029605376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:36:00', '2020-04-29 18:36:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424650072428544', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:36:05', '2020-04-29 18:36:05');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424671035559936', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:36:10', '2020-04-29 18:36:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424691981914112', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:36:15', '2020-04-29 18:36:15');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424712961822720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:36:20', '2020-04-29 18:36:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424733899788288', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:36:25', '2020-04-29 18:36:25');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424754862919680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:36:30', '2020-04-29 18:36:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424775888965632', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:36:35', '2020-04-29 18:36:35');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424796797571072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:36:40', '2020-04-29 18:36:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424817836199936', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:36:45', '2020-04-29 18:36:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424838769971200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:36:50', '2020-04-29 18:36:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424859741491200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:36:55', '2020-04-29 18:36:55');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424880696233984', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:37:00', '2020-04-29 18:37:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424901705502720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:37:05', '2020-04-29 18:37:05');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424922681217024', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:37:10', '2020-04-29 18:37:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424943690485760', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:37:15', '2020-04-29 18:37:15');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424964632645632', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:37:20', '2020-04-29 18:37:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424985562222592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:37:25', '2020-04-29 18:37:25');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425006516965376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:37:30', '2020-04-29 18:37:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425027484291072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:37:35', '2020-04-29 18:37:35');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425048476782592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：2毫秒', 0, NULL, '2020-04-29 18:37:40', '2020-04-29 18:37:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425069427331072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:37:45', '2020-04-29 18:37:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425090436599808', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:37:50', '2020-04-29 18:37:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425111412314112', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:37:55', '2020-04-29 18:37:55');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425132354473984', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:38:00', '2020-04-29 18:38:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425153334382592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:38:05', '2020-04-29 18:38:05');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425174335262720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:38:10', '2020-04-29 18:38:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425195290005504', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:38:15', '2020-04-29 18:38:15');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425216248942592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:38:20', '2020-04-29 18:38:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425237224656896', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：2毫秒', 0, NULL, '2020-04-29 18:38:25', '2020-04-29 18:38:25');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425258200371200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:38:30', '2020-04-29 18:38:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425279192862720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:38:35', '2020-04-29 18:38:35');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425300126633984', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:38:40', '2020-04-29 18:38:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425321089765376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:38:45', '2020-04-29 18:38:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425342082256896', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:38:50', '2020-04-29 18:38:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425363041193984', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:38:55', '2020-04-29 18:38:55');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425384000131072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:39:00', '2020-04-29 18:39:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425404967456768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:39:05', '2020-04-29 18:39:05');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425425997697024', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:39:10', '2020-04-29 18:39:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425446956634112', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:39:15', '2020-04-29 18:39:15');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425467902988288', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:39:20', '2020-04-29 18:39:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425488866119680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:39:25', '2020-04-29 18:39:25');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425509825056768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:39:30', '2020-04-29 18:39:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425530800771072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:39:35', '2020-04-29 18:39:35');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425551768096768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:39:40', '2020-04-29 18:39:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425572743811072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:39:45', '2020-04-29 18:39:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425593706942464', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:39:50', '2020-04-29 18:39:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425614678462464', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:39:55', '2020-04-29 18:39:55');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425635654176768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:40:00', '2020-04-29 18:40:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425656629891072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:40:05', '2020-04-29 18:40:05');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425677597216768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:40:10', '2020-04-29 18:40:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425698568736768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:40:15', '2020-04-29 18:40:15');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425719540256768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:40:20', '2020-04-29 18:40:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425740515971072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:40:25', '2020-04-29 18:40:25');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425761487491072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:40:30', '2020-04-29 18:40:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425782454816768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:40:35', '2020-04-29 18:40:35');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425803430531072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:40:40', '2020-04-29 18:40:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425824397856768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:40:45', '2020-04-29 18:40:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425845373571072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:40:50', '2020-04-29 18:40:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425866340896768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:40:55', '2020-04-29 18:40:55');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425887312416768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:41:00', '2020-04-29 18:41:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425908283936768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:41:05', '2020-04-29 18:41:05');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425929255456768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:41:10', '2020-04-29 18:41:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425950226976768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:41:15', '2020-04-29 18:41:15');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425971198496768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:41:20', '2020-04-29 18:41:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425992165822464', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:41:25', '2020-04-29 18:41:25');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426013141536768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:41:30', '2020-04-29 18:41:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426034117251072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:41:35', '2020-04-29 18:41:35');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426055088771072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:41:40', '2020-04-29 18:41:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426076056096768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:41:45', '2020-04-29 18:41:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426117479043072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：4毫秒', 0, NULL, '2020-04-29 18:41:51', '2020-04-29 18:41:51');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426138983239680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:42:00', '2020-04-29 18:42:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426180909502464', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:42:10', '2020-04-29 18:42:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426222856736768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:42:20', '2020-04-29 18:42:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426264799776768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:42:30', '2020-04-29 18:42:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426306742816768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:42:40', '2020-04-29 18:42:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426348685856768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:42:50', '2020-04-29 18:42:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426390633091072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:43:00', '2020-04-29 18:43:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426432580325376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:43:10', '2020-04-29 18:43:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426453539262464', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:43:15', '2020-04-29 18:43:15');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426474519171072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：2毫秒', 0, NULL, '2020-04-29 18:43:20', '2020-04-29 18:43:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426495486496768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:43:25', '2020-04-29 18:43:25');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426516462211072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:43:30', '2020-04-29 18:43:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426537437925376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:43:35', '2020-04-29 18:43:35');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426558417833984', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:43:40', '2020-04-29 18:43:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426579372576768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:43:45', '2020-04-29 18:43:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426600344096768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:43:50', '2020-04-29 18:43:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426789146497024', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：3毫秒', 0, NULL, '2020-04-29 18:44:35', '2020-04-29 18:44:35');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426810071879680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:44:40', '2020-04-29 18:44:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426831039205376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:44:45', '2020-04-29 18:44:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426851998142464', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:44:50', '2020-04-29 18:44:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426872982245376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:44:55', '2020-04-29 18:44:55');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426894041845760', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:45:00', '2020-04-29 18:45:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426914921091072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:45:05', '2020-04-29 18:45:05');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426935888416768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:45:10', '2020-04-29 18:45:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426956864131072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:45:15', '2020-04-29 18:45:15');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426977835651072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-04-29 18:45:20', '2020-04-29 18:45:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415427019774496768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:45:30', '2020-04-29 18:45:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415427061713342464', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:45:40', '2020-04-29 18:45:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415427103660576768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', 0, NULL, '2020-04-29 18:45:50', '2020-04-29 18:45:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('503199187412848640', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：45毫秒', 0, NULL, '2020-12-27 15:40:45', '2020-12-27 15:40:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('503200830422388736', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：37毫秒', 0, NULL, '2020-12-27 15:47:17', '2020-12-27 15:47:17');
INSERT INTO `t_sys_quartz_job_log` VALUES ('503205708326637568', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：148毫秒', 0, NULL, '2020-12-27 16:06:40', '2020-12-27 16:06:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('503205749506314240', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：10毫秒', 0, NULL, '2020-12-27 16:06:50', '2020-12-27 16:06:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('503205791440965632', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：5毫秒', 0, NULL, '2020-12-27 16:07:00', '2020-12-27 16:07:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('503205917249114112', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：7毫秒', 0, NULL, '2020-12-27 16:07:30', '2020-12-27 16:07:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('503205959217319936', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：8毫秒', 0, NULL, '2020-12-27 16:07:40', '2020-12-27 16:07:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('503218856400130048', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：39毫秒', 0, NULL, '2020-12-27 16:58:55', '2020-12-27 16:58:55');
INSERT INTO `t_sys_quartz_job_log` VALUES ('503222358929182720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：2毫秒', 0, NULL, '2020-12-27 17:12:50', '2020-12-27 17:12:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('503222379850371072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', 0, NULL, '2020-12-27 17:12:55', '2020-12-27 17:12:55');
INSERT INTO `t_sys_quartz_job_log` VALUES ('503222442806874112', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：3毫秒', 0, NULL, '2020-12-27 17:13:10', '2020-12-27 17:13:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('503222463786782720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：2毫秒', 0, NULL, '2020-12-27 17:13:15', '2020-12-27 17:13:15');
INSERT INTO `t_sys_quartz_job_log` VALUES ('503222842696011776', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：5毫秒', 0, NULL, '2020-12-27 17:14:45', '2020-12-27 17:14:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('503222862266634240', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：4毫秒', 0, NULL, '2020-12-27 17:14:50', '2020-12-27 17:14:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('503222883204599808', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：3毫秒', 0, NULL, '2020-12-27 17:14:55', '2020-12-27 17:14:55');
INSERT INTO `t_sys_quartz_job_log` VALUES ('503222904176119808', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：3毫秒', 1, 'ewrwerwer', '2020-12-27 17:15:00', '2020-12-30 17:15:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('503236547471085568', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：37毫秒', 0, NULL, '2020-12-27 18:09:13', '2020-12-27 18:09:13');

-- ----------------------------
-- Table structure for t_sys_role
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role`;
CREATE TABLE `t_sys_role`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

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
CREATE TABLE `t_sys_role_user`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sys_user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `sys_role_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户角色中间表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sys_role_user
-- ----------------------------
INSERT INTO `t_sys_role_user` VALUES ('353711021275353089', '353711021275353088', '488289006124007424');
INSERT INTO `t_sys_role_user` VALUES ('353714370687143936', '488294747442511872', '488289006124007424');
INSERT INTO `t_sys_role_user` VALUES ('354984037766533120', '354984005751410688', '488243256161730560');
INSERT INTO `t_sys_role_user` VALUES ('354988722443390977', '354988722443390976', '488243256161730560');
INSERT INTO `t_sys_role_user` VALUES ('354989789679849472', '354989789675655168', '488305788310257664');
INSERT INTO `t_sys_role_user` VALUES ('495571139645542400', '1', '488243256161730560');
INSERT INTO `t_sys_role_user` VALUES ('612107905532952576', '612107905532952576', '488289006124007424');
INSERT INTO `t_sys_role_user` VALUES ('612107905537146880', '612107905532952576', '488305788310257664');

-- ----------------------------
-- Table structure for t_sys_street
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_street`;
CREATE TABLE `t_sys_street`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增列',
  `street_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '街道代码',
  `area_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父级区代码',
  `street_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '街道名称',
  `short_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '简称',
  `lng` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经度',
  `lat` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '纬度',
  `sort` int(6) NULL DEFAULT NULL COMMENT '排序',
  `gmt_create` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `memo` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `data_state` int(11) NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `Index_1`(`street_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '街道设置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sys_street
-- ----------------------------

-- ----------------------------
-- Table structure for t_sys_user
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user`;
CREATE TABLE `t_sys_user`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '主键',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户账号',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户密码',
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '昵称',
  `dep_id` int(11) NULL DEFAULT NULL COMMENT '部门id',
  `pos_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '岗位id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sys_user
-- ----------------------------
INSERT INTO `t_sys_user` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '管理员', 2, '410792368778907648');
INSERT INTO `t_sys_user` VALUES ('433236479427350528', 'fuce', '21232f297a57a5a743894a0e4a801fc3', '付册', 2, '410792443127140352');

-- ----------------------------
-- Table structure for t_test
-- ----------------------------
DROP TABLE IF EXISTS `t_test`;
CREATE TABLE `t_test`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `b_c_update` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `t_cb_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '写个字符串',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '测试表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_test
-- ----------------------------
INSERT INTO `t_test` VALUES ('457067146405613568', '管理员', 2, '1', '2021-01-14 16:00:00', '2021-01-15 16:00:00', '7');
INSERT INTO `t_test` VALUES ('457067174939463680', '法院用户', 2, '1', '2021-01-12 16:00:00', '2021-01-18 16:00:00', '');
INSERT INTO `t_test` VALUES ('457067196175224832', 'guest', 1, '3', '2021-01-02 16:00:00', '2021-01-16 16:00:00', '');
INSERT INTO `t_test` VALUES ('457067220279889920', 'helloword', 1, '3', '2021-01-03 16:00:00', '2021-01-25 16:00:00', '');

SET FOREIGN_KEY_CHECKS = 1;
