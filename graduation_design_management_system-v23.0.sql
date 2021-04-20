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

 Date: 20/04/2021 17:15:43
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
INSERT INTO `announcement` VALUES ('1', '2131', '123', '2021-04-10 04:45:28', '0');
INSERT INTO `announcement` VALUES ('213', '123', '213', '2021-04-07 14:45:37', '1');
INSERT INTO `announcement` VALUES ('46f2c303afb744119444831ef3c46c6f', '23', '123', '2021-04-20 17:12:53', '0');
INSERT INTO `announcement` VALUES ('6095a731ac814bfc94ca97b7e498ebe9', '刚刚发布的题目111', '我相信你是可以的1112', '2021-04-22 23:29:17', '1');
INSERT INTO `announcement` VALUES ('b250d9b0f903456cb394a27054a8ec70', '企鹅舞', 'qw为请问', '2021-04-21 07:09:18', '1');
INSERT INTO `announcement` VALUES ('e3af255e9fda4e6a8bf65dc646d46141', '阿松大', '阿斯蒂芬萨芬', '2021-04-20 16:57:20', '0');

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
INSERT INTO `log` VALUES ('00298065390a4345aa4cff2f7283b1df', '查看', '', '/office', '机构', '', '2021-04-14 19:21:40.940000', '');
INSERT INTO `log` VALUES ('00d9d3621fa947d986312a002c88c8c4', '查看', '5', '/role', '角色列表', '', '2021-04-15 16:13:34.311000', '');
INSERT INTO `log` VALUES ('01134b858db44d979b70de7b9eca3b92', '修改', '5', '/role/form/save', '角色', '', '2021-04-14 23:15:52.000000', '');
INSERT INTO `log` VALUES ('012383e3deef4106b9559a1b11898b5e', '查看', '5', '/role', '角色列表', '', '2021-04-15 14:05:08.623000', '');
INSERT INTO `log` VALUES ('02042a93357a48318d8991fb4d2e5d82', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-17 23:10:18.728000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('022c47ff65ab4dd8a18ab3d68dfad59d', '修改', '5', '/menu/form/save', '菜单', '', '2021-04-16 22:19:15.955000', '');
INSERT INTO `log` VALUES ('03496f3125c146dab3e76910887091e6', '修改', '5', '/role/form/save', '角色', '', '2021-04-15 16:46:55.611000', '');
INSERT INTO `log` VALUES ('03e195740d49452c908f5ad138e72a96', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-14 23:48:20.838000', '');
INSERT INTO `log` VALUES ('04a157ff86d64f6895fb4926f0c9cd39', '修改', '5', '/role/form/save', '角色', NULL, '2021-04-19 00:42:30.594000', NULL);
INSERT INTO `log` VALUES ('051f408ca255424a95ccaf8ed4f7033f', '删除', '5', '/menu/delete', '菜单', NULL, '2021-04-20 17:13:55.360000', NULL);
INSERT INTO `log` VALUES ('05d010aeffd84afbbd0987fbb09e6673', '查看', '5', '/role', '角色列表', '', '2021-04-16 19:22:04.916000', '');
INSERT INTO `log` VALUES ('0627af34826a4d0eab21c9053cd52747', '查看', '5', '/menu', '菜单', '', '2021-04-16 19:21:59.595000', '');
INSERT INTO `log` VALUES ('06d7e2f7dbb8433caddcc2aad5a32c20', '查看', '5', '/menu', '菜单', NULL, '2021-04-17 22:54:54.239000', NULL);
INSERT INTO `log` VALUES ('06da26cd55a7495fae7c0390cee06335', '添加', '61072f70ed1e462ba1aff1edd4578b65', '/task/form/save', '课题', 'c21d4f4d561b4641b5f0e6c383ed48aa', '2021-04-17 13:54:27.944000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('073489be8568401faa2cc0f6a6876357', '修改', '5', '/menu/updateSort', '菜单排序', NULL, '2021-04-19 22:53:56.364000', NULL);
INSERT INTO `log` VALUES ('07bdd71805f94dacbd07710d207fb19b', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 18:31:59.266000', '');
INSERT INTO `log` VALUES ('07cf1867f2de435fb926f466e057590c', '添加', '5', '/menu/form/save', '菜单', NULL, '2021-04-19 22:52:56.379000', NULL);
INSERT INTO `log` VALUES ('090f8c44835b43a48fb7de6848db1222', '查看', '5', '/menu', '菜单', NULL, '2021-04-17 23:03:57.444000', NULL);
INSERT INTO `log` VALUES ('092a054d3cc04c8586324e81adfd820a', '查看', '5', '/role', '角色列表', '', '2021-04-15 14:29:15.632000', '');
INSERT INTO `log` VALUES ('095c4e2573b0451eb929a76f17562e01', '添加', '5', '/menu/form/save', '菜单', NULL, '2021-04-19 15:08:05.524000', NULL);
INSERT INTO `log` VALUES ('09d4f1af9a3b4c6a904e3901600c7915', '查看', '5', '/role', '角色列表', NULL, '2021-04-17 00:09:16.513000', '');
INSERT INTO `log` VALUES ('09fe03455a5c414cbc47cb3475ddb820', '添加', '61072f70ed1e462ba1aff1edd4578b65', '/task/form/save', '课题', '', '2021-04-16 15:27:46.692000', '');
INSERT INTO `log` VALUES ('0a5c4ce9fef6442eaf2783540e86a7b4', '查看', '5', '/role', '角色列表', '', '2021-04-15 16:30:01.355000', '');
INSERT INTO `log` VALUES ('0af5dfaa3da04289a08b17304eb6721a', '查看', '5', '/role', '角色列表', '', '2021-04-14 23:15:40.148000', '');
INSERT INTO `log` VALUES ('0afcaae65fcc4142b928de0c3a5f7b60', '查看', '5', '/role', '角色列表', '', '2021-04-15 12:43:50.546000', '');
INSERT INTO `log` VALUES ('0b24d1c0c9954bfdb0f89fed3b686e60', '查看', '5', '/role', '角色列表', '', '2021-04-15 12:49:40.004000', '');
INSERT INTO `log` VALUES ('0c18da657ad241019659740e82065a2a', '通过', '9fc64c0a260b48dfbe56dab66dfba382', '/task/audit/double', '双选课题审核', 'c21d4f4d561b4641b5f0e6c383ed48aa', '2021-04-17 13:59:18.737000', 'd7b3b776a37a4cc4986da4409a173d98');
INSERT INTO `log` VALUES ('0c3086d3fd0848088bb12e3eb5993eb3', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 00:34:23.885000', '');
INSERT INTO `log` VALUES ('0c5a47831c524834b342d07b5b6b5676', '添加', '5', '/role/form/save', '角色', '', '2021-04-14 23:15:39.839000', '');
INSERT INTO `log` VALUES ('0d756a7b6a464f9081dd3715f0557ff1', '修改', '5', '/role/form/save', '角色', '', '2021-04-15 14:02:56.129000', '');
INSERT INTO `log` VALUES ('0e5dd2472c1d43f195c2c90d226b3ed3', '修改', '5', '/role/form/save', '角色', NULL, '2021-04-19 22:54:46.099000', NULL);
INSERT INTO `log` VALUES ('0eb8eea5341d416f9bfb8dcd949a8ab9', '查看', '5', '/role', '角色列表', NULL, '2021-04-20 00:59:32.207000', NULL);
INSERT INTO `log` VALUES ('109d5339297143c2acd2c51070c3ba58', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-17 23:12:10.538000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('113c9216ea4743c48aef81b3a9dfc88a', '查看', '5', '/role', '角色列表', '', '2021-04-15 13:01:07.053000', '');
INSERT INTO `log` VALUES ('1141df8e33ef48edb08947f023976d30', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 01:21:48.442000', '');
INSERT INTO `log` VALUES ('11a58533cfcf484588068784a01c8904', '添加', '5', '/menu/form/save', '菜单', NULL, '2021-04-19 00:41:46.274000', NULL);
INSERT INTO `log` VALUES ('1261bb88d865433e989af884b4ab27b5', '查看', '5', '/menu', '菜单', '', '2021-04-16 19:25:33.358000', '');
INSERT INTO `log` VALUES ('1341b358081e4c0a8ff19948e792f232', '查看', '5', '/menu', '菜单', NULL, '2021-04-17 21:06:33.888000', NULL);
INSERT INTO `log` VALUES ('13aa13aea504475db72fdf958359d21e', '查看', '5', '/office', '机构', '', '2021-04-14 22:10:38.801000', '');
INSERT INTO `log` VALUES ('13e59e13a1ee4598bc37b9bf574f41bc', '查看', '5', '/menu', '菜单', NULL, '2021-04-17 21:07:15.754000', NULL);
INSERT INTO `log` VALUES ('140c282c6b10492190a495f730364af7', '查看', '5', '/role', '角色列表', NULL, '2021-04-17 21:43:30.552000', NULL);
INSERT INTO `log` VALUES ('14140129e0a54711a291aa7cd04892ab', '查看', '5', '/menu', '菜单', '', '2021-04-16 20:08:56.201000', '');
INSERT INTO `log` VALUES ('141b808fa90e40a3ac4ef34a4cef267f', '修改', '5', '/role/form/save', '角色', '', '2021-04-15 14:02:42.248000', '');
INSERT INTO `log` VALUES ('144af6b5d7204478aa7b0cf555629a84', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-17 21:02:40.311000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('150776d55f614837b8843bcb366acbf6', '添加', '5', '/user/form/save', '用户', '', '2021-04-15 23:38:23.770000', '');
INSERT INTO `log` VALUES ('1552c4d9c6f4414aafc48078b7505f61', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-17 20:45:42.941000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('15a665cf6bd14311ab38e3e2fb2bc995', '查看', '5', '/menu', '菜单', NULL, '2021-04-19 22:58:10.915000', NULL);
INSERT INTO `log` VALUES ('160ea9456909441baf385a10678659cf', '修改', '5', '/menu/form/save', '菜单', NULL, '2021-04-18 18:37:20.030000', NULL);
INSERT INTO `log` VALUES ('169a6caf00a84e4a85587e9b24922194', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-18 18:36:50.195000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('16b3801fa7c047f8b973c0367ac5c4f1', '查看', '5', '/role', '角色列表', '', '2021-04-15 10:09:39.826000', '');
INSERT INTO `log` VALUES ('16dd031fe7344e1a9999174b40b9ed04', '查看', '5', '/role', '角色列表', '', '2021-04-16 19:20:04.938000', '');
INSERT INTO `log` VALUES ('176fd2ae647b4ccf819f91ae2ccb143e', '查看', '5', '/menu', '菜单', '', '2021-04-16 19:27:05.458000', '');
INSERT INTO `log` VALUES ('17ef345443aa4c00a70871cdeceb13c9', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 01:25:34.728000', '');
INSERT INTO `log` VALUES ('17fbdea531304ebe8522af797367d89e', '查看', '5', '/menu', '菜单', NULL, '2021-04-20 15:06:59.258000', NULL);
INSERT INTO `log` VALUES ('181c7b0d48884102a2ad6a1359115986', '查看', '5', '/role', '角色列表', NULL, '2021-04-20 00:59:25.370000', NULL);
INSERT INTO `log` VALUES ('18bcc9ae290d40959abdec9adce81f87', '查看', '5', '/role', '角色列表', '', '2021-04-15 13:06:12.917000', '');
INSERT INTO `log` VALUES ('18c4dff7cb92424ab45e2bc65fc9035a', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-17 13:54:14.504000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('19db649d75f64d239e5d383bb16c4d46', '添加', '5', '/menu/form/save', '菜单', NULL, '2021-04-20 14:03:55.820000', NULL);
INSERT INTO `log` VALUES ('1a57dbf7a17c4dd4bf6d91bfb341fdf3', '查看', '5', '/menu', '菜单', NULL, '2021-04-19 22:53:38.100000', NULL);
INSERT INTO `log` VALUES ('1b4f0a211dd84ab49cf4e888ed095310', '查看', '5', '/menu', '菜单', '', '2021-04-16 22:19:16.066000', '');
INSERT INTO `log` VALUES ('1b5c91b4f8c04e519e70b713850c9f44', '查看', '5', '/menu', '菜单', NULL, '2021-04-20 00:15:21.264000', NULL);
INSERT INTO `log` VALUES ('1be62fd2a2e7490b902f7abbe93b64f5', '查看', '5', '/role', '角色列表', '', '2021-04-15 00:22:07.713000', '');
INSERT INTO `log` VALUES ('1bf5e61960be4a52aebc8d0a26a3d0e3', '添加', '61072f70ed1e462ba1aff1edd4578b65', '/task/form/save', '课题', '', '2021-04-16 14:49:26.373000', '');
INSERT INTO `log` VALUES ('1c7095388b164c9a87da471b0033a618', '添加', '61072f70ed1e462ba1aff1edd4578b65', '/task/form/save', '课题', '', '2021-04-16 14:55:30.365000', '');
INSERT INTO `log` VALUES ('1cb88011ed274ef5b929823aaab4b80e', '查看', '5', '/menu', '菜单', '', '2021-04-15 20:17:54.125000', '');
INSERT INTO `log` VALUES ('1ccf7861f9c2469d8ad756cfbd0ff9b3', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 00:38:36.371000', '');
INSERT INTO `log` VALUES ('1e78b38ca21f48f590e9a24b4b4c5ec1', '查看', '5', '/role', '角色列表', '', '2021-04-15 13:09:03.397000', '');
INSERT INTO `log` VALUES ('1e7948ff87d846bda76ccee703f47a9c', '查看', '5', '/menu', '菜单', NULL, '2021-04-20 15:07:17.320000', NULL);
INSERT INTO `log` VALUES ('1ea174b7ce9f490892a7cacdce42c4e2', '查看', '5', '/role', '角色列表', '', '2021-04-15 14:48:01.834000', '');
INSERT INTO `log` VALUES ('1ef4010c54974636b2c128db36bf8648', '查看', '5', '/menu', '菜单', NULL, '2021-04-20 17:13:39.323000', NULL);
INSERT INTO `log` VALUES ('1f4dfe74a41c426ea6d779597767481c', '查看', '5', '/menu', '菜单', NULL, '2021-04-19 00:42:03.942000', NULL);
INSERT INTO `log` VALUES ('1f78c8e9dec04443b2f4d9dafa130cea', '修改', '5', '/menu/form/save', '菜单', NULL, '2021-04-19 01:19:43.992000', NULL);
INSERT INTO `log` VALUES ('1fe22e589dfd4f83b0ce6b84b246ca65', '添加', '5', '/menu/form/save', '菜单', NULL, '2021-04-19 22:53:26.493000', NULL);
INSERT INTO `log` VALUES ('20b7703d285a4e1ebb878c7e6feed6da', '修改', '5', '/role/form/save', '角色', '', '2021-04-15 14:59:54.267000', '');
INSERT INTO `log` VALUES ('20e0cafdd5d741699dd773412bc89b4b', '修改', '5', '/menu/form/save', '菜单', '', '2021-04-14 22:17:04.361000', '');
INSERT INTO `log` VALUES ('20ecf7ab29394ee7b58d4d423ef93c90', '查看', '5', '/menu', '菜单', NULL, '2021-04-17 00:34:53.691000', '');
INSERT INTO `log` VALUES ('21c4ef916740423b90d189cbda6d7c70', '查看', '5', '/role', '角色列表', '', '2021-04-15 10:15:15.409000', '');
INSERT INTO `log` VALUES ('226f65171bf04a9e80e9f1f0906f5fdb', '查看', '5', '/role', '角色列表', '', '2021-04-15 16:13:38.753000', '');
INSERT INTO `log` VALUES ('2273fabaecc045618dd81f2d6712613a', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 01:21:55.899000', '');
INSERT INTO `log` VALUES ('22a765fa08024d9b923009a914231079', '查看', '5', '/menu', '菜单', NULL, '2021-04-20 09:03:46.525000', NULL);
INSERT INTO `log` VALUES ('23da401cd974443ab00595ce8bfcde67', '查看', '5', '/role', '角色列表', '', '2021-04-15 14:59:39.384000', '');
INSERT INTO `log` VALUES ('2459f3db7ca647a1bf2f43d66cd0a45e', '查看', '5', '/teacher/tasklist', '双选题目', NULL, '2021-04-20 14:04:26.183000', NULL);
INSERT INTO `log` VALUES ('2561e593d3f34e46a136da01c2b33689', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-17 21:41:40.268000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('25fcaf8a31924a388bfd55504d2db4ea', '查看', '5', '/menu', '菜单', NULL, '2021-04-20 14:50:59.403000', NULL);
INSERT INTO `log` VALUES ('261f3813000d483aad3cd7124b5626ff', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-18 13:13:00.831000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('26279c9181074c5b838bb741ed5af1d8', '查看', '5', '/menu', '菜单', '', '2021-04-15 20:25:57.530000', '');
INSERT INTO `log` VALUES ('26a28abd11e8469889d422aed93b6415', '查看', '5', '/menu', '菜单', NULL, '2021-04-20 14:04:00.830000', NULL);
INSERT INTO `log` VALUES ('26f3a1a4955f4b4b9063728765b42af1', '查看', '5', '/role', '角色列表', '', '2021-04-15 10:31:12.966000', '');
INSERT INTO `log` VALUES ('272993cb816349adac91478c52c362e0', '添加', '5', '/task/form/save', '课题', '', '2021-04-15 18:19:45.476000', '');
INSERT INTO `log` VALUES ('279974c6076a4b16b295aebccac2eabf', '查看', '5', '/menu', '菜单', NULL, '2021-04-17 00:09:23.241000', '');
INSERT INTO `log` VALUES ('28358f1001de45cdb397e084b57b161a', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 00:14:13.043000', '');
INSERT INTO `log` VALUES ('283e6f55bb1e4ef4a1bf93ca37c2dacb', '查看', '5', '/role', '角色列表', '', '2021-04-15 13:41:47.987000', '');
INSERT INTO `log` VALUES ('285f282a46ff4385afe34ed3207b7782', '查看', '5', '/menu', '菜单', NULL, '2021-04-19 00:41:54.647000', NULL);
INSERT INTO `log` VALUES ('28642c14a55d4adab698a48e72f2de07', '添加', '5', '/user/form/save', '用户', '', '2021-04-15 21:58:08.302000', '');
INSERT INTO `log` VALUES ('28bc68155a4d49b5945ed82de6428633', '查看', '5', '/menu', '菜单', '', '2021-04-16 19:19:57.513000', '');
INSERT INTO `log` VALUES ('28c09b77b9d84c3992d4c371cb3953a3', '添加', '5', '/user/form/save', '用户', '', '2021-04-15 00:38:28.417000', '');
INSERT INTO `log` VALUES ('293d61475f994ab78ee59289450336bb', '查看', '5', '/role', '角色列表', '', '2021-04-15 13:15:42.643000', '');
INSERT INTO `log` VALUES ('29a405bc617a40da8037a07321bae1ce', '查看', '5', '/role', '角色列表', '', '2021-04-14 23:07:33.738000', '');
INSERT INTO `log` VALUES ('29f3dee3c06d49dfb09c56a624892dd1', '查看', '5', '/role', '角色列表', '', '2021-04-15 21:48:55.363000', '');
INSERT INTO `log` VALUES ('2a3b5d79c13f412397da97170882cecd', '查看', '5', '/menu', '菜单', NULL, '2021-04-20 17:14:26.958000', NULL);
INSERT INTO `log` VALUES ('2a8b46e756104bd8a61dba3eae86d32b', '查看', '5', '/menu', '菜单', NULL, '2021-04-19 15:08:05.587000', NULL);
INSERT INTO `log` VALUES ('2aae22c75cb44b8f958085587acc78d5', '修改', '5', '/role/form/save', '角色', '', '2021-04-15 10:36:56.025000', '');
INSERT INTO `log` VALUES ('2ac756bc9ebc42f597f847fa56f4279c', '修改', '5', '/role/form/save', '角色', '', '2021-04-15 10:34:50.119000', '');
INSERT INTO `log` VALUES ('2aee84dd45d74b62a4900d995c501f5d', '修改', '61072f70ed1e462ba1aff1edd4578b65', '/task/form/save', '课题', '', '2021-04-16 18:55:38.884000', '');
INSERT INTO `log` VALUES ('2b5e6ef3297a42238c07d5397fd45e69', '修改', '5', '/role/form/save', '角色', '', '2021-04-15 12:51:12.230000', '');
INSERT INTO `log` VALUES ('2b992746c2c946a4b021f002d2f2ed2b', '查看', '5', '/menu', '菜单', NULL, '2021-04-17 22:59:27.092000', NULL);
INSERT INTO `log` VALUES ('2badd7f4e58e4474a47c92fa053eb1e3', '修改', '5', '/office/form/save', '机构', '', '2021-04-14 22:10:38.747000', '');
INSERT INTO `log` VALUES ('2c91d89f3f1740959a038849dfb98475', '查看', '5', '/role', '角色列表', '', '2021-04-16 19:27:22.797000', '');
INSERT INTO `log` VALUES ('2d8e3151bf174adeb891e5bc4cb52dbf', '添加', '5', '/task/form/save', '课题', '', '2021-04-15 22:16:42.864000', '');
INSERT INTO `log` VALUES ('30b928110e2e4f329b982fc5370c84cd', '修改', '5', '/role/form/save', '角色', NULL, '2021-04-19 15:10:00.694000', NULL);
INSERT INTO `log` VALUES ('30d69f3653474781a07b78cd004095a3', '查看', '5', '/menu', '菜单', NULL, '2021-04-19 01:19:44.081000', NULL);
INSERT INTO `log` VALUES ('30e009b36dd949c188b754fcd6e993ea', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-18 13:12:24.427000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('312737476e844fe5996ccbfe69d8cf25', '查看', '5', '/role', '角色列表', NULL, '2021-04-17 00:09:22.293000', '');
INSERT INTO `log` VALUES ('3190955a60d04cf39804c6fc22a1f129', '查看', '5', '/role', '角色列表', '', '2021-04-16 19:27:31.304000', '');
INSERT INTO `log` VALUES ('322072cefbe244c4b0b656a15f5aff96', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 01:21:42.044000', '');
INSERT INTO `log` VALUES ('32240c273fde4354b63ef02adbfbf055', '查看', '5', '/menu', '菜单', NULL, '2021-04-19 22:53:26.583000', NULL);
INSERT INTO `log` VALUES ('32bec2c4c2f549ed8b2bd0050980892b', '查看', '5', '/menu', '菜单', NULL, '2021-04-18 18:34:27.219000', NULL);
INSERT INTO `log` VALUES ('32f05dc9c2714fafb781c1399399de65', '查看', '5', '/role', '角色列表', '', '2021-04-15 15:11:25.428000', '');
INSERT INTO `log` VALUES ('32fb92f401694f4aa8e00251c3f827cf', '查看', '5', '/role', '角色列表', '', '2021-04-15 00:24:42.522000', '');
INSERT INTO `log` VALUES ('33314fbf34c846dcb5ef33ffb4562d28', '查看', '5', '/role', '角色列表', '', '2021-04-15 10:07:14.377000', '');
INSERT INTO `log` VALUES ('33c086989fb14203ba1f43fc49e5f3db', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-17 21:13:50.081000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('345cc7a400464e31b90f053adaa4794d', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-17 21:18:32.202000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('3499ecd75dfb452fab36b7561876c1eb', '查看', '5', '/menu', '菜单', NULL, '2021-04-19 00:41:29.020000', NULL);
INSERT INTO `log` VALUES ('34cd32d6f523423c9c1cba7eb92d3f4c', '查看', '5', '/role', '角色列表', '', '2021-04-15 10:36:56.195000', '');
INSERT INTO `log` VALUES ('35630452f73742b7a5f326bf3146d6e5', '修改', '5', '/role/form/save', '角色', '', '2021-04-15 10:38:49.575000', '');
INSERT INTO `log` VALUES ('358fc7c949fc45a2b1f384ed8c4e5604', '添加', '5', '/task/form/save', '课题', '', '2021-04-15 18:21:52.168000', '');
INSERT INTO `log` VALUES ('3654be97e7574133a3969e464817e7a9', '查看', '5', '/role', '角色列表', NULL, '2021-04-19 01:29:05.403000', NULL);
INSERT INTO `log` VALUES ('36f4822d06da47dfbf7e5f268196c06d', '修改', '5', '/role/form/save', '角色', '', '2021-04-15 10:40:28.587000', '');
INSERT INTO `log` VALUES ('36fccfd7dbdd4ed6a12ed8607278384d', '添加', '61072f70ed1e462ba1aff1edd4578b65', '/task/form/save', '课题', 'b33aa2f0478b432c9c2e4f7e7487ab33', '2021-04-17 13:58:41.696000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('3829ac2d4315446bb6ea4b86688d676d', '修改', '5', '/role/form/save', '角色', '', '2021-04-15 10:33:08.607000', '');
INSERT INTO `log` VALUES ('38b2da47ebd84897a74ee665b1862529', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-17 17:16:52.223000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('38e8deeae8b94592b8e9bd8cc89177d8', '查看', '5', '/role', '角色列表', '', '2021-04-15 14:59:54.421000', '');
INSERT INTO `log` VALUES ('394e65017fb74d9bb52767b652ed4fd2', '查看', '5', '/menu', '菜单', '', '2021-04-16 21:23:44.913000', '');
INSERT INTO `log` VALUES ('39b3125dd912485ca7ece58f0046de37', '查看', '5', '/role', '角色列表', '', '2021-04-15 15:14:12.936000', '');
INSERT INTO `log` VALUES ('39cb8b6780804a87911f29e6910117f9', '查看', '5', '/role', '角色列表', NULL, '2021-04-19 22:54:40.735000', NULL);
INSERT INTO `log` VALUES ('39e1e1c9c68b48b38881329260a47c16', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-17 23:11:30.255000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('3a17c2d124014fffb07642961dca5a67', '添加', '61072f70ed1e462ba1aff1edd4578b65', '/task/form/save', '课题', '', '2021-04-16 10:54:40.081000', '');
INSERT INTO `log` VALUES ('3afe5c70e58a46f7bad92f6d7167c367', '查看', '5', '/menu', '菜单', NULL, '2021-04-19 22:53:56.405000', NULL);
INSERT INTO `log` VALUES ('3b27195cd785467b851eb6536d7b1ffb', '添加', '5', '/menu/form/save', '菜单', NULL, '2021-04-19 17:20:00.641000', NULL);
INSERT INTO `log` VALUES ('3b36257ed52f442eaa411bb8113e184e', '查看', '5', '/role', '角色列表', NULL, '2021-04-19 22:54:56.189000', NULL);
INSERT INTO `log` VALUES ('3b6aa753b4e8420e8594ec41769d2319', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 01:22:50.061000', '');
INSERT INTO `log` VALUES ('3cf77a40176c4e52bbb6562f5e965772', '修改', '5', '/role/form/save', '角色', '', '2021-04-15 15:28:38.155000', '');
INSERT INTO `log` VALUES ('3de471e7b7434fff9764e696d388dfea', '查看', '5', '/role', '角色列表', '', '2021-04-15 16:46:55.784000', '');
INSERT INTO `log` VALUES ('3e8e92b44f4f43d58092781339d572c1', '查看', '5', '/role', '角色列表', '', '2021-04-15 10:34:38.331000', '');
INSERT INTO `log` VALUES ('3ed2638009a644f8841eec1e5c8aac49', '添加', '5', '/menu/form/save', '菜单', NULL, '2021-04-18 09:56:01.457000', NULL);
INSERT INTO `log` VALUES ('3fe32038dfff46029fcea679267f32e7', '查看', '5', '/role', '角色列表', '', '2021-04-15 15:26:16.725000', '');
INSERT INTO `log` VALUES ('400bec5048464ec19e2c8a36b051dc2f', '删除', '5', '/menu/delete', '菜单', NULL, '2021-04-17 21:07:42.750000', NULL);
INSERT INTO `log` VALUES ('40d9975c7d4d49ab947251967b760320', '查看', '5', '/menu', '菜单', NULL, '2021-04-20 17:13:48.840000', NULL);
INSERT INTO `log` VALUES ('41896b6e235a43b49ee7595b7f49e21c', '查看', '5', '/menu', '菜单', '', '2021-04-16 20:00:21.639000', '');
INSERT INTO `log` VALUES ('41c3b042e580430ebbad6d49cb4b59ce', '添加', '5', '/user/form/save', '用户', '', '2021-04-15 21:50:47.243000', '');
INSERT INTO `log` VALUES ('427ea609dafa41a89312ad455878a8eb', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-17 17:14:51.881000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('428aef79c40048629f66053f3d1fcf91', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-17 22:49:06.774000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('443013af714e4ba48b8ba1e60f7f83ec', '查看', '5', '/role', '角色列表', '', '2021-04-15 10:38:03.966000', '');
INSERT INTO `log` VALUES ('448cd6607e80408ba937c101bde25498', '查看', '5', '/role', '角色列表', '', '2021-04-15 10:38:57.162000', '');
INSERT INTO `log` VALUES ('4505ff62257446f09fc625b152b35220', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 01:06:51.936000', '');
INSERT INTO `log` VALUES ('453dfcefa8104001abf4a1534f9f9b70', '查看', '5', '/role', '角色列表', NULL, '2021-04-20 00:14:41.309000', NULL);
INSERT INTO `log` VALUES ('454c667ae8b54f0f97788cc26b8aff4e', '通过', '9fc64c0a260b48dfbe56dab66dfba382', '/task/audit/double', '双选课题审核', 'ca90e2682c104bed8b9926134d5191e8', '2021-04-17 09:31:37.760000', '');
INSERT INTO `log` VALUES ('45a50f4c40724d30af3cd078d4387589', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 21:56:09.599000', '');
INSERT INTO `log` VALUES ('45e9257d60b1406cb6659185f06e051d', '查看', '5', '/menu', '菜单', NULL, '2021-04-17 00:09:04.913000', '');
INSERT INTO `log` VALUES ('461c90bf4086475abb1f972807ee7327', '修改', '61072f70ed1e462ba1aff1edd4578b65', '/task/form/save', '课题', '', '2021-04-16 15:05:34.275000', '');
INSERT INTO `log` VALUES ('46582a8724e6462989fa36be6f9a539f', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 00:26:45.939000', '');
INSERT INTO `log` VALUES ('46a638c84fc44266a06950e3c8c5802e', '查看', '5', '/role', '角色列表', '', '2021-04-15 10:06:45.481000', '');
INSERT INTO `log` VALUES ('4709e73a98774ea5a71a99823b40cac7', '通过', '9fc64c0a260b48dfbe56dab66dfba382', '/task/audit/teacherassignTask', '双选课题审核', 'bf4b6c0b1dfb4d1ab24b24443a07dcfd', '2021-04-19 17:07:37.227000', 'd7b3b776a37a4cc4986da4409a173d98');
INSERT INTO `log` VALUES ('471b2c3c00d54ffca3c497e4a8c007c3', '查看', '5', '/role', '角色列表', NULL, '2021-04-18 10:02:00.757000', NULL);
INSERT INTO `log` VALUES ('482407028f43430d8a1301c71d2b5f61', '查看', '5', '/office', '机构', '', '2021-04-14 20:18:26.555000', '');
INSERT INTO `log` VALUES ('48bb15e5e64540ec90fcf2c3e250d536', '查看', '', '/office', '机构', '', '2021-04-14 19:21:45.773000', '');
INSERT INTO `log` VALUES ('491171ea53104ddbb2259f75c6eed59b', '查看', '5', '/menu', '菜单', NULL, '2021-04-19 01:28:57.115000', NULL);
INSERT INTO `log` VALUES ('49be4a1c75f440c784998779315be058', '查看', '5', '/role', '角色列表', NULL, '2021-04-19 15:10:00.884000', NULL);
INSERT INTO `log` VALUES ('4aeda1f5e74645a3b6cf6bb31164d54d', '查看', '5', '/role', '角色列表', NULL, '2021-04-19 01:29:11.636000', NULL);
INSERT INTO `log` VALUES ('4bd8b8e0991144b99368dd072e96cae1', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-14 23:48:25.078000', '');
INSERT INTO `log` VALUES ('4bdd2b1320674af0babbf58427f64900', '查看', '5', '/role', '角色列表', '', '2021-04-15 14:14:24.850000', '');
INSERT INTO `log` VALUES ('4c3387741ca249899c70000d4f2879f3', '修改', '5', '/menu/form/save', '菜单', NULL, '2021-04-19 15:08:54.054000', NULL);
INSERT INTO `log` VALUES ('4d37f81ce60347ee9b309422ca0a3464', '查看', '5', '/role', '角色列表', NULL, '2021-04-17 23:00:16.932000', NULL);
INSERT INTO `log` VALUES ('4d5c89f267a5452f9e21bd61540863a6', '查看', '5', '/menu', '菜单', NULL, '2021-04-18 09:56:22.282000', NULL);
INSERT INTO `log` VALUES ('4e08a06641594d38973d8044305627c6', '添加', '5', '/task/form/save', '课题', '', '2021-04-15 20:11:50.122000', '');
INSERT INTO `log` VALUES ('4e0af3d7633e4d78a866aaf31d1c3be5', '查看', '5', '/menu', '菜单', NULL, '2021-04-17 21:08:01.505000', NULL);
INSERT INTO `log` VALUES ('4fad59762df04b99989278ed7ebbcc4c', '查看', '5', '/menu', '菜单', NULL, '2021-04-20 14:03:55.943000', NULL);
INSERT INTO `log` VALUES ('50948109343a4536a69e48f2927ebf66', '修改', '5', '/role/form/save', '角色', NULL, '2021-04-18 10:02:06.255000', NULL);
INSERT INTO `log` VALUES ('5138578810614f2dbe72cbf783be9e79', '查看', '5', '/menu', '菜单', NULL, '2021-04-17 21:43:27.739000', NULL);
INSERT INTO `log` VALUES ('51614bcadcdb41c99d8b58292d482236', '修改', '5', '/role/form/save', '角色', '', '2021-04-15 14:59:39.187000', '');
INSERT INTO `log` VALUES ('520243cc5fa3458bb13e8785f519ec8e', '查看', '5', '/menu', '菜单', NULL, '2021-04-19 01:28:38.763000', NULL);
INSERT INTO `log` VALUES ('52855b374246447e82bef92103989894', '修改', '5', '/menu/form/save', '菜单', NULL, '2021-04-20 15:07:17.239000', NULL);
INSERT INTO `log` VALUES ('52f3346b113c40469dcdf8cbc13faafd', '查看', '5', '/role', '角色列表', NULL, '2021-04-19 00:42:24.981000', NULL);
INSERT INTO `log` VALUES ('5313fc00995e45518156be950c039ebb', '查看', '5', '/role', '角色列表', NULL, '2021-04-20 00:59:06.656000', NULL);
INSERT INTO `log` VALUES ('531aa654415c447781a8e004aa7af920', '查看', '5', '/role', '角色列表', '', '2021-04-15 14:24:41.464000', '');
INSERT INTO `log` VALUES ('545fdb148d76467e9181a89c4f3f8c94', '查看', '5', '/role', '角色列表', '', '2021-04-15 13:16:20.553000', '');
INSERT INTO `log` VALUES ('5480fafbd984476090448bcb50a8d32d', '查看', '5', '/menu', '菜单', '', '2021-04-16 19:20:04.089000', '');
INSERT INTO `log` VALUES ('54ac7f7c1c7d4a628c931f054c843653', '查看', '5', '/menu', '菜单', NULL, '2021-04-19 18:29:01.088000', NULL);
INSERT INTO `log` VALUES ('54bd78aa461846498c9b6d0a7d880ffc', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-14 23:59:43.772000', '');
INSERT INTO `log` VALUES ('551ebac1c59543f18a9cff94c0f57942', '查看', '5', '/office', '机构', NULL, '2021-04-17 21:06:31.884000', NULL);
INSERT INTO `log` VALUES ('560f4f1a4bcc4d88a90ce882c0cedcc8', '查看', '5', '/menu', '菜单', '', '2021-04-15 20:26:06.828000', '');
INSERT INTO `log` VALUES ('560facb40b5b47709da0d3ecfc00684b', '查看', '5', '/menu', '菜单', NULL, '2021-04-17 22:52:40.775000', NULL);
INSERT INTO `log` VALUES ('567ec420e3e44b43a658d74816930528', '查看', '5', '/office', '机构', '', '2021-04-15 14:51:23.645000', '');
INSERT INTO `log` VALUES ('569686e0566b4bd18aa92458c87dbae6', '查看', '5', '/menu', '菜单', NULL, '2021-04-20 14:03:03.030000', NULL);
INSERT INTO `log` VALUES ('570711a675ff4e62885ad598bebec576', '查看', '5', '/menu', '菜单', '', '2021-04-16 22:18:51.717000', '');
INSERT INTO `log` VALUES ('570fcb673c2e4bd2a54628584b68275f', '添加', '5', '/user/form/save', '用户', '', '2021-04-15 21:56:59.230000', '');
INSERT INTO `log` VALUES ('57a05450732c41d9b7347583103e8302', '添加', '5', '/menu/form/save', '菜单', NULL, '2021-04-18 23:33:28.784000', NULL);
INSERT INTO `log` VALUES ('57c0a09c49af41f89301fbeeef51e337', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-17 21:18:13.298000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('57fe3b22f0d044879285ec8da3a89822', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 21:56:11.514000', '');
INSERT INTO `log` VALUES ('584c52a2c4584d139b0e22ab1785751b', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 00:26:53.349000', '');
INSERT INTO `log` VALUES ('58731ea7cb49441e9c330c95578d2050', '查看', '5', '/menu', '菜单', NULL, '2021-04-19 00:42:16.810000', NULL);
INSERT INTO `log` VALUES ('58b0ef0c03434438b44f265906b62812', '查看', '5', '/office', '机构', '', '2021-04-16 19:19:50.550000', '');
INSERT INTO `log` VALUES ('597c0c0efd014da1bf51843408312a3b', '查看', '5', '/menu', '菜单', NULL, '2021-04-19 17:20:00.716000', NULL);
INSERT INTO `log` VALUES ('59b1fab253c04f2091541cce09a1a10e', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 00:37:45.168000', '');
INSERT INTO `log` VALUES ('59e7bed9a5894dbe80186ca2d91f7aec', '查看', '5', '/role', '角色列表', NULL, '2021-04-19 00:42:35.595000', NULL);
INSERT INTO `log` VALUES ('59ffd56017264e19862fb26f0534d75b', '添加', '5', '/user/form/save', '用户', '', '2021-04-15 18:31:55.810000', '');
INSERT INTO `log` VALUES ('5a331a9fab504827b3ceee1eed689bad', '查看', '5', '/role', '角色列表', '', '2021-04-15 10:36:40.595000', '');
INSERT INTO `log` VALUES ('5aa712bd929341b5845587d504361be7', '查看', '5', '/menu', '菜单', NULL, '2021-04-20 16:00:13.076000', NULL);
INSERT INTO `log` VALUES ('5aa79639e05241de843602c284206619', '查看', '5', '/office', '机构', '', '2021-04-16 10:55:28.715000', '');
INSERT INTO `log` VALUES ('5b036767b8a04bfda6d12c6a8fe2551e', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 01:21:55.392000', '');
INSERT INTO `log` VALUES ('5bf437ac64914bd4b1c28627a1c8e26f', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-17 17:16:41.199000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('5c1435f368004d57b1507a2dfe4ba73b', '修改', '5', '/role/form/save', '角色', '', '2021-04-15 13:16:20.351000', '');
INSERT INTO `log` VALUES ('5d05597661964e3a903e0ede16fd302c', '添加', '5', '/menu/form/save', '菜单', NULL, '2021-04-19 22:58:10.836000', NULL);
INSERT INTO `log` VALUES ('5db9bf4c18184aa895f7e10100fcac6f', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 00:38:35.793000', '');
INSERT INTO `log` VALUES ('5de57c2d59994655bbef09b703532d24', '查看', '5', '/menu', '菜单', '', '2021-04-14 22:17:18.606000', '');
INSERT INTO `log` VALUES ('5e427ff33eb94726af6c8cbf6e816d70', '添加', '5', '/office/form/save', '机构', '', '2021-04-14 22:10:30.577000', '');
INSERT INTO `log` VALUES ('5e4479124b994ce19d7d501313ce8a2b', '修改', '5', '/menu/form/save', '菜单', '', '2021-04-16 19:25:33.303000', '');
INSERT INTO `log` VALUES ('5e51ca011fe44863b7275a95c8d28af9', '添加', '61072f70ed1e462ba1aff1edd4578b65', '/task/form/save', '课题', '', '2021-04-16 15:48:35.984000', '');
INSERT INTO `log` VALUES ('5fa22ec658f84621bb2f25ac5850cfd0', '查看', '5', '/role', '角色列表', '', '2021-04-15 13:11:31.231000', '');
INSERT INTO `log` VALUES ('605b84c6b70448519893ea1bd87e95f5', '查看', '5', '/role', '角色列表', '', '2021-04-15 14:29:00.111000', '');
INSERT INTO `log` VALUES ('60e7ba9cddd646539611570cfb6c2c19', '通过', '9fc64c0a260b48dfbe56dab66dfba382', '/task/audit/double', '双选课题审核', '78e7c947a66049c689b427bfcce55089', '2021-04-17 13:59:16.372000', 'd7b3b776a37a4cc4986da4409a173d98');
INSERT INTO `log` VALUES ('61141d73123242e393ecf200b7bcff71', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 00:33:15.437000', '');
INSERT INTO `log` VALUES ('619b880925bd442a86bf12f4339d657e', '添加', '5', '/menu/form/save', '菜单', NULL, '2021-04-18 18:35:23.600000', NULL);
INSERT INTO `log` VALUES ('6259628b87684b92ac66aef9c913d348', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 00:34:25.761000', '');
INSERT INTO `log` VALUES ('629a178b5edf4ed397eb715979fff474', '查看', '', '/office', '机构', '', '2021-04-14 19:31:37.802000', '');
INSERT INTO `log` VALUES ('62b5d7b08c1943fdaa55030b87aab9f3', '修改', '5', '/role/form/save', '角色', '', '2021-04-15 14:05:08.455000', '');
INSERT INTO `log` VALUES ('62df05aa4b5d4ba8bc47230b3de608a2', '查看', '5', '/menu', '菜单', NULL, '2021-04-18 09:56:26.102000', NULL);
INSERT INTO `log` VALUES ('6345cf4dac874d4caa9f0ad07032db8e', '添加', '5', '/user/form/save', '用户', '', '2021-04-15 21:48:29.581000', '');
INSERT INTO `log` VALUES ('6352f6c37d42425a98803498dc781622', '查看', '', '/menu', '菜单', '', '2021-04-14 17:53:49.627000', '');
INSERT INTO `log` VALUES ('6393ecc61b3d4d6dbca2ea1d73df8e17', '修改', '5', '/role/form/save', '角色', '', '2021-04-15 10:38:56.942000', '');
INSERT INTO `log` VALUES ('63d1a10931024013985cf134c41dfb73', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 01:21:50.448000', '');
INSERT INTO `log` VALUES ('640ae754425d4b18b737edacfdb0c3f7', '查看', '5', '/menu', '菜单', NULL, '2021-04-17 00:35:06.490000', '');
INSERT INTO `log` VALUES ('64c6b670398b41a4aa660e3ad30cffb3', '修改', '5', '/menu/form/save', '菜单', '', '2021-04-15 20:26:06.756000', '');
INSERT INTO `log` VALUES ('64db87da6fc6427e9916c18ae25f548e', '查看', '5', '/role', '角色列表', '', '2021-04-15 10:26:40.328000', '');
INSERT INTO `log` VALUES ('65847fbd45784bdaae7e8e29008d417b', '查看', '5', '/role', '角色列表', '', '2021-04-15 14:02:42.434000', '');
INSERT INTO `log` VALUES ('6769edad71884059a230ecc538a4e0fb', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-14 23:48:30.675000', '');
INSERT INTO `log` VALUES ('67f171420a1245888894dd0a7e347b62', '查看', '5', '/role', '角色列表', NULL, '2021-04-18 10:02:06.453000', NULL);
INSERT INTO `log` VALUES ('6815cec86d6b4a23b126269a123dc903', '添加', '5', '/task/form/save', '课题', '', '2021-04-15 18:13:43.910000', '');
INSERT INTO `log` VALUES ('682f9d9c0da7438c9882a7f5eace9d2c', '添加', '5', '/menu/form/save', '菜单', NULL, '2021-04-17 21:07:56.104000', NULL);
INSERT INTO `log` VALUES ('68849655f8ea40c0af7569741cfb3cfb', '通过', '9fc64c0a260b48dfbe56dab66dfba382', '/task/audit/double', '双选课题审核', 'ad5cf43241444ece9674afb5592c1be9', '2021-04-17 13:59:17.157000', 'd7b3b776a37a4cc4986da4409a173d98');
INSERT INTO `log` VALUES ('68c9fe0aa8834fcfa3f217f28cda2050', '查看', '5', '/role', '角色列表', '', '2021-04-14 23:05:53.036000', '');
INSERT INTO `log` VALUES ('69122c5311b245be8bc15db420724af3', '查看', '', '/office', '机构', '', '2021-04-14 19:31:45.029000', '');
INSERT INTO `log` VALUES ('6920d5738898485fa42783385ad41779', '查看', '5', '/role', '角色列表', '', '2021-04-15 13:06:05.480000', '');
INSERT INTO `log` VALUES ('6968e9aff4c9449c8d2baef01e75e43c', '查看', '5', '/role', '角色列表', '', '2021-04-14 23:15:52.172000', '');
INSERT INTO `log` VALUES ('6977646e73314716a6915b0cb8c6f088', '查看', '5', '/office', '机构', '', '2021-04-14 20:20:19.055000', '');
INSERT INTO `log` VALUES ('69c4044790634ddb9008bf868f75888e', '添加', '61072f70ed1e462ba1aff1edd4578b65', '/task/form/save', '课题', '02b3e5cf44304133a677080019dc56d3', '2021-04-17 13:54:49.706000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('69da903eb1ef439fa2eb2028fbc3436a', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 00:50:10.266000', '');
INSERT INTO `log` VALUES ('6a4519b7cab849e8b1bdfe47462317d4', '查看', '5', '/menu', '菜单', NULL, '2021-04-19 01:01:58.287000', NULL);
INSERT INTO `log` VALUES ('6b09707c4260429991eb22bfcb70c7ec', '查看', '5', '/menu', '菜单', '', '2021-04-14 22:16:49.496000', '');
INSERT INTO `log` VALUES ('6b698a9459ac41c1890bb04fa5f576c0', '查看', '5', '/menu', '菜单', NULL, '2021-04-19 00:58:17.722000', NULL);
INSERT INTO `log` VALUES ('6bbd0d3c808e47ef83c01b616fe7c6a2', '查看', '5', '/role', '角色列表', NULL, '2021-04-19 22:54:46.329000', NULL);
INSERT INTO `log` VALUES ('6beae29430384b688aaa0f57337f230e', '添加', '5', '/menu/form/save', '菜单', '', '2021-04-16 19:26:55.792000', '');
INSERT INTO `log` VALUES ('6c477c6f912e4c94bfa8bbb0f2ad9112', '添加', '61072f70ed1e462ba1aff1edd4578b65', '/task/form/save', '课题', '', '2021-04-15 22:19:33.271000', '');
INSERT INTO `log` VALUES ('6c7567a35abb4fc2a4181582a435a58f', '添加', '5', '/user/form/saveUserRoleForm', '用户角色', NULL, '2021-04-17 00:09:58.509000', '');
INSERT INTO `log` VALUES ('6d78ab58e70846dc8441982328587fd3', '查看', '5', '/menu', '菜单', NULL, '2021-04-19 01:30:38.599000', NULL);
INSERT INTO `log` VALUES ('6e8e3e9aa18243f09bca784e0ea3633d', '查看', '5', '/menu', '菜单', NULL, '2021-04-19 00:42:50.568000', NULL);
INSERT INTO `log` VALUES ('6e9045aa11054fdeb242a4217fc34553', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-17 13:55:15.844000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('6e93e19d06db4b6bb0951f45661038d3', '查看', '5', '/menu', '菜单', NULL, '2021-04-20 00:14:43.690000', NULL);
INSERT INTO `log` VALUES ('6ebb3314ce8f49659643c0a8edb976dd', '查看', '吴家剑', '/menu', '菜单', '', '2021-04-14 17:55:06.820000', '');
INSERT INTO `log` VALUES ('712a92942d9045088c64010e3a2c257e', '添加', '5', '/user/form/saveUserRoleForm', '用户角色', '', '2021-04-15 00:16:55.934000', '');
INSERT INTO `log` VALUES ('7188af426e0f4833887ac08eab68cfcc', '查看', '5', '/menu', '菜单', NULL, '2021-04-17 21:07:56.157000', NULL);
INSERT INTO `log` VALUES ('71b1ef5a762d4300b0040ff17b6f41b7', '查看', '5', '/menu', '菜单', NULL, '2021-04-17 23:17:52.914000', NULL);
INSERT INTO `log` VALUES ('7294db2069824506afdd21d4f0daee36', '修改', '5', '/menu/form/save', '菜单', '', '2021-04-15 18:24:46.734000', '');
INSERT INTO `log` VALUES ('732518324d514d618ec74f45cc9d645d', '修改', '5', '/role/form/save', '角色', '', '2021-04-15 10:26:39.994000', '');
INSERT INTO `log` VALUES ('73e8b7e74ab14d00968db76b819cf99d', '查看', '5', '/role', '角色列表', '', '2021-04-15 15:28:33.108000', '');
INSERT INTO `log` VALUES ('7409e5cc84214af996699d8a1633e596', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 01:22:39.695000', '');
INSERT INTO `log` VALUES ('754b41ece1b94af48ce10d6057ebb68a', '查看', '5', '/menu', '菜单', NULL, '2021-04-19 22:53:07.790000', NULL);
INSERT INTO `log` VALUES ('75c28b80e3ff49bd9df41e00b76d3ffc', '查看', '5', '/role', '角色列表', NULL, '2021-04-19 22:54:51.394000', NULL);
INSERT INTO `log` VALUES ('75cd16009aaa4f30a3c91eb7e181e436', '添加', '61072f70ed1e462ba1aff1edd4578b65', '/task/form/save', '课题', '', '2021-04-15 22:23:29.097000', '');
INSERT INTO `log` VALUES ('75ea7093fda243cfa9105f684e170bbf', '查看', '5', '/menu', '菜单', NULL, '2021-04-19 15:34:59.068000', NULL);
INSERT INTO `log` VALUES ('763c1a56d9354fb98b3e73da3f37cc4f', '升级', '5', '/office/updateSort', '机构排序', '', '2021-04-14 22:11:03.339000', '');
INSERT INTO `log` VALUES ('764dc31c26604b5d8c35779659745c63', '修改', '5', '/role/form/save', '角色', '', '2021-04-15 13:06:12.714000', '');
INSERT INTO `log` VALUES ('769cb54f4d4a43c0a97219cf2d86f268', '查看', '5', '/role', '角色列表', '', '2021-04-15 00:33:09.433000', '');
INSERT INTO `log` VALUES ('769e65fea5f845a1904e106983c5d176', '修改', '5', '/role/form/save', '角色', '', '2021-04-15 12:51:12.590000', '');
INSERT INTO `log` VALUES ('76b70a8b64564521801495c20fca4cef', '查看', '5', '/menu', '菜单', NULL, '2021-04-20 15:58:01.650000', NULL);
INSERT INTO `log` VALUES ('78a33e8f4f44407d98a5052084e9d300', '修改', '5', '/role/form/save', '角色', '', '2021-04-15 14:58:11.686000', '');
INSERT INTO `log` VALUES ('78abfe0aef30441190227090dec3bd27', '添加', '5', '/task/form/save', '课题', '', '2021-04-15 19:27:20.252000', '');
INSERT INTO `log` VALUES ('78fb1b8c82e944e684eab528c9179b2e', '修改', '61072f70ed1e462ba1aff1edd4578b65', '/task/form/save', '课题', '', '2021-04-16 15:24:15.640000', '');
INSERT INTO `log` VALUES ('7966922631524401aba748b59ca531bc', '修改', '5', '/role/form/save', '角色', '', '2021-04-15 10:36:48.417000', '');
INSERT INTO `log` VALUES ('7a3f63aaa6694a49a2a98a964360a8d4', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 00:27:20.080000', '');
INSERT INTO `log` VALUES ('7a7db520834b470a859965b944d901f1', '查看', '5', '/office', '机构', '', '2021-04-15 14:14:23.103000', '');
INSERT INTO `log` VALUES ('7b56f9ba15b34079bed2aeed52e670ef', '查看', '5', '/office', '机构', NULL, '2021-04-20 00:14:44.929000', NULL);
INSERT INTO `log` VALUES ('7b62a44cdf9946998e4704e49d506600', '添加', '61072f70ed1e462ba1aff1edd4578b65', '/task/form/save', '课题', '47fc1693b662400fba1b1579ff3727d0', '2021-04-17 13:55:14.351000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('7ba2541a71a040c6b61839512314838e', '修改', '5', '/role/form/save', '角色', NULL, '2021-04-17 00:09:22.080000', '');
INSERT INTO `log` VALUES ('7ba2ca86e9214cbe8b70fad92ad3cc13', '不通过', '9fc64c0a260b48dfbe56dab66dfba382', '/task/audit/teacherassignTask', '双选课题审核', 'bf4b6c0b1dfb4d1ab24b24443a07dcfd', '2021-04-19 17:12:57.220000', 'd7b3b776a37a4cc4986da4409a173d98');
INSERT INTO `log` VALUES ('7bd81c548e224e51a4b76519183efdcf', '升级', '5', '/office/updateSort', '机构排序', '', '2021-04-14 22:10:56.597000', '');
INSERT INTO `log` VALUES ('7bf5608c40e6437a89c42edbc657a966', '修改', '5', '/role/form/save', '角色', NULL, '2021-04-18 18:37:04.969000', NULL);
INSERT INTO `log` VALUES ('7c2aba46d1eb4fb9b384619bdd2bd1d5', '修改', '61072f70ed1e462ba1aff1edd4578b65', '/task/form/save', '课题', '', '2021-04-16 15:12:58.257000', '');
INSERT INTO `log` VALUES ('7cfa8a3a86424c2585944d68ef439074', '查看', '5', '/menu', '菜单', NULL, '2021-04-19 00:42:07.779000', NULL);
INSERT INTO `log` VALUES ('7d5639039f8248ae8ec9e8c70daf6242', '查看', '5', '/menu', '菜单', NULL, '2021-04-20 00:18:03.715000', NULL);
INSERT INTO `log` VALUES ('7d5a7df7bc304363b6fc084f07277897', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-18 16:43:26.126000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('7ecd3d06edc84073abd160d84028c841', '查看', '5', '/menu', '菜单', NULL, '2021-04-19 00:41:07.461000', NULL);
INSERT INTO `log` VALUES ('7f3e5b7d3fc9473ebfdeda03a3245609', '修改', '61072f70ed1e462ba1aff1edd4578b65', '/task/form/save', '课题', '', '2021-04-16 18:25:56.388000', '');
INSERT INTO `log` VALUES ('7fd988709c124548822d64e403551861', '查看', '5', '/menu', '菜单', NULL, '2021-04-20 09:11:29.913000', NULL);
INSERT INTO `log` VALUES ('800061796db74cf4b237dd372df1d8d6', '查看', '5', '/office', '机构', '', '2021-04-14 22:10:30.628000', '');
INSERT INTO `log` VALUES ('801a515f5b9f46779d2e05fec6d6b015', '修改', '5', '/role/form/save', '角色', NULL, '2021-04-18 21:31:30.881000', NULL);
INSERT INTO `log` VALUES ('804297f3964e45e1b68281ddbeb149ca', '查看', '5', '/menu', '菜单', NULL, '2021-04-18 21:31:20.866000', NULL);
INSERT INTO `log` VALUES ('82137a03ab2e4154bf740d3c7df0f7b0', '查看', '5', '/menu', '菜单', NULL, '2021-04-20 14:03:25.237000', NULL);
INSERT INTO `log` VALUES ('824d6f8b999a4c32b850c69fb5e3ec43', '查看', '5', '/role', '角色列表', '', '2021-04-15 14:29:19.184000', '');
INSERT INTO `log` VALUES ('825a4898571c4b188f35aea4da3e65be', '查看', '010f53d2ae4c44d7b0319bebb5dc70c5', '/menu', '菜单', NULL, '2021-04-17 16:26:32.989000', '29da68c34c8747fc83640485639d63dd');
INSERT INTO `log` VALUES ('827c3fc2761b43d7a52337922d2ecdda', '修改', '5', '/role/form/save', '角色', '', '2021-04-15 13:43:02.609000', '');
INSERT INTO `log` VALUES ('8295842547b840ada4c61e1fc49f4eeb', '添加', '5', '/menu/form/save', '菜单', NULL, '2021-04-18 21:05:49.085000', NULL);
INSERT INTO `log` VALUES ('82dc7b488eb84e62834bd5795b701f7b', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 01:21:54.796000', '');
INSERT INTO `log` VALUES ('839dd6e0105d4086825ba9de769d21bf', '查看', '5', '/menu', '菜单', NULL, '2021-04-18 18:37:20.111000', NULL);
INSERT INTO `log` VALUES ('85dd83acc9074d059dde069e03072343', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-18 18:51:43.830000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('8643d7d5776046c4b7a5d6c3733084da', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-17 21:19:50.548000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('86d61724591c4092a26f745591f62228', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-14 23:48:33.396000', '');
INSERT INTO `log` VALUES ('86ec474f647a4e67b0ab3e5a6be06a5e', '查看', '5', '/menu', '菜单', '', '2021-04-16 19:26:42.090000', '');
INSERT INTO `log` VALUES ('872178b4c83c43c2b9121226ac72f2cd', '添加', '5', '/menu/form/save', '菜单', NULL, '2021-04-19 00:42:03.900000', NULL);
INSERT INTO `log` VALUES ('87afd4360cbb4ababbda118d05486f3e', '查看', '5', '/menu', '菜单', NULL, '2021-04-20 16:32:47.471000', NULL);
INSERT INTO `log` VALUES ('880dcc4ecc9f45598ae64eebdc4a32c4', '查看', '5', '/menu', '菜单', '', '2021-04-16 20:01:06.072000', '');
INSERT INTO `log` VALUES ('88222844520044d09dc7abea9cc2df77', '修改', '5', '/role/form/save', '角色', NULL, '2021-04-19 22:54:56.051000', NULL);
INSERT INTO `log` VALUES ('883796a9b8314bb691d47a454b3537ae', '查看', '5', '/role', '角色列表', NULL, '2021-04-17 00:06:35.938000', '');
INSERT INTO `log` VALUES ('8845e922975c4912b2639a398dc7aa2f', '查看', '5', '/role', '角色列表', '', '2021-04-15 14:52:32.797000', '');
INSERT INTO `log` VALUES ('884e43853baf4e6785dca651d95341b3', '查看', '5', '/office', '机构', '', '2021-04-16 19:20:17.935000', '');
INSERT INTO `log` VALUES ('8867929f3fc8421fa7ffe6419506082e', '修改', '5', '/role/form/save', '角色', '', '2021-04-15 16:13:38.512000', '');
INSERT INTO `log` VALUES ('88805965095c4cb8909b2c7e61373a0f', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-17 21:38:58.669000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('88883add2e01456d9698e647d8af4f0a', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-17 21:18:37.573000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('888d8e9579b947c5b7f53d90cf65ccad', '确认不通过', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/task/chosenstudent', '双选课题选择', '61a4affeaf3f4ec1bde1c43a89d907b4', '2021-04-18 20:32:22.985000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('88bd9d6d7a194f0494495877eb5b088c', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-17 17:17:35.177000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('890801ac0da64ea2bd56f89acfb65175', '修改', '5', '/role/form/save', '角色', NULL, '2021-04-19 01:29:17.052000', NULL);
INSERT INTO `log` VALUES ('891e93162f23463789d04e1cf160d4db', '查看', '5', '/menu', '菜单', '', '2021-04-16 19:26:37.097000', '');
INSERT INTO `log` VALUES ('89535dc2f0b14d22baaf80fe244e8bd1', '修改', '5', '/menu/updateSort', '菜单排序', '', '2021-04-14 22:17:18.521000', '');
INSERT INTO `log` VALUES ('89745daa0f95430aba3069826f1297c1', '查看', '5', '/role', '角色列表', '', '2021-04-15 13:43:02.786000', '');
INSERT INTO `log` VALUES ('8a0cc962dd37442a87ebb08d1e661f19', '查看', '', '/office', '机构', '', '2021-04-14 19:19:46.669000', '');
INSERT INTO `log` VALUES ('8ac9020591f54c1eb54c3730caf145d8', '删除', '5', '/menu/delete', '菜单', NULL, '2021-04-19 00:42:07.728000', NULL);
INSERT INTO `log` VALUES ('8b01defe8e124c8f8754f0cddfb11720', '查看', '5', '/role', '角色列表', '', '2021-04-15 00:20:33.861000', '');
INSERT INTO `log` VALUES ('8bc27aa6b30c46deaae01685a782012c', '查看', '5', '/role', '角色列表', NULL, '2021-04-17 00:09:09.406000', '');
INSERT INTO `log` VALUES ('8c5910b79751400faaa3b161c8cda726', '查看', '5', '/menu', '菜单', NULL, '2021-04-18 10:01:58.700000', NULL);
INSERT INTO `log` VALUES ('8c67fad20b8141988b7f2a34987a6a1b', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 00:37:43.379000', '');
INSERT INTO `log` VALUES ('8ca62f1ca1c5488ebe7a6a0dfb8dd914', '删除', '5', '/menu/delete', '菜单', '', '2021-04-14 22:16:58.609000', '');
INSERT INTO `log` VALUES ('8cd75628af344b4fb7f643faa2b1ed02', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-18 16:35:30.683000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('8e815e33466c43e9987a6c44081e1df6', '查看', '5', '/role', '角色列表', '', '2021-04-15 14:59:43.225000', '');
INSERT INTO `log` VALUES ('8ee1899863124c42aac1fb3be1571906', '查看', '5', '/role', '角色列表', '', '2021-04-15 10:34:50.366000', '');
INSERT INTO `log` VALUES ('8eec5132d5b8436abd74748e2752e028', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 21:56:06.074000', '');
INSERT INTO `log` VALUES ('8ef7b393190a44249b4b3e0f603876d9', '查看', '5', '/menu', '菜单', '', '2021-04-16 11:02:16.052000', '');
INSERT INTO `log` VALUES ('8f00e6c18a824450ad887b30b59a8533', '修改', '5', '/role/form/save', '角色', '', '2021-04-15 14:59:43.039000', '');
INSERT INTO `log` VALUES ('8f1ae4edf31f4666a46451cda9a186c5', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 01:03:18.331000', '');
INSERT INTO `log` VALUES ('8f594be424684921b7fe78b38fbbdabb', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-17 22:48:58.809000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('8f8872df3a1d4b6fb0f378f9d888f5fe', '修改', '5', '/menu/form/save', '菜单', NULL, '2021-04-17 00:25:46.142000', '');
INSERT INTO `log` VALUES ('8f9080926d02401b8b7d7553c0cc8138', '通过', '9fc64c0a260b48dfbe56dab66dfba382', '/task/audit/double', '双选课题审核', '443bbf81cdea423a8d83976cd886a6da', '2021-04-17 13:59:15.312000', 'd7b3b776a37a4cc4986da4409a173d98');
INSERT INTO `log` VALUES ('9170270d8b8546d184af51ad108ed4e7', '修改', '5', '/menu/form/save', '菜单', NULL, '2021-04-17 22:54:54.109000', NULL);
INSERT INTO `log` VALUES ('92736c154ea84e5d9df18be06144bccd', '查看', '5', '/office', '机构', '', '2021-04-14 19:38:51.913000', '');
INSERT INTO `log` VALUES ('927dad98822b44198ba2d86d40ec0e56', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-18 18:51:48.978000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('92ec73fc30bc4d088039295dc7ba79c9', '查看', '5', '/role', '角色列表', NULL, '2021-04-18 18:36:58.254000', NULL);
INSERT INTO `log` VALUES ('9334638d61a1480eb5b6f4251fa854d8', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 01:21:43.444000', '');
INSERT INTO `log` VALUES ('939c6c1830264bdcbf6ce8fc4a35d034', '查看', '5', '/menu', '菜单', '', '2021-04-16 19:19:44.613000', '');
INSERT INTO `log` VALUES ('942b5cdd62ec4cfeafa14cef5cd87cf4', '查看', '5', '/role', '角色列表', '', '2021-04-15 21:49:01.864000', '');
INSERT INTO `log` VALUES ('9564b3a86d7e4d58b842ac645aff0540', '添加', '61072f70ed1e462ba1aff1edd4578b65', '/task/form/save', '课题', '', '2021-04-16 15:39:06.802000', '');
INSERT INTO `log` VALUES ('95a8915f78c94d8eac89a86a897b3544', '查看', '5', '/role', '角色列表', '', '2021-04-15 10:23:24.757000', '');
INSERT INTO `log` VALUES ('961e33a9920d46c9a9993b8162b44ecc', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-17 23:11:32.371000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('96a0d35d84ec44f2a6fd0d6a51abfe83', '查看', '5', '/office', '机构', '', '2021-04-14 22:10:15.719000', '');
INSERT INTO `log` VALUES ('96d9a5cbeeb84d8c96e10703d0f6eb15', '查看', '5', '/menu', '菜单', '', '2021-04-16 19:26:55.871000', '');
INSERT INTO `log` VALUES ('96fdd9a4da404bd7b0d38bf1cf6681af', '查看', '5', '/menu', '菜单', NULL, '2021-04-19 15:08:54.127000', NULL);
INSERT INTO `log` VALUES ('971cf1ac1b4945358a5415ab3707663a', '通过', '9fc64c0a260b48dfbe56dab66dfba382', '/task/audit/double', '双选课题审核', '47fc1693b662400fba1b1579ff3727d0', '2021-04-17 13:59:15.799000', 'd7b3b776a37a4cc4986da4409a173d98');
INSERT INTO `log` VALUES ('983e638af7fa4395a96f55e3934c5f47', '查看', '5', '/office', '机构', '', '2021-04-15 18:22:44.927000', '');
INSERT INTO `log` VALUES ('989517a31c8547bfa69075eeb520b33a', '修改', '5', '/menu/form/save', '菜单', '', '2021-04-16 20:01:05.983000', '');
INSERT INTO `log` VALUES ('995412a4d8574427a12095a7bc03bc51', '查看', '5', '/role', '角色列表', NULL, '2021-04-18 21:31:31.114000', NULL);
INSERT INTO `log` VALUES ('9a0a54ec477444f3a451c2f79c366dda', '查看', '5', '/menu', '菜单', NULL, '2021-04-18 23:32:54.578000', NULL);
INSERT INTO `log` VALUES ('9b11500cdaaa49c9b2d95598c9bd4d07', '不通过', '9fc64c0a260b48dfbe56dab66dfba382', '/task/audit/double', '双选课题审核', '0cdfac6f843b44caa12b0c747c0304e0', '2021-04-17 00:04:06.645000', '');
INSERT INTO `log` VALUES ('9bd9726796ce4a08aa8e2cc6e2b2a937', '查看', '5', '/office', '机构', '', '2021-04-15 14:45:11.348000', '');
INSERT INTO `log` VALUES ('9bd9999e632b47be8ceb05ab31c9a32e', '修改', '5', '/role/form/save', '角色', '', '2021-04-15 14:59:59.874000', '');
INSERT INTO `log` VALUES ('9c5e4c9349004a9e867e3a7966c996d7', '添加', '5', '/menu/form/save', '菜单', NULL, '2021-04-17 21:07:15.627000', NULL);
INSERT INTO `log` VALUES ('9cceab77f3414668aee4b1b9124c2193', '查看', '5', '/role', '角色列表', NULL, '2021-04-17 21:06:30.631000', NULL);
INSERT INTO `log` VALUES ('9cdc47f11aa34efda708c723670214f6', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-17 23:48:28.412000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('9d5c2025d2274d36b2511ca53b35f232', '添加', '61072f70ed1e462ba1aff1edd4578b65', '/task/form/save', '课题', '', '2021-04-16 15:32:32.389000', '');
INSERT INTO `log` VALUES ('9d5e71f68d8b46c68d0ac352be3d17a9', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 21:56:04.678000', '');
INSERT INTO `log` VALUES ('9d6ae166ded8452c93181f5793db98c6', '修改', '5', '/role/form/save', '角色', '', '2021-04-15 14:29:19.020000', '');
INSERT INTO `log` VALUES ('9dd1c767f5fc43ada0d8288c089f46f9', '查看', '5', '/office', '机构', '', '2021-04-14 22:11:03.409000', '');
INSERT INTO `log` VALUES ('9e30ac466c0c452aaeb29b3de97f5038', '查看', '5', '/role', '角色列表', '', '2021-04-15 13:15:38.305000', '');
INSERT INTO `log` VALUES ('9e34e445878c414d924490a43a2a77fd', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-14 23:47:54.986000', '');
INSERT INTO `log` VALUES ('9e44c6457b5647d2ba37fb7d8cb53293', '查看', '5', '/role', '角色列表', '', '2021-04-14 23:15:45.274000', '');
INSERT INTO `log` VALUES ('9e55da436d99453b9fc98237ee86719e', '查看', '5', '/role', '角色列表', '', '2021-04-15 21:48:38.675000', '');
INSERT INTO `log` VALUES ('9ee0f88f53c34bd3b14d42b70c3dfc16', '修改', '5', '/role/form/save', '角色', NULL, '2021-04-19 22:54:51.256000', NULL);
INSERT INTO `log` VALUES ('a11dacc31e0f4952b7fa3b13d8739e86', '查看', '5', '/role', '角色列表', '', '2021-04-15 13:42:55.850000', '');
INSERT INTO `log` VALUES ('a1b52f1d23424f7291a4ae8b998eebf6', '修改', '5', '/role/form/save', '角色', '', '2021-04-15 10:15:15.155000', '');
INSERT INTO `log` VALUES ('a2703eac4bf74338864a1f541485cb1a', '查看', '5', '/role', '角色列表', '', '2021-04-14 23:59:39.192000', '');
INSERT INTO `log` VALUES ('a2c94a026d134ffc9e3e10697aa05635', '添加', '5', '/menu/form/save', '菜单', NULL, '2021-04-19 00:41:28.960000', NULL);
INSERT INTO `log` VALUES ('a363350983e7449eb8959b241b0c1505', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-17 21:35:00.272000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('a447fcfe54c04bcb8150e4f83ae33be0', '查看', '5', '/menu', '菜单', NULL, '2021-04-18 18:35:23.677000', NULL);
INSERT INTO `log` VALUES ('a448352c28d649c6a6753adf6c6d1f04', '查看', '', '/office', '机构', '', '2021-04-14 19:30:09.252000', '');
INSERT INTO `log` VALUES ('a4bb2f562eaf4255abcefa649a3fa856', '查看', '5', '/office', '机构', '', '2021-04-16 21:23:48.038000', '');
INSERT INTO `log` VALUES ('a501f466d32f4906933ec5bce23ff424', '查看', '5', '/role', '角色列表', '', '2021-04-15 10:31:17.728000', '');
INSERT INTO `log` VALUES ('a508a753c33c434390e3b382126600a5', '通过', '9fc64c0a260b48dfbe56dab66dfba382', '/task/audit/teacherassignTask', '双选课题审核', 'bf4b6c0b1dfb4d1ab24b24443a07dcfd', '2021-04-19 17:12:23.705000', 'd7b3b776a37a4cc4986da4409a173d98');
INSERT INTO `log` VALUES ('a51ffd29267e49488b35470ec33af66f', '添加', '61072f70ed1e462ba1aff1edd4578b65', '/task/form/save', '课题', '443bbf81cdea423a8d83976cd886a6da', '2021-04-17 13:54:12.168000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('a5ac719d0e134690a01b29c9825dd6e0', '修改', '5', '/menu/updateSort', '菜单排序', NULL, '2021-04-20 17:14:26.875000', NULL);
INSERT INTO `log` VALUES ('a5c28028cfec42a6b468d154e14ee118', '添加', '5', '/menu/form/save', '菜单', NULL, '2021-04-20 16:00:13.004000', NULL);
INSERT INTO `log` VALUES ('a5f6997cc977410982ac362c2d7ffaeb', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 00:50:13.757000', '');
INSERT INTO `log` VALUES ('a6d76eae11564508ac8690f6815553f1', '添加', '5', '/task/form/save', '课题', '', '2021-04-15 20:13:49.164000', '');
INSERT INTO `log` VALUES ('a730b943e5584c58b5fd5bea7121ac73', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 00:26:51.361000', '');
INSERT INTO `log` VALUES ('a76a3957d2dd456d8a51f350484ff954', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-14 23:47:57.239000', '');
INSERT INTO `log` VALUES ('a83de83a287b484cac7b484aad6f96d8', '查看', '5', '/menu', '菜单', NULL, '2021-04-18 21:05:24.833000', NULL);
INSERT INTO `log` VALUES ('a8f933a574444c9780ce8361261a0555', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 00:16:57.944000', '');
INSERT INTO `log` VALUES ('a96269a10ac54f21995e9d9cf29f031a', '修改', '5', '/menu/form/save', '菜单', '', '2021-04-15 20:31:06.984000', '');
INSERT INTO `log` VALUES ('a9cf47308f3d45bc9b2d44c0b8fc50f4', '添加', '5', '/menu/form/save', '菜单', NULL, '2021-04-20 17:14:06.959000', NULL);
INSERT INTO `log` VALUES ('aa5c554505d14f2999aad1ff5df8e693', '查看', '5', '/role', '角色列表', '', '2021-04-15 10:26:30.212000', '');
INSERT INTO `log` VALUES ('ab32eb6efa9d488f8c132d23ef31e08e', '添加', '5', '/menu/form/save', '菜单', NULL, '2021-04-19 00:41:07.405000', NULL);
INSERT INTO `log` VALUES ('ab3beff1f41e49f69d78f8e1bffff4a6', '查看', '5', '/role', '角色列表', '', '2021-04-15 21:48:32.441000', '');
INSERT INTO `log` VALUES ('ab44a4b23ddd4f6fbfbea042d37026b3', '查看', '5', '/role', '角色列表', '', '2021-04-16 21:23:47.015000', '');
INSERT INTO `log` VALUES ('abb6660fe0c6418a94941874614af159', '添加', '5', '/menu/form/save', '菜单', NULL, '2021-04-19 22:53:49.463000', NULL);
INSERT INTO `log` VALUES ('ad0e2834e620422fb0f5c941abf0623c', '查看', '5', '/role', '角色列表', '', '2021-04-15 15:00:00.440000', '');
INSERT INTO `log` VALUES ('ad5c837af94e40b7a8d064e70ea17d39', '修改', '5', '/role/form/save', '角色', '', '2021-04-15 10:35:00.542000', '');
INSERT INTO `log` VALUES ('ad6a3974b43f4e6b9cd2e00700d4e977', '查看', '5', '/menu', '菜单', '', '2021-04-15 20:24:39.139000', '');
INSERT INTO `log` VALUES ('ae5ca12d9e3b4c4fa13df0b00944b32a', '修改', '5', '/role/form/save', '角色', '', '2021-04-15 14:59:49.592000', '');
INSERT INTO `log` VALUES ('ae9a006d7b97447084eb8089004af2e9', '添加', '5', '/menu/form/save', '菜单', NULL, '2021-04-20 17:13:48.783000', NULL);
INSERT INTO `log` VALUES ('aeac8b2ae59c4312a5d818cfaf9a131b', '查看', '5', '/menu', '菜单', NULL, '2021-04-20 09:15:11.075000', NULL);
INSERT INTO `log` VALUES ('af6b7ca7be96454ea0f0d11e16324da5', '通过', '9fc64c0a260b48dfbe56dab66dfba382', '/task/audit/double', '双选课题审核', 'b33aa2f0478b432c9c2e4f7e7487ab33', '2021-04-17 13:59:18.142000', 'd7b3b776a37a4cc4986da4409a173d98');
INSERT INTO `log` VALUES ('b06b6c41e288405cbf0f014006b9aed8', '查看', '5', '/role', '角色列表', '', '2021-04-15 13:08:58.822000', '');
INSERT INTO `log` VALUES ('b0c2d0df601048a4b7ab5082258dd0e1', '查看', '5', '/menu', '菜单', NULL, '2021-04-18 21:05:49.164000', NULL);
INSERT INTO `log` VALUES ('b33baa2144124fd396b0f7b261e7d10b', '查看', '5', '/role', '角色列表', NULL, '2021-04-18 21:31:24.109000', NULL);
INSERT INTO `log` VALUES ('b37ad980b9e045ad918944c4567beb6d', '查看', '5', '/menu', '菜单', NULL, '2021-04-19 17:19:41.439000', NULL);
INSERT INTO `log` VALUES ('b3d32141955f491597ef9e941646053a', '修改', '5', '/role/form/save', '角色', NULL, '2021-04-19 00:42:35.460000', NULL);
INSERT INTO `log` VALUES ('b48644af31d644ee997aee5d53790c56', '查看', '5', '/menu', '菜单', NULL, '2021-04-18 21:07:54.241000', NULL);
INSERT INTO `log` VALUES ('b4b606e555af4965b21bf7f9fbef0dd4', '添加', '5', '/task/form/save', '课题', '', '2021-04-15 18:08:17.492000', '');
INSERT INTO `log` VALUES ('b4e99a1e3126481a843a99e944449708', '修改', '5', '/role/form/save', '角色', '', '2021-04-15 10:23:29.596000', '');
INSERT INTO `log` VALUES ('b50c56814229401fb7feaf5712cb30b5', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 00:38:34.000000', '');
INSERT INTO `log` VALUES ('b5e2f3a4f7144a5b9356e2b5fcfabff4', '查看', '5', '/role', '角色列表', '', '2021-04-15 10:36:48.604000', '');
INSERT INTO `log` VALUES ('b6542e835d274ebc851296d8f38e7671', '查看', '5', '/menu', '菜单', '', '2021-04-16 23:21:48.487000', '');
INSERT INTO `log` VALUES ('b6e5bf77468047ac8dab2bf43e4aa74f', '查看', '5', '/menu', '菜单', NULL, '2021-04-17 21:06:24.810000', NULL);
INSERT INTO `log` VALUES ('b76807144e6446c2b24a6d109a44190d', '退选', '010f53d2ae4c44d7b0319bebb5dc70c5', '/task/student/deletehaschosentopic', '题目', '02b3e5cf44304133a677080019dc56d3', '2021-04-17 20:43:13.962000', '29da68c34c8747fc83640485639d63dd');
INSERT INTO `log` VALUES ('b8366ed73f804d01a845c8f12a1bf027', '添加', '5', '/menu/form/save', '菜单', '', '2021-04-15 20:25:57.450000', '');
INSERT INTO `log` VALUES ('b89c9d47781349bd885b5ca5ec222a61', '查看', '5', '/menu', '菜单', NULL, '2021-04-19 00:42:36.451000', NULL);
INSERT INTO `log` VALUES ('b8c3285e222448c8a4ff80a2ee7cc15b', '升级', '', '/office/updateSort', '机构排序', '', '2021-04-14 19:21:45.699000', '');
INSERT INTO `log` VALUES ('b8e9b4bb4e674a279f6f0f1799721407', '添加', '5', '/role/form/save', '角色', '', '2021-04-15 21:48:55.151000', '');
INSERT INTO `log` VALUES ('b934e62f6bb54749b3d3af017e17915d', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 01:21:46.883000', '');
INSERT INTO `log` VALUES ('b994abd3d936421ea6ab7e4d1afe5fad', '查看', '5', '/role', '角色列表', '', '2021-04-15 10:15:46.828000', '');
INSERT INTO `log` VALUES ('b9d79239bc7940edbe79bd82963cee84', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 01:21:40.168000', '');
INSERT INTO `log` VALUES ('b9ebfce4b3ae464780eb53b3e6503d50', '查看', '5', '/menu', '菜单', NULL, '2021-04-19 22:52:56.476000', NULL);
INSERT INTO `log` VALUES ('ba1247d4f957454fb5cb6c12700bcf37', '修改', '5', '/role/form/save', '角色', '', '2021-04-15 13:11:31.005000', '');
INSERT INTO `log` VALUES ('ba23d9dd83cb4a7da9ef8b586f93421d', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-14 23:48:23.497000', '');
INSERT INTO `log` VALUES ('ba2e95e3565e42fca76ead9914d0dc69', '查看', '5', '/role', '角色列表', '', '2021-04-15 12:50:55.259000', '');
INSERT INTO `log` VALUES ('bad830d93b0a46aa86d97958361b3367', '查看', '5', '/menu', '菜单', NULL, '2021-04-19 00:41:46.375000', NULL);
INSERT INTO `log` VALUES ('bbda1108f8a44d739f36bc15aef24aea', '修改', '5', '/role/form/save', '角色', '', '2021-04-15 13:41:57.348000', '');
INSERT INTO `log` VALUES ('bc7e5fa5386f4c129b8fd7e90b9daa9f', '查看', '5', '/menu', '菜单', '', '2021-04-14 22:17:04.470000', '');
INSERT INTO `log` VALUES ('bc86166343484521b282da8fe4213cd8', '查看', '5', '/role', '角色列表', '', '2021-04-15 20:31:51.307000', '');
INSERT INTO `log` VALUES ('bcad8eaf55464b5082159ddc38a4194a', '添加', '5', '/menu/form/save', '菜单', NULL, '2021-04-20 17:13:29.856000', NULL);
INSERT INTO `log` VALUES ('bcd787fbb13e49588a50ec4a639641c5', '查看', '5', '/role', '角色列表', '', '2021-04-15 10:38:49.732000', '');
INSERT INTO `log` VALUES ('bd0acfb062b240b388f570bee84f9c07', '修改', '5', '/role/form/save', '角色', NULL, '2021-04-19 01:29:11.471000', NULL);
INSERT INTO `log` VALUES ('bdf4a0368cb146579ba35959370c76fc', '查看', '5', '/menu', '菜单', '', '2021-04-15 20:31:07.050000', '');
INSERT INTO `log` VALUES ('beaa7f3c4d9a420abba8468e66bb4e1d', '修改', '61072f70ed1e462ba1aff1edd4578b65', '/task/form/save', '课题', '', '2021-04-16 15:38:46.552000', '');
INSERT INTO `log` VALUES ('befbf909536d4cf4afdf27b3cc3a1e12', '查看', '5', '/role', '角色列表', '', '2021-04-16 11:31:35.426000', '');
INSERT INTO `log` VALUES ('bfd2ba83f5bb4c74af5cbe098d3376f2', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 01:06:14.367000', '');
INSERT INTO `log` VALUES ('c05b6514adc74a74a315af9e14a235d0', '查看', '5', '/menu', '菜单', NULL, '2021-04-17 00:25:17.246000', '');
INSERT INTO `log` VALUES ('c0814a69edbc43a8bf865cbc7ae37234', '查看', '5', '/role', '角色列表', '', '2021-04-15 14:02:37.338000', '');
INSERT INTO `log` VALUES ('c0c2d68d3f634d2f981d2009b3abdb8e', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-18 10:26:48.403000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('c0d6c905db7c4b12af4954be3ccb284c', '修改', '5', '/menu/form/save', '菜单', NULL, '2021-04-20 00:18:03.607000', NULL);
INSERT INTO `log` VALUES ('c148beed26ca42c18ec0399476eed2cd', '查看', '5', '/menu', '菜单', NULL, '2021-04-19 15:08:16.618000', NULL);
INSERT INTO `log` VALUES ('c2429a9cccd847249c814148fefe636a', '查看', '5', '/menu', '菜单', NULL, '2021-04-18 23:33:28.901000', NULL);
INSERT INTO `log` VALUES ('c362aa38a1284fc4a0f56d2c6a582765', '修改', '5', '/menu/updateSort', '菜单排序', NULL, '2021-04-19 15:08:16.564000', NULL);
INSERT INTO `log` VALUES ('c38ce7a566fc4c598abfe14cc2b0955a', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 01:03:12.665000', '');
INSERT INTO `log` VALUES ('c39219390cf14bb681cf70917266ab70', '修改', '5', '/menu/updateSort', '菜单排序', NULL, '2021-04-19 01:28:56.861000', NULL);
INSERT INTO `log` VALUES ('c47df0556c92405697815f49225c85f3', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 21:56:01.671000', '');
INSERT INTO `log` VALUES ('c524012e85eb4e2687231711bdbaa170', '查看', '5', '/role', '角色列表', '', '2021-04-15 10:06:23.642000', '');
INSERT INTO `log` VALUES ('c5705fac8d97488e9ddf036b33e11d08', '添加', '5', '/menu/form/save', '菜单', '', '2021-04-16 19:26:37.023000', '');
INSERT INTO `log` VALUES ('c5dbc01b3ad547a6b5664aee4f802a04', '查看', '5', '/role', '角色列表', '', '2021-04-15 16:40:45.975000', '');
INSERT INTO `log` VALUES ('c5e9347f8bc24d08a0845cbd567df59e', '查看', '5', '/office', '机构', '', '2021-04-14 22:10:10.904000', '');
INSERT INTO `log` VALUES ('c67b1b7a39ff41359863a489c7b8f86b', '查看', '5', '/menu', '菜单', NULL, '2021-04-19 22:51:56.981000', NULL);
INSERT INTO `log` VALUES ('c7abbf80b75741ffb0f348e741830894', '添加', '5', '/menu/form/save', '菜单', NULL, '2021-04-19 00:42:16.725000', NULL);
INSERT INTO `log` VALUES ('c87bf0d2eb55472dad3d3114acbb2f8b', '查看', '5', '/role', '角色列表', '', '2021-04-15 13:41:57.530000', '');
INSERT INTO `log` VALUES ('c88ae26dc79c4a50944d0898d7c8bd7c', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-17 21:00:58.528000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('c96cc27e9edc4d0682475d46bc3708ef', '查看', '5', '/menu', '菜单', NULL, '2021-04-19 00:40:40.488000', NULL);
INSERT INTO `log` VALUES ('c9dc46a8fda847679a791d9980e9dd72', '修改', '5', '/menu/form/save', '菜单', NULL, '2021-04-17 00:35:06.367000', '');
INSERT INTO `log` VALUES ('ca71f9bb35bd4bb2b2837e0a96ad88f8', '查看', '5', '/menu', '菜单', NULL, '2021-04-20 17:13:10.177000', NULL);
INSERT INTO `log` VALUES ('ca8b9b041e244001b5ec8389332b2e65', '查看', '5', '/menu', '菜单', NULL, '2021-04-19 22:56:59.269000', NULL);
INSERT INTO `log` VALUES ('caca3c7081214678ac6e847899c93dc2', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 00:38:35.169000', '');
INSERT INTO `log` VALUES ('caf6ff1219024de4bf3cb6feeea60b9f', '查看', '5', '/role', '角色列表', NULL, '2021-04-19 01:29:17.291000', NULL);
INSERT INTO `log` VALUES ('cb2f501fb2174c5a95162fb5b7471dcc', '查看', '5', '/menu', '菜单', NULL, '2021-04-18 18:37:09.612000', NULL);
INSERT INTO `log` VALUES ('cb3c0b3150c24948854bababc8da2524', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 00:49:31.891000', '');
INSERT INTO `log` VALUES ('cb4a2c598b4241aebdaed26a2eb08100', '删除', '5', '/office/delete', '机构', '', '2021-04-14 22:10:49.923000', '');
INSERT INTO `log` VALUES ('cbc2606935624c56bcbd0addb1ad4e97', '查看', '5', '/role', '角色列表', '', '2021-04-16 19:20:01.104000', '');
INSERT INTO `log` VALUES ('cbf62bf8e2bc406ab4366ce6cc648b9e', '查看', '5', '/role', '角色列表', '', '2021-04-15 13:02:23.990000', '');
INSERT INTO `log` VALUES ('cc98b41289d748e4b1253a2bb64cf5f4', '查看', '5', '/role', '角色列表', '', '2021-04-15 10:23:29.752000', '');
INSERT INTO `log` VALUES ('cd9e4e814b5e4e80953e5f523bee6b65', '查看', '5', '/role', '角色列表', '', '2021-04-15 16:46:51.632000', '');
INSERT INTO `log` VALUES ('cf444fb2ec9049cfbf91c5aaaa434489', '修改', '5', '/role/form/save', '角色', '', '2021-04-15 13:15:42.466000', '');
INSERT INTO `log` VALUES ('cf884f3ea59746e38624bc4039d528ff', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-17 23:03:38.216000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('d07cce72b81441dd9eef88f9329338b0', '通过', '9fc64c0a260b48dfbe56dab66dfba382', '/task/audit/double', '双选课题审核', '02b3e5cf44304133a677080019dc56d3', '2021-04-17 13:59:14.794000', 'd7b3b776a37a4cc4986da4409a173d98');
INSERT INTO `log` VALUES ('d0d93fa98dfe4508aef5dafcbb608aae', '查看', '5', '/menu', '菜单', NULL, '2021-04-19 15:07:46.180000', NULL);
INSERT INTO `log` VALUES ('d15e26852ae14ad4a00092be034aacb1', '查看', '5', '/role', '角色列表', '', '2021-04-15 14:58:03.738000', '');
INSERT INTO `log` VALUES ('d2b1225442d9425ca467912ebb51fff5', '查看', '5', '/role', '角色列表', '', '2021-04-15 14:51:25.408000', '');
INSERT INTO `log` VALUES ('d36262825d374f3f82aa0543b9e4107f', '修改', '5', '/menu/form/save', '菜单', NULL, '2021-04-18 09:56:22.195000', NULL);
INSERT INTO `log` VALUES ('d42c3b479f394badb200f25720cd5f1b', '查看', '5', '/menu', '菜单', NULL, '2021-04-18 09:55:31.009000', NULL);
INSERT INTO `log` VALUES ('d431a7cfcac14e13ada5692eba7440af', '查看', '5', '/menu', '菜单', '', '2021-04-16 11:02:40.730000', '');
INSERT INTO `log` VALUES ('d45687c6e94743a3979d2cbb0028e8ce', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-18 18:37:30.666000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('d478cad2ae0c4c989650cf5a2364e33a', '查看', '5', '/office', '机构', '', '2021-04-16 19:20:05.571000', '');
INSERT INTO `log` VALUES ('d50a0f5c65ff446a84b00e8698a78d40', '查看', '5', '/menu', '菜单', NULL, '2021-04-18 09:56:01.510000', NULL);
INSERT INTO `log` VALUES ('d588f172b3c94064abcf6f6431e439ac', '退选', '010f53d2ae4c44d7b0319bebb5dc70c5', '/task/student/deletehaschosentopic', '题目', '3ea50b8e40cc464f9dd5c74a148b0644', '2021-04-17 20:45:19.607000', '29da68c34c8747fc83640485639d63dd');
INSERT INTO `log` VALUES ('d6347bfb639646ad8c02d71893e6c260', '查看', '5', '/menu', '菜单', '', '2021-04-16 19:25:22.933000', '');
INSERT INTO `log` VALUES ('d71daf4ee31244f38e1de7a101fc1983', '查看', '5', '/menu', '菜单', NULL, '2021-04-17 00:25:46.294000', '');
INSERT INTO `log` VALUES ('d7464d4c810d462aa9037b702ca740d3', '查看', '5', '/role', '角色列表', NULL, '2021-04-19 00:42:18.318000', NULL);
INSERT INTO `log` VALUES ('d83cc998056940e7a747aff4122ad1a3', '查看', '5', '/menu', '菜单', NULL, '2021-04-17 21:07:42.795000', NULL);
INSERT INTO `log` VALUES ('d8e1eaa65eca4b6f8b28c4bb46f7d8d8', '修改', '5', '/role/form/save', '角色', '', '2021-04-15 10:31:17.451000', '');
INSERT INTO `log` VALUES ('d9588458ba7346cfbe4396b367cb5c43', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 01:22:46.054000', '');
INSERT INTO `log` VALUES ('d965a340cee4456aba3f3cb9581fd9fb', '查看', '5', '/office', '机构', '', '2021-04-15 20:31:53.429000', '');
INSERT INTO `log` VALUES ('d96f5cb5939645adb9d6e64a833bb141', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-17 20:59:25.697000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('d9c89cdaf0824d89bd261a44c4fc9b04', '查看', '5', '/role', '角色列表', '', '2021-04-16 19:19:49.635000', '');
INSERT INTO `log` VALUES ('d9fb9f9f5ded4aca895d2c04ceb61e60', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 01:22:42.599000', '');
INSERT INTO `log` VALUES ('da1ba4595ce9479faf6a7035f5321ad1', '修改', '5', '/role/form/save', '角色', '', '2021-04-16 19:27:31.141000', '');
INSERT INTO `log` VALUES ('dae211dc1abe4d5bb6986d23155a66b3', '查看', '5', '/menu', '菜单', '', '2021-04-14 22:16:58.692000', '');
INSERT INTO `log` VALUES ('db5942a7b8bb4ad7b348878e39d1386e', '查看', '5', '/menu', '菜单', '', '2021-04-15 18:24:36.196000', '');
INSERT INTO `log` VALUES ('db59a9a3c6b24cff8305d81c765116de', '添加', '61072f70ed1e462ba1aff1edd4578b65', '/task/form/save', '课题', '41998611c84c4117b409e01ed7b2779e', '2021-04-19 15:46:33.316000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('db685f9abe734bd29b05e96e4da3a53d', '通过', '9fc64c0a260b48dfbe56dab66dfba382', '/task/audit/teacherassignTask', '双选课题审核', 'bf4b6c0b1dfb4d1ab24b24443a07dcfd', '2021-04-19 17:13:25.128000', 'd7b3b776a37a4cc4986da4409a173d98');
INSERT INTO `log` VALUES ('db80fce430f649e7b0eb5ecefdbe902e', '修改', '5', '/role/form/save', '角色', NULL, '2021-04-19 00:42:24.792000', NULL);
INSERT INTO `log` VALUES ('dbdbacb10c4e4fad8aa10a75ad56ee3c', '查看', '5', '/office', '机构', '', '2021-04-14 22:10:50.145000', '');
INSERT INTO `log` VALUES ('dc0e26be6b5442299140f56544fb5255', '修改', '5', '/role/form/save', '角色', '', '2021-04-15 10:40:24.765000', '');
INSERT INTO `log` VALUES ('dc238d06936e4c67b696aa977bb10417', '修改', '5', '/role/form/save', '角色', '', '2021-04-15 13:09:03.179000', '');
INSERT INTO `log` VALUES ('dc78ccf875114505a447cfed09ab6ddd', '查看', '5', '/role', '角色列表', '', '2021-04-15 10:33:08.826000', '');
INSERT INTO `log` VALUES ('dc9bc3c1857d4e04ba2d828290dec2a6', '查看', '5', '/role', '角色列表', '', '2021-04-15 10:35:00.748000', '');
INSERT INTO `log` VALUES ('dcb34635dff243ebbecf47060fb0e123', '查看', '5', '/menu', '菜单', NULL, '2021-04-20 17:13:55.434000', NULL);
INSERT INTO `log` VALUES ('dd1e9e5c8a404fa5a550d3c3243853c3', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-18 13:12:35.447000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('dd468685ff1b4e45be47873efc838efb', '查看', '010f53d2ae4c44d7b0319bebb5dc70c5', '/role', '角色列表', NULL, '2021-04-17 20:43:14.205000', '29da68c34c8747fc83640485639d63dd');
INSERT INTO `log` VALUES ('dd730bf174dd4d74aeda3517c5ecf389', '添加', '5', '/user/form/saveUserRoleForm', '用户角色', '', '2021-04-15 01:32:18.467000', '');
INSERT INTO `log` VALUES ('de18caa0308c49a6980baced85bf8c19', '查看', '5', '/role', '角色列表', '', '2021-04-15 10:40:24.899000', '');
INSERT INTO `log` VALUES ('dedace9b16734290acc9ccdb11b7b72b', '查看', '', '/office', '机构', '', '2021-04-14 19:16:57.800000', '');
INSERT INTO `log` VALUES ('dfe769ac3665481ca395cbf3c7ffc35b', '查看', '5', '/role', '角色列表', '', '2021-04-15 14:56:53.970000', '');
INSERT INTO `log` VALUES ('dfe79097e96f49bc984aec9e22f9af7a', '通过', '9fc64c0a260b48dfbe56dab66dfba382', '/task/audit/double', '双选课题审核', 'b767e09484f34868bffe95fef84b9283', '2021-04-17 00:03:23.947000', '');
INSERT INTO `log` VALUES ('e0115bf8bcb142a5be84b4773f83c818', '查看', '吴家剑', '/menu', '菜单', '', '2021-04-14 18:41:45.861000', '');
INSERT INTO `log` VALUES ('e064acbb70b54bdaad275ecbc2aed65a', '查看', '5', '/role', '角色列表', '', '2021-04-15 12:51:12.755000', '');
INSERT INTO `log` VALUES ('e13c2bf7d24d49f1adc4521216d06d41', '查看', '5', '/role', '角色列表', '', '2021-04-15 14:25:35.822000', '');
INSERT INTO `log` VALUES ('e2201ef3f6ba4f8db3acacb97227d914', '修改', '5', '/menu/updateSort', '菜单排序', NULL, '2021-04-19 22:53:37.996000', NULL);
INSERT INTO `log` VALUES ('e35f0f82c2aa4f759e85e39f155331c6', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-17 21:36:36.680000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('e404670d3a3a4ef68b2a415facff30ec', '修改', '5', '/role/form/save', '角色', '', '2021-04-15 10:15:46.619000', '');
INSERT INTO `log` VALUES ('e4a8887ec5964b44bf89c67f0d5f3624', '添加', '61072f70ed1e462ba1aff1edd4578b65', '/task/form/save', '课题', 'ad5cf43241444ece9674afb5592c1be9', '2021-04-17 13:58:59.406000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('e5921c410cbd43c3b25a32945d6dc23f', '添加', '61072f70ed1e462ba1aff1edd4578b65', '/task/form/save', '课题', '78e7c947a66049c689b427bfcce55089', '2021-04-17 13:55:02.593000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('e5af7fe3df044ed2a71f4064083de8d3', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-17 00:02:56.402000', '');
INSERT INTO `log` VALUES ('e5c0bd130e454d07b16c20bc14e533e2', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-18 09:33:37.451000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('e5e484436b0b42c198ffdfb5063cbcf9', '查看', '5', '/menu', '菜单', '', '2021-04-15 18:24:46.792000', '');
INSERT INTO `log` VALUES ('e5ec7b36f6c94f3292ef45981216f8b4', '添加', '5', '/menu/form/save', '菜单', NULL, '2021-04-20 17:13:39.261000', NULL);
INSERT INTO `log` VALUES ('e63cd7dce10e430492488a7deed2514a', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-17 20:59:22.326000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('e64ac48164024b32946e878c4e1c788a', '查看', '5', '/role', '角色列表', '', '2021-04-15 14:58:11.957000', '');
INSERT INTO `log` VALUES ('e75920cb1b034c9286e0ce58286287e7', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 00:26:47.982000', '');
INSERT INTO `log` VALUES ('e8d3489eac134cb1ac4405c9aca93dea', '修改', '5', '/role/form/save', '角色', NULL, '2021-04-17 21:43:36.174000', NULL);
INSERT INTO `log` VALUES ('e962c57e138f4e97bdf0a3c65de006cd', '添加', '5', '/user/form/save', '用户', '', '2021-04-15 21:49:57.982000', '');
INSERT INTO `log` VALUES ('e98ac4c338bb48c1a2da26f0d39db508', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 00:49:50.755000', '');
INSERT INTO `log` VALUES ('ea45c71b669e4503b69ecce677056dd2', '添加', '61072f70ed1e462ba1aff1edd4578b65', '/task/form/save', '课题', '', '2021-04-16 10:45:42.410000', '');
INSERT INTO `log` VALUES ('ea5c72eaf8c147eab18be220acc0deeb', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 01:21:44.473000', '');
INSERT INTO `log` VALUES ('ea8ce288757a45b28252324afec335ed', '修改', '5', '/menu/updateSort', '菜单排序', NULL, '2021-04-19 22:53:07.730000', NULL);
INSERT INTO `log` VALUES ('ea9456128ef24adebbdf6c92d394efe4', '查看', '5', '/office', '机构', '', '2021-04-14 22:10:56.658000', '');
INSERT INTO `log` VALUES ('ea9b9d4c3eb84727bce89470ada1d215', '查看', '5', '/role', '角色列表', '', '2021-04-15 10:15:07.479000', '');
INSERT INTO `log` VALUES ('eae4a38564cf42cab1c42277f312ccce', '查看', '5', '/role', '角色列表', '', '2021-04-15 10:33:04.016000', '');
INSERT INTO `log` VALUES ('eb71c3d2e91a4b578e12a8c759dd49ff', '添加', '5', '/task/form/save', '课题', '', '2021-04-15 19:10:36.265000', '');
INSERT INTO `log` VALUES ('ec6be61dc73f418eb7d01667e359e0f4', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-19 14:11:50.167000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('ed45217c4f364f89b422ba254bdd200a', '通过', '9fc64c0a260b48dfbe56dab66dfba382', '/task/audit/double', '双选课题审核', '0c59db9482874a7ab1bc28cfa0c9ccc5', '2021-04-17 09:31:37.003000', '');
INSERT INTO `log` VALUES ('edc54bc0c16d47bf9e631873a94ee45b', '修改', '5', '/role/form/save', '角色', '', '2021-04-15 14:25:35.596000', '');
INSERT INTO `log` VALUES ('ee4b59b309a441adab08f3ac6596f1a3', '添加', '5', '/user/form/save', '用户', '', '2021-04-16 19:28:22.407000', '');
INSERT INTO `log` VALUES ('ef037326e9e34a0ebdfffec3c622abe8', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 01:21:52.962000', '');
INSERT INTO `log` VALUES ('ef9e0b826bb34599afc4c1d1963fdf04', '查看', '5', '/role', '角色列表', '', '2021-04-15 10:40:28.719000', '');
INSERT INTO `log` VALUES ('f04661fb9cb34c249eea952733adb7da', '添加', '5', '/menu/form/save', '菜单', '', '2021-04-14 22:16:49.381000', '');
INSERT INTO `log` VALUES ('f127c98f3d6f44a69ec0a7e5cf174f12', '查看', '5', '/role', '角色列表', NULL, '2021-04-19 15:09:55.088000', NULL);
INSERT INTO `log` VALUES ('f25843dd13b54169958a50dc57a237af', '添加', '5', '/menu/form/save', '菜单', NULL, '2021-04-19 01:01:58.104000', NULL);
INSERT INTO `log` VALUES ('f282aa781e614ca3a7015a631e2bc089', '查看', '5', '/role', '角色列表', NULL, '2021-04-19 00:42:30.763000', NULL);
INSERT INTO `log` VALUES ('f315ab4a9c924c7cb0cd2d733616bb9b', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 01:06:42.818000', '');
INSERT INTO `log` VALUES ('f355f5adcd9d4cfb82abcfd04de23651', '查看', '5', '/role', '角色列表', NULL, '2021-04-18 18:37:05.257000', NULL);
INSERT INTO `log` VALUES ('f3afb7647c2242818b6c106649dec5e0', '添加', '5', '/user/form/save', '用户', '', '2021-04-15 21:47:45.112000', '');
INSERT INTO `log` VALUES ('f4646b3de0c84af7a2f10100cb04bc20', '添加', '4f0645600e5e48c6b44c1f2d54f68a33', '/task/form/save', '课题', '', '2021-04-15 23:39:38.227000', '');
INSERT INTO `log` VALUES ('f517c7cb72964349a1114f0c3ddf44ca', '查看', '5', '/role', '角色列表', '', '2021-04-15 15:28:38.371000', '');
INSERT INTO `log` VALUES ('f575f478394c4769a5b84bfd2e518dee', '添加', '61072f70ed1e462ba1aff1edd4578b65', '/task/form/save', '课题', '', '2021-04-15 23:16:36.311000', '');
INSERT INTO `log` VALUES ('f5bb30cce7f94231aff15e1a6e7829aa', '查看', '5', '/role', '角色列表', '', '2021-04-15 14:56:34.872000', '');
INSERT INTO `log` VALUES ('f5f39c9b251744baa3db1fd2a9467426', '修改', '5', '/role/delete', '菜单排序', '', '2021-04-14 23:15:45.207000', '');
INSERT INTO `log` VALUES ('f624b151d5654e0696a41037d949d841', '查看', '5', '/role', '角色列表', '', '2021-04-15 14:02:56.367000', '');
INSERT INTO `log` VALUES ('f6bfa481c56a4bffa635d46c2c5b39d4', '查看', '5', '/menu', '菜单', NULL, '2021-04-19 15:10:11.921000', NULL);
INSERT INTO `log` VALUES ('f6c006023308421c86c0292609de65e6', '修改', '5', '/menu/form/save', '菜单', '', '2021-04-16 11:02:40.653000', '');
INSERT INTO `log` VALUES ('f727b88f6f1e47b48ce1212e3d5fc44d', '查看', '5', '/menu', '菜单', NULL, '2021-04-20 17:13:29.921000', NULL);
INSERT INTO `log` VALUES ('f763e7d52ea540e685c5357dc6762e57', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-17 20:59:27.706000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('f82867b4d14449ff8a9679c47854b017', '查看', '5', '/menu', '菜单', '', '2021-04-14 22:16:07.155000', '');
INSERT INTO `log` VALUES ('f87d2210d34d40d7b0b442b42897dbf8', '升级', '', '/office/updateSort', '机构排序', '', '2021-04-14 19:31:44.967000', '');
INSERT INTO `log` VALUES ('f8a00c6858784e1fb4927360188be0b0', '查看', '5', '/menu', '菜单', NULL, '2021-04-19 22:53:49.527000', NULL);
INSERT INTO `log` VALUES ('f8d8061ce22f4958a1cd585d534e4dd2', '查看', '5', '/menu', '菜单', NULL, '2021-04-20 17:14:07.004000', NULL);
INSERT INTO `log` VALUES ('f9043966b1e04d57b18f6909c4a07851', '查看', '61072f70ed1e462ba1aff1edd4578b65', '/teacher/tasklist', '双选题目', NULL, '2021-04-17 21:11:06.577000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('fbf62497a6d44024a30fe87396ee4bf8', '查看', '5', '/role', '角色列表', NULL, '2021-04-17 21:43:36.456000', NULL);
INSERT INTO `log` VALUES ('fc450a6a94fb4764bbe0799495cb5662', '查看', '5', '/role', '角色列表', '', '2021-04-15 13:11:26.990000', '');
INSERT INTO `log` VALUES ('fd230765e17c4fa7bc549b236abe4fdd', '添加', '5', '/user/form/saveUserRoleForm', '用户角色', '', '2021-04-15 21:49:18.637000', '');
INSERT INTO `log` VALUES ('fe2717be242349bab782fa939f78c00f', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 21:56:07.258000', '');
INSERT INTO `log` VALUES ('fe8345e174074db2a6bead88c279ebf1', '删除', '5', '/user/deleteUserRoleForm', '单个角色', '', '2021-04-15 01:21:54.041000', '');
INSERT INTO `log` VALUES ('fe8f5584df4d4d1c800cc92b86000754', '查看', '5', '/menu', '菜单', NULL, '2021-04-17 23:02:08.997000', NULL);
INSERT INTO `log` VALUES ('ff5ef47a83cd42c8b7b37031ed75869c', '查看', '5', '/role', '角色列表', '', '2021-04-15 14:59:49.827000', '');
INSERT INTO `log` VALUES ('ffba5783f4224c499d0b90f8d8913a8c', '添加', '5', '/task/form/save', '课题', '', '2021-04-15 18:19:11.223000', '');

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
INSERT INTO `menu` VALUES ('2cfc16329df745eba6c5970443a2bb05', 'bd25abd95d184150bb1234ab41dbd2bf', '0,1,bd25abd95d184150bb1234ab41dbd2bf,', '修改密码', 90, '/information/modifyPassword', '', '', '1', '', '5', '2021-04-19 00:42:17', '5', '2021-04-19 00:42:17', '', '0');
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
INSERT INTO `menu` VALUES ('36df55d4c0244ce587672a58a5e4e5ef', '8a463f98aa1b48f99dafe189d86d4dfc', '0,1,8a463f98aa1b48f99dafe189d86d4dfc,', '个人信息维护', 80, '/information', '', '', '1', '', '5', '2021-04-18 21:05:49', '5', '2021-04-18 21:05:49', '', '0');
INSERT INTO `menu` VALUES ('37', '36', '0,1,31,32,36,', '查看', 30, NULL, NULL, NULL, '0', 'cms:site:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('38', '36', '0,1,31,32,36,', '修改', 40, NULL, NULL, NULL, '0', 'cms:site:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('38cbbfe3ceb0404b98959368c0274258', 'bd25abd95d184150bb1234ab41dbd2bf', '0,1,bd25abd95d184150bb1234ab41dbd2bf,', '选题分析', 20, '/taskanalysis', '', '', '1', '', '5', '2021-04-19 22:53:49', '5', '2021-04-19 22:53:49', '', '0');
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
INSERT INTO `menu` VALUES ('6ea3047dca3944c5b837798beb2fa104', '27', '0,1,27,', '通知公告', 250, '/announcement/viewuserList', '', '', '1', '', '5', '2021-04-20 16:00:11', '5', '2021-04-20 16:00:11', '', '0');
INSERT INTO `menu` VALUES ('7', '3', '0,1,2,3,', '角色管理', 50, '/sys/role/', NULL, 'lock', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('70', '69', '0,1,62,69,', '流程管理', 50, '/act/process', NULL, 'road', '1', 'act:process:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('71', '27', '0,1,27,', '文件管理', 100, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `menu` VALUES ('72', '69', '0,1,62,69,', '模型管理', 100, '/act/model', NULL, 'road', '1', 'act:model:edit', '1', '2013-09-20 08:00:00', '1', '2013-09-20 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('72970b960e424d36b454057fe3c9dac7', 'a2a8da41340743418dd251f446cbda3f', '0,1,a2a8da41340743418dd251f446cbda3f,', '修改密码', 180, '/information/modifyPassword', '', '', '1', '', '5', '2021-04-19 00:41:29', '5', '2021-04-19 00:41:29', '', '0');
INSERT INTO `menu` VALUES ('73', '63', '0,1,62,63,', '我的任务', 50, '/act/task/todo/', NULL, 'tasks', '1', NULL, '1', '2013-09-24 08:00:00', '1', '2013-09-24 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('73b15b3cda2a48b58bdebbda7e27fb10', 'a2a8da41340743418dd251f446cbda3f', '0,1,a2a8da41340743418dd251f446cbda3f,', '查看申报的双选课题', 60, '/teacher/tasklist', '', '', '1', '', '5', '2021-04-16 19:25:33', '5', '2021-04-16 19:25:33', '', '0');
INSERT INTO `menu` VALUES ('74', '63', '0,1,62,63,', '审批测试', 100, '/oa/testAudit', NULL, NULL, '1', 'oa:testAudit:view,oa:testAudit:edit', '1', '2013-09-24 08:00:00', '1', '2013-09-24 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('75', '1', '0,1,', '在线演示', 3000, NULL, NULL, NULL, '1', NULL, '1', '2013-10-08 08:00:00', '1', '2013-10-08 08:00:00', NULL, '1');
INSERT INTO `menu` VALUES ('79', '1', '0,1,', '代码生成', 5000, NULL, NULL, NULL, '1', NULL, '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', NULL, '1');
INSERT INTO `menu` VALUES ('7b187bed88a6494cb48a90a2b976873f', 'a2a8da41340743418dd251f446cbda3f', '0,1,a2a8da41340743418dd251f446cbda3f,', '审核双选题目', 90, '/teacher/task/doublechoosestudent', '', '', '1', '', '5', '2021-04-17 22:54:54', '5', '2021-04-17 22:54:54', '', '0');
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
INSERT INTO `menu` VALUES ('8d8fb1707c5844ec900555c25952971c', '27', '0,1,27,', '角色管理', 70, '/role', '', '', '1', '', '5', '2021-04-04 21:42:22', '5', '2021-04-04 21:42:22', '', '0');
INSERT INTO `menu` VALUES ('9', '7', '0,1,2,3,7,', '修改', 40, NULL, NULL, NULL, '0', 'sys:role:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('90', '88', '0,1,62,88,', '通告管理', 50, '/oa/oaNotify', '', '', '1', 'oa:oaNotify:view,oa:oaNotify:edit', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', NULL, '0');
INSERT INTO `menu` VALUES ('942a29129b054e769a910f8bcc038a4b', '1', '0,1,', '修改密码', 230, '/information/modifyPassword', '', '', '1', '', '5', '2021-04-19 00:42:04', '5', '2021-04-19 00:42:04', '', '1');
INSERT INTO `menu` VALUES ('9790bfe348bc4b54bb6a5a0c3676cda3', '27', '0,1,27,', '用户管理', 50, '/user', '', '', '1', '', '5', '2021-04-08 13:13:10', '5', '2021-04-08 13:13:10', '', '0');
INSERT INTO `menu` VALUES ('9fb48ec105234264a84cac8e5d7cfec6', '27', '0,1,27,', '公告管理', 220, '/announcement', '', '', '1', '', '5', '2021-04-20 14:03:55', '5', '2021-04-20 14:03:55', '', '0');
INSERT INTO `menu` VALUES ('9fe45d7b392b45b2a1b34709b6e978c4', '1', '0,1,', '公司管理员1', 190, '/menu', '', '', '1', '', '5', '2021-04-09 19:03:55', '5', '2021-04-09 19:03:55', '', '1');
INSERT INTO `menu` VALUES ('a2a8da41340743418dd251f446cbda3f', '1', '0,1,', '教师功能', 170, '', '', '', '1', '', '5', '2021-04-05 23:54:03', '5', '2021-04-05 23:54:03', '', '0');
INSERT INTO `menu` VALUES ('a73fd91e3a7d4447be9e8a4b7df9395d', '27', '0,1,27,', '机构管理', 130, '/office', '', '', '1', '', '5', '2021-04-09 17:44:21', '5', '2021-04-09 17:44:21', '', '1');
INSERT INTO `menu` VALUES ('afab2db430e2457f9cf3a11feaa8b869', '0ca004d6b1bf4bcab9670a5060d82a55', '0,1,79,3c92c17886944d0687e73e286cada573,0ca004d6b1bf4bcab9670a5060d82a55,', '编辑', 60, '', '', '', '0', 'test:testTree:edit', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `menu` VALUES ('b0295fa8f08342878bb5f432aa3d5db2', 'a2a8da41340743418dd251f446cbda3f', '0,1,a2a8da41340743418dd251f446cbda3f,', '通知公告', 210, '/announcement/viewuserList', '', '', '1', '', '5', '2021-04-20 17:13:39', '5', '2021-04-20 17:13:39', '', '1');
INSERT INTO `menu` VALUES ('b1f6d1b86ba24365bae7fd86c5082317', '3c92c17886944d0687e73e286cada573', '0,1,79,3c92c17886944d0687e73e286cada573,', '主子表', 60, '/test/testDataMain', '', '', '1', '', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `menu` VALUES ('b7b6857fdc2f470a92e9627e14a99364', 'a2a8da41340743418dd251f446cbda3f', '0,1,a2a8da41340743418dd251f446cbda3f,', '通知公告', 10, '/announcement/viewuserList', '', '', '1', '', '5', '2021-04-20 17:13:49', '5', '2021-04-20 17:13:49', '', '0');
INSERT INTO `menu` VALUES ('ba8092291b40482db8fe7fc006ea3d76', '3c92c17886944d0687e73e286cada573', '0,1,79,3c92c17886944d0687e73e286cada573,', '单表', 30, '/test/testData', '', '', '1', '', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `menu` VALUES ('bc4a2658460a4a8984d0aa1a87d6db2c', '8a463f98aa1b48f99dafe189d86d4dfc', '0,1,8a463f98aa1b48f99dafe189d86d4dfc,', '学生申报', 60, '/studenttask', '', '', '1', '', '5', '2021-04-14 22:16:49', '5', '2021-04-14 22:16:49', '', '1');
INSERT INTO `menu` VALUES ('bd25abd95d184150bb1234ab41dbd2bf', '1', '0,1,', '系主任功能', 200, '', '', '', '1', '', '5', '2021-04-16 19:26:37', '5', '2021-04-16 19:26:37', '', '0');
INSERT INTO `menu` VALUES ('bd50d223e16b431ab339cecd9d46f940', 'a2a8da41340743418dd251f446cbda3f', '0,1,a2a8da41340743418dd251f446cbda3f,', '选题分析', 20, '/taskanalysis', '', '', '1', '', '5', '2021-04-19 22:53:26', '5', '2021-04-19 22:53:26', '', '0');
INSERT INTO `menu` VALUES ('beb347f5f31d4fa482448b131a35348b', '27', '0,1,27,', '菜单管理', 120, '/menu', '', '', '1', '', '5', '2021-04-03 19:55:29', '5', '2021-04-03 19:55:29', '', '1');
INSERT INTO `menu` VALUES ('c2e4d9082a0b4386884a0b203afe2c5c', '0ca004d6b1bf4bcab9670a5060d82a55', '0,1,79,3c92c17886944d0687e73e286cada573,0ca004d6b1bf4bcab9670a5060d82a55,', '查看', 30, '', '', '', '0', 'test:testTree:view', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `menu` VALUES ('d15ec45a4c5449c3bbd7a61d5f9dd1d2', 'b1f6d1b86ba24365bae7fd86c5082317', '0,1,79,3c92c17886944d0687e73e286cada573,b1f6d1b86ba24365bae7fd86c5082317,', '编辑', 60, '', '', '', '0', 'test:testDataMain:edit', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `menu` VALUES ('de1d18b364904fdab26fb5631530d362', 'bd25abd95d184150bb1234ab41dbd2bf', '0,1,bd25abd95d184150bb1234ab41dbd2bf,', '审核双选题目', 30, '/task/audit/doublelist', '', '', '1', '', '5', '2021-04-16 22:19:16', '5', '2021-04-16 22:19:16', '', '0');
INSERT INTO `menu` VALUES ('df7ce823c5b24ff9bada43d992f373e2', 'ba8092291b40482db8fe7fc006ea3d76', '0,1,79,3c92c17886944d0687e73e286cada573,ba8092291b40482db8fe7fc006ea3d76,', '查看', 30, '', '', '', '0', 'test:testData:view', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `menu` VALUES ('e2552cbc45084779b43b23aa4e5fbd51', 'bd25abd95d184150bb1234ab41dbd2bf', '0,1,bd25abd95d184150bb1234ab41dbd2bf,', '通知公告', 10, '/announcement/viewuserList', '', '', '1', '', '5', '2021-04-20 17:14:07', '5', '2021-04-20 17:14:07', '', '0');
INSERT INTO `menu` VALUES ('e26034ffea5d4179b0651a47f52f3e96', 'a2a8da41340743418dd251f446cbda3f', '0,1,a2a8da41340743418dd251f446cbda3f,', '审核学生申报题目', 120, '/task/teacher/audit/studentrelese', '', '', '1', '', '5', '2021-04-18 18:37:20', '5', '2021-04-18 18:37:20', '', '0');
INSERT INTO `menu` VALUES ('e51b0df770a94d8dafa8885f87d64918', '1', '0,1,', '角色管理', 130, '/role', '', '', '1', '', '5', '2021-04-04 21:41:38', '5', '2021-04-04 21:41:38', '', '1');
INSERT INTO `menu` VALUES ('e66807b0ece74c7e84c14153d7d41553', '8a463f98aa1b48f99dafe189d86d4dfc', '0,1,8a463f98aa1b48f99dafe189d86d4dfc,', '修改密码', 110, '/information/modifyPassword', '', '', '1', '', '5', '2021-04-18 23:33:29', '5', '2021-04-18 23:33:29', '', '0');
INSERT INTO `menu` VALUES ('e775565dc071467d85b768312e2f5a70', '27', '0,1,27,', '菜单管理', 150, '/menu', '', '', '1', '', '5', '2021-04-03 20:27:52', '5', '2021-04-03 20:27:52', '', '1');
INSERT INTO `menu` VALUES ('e7b0ff2280a847cf827322b2c562155b', '1', '0,1,', '菜单管理', 190, '/role', '', '', '1', '', '5', '2021-04-09 19:57:00', '5', '2021-04-09 19:57:00', '', '1');
INSERT INTO `menu` VALUES ('f37890bf0132428485d6f4898d9d517f', 'bd25abd95d184150bb1234ab41dbd2bf', '0,1,bd25abd95d184150bb1234ab41dbd2bf,', '个人信息维护', 60, '/information', '', '', '1', '', '5', '2021-04-19 00:41:46', '5', '2021-04-19 00:41:46', '', '0');

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
INSERT INTO `office` VALUES ('43f1a367626a4049aca38e1b3d6ba3a3', '1', '0,1,', '外国语学院', 380, '5', '2021-04-14 22:10:39', '5', '2021-04-14 22:10:39', '', '1');
INSERT INTO `office` VALUES ('876e21c365b7428e971e2df322d9ec6d', '1', '0,1,', '文法学院', 330, '5', '2021-04-09 19:39:38', '5', '2021-04-09 19:39:38', '', '0');
INSERT INTO `office` VALUES ('8fdd5e3f614b4a2faecb98c112d2859d', '876e21c365b7428e971e2df322d9ec6d', '0,1,876e21c365b7428e971e2df322d9ec6d,', '法学', 60, '5', '2021-04-10 02:58:25', '5', '2021-04-10 02:58:25', '', '0');
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
INSERT INTO `role` VALUES ('289c40f1c916425c83426245adef124f', '一级管理员', 'One', '1', '2021-03-26 16:18:37', '1', '2021-03-26 16:24:37', '拥有所有权限', '1');
INSERT INTO `role` VALUES ('29da68c34c8747fc83640485639d63dd', '学生', 'student', '5', '2021-04-19 22:54:56', '5', '2021-04-19 22:54:56', '', '0');
INSERT INTO `role` VALUES ('2a44f1d218b545bb965af76c2fdb930f', '公司管理员5', 'hr5', '5', '2021-04-07 18:59:08', '5', '2021-04-07 18:59:08', '1', '0');
INSERT INTO `role` VALUES ('3', '本公司管理员', 'a', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `role` VALUES ('33be4afec6ae4f8eaececd0667aa5a8c', '公司管理员7', 'hr7', '5', '2021-04-07 19:04:46', '5', '2021-04-07 19:04:46', '1', '0');
INSERT INTO `role` VALUES ('3d5a6be2545e45c4b9d7a40eca94e400', '三级管理员', 'Three', '1', '2021-03-26 16:19:52', '1', '2021-03-26 16:26:15', '', '1');
INSERT INTO `role` VALUES ('4', '部门管理员', 'b', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `role` VALUES ('44ddaccf3caa4260adf3057296928188', '文法学院管理员2', 'hr23', '5', '2021-04-14 00:03:36', '5', '2021-04-14 00:03:36', '1', '0');
INSERT INTO `role` VALUES ('5', '本部门管理员', 'c', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `role` VALUES ('5d4f7b2f7f76475bb47794026d685d3a', '公司管理员2', 'hr2', '5', '2021-04-07 13:42:35', '5', '2021-04-07 13:42:35', '12', '0');
INSERT INTO `role` VALUES ('6', '普通用户', 'd', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `role` VALUES ('6c9e9188fbf04d6dab7cb8c135c7cc01', '公司管理员', 'hr1', '5', '2021-04-14 23:15:40', '5', '2021-04-14 23:15:40', '1', '0');
INSERT INTO `role` VALUES ('7', '济南市管理员', 'e', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `role` VALUES ('8', '部门管理员', 'management', '1', '2021-04-06 20:41:04', '1', '2021-04-06 20:40:57', NULL, '1');
INSERT INTO `role` VALUES ('89317d974ca64587aefc6b3ed5b7f004', '普通教师', 'teacher', '5', '2021-04-19 22:54:51', '5', '2021-04-19 22:54:51', '1', '0');
INSERT INTO `role` VALUES ('a4e57c2300f74394aae8ff177fc264a9', '公司管理员3', 'hr3', '5', '2021-04-07 14:48:58', '5', '2021-04-07 14:48:58', '1', '0');
INSERT INTO `role` VALUES ('c9908fcfdc174411befa3bfb38af8bcc', '二级管理员', 'a', '1', '2021-03-26 16:19:02', '1', '2021-03-26 16:25:55', '', '1');
INSERT INTO `role` VALUES ('cbbf05b97aba497dbcb9569e4fb22318', '公司管理员6', 'hr6', '5', '2021-04-07 19:02:04', '5', '2021-04-07 19:02:04', '1', '0');
INSERT INTO `role` VALUES ('d7b3b776a37a4cc4986da4409a173d98', '系主任', 'director', '5', '2021-04-19 22:54:46', '5', '2021-04-19 22:54:46', '', '0');
INSERT INTO `role` VALUES ('e0261c935b914d88be54731bb37a508a', '文法学院管理员', 'hr', '5', '2021-04-14 23:15:52', '5', '2021-04-14 23:15:52', '1', '0');
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
INSERT INTO `role_menu` VALUES ('1', '356072e77a8a46f9a917d9d0a9005764');
INSERT INTO `role_menu` VALUES ('1', '55aa6ead61554b1184d470912e5372ee');
INSERT INTO `role_menu` VALUES ('1', '620227a0eac6455ead5e4254c301ed64');
INSERT INTO `role_menu` VALUES ('1', '8a463f98aa1b48f99dafe189d86d4dfc');
INSERT INTO `role_menu` VALUES ('1', '8d8fb1707c5844ec900555c25952971c');
INSERT INTO `role_menu` VALUES ('1', '9790bfe348bc4b54bb6a5a0c3676cda3');
INSERT INTO `role_menu` VALUES ('1', 'a2a8da41340743418dd251f446cbda3f');
INSERT INTO `role_menu` VALUES ('2', '27');
INSERT INTO `role_menu` VALUES ('2', '28');
INSERT INTO `role_menu` VALUES ('29da68c34c8747fc83640485639d63dd', '155e0e0edb804beeba58c029a77883a8');
INSERT INTO `role_menu` VALUES ('29da68c34c8747fc83640485639d63dd', '18f35364dd0243f18f2b3db0b83158ab');
INSERT INTO `role_menu` VALUES ('29da68c34c8747fc83640485639d63dd', '36df55d4c0244ce587672a58a5e4e5ef');
INSERT INTO `role_menu` VALUES ('29da68c34c8747fc83640485639d63dd', '620227a0eac6455ead5e4254c301ed64');
INSERT INTO `role_menu` VALUES ('29da68c34c8747fc83640485639d63dd', '8a463f98aa1b48f99dafe189d86d4dfc');
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
INSERT INTO `role_menu` VALUES ('89317d974ca64587aefc6b3ed5b7f004', '4bde3d5a4ea24738a0733bc02b5a581a');
INSERT INTO `role_menu` VALUES ('89317d974ca64587aefc6b3ed5b7f004', '529206d390ee4fd7a76c4fc948ffcb67');
INSERT INTO `role_menu` VALUES ('89317d974ca64587aefc6b3ed5b7f004', '55aa6ead61554b1184d470912e5372ee');
INSERT INTO `role_menu` VALUES ('89317d974ca64587aefc6b3ed5b7f004', '72970b960e424d36b454057fe3c9dac7');
INSERT INTO `role_menu` VALUES ('89317d974ca64587aefc6b3ed5b7f004', '73b15b3cda2a48b58bdebbda7e27fb10');
INSERT INTO `role_menu` VALUES ('89317d974ca64587aefc6b3ed5b7f004', '7b187bed88a6494cb48a90a2b976873f');
INSERT INTO `role_menu` VALUES ('89317d974ca64587aefc6b3ed5b7f004', 'a2a8da41340743418dd251f446cbda3f');
INSERT INTO `role_menu` VALUES ('89317d974ca64587aefc6b3ed5b7f004', 'bd50d223e16b431ab339cecd9d46f940');
INSERT INTO `role_menu` VALUES ('89317d974ca64587aefc6b3ed5b7f004', 'e26034ffea5d4179b0651a47f52f3e96');
INSERT INTO `role_menu` VALUES ('a4e57c2300f74394aae8ff177fc264a9', '27');
INSERT INTO `role_menu` VALUES ('a4e57c2300f74394aae8ff177fc264a9', '28');
INSERT INTO `role_menu` VALUES ('cbbf05b97aba497dbcb9569e4fb22318', '27');
INSERT INTO `role_menu` VALUES ('cbbf05b97aba497dbcb9569e4fb22318', '8d8fb1707c5844ec900555c25952971c');
INSERT INTO `role_menu` VALUES ('d7b3b776a37a4cc4986da4409a173d98', '2cfc16329df745eba6c5970443a2bb05');
INSERT INTO `role_menu` VALUES ('d7b3b776a37a4cc4986da4409a173d98', '38cbbfe3ceb0404b98959368c0274258');
INSERT INTO `role_menu` VALUES ('d7b3b776a37a4cc4986da4409a173d98', '54acd5255ac54c2da348fba5208104f7');
INSERT INTO `role_menu` VALUES ('d7b3b776a37a4cc4986da4409a173d98', 'bd25abd95d184150bb1234ab41dbd2bf');
INSERT INTO `role_menu` VALUES ('d7b3b776a37a4cc4986da4409a173d98', 'de1d18b364904fdab26fb5631530d362');
INSERT INTO `role_menu` VALUES ('d7b3b776a37a4cc4986da4409a173d98', 'f37890bf0132428485d6f4898d9d517f');
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
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of task
-- ----------------------------
INSERT INTO `task` VALUES ('02b3e5cf44304133a677080019dc56d3', '123', '2', 'a152cd4f82094cb19fda73db74b653fa', '1', '1', '1', '1', '123', '123', '123', '123', '61072f70ed1e462ba1aff1edd4578b65', '1', '2020', '2021-04-17 13:54:50', '2021-04-17 13:54:50', '0');
INSERT INTO `task` VALUES ('03dd303337fb47bd81ea0c12c9f057a2', '213', '2', 'a152cd4f82094cb19fda73db74b653fa', '1', '3', '1', NULL, '213', '213', '123', '123', '02943039141b4adb86f5d405ae45bd8c', '3', '2020', '2021-04-18 20:40:04', '2021-04-18 20:40:04', '0');
INSERT INTO `task` VALUES ('0c59db9482874a7ab1bc28cfa0c9ccc5', '基于是的大嫂骄傲搜集', '2', 'a152cd4f82094cb19fda73db74b653fa', '1', '1', '2', '3', '1', '1', '1', '1', '4f0645600e5e48c6b44c1f2d54f68a33', '1', '2020', '2021-04-15 23:39:38', '2021-04-15 23:39:38', '0');
INSERT INTO `task` VALUES ('0cdfac6f843b44caa12b0c747c0304e0', '基于协同过滤的提取算法1', '2', 'a152cd4f82094cb19fda73db74b653fa', '1', '1', '1', '2', '1231234r234', '12312323r4', '234234', '12341234', '61072f70ed1e462ba1aff1edd4578b65', '2', '2020', '2021-04-18 06:23:29', '2021-04-16 18:55:39', '0');
INSERT INTO `task` VALUES ('11413babd0ad45019cf4cdf7e9e0c398', NULL, '2', 'a152cd4f82094cb19fda73db74b653fa', '1', NULL, '1', '1', '算法', 'TextRank算法\r\nTextRank 算法是一种用于文本的基于图的排序算法。其基本思想来源于谷歌的 PageRank算法, 通过把文本分割成若干组成单元(单词、句子)并建立图模型, 利用投票机制对文本中的重要成分进行排序, 仅利用单篇文档本身的信息即可实现关键词提取、文摘。和 LDA、HMM 等模型不同, TextRank不需要事先对多篇文档进行学习训练, 因其简洁有效而得到广泛应用。', '要实现算法', 'David Adamo: TextRank\r\nAutomatic Summarization\r\nTextRank\r\nPageRank', '5', '3', NULL, '2021-04-15 19:27:20', '2021-04-15 19:27:20', '0');
INSERT INTO `task` VALUES ('114d000292b64e49b64dd3497c486e88', NULL, '2', 'a152cd4f82094cb19fda73db74b653fa', NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-15 18:19:11', '2021-04-15 18:19:11', '0');
INSERT INTO `task` VALUES ('1290f23df8a546c08cc7ffb7b3d4ec26', '111111111111111111', '2', 'a152cd4f82094cb19fda73db74b653fa', '2', '1', '3', '1', '1111111111', '11111111', '1111111111111', '1111111111', '61072f70ed1e462ba1aff1edd4578b65', '3', '2020', '2021-04-17 05:32:32', '2021-04-16 15:38:46', '1');
INSERT INTO `task` VALUES ('14b2fc269d5e4620abbadb6e6e1d8392', '1', '2', 'a152cd4f82094cb19fda73db74b653fa', '0', '1', '0', '0', '1', '1', '1', '1', '61072f70ed1e462ba1aff1edd4578b65', '3', '2020', '2021-04-16 10:45:42', '2021-04-16 10:45:42', '1');
INSERT INTO `task` VALUES ('273092d895d64f07a9cc93f9f873a59d', NULL, '3', 'f41af8efa077441781a9a9875a9bf799', '2', NULL, '1', '2', '121', '112', '121', '121', '5', '3', NULL, '2021-04-15 20:11:50', '2021-04-15 20:11:50', '0');
INSERT INTO `task` VALUES ('3ea50b8e40cc464f9dd5c74a148b0644', '231442ewds', '2', 'a152cd4f82094cb19fda73db74b653fa', '2', '1', '2', '2', 'qwe', 'qwe', 'qwe', 'qwe', '61072f70ed1e462ba1aff1edd4578b65', '1', '2020', '2021-04-16 15:39:07', '2021-04-16 15:39:07', '0');
INSERT INTO `task` VALUES ('41998611c84c4117b409e01ed7b2779e', '213', '2', 'a152cd4f82094cb19fda73db74b653fa', '1', '1', '2', '1', '213', '123', '123', '123', '61072f70ed1e462ba1aff1edd4578b65', '3', '2020', '2021-04-19 15:46:33', '2021-04-19 15:46:33', '0');
INSERT INTO `task` VALUES ('443bbf81cdea423a8d83976cd886a6da', '123', '2', 'a152cd4f82094cb19fda73db74b653fa', '1', '1', '2', '1', '123', '123', '123', '123', '61072f70ed1e462ba1aff1edd4578b65', '1', '2020', '2021-04-17 13:54:12', '2021-04-17 13:54:12', '0');
INSERT INTO `task` VALUES ('47fc1693b662400fba1b1579ff3727d0', '123', '2', 'a152cd4f82094cb19fda73db74b653fa', '1', '1', '2', '1', '123', '123', '123', '123', '61072f70ed1e462ba1aff1edd4578b65', '1', '2020', '2021-04-17 13:55:14', '2021-04-17 13:55:14', '0');
INSERT INTO `task` VALUES ('4bd3942a2c154f1c8319f5b5cb1250db', '1', '2', 'a152cd4f82094cb19fda73db74b653fa', '1', '1', '2', '1', '1', '1', '1', '1', '61072f70ed1e462ba1aff1edd4578b65', '3', '2020', '2021-04-16 10:54:40', '2021-04-16 10:54:40', '1');
INSERT INTO `task` VALUES ('5fc163fab1cd498f9be95141cb8ee5ea', NULL, '2', 'a152cd4f82094cb19fda73db74b653fa', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-15 18:21:52', '2021-04-15 18:21:52', '0');
INSERT INTO `task` VALUES ('61a4affeaf3f4ec1bde1c43a89d907b4', '基于TextRank的短文本提取算法', '2', 'a152cd4f82094cb19fda73db74b653fa', '1', '3', '1', NULL, '数据挖掘', '这个算法的实现是很好的', '基本实现该算法', '哈哈哈哈哈', '61072f70ed1e462ba1aff1edd4578b65', '3', '2020', '2021-04-19 01:48:05', '2021-04-18 18:07:47', '1');
INSERT INTO `task` VALUES ('636b34d0cca74ee595e95e3f811ab1fa', NULL, '2', 'a152cd4f82094cb19fda73db74b653fa', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-15 18:08:17', '2021-04-15 18:08:17', '0');
INSERT INTO `task` VALUES ('78e7c947a66049c689b427bfcce55089', '123', '2', 'a152cd4f82094cb19fda73db74b653fa', '2', '1', '1', '3', '123', '123', '123', '123', '61072f70ed1e462ba1aff1edd4578b65', '1', '2020', '2021-04-17 13:55:03', '2021-04-17 13:55:03', '0');
INSERT INTO `task` VALUES ('854d145ab2864a6e8a48c39255e3d74e', '示范点发射点发', '2', 'a152cd4f82094cb19fda73db74b653fa', '2', '1', '1', '1', 's\'d\'f\'s', 's\'d\'f\'s\'d\'f', 's\'d\'f\'s\'d\'s\'d\'f', 's\'d\'f', '61072f70ed1e462ba1aff1edd4578b65', '2', '2020', '2021-04-16 15:48:36', '2021-04-16 15:48:36', '0');
INSERT INTO `task` VALUES ('8607f41127ec4c1cb9ea3f82d1db5b0b', '基于TextRank的短文本提取算法的实现', '2', 'a152cd4f82094cb19fda73db74b653fa', '1', '1', '2', '1', '12', '123', '213', '123', '5', '3', NULL, '2021-04-15 22:16:43', '2021-04-15 22:16:43', '0');
INSERT INTO `task` VALUES ('99bda226dd164a299347ef230455eff4', NULL, '2', 'a152cd4f82094cb19fda73db74b653fa', NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-15 18:13:44', '2021-04-15 18:13:44', '0');
INSERT INTO `task` VALUES ('9e3b9a3eaaf4409f81c175c63722a209', '基于数据挖掘的数据分析算法', '2', 'a152cd4f82094cb19fda73db74b653fa', '2', '1', '1', '3', '1213', '123', '123', '123', '5', '3', NULL, '2021-04-15 20:13:49', '2021-04-15 20:13:49', '0');
INSERT INTO `task` VALUES ('ad5cf43241444ece9674afb5592c1be9', '啊发生的', '2', 'a152cd4f82094cb19fda73db74b653fa', '1', '1', '2', '3', 'a\'s\'d', '阿萨大大', '阿迪斯', 's阿达', '61072f70ed1e462ba1aff1edd4578b65', '1', '2020', '2021-04-17 13:58:59', '2021-04-17 13:58:59', '0');
INSERT INTO `task` VALUES ('b33aa2f0478b432c9c2e4f7e7487ab33', '得到', '2', 'a152cd4f82094cb19fda73db74b653fa', '1', '1', '1', '1', '12', '213', '12312', '213', '61072f70ed1e462ba1aff1edd4578b65', '1', '2020', '2021-04-17 13:58:42', '2021-04-17 13:58:42', '0');
INSERT INTO `task` VALUES ('b767e09484f34868bffe95fef84b9283', '基于TextRank的短文本提取算法的具体实现和改进', '2', 'a152cd4f82094cb19fda73db74b653fa', '1', '1', '3', '2', '1', '1', '1', '1', '61072f70ed1e462ba1aff1edd4578b65', '1', '2020', '2021-04-15 22:19:33', '2021-04-15 22:19:33', '0');
INSERT INTO `task` VALUES ('bf4b6c0b1dfb4d1ab24b24443a07dcfd', '213艾弗森', '2', 'a152cd4f82094cb19fda73db74b653fa', '1', '2', '2', NULL, '1231', '123', 'asd', '123124234', '61072f70ed1e462ba1aff1edd4578b65', '1', '2020', '2021-04-20 17:31:16', '2021-04-19 14:50:43', '0');
INSERT INTO `task` VALUES ('bffa0781291e4023af6ac9f9240a2bb5', 'sda', '2', 'a152cd4f82094cb19fda73db74b653fa', '1', '1', '2', '1', 'asd', 'asdd', 'sad', 'asd', '61072f70ed1e462ba1aff1edd4578b65', '1', '2020', '2021-04-16 15:27:47', '2021-04-16 15:27:47', '0');
INSERT INTO `task` VALUES ('c14513e03f0c46e2ab4158a663c50f87', '123', '2', 'a152cd4f82094cb19fda73db74b653fa', '2', '3', '1', NULL, '123', '213', '213', '213', '61072f70ed1e462ba1aff1edd4578b65', '2', '2020', '2021-04-18 20:40:34', '2021-04-18 20:40:34', '0');
INSERT INTO `task` VALUES ('c21d4f4d561b4641b5f0e6c383ed48aa', '123123', '2', 'a152cd4f82094cb19fda73db74b653fa', '1', '1', '1', '1', '123', '123', '123', '123', '61072f70ed1e462ba1aff1edd4578b65', '1', '2020', '2021-04-17 13:54:28', '2021-04-17 13:54:28', '0');
INSERT INTO `task` VALUES ('ca90e2682c104bed8b9926134d5191e8', '基于数据挖掘的预测分析', '2', 'a152cd4f82094cb19fda73db74b653fa', '1', '1', '2', '2', '1', '1', '11', '1', '61072f70ed1e462ba1aff1edd4578b65', '1', '2020', '2021-04-15 23:16:36', '2021-04-15 23:16:36', '0');
INSERT INTO `task` VALUES ('e503aaacd3bc43a7a9f8d32c703498f5', NULL, '2', 'a152cd4f82094cb19fda73db74b653fa', NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-15 18:19:45', '2021-04-15 18:19:45', '0');
INSERT INTO `task` VALUES ('eb453adc94624cf794aecc6c796a1b1b', '1', '2', 'a152cd4f82094cb19fda73db74b653fa', '1', '1', '2', '1', '1', '1', '1', '1', '61072f70ed1e462ba1aff1edd4578b65', '1', '2020', '2021-04-16 14:49:26', '2021-04-16 14:49:26', '0');

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
INSERT INTO `task_canbechosenmajor` VALUES ('', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('', 'c0284c5df56d48eebe3a24e1078686da');
INSERT INTO `task_canbechosenmajor` VALUES ('02b3e5cf44304133a677080019dc56d3', '8fdd5e3f614b4a2faecb98c112d2859d');
INSERT INTO `task_canbechosenmajor` VALUES ('02b3e5cf44304133a677080019dc56d3', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('02b3e5cf44304133a677080019dc56d3', 'ae102782f17f455aa25853a767b25c09');
INSERT INTO `task_canbechosenmajor` VALUES ('02b3e5cf44304133a677080019dc56d3', 'ba365c5d038c4483a2dc3c17569cae7c');
INSERT INTO `task_canbechosenmajor` VALUES ('02b3e5cf44304133a677080019dc56d3', 'c0284c5df56d48eebe3a24e1078686da');
INSERT INTO `task_canbechosenmajor` VALUES ('02b3e5cf44304133a677080019dc56d3', 'f41af8efa077441781a9a9875a9bf799');
INSERT INTO `task_canbechosenmajor` VALUES ('0c59db9482874a7ab1bc28cfa0c9ccc5', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('0cdfac6f843b44caa12b0c747c0304e0', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('0cdfac6f843b44caa12b0c747c0304e0', 'c0284c5df56d48eebe3a24e1078686da');
INSERT INTO `task_canbechosenmajor` VALUES ('0cdfac6f843b44caa12b0c747c0304e0', 'f41af8efa077441781a9a9875a9bf799');
INSERT INTO `task_canbechosenmajor` VALUES ('11413babd0ad45019cf4cdf7e9e0c398', '8fdd5e3f614b4a2faecb98c112d2859d');
INSERT INTO `task_canbechosenmajor` VALUES ('11413babd0ad45019cf4cdf7e9e0c398', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('11413babd0ad45019cf4cdf7e9e0c398', 'ae102782f17f455aa25853a767b25c09');
INSERT INTO `task_canbechosenmajor` VALUES ('11413babd0ad45019cf4cdf7e9e0c398', 'ba365c5d038c4483a2dc3c17569cae7c');
INSERT INTO `task_canbechosenmajor` VALUES ('11413babd0ad45019cf4cdf7e9e0c398', 'c0284c5df56d48eebe3a24e1078686da');
INSERT INTO `task_canbechosenmajor` VALUES ('11413babd0ad45019cf4cdf7e9e0c398', 'f41af8efa077441781a9a9875a9bf799');
INSERT INTO `task_canbechosenmajor` VALUES ('114d000292b64e49b64dd3497c486e88', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('114d000292b64e49b64dd3497c486e88', 'c0284c5df56d48eebe3a24e1078686da');
INSERT INTO `task_canbechosenmajor` VALUES ('1290f23df8a546c08cc7ffb7b3d4ec26', '8fdd5e3f614b4a2faecb98c112d2859d');
INSERT INTO `task_canbechosenmajor` VALUES ('1290f23df8a546c08cc7ffb7b3d4ec26', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('1290f23df8a546c08cc7ffb7b3d4ec26', 'ae102782f17f455aa25853a767b25c09');
INSERT INTO `task_canbechosenmajor` VALUES ('1290f23df8a546c08cc7ffb7b3d4ec26', 'ba365c5d038c4483a2dc3c17569cae7c');
INSERT INTO `task_canbechosenmajor` VALUES ('1290f23df8a546c08cc7ffb7b3d4ec26', 'c0284c5df56d48eebe3a24e1078686da');
INSERT INTO `task_canbechosenmajor` VALUES ('1290f23df8a546c08cc7ffb7b3d4ec26', 'f41af8efa077441781a9a9875a9bf799');
INSERT INTO `task_canbechosenmajor` VALUES ('273092d895d64f07a9cc93f9f873a59d', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('273092d895d64f07a9cc93f9f873a59d', 'c0284c5df56d48eebe3a24e1078686da');
INSERT INTO `task_canbechosenmajor` VALUES ('3ea50b8e40cc464f9dd5c74a148b0644', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('3ea50b8e40cc464f9dd5c74a148b0644', 'c0284c5df56d48eebe3a24e1078686da');
INSERT INTO `task_canbechosenmajor` VALUES ('3ea50b8e40cc464f9dd5c74a148b0644', 'f41af8efa077441781a9a9875a9bf799');
INSERT INTO `task_canbechosenmajor` VALUES ('41998611c84c4117b409e01ed7b2779e', '8fdd5e3f614b4a2faecb98c112d2859d');
INSERT INTO `task_canbechosenmajor` VALUES ('41998611c84c4117b409e01ed7b2779e', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('41998611c84c4117b409e01ed7b2779e', 'ae102782f17f455aa25853a767b25c09');
INSERT INTO `task_canbechosenmajor` VALUES ('41998611c84c4117b409e01ed7b2779e', 'ba365c5d038c4483a2dc3c17569cae7c');
INSERT INTO `task_canbechosenmajor` VALUES ('41998611c84c4117b409e01ed7b2779e', 'c0284c5df56d48eebe3a24e1078686da');
INSERT INTO `task_canbechosenmajor` VALUES ('41998611c84c4117b409e01ed7b2779e', 'f41af8efa077441781a9a9875a9bf799');
INSERT INTO `task_canbechosenmajor` VALUES ('443bbf81cdea423a8d83976cd886a6da', '8fdd5e3f614b4a2faecb98c112d2859d');
INSERT INTO `task_canbechosenmajor` VALUES ('443bbf81cdea423a8d83976cd886a6da', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('443bbf81cdea423a8d83976cd886a6da', 'ae102782f17f455aa25853a767b25c09');
INSERT INTO `task_canbechosenmajor` VALUES ('443bbf81cdea423a8d83976cd886a6da', 'ba365c5d038c4483a2dc3c17569cae7c');
INSERT INTO `task_canbechosenmajor` VALUES ('443bbf81cdea423a8d83976cd886a6da', 'c0284c5df56d48eebe3a24e1078686da');
INSERT INTO `task_canbechosenmajor` VALUES ('443bbf81cdea423a8d83976cd886a6da', 'f41af8efa077441781a9a9875a9bf799');
INSERT INTO `task_canbechosenmajor` VALUES ('47fc1693b662400fba1b1579ff3727d0', '8fdd5e3f614b4a2faecb98c112d2859d');
INSERT INTO `task_canbechosenmajor` VALUES ('47fc1693b662400fba1b1579ff3727d0', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('47fc1693b662400fba1b1579ff3727d0', 'ae102782f17f455aa25853a767b25c09');
INSERT INTO `task_canbechosenmajor` VALUES ('47fc1693b662400fba1b1579ff3727d0', 'ba365c5d038c4483a2dc3c17569cae7c');
INSERT INTO `task_canbechosenmajor` VALUES ('47fc1693b662400fba1b1579ff3727d0', 'c0284c5df56d48eebe3a24e1078686da');
INSERT INTO `task_canbechosenmajor` VALUES ('47fc1693b662400fba1b1579ff3727d0', 'f41af8efa077441781a9a9875a9bf799');
INSERT INTO `task_canbechosenmajor` VALUES ('4bd3942a2c154f1c8319f5b5cb1250db', '8fdd5e3f614b4a2faecb98c112d2859d');
INSERT INTO `task_canbechosenmajor` VALUES ('4bd3942a2c154f1c8319f5b5cb1250db', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('4bd3942a2c154f1c8319f5b5cb1250db', 'ae102782f17f455aa25853a767b25c09');
INSERT INTO `task_canbechosenmajor` VALUES ('4bd3942a2c154f1c8319f5b5cb1250db', 'ba365c5d038c4483a2dc3c17569cae7c');
INSERT INTO `task_canbechosenmajor` VALUES ('4bd3942a2c154f1c8319f5b5cb1250db', 'c0284c5df56d48eebe3a24e1078686da');
INSERT INTO `task_canbechosenmajor` VALUES ('4bd3942a2c154f1c8319f5b5cb1250db', 'f41af8efa077441781a9a9875a9bf799');
INSERT INTO `task_canbechosenmajor` VALUES ('5fc163fab1cd498f9be95141cb8ee5ea', '8fdd5e3f614b4a2faecb98c112d2859d');
INSERT INTO `task_canbechosenmajor` VALUES ('5fc163fab1cd498f9be95141cb8ee5ea', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('5fc163fab1cd498f9be95141cb8ee5ea', 'ae102782f17f455aa25853a767b25c09');
INSERT INTO `task_canbechosenmajor` VALUES ('5fc163fab1cd498f9be95141cb8ee5ea', 'ba365c5d038c4483a2dc3c17569cae7c');
INSERT INTO `task_canbechosenmajor` VALUES ('5fc163fab1cd498f9be95141cb8ee5ea', 'c0284c5df56d48eebe3a24e1078686da');
INSERT INTO `task_canbechosenmajor` VALUES ('5fc163fab1cd498f9be95141cb8ee5ea', 'f41af8efa077441781a9a9875a9bf799');
INSERT INTO `task_canbechosenmajor` VALUES ('636b34d0cca74ee595e95e3f811ab1fa', '2');
INSERT INTO `task_canbechosenmajor` VALUES ('636b34d0cca74ee595e95e3f811ab1fa', '3');
INSERT INTO `task_canbechosenmajor` VALUES ('636b34d0cca74ee595e95e3f811ab1fa', '4');
INSERT INTO `task_canbechosenmajor` VALUES ('636b34d0cca74ee595e95e3f811ab1fa', '876e21c365b7428e971e2df322d9ec6d');
INSERT INTO `task_canbechosenmajor` VALUES ('636b34d0cca74ee595e95e3f811ab1fa', '8fdd5e3f614b4a2faecb98c112d2859d');
INSERT INTO `task_canbechosenmajor` VALUES ('636b34d0cca74ee595e95e3f811ab1fa', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('636b34d0cca74ee595e95e3f811ab1fa', 'ae102782f17f455aa25853a767b25c09');
INSERT INTO `task_canbechosenmajor` VALUES ('636b34d0cca74ee595e95e3f811ab1fa', 'ba365c5d038c4483a2dc3c17569cae7c');
INSERT INTO `task_canbechosenmajor` VALUES ('636b34d0cca74ee595e95e3f811ab1fa', 'c0284c5df56d48eebe3a24e1078686da');
INSERT INTO `task_canbechosenmajor` VALUES ('636b34d0cca74ee595e95e3f811ab1fa', 'f41af8efa077441781a9a9875a9bf799');
INSERT INTO `task_canbechosenmajor` VALUES ('78e7c947a66049c689b427bfcce55089', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('854d145ab2864a6e8a48c39255e3d74e', '8fdd5e3f614b4a2faecb98c112d2859d');
INSERT INTO `task_canbechosenmajor` VALUES ('854d145ab2864a6e8a48c39255e3d74e', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('854d145ab2864a6e8a48c39255e3d74e', 'ae102782f17f455aa25853a767b25c09');
INSERT INTO `task_canbechosenmajor` VALUES ('854d145ab2864a6e8a48c39255e3d74e', 'ba365c5d038c4483a2dc3c17569cae7c');
INSERT INTO `task_canbechosenmajor` VALUES ('854d145ab2864a6e8a48c39255e3d74e', 'c0284c5df56d48eebe3a24e1078686da');
INSERT INTO `task_canbechosenmajor` VALUES ('854d145ab2864a6e8a48c39255e3d74e', 'f41af8efa077441781a9a9875a9bf799');
INSERT INTO `task_canbechosenmajor` VALUES ('8607f41127ec4c1cb9ea3f82d1db5b0b', '8fdd5e3f614b4a2faecb98c112d2859d');
INSERT INTO `task_canbechosenmajor` VALUES ('8607f41127ec4c1cb9ea3f82d1db5b0b', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('8607f41127ec4c1cb9ea3f82d1db5b0b', 'ae102782f17f455aa25853a767b25c09');
INSERT INTO `task_canbechosenmajor` VALUES ('8607f41127ec4c1cb9ea3f82d1db5b0b', 'ba365c5d038c4483a2dc3c17569cae7c');
INSERT INTO `task_canbechosenmajor` VALUES ('8607f41127ec4c1cb9ea3f82d1db5b0b', 'c0284c5df56d48eebe3a24e1078686da');
INSERT INTO `task_canbechosenmajor` VALUES ('8607f41127ec4c1cb9ea3f82d1db5b0b', 'f41af8efa077441781a9a9875a9bf799');
INSERT INTO `task_canbechosenmajor` VALUES ('99bda226dd164a299347ef230455eff4', '8fdd5e3f614b4a2faecb98c112d2859d');
INSERT INTO `task_canbechosenmajor` VALUES ('99bda226dd164a299347ef230455eff4', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('99bda226dd164a299347ef230455eff4', 'ae102782f17f455aa25853a767b25c09');
INSERT INTO `task_canbechosenmajor` VALUES ('99bda226dd164a299347ef230455eff4', 'ba365c5d038c4483a2dc3c17569cae7c');
INSERT INTO `task_canbechosenmajor` VALUES ('99bda226dd164a299347ef230455eff4', 'c0284c5df56d48eebe3a24e1078686da');
INSERT INTO `task_canbechosenmajor` VALUES ('99bda226dd164a299347ef230455eff4', 'f41af8efa077441781a9a9875a9bf799');
INSERT INTO `task_canbechosenmajor` VALUES ('9e3b9a3eaaf4409f81c175c63722a209', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('ad5cf43241444ece9674afb5592c1be9', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('b33aa2f0478b432c9c2e4f7e7487ab33', '8fdd5e3f614b4a2faecb98c112d2859d');
INSERT INTO `task_canbechosenmajor` VALUES ('b33aa2f0478b432c9c2e4f7e7487ab33', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('b33aa2f0478b432c9c2e4f7e7487ab33', 'ae102782f17f455aa25853a767b25c09');
INSERT INTO `task_canbechosenmajor` VALUES ('b33aa2f0478b432c9c2e4f7e7487ab33', 'ba365c5d038c4483a2dc3c17569cae7c');
INSERT INTO `task_canbechosenmajor` VALUES ('b33aa2f0478b432c9c2e4f7e7487ab33', 'c0284c5df56d48eebe3a24e1078686da');
INSERT INTO `task_canbechosenmajor` VALUES ('b33aa2f0478b432c9c2e4f7e7487ab33', 'f41af8efa077441781a9a9875a9bf799');
INSERT INTO `task_canbechosenmajor` VALUES ('b767e09484f34868bffe95fef84b9283', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('bffa0781291e4023af6ac9f9240a2bb5', '8fdd5e3f614b4a2faecb98c112d2859d');
INSERT INTO `task_canbechosenmajor` VALUES ('bffa0781291e4023af6ac9f9240a2bb5', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('bffa0781291e4023af6ac9f9240a2bb5', 'ae102782f17f455aa25853a767b25c09');
INSERT INTO `task_canbechosenmajor` VALUES ('bffa0781291e4023af6ac9f9240a2bb5', 'ba365c5d038c4483a2dc3c17569cae7c');
INSERT INTO `task_canbechosenmajor` VALUES ('bffa0781291e4023af6ac9f9240a2bb5', 'c0284c5df56d48eebe3a24e1078686da');
INSERT INTO `task_canbechosenmajor` VALUES ('bffa0781291e4023af6ac9f9240a2bb5', 'f41af8efa077441781a9a9875a9bf799');
INSERT INTO `task_canbechosenmajor` VALUES ('c21d4f4d561b4641b5f0e6c383ed48aa', '8fdd5e3f614b4a2faecb98c112d2859d');
INSERT INTO `task_canbechosenmajor` VALUES ('c21d4f4d561b4641b5f0e6c383ed48aa', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('c21d4f4d561b4641b5f0e6c383ed48aa', 'ae102782f17f455aa25853a767b25c09');
INSERT INTO `task_canbechosenmajor` VALUES ('c21d4f4d561b4641b5f0e6c383ed48aa', 'ba365c5d038c4483a2dc3c17569cae7c');
INSERT INTO `task_canbechosenmajor` VALUES ('c21d4f4d561b4641b5f0e6c383ed48aa', 'c0284c5df56d48eebe3a24e1078686da');
INSERT INTO `task_canbechosenmajor` VALUES ('c21d4f4d561b4641b5f0e6c383ed48aa', 'f41af8efa077441781a9a9875a9bf799');
INSERT INTO `task_canbechosenmajor` VALUES ('ca90e2682c104bed8b9926134d5191e8', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('ca90e2682c104bed8b9926134d5191e8', 'c0284c5df56d48eebe3a24e1078686da');
INSERT INTO `task_canbechosenmajor` VALUES ('e503aaacd3bc43a7a9f8d32c703498f5', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('eb453adc94624cf794aecc6c796a1b1b', '8fdd5e3f614b4a2faecb98c112d2859d');
INSERT INTO `task_canbechosenmajor` VALUES ('eb453adc94624cf794aecc6c796a1b1b', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('eb453adc94624cf794aecc6c796a1b1b', 'ae102782f17f455aa25853a767b25c09');
INSERT INTO `task_canbechosenmajor` VALUES ('eb453adc94624cf794aecc6c796a1b1b', 'ba365c5d038c4483a2dc3c17569cae7c');
INSERT INTO `task_canbechosenmajor` VALUES ('eb453adc94624cf794aecc6c796a1b1b', 'c0284c5df56d48eebe3a24e1078686da');
INSERT INTO `task_canbechosenmajor` VALUES ('eb453adc94624cf794aecc6c796a1b1b', 'f41af8efa077441781a9a9875a9bf799');
INSERT INTO `task_canbechosenmajor` VALUES ('fa451a4ba11b461583c6eb71809be113', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('fa451a4ba11b461583c6eb71809be113', 'c0284c5df56d48eebe3a24e1078686da');

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
INSERT INTO `task_chosen` VALUES ('0c59db9482874a7ab1bc28cfa0c9ccc5', '010f53d2ae4c44d7b0319bebb5dc70c5', '1');
INSERT INTO `task_chosen` VALUES ('02b3e5cf44304133a677080019dc56d3', '010f53d2ae4c44d7b0319bebb5dc70c5', '3');
INSERT INTO `task_chosen` VALUES ('78e7c947a66049c689b427bfcce55089', '010f53d2ae4c44d7b0319bebb5dc70c5', '3');
INSERT INTO `task_chosen` VALUES ('3ea50b8e40cc464f9dd5c74a148b0644', '010f53d2ae4c44d7b0319bebb5dc70c5', '3');
INSERT INTO `task_chosen` VALUES ('ca90e2682c104bed8b9926134d5191e8', '010f53d2ae4c44d7b0319bebb5dc70c5', '1');
INSERT INTO `task_chosen` VALUES ('c21d4f4d561b4641b5f0e6c383ed48aa', '010f53d2ae4c44d7b0319bebb5dc70c5', '1');
INSERT INTO `task_chosen` VALUES ('61a4affeaf3f4ec1bde1c43a89d907b4', '010f53d2ae4c44d7b0319bebb5dc70c5', '1');
INSERT INTO `task_chosen` VALUES ('03dd303337fb47bd81ea0c12c9f057a2', '010f53d2ae4c44d7b0319bebb5dc70c5', '1');
INSERT INTO `task_chosen` VALUES ('c14513e03f0c46e2ab4158a663c50f87', '010f53d2ae4c44d7b0319bebb5dc70c5', '1');
INSERT INTO `task_chosen` VALUES ('bf4b6c0b1dfb4d1ab24b24443a07dcfd', '010f53d2ae4c44d7b0319bebb5dc70c5', '2');

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
INSERT INTO `user` VALUES ('010f53d2ae4c44d7b0319bebb5dc70c5', '吴家剑', '170344801341', '454cd1d42d58d740c69edeef3d3ebe0a', '341', '1', '11508789781@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('02943039141b4adb86f5d405ae45bd8c', '李启锐', 'superadmin6', '454cd1d42d58d740c69edeef3d3ebe0a', '34123', '1', '1150878978@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('074a700027a6479aa154e6bed93be7ee', '梁嘉诚', '17034480120', '454cd1d42d58d740c69edeef3d3ebe0a', '17034480120', '1', '1150878978@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('09b95c9b30424f619f5d9cdae864c1cf', '陈少波', 'superadmin4', '454cd1d42d58d740c69edeef3d3ebe0a', '3413', '1', '1150878978@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('0d62d83200db4b96bc83aac28298d402', '李启锐', '606301', '454cd1d42d58d740c69edeef3d3ebe0a', '606301', '1', '1150878978@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('27df569396bf42b4a73645ef083e56e3', '李启锐', 'superadmin3', '454cd1d42d58d740c69edeef3d3ebe0a', '341112', '1', '13690316547', 'USER', '0');
INSERT INTO `user` VALUES ('4f0645600e5e48c6b44c1f2d54f68a33', '曾繁烘', 'superadmin8', '454cd1d42d58d740c69edeef3d3ebe0a', '34111213', '1', '1150878978@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('5', '吴家剑', 'superadmin', '7edaed8f28b43651fe3ee90181754d63', '44', '', '', 'SUPERADMIN', '0');
INSERT INTO `user` VALUES ('61072f70ed1e462ba1aff1edd4578b65', '陈少波', 'superadmin7', '454cd1d42d58d740c69edeef3d3ebe0a', '3411111', '1', '1150878978@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('7aa39b081cc042db8a9ebffca0bdad11', '李启锐', '606302', '454cd1d42d58d740c69edeef3d3ebe0a', '3412', '1', '1150878978@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('83c93ee7af8f44efb49e2378392d35d2', '何杰光', 'superadmin5', '454cd1d42d58d740c69edeef3d3ebe0a', '341111', '1', '1150878978@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('84273c9be02b49b2800e256e87ae11a0', '吴家剑', '1703448013411', '454cd1d42d58d740c69edeef3d3ebe0a', '3411', '1', '1150878978@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('9fc64c0a260b48dfbe56dab66dfba382', '李启锐', 'superadmin9', '454cd1d42d58d740c69edeef3d3ebe0a', '341234', '1', '1150878978@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('b798a23da89e4c6483d750909d9b1214', '吴家剑', 'superadmin2', '454cd1d42d58d740c69edeef3d3ebe0a', '34111', '1', '1150878978@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('d9ab185cb2154b71bf9c0871fb892b50', '吴家剑', '17034480133', '454cd1d42d58d740c69edeef3d3ebe0a', '17034480134', '1', '1150878978@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('fc2eb472fee7444b9f207ff635c8b309', '吴家剑', 'superadmin1', '454cd1d42d58d740c69edeef3d3ebe0a', '170344801201', '1', '1150878978@qq.com', 'USER', '0');

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
  `user_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户id',
  `identitys_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '身份id,用于看是否需要显示专业\r\n1.学生\r\n2.普通教师\r\n3.系主任',
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
INSERT INTO `user_info_all` VALUES ('010f53d2ae4c44d7b0319bebb5dc70c5', '1', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', '29da68c34c8747fc83640485639d63dd', '0');
INSERT INTO `user_info_all` VALUES ('010f53d2ae4c44d7b0319bebb5dc70c5', '3', '2020', '3', 'f41af8efa077441781a9a9875a9bf799', 'd7b3b776a37a4cc4986da4409a173d98', '0');
INSERT INTO `user_info_all` VALUES ('010f53d2ae4c44d7b0319bebb5dc70c5', '1', '2017', '4', 'ba365c5d038c4483a2dc3c17569cae7c', '1', '1');
INSERT INTO `user_info_all` VALUES ('010f53d2ae4c44d7b0319bebb5dc70c5', '2', '2020', '876e21c365b7428e971e2df322d9ec6d', NULL, 'a4e57c2300f74394aae8ff177fc264a9', '1');
INSERT INTO `user_info_all` VALUES ('02943039141b4adb86f5d405ae45bd8c', '2', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', '89317d974ca64587aefc6b3ed5b7f004', '0');
INSERT INTO `user_info_all` VALUES ('074a700027a6479aa154e6bed93be7ee', '1', '2017', '2', 'a152cd4f82094cb19fda73db74b653fa', '29da68c34c8747fc83640485639d63dd', '0');
INSERT INTO `user_info_all` VALUES ('074a700027a6479aa154e6bed93be7ee', '1', '2017', '3', 'f41af8efa077441781a9a9875a9bf799', '29da68c34c8747fc83640485639d63dd', '0');
INSERT INTO `user_info_all` VALUES ('09b95c9b30424f619f5d9cdae864c1cf', '2', '2020', '2', NULL, '89317d974ca64587aefc6b3ed5b7f004', '1');
INSERT INTO `user_info_all` VALUES ('0d62d83200db4b96bc83aac28298d402', '3', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', '5d4f7b2f7f76475bb47794026d685d3a', '1');
INSERT INTO `user_info_all` VALUES ('0d62d83200db4b96bc83aac28298d402', '3', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', 'd7b3b776a37a4cc4986da4409a173d98', '1');
INSERT INTO `user_info_all` VALUES ('27df569396bf42b4a73645ef083e56e3', '2', '2017', '2', NULL, 'd7b3b776a37a4cc4986da4409a173d98', '1');
INSERT INTO `user_info_all` VALUES ('27df569396bf42b4a73645ef083e56e3', '2', '2020', '2', NULL, '89317d974ca64587aefc6b3ed5b7f004', '1');
INSERT INTO `user_info_all` VALUES ('4f0645600e5e48c6b44c1f2d54f68a33', '3', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', '89317d974ca64587aefc6b3ed5b7f004', '0');
INSERT INTO `user_info_all` VALUES ('61072f70ed1e462ba1aff1edd4578b65', '2', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', '89317d974ca64587aefc6b3ed5b7f004', '0');
INSERT INTO `user_info_all` VALUES ('7aa39b081cc042db8a9ebffca0bdad11', '2', '2017', '3', NULL, 'd7b3b776a37a4cc4986da4409a173d98', '1');
INSERT INTO `user_info_all` VALUES ('83c93ee7af8f44efb49e2378392d35d2', '2', '2020', '3', NULL, '89317d974ca64587aefc6b3ed5b7f004', '1');
INSERT INTO `user_info_all` VALUES ('84273c9be02b49b2800e256e87ae11a0', '3', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', '1', '1');
INSERT INTO `user_info_all` VALUES ('9fc64c0a260b48dfbe56dab66dfba382', '3', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', 'd7b3b776a37a4cc4986da4409a173d98', '0');
INSERT INTO `user_info_all` VALUES ('b798a23da89e4c6483d750909d9b1214', '1', '2020', '2', 'c0284c5df56d48eebe3a24e1078686da', '1', '1');
INSERT INTO `user_info_all` VALUES ('d9ab185cb2154b71bf9c0871fb892b50', '1', '2017', '2', 'a152cd4f82094cb19fda73db74b653fa', '1', '0');

SET FOREIGN_KEY_CHECKS = 1;
