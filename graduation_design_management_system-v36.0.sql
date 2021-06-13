/*
 Navicat Premium Data Transfer

 Source Server         : boot_crm
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : localhost:3306
 Source Schema         : graduation_design_management_system1

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 11/05/2021 18:50:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for announcement
-- ----------------------------
DROP TABLE IF EXISTS `announcement`;
CREATE TABLE `announcement`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '编号',
  `headline` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题',
  `content` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内容',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of announcement
-- ----------------------------
INSERT INTO `announcement` VALUES ('1', '2131', '123', '2021-04-10 04:45:28', '1');
INSERT INTO `announcement` VALUES ('213', '123', '213', '2021-04-07 14:45:37', '1');
INSERT INTO `announcement` VALUES ('46f2c303afb744119444831ef3c46c6f', '23', '123', '2021-04-20 17:12:53', '1');
INSERT INTO `announcement` VALUES ('6095a731ac814bfc94ca97b7e498ebe9', '刚刚发布的题目111', '我相信你是可以的1112', '2021-04-22 23:29:17', '1');
INSERT INTO `announcement` VALUES ('7c812801c63c49bb9539b5262b63fede', 'asd', '阿松大', '2021-04-24 17:23:03', '1');
INSERT INTO `announcement` VALUES ('8a94e7a09a2147469bf173b97a9b41d2', '关于做好2021届毕业设计（论文）工作的通知', '各二级学院：\r\n\r\n毕业设计（论文）是学校教育教学内容的重要组成部分，是培养实践能力、创新能力、科学精神和创业精神的重要教学环节，毕业设计（论文）的质量也是衡量学校教学水平和质量的重要依据。近年来，教育部出台了《关于加快建设高水平本科教育全面提高人才培养能力的意见》（教高〔2018〕2号）、《关于狠抓新时代全国高等学校本科教育工作会议精神落实的通知》（教高函〔2018〕8号）、《关于严厉查处高等学校学位论文买卖、代写行为的通知》（教督厅函〔2018〕6号）等文件，对大学生毕业设计（论文）管理提出了要求。近期，教育部又下发了《关于对<学士学位论文（毕业设计）抽检办法（试行）>征求意见的函》，下一步，大学生毕业论文抽检将成为常态。为做好我校2021届毕业设计（论文）管理工作，现将有关要求通知如下：', '2021-04-23 21:02:19', '0');
INSERT INTO `announcement` VALUES ('b250d9b0f903456cb394a27054a8ec70', '企鹅舞', 'qw为请问', '2021-04-21 07:09:18', '1');
INSERT INTO `announcement` VALUES ('b8feb4c574cd49a1af98581c277edf34', '做好本科毕业论文工作安排', '大家需要根据抽查工作的时间适当地安排自己专业的毕业设计工作时间1', '2021-05-02 13:40:32', '1');
INSERT INTO `announcement` VALUES ('e3af255e9fda4e6a8bf65dc646d46141', '阿松大', '阿斯蒂芬萨芬', '2021-04-20 16:57:20', '1');
INSERT INTO `announcement` VALUES ('feb7ecefa96142ea9468f622c17c6871', '教育部关于印发《本科毕业论文（设计）抽检办法（试行）》的通知', '\"教育部关于印发《本科毕业论文（设计）抽检办法（试行）》的通知\"，请广大师生下载学习，并请严格按照毕业论文（设计）相关规定、规范做好各环节工作。', '2021-04-23 21:01:38', '0');

-- ----------------------------
-- Table structure for assignment_book
-- ----------------------------
DROP TABLE IF EXISTS `assignment_book`;
CREATE TABLE `assignment_book`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '课题id',
  `Content_requirements` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内容要求',
  `scheduling` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '进度安排',
  `references` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '参考文献',
  `audit_status` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '审核状态：1.未审核.2.通过.3.不通过',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of assignment_book
-- ----------------------------

-- ----------------------------
-- Table structure for final_paper
-- ----------------------------
DROP TABLE IF EXISTS `final_paper`;
CREATE TABLE `final_paper`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '课题id',
  `keywords` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关键词',
  `innovation_point` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '创新点',
  `chinese_abstract` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '中文摘要',
  `english_abstract` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '英文摘要',
  `other` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其他',
  `file_address` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件地址',
  `file_name` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件名',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `audit_status` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '审核状态：1.未审核.2.通过.3.不通过',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of final_paper
-- ----------------------------

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `lId` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '日志ID',
  `lAction` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作行为',
  `lCreator` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作人',
  `IUrl` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作的url',
  `lRemark` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类型',
  `lTask` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作课题',
  `lCreatetime` datetime(6) NULL DEFAULT NULL COMMENT '操作时间',
  `lCreatorRole` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作人角色',
  PRIMARY KEY (`lId`) USING BTREE,
  INDEX `sys_menu_parent_id`(`lAction`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('04a7786c6a7c48529e685daaf697ecae', '查看', '1', '/menu', '菜单', NULL, '2021-05-11 16:03:25.155000', NULL);
INSERT INTO `log` VALUES ('0504c9612e264ca0976e4f9c5a1ac8c0', '查看', '1', '/role', '角色列表', NULL, '2021-05-11 16:18:06.886000', NULL);
INSERT INTO `log` VALUES ('21b1d54ab55c4583abc240b6288e628f', '添加', '1', '/user/form/save', '用户', NULL, '2021-05-11 17:20:49.521000', NULL);
INSERT INTO `log` VALUES ('4e22cf84dbd3463c831a00ca8748477f', '添加', '1', '/user/form/save', '用户', NULL, '2021-05-11 15:27:22.469000', NULL);
INSERT INTO `log` VALUES ('5226aa867d744af5bc6046698cc89b22', '查看', '1', '/menu', '菜单', NULL, '2021-05-11 18:35:27.716000', NULL);
INSERT INTO `log` VALUES ('573d462d429e4467aad65062a0623bdf', '查看', '1', '/role', '角色列表', NULL, '2021-05-11 18:35:28.692000', NULL);
INSERT INTO `log` VALUES ('5cf7dba0969f4e729e59b02edfb79e61', '查看', '1', '/office', '机构', NULL, '2021-05-11 16:18:08.829000', NULL);
INSERT INTO `log` VALUES ('60d73ec6e3f34cfe8337539225180b29', '添加', '1', '/user/form/save', '用户', NULL, '2021-05-11 17:20:06.290000', NULL);
INSERT INTO `log` VALUES ('6c2183212a244aa79bf8ca6b04b84341', '添加', '1', '/user/form/save', '用户', NULL, '2021-05-11 17:19:13.581000', NULL);
INSERT INTO `log` VALUES ('6c23d804557843e4b1efc5bf9e088751', '查看', '1', '/role', '角色列表', NULL, '2021-05-11 16:03:23.287000', NULL);
INSERT INTO `log` VALUES ('6f15e9ab3ea14b33afc996561d306528', '查看', '1', '/role', '角色列表', NULL, '2021-05-11 18:44:56.393000', NULL);
INSERT INTO `log` VALUES ('841aff3f8a46490a912d22d6086f98af', '添加', '1', '/user/form/save', '用户', NULL, '2021-05-11 15:28:03.444000', NULL);
INSERT INTO `log` VALUES ('9c14fcc63004467e9ea95d4cc3789b4e', '添加', '1', '/user/form/save', '用户', NULL, '2021-05-11 15:29:21.560000', NULL);
INSERT INTO `log` VALUES ('a16f4575c9ed41e88fba04214874cbec', '查看', '1', '/office', '机构', NULL, '2021-05-11 18:35:26.055000', NULL);
INSERT INTO `log` VALUES ('a995e839cbbc4ee2bb45ac9ea934d934', '添加', '1', '/user/form/save', '用户', NULL, '2021-05-11 15:23:36.467000', NULL);
INSERT INTO `log` VALUES ('dcb1d529fd594a689d092735d165a53d', '查看', '1', '/office', '机构', NULL, '2021-05-11 18:44:51.927000', NULL);
INSERT INTO `log` VALUES ('e3921f7c1afb483dafa222f88af88e6c', '查看', '1', '/menu', '菜单', NULL, '2021-05-11 18:44:52.975000', NULL);

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '编号',
  `parent_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `sort` decimal(10, 0) NOT NULL COMMENT '排序',
  `href` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '链接',
  `target` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '目标',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图标',
  `is_show` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '是否在菜单中显示',
  `permission` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_menu_parent_id`(`parent_id`) USING BTREE,
  INDEX `sys_menu_del_flag`(`del_flag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('0b2cc5d087d442f988c21973d87daf40', '55aa6ead61554b1184d470912e5372ee', '0,1,a2a8da41340743418dd251f446cbda3f,55aa6ead61554b1184d470912e5372ee,', '审核双选题目', 30, '/teacher/auditdoubletask', '', '', '1', '', '5', '2021-04-17 21:07:15', '5', '2021-04-17 21:07:15', '', '1');
INSERT INTO `menu` VALUES ('0b2ebd4d639e4c2b83c2dd0764522f24', 'ba8092291b40482db8fe7fc006ea3d76', '0,1,79,3c92c17886944d0687e73e286cada573,ba8092291b40482db8fe7fc006ea3d76,', '编辑', 60, '', '', '', '0', 'test:testData:edit', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `menu` VALUES ('0ca004d6b1bf4bcab9670a5060d82a55', '3c92c17886944d0687e73e286cada573', '0,1,79,3c92c17886944d0687e73e286cada573,', '树结构', 110, '/test/testTree', '', '', '1', '', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `menu` VALUES ('1', '0', '0,', '功能菜单', 0, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('10', '3', '0,1,2,3,', '字典管理', 60, '/sys/dict/', NULL, 'th-list', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('11', '10', '0,1,2,3,10,', '查看', 30, NULL, NULL, NULL, '0', 'sys:dict:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('12', '10', '0,1,2,3,10,', '修改', 40, NULL, NULL, NULL, '0', 'sys:dict:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('13', '2', '0,1,2,', '机构用户', 970, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('14', '13', '0,1,2,13,', '区域管理', 50, '/sys/area/', NULL, 'th', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('15', '14', '0,1,2,13,14,', '查看', 30, NULL, NULL, NULL, '0', 'sys:area:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('155e0e0edb804beeba58c029a77883a8', '8a463f98aa1b48f99dafe189d86d4dfc', '0,1,8a463f98aa1b48f99dafe189d86d4dfc,', '学生申报题目', 50, '/task/student/releasetopic', '', '', '1', '', '5', '2021-04-18 09:56:22', '5', '2021-04-18 09:56:22', '', '0');
INSERT INTO `menu` VALUES ('16', '14', '0,1,2,13,14,', '修改', 40, NULL, NULL, NULL, '0', 'sys:area:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('17', '13', '0,1,2,13,', '机构管理', 40, '/sys/office/', NULL, 'th-large', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('18', '17', '0,1,2,13,17,', '查看', 30, NULL, NULL, NULL, '0', 'sys:office:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('18543ed1fca3438399cdd318cd95e476', '27', '0,1,27,', '用户管理', 100, '/user', '', '', '1', '', '5', '2021-04-05 10:36:33', '5', '2021-04-05 10:36:33', '', '1');
INSERT INTO `menu` VALUES ('18f35364dd0243f18f2b3db0b83158ab', '8a463f98aa1b48f99dafe189d86d4dfc', '0,1,8a463f98aa1b48f99dafe189d86d4dfc,', '选题分析', 10, '/taskanalysis', '', '', '1', '', '5', '2021-04-19 22:52:56', '5', '2021-04-19 22:52:56', '', '0');
INSERT INTO `menu` VALUES ('19', '17', '0,1,2,13,17,', '修改', 40, NULL, NULL, NULL, '0', 'sys:office:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('1bb1b49dd6994e77b3a2444e42c902cf', 'a05529efe00c49afbb8e1cc1b7932528', '0,1,a05529efe00c49afbb8e1cc1b7932528,', '发布公告', 120, '/announcement/form', '', '', '1', '', '5', '2021-05-01 23:33:56', '5', '2021-05-01 23:33:56', '', '0');
INSERT INTO `menu` VALUES ('2', '1', '0,1,', '系统设置', 900, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `menu` VALUES ('20', '13', '0,1,2,13,', '用户管理', 30, '/sys/user/index', NULL, 'user', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('21', '20', '0,1,2,13,20,', '查看', 30, NULL, NULL, NULL, '0', 'sys:user:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('22', '20', '0,1,2,13,20,', '修改', 40, NULL, NULL, NULL, '0', 'sys:user:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('23', '2', '0,1,2,', '关于帮助', 990, NULL, NULL, NULL, '0', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('24', '23', '0,1,2,23', '官方首页', 30, 'http://jeesite.com', '_blank', NULL, '0', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('25', '23', '0,1,2,23', '项目支持', 50, 'http://jeesite.com/donation.html', '_blank', NULL, '0', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `menu` VALUES ('26', '23', '0,1,2,23', '论坛交流', 80, 'http://bbs.jeesite.com', '_blank', NULL, '0', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `menu` VALUES ('27', '1', '0,1,', '我的面板', 100, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('28', '27', '0,1,27,', '菜单管理', 65, '/menu', '', '', '1', '', '5', '2021-04-03 20:24:21', '5', '2021-04-03 20:24:21', '', '0');
INSERT INTO `menu` VALUES ('29', '28', '0,1,27,28,', '个人信息', 30, '/sys/user/info', NULL, 'user', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `menu` VALUES ('2cfc16329df745eba6c5970443a2bb05', 'bd25abd95d184150bb1234ab41dbd2bf', '0,1,bd25abd95d184150bb1234ab41dbd2bf,', '修改密码', 70, '/information/modifyPassword', '', '', '1', '', '5', '2021-04-19 00:42:17', '5', '2021-04-19 00:42:17', '', '0');
INSERT INTO `menu` VALUES ('2e18dd03394d461c88e513b6254ac492', '1', '0,1,', '机构管理', 190, '/office', '', '', '1', '', '5', '2021-04-09 19:09:12', '5', '2021-04-09 19:09:12', '', '1');
INSERT INTO `menu` VALUES ('2f6889163a884d10af26c2e3556be1b7', 'a2a8da41340743418dd251f446cbda3f', '0,1,a2a8da41340743418dd251f446cbda3f,', '提交学生成绩', 146, '/task/set/score', '', '', '1', '', '5', '2021-04-24 08:40:26', '5', '2021-04-24 08:40:26', '', '0');
INSERT INTO `menu` VALUES ('3', '2', '0,1,2,', '系统设置', 980, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('30', '28', '0,1,27,28,', '修改密码', 40, '/sys/user/modifyPwd', NULL, 'lock', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `menu` VALUES ('31', '1', '0,1,', '内容管理', 500, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `menu` VALUES ('32', '31', '0,1,31,', '栏目设置', 990, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('33', '32', '0,1,31,32', '栏目管理', 30, '/cms/category/', NULL, 'align-justify', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('34', '33', '0,1,31,32,33,', '查看', 30, NULL, NULL, NULL, '0', 'cms:category:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('35', '33', '0,1,31,32,33,', '修改', 40, NULL, NULL, NULL, '0', 'cms:category:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('356072e77a8a46f9a917d9d0a9005764', '27', '0,1,27,', '机构管理', 60, '/office', '', '', '1', '', '5', '2021-04-09 19:09:38', '5', '2021-04-09 19:09:38', '', '0');
INSERT INTO `menu` VALUES ('36', '32', '0,1,31,32', '站点设置', 40, '/cms/site/', NULL, 'certificate', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('36df55d4c0244ce587672a58a5e4e5ef', '8a463f98aa1b48f99dafe189d86d4dfc', '0,1,8a463f98aa1b48f99dafe189d86d4dfc,', '个人信息维护', 80, '/information', '', '', '1', '', '5', '2021-04-18 21:05:49', '5', '2021-04-18 21:05:49', '', '0');
INSERT INTO `menu` VALUES ('37', '36', '0,1,31,32,36,', '查看', 30, NULL, NULL, NULL, '0', 'cms:site:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('38', '36', '0,1,31,32,36,', '修改', 40, NULL, NULL, NULL, '0', 'cms:site:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('38cbbfe3ceb0404b98959368c0274258', 'bd25abd95d184150bb1234ab41dbd2bf', '0,1,bd25abd95d184150bb1234ab41dbd2bf,', '选题分析', 20, '/taskanalysis', '', '', '1', '', '5', '2021-04-19 22:53:49', '5', '2021-04-19 22:53:49', '', '0');
INSERT INTO `menu` VALUES ('39', '32', '0,1,31,32', '切换站点', 50, '/cms/site/select', NULL, 'retweet', '1', 'cms:site:select', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('39fc36ffbcff4ba58bfc91f1ed79fc67', '8a463f98aa1b48f99dafe189d86d4dfc', '0,1,8a463f98aa1b48f99dafe189d86d4dfc,', '上传相关资料', 65, '/task/uploadmaterial', '', '', '1', '', '5', '2021-04-23 08:02:54', '5', '2021-04-23 08:02:54', '', '0');
INSERT INTO `menu` VALUES ('3c92c17886944d0687e73e286cada573', '79', '0,1,79,', '生成示例', 120, '', '', '', '1', '', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `menu` VALUES ('3d1b39d686eb49c89d50bc6b20db39dc', '8a463f98aa1b48f99dafe189d86d4dfc', '0,1,8a463f98aa1b48f99dafe189d86d4dfc,', '提交毕业设计最终版', 70, '/task/submit/graduationproject', '', '', '1', '', '5', '2021-04-29 00:06:40', '5', '2021-04-29 00:06:40', '', '0');
INSERT INTO `menu` VALUES ('4', '3', '0,1,2,3,', '菜单管理', 30, '/sys/menu/', NULL, 'list-alt', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('40', '31', '0,1,31,', '内容管理', 500, NULL, NULL, NULL, '1', 'cms:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('41', '40', '0,1,31,40,', '内容发布', 30, '/cms/', NULL, 'briefcase', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('42', '41', '0,1,31,40,41,', '文章模型', 40, '/cms/article/', NULL, 'file', '0', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('43', '42', '0,1,31,40,41,42,', '查看', 30, NULL, NULL, NULL, '0', 'cms:article:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('44', '42', '0,1,31,40,41,42,', '修改', 40, NULL, NULL, NULL, '0', 'cms:article:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('45', '42', '0,1,31,40,41,42,', '审核', 50, NULL, NULL, NULL, '0', 'cms:article:audit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('46', '41', '0,1,31,40,41,', '链接模型', 60, '/cms/link/', NULL, 'random', '0', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('47', '46', '0,1,31,40,41,46,', '查看', 30, NULL, NULL, NULL, '0', 'cms:link:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('47c8e642ab294a419e13ba173dca5af0', 'bd25abd95d184150bb1234ab41dbd2bf', '0,1,bd25abd95d184150bb1234ab41dbd2bf,', '审核教师任务书', 50, '/task/audit/assignment/bookList', '', '', '1', '', '5', '2021-04-21 23:16:59', '5', '2021-04-21 23:16:59', '', '0');
INSERT INTO `menu` VALUES ('48', '46', '0,1,31,40,41,46,', '修改', 40, NULL, NULL, NULL, '0', 'cms:link:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('4855cf3b25c244fb8500a380db189d97', 'b1f6d1b86ba24365bae7fd86c5082317', '0,1,79,3c92c17886944d0687e73e286cada573,b1f6d1b86ba24365bae7fd86c5082317,', '查看', 30, '', '', '', '0', 'test:testDataMain:view', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `menu` VALUES ('48c59a3ff0524bea96c4171d60377a82', '27', '0,1,27,', '发布公告', 190, '/announcement/form', '', '', '1', '', '5', '2021-04-20 15:07:17', '5', '2021-04-20 15:07:17', '', '0');
INSERT INTO `menu` VALUES ('49', '46', '0,1,31,40,41,46,', '审核', 50, NULL, NULL, NULL, '0', 'cms:link:audit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('4bde3d5a4ea24738a0733bc02b5a581a', 'a2a8da41340743418dd251f446cbda3f', '0,1,a2a8da41340743418dd251f446cbda3f,', '指定学生', 130, '/task/teacher/assignstudent', '', '', '1', '', '5', '2021-04-19 01:19:44', '5', '2021-04-19 01:19:44', '', '0');
INSERT INTO `menu` VALUES ('5', '4', '0,1,2,3,4,', '查看', 30, NULL, NULL, NULL, '0', 'sys:menu:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('50', '40', '0,1,31,40,', '评论管理', 40, '/cms/comment/?status=2', NULL, 'comment', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('51', '50', '0,1,31,40,50,', '查看', 30, NULL, NULL, NULL, '0', 'cms:comment:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('52', '50', '0,1,31,40,50,', '审核', 40, NULL, NULL, NULL, '0', 'cms:comment:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('529206d390ee4fd7a76c4fc948ffcb67', 'a2a8da41340743418dd251f446cbda3f', '0,1,a2a8da41340743418dd251f446cbda3f,', '个人信息维护', 150, '/information', '', '', '1', '', '5', '2021-04-19 00:41:07', '5', '2021-04-19 00:41:07', '', '0');
INSERT INTO `menu` VALUES ('53', '40', '0,1,31,40,', '公共留言', 80, '/cms/guestbook/?status=2', NULL, 'glass', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('54', '53', '0,1,31,40,53,', '查看', 30, NULL, NULL, NULL, '0', 'cms:guestbook:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('54acd5255ac54c2da348fba5208104f7', 'bd25abd95d184150bb1234ab41dbd2bf', '0,1,bd25abd95d184150bb1234ab41dbd2bf,', '审核教师申报题目', 40, '/task/audit/teacherassign', '', '', '1', '', '5', '2021-04-19 15:08:54', '5', '2021-04-19 15:08:54', '', '0');
INSERT INTO `menu` VALUES ('55', '53', '0,1,31,40,53,', '审核', 40, NULL, NULL, NULL, '0', 'cms:guestbook:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('55aa6ead61554b1184d470912e5372ee', 'a2a8da41340743418dd251f446cbda3f', '0,1,a2a8da41340743418dd251f446cbda3f,', '题目发布', 30, '/teacher/task/form', '', '', '1', '', '5', '2021-04-16 11:02:40', '5', '2021-04-16 11:02:40', '', '0');
INSERT INTO `menu` VALUES ('56', '71', '0,1,27,71,', '文件管理', 90, '/../static/ckfinder/ckfinder.html', NULL, 'folder-open', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `menu` VALUES ('57', '56', '0,1,27,40,56,', '查看', 30, NULL, NULL, NULL, '0', 'cms:ckfinder:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('58', '56', '0,1,27,40,56,', '上传', 40, NULL, NULL, NULL, '0', 'cms:ckfinder:upload', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('59', '56', '0,1,27,40,56,', '修改', 50, NULL, NULL, NULL, '0', 'cms:ckfinder:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('5b5b504a3a9044e0bb12364acef62342', 'a2a8da41340743418dd251f446cbda3f', '0,1,a2a8da41340743418dd251f446cbda3f,', '申报任务书', 140, '/task/assignment/bookList', '', '', '1', '', '5', '2021-04-20 22:25:23', '5', '2021-04-20 22:25:23', '', '0');
INSERT INTO `menu` VALUES ('6', '4', '0,1,2,3,4,', '修改', 40, NULL, NULL, NULL, '0', 'sys:menu:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('60', '31', '0,1,31,', '统计分析', 600, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('61', '60', '0,1,31,60,', '信息量统计', 30, '/cms/stats/article', NULL, 'tasks', '1', 'cms:stats:article', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('62', '1', '0,1,', '在线办公', 200, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `menu` VALUES ('620227a0eac6455ead5e4254c301ed64', '8a463f98aa1b48f99dafe189d86d4dfc', '0,1,8a463f98aa1b48f99dafe189d86d4dfc,', '题目选择', 20, '/task/student/doublechoselist', '', '', '1', '', '5', '2021-04-17 00:35:06', '5', '2021-04-17 00:35:06', '', '0');
INSERT INTO `menu` VALUES ('63', '62', '0,1,62,', '个人办公', 30, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `menu` VALUES ('6353e1eadd1044bda63b6f5f1131c37a', '27', '0,1,27,', '选题分析', 160, '/taskanalysis', '', '', '1', '', '5', '2021-04-19 17:20:01', '5', '2021-04-19 17:20:01', '', '0');
INSERT INTO `menu` VALUES ('64', '63', '0,1,62,63,', '请假办理', 300, '/oa/leave', NULL, 'leaf', '0', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('64425907a272429d9a708bc296667a07', '1', '0,1,', '用户管理', 130, '/user', '', '', '1', '', '5', '2021-04-05 10:36:20', '5', '2021-04-05 10:36:20', '', '1');
INSERT INTO `menu` VALUES ('65', '64', '0,1,62,63,64,', '查看', 30, NULL, NULL, NULL, '0', 'oa:leave:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('66', '64', '0,1,62,63,64,', '修改', 40, NULL, NULL, NULL, '0', 'oa:leave:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('67', '2', '0,1,2,', '日志查询', 985, NULL, NULL, NULL, '1', NULL, '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('68', '67', '0,1,2,67,', '日志查询', 30, '/sys/log', NULL, 'pencil', '1', 'sys:log:view', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('69', '62', '0,1,62,', '流程管理', 300, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `menu` VALUES ('6e8240b2a60d411a8076e2104e80bca0', 'a05529efe00c49afbb8e1cc1b7932528', '0,1,a05529efe00c49afbb8e1cc1b7932528,', '角色管理', 60, '/role', '', '', '1', '', '5', '2021-05-01 23:33:06', '5', '2021-05-01 23:33:06', '', '0');
INSERT INTO `menu` VALUES ('6ea3047dca3944c5b837798beb2fa104', '27', '0,1,27,', '通知公告', 250, '/announcement/viewuserList', '', '', '1', '', '5', '2021-04-20 16:00:11', '5', '2021-04-20 16:00:11', '', '0');
INSERT INTO `menu` VALUES ('7', '3', '0,1,2,3,', '角色管理', 50, '/sys/role/', NULL, 'lock', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('70', '69', '0,1,62,69,', '流程管理', 50, '/act/process', NULL, 'road', '1', 'act:process:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('71', '27', '0,1,27,', '文件管理', 100, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `menu` VALUES ('72', '69', '0,1,62,69,', '模型管理', 100, '/act/model', NULL, 'road', '1', 'act:model:edit', '1', '2013-09-20 08:00:00', '1', '2013-09-20 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('72970b960e424d36b454057fe3c9dac7', 'a2a8da41340743418dd251f446cbda3f', '0,1,a2a8da41340743418dd251f446cbda3f,', '修改密码', 180, '/information/modifyPassword', '', '', '1', '', '5', '2021-04-19 00:41:29', '5', '2021-04-19 00:41:29', '', '0');
INSERT INTO `menu` VALUES ('73', '63', '0,1,62,63,', '我的任务', 50, '/act/task/todo/', NULL, 'tasks', '1', NULL, '1', '2013-09-24 08:00:00', '1', '2013-09-24 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('73829e47cc1f486893c11223c2048862', 'a05529efe00c49afbb8e1cc1b7932528', '0,1,a05529efe00c49afbb8e1cc1b7932528,', '公告管理', 150, '/announcement', '', '', '1', '', '5', '2021-05-01 23:34:10', '5', '2021-05-01 23:34:10', '', '0');
INSERT INTO `menu` VALUES ('73b15b3cda2a48b58bdebbda7e27fb10', 'a2a8da41340743418dd251f446cbda3f', '0,1,a2a8da41340743418dd251f446cbda3f,', '查看申报的双选课题', 60, '/teacher/tasklist', '', '', '1', '', '5', '2021-04-16 19:25:33', '5', '2021-04-16 19:25:33', '', '0');
INSERT INTO `menu` VALUES ('74', '63', '0,1,62,63,', '审批测试', 100, '/oa/testAudit', NULL, NULL, '1', 'oa:testAudit:view,oa:testAudit:edit', '1', '2013-09-24 08:00:00', '1', '2013-09-24 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('75', '1', '0,1,', '在线演示', 3000, NULL, NULL, NULL, '1', NULL, '1', '2013-10-08 08:00:00', '1', '2013-10-08 08:00:00', NULL, '1');
INSERT INTO `menu` VALUES ('79', '1', '0,1,', '代码生成', 5000, NULL, NULL, NULL, '1', NULL, '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', NULL, '1');
INSERT INTO `menu` VALUES ('79aa51192b4c49f9bee23f8ec47fea9e', '8a463f98aa1b48f99dafe189d86d4dfc', '0,1,8a463f98aa1b48f99dafe189d86d4dfc,', '查看最终成绩', 75, '/task/student/see/final/score', '', '', '1', '', '5', '2021-04-24 12:06:42', '5', '2021-04-24 12:06:42', '', '0');
INSERT INTO `menu` VALUES ('7b187bed88a6494cb48a90a2b976873f', 'a2a8da41340743418dd251f446cbda3f', '0,1,a2a8da41340743418dd251f446cbda3f,', '审核双选题目', 90, '/teacher/task/doublechoosestudent', '', '', '1', '', '5', '2021-04-17 22:54:54', '5', '2021-04-17 22:54:54', '', '0');
INSERT INTO `menu` VALUES ('7d9d0fc5e2204a399c37344cf89e94da', 'bd25abd95d184150bb1234ab41dbd2bf', '0,1,bd25abd95d184150bb1234ab41dbd2bf,', '分配评阅教师', 56, '/task/allocate/assessteacher', '', '', '1', '', '5', '2021-05-03 14:46:23', '5', '2021-05-03 14:46:23', '', '0');
INSERT INTO `menu` VALUES ('8', '7', '0,1,2,3,7,', '查看', 30, NULL, NULL, NULL, '0', 'sys:role:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('80', '79', '0,1,79,', '代码生成', 50, NULL, NULL, NULL, '1', NULL, '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('81', '80', '0,1,79,80,', '生成方案配置', 30, '/gen/genScheme', NULL, NULL, '1', 'gen:genScheme:view,gen:genScheme:edit', '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('82', '80', '0,1,79,80,', '业务表配置', 20, '/gen/genTable', NULL, NULL, '1', 'gen:genTable:view,gen:genTable:edit,gen:genTableColumn:view,gen:genTableColumn:edit', '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('83', '80', '0,1,79,80,', '代码模板管理', 90, '/gen/genTemplate', NULL, NULL, '1', 'gen:genTemplate:view,gen:genTemplate:edit', '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', NULL, '1');
INSERT INTO `menu` VALUES ('84', '67', '0,1,2,67,', '连接池监视', 40, '/../druid', NULL, NULL, '1', NULL, '1', '2013-10-18 08:00:00', '1', '2013-10-18 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('85', '76', '0,1,75,76,', '行政区域', 80, '/../static/map/map-city.html', NULL, NULL, '1', NULL, '1', '2013-10-22 08:00:00', '1', '2013-10-22 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('86', '75', '0,1,75,', '组件演示', 50, NULL, NULL, NULL, '1', NULL, '1', '2013-10-22 08:00:00', '1', '2013-10-22 08:00:00', NULL, '1');
INSERT INTO `menu` VALUES ('87', '86', '0,1,75,86,', '组件演示', 30, '/test/test/form', NULL, NULL, '1', 'test:test:view,test:test:edit', '1', '2013-10-22 08:00:00', '1', '2013-10-22 08:00:00', NULL, '1');
INSERT INTO `menu` VALUES ('87b07bd546084bc8895c00bdae6dd4b5', '8a463f98aa1b48f99dafe189d86d4dfc', '0,1,8a463f98aa1b48f99dafe189d86d4dfc,', '通知公告', 10, '/announcement/viewuserList', '', '', '1', '', '5', '2021-04-20 17:13:30', '5', '2021-04-20 17:13:30', '', '0');
INSERT INTO `menu` VALUES ('88', '62', '0,1,62,', '通知通告', 20, '', '', '', '1', '', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('89', '88', '0,1,62,88,', '我的通告', 30, '/oa/oaNotify/self', '', '', '1', '', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('8a463f98aa1b48f99dafe189d86d4dfc', '1', '0,1,', '学生功能', 130, '', '', '', '1', '', '5', '2021-04-05 16:30:15', '5', '2021-04-05 16:30:15', '', '0');
INSERT INTO `menu` VALUES ('8ba88f183cdc4235b580d7f14a3138dd', '8a463f98aa1b48f99dafe189d86d4dfc', '0,1,8a463f98aa1b48f99dafe189d86d4dfc,', '查看任务书', 60, '/task/view/assignmentBook', '', '', '1', '', '5', '2021-04-22 13:43:23', '5', '2021-04-22 13:43:23', '', '0');
INSERT INTO `menu` VALUES ('8d8fb1707c5844ec900555c25952971c', '27', '0,1,27,', '角色管理', 70, '/role', '', '', '1', '', '5', '2021-04-04 21:42:22', '5', '2021-04-04 21:42:22', '', '0');
INSERT INTO `menu` VALUES ('9', '7', '0,1,2,3,7,', '修改', 40, NULL, NULL, NULL, '0', 'sys:role:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('90', '88', '0,1,62,88,', '通告管理', 50, '/oa/oaNotify', '', '', '1', 'oa:oaNotify:view,oa:oaNotify:edit', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('942a29129b054e769a910f8bcc038a4b', '1', '0,1,', '修改密码', 230, '/information/modifyPassword', '', '', '1', '', '5', '2021-04-19 00:42:04', '5', '2021-04-19 00:42:04', '', '1');
INSERT INTO `menu` VALUES ('9790bfe348bc4b54bb6a5a0c3676cda3', '27', '0,1,27,', '用户管理', 140, '/user', '', '', '1', '', '5', '2021-04-08 13:13:10', '5', '2021-04-08 13:13:10', '', '0');
INSERT INTO `menu` VALUES ('9fb48ec105234264a84cac8e5d7cfec6', '27', '0,1,27,', '公告管理', 220, '/announcement', '', '', '1', '', '5', '2021-04-20 14:03:55', '5', '2021-04-20 14:03:55', '', '0');
INSERT INTO `menu` VALUES ('9fe45d7b392b45b2a1b34709b6e978c4', '1', '0,1,', '公司管理员1', 190, '/menu', '', '', '1', '', '5', '2021-04-09 19:03:55', '5', '2021-04-09 19:03:55', '', '1');
INSERT INTO `menu` VALUES ('a05529efe00c49afbb8e1cc1b7932528', '1', '0,1,', '教学秘书功能', 230, '', '', '', '1', '', '5', '2021-05-01 23:32:08', '5', '2021-05-01 23:32:08', '', '0');
INSERT INTO `menu` VALUES ('a2a8da41340743418dd251f446cbda3f', '1', '0,1,', '教师功能', 170, '', '', '', '1', '', '5', '2021-04-05 23:54:03', '5', '2021-04-05 23:54:03', '', '0');
INSERT INTO `menu` VALUES ('a73fd91e3a7d4447be9e8a4b7df9395d', '27', '0,1,27,', '机构管理', 130, '/office', '', '', '1', '', '5', '2021-04-09 17:44:21', '5', '2021-04-09 17:44:21', '', '1');
INSERT INTO `menu` VALUES ('ad3a13cf82f84afda65bd2d509fb7853', 'a05529efe00c49afbb8e1cc1b7932528', '0,1,a05529efe00c49afbb8e1cc1b7932528,', '菜单管理', 30, '', '', '', '1', '', '5', '2021-05-01 23:31:32', '5', '2021-05-01 23:31:32', '', '1');
INSERT INTO `menu` VALUES ('afab2db430e2457f9cf3a11feaa8b869', '0ca004d6b1bf4bcab9670a5060d82a55', '0,1,79,3c92c17886944d0687e73e286cada573,0ca004d6b1bf4bcab9670a5060d82a55,', '编辑', 60, '', '', '', '0', 'test:testTree:edit', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `menu` VALUES ('b0295fa8f08342878bb5f432aa3d5db2', 'a2a8da41340743418dd251f446cbda3f', '0,1,a2a8da41340743418dd251f446cbda3f,', '通知公告', 210, '/announcement/viewuserList', '', '', '1', '', '5', '2021-04-20 17:13:39', '5', '2021-04-20 17:13:39', '', '1');
INSERT INTO `menu` VALUES ('b1f6d1b86ba24365bae7fd86c5082317', '3c92c17886944d0687e73e286cada573', '0,1,79,3c92c17886944d0687e73e286cada573,', '主子表', 60, '/test/testDataMain', '', '', '1', '', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `menu` VALUES ('b5b1a445171d4672a605100450c806bc', '8a463f98aa1b48f99dafe189d86d4dfc', '0,1,8a463f98aa1b48f99dafe189d86d4dfc,', '查看答辩时间', 71, '/review/task/schedule', '', '', '1', '', '5', '2021-04-27 13:57:08', '5', '2021-04-27 13:57:08', '', '0');
INSERT INTO `menu` VALUES ('b7b6857fdc2f470a92e9627e14a99364', 'a2a8da41340743418dd251f446cbda3f', '0,1,a2a8da41340743418dd251f446cbda3f,', '通知公告', 10, '/announcement/viewuserList', '', '', '1', '', '5', '2021-04-20 17:13:49', '5', '2021-04-20 17:13:49', '', '0');
INSERT INTO `menu` VALUES ('ba8092291b40482db8fe7fc006ea3d76', '3c92c17886944d0687e73e286cada573', '0,1,79,3c92c17886944d0687e73e286cada573,', '单表', 30, '/test/testData', '', '', '1', '', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `menu` VALUES ('bc4a2658460a4a8984d0aa1a87d6db2c', '8a463f98aa1b48f99dafe189d86d4dfc', '0,1,8a463f98aa1b48f99dafe189d86d4dfc,', '学生申报', 60, '/studenttask', '', '', '1', '', '5', '2021-04-14 22:16:49', '5', '2021-04-14 22:16:49', '', '1');
INSERT INTO `menu` VALUES ('bd25abd95d184150bb1234ab41dbd2bf', '1', '0,1,', '系主任功能', 200, '', '', '', '1', '', '5', '2021-04-16 19:26:37', '5', '2021-04-16 19:26:37', '', '0');
INSERT INTO `menu` VALUES ('bd50d223e16b431ab339cecd9d46f940', 'a2a8da41340743418dd251f446cbda3f', '0,1,a2a8da41340743418dd251f446cbda3f,', '选题分析', 20, '/taskanalysis', '', '', '1', '', '5', '2021-04-19 22:53:26', '5', '2021-04-19 22:53:26', '', '0');
INSERT INTO `menu` VALUES ('beb347f5f31d4fa482448b131a35348b', '27', '0,1,27,', '菜单管理', 120, '/menu', '', '', '1', '', '5', '2021-04-03 19:55:29', '5', '2021-04-03 19:55:29', '', '1');
INSERT INTO `menu` VALUES ('bf93516188984de899091ba67a686294', 'a2a8da41340743418dd251f446cbda3f', '0,1,a2a8da41340743418dd251f446cbda3f,', '审核毕业设计论文最终版', 145, '/task/teacher/audit/finalpaper', '', '', '1', '', '5', '2021-04-30 19:01:50', '5', '2021-04-30 19:01:50', '', '0');
INSERT INTO `menu` VALUES ('c00732a31b8d44d6b066cec81d809d9e', '8a463f98aa1b48f99dafe189d86d4dfc', '0,1,8a463f98aa1b48f99dafe189d86d4dfc,', '提交开题报告', 65, '/task/student/submit/thesisproposal', '', '', '1', '', '5', '2021-04-27 21:14:44', '5', '2021-04-27 21:14:44', '', '1');
INSERT INTO `menu` VALUES ('c2e4d9082a0b4386884a0b203afe2c5c', '0ca004d6b1bf4bcab9670a5060d82a55', '0,1,79,3c92c17886944d0687e73e286cada573,0ca004d6b1bf4bcab9670a5060d82a55,', '查看', 30, '', '', '', '0', 'test:testTree:view', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `menu` VALUES ('cade4e57fe474514b13f4a070f42f010', 'a2a8da41340743418dd251f446cbda3f', '0,1,a2a8da41340743418dd251f446cbda3f,', '评阅学生功能', 147, '/task/teacher/set/assessscore', '', '', '1', '', '5', '2021-05-03 23:01:33', '5', '2021-05-03 23:01:33', '', '0');
INSERT INTO `menu` VALUES ('d15ec45a4c5449c3bbd7a61d5f9dd1d2', 'b1f6d1b86ba24365bae7fd86c5082317', '0,1,79,3c92c17886944d0687e73e286cada573,b1f6d1b86ba24365bae7fd86c5082317,', '编辑', 60, '', '', '', '0', 'test:testDataMain:edit', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `menu` VALUES ('d72f6c81f0de429485315b28b5aebebb', 'a2a8da41340743418dd251f446cbda3f', '0,1,a2a8da41340743418dd251f446cbda3f,', '获取相关材料', 144, '/task/get/material', '', '', '1', '', '5', '2021-04-23 11:56:38', '5', '2021-04-23 11:56:38', '', '0');
INSERT INTO `menu` VALUES ('db3f5281ecea4871a7cae2a25cb456b7', 'bd25abd95d184150bb1234ab41dbd2bf', '0,1,bd25abd95d184150bb1234ab41dbd2bf,', '答辩时间安排', 55, '/review/schedule', '', '', '1', '', '5', '2021-04-27 12:50:10', '5', '2021-04-27 12:50:10', '', '0');
INSERT INTO `menu` VALUES ('de1d18b364904fdab26fb5631530d362', 'bd25abd95d184150bb1234ab41dbd2bf', '0,1,bd25abd95d184150bb1234ab41dbd2bf,', '审核双选题目', 30, '/task/audit/doublelist', '', '', '1', '', '5', '2021-04-16 22:19:16', '5', '2021-04-16 22:19:16', '', '0');
INSERT INTO `menu` VALUES ('df7ce823c5b24ff9bada43d992f373e2', 'ba8092291b40482db8fe7fc006ea3d76', '0,1,79,3c92c17886944d0687e73e286cada573,ba8092291b40482db8fe7fc006ea3d76,', '查看', 30, '', '', '', '0', 'test:testData:view', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `menu` VALUES ('e2552cbc45084779b43b23aa4e5fbd51', 'bd25abd95d184150bb1234ab41dbd2bf', '0,1,bd25abd95d184150bb1234ab41dbd2bf,', '通知公告', 10, '/announcement/viewuserList', '', '', '1', '', '5', '2021-04-20 17:14:07', '5', '2021-04-20 17:14:07', '', '0');
INSERT INTO `menu` VALUES ('e26034ffea5d4179b0651a47f52f3e96', 'a2a8da41340743418dd251f446cbda3f', '0,1,a2a8da41340743418dd251f446cbda3f,', '审核学生申报题目', 120, '/task/teacher/audit/studentrelese', '', '', '1', '', '5', '2021-04-18 18:37:20', '5', '2021-04-18 18:37:20', '', '0');
INSERT INTO `menu` VALUES ('e51b0df770a94d8dafa8885f87d64918', '1', '0,1,', '角色管理', 130, '/role', '', '', '1', '', '5', '2021-04-04 21:41:38', '5', '2021-04-04 21:41:38', '', '1');
INSERT INTO `menu` VALUES ('e66807b0ece74c7e84c14153d7d41553', '8a463f98aa1b48f99dafe189d86d4dfc', '0,1,8a463f98aa1b48f99dafe189d86d4dfc,', '修改密码', 110, '/information/modifyPassword', '', '', '1', '', '5', '2021-04-18 23:33:29', '5', '2021-04-18 23:33:29', '', '0');
INSERT INTO `menu` VALUES ('e775565dc071467d85b768312e2f5a70', '27', '0,1,27,', '菜单管理', 150, '/menu', '', '', '1', '', '5', '2021-04-03 20:27:52', '5', '2021-04-03 20:27:52', '', '1');
INSERT INTO `menu` VALUES ('e7b0ff2280a847cf827322b2c562155b', '1', '0,1,', '菜单管理', 190, '/role', '', '', '1', '', '5', '2021-04-09 19:57:00', '5', '2021-04-09 19:57:00', '', '1');
INSERT INTO `menu` VALUES ('edb1d14395184eb4bb292da4fe49397f', 'a05529efe00c49afbb8e1cc1b7932528', '0,1,a05529efe00c49afbb8e1cc1b7932528,', '机构管理', 30, '/office', '', '', '1', '', '5', '2021-05-01 23:32:45', '5', '2021-05-01 23:32:45', '', '0');
INSERT INTO `menu` VALUES ('f37890bf0132428485d6f4898d9d517f', 'bd25abd95d184150bb1234ab41dbd2bf', '0,1,bd25abd95d184150bb1234ab41dbd2bf,', '个人信息维护', 60, '/information', '', '', '1', '', '5', '2021-04-19 00:41:46', '5', '2021-04-19 00:41:46', '', '0');
INSERT INTO `menu` VALUES ('f431edbc78cd438eb836fadead6a34fc', 'a05529efe00c49afbb8e1cc1b7932528', '0,1,a05529efe00c49afbb8e1cc1b7932528,', '用户管理', 90, '/user', '', '', '1', '', '5', '2021-05-01 23:33:24', '5', '2021-05-01 23:33:24', '', '0');
INSERT INTO `menu` VALUES ('f88afe1f25c848c4901986df6fa12701', '8a463f98aa1b48f99dafe189d86d4dfc', '0,1,8a463f98aa1b48f99dafe189d86d4dfc,', '申报任务书', 140, '/task/assignment//bookList', '', '', '1', '', '5', '2021-04-20 21:51:32', '5', '2021-04-20 21:51:32', '', '1');

-- ----------------------------
-- Table structure for office
-- ----------------------------
DROP TABLE IF EXISTS `office`;
CREATE TABLE `office`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '编号',
  `parent_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `sort` decimal(10, 0) NOT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_menu_parent_id`(`parent_id`) USING BTREE,
  INDEX `sys_menu_del_flag`(`del_flag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of office
-- ----------------------------
INSERT INTO `office` VALUES ('1', '0', '0,', '广东石油化工学院', 0, '', '2013-05-27 08:00:00', '', '2013-05-27 08:00:00', '', '0');
INSERT INTO `office` VALUES ('2', '1', '0,1', '计算机学院', 100, '', '2021-04-09 17:56:23', '', '2021-04-09 17:56:28', '', '0');
INSERT INTO `office` VALUES ('3', '1', '0,1', '石油工程学院', 200, '', '2021-04-09 18:00:02', '', '2021-04-09 18:00:05', '', '0');
INSERT INTO `office` VALUES ('4', '1', '0,1', '环境学院', 300, '', '2021-04-09 18:00:26', '', '2021-04-09 18:00:29', '', '0');
INSERT INTO `office` VALUES ('42d5036b3e27430d9fbf7267361fa4f1', '83968cb9c5a94dc197e42b17e511f009', '0,1,83968cb9c5a94dc197e42b17e511f009,', '环艺', 30, '5', '2021-05-01 23:30:38', '5', '2021-05-01 23:30:38', '', '0');
INSERT INTO `office` VALUES ('43f1a367626a4049aca38e1b3d6ba3a3', '1', '0,1,', '外国语学院', 380, '5', '2021-04-14 22:10:39', '5', '2021-04-14 22:10:39', '', '1');
INSERT INTO `office` VALUES ('5f2b5e605bc948b491a910fbece0c35c', 'ae102782f17f455aa25853a767b25c09', '0,1,ae102782f17f455aa25853a767b25c09,', '自动化', 30, '5', '2021-05-01 23:29:58', '5', '2021-05-01 23:29:58', '', '0');
INSERT INTO `office` VALUES ('83968cb9c5a94dc197e42b17e511f009', '1', '0,1,', '建工学院', 400, '5', '2021-05-01 23:30:23', '5', '2021-05-01 23:30:23', '', '0');
INSERT INTO `office` VALUES ('876e21c365b7428e971e2df322d9ec6d', '1', '0,1,', '文法学院', 330, '5', '2021-04-09 19:39:38', '5', '2021-04-09 19:39:38', '', '0');
INSERT INTO `office` VALUES ('8fdd5e3f614b4a2faecb98c112d2859d', '876e21c365b7428e971e2df322d9ec6d', '0,1,876e21c365b7428e971e2df322d9ec6d,', '法学', 60, '5', '2021-04-10 02:58:25', '5', '2021-04-10 02:58:25', '', '0');
INSERT INTO `office` VALUES ('952c0788253f437b92bcbab464a16485', '83968cb9c5a94dc197e42b17e511f009', '0,1,83968cb9c5a94dc197e42b17e511f009,', '环艺', 30, '5', '2021-05-01 23:30:12', '5', '2021-05-01 23:30:12', '', '1');
INSERT INTO `office` VALUES ('a152cd4f82094cb19fda73db74b653fa', '2', '0,12,', '计算机科学与技术', 50, '5', '2021-04-09 19:50:20', '5', '2021-04-09 19:50:20', '', '0');
INSERT INTO `office` VALUES ('ae102782f17f455aa25853a767b25c09', '1', '0,1,', '自动化学院', 370, '5', '2021-04-10 02:58:08', '5', '2021-04-10 02:58:08', '', '0');
INSERT INTO `office` VALUES ('b46b120689004a85b5f65fb1147a2861', '876e21c365b7428e971e2df322d9ec6d', '0,1,876e21c365b7428e971e2df322d9ec6d,', '中文', 60, '5', '2021-04-10 02:57:49', '5', '2021-04-10 02:57:49', '', '1');
INSERT INTO `office` VALUES ('ba365c5d038c4483a2dc3c17569cae7c', '4', '0,14,', '环境工程', 30, '5', '2021-04-09 20:02:06', '5', '2021-04-09 20:02:06', '', '0');
INSERT INTO `office` VALUES ('c0284c5df56d48eebe3a24e1078686da', '2', '0,12,', '物联网', 70, '5', '2021-04-09 19:51:00', '5', '2021-04-09 19:51:00', '', '0');
INSERT INTO `office` VALUES ('e24238487daa41daa0ff84d62af033ef', '2', '0,12,', '网络', 110, '5', '2021-04-09 19:51:09', '5', '2021-04-09 19:51:09', '', '1');
INSERT INTO `office` VALUES ('f41af8efa077441781a9a9875a9bf799', '3', '0,13,', '石油', 30, '5', '2021-04-09 20:02:20', '5', '2021-04-09 20:02:20', '', '0');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '编号',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `enname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '英文名称',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_role_del_flag`(`del_flag`) USING BTREE,
  INDEX `sys_role_enname`(`enname`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('0a76cf3be4774b6994eed3c36fba513f', '公司管理员1', 'hr1', '5', '2021-04-07 13:18:36', '5', '2021-04-07 13:18:36', '1', '1');
INSERT INTO `role` VALUES ('1', '系统管理员', 'dept', '5', '2021-04-15 14:59:43', '5', '2021-04-15 14:59:43', '1', '0');
INSERT INTO `role` VALUES ('2', '公司管理员啊', 'hr', '5', '2021-04-07 23:28:27', '5', '2021-04-07 23:28:27', '1', '1');
INSERT INTO `role` VALUES ('238f83634b69468a9641637c430499fa', '教学秘书', 'secretary', '5', '2021-05-01 23:36:03', '5', '2021-05-01 23:36:03', '', '0');
INSERT INTO `role` VALUES ('289c40f1c916425c83426245adef124f', '一级管理员', 'One', '1', '2021-03-26 16:18:37', '1', '2021-03-26 16:24:37', '拥有所有权限', '1');
INSERT INTO `role` VALUES ('29da68c34c8747fc83640485639d63dd', '学生', 'student', '5', '2021-04-29 18:26:27', '5', '2021-04-29 18:26:27', '', '0');
INSERT INTO `role` VALUES ('2a44f1d218b545bb965af76c2fdb930f', '公司管理员5', 'hr5', '5', '2021-04-07 18:59:08', '5', '2021-04-07 18:59:08', '1', '1');
INSERT INTO `role` VALUES ('3', '本公司管理员', 'a', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `role` VALUES ('33be4afec6ae4f8eaececd0667aa5a8c', '公司管理员7', 'hr7', '5', '2021-04-07 19:04:46', '5', '2021-04-07 19:04:46', '1', '1');
INSERT INTO `role` VALUES ('3d5a6be2545e45c4b9d7a40eca94e400', '三级管理员', 'Three', '1', '2021-03-26 16:19:52', '1', '2021-03-26 16:26:15', '', '1');
INSERT INTO `role` VALUES ('4', '部门管理员', 'b', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `role` VALUES ('44ddaccf3caa4260adf3057296928188', '文法学院管理员2', 'hr23', '5', '2021-04-14 00:03:36', '5', '2021-04-14 00:03:36', '1', '1');
INSERT INTO `role` VALUES ('5', '本部门管理员', 'c', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `role` VALUES ('5d4f7b2f7f76475bb47794026d685d3a', '公司管理员2', 'hr2', '5', '2021-04-07 13:42:35', '5', '2021-04-07 13:42:35', '12', '1');
INSERT INTO `role` VALUES ('6', '普通用户', 'd', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `role` VALUES ('6c9e9188fbf04d6dab7cb8c135c7cc01', '公司管理员', 'hr1', '5', '2021-04-14 23:15:40', '5', '2021-04-14 23:15:40', '1', '1');
INSERT INTO `role` VALUES ('7', '济南市管理员', 'e', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `role` VALUES ('8', '部门管理员', 'management', '1', '2021-04-06 20:41:04', '1', '2021-04-06 20:40:57', NULL, '1');
INSERT INTO `role` VALUES ('89317d974ca64587aefc6b3ed5b7f004', '普通教师', 'teacher', '5', '2021-05-03 23:03:24', '5', '2021-05-03 23:03:24', '1', '0');
INSERT INTO `role` VALUES ('94b4aa09f2f34fa5927616cdca188d3f', '教学秘书', 'secretary', '5', '2021-05-01 23:35:16', '5', '2021-05-01 23:35:16', '', '1');
INSERT INTO `role` VALUES ('a4e57c2300f74394aae8ff177fc264a9', '公司管理员3', 'hr3', '5', '2021-04-07 14:48:58', '5', '2021-04-07 14:48:58', '1', '1');
INSERT INTO `role` VALUES ('c9908fcfdc174411befa3bfb38af8bcc', '二级管理员', 'a', '1', '2021-03-26 16:19:02', '1', '2021-03-26 16:25:55', '', '1');
INSERT INTO `role` VALUES ('cbbf05b97aba497dbcb9569e4fb22318', '公司管理员6', 'hr6', '5', '2021-04-07 19:02:04', '5', '2021-04-07 19:02:04', '1', '1');
INSERT INTO `role` VALUES ('d7b3b776a37a4cc4986da4409a173d98', '系主任', 'director', '5', '2021-05-03 16:24:14', '5', '2021-05-03 16:24:14', '', '0');
INSERT INTO `role` VALUES ('e0261c935b914d88be54731bb37a508a', '文法学院管理员', 'hr', '5', '2021-04-14 23:15:52', '5', '2021-04-14 23:15:52', '1', '1');
INSERT INTO `role` VALUES ('f2daff60566c4457b9a19a73d9a06bbc', '公司管理员4', 'hr4', '5', '2021-04-07 17:22:30', '5', '2021-04-07 17:22:30', '1', '1');

-- ----------------------------
-- Table structure for role_menu
-- ----------------------------
DROP TABLE IF EXISTS `role_menu`;
CREATE TABLE `role_menu`  (
  `role_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色编号',
  `menu_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单编号',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色-菜单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_menu
-- ----------------------------
INSERT INTO `role_menu` VALUES ('1', '27');
INSERT INTO `role_menu` VALUES ('1', '28');
INSERT INTO `role_menu` VALUES ('1', '356072e77a8a46f9a917d9d0a9005764');
INSERT INTO `role_menu` VALUES ('1', '55aa6ead61554b1184d470912e5372ee');
INSERT INTO `role_menu` VALUES ('1', '620227a0eac6455ead5e4254c301ed64');
INSERT INTO `role_menu` VALUES ('1', '8a463f98aa1b48f99dafe189d86d4dfc');
INSERT INTO `role_menu` VALUES ('1', '8d8fb1707c5844ec900555c25952971c');
INSERT INTO `role_menu` VALUES ('1', '9790bfe348bc4b54bb6a5a0c3676cda3');
INSERT INTO `role_menu` VALUES ('1', 'a2a8da41340743418dd251f446cbda3f');
INSERT INTO `role_menu` VALUES ('2', '27');
INSERT INTO `role_menu` VALUES ('2', '28');
INSERT INTO `role_menu` VALUES ('238f83634b69468a9641637c430499fa', '1bb1b49dd6994e77b3a2444e42c902cf');
INSERT INTO `role_menu` VALUES ('238f83634b69468a9641637c430499fa', '6e8240b2a60d411a8076e2104e80bca0');
INSERT INTO `role_menu` VALUES ('238f83634b69468a9641637c430499fa', '73829e47cc1f486893c11223c2048862');
INSERT INTO `role_menu` VALUES ('238f83634b69468a9641637c430499fa', 'a05529efe00c49afbb8e1cc1b7932528');
INSERT INTO `role_menu` VALUES ('238f83634b69468a9641637c430499fa', 'edb1d14395184eb4bb292da4fe49397f');
INSERT INTO `role_menu` VALUES ('238f83634b69468a9641637c430499fa', 'f431edbc78cd438eb836fadead6a34fc');
INSERT INTO `role_menu` VALUES ('29da68c34c8747fc83640485639d63dd', '155e0e0edb804beeba58c029a77883a8');
INSERT INTO `role_menu` VALUES ('29da68c34c8747fc83640485639d63dd', '18f35364dd0243f18f2b3db0b83158ab');
INSERT INTO `role_menu` VALUES ('29da68c34c8747fc83640485639d63dd', '36df55d4c0244ce587672a58a5e4e5ef');
INSERT INTO `role_menu` VALUES ('29da68c34c8747fc83640485639d63dd', '39fc36ffbcff4ba58bfc91f1ed79fc67');
INSERT INTO `role_menu` VALUES ('29da68c34c8747fc83640485639d63dd', '3d1b39d686eb49c89d50bc6b20db39dc');
INSERT INTO `role_menu` VALUES ('29da68c34c8747fc83640485639d63dd', '620227a0eac6455ead5e4254c301ed64');
INSERT INTO `role_menu` VALUES ('29da68c34c8747fc83640485639d63dd', '79aa51192b4c49f9bee23f8ec47fea9e');
INSERT INTO `role_menu` VALUES ('29da68c34c8747fc83640485639d63dd', '87b07bd546084bc8895c00bdae6dd4b5');
INSERT INTO `role_menu` VALUES ('29da68c34c8747fc83640485639d63dd', '8a463f98aa1b48f99dafe189d86d4dfc');
INSERT INTO `role_menu` VALUES ('29da68c34c8747fc83640485639d63dd', '8ba88f183cdc4235b580d7f14a3138dd');
INSERT INTO `role_menu` VALUES ('29da68c34c8747fc83640485639d63dd', 'b5b1a445171d4672a605100450c806bc');
INSERT INTO `role_menu` VALUES ('29da68c34c8747fc83640485639d63dd', 'e66807b0ece74c7e84c14153d7d41553');
INSERT INTO `role_menu` VALUES ('2a44f1d218b545bb965af76c2fdb930f', '27');
INSERT INTO `role_menu` VALUES ('2a44f1d218b545bb965af76c2fdb930f', '28');
INSERT INTO `role_menu` VALUES ('2a44f1d218b545bb965af76c2fdb930f', '8d8fb1707c5844ec900555c25952971c');
INSERT INTO `role_menu` VALUES ('33be4afec6ae4f8eaececd0667aa5a8c', '27');
INSERT INTO `role_menu` VALUES ('33be4afec6ae4f8eaececd0667aa5a8c', '28');
INSERT INTO `role_menu` VALUES ('33be4afec6ae4f8eaececd0667aa5a8c', '8d8fb1707c5844ec900555c25952971c');
INSERT INTO `role_menu` VALUES ('44ddaccf3caa4260adf3057296928188', '27');
INSERT INTO `role_menu` VALUES ('44ddaccf3caa4260adf3057296928188', '28');
INSERT INTO `role_menu` VALUES ('44ddaccf3caa4260adf3057296928188', '356072e77a8a46f9a917d9d0a9005764');
INSERT INTO `role_menu` VALUES ('44ddaccf3caa4260adf3057296928188', '8d8fb1707c5844ec900555c25952971c');
INSERT INTO `role_menu` VALUES ('44ddaccf3caa4260adf3057296928188', '9790bfe348bc4b54bb6a5a0c3676cda3');
INSERT INTO `role_menu` VALUES ('5d4f7b2f7f76475bb47794026d685d3a', '27');
INSERT INTO `role_menu` VALUES ('5d4f7b2f7f76475bb47794026d685d3a', '28');
INSERT INTO `role_menu` VALUES ('5d4f7b2f7f76475bb47794026d685d3a', '55aa6ead61554b1184d470912e5372ee');
INSERT INTO `role_menu` VALUES ('5d4f7b2f7f76475bb47794026d685d3a', '620227a0eac6455ead5e4254c301ed64');
INSERT INTO `role_menu` VALUES ('5d4f7b2f7f76475bb47794026d685d3a', '8a463f98aa1b48f99dafe189d86d4dfc');
INSERT INTO `role_menu` VALUES ('5d4f7b2f7f76475bb47794026d685d3a', '8d8fb1707c5844ec900555c25952971c');
INSERT INTO `role_menu` VALUES ('5d4f7b2f7f76475bb47794026d685d3a', 'a2a8da41340743418dd251f446cbda3f');
INSERT INTO `role_menu` VALUES ('6c9e9188fbf04d6dab7cb8c135c7cc01', '27');
INSERT INTO `role_menu` VALUES ('6c9e9188fbf04d6dab7cb8c135c7cc01', '356072e77a8a46f9a917d9d0a9005764');
INSERT INTO `role_menu` VALUES ('6c9e9188fbf04d6dab7cb8c135c7cc01', '8d8fb1707c5844ec900555c25952971c');
INSERT INTO `role_menu` VALUES ('89317d974ca64587aefc6b3ed5b7f004', '2f6889163a884d10af26c2e3556be1b7');
INSERT INTO `role_menu` VALUES ('89317d974ca64587aefc6b3ed5b7f004', '4bde3d5a4ea24738a0733bc02b5a581a');
INSERT INTO `role_menu` VALUES ('89317d974ca64587aefc6b3ed5b7f004', '529206d390ee4fd7a76c4fc948ffcb67');
INSERT INTO `role_menu` VALUES ('89317d974ca64587aefc6b3ed5b7f004', '55aa6ead61554b1184d470912e5372ee');
INSERT INTO `role_menu` VALUES ('89317d974ca64587aefc6b3ed5b7f004', '5b5b504a3a9044e0bb12364acef62342');
INSERT INTO `role_menu` VALUES ('89317d974ca64587aefc6b3ed5b7f004', '72970b960e424d36b454057fe3c9dac7');
INSERT INTO `role_menu` VALUES ('89317d974ca64587aefc6b3ed5b7f004', '73b15b3cda2a48b58bdebbda7e27fb10');
INSERT INTO `role_menu` VALUES ('89317d974ca64587aefc6b3ed5b7f004', '7b187bed88a6494cb48a90a2b976873f');
INSERT INTO `role_menu` VALUES ('89317d974ca64587aefc6b3ed5b7f004', 'a2a8da41340743418dd251f446cbda3f');
INSERT INTO `role_menu` VALUES ('89317d974ca64587aefc6b3ed5b7f004', 'b7b6857fdc2f470a92e9627e14a99364');
INSERT INTO `role_menu` VALUES ('89317d974ca64587aefc6b3ed5b7f004', 'bd50d223e16b431ab339cecd9d46f940');
INSERT INTO `role_menu` VALUES ('89317d974ca64587aefc6b3ed5b7f004', 'bf93516188984de899091ba67a686294');
INSERT INTO `role_menu` VALUES ('89317d974ca64587aefc6b3ed5b7f004', 'cade4e57fe474514b13f4a070f42f010');
INSERT INTO `role_menu` VALUES ('89317d974ca64587aefc6b3ed5b7f004', 'd72f6c81f0de429485315b28b5aebebb');
INSERT INTO `role_menu` VALUES ('89317d974ca64587aefc6b3ed5b7f004', 'e26034ffea5d4179b0651a47f52f3e96');
INSERT INTO `role_menu` VALUES ('94b4aa09f2f34fa5927616cdca188d3f', '1bb1b49dd6994e77b3a2444e42c902cf');
INSERT INTO `role_menu` VALUES ('94b4aa09f2f34fa5927616cdca188d3f', '6e8240b2a60d411a8076e2104e80bca0');
INSERT INTO `role_menu` VALUES ('94b4aa09f2f34fa5927616cdca188d3f', '73829e47cc1f486893c11223c2048862');
INSERT INTO `role_menu` VALUES ('94b4aa09f2f34fa5927616cdca188d3f', 'a05529efe00c49afbb8e1cc1b7932528');
INSERT INTO `role_menu` VALUES ('94b4aa09f2f34fa5927616cdca188d3f', 'edb1d14395184eb4bb292da4fe49397f');
INSERT INTO `role_menu` VALUES ('94b4aa09f2f34fa5927616cdca188d3f', 'f431edbc78cd438eb836fadead6a34fc');
INSERT INTO `role_menu` VALUES ('a4e57c2300f74394aae8ff177fc264a9', '27');
INSERT INTO `role_menu` VALUES ('a4e57c2300f74394aae8ff177fc264a9', '28');
INSERT INTO `role_menu` VALUES ('cbbf05b97aba497dbcb9569e4fb22318', '27');
INSERT INTO `role_menu` VALUES ('cbbf05b97aba497dbcb9569e4fb22318', '8d8fb1707c5844ec900555c25952971c');
INSERT INTO `role_menu` VALUES ('d7b3b776a37a4cc4986da4409a173d98', '2cfc16329df745eba6c5970443a2bb05');
INSERT INTO `role_menu` VALUES ('d7b3b776a37a4cc4986da4409a173d98', '38cbbfe3ceb0404b98959368c0274258');
INSERT INTO `role_menu` VALUES ('d7b3b776a37a4cc4986da4409a173d98', '47c8e642ab294a419e13ba173dca5af0');
INSERT INTO `role_menu` VALUES ('d7b3b776a37a4cc4986da4409a173d98', '54acd5255ac54c2da348fba5208104f7');
INSERT INTO `role_menu` VALUES ('d7b3b776a37a4cc4986da4409a173d98', '7d9d0fc5e2204a399c37344cf89e94da');
INSERT INTO `role_menu` VALUES ('d7b3b776a37a4cc4986da4409a173d98', 'bd25abd95d184150bb1234ab41dbd2bf');
INSERT INTO `role_menu` VALUES ('d7b3b776a37a4cc4986da4409a173d98', 'db3f5281ecea4871a7cae2a25cb456b7');
INSERT INTO `role_menu` VALUES ('d7b3b776a37a4cc4986da4409a173d98', 'de1d18b364904fdab26fb5631530d362');
INSERT INTO `role_menu` VALUES ('d7b3b776a37a4cc4986da4409a173d98', 'e2552cbc45084779b43b23aa4e5fbd51');
INSERT INTO `role_menu` VALUES ('d7b3b776a37a4cc4986da4409a173d98', 'f37890bf0132428485d6f4898d9d517f');
INSERT INTO `role_menu` VALUES ('e0261c935b914d88be54731bb37a508a', '28');
INSERT INTO `role_menu` VALUES ('e0261c935b914d88be54731bb37a508a', '8d8fb1707c5844ec900555c25952971c');
INSERT INTO `role_menu` VALUES ('e0261c935b914d88be54731bb37a508a', '9790bfe348bc4b54bb6a5a0c3676cda3');
INSERT INTO `role_menu` VALUES ('f2daff60566c4457b9a19a73d9a06bbc', '27');
INSERT INTO `role_menu` VALUES ('f2daff60566c4457b9a19a73d9a06bbc', '28');
INSERT INTO `role_menu` VALUES ('f2daff60566c4457b9a19a73d9a06bbc', '8d8fb1707c5844ec900555c25952971c');

-- ----------------------------
-- Table structure for schedule
-- ----------------------------
DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule`  (
  `major_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '专业id',
  `start_time` datetime(0) NULL DEFAULT NULL COMMENT '答辩开始时间',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '答辩结束时间'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of schedule
-- ----------------------------

-- ----------------------------
-- Table structure for task
-- ----------------------------
DROP TABLE IF EXISTS `task`;
CREATE TABLE `task`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '编号',
  `topic` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '课题题目',
  `college_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '课题所属学院',
  `major_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '课题所属专业',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '题目类型\r\n1应用研究\r\n2其他 \r\n3软件设计 \r\n4艺术设计\r\n5工程设计 \r\n6实验研究\r\n7理论研究\r\n           ',
  `pattern` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '选题模式\r\n1.双选\r\n2.指定\r\n3.学生申报',
  `source` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '题目来源\r\n1学生社会调查\r\n2学生实验、实习、工程实践\r\n3教师社会调查\r\n4其他\r\n5教师实验、实习、工程实践\r\n6教师科研题',
  `canBeChosencollegeid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学生可选专业',
  `research_direction` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '研究方向',
  `brief_introduction` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '简介',
  `basic_requirements` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '基本要求',
  `reference_data` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '参考资料',
  `teacher_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '老师id',
  `audit_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '审核状态\r\n1.通过\r\n2.不通过\r\n3.未审核',
  `grade` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发题年份',
  `assignmentbook_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '任务书id',
  `material_address` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '材料文件地址',
  `material_name` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '材料文件名',
  `final_paperid` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '论文最终版id',
  `score` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '成绩',
  `assess_teacher` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '论文最终版id',
  `assess_score` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '论文最终版id',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of task
-- ----------------------------

-- ----------------------------
-- Table structure for task_assignment_audit_status
-- ----------------------------
DROP TABLE IF EXISTS `task_assignment_audit_status`;
CREATE TABLE `task_assignment_audit_status`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '编号',
  `task_assignment_audit_status` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务书审核状态：\r\n1.等待审核\r\n2.审核通过\r\n3.审核不通过',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of task_assignment_audit_status
-- ----------------------------
INSERT INTO `task_assignment_audit_status` VALUES ('1', '等待审核');
INSERT INTO `task_assignment_audit_status` VALUES ('2', '审核通过');
INSERT INTO `task_assignment_audit_status` VALUES ('3', '审核不通过');

-- ----------------------------
-- Table structure for task_audit_status
-- ----------------------------
DROP TABLE IF EXISTS `task_audit_status`;
CREATE TABLE `task_audit_status`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '编号',
  `Audit_Status` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of task_audit_status
-- ----------------------------
INSERT INTO `task_audit_status` VALUES ('1', '通过');
INSERT INTO `task_audit_status` VALUES ('2', '不通过');
INSERT INTO `task_audit_status` VALUES ('3', '未审核');

-- ----------------------------
-- Table structure for task_canbechosenmajor
-- ----------------------------
DROP TABLE IF EXISTS `task_canbechosenmajor`;
CREATE TABLE `task_canbechosenmajor`  (
  `task_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '课题id',
  `CanBeChosenMajor` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '学生可选专业',
  PRIMARY KEY (`task_id`, `CanBeChosenMajor`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of task_canbechosenmajor
-- ----------------------------

-- ----------------------------
-- Table structure for task_canbechosentype
-- ----------------------------
DROP TABLE IF EXISTS `task_canbechosentype`;
CREATE TABLE `task_canbechosentype`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '编号',
  `canbechosentype` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '可选专业类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of task_canbechosentype
-- ----------------------------
INSERT INTO `task_canbechosentype` VALUES ('1', '全校');
INSERT INTO `task_canbechosentype` VALUES ('2', '部分专业');
INSERT INTO `task_canbechosentype` VALUES ('3', '所属专业');

-- ----------------------------
-- Table structure for task_chosen
-- ----------------------------
DROP TABLE IF EXISTS `task_chosen`;
CREATE TABLE `task_chosen`  (
  `task_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '课题id',
  `chosen_student` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '选择的学生',
  `teacher_choose_status` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '老师选题情况：\r\n1.等待确认\r\n2.确认通过\r\n3.确认不通过'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of task_chosen
-- ----------------------------

-- ----------------------------
-- Table structure for task_pattern
-- ----------------------------
DROP TABLE IF EXISTS `task_pattern`;
CREATE TABLE `task_pattern`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '编号',
  `pattern` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '选题模式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of task_pattern
-- ----------------------------
INSERT INTO `task_pattern` VALUES ('1', '师生双选');
INSERT INTO `task_pattern` VALUES ('2', '教师指定题目');
INSERT INTO `task_pattern` VALUES ('3', '学生申报');

-- ----------------------------
-- Table structure for task_source
-- ----------------------------
DROP TABLE IF EXISTS `task_source`;
CREATE TABLE `task_source`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '编号',
  `source` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '题目来源',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of task_source
-- ----------------------------
INSERT INTO `task_source` VALUES ('1', '学生社会调查');
INSERT INTO `task_source` VALUES ('2', '学生实验、实习、工程实践');
INSERT INTO `task_source` VALUES ('3', '教师社会调查');
INSERT INTO `task_source` VALUES ('4', '其他');
INSERT INTO `task_source` VALUES ('5', '教师实验、实习、工程实践');
INSERT INTO `task_source` VALUES ('6', '教师科研题');

-- ----------------------------
-- Table structure for task_teacher_choose_status
-- ----------------------------
DROP TABLE IF EXISTS `task_teacher_choose_status`;
CREATE TABLE `task_teacher_choose_status`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '编号',
  `teacher_choose_status` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '教师双选审核状态：1.等待确认\r\n2.确认通过\r\n3.确认不通过',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of task_teacher_choose_status
-- ----------------------------
INSERT INTO `task_teacher_choose_status` VALUES ('1', '等待确认');
INSERT INTO `task_teacher_choose_status` VALUES ('2', '确认通过');
INSERT INTO `task_teacher_choose_status` VALUES ('3', '确认不通过');

-- ----------------------------
-- Table structure for task_type
-- ----------------------------
DROP TABLE IF EXISTS `task_type`;
CREATE TABLE `task_type`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '编号',
  `type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '题目类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of task_type
-- ----------------------------
INSERT INTO `task_type` VALUES ('1', '应用研究');
INSERT INTO `task_type` VALUES ('2', '其他');
INSERT INTO `task_type` VALUES ('3', '软件设计');
INSERT INTO `task_type` VALUES ('4', '艺术设计');
INSERT INTO `task_type` VALUES ('5', '工程设计');
INSERT INTO `task_type` VALUES ('6', '实验研究');
INSERT INTO `task_type` VALUES ('7', '理论研究');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户姓名',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户密码',
  `identity_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '身份号',
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '性别',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '邮箱',
  `identity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '身份',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('02ebea115c1746b2bb4dbbcc76db5654', '开宇航', '17034480106', '302133', '17034480106', '1', '1150878978@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('0f11dbc4ad314b278bf3da3cd4487b8d', '陆航其', '17034480104', '302133', '17034480104', '1', '1150878978@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('1', '吴家剑', 'superadmin', 'superadmin', '44', '', '', 'SUPERADMIN', '0');
INSERT INTO `user` VALUES ('39c2a456d62f4c3e87afc863ae6decda', '吴家剑', '17034480100', '302133', '17034480100', '1', '1150878978@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('4263769fe9d64c75b703bdb88d80f714', '刘涵雨', '17034480102', '302133', '17034480102', '1', '1150878978@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('4f892b64c44a485abea1f88c943b8c9e', '归宇涵', '17034480103', '302133', '17034480103', '1', '1150878978@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('8858d9cb62a644d2ae3e9055faa6f7c9', '吴昱含', '17034480101', '302133', '17034480101', '1', '1150878978@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('ba9bbe8ddee444ac884f41c08a6ae8fb', '其海米', '17034480105', '302133', '17034480105', '1', '1150878978@qq.com', 'USER', '0');

-- ----------------------------
-- Table structure for user_identitys
-- ----------------------------
DROP TABLE IF EXISTS `user_identitys`;
CREATE TABLE `user_identitys`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '编号',
  `identitys` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '身份id,用于看是否需要显示专业\r\n1.学生\r\n2.普通教师\r\n3.系主任',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_identitys
-- ----------------------------
INSERT INTO `user_identitys` VALUES ('1', '学生');
INSERT INTO `user_identitys` VALUES ('2', '普通教师');
INSERT INTO `user_identitys` VALUES ('3', '系主任');

-- ----------------------------
-- Table structure for user_info_all
-- ----------------------------
DROP TABLE IF EXISTS `user_info_all`;
CREATE TABLE `user_info_all`  (
  `uia_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户角色id',
  `user_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户id',
  `identitys_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '身份id,用于看是否需要显示专业\r\n1.学生\r\n2.普通教师\r\n3.系主任',
  `grade` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '年级id',
  `college_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '学院id,实际上是机构id',
  `major_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '专业id,实际上是机构id',
  `role_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色id',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`uia_id`, `user_id`, `identitys_id`, `grade`, `college_id`, `role_id`, `del_flag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info_all
-- ----------------------------
INSERT INTO `user_info_all` VALUES ('1817ab99f3234ccca6e972d39ee89519', '4f892b64c44a485abea1f88c943b8c9e', '1', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', '29da68c34c8747fc83640485639d63dd', '0');
INSERT INTO `user_info_all` VALUES ('2c8645b173734ebb84b0bb75851e78d6', '39c2a456d62f4c3e87afc863ae6decda', '1', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', '29da68c34c8747fc83640485639d63dd', '0');
INSERT INTO `user_info_all` VALUES ('3605a2381db44395801d08275e2a3f83', 'ba9bbe8ddee444ac884f41c08a6ae8fb', '1', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', '29da68c34c8747fc83640485639d63dd', '0');
INSERT INTO `user_info_all` VALUES ('bfd01fece8bd441ab8a85252a7ef6dad', '8858d9cb62a644d2ae3e9055faa6f7c9', '1', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', '29da68c34c8747fc83640485639d63dd', '0');
INSERT INTO `user_info_all` VALUES ('d1ca0a7e99994de79b993002009e519f', '0f11dbc4ad314b278bf3da3cd4487b8d', '1', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', '29da68c34c8747fc83640485639d63dd', '0');
INSERT INTO `user_info_all` VALUES ('dac1399b04864f50bc8c5533215a9fc8', '4263769fe9d64c75b703bdb88d80f714', '1', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', '29da68c34c8747fc83640485639d63dd', '0');
INSERT INTO `user_info_all` VALUES ('fdd49a7b56b44cbab8dd956f074fe53b', '02ebea115c1746b2bb4dbbcc76db5654', '1', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', '29da68c34c8747fc83640485639d63dd', '0');

SET FOREIGN_KEY_CHECKS = 1;
