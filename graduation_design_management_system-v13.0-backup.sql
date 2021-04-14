/*
 Navicat Premium Data Transfer

 Source Server         : boot_crm
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : localhost:3306
 Source Schema         : graduation_design_management_system

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 14/04/2021 21:54:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `lId` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '日志ID',
  `lAction` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '操作行为',
  `lCreator` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '操作人',
  `IUrl` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '操作的url',
  `lRemark` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '类型',
  `lCreatetime` datetime(6) NOT NULL COMMENT '操作时间',
  PRIMARY KEY (`lId`) USING BTREE,
  INDEX `sys_menu_parent_id`(`lAction`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('00298065390a4345aa4cff2f7283b1df', '查看', '', '/office', '机构', '2021-04-14 19:21:40.940000');
INSERT INTO `log` VALUES ('482407028f43430d8a1301c71d2b5f61', '查看', '5', '/office', '机构', '2021-04-14 20:18:26.555000');
INSERT INTO `log` VALUES ('48bb15e5e64540ec90fcf2c3e250d536', '查看', '', '/office', '机构', '2021-04-14 19:21:45.773000');
INSERT INTO `log` VALUES ('629a178b5edf4ed397eb715979fff474', '查看', '', '/office', '机构', '2021-04-14 19:31:37.802000');
INSERT INTO `log` VALUES ('6352f6c37d42425a98803498dc781622', '查看', '', '/menu', '菜单', '2021-04-14 17:53:49.627000');
INSERT INTO `log` VALUES ('69122c5311b245be8bc15db420724af3', '查看', '', '/office', '机构', '2021-04-14 19:31:45.029000');
INSERT INTO `log` VALUES ('6977646e73314716a6915b0cb8c6f088', '查看', '5', '/office', '机构', '2021-04-14 20:20:19.055000');
INSERT INTO `log` VALUES ('6ebb3314ce8f49659643c0a8edb976dd', '查看', '吴家剑', '/menu', '菜单', '2021-04-14 17:55:06.820000');
INSERT INTO `log` VALUES ('8a0cc962dd37442a87ebb08d1e661f19', '查看', '', '/office', '机构', '2021-04-14 19:19:46.669000');
INSERT INTO `log` VALUES ('92736c154ea84e5d9df18be06144bccd', '查看', '5', '/office', '机构', '2021-04-14 19:38:51.913000');
INSERT INTO `log` VALUES ('a448352c28d649c6a6753adf6c6d1f04', '查看', '', '/office', '机构', '2021-04-14 19:30:09.252000');
INSERT INTO `log` VALUES ('b8c3285e222448c8a4ff80a2ee7cc15b', '升级', '', '/office/updateSort', '机构排序', '2021-04-14 19:21:45.699000');
INSERT INTO `log` VALUES ('dedace9b16734290acc9ccdb11b7b72b', '查看', '', '/office', '机构', '2021-04-14 19:16:57.800000');
INSERT INTO `log` VALUES ('e0115bf8bcb142a5be84b4773f83c818', '查看', '吴家剑', '/menu', '菜单', '2021-04-14 18:41:45.861000');
INSERT INTO `log` VALUES ('f87d2210d34d40d7b0b442b42897dbf8', '升级', '', '/office/updateSort', '机构排序', '2021-04-14 19:31:44.967000');

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
INSERT INTO `menu` VALUES ('0b2ebd4d639e4c2b83c2dd0764522f24', 'ba8092291b40482db8fe7fc006ea3d76', '0,1,79,3c92c17886944d0687e73e286cada573,ba8092291b40482db8fe7fc006ea3d76,', '编辑', 60, '', '', '', '0', 'test:testData:edit', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `menu` VALUES ('0ca004d6b1bf4bcab9670a5060d82a55', '3c92c17886944d0687e73e286cada573', '0,1,79,3c92c17886944d0687e73e286cada573,', '树结构', 110, '/test/testTree', '', '', '1', '', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `menu` VALUES ('1', '0', '0,', '功能菜单', 0, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('10', '3', '0,1,2,3,', '字典管理', 60, '/sys/dict/', NULL, 'th-list', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('11', '10', '0,1,2,3,10,', '查看', 30, NULL, NULL, NULL, '0', 'sys:dict:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('12', '10', '0,1,2,3,10,', '修改', 40, NULL, NULL, NULL, '0', 'sys:dict:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('13', '2', '0,1,2,', '机构用户', 970, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('14', '13', '0,1,2,13,', '区域管理', 50, '/sys/area/', NULL, 'th', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('15', '14', '0,1,2,13,14,', '查看', 30, NULL, NULL, NULL, '0', 'sys:area:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('16', '14', '0,1,2,13,14,', '修改', 40, NULL, NULL, NULL, '0', 'sys:area:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('17', '13', '0,1,2,13,', '机构管理', 40, '/sys/office/', NULL, 'th-large', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('18', '17', '0,1,2,13,17,', '查看', 30, NULL, NULL, NULL, '0', 'sys:office:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('18543ed1fca3438399cdd318cd95e476', '27', '0,1,27,', '用户管理', 100, '/user', '', '', '1', '', '5', '2021-04-05 10:36:33', '5', '2021-04-05 10:36:33', '', '1');
INSERT INTO `menu` VALUES ('19', '17', '0,1,2,13,17,', '修改', 40, NULL, NULL, NULL, '0', 'sys:office:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('2', '1', '0,1,', '系统设置', 900, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `menu` VALUES ('20', '13', '0,1,2,13,', '用户管理', 30, '/sys/user/index', NULL, 'user', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('21', '20', '0,1,2,13,20,', '查看', 30, NULL, NULL, NULL, '0', 'sys:user:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('22', '20', '0,1,2,13,20,', '修改', 40, NULL, NULL, NULL, '0', 'sys:user:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('23', '2', '0,1,2,', '关于帮助', 990, NULL, NULL, NULL, '0', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('24', '23', '0,1,2,23', '官方首页', 30, 'http://jeesite.com', '_blank', NULL, '0', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('25', '23', '0,1,2,23', '项目支持', 50, 'http://jeesite.com/donation.html', '_blank', NULL, '0', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `menu` VALUES ('26', '23', '0,1,2,23', '论坛交流', 80, 'http://bbs.jeesite.com', '_blank', NULL, '0', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `menu` VALUES ('27', '1', '0,1,', '我的面板', 100, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('28', '27', '0,1,27,', '菜单管理', 40, '/menu', '', '', '1', '', '5', '2021-04-03 20:24:21', '5', '2021-04-03 20:24:21', '', '0');
INSERT INTO `menu` VALUES ('29', '28', '0,1,27,28,', '个人信息', 30, '/sys/user/info', NULL, 'user', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `menu` VALUES ('2e18dd03394d461c88e513b6254ac492', '1', '0,1,', '机构管理', 190, '/office', '', '', '1', '', '5', '2021-04-09 19:09:12', '5', '2021-04-09 19:09:12', '', '1');
INSERT INTO `menu` VALUES ('3', '2', '0,1,2,', '系统设置', 980, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('30', '28', '0,1,27,28,', '修改密码', 40, '/sys/user/modifyPwd', NULL, 'lock', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `menu` VALUES ('31', '1', '0,1,', '内容管理', 500, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `menu` VALUES ('32', '31', '0,1,31,', '栏目设置', 990, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('33', '32', '0,1,31,32', '栏目管理', 30, '/cms/category/', NULL, 'align-justify', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('34', '33', '0,1,31,32,33,', '查看', 30, NULL, NULL, NULL, '0', 'cms:category:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('35', '33', '0,1,31,32,33,', '修改', 40, NULL, NULL, NULL, '0', 'cms:category:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('356072e77a8a46f9a917d9d0a9005764', '27', '0,1,27,', '机构管理', 130, '/office', '', '', '1', '', '5', '2021-04-09 19:09:38', '5', '2021-04-09 19:09:38', '', '0');
INSERT INTO `menu` VALUES ('36', '32', '0,1,31,32', '站点设置', 40, '/cms/site/', NULL, 'certificate', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('37', '36', '0,1,31,32,36,', '查看', 30, NULL, NULL, NULL, '0', 'cms:site:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('38', '36', '0,1,31,32,36,', '修改', 40, NULL, NULL, NULL, '0', 'cms:site:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('39', '32', '0,1,31,32', '切换站点', 50, '/cms/site/select', NULL, 'retweet', '1', 'cms:site:select', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('3c92c17886944d0687e73e286cada573', '79', '0,1,79,', '生成示例', 120, '', '', '', '1', '', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `menu` VALUES ('4', '3', '0,1,2,3,', '菜单管理', 30, '/sys/menu/', NULL, 'list-alt', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('40', '31', '0,1,31,', '内容管理', 500, NULL, NULL, NULL, '1', 'cms:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('41', '40', '0,1,31,40,', '内容发布', 30, '/cms/', NULL, 'briefcase', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('42', '41', '0,1,31,40,41,', '文章模型', 40, '/cms/article/', NULL, 'file', '0', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('43', '42', '0,1,31,40,41,42,', '查看', 30, NULL, NULL, NULL, '0', 'cms:article:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('44', '42', '0,1,31,40,41,42,', '修改', 40, NULL, NULL, NULL, '0', 'cms:article:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('45', '42', '0,1,31,40,41,42,', '审核', 50, NULL, NULL, NULL, '0', 'cms:article:audit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('46', '41', '0,1,31,40,41,', '链接模型', 60, '/cms/link/', NULL, 'random', '0', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('47', '46', '0,1,31,40,41,46,', '查看', 30, NULL, NULL, NULL, '0', 'cms:link:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('48', '46', '0,1,31,40,41,46,', '修改', 40, NULL, NULL, NULL, '0', 'cms:link:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('4855cf3b25c244fb8500a380db189d97', 'b1f6d1b86ba24365bae7fd86c5082317', '0,1,79,3c92c17886944d0687e73e286cada573,b1f6d1b86ba24365bae7fd86c5082317,', '查看', 30, '', '', '', '0', 'test:testDataMain:view', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `menu` VALUES ('49', '46', '0,1,31,40,41,46,', '审核', 50, NULL, NULL, NULL, '0', 'cms:link:audit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('5', '4', '0,1,2,3,4,', '查看', 30, NULL, NULL, NULL, '0', 'sys:menu:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('50', '40', '0,1,31,40,', '评论管理', 40, '/cms/comment/?status=2', NULL, 'comment', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('51', '50', '0,1,31,40,50,', '查看', 30, NULL, NULL, NULL, '0', 'cms:comment:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('52', '50', '0,1,31,40,50,', '审核', 40, NULL, NULL, NULL, '0', 'cms:comment:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('53', '40', '0,1,31,40,', '公共留言', 80, '/cms/guestbook/?status=2', NULL, 'glass', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('54', '53', '0,1,31,40,53,', '查看', 30, NULL, NULL, NULL, '0', 'cms:guestbook:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('55', '53', '0,1,31,40,53,', '审核', 40, NULL, NULL, NULL, '0', 'cms:guestbook:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('55aa6ead61554b1184d470912e5372ee', 'a2a8da41340743418dd251f446cbda3f', '0,1,a2a8da41340743418dd251f446cbda3f,', '题目发布', 30, '/Teacher/release_topic', '', '', '1', '', '5', '2021-04-13 23:06:17', '5', '2021-04-13 23:06:17', '', '0');
INSERT INTO `menu` VALUES ('56', '71', '0,1,27,71,', '文件管理', 90, '/../static/ckfinder/ckfinder.html', NULL, 'folder-open', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `menu` VALUES ('57', '56', '0,1,27,40,56,', '查看', 30, NULL, NULL, NULL, '0', 'cms:ckfinder:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('58', '56', '0,1,27,40,56,', '上传', 40, NULL, NULL, NULL, '0', 'cms:ckfinder:upload', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('59', '56', '0,1,27,40,56,', '修改', 50, NULL, NULL, NULL, '0', 'cms:ckfinder:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('6', '4', '0,1,2,3,4,', '修改', 40, NULL, NULL, NULL, '0', 'sys:menu:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('60', '31', '0,1,31,', '统计分析', 600, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('61', '60', '0,1,31,60,', '信息量统计', 30, '/cms/stats/article', NULL, 'tasks', '1', 'cms:stats:article', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('62', '1', '0,1,', '在线办公', 200, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `menu` VALUES ('620227a0eac6455ead5e4254c301ed64', '8a463f98aa1b48f99dafe189d86d4dfc', '0,1,8a463f98aa1b48f99dafe189d86d4dfc,', '题目选择', 30, '/selecttitle', '', '', '1', '', '5', '2021-04-05 16:30:42', '5', '2021-04-05 16:30:42', '', '0');
INSERT INTO `menu` VALUES ('63', '62', '0,1,62,', '个人办公', 30, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `menu` VALUES ('64', '63', '0,1,62,63,', '请假办理', 300, '/oa/leave', NULL, 'leaf', '0', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('64425907a272429d9a708bc296667a07', '1', '0,1,', '用户管理', 130, '/user', '', '', '1', '', '5', '2021-04-05 10:36:20', '5', '2021-04-05 10:36:20', '', '1');
INSERT INTO `menu` VALUES ('65', '64', '0,1,62,63,64,', '查看', 30, NULL, NULL, NULL, '0', 'oa:leave:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('66', '64', '0,1,62,63,64,', '修改', 40, NULL, NULL, NULL, '0', 'oa:leave:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('67', '2', '0,1,2,', '日志查询', 985, NULL, NULL, NULL, '1', NULL, '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('68', '67', '0,1,2,67,', '日志查询', 30, '/sys/log', NULL, 'pencil', '1', 'sys:log:view', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('69', '62', '0,1,62,', '流程管理', 300, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `menu` VALUES ('7', '3', '0,1,2,3,', '角色管理', 50, '/sys/role/', NULL, 'lock', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('70', '69', '0,1,62,69,', '流程管理', 50, '/act/process', NULL, 'road', '1', 'act:process:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('71', '27', '0,1,27,', '文件管理', 100, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `menu` VALUES ('72', '69', '0,1,62,69,', '模型管理', 100, '/act/model', NULL, 'road', '1', 'act:model:edit', '1', '2013-09-20 08:00:00', '1', '2013-09-20 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('73', '63', '0,1,62,63,', '我的任务', 50, '/act/task/todo/', NULL, 'tasks', '1', NULL, '1', '2013-09-24 08:00:00', '1', '2013-09-24 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('74', '63', '0,1,62,63,', '审批测试', 100, '/oa/testAudit', NULL, NULL, '1', 'oa:testAudit:view,oa:testAudit:edit', '1', '2013-09-24 08:00:00', '1', '2013-09-24 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('75', '1', '0,1,', '在线演示', 3000, NULL, NULL, NULL, '1', NULL, '1', '2013-10-08 08:00:00', '1', '2013-10-08 08:00:00', NULL, '1');
INSERT INTO `menu` VALUES ('79', '1', '0,1,', '代码生成', 5000, NULL, NULL, NULL, '1', NULL, '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', NULL, '1');
INSERT INTO `menu` VALUES ('8', '7', '0,1,2,3,7,', '查看', 30, NULL, NULL, NULL, '0', 'sys:role:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('80', '79', '0,1,79,', '代码生成', 50, NULL, NULL, NULL, '1', NULL, '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('81', '80', '0,1,79,80,', '生成方案配置', 30, '/gen/genScheme', NULL, NULL, '1', 'gen:genScheme:view,gen:genScheme:edit', '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('82', '80', '0,1,79,80,', '业务表配置', 20, '/gen/genTable', NULL, NULL, '1', 'gen:genTable:view,gen:genTable:edit,gen:genTableColumn:view,gen:genTableColumn:edit', '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('83', '80', '0,1,79,80,', '代码模板管理', 90, '/gen/genTemplate', NULL, NULL, '1', 'gen:genTemplate:view,gen:genTemplate:edit', '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', NULL, '1');
INSERT INTO `menu` VALUES ('84', '67', '0,1,2,67,', '连接池监视', 40, '/../druid', NULL, NULL, '1', NULL, '1', '2013-10-18 08:00:00', '1', '2013-10-18 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('85', '76', '0,1,75,76,', '行政区域', 80, '/../static/map/map-city.html', NULL, NULL, '1', NULL, '1', '2013-10-22 08:00:00', '1', '2013-10-22 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('86', '75', '0,1,75,', '组件演示', 50, NULL, NULL, NULL, '1', NULL, '1', '2013-10-22 08:00:00', '1', '2013-10-22 08:00:00', NULL, '1');
INSERT INTO `menu` VALUES ('87', '86', '0,1,75,86,', '组件演示', 30, '/test/test/form', NULL, NULL, '1', 'test:test:view,test:test:edit', '1', '2013-10-22 08:00:00', '1', '2013-10-22 08:00:00', NULL, '1');
INSERT INTO `menu` VALUES ('88', '62', '0,1,62,', '通知通告', 20, '', '', '', '1', '', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('89', '88', '0,1,62,88,', '我的通告', 30, '/oa/oaNotify/self', '', '', '1', '', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('8a463f98aa1b48f99dafe189d86d4dfc', '1', '0,1,', '学生功能', 130, '', '', '', '1', '', '5', '2021-04-05 16:30:15', '5', '2021-04-05 16:30:15', '', '0');
INSERT INTO `menu` VALUES ('8d8fb1707c5844ec900555c25952971c', '27', '0,1,27,', '角色管理', 70, '/role', '', '', '1', '', '5', '2021-04-04 21:42:22', '5', '2021-04-04 21:42:22', '', '0');
INSERT INTO `menu` VALUES ('9', '7', '0,1,2,3,7,', '修改', 40, NULL, NULL, NULL, '0', 'sys:role:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('90', '88', '0,1,62,88,', '通告管理', 50, '/oa/oaNotify', '', '', '1', 'oa:oaNotify:view,oa:oaNotify:edit', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('9790bfe348bc4b54bb6a5a0c3676cda3', '27', '0,1,27,', '用户管理', 50, '/user', '', '', '1', '', '5', '2021-04-08 13:13:10', '5', '2021-04-08 13:13:10', '', '0');
INSERT INTO `menu` VALUES ('9fe45d7b392b45b2a1b34709b6e978c4', '1', '0,1,', '公司管理员1', 190, '/menu', '', '', '1', '', '5', '2021-04-09 19:03:55', '5', '2021-04-09 19:03:55', '', '1');
INSERT INTO `menu` VALUES ('a2a8da41340743418dd251f446cbda3f', '1', '0,1,', '教师功能', 160, '', '', '', '1', '', '5', '2021-04-05 23:54:03', '5', '2021-04-05 23:54:03', '', '0');
INSERT INTO `menu` VALUES ('a73fd91e3a7d4447be9e8a4b7df9395d', '27', '0,1,27,', '机构管理', 130, '/office', '', '', '1', '', '5', '2021-04-09 17:44:21', '5', '2021-04-09 17:44:21', '', '1');
INSERT INTO `menu` VALUES ('afab2db430e2457f9cf3a11feaa8b869', '0ca004d6b1bf4bcab9670a5060d82a55', '0,1,79,3c92c17886944d0687e73e286cada573,0ca004d6b1bf4bcab9670a5060d82a55,', '编辑', 60, '', '', '', '0', 'test:testTree:edit', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `menu` VALUES ('b1f6d1b86ba24365bae7fd86c5082317', '3c92c17886944d0687e73e286cada573', '0,1,79,3c92c17886944d0687e73e286cada573,', '主子表', 60, '/test/testDataMain', '', '', '1', '', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `menu` VALUES ('ba8092291b40482db8fe7fc006ea3d76', '3c92c17886944d0687e73e286cada573', '0,1,79,3c92c17886944d0687e73e286cada573,', '单表', 30, '/test/testData', '', '', '1', '', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `menu` VALUES ('beb347f5f31d4fa482448b131a35348b', '27', '0,1,27,', '菜单管理', 120, '/menu', '', '', '1', '', '5', '2021-04-03 19:55:29', '5', '2021-04-03 19:55:29', '', '1');
INSERT INTO `menu` VALUES ('c2e4d9082a0b4386884a0b203afe2c5c', '0ca004d6b1bf4bcab9670a5060d82a55', '0,1,79,3c92c17886944d0687e73e286cada573,0ca004d6b1bf4bcab9670a5060d82a55,', '查看', 30, '', '', '', '0', 'test:testTree:view', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `menu` VALUES ('d15ec45a4c5449c3bbd7a61d5f9dd1d2', 'b1f6d1b86ba24365bae7fd86c5082317', '0,1,79,3c92c17886944d0687e73e286cada573,b1f6d1b86ba24365bae7fd86c5082317,', '编辑', 60, '', '', '', '0', 'test:testDataMain:edit', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `menu` VALUES ('df7ce823c5b24ff9bada43d992f373e2', 'ba8092291b40482db8fe7fc006ea3d76', '0,1,79,3c92c17886944d0687e73e286cada573,ba8092291b40482db8fe7fc006ea3d76,', '查看', 30, '', '', '', '0', 'test:testData:view', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `menu` VALUES ('e51b0df770a94d8dafa8885f87d64918', '1', '0,1,', '角色管理', 130, '/role', '', '', '1', '', '5', '2021-04-04 21:41:38', '5', '2021-04-04 21:41:38', '', '1');
INSERT INTO `menu` VALUES ('e775565dc071467d85b768312e2f5a70', '27', '0,1,27,', '菜单管理', 150, '/menu', '', '', '1', '', '5', '2021-04-03 20:27:52', '5', '2021-04-03 20:27:52', '', '1');
INSERT INTO `menu` VALUES ('e7b0ff2280a847cf827322b2c562155b', '1', '0,1,', '菜单管理', 190, '/role', '', '', '1', '', '5', '2021-04-09 19:57:00', '5', '2021-04-09 19:57:00', '', '1');

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
INSERT INTO `office` VALUES ('876e21c365b7428e971e2df322d9ec6d', '1', '0,1,', '文法学院', 330, '5', '2021-04-09 19:39:38', '5', '2021-04-09 19:39:38', '', '0');
INSERT INTO `office` VALUES ('8fdd5e3f614b4a2faecb98c112d2859d', '876e21c365b7428e971e2df322d9ec6d', '0,1,876e21c365b7428e971e2df322d9ec6d,', '法学', 60, '5', '2021-04-10 02:58:25', '5', '2021-04-10 02:58:25', '', '0');
INSERT INTO `office` VALUES ('a152cd4f82094cb19fda73db74b653fa', '2', '0,12,', '计算机科学与技术', 50, '5', '2021-04-09 19:50:20', '5', '2021-04-09 19:50:20', '', '0');
INSERT INTO `office` VALUES ('ae102782f17f455aa25853a767b25c09', '1', '0,1,', '自动化学院', 360, '5', '2021-04-10 02:58:08', '5', '2021-04-10 02:58:08', '', '0');
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
INSERT INTO `role` VALUES ('1', '系统管理员', 'dept', '5', '2021-04-13 10:23:24', '5', '2021-04-13 10:23:24', '', '0');
INSERT INTO `role` VALUES ('2', '公司管理员啊', 'hr', '5', '2021-04-07 23:28:27', '5', '2021-04-07 23:28:27', '1', '1');
INSERT INTO `role` VALUES ('289c40f1c916425c83426245adef124f', '一级管理员', 'One', '1', '2021-03-26 16:18:37', '1', '2021-03-26 16:24:37', '拥有所有权限', '1');
INSERT INTO `role` VALUES ('29da68c34c8747fc83640485639d63dd', '学生', 'student', '5', '2021-04-13 20:21:00', '5', '2021-04-13 20:21:00', '', '0');
INSERT INTO `role` VALUES ('2a44f1d218b545bb965af76c2fdb930f', '公司管理员5', 'hr5', '5', '2021-04-07 18:59:08', '5', '2021-04-07 18:59:08', '1', '0');
INSERT INTO `role` VALUES ('3', '本公司管理员', 'a', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `role` VALUES ('33be4afec6ae4f8eaececd0667aa5a8c', '公司管理员7', 'hr7', '5', '2021-04-07 19:04:46', '5', '2021-04-07 19:04:46', '1', '0');
INSERT INTO `role` VALUES ('3d5a6be2545e45c4b9d7a40eca94e400', '三级管理员', 'Three', '1', '2021-03-26 16:19:52', '1', '2021-03-26 16:26:15', '', '1');
INSERT INTO `role` VALUES ('4', '部门管理员', 'b', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `role` VALUES ('44ddaccf3caa4260adf3057296928188', '文法学院管理员2', 'hr23', '5', '2021-04-14 00:03:36', '5', '2021-04-14 00:03:36', '1', '0');
INSERT INTO `role` VALUES ('5', '本部门管理员', 'c', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `role` VALUES ('5d4f7b2f7f76475bb47794026d685d3a', '公司管理员2', 'hr2', '5', '2021-04-07 13:42:35', '5', '2021-04-07 13:42:35', '12', '0');
INSERT INTO `role` VALUES ('6', '普通用户', 'd', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `role` VALUES ('7', '济南市管理员', 'e', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `role` VALUES ('8', '部门管理员', 'management', '1', '2021-04-06 20:41:04', '1', '2021-04-06 20:40:57', NULL, '1');
INSERT INTO `role` VALUES ('a4e57c2300f74394aae8ff177fc264a9', '公司管理员3', 'hr3', '5', '2021-04-07 14:48:58', '5', '2021-04-07 14:48:58', '1', '0');
INSERT INTO `role` VALUES ('c9908fcfdc174411befa3bfb38af8bcc', '二级管理员', 'a', '1', '2021-03-26 16:19:02', '1', '2021-03-26 16:25:55', '', '1');
INSERT INTO `role` VALUES ('cbbf05b97aba497dbcb9569e4fb22318', '公司管理员6', 'hr6', '5', '2021-04-07 19:02:04', '5', '2021-04-07 19:02:04', '1', '0');
INSERT INTO `role` VALUES ('d7b3b776a37a4cc4986da4409a173d98', '系主任', 'director', '5', '2021-04-13 19:52:20', '5', '2021-04-13 19:52:20', '', '0');
INSERT INTO `role` VALUES ('e0261c935b914d88be54731bb37a508a', '文法学院管理员', 'hr', '5', '2021-04-13 23:53:55', '5', '2021-04-13 23:53:55', '1', '0');
INSERT INTO `role` VALUES ('f2daff60566c4457b9a19a73d9a06bbc', '公司管理员4', 'hr4', '5', '2021-04-07 17:22:30', '5', '2021-04-07 17:22:30', '1', '0');

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
INSERT INTO `role_menu` VALUES ('2', '27');
INSERT INTO `role_menu` VALUES ('2', '28');
INSERT INTO `role_menu` VALUES ('29da68c34c8747fc83640485639d63dd', '620227a0eac6455ead5e4254c301ed64');
INSERT INTO `role_menu` VALUES ('29da68c34c8747fc83640485639d63dd', '8a463f98aa1b48f99dafe189d86d4dfc');
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
INSERT INTO `role_menu` VALUES ('a4e57c2300f74394aae8ff177fc264a9', '27');
INSERT INTO `role_menu` VALUES ('a4e57c2300f74394aae8ff177fc264a9', '28');
INSERT INTO `role_menu` VALUES ('cbbf05b97aba497dbcb9569e4fb22318', '27');
INSERT INTO `role_menu` VALUES ('cbbf05b97aba497dbcb9569e4fb22318', '8d8fb1707c5844ec900555c25952971c');
INSERT INTO `role_menu` VALUES ('d7b3b776a37a4cc4986da4409a173d98', '55aa6ead61554b1184d470912e5372ee');
INSERT INTO `role_menu` VALUES ('d7b3b776a37a4cc4986da4409a173d98', '620227a0eac6455ead5e4254c301ed64');
INSERT INTO `role_menu` VALUES ('d7b3b776a37a4cc4986da4409a173d98', '8a463f98aa1b48f99dafe189d86d4dfc');
INSERT INTO `role_menu` VALUES ('d7b3b776a37a4cc4986da4409a173d98', 'a2a8da41340743418dd251f446cbda3f');
INSERT INTO `role_menu` VALUES ('e0261c935b914d88be54731bb37a508a', '28');
INSERT INTO `role_menu` VALUES ('e0261c935b914d88be54731bb37a508a', '8d8fb1707c5844ec900555c25952971c');
INSERT INTO `role_menu` VALUES ('e0261c935b914d88be54731bb37a508a', '9790bfe348bc4b54bb6a5a0c3676cda3');
INSERT INTO `role_menu` VALUES ('f2daff60566c4457b9a19a73d9a06bbc', '27');
INSERT INTO `role_menu` VALUES ('f2daff60566c4457b9a19a73d9a06bbc', '28');
INSERT INTO `role_menu` VALUES ('f2daff60566c4457b9a19a73d9a06bbc', '8d8fb1707c5844ec900555c25952971c');

-- ----------------------------
-- Table structure for task
-- ----------------------------
DROP TABLE IF EXISTS `task`;
CREATE TABLE `task`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '编号',
  `topic` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '课题题目',
  `college_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '课题所属学院',
  `major_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '课题所属专业',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '题目类型',
  `pattern` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '选题模式\r\n1.双选\r\n2.指定\r\n3.学生申报',
  `source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '题目来源',
  `research_direction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '研究方向',
  `brief_introduction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '简介',
  `basic_requirements` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '基本要求',
  `reference_data` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '参考资料',
  `teacher_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '老师id',
  `audit_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '审核状态\r\n1.通过\r\n2.不通过\r\n3.未审核',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of task
-- ----------------------------

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
INSERT INTO `user` VALUES ('010f53d2ae4c44d7b0319bebb5dc70c5', '吴家剑', '170344801341', '454cd1d42d58d740c69edeef3d3ebe0a', '341', '1', '1150878978@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('074a700027a6479aa154e6bed93be7ee', '梁嘉诚', '17034480120', '454cd1d42d58d740c69edeef3d3ebe0a', '17034480120', '1', '1150878978@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('0d62d83200db4b96bc83aac28298d402', '李启锐', '606301', '454cd1d42d58d740c69edeef3d3ebe0a', '606301', '1', '1150878978@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('5', '', 'superadmin', '7edaed8f28b43651fe3ee90181754d63', '44', '', '', 'SUPERADMIN', '0');
INSERT INTO `user` VALUES ('84273c9be02b49b2800e256e87ae11a0', '吴家剑', '1703448013411', '454cd1d42d58d740c69edeef3d3ebe0a', '3411', '1', '1150878978@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('d9ab185cb2154b71bf9c0871fb892b50', '吴家剑', '17034480133', '454cd1d42d58d740c69edeef3d3ebe0a', '17034480134', '1', '1150878978@qq.com', 'USER', '0');

-- ----------------------------
-- Table structure for user_info_all
-- ----------------------------
DROP TABLE IF EXISTS `user_info_all`;
CREATE TABLE `user_info_all`  (
  `user_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户id',
  `identitys_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '身份id,用于看是否需要显示专业',
  `grade` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '年级id',
  `college_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '学院id,实际上是机构id',
  `major_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '专业id,实际上是机构id',
  `role_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色id',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`user_id`, `college_id`, `identitys_id`, `grade`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info_all
-- ----------------------------
INSERT INTO `user_info_all` VALUES ('010f53d2ae4c44d7b0319bebb5dc70c5', '1', '2017', '2', 'a152cd4f82094cb19fda73db74b653fa', '5d4f7b2f7f76475bb47794026d685d3a', '0');
INSERT INTO `user_info_all` VALUES ('010f53d2ae4c44d7b0319bebb5dc70c5', '1', '2017', '4', 'ba365c5d038c4483a2dc3c17569cae7c', '1', '0');
INSERT INTO `user_info_all` VALUES ('010f53d2ae4c44d7b0319bebb5dc70c5', '2', '2020', '876e21c365b7428e971e2df322d9ec6d', NULL, 'a4e57c2300f74394aae8ff177fc264a9', '0');
INSERT INTO `user_info_all` VALUES ('074a700027a6479aa154e6bed93be7ee', '1', '2017', '2', 'a152cd4f82094cb19fda73db74b653fa', '29da68c34c8747fc83640485639d63dd', '0');
INSERT INTO `user_info_all` VALUES ('0d62d83200db4b96bc83aac28298d402', '3', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', '5d4f7b2f7f76475bb47794026d685d3a', '0');
INSERT INTO `user_info_all` VALUES ('0d62d83200db4b96bc83aac28298d402', '3', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', 'd7b3b776a37a4cc4986da4409a173d98', '0');
INSERT INTO `user_info_all` VALUES ('84273c9be02b49b2800e256e87ae11a0', '3', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', '1', '1');
INSERT INTO `user_info_all` VALUES ('d9ab185cb2154b71bf9c0871fb892b50', '1', '2017', '2', 'a152cd4f82094cb19fda73db74b653fa', '1', '0');

SET FOREIGN_KEY_CHECKS = 1;
