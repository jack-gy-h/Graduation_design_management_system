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

 Date: 06/03/2022 20:11:21
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
INSERT INTO `assignment_book` VALUES ('10d8ee53a8cd4e92ba04c4680cfc042b', 'weqweq', 'wqeweqw', 'qweqwe', '2');
INSERT INTO `assignment_book` VALUES ('be2744906ed84f20911e05c8f70c187d', 'aa', 'bb', 'ccc', '2');

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
INSERT INTO `log` VALUES ('02955e8f400a41dcaf9cca5e2c439cb7', '确认通过', '542061319b934960bc080ee87fec0ef9', '/teacher/task/chosenstudent', '双选课题选择', '4f90ff5ef2984e1e8fc16c0f9d7f5732', '2021-05-16 06:55:55.688000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('03472428e72445cba2e92c3e8be2230f', '确认通过', '542061319b934960bc080ee87fec0ef9', '/teacher/task/chosenstudent', '双选课题选择', '43106f2a9f1740289ef09e40489e28e2', '2021-05-16 09:35:32.793000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('07f33f4dd5ff4b3fadc45c7778130f92', '选择', '39c2a456d62f4c3e87afc863ae6decda', '/task/student/double/choose', '课题', '026fed30ec4c409493d16ce20ab9f385', '2021-05-16 00:40:17.112000', '29da68c34c8747fc83640485639d63dd');
INSERT INTO `log` VALUES ('099ed336288542dfa7878b7f5bb8eff8', '查看', '73a41961ce024d3c92da16c7fe416647', '/teacher/tasklist', '双选题目', NULL, '2021-05-16 00:10:33.585000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('0c552b1833f64de8a2181f9e01ad01e7', '退选', '8858d9cb62a644d2ae3e9055faa6f7c9', '/task/student/deletehaschosentopic', '题目', '4f90ff5ef2984e1e8fc16c0f9d7f5732', '2021-05-16 07:23:18.126000', '29da68c34c8747fc83640485639d63dd');
INSERT INTO `log` VALUES ('0da6cb3a168f41559dcc1e56901c0583', '添加', '542061319b934960bc080ee87fec0ef9', '/task/form/save', '课题', '14b5a123945c4c719ea8460cf4d23a45', '2021-05-15 21:29:55.204000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('0e38d674ca3148428781a908acd6b04a', '查看', '542061319b934960bc080ee87fec0ef9', '/teacher/tasklist', '双选题目', NULL, '2021-05-16 00:19:58.057000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('100c8f4950de4c94b9b2a12bd015c147', '查看', '73a41961ce024d3c92da16c7fe416647', '/teacher/tasklist', '双选题目', NULL, '2021-05-16 06:51:09.991000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('11239dffcc244966835d251c73de066d', '确认不通过', '542061319b934960bc080ee87fec0ef9', '/teacher/task/chosenstudent', '双选课题选择', '026fed30ec4c409493d16ce20ab9f385', '2021-05-16 00:09:34.333000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('120fb1b642594ac59f7b8e4b9d51a7f4', '选择', '39c2a456d62f4c3e87afc863ae6decda', '/task/student/double/choose', '课题', '9092825929db4ea48bd2f467d0da9ee2', '2022-02-13 17:18:00.848000', '29da68c34c8747fc83640485639d63dd');
INSERT INTO `log` VALUES ('1341b72e18db4a9c878f31bb8ff8d7de', '选择', '39c2a456d62f4c3e87afc863ae6decda', '/task/student/double/choose', '课题', '9092825929db4ea48bd2f467d0da9ee2', '2022-02-13 17:27:03.888000', '29da68c34c8747fc83640485639d63dd');
INSERT INTO `log` VALUES ('17e446eb6dbc40b19bab678a2aad7d23', '添加', '73a41961ce024d3c92da16c7fe416647', '/task/form/save', '课题', 'e17a1f4cb2024556806e0bdda16f44a0', '2021-05-15 21:49:35.118000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('1937457800f843d3be6508407cd8ea3e', '添加', '542061319b934960bc080ee87fec0ef9', '/task/form/save', '课题', '3c2564569b71448ab7b6770fec1e7404', '2021-05-15 21:38:41.175000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('19e46b579aa34f8c95b78db0fdc2f795', '选择', '39c2a456d62f4c3e87afc863ae6decda', '/task/student/double/choose', '课题', '86f12e5c58054a16840c9721ead26d9f', '2022-02-13 17:07:00.394000', '29da68c34c8747fc83640485639d63dd');
INSERT INTO `log` VALUES ('1cc4ef87121444b782d7e6887062c911', '添加', '542061319b934960bc080ee87fec0ef9', '/task/form/save', '课题', 'f58624e695444fef9b9475d31ff9dd1e', '2021-05-15 21:35:42.193000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('1f199f9c763e4836b845282c34c6c019', '退选', '39c2a456d62f4c3e87afc863ae6decda', '/task/student/deletehaschosentopic', '题目', '8b1c013f7790453fb95977acb85243bf', '2022-02-13 16:38:42.790000', '29da68c34c8747fc83640485639d63dd');
INSERT INTO `log` VALUES ('230f95e5643a4b2c83a16861f85de904', '通过', '542061319b934960bc080ee87fec0ef9', '/task/audit/double', '双选课题审核', 'd331b1ca79e343639e3fe60222ca946f', '2021-05-15 22:39:15.897000', 'd7b3b776a37a4cc4986da4409a173d98');
INSERT INTO `log` VALUES ('26c7a738531d403f912f0c1f394ec53b', '确认通过', '542061319b934960bc080ee87fec0ef9', '/teacher/task/chosenstudent', '双选课题选择', '026fed30ec4c409493d16ce20ab9f385', '2021-05-15 23:57:05.247000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('28c3177b5eb547b2a40201db29d218a8', '通过', '542061319b934960bc080ee87fec0ef9', '/task/audit/double', '双选课题审核', '6f6c3b35a2a84fec918009014caf412c', '2021-05-15 22:39:50.495000', 'd7b3b776a37a4cc4986da4409a173d98');
INSERT INTO `log` VALUES ('2a53122e8a964b27af871b6fa6d34ad4', '查看', '542061319b934960bc080ee87fec0ef9', '/teacher/tasklist', '双选题目', NULL, '2021-05-16 07:23:41.834000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('2a72d0a89f2443b6a8553ca55df5ad34', '添加', '73a41961ce024d3c92da16c7fe416647', '/task/form/save', '课题', '5cdce9b015b14af1b83937515c24064d', '2021-05-15 22:04:41.980000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('2d953d68d5b84b78bf5e87fcd248f552', '查看', '73a41961ce024d3c92da16c7fe416647', '/teacher/tasklist', '双选题目', NULL, '2021-05-15 21:46:06.429000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('333988c1c2ae4b6794061468ab8b739e', '查看', '1', '/office', '机构', NULL, '2022-03-01 18:42:11.269000', NULL);
INSERT INTO `log` VALUES ('35dd82f385b84f58b867265023797001', '通过', '542061319b934960bc080ee87fec0ef9', '/task/audit/double', '双选课题审核', '026fed30ec4c409493d16ce20ab9f385', '2021-05-15 22:39:10.177000', 'd7b3b776a37a4cc4986da4409a173d98');
INSERT INTO `log` VALUES ('35f599a750d14be68580d4aa38dabd29', '通过', '542061319b934960bc080ee87fec0ef9', '/task/audit/double', '双选课题审核', '4f90ff5ef2984e1e8fc16c0f9d7f5732', '2021-05-15 22:39:48.681000', 'd7b3b776a37a4cc4986da4409a173d98');
INSERT INTO `log` VALUES ('370c557553b94f35b8fa53bfb2842e91', '退选', '39c2a456d62f4c3e87afc863ae6decda', '/task/student/deletehaschosentopic', '题目', '66fea16c6fd949cf928bd9f433ef9aa8', '2022-02-13 17:06:56.664000', '29da68c34c8747fc83640485639d63dd');
INSERT INTO `log` VALUES ('370f47c3b9484a39830c1d893ad673fd', '添加', '73a41961ce024d3c92da16c7fe416647', '/task/form/save', '课题', '9092825929db4ea48bd2f467d0da9ee2', '2021-05-15 22:14:58.978000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('3be81e4c89d641d19359d73850ee6609', '通过', '542061319b934960bc080ee87fec0ef9', '/task/audit/double', '双选课题审核', '744aaeb78a6948cc82393f980f04f46a', '2021-05-15 22:39:12.037000', 'd7b3b776a37a4cc4986da4409a173d98');
INSERT INTO `log` VALUES ('3c76422cd51f4adda9dede3e1e6c0720', '查看', '542061319b934960bc080ee87fec0ef9', '/teacher/tasklist', '双选题目', NULL, '2021-05-16 06:56:04.207000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('3fab04f283f244d1b96c7090f0c75728', '添加', '542061319b934960bc080ee87fec0ef9', '/task/form/save', '课题', '744aaeb78a6948cc82393f980f04f46a', '2021-05-15 21:28:52.896000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('442ef8ef1aef4600adfa50464faa8d4c', '选择', '8858d9cb62a644d2ae3e9055faa6f7c9', '/task/student/double/choose', '课题', '4f90ff5ef2984e1e8fc16c0f9d7f5732', '2021-05-16 06:54:46.426000', '29da68c34c8747fc83640485639d63dd');
INSERT INTO `log` VALUES ('45bdd67130454fa4b9fc5e52733350b4', '查看', '1', '/announcement', '公告列表', NULL, '2022-02-13 17:45:05.832000', NULL);
INSERT INTO `log` VALUES ('479cc10ca17d40dca3bee4e4d58da5cd', '退选', '39c2a456d62f4c3e87afc863ae6decda', '/task/student/deletehaschosentopic', '题目', '86f12e5c58054a16840c9721ead26d9f', '2022-02-13 17:09:13.196000', '29da68c34c8747fc83640485639d63dd');
INSERT INTO `log` VALUES ('480cecbeb92e4a4b93cd9323c03535fd', '查看', '542061319b934960bc080ee87fec0ef9', '/teacher/tasklist', '双选题目', NULL, '2021-05-15 23:57:01.523000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('49b7a33506014b3693f210fff879b4f0', '查看', '73a41961ce024d3c92da16c7fe416647', '/teacher/tasklist', '双选题目', NULL, '2021-05-15 21:50:27.245000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('4bb9d0d382754105a62fc725f6cccd90', '添加', '73a41961ce024d3c92da16c7fe416647', '/task/form/save', '课题', '86f12e5c58054a16840c9721ead26d9f', '2021-05-15 21:56:53.387000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('4cf762e571c943e183e36a598da4a2ce', '添加', '542061319b934960bc080ee87fec0ef9', '/task/form/save', '课题', '2ef01aa8d70248bbbb1f02ea6c589da2', '2021-05-15 21:39:39.639000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('4e1f66f382514449a17e71776514fc6e', '查看', '5ac2df0370bf447785b8312a58e86ede', '/teacher/tasklist', '双选题目', NULL, '2021-05-16 01:24:11.971000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('4fcd34ac38cb4b4395f6fd6ef3e3af3a', '查看', '1', '/role', '角色列表', NULL, '2022-03-01 18:41:55.731000', NULL);
INSERT INTO `log` VALUES ('50a068dc39e34e32aa1d03dbd82b12bf', '查看', '73a41961ce024d3c92da16c7fe416647', '/teacher/tasklist', '双选题目', NULL, '2021-05-15 22:16:20.524000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('536fda998fe341a29b89838e488656df', '退选', '8858d9cb62a644d2ae3e9055faa6f7c9', '/task/student/deletehaschosentopic', '题目', '026fed30ec4c409493d16ce20ab9f385', '2021-05-16 00:06:26.793000', '29da68c34c8747fc83640485639d63dd');
INSERT INTO `log` VALUES ('54400fcc8df347c4bab770eab1ed1e0e', '查看', '1', '/role', '角色列表', NULL, '2022-03-05 18:14:26.268000', NULL);
INSERT INTO `log` VALUES ('55b3df5485224827a0b3a87af61c58b5', '查看', '542061319b934960bc080ee87fec0ef9', '/teacher/tasklist', '双选题目', NULL, '2021-05-15 23:56:08.062000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('5c16a3d9c8d646d8b482eacefa33ba2e', '选择', '4263769fe9d64c75b703bdb88d80f714', '/task/student/double/choose', '课题', '43106f2a9f1740289ef09e40489e28e2', '2021-05-16 09:35:23.428000', '29da68c34c8747fc83640485639d63dd');
INSERT INTO `log` VALUES ('5f42dace069e434994bd45bc1b568daa', '退选', '39c2a456d62f4c3e87afc863ae6decda', '/task/student/deletehaschosentopic', '题目', '9092825929db4ea48bd2f467d0da9ee2', '2022-02-13 16:52:48.509000', '29da68c34c8747fc83640485639d63dd');
INSERT INTO `log` VALUES ('65d3a9ce99a747d1b18b917ebc0b3ede', '退选', '39c2a456d62f4c3e87afc863ae6decda', '/task/student/deletehaschosentopic', '题目', 'd331b1ca79e343639e3fe60222ca946f', '2022-02-13 16:15:17.790000', '29da68c34c8747fc83640485639d63dd');
INSERT INTO `log` VALUES ('6bcccbad202643378ef032d587ca2014', '查看', '542061319b934960bc080ee87fec0ef9', '/teacher/tasklist', '双选题目', NULL, '2021-05-16 00:45:49.002000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('6d3d3250450b45ef9cd4c3ef63f6dabf', '退选', '39c2a456d62f4c3e87afc863ae6decda', '/task/student/deletehaschosentopic', '题目', '744aaeb78a6948cc82393f980f04f46a', '2022-02-13 16:41:24.180000', '29da68c34c8747fc83640485639d63dd');
INSERT INTO `log` VALUES ('71723cbcf7d04c67a41e49b475262a5b', '查看', '542061319b934960bc080ee87fec0ef9', '/teacher/tasklist', '双选题目', NULL, '2021-05-15 23:54:14.692000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('72732955e2354299b2de2c0670cdd745', '通过', '542061319b934960bc080ee87fec0ef9', '/task/audit/double', '双选课题审核', '86f12e5c58054a16840c9721ead26d9f', '2021-05-15 22:39:53.731000', 'd7b3b776a37a4cc4986da4409a173d98');
INSERT INTO `log` VALUES ('72c903edd3b44149835aba76112d5c90', '查看', '542061319b934960bc080ee87fec0ef9', '/teacher/tasklist', '双选题目', NULL, '2021-05-16 00:18:08.335000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('736d236aa1f6486796945c57dc3f6330', '查看', '1', '/role', '角色列表', NULL, '2022-03-01 18:42:15.193000', NULL);
INSERT INTO `log` VALUES ('784e6ca87f2f4af7b2956c388b0fe33d', '查看', '73a41961ce024d3c92da16c7fe416647', '/teacher/tasklist', '双选题目', NULL, '2021-05-16 06:50:57.339000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('7887de8d70e04be59e35b672dd971e4f', '添加', '73a41961ce024d3c92da16c7fe416647', '/task/form/save', '课题', '66fea16c6fd949cf928bd9f433ef9aa8', '2021-05-15 22:06:33.480000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('78899cacd91443cab591d170cd906f3e', '添加', '73a41961ce024d3c92da16c7fe416647', '/task/form/save', '课题', '6f6c3b35a2a84fec918009014caf412c', '2021-05-15 22:03:21.528000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('7bd943fd1e3c478585548b18181e403f', '退选', '39c2a456d62f4c3e87afc863ae6decda', '/task/student/deletehaschosentopic', '题目', '8b1c013f7790453fb95977acb85243bf', '2022-02-13 17:03:18.419000', '29da68c34c8747fc83640485639d63dd');
INSERT INTO `log` VALUES ('7ca8e5a3747744d7b9fd4534407c90e2', '添加', '542061319b934960bc080ee87fec0ef9', '/task/form/save', '课题', '026fed30ec4c409493d16ce20ab9f385', '2021-05-15 21:45:33.442000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('7cccfb439ac948ef9f41c1c2ff5978bb', '添加', '542061319b934960bc080ee87fec0ef9', '/task/form/save', '课题', 'c1dbe1cd68e54456b0c6e877cdea8486', '2021-05-15 21:31:39.032000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('826f5a86311949ae9202b6566347a5f3', '确认不通过', '542061319b934960bc080ee87fec0ef9', '/teacher/task/chosenstudent', '双选课题选择', '026fed30ec4c409493d16ce20ab9f385', '2022-02-13 15:31:43.271000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('857ffa37e14a40389afd5ad55e0de1d9', '添加', '542061319b934960bc080ee87fec0ef9', '/task/form/save', '课题', '266d19549a6b4f5d9d68d7ca36d319d5', '2021-05-15 21:44:24.428000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('8599644edc9f4e98aecb56c0ab7b4969', '选择', '39c2a456d62f4c3e87afc863ae6decda', '/task/student/double/choose', '课题', '744aaeb78a6948cc82393f980f04f46a', '2022-02-13 16:24:47.911000', '29da68c34c8747fc83640485639d63dd');
INSERT INTO `log` VALUES ('882bb8787607432682d01b66f88ad216', '退选', '8858d9cb62a644d2ae3e9055faa6f7c9', '/task/student/deletehaschosentopic', '题目', '026fed30ec4c409493d16ce20ab9f385', '2021-05-16 06:54:27.112000', '29da68c34c8747fc83640485639d63dd');
INSERT INTO `log` VALUES ('8ab6aae693c6423bb4f611b7481fefe8', '通过', '542061319b934960bc080ee87fec0ef9', '/task/audit/double', '双选课题审核', '66fea16c6fd949cf928bd9f433ef9aa8', '2021-05-15 22:39:52.055000', 'd7b3b776a37a4cc4986da4409a173d98');
INSERT INTO `log` VALUES ('8be9ce2d25944f9aa545ac131c186bfb', '查看', '542061319b934960bc080ee87fec0ef9', '/teacher/tasklist', '双选题目', NULL, '2021-05-16 00:18:03.108000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('8ee673bd456a439b975f2b898ce3480a', '查看', '73a41961ce024d3c92da16c7fe416647', '/teacher/tasklist', '双选题目', NULL, '2021-05-15 22:16:17.430000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('927ad02bd35e4bd5a1212b28e20d8c08', '查看', '1', '/office', '机构', NULL, '2022-03-01 18:41:51.818000', NULL);
INSERT INTO `log` VALUES ('996bc24dd0614bd0a86ed251af211710', '确认通过', '73a41961ce024d3c92da16c7fe416647', '/teacher/task/chosenstudent', '双选课题选择', '6f6c3b35a2a84fec918009014caf412c', '2022-03-01 18:36:27.223000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('a53337aa1b3848a29601ee5d3108b1c4', '退选', '39c2a456d62f4c3e87afc863ae6decda', '/task/student/deletehaschosentopic', '题目', '86f12e5c58054a16840c9721ead26d9f', '2022-02-13 16:56:20.108000', '29da68c34c8747fc83640485639d63dd');
INSERT INTO `log` VALUES ('a77e496032304a38a4d670bef97ba516', '查看', '542061319b934960bc080ee87fec0ef9', '/teacher/tasklist', '双选题目', NULL, '2021-05-16 00:09:30.758000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('a9cf24c411534e718bbfdac23223be9d', '查看', '73a41961ce024d3c92da16c7fe416647', '/teacher/tasklist', '双选题目', NULL, '2021-05-15 22:39:32.132000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('aa30ba283ccd44c29abc8376d3c84a86', '查看', '73a41961ce024d3c92da16c7fe416647', '/teacher/tasklist', '双选题目', NULL, '2021-05-15 22:15:22.050000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('abb94d366cde4e9b9b81d5a1565163a8', '通过', '542061319b934960bc080ee87fec0ef9', '/task/audit/double', '双选课题审核', '8b1c013f7790453fb95977acb85243bf', '2021-05-15 22:39:56.002000', 'd7b3b776a37a4cc4986da4409a173d98');
INSERT INTO `log` VALUES ('abbd09602e804442a476ea5db336c854', '退选', '39c2a456d62f4c3e87afc863ae6decda', '/task/student/deletehaschosentopic', '题目', '9092825929db4ea48bd2f467d0da9ee2', '2022-02-13 16:15:15.625000', '29da68c34c8747fc83640485639d63dd');
INSERT INTO `log` VALUES ('addb67aed57e497682673de916231dff', '退选', '8858d9cb62a644d2ae3e9055faa6f7c9', '/task/student/deletehaschosentopic', '题目', '026fed30ec4c409493d16ce20ab9f385', '2021-05-16 00:06:23.379000', '29da68c34c8747fc83640485639d63dd');
INSERT INTO `log` VALUES ('b044d3b887ea43108dfca05b222bfcad', '查看', '542061319b934960bc080ee87fec0ef9', '/teacher/tasklist', '双选题目', NULL, '2021-05-15 21:17:59.299000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('b221034185a14449a33065cc54c0f2fe', '选择', '8858d9cb62a644d2ae3e9055faa6f7c9', '/task/student/double/choose', '课题', '026fed30ec4c409493d16ce20ab9f385', '2021-05-16 00:29:42.602000', '29da68c34c8747fc83640485639d63dd');
INSERT INTO `log` VALUES ('b55dd6dfb7d9426b9a4a9901e3eab324', '退选', '39c2a456d62f4c3e87afc863ae6decda', '/task/student/deletehaschosentopic', '题目', '744aaeb78a6948cc82393f980f04f46a', '2022-02-13 16:35:39.438000', '29da68c34c8747fc83640485639d63dd');
INSERT INTO `log` VALUES ('b5957e3a5b9d4cdfb583e66e3c386d04', '添加', '73a41961ce024d3c92da16c7fe416647', '/task/form/save', '课题', '753ced55667e43358c1a45f4ebb99d20', '2021-05-15 21:58:03.279000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('b82f6b3c48aa48bdbf5ccd423de29797', '选择', '8858d9cb62a644d2ae3e9055faa6f7c9', '/task/student/double/choose', '课题', '026fed30ec4c409493d16ce20ab9f385', '2021-05-15 23:57:51.216000', '29da68c34c8747fc83640485639d63dd');
INSERT INTO `log` VALUES ('b954018e73b2495489d8429a3b401f70', '退选', '39c2a456d62f4c3e87afc863ae6decda', '/task/student/deletehaschosentopic', '题目', '9092825929db4ea48bd2f467d0da9ee2', '2022-02-13 17:27:01.286000', '29da68c34c8747fc83640485639d63dd');
INSERT INTO `log` VALUES ('bff49c7480614b76abda12950b9a28a7', '选择', '39c2a456d62f4c3e87afc863ae6decda', '/task/student/double/choose', '课题', '66fea16c6fd949cf928bd9f433ef9aa8', '2022-02-13 17:03:20.950000', '29da68c34c8747fc83640485639d63dd');
INSERT INTO `log` VALUES ('c842fe40d0a64e8098964327d4023b68', '查看', '542061319b934960bc080ee87fec0ef9', '/teacher/tasklist', '双选题目', NULL, '2021-05-15 21:18:03.234000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('ca54857464064ef1b8cfde09f3185c13', '通过', '542061319b934960bc080ee87fec0ef9', '/task/audit/double', '双选课题审核', '43106f2a9f1740289ef09e40489e28e2', '2021-05-16 09:35:00.545000', 'd7b3b776a37a4cc4986da4409a173d98');
INSERT INTO `log` VALUES ('d27fe1d0368246679703f4427439f89b', '添加', '542061319b934960bc080ee87fec0ef9', '/task/form/save', '课题', 'd331b1ca79e343639e3fe60222ca946f', '2021-05-15 21:36:37.736000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('d2edad928c5d4a39b9c7d4e242281b80', '添加', '73a41961ce024d3c92da16c7fe416647', '/task/form/save', '课题', '8b1c013f7790453fb95977acb85243bf', '2021-05-15 22:38:28.681000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('d5d6f0ac04ab4a638f768e576a8ec5c4', '退选', '39c2a456d62f4c3e87afc863ae6decda', '/task/student/deletehaschosentopic', '题目', '86f12e5c58054a16840c9721ead26d9f', '2022-02-13 17:17:59.286000', '29da68c34c8747fc83640485639d63dd');
INSERT INTO `log` VALUES ('d5e8b853088c44149b9e405e1b43d4ce', '选择', '39c2a456d62f4c3e87afc863ae6decda', '/task/student/double/choose', '课题', '026fed30ec4c409493d16ce20ab9f385', '2021-05-15 22:40:45.492000', '29da68c34c8747fc83640485639d63dd');
INSERT INTO `log` VALUES ('d5ec765fd6174f5baec5165709a4d395', '查看', '1', '/role', '角色列表', NULL, '2021-05-16 09:25:53.093000', NULL);
INSERT INTO `log` VALUES ('d749a0db1f494323aea1ea570a2dc630', '选择', '8858d9cb62a644d2ae3e9055faa6f7c9', '/task/student/double/choose', '课题', '4f90ff5ef2984e1e8fc16c0f9d7f5732', '2022-02-13 14:46:17.924000', '29da68c34c8747fc83640485639d63dd');
INSERT INTO `log` VALUES ('d8a5ddb8085f4d96970fe03b4ad745cc', '查看', '1', '/menu', '菜单', NULL, '2022-03-01 18:42:12.431000', NULL);
INSERT INTO `log` VALUES ('d8d7bf4bbd884c6dbec873bd3d092dcc', '查看', '542061319b934960bc080ee87fec0ef9', '/teacher/tasklist', '双选题目', NULL, '2021-05-16 06:55:25.178000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('dc35f7fbb069470fb6342736e9f662e4', '查看', '73a41961ce024d3c92da16c7fe416647', '/teacher/tasklist', '双选题目', NULL, '2021-05-15 22:39:27.367000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('e045f7b884f4491981dc6bba66e42dcd', '确认不通过', '542061319b934960bc080ee87fec0ef9', '/teacher/task/chosenstudent', '双选课题选择', '4f90ff5ef2984e1e8fc16c0f9d7f5732', '2021-05-16 06:56:08.890000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('e1053ce608774354bb654adcd387faf6', '通过', '542061319b934960bc080ee87fec0ef9', '/task/audit/double', '双选课题审核', '9092825929db4ea48bd2f467d0da9ee2', '2021-05-15 22:39:14.365000', 'd7b3b776a37a4cc4986da4409a173d98');
INSERT INTO `log` VALUES ('e2f077fcc3c74d84a0b93537fcfe5add', '查看', '542061319b934960bc080ee87fec0ef9', '/teacher/tasklist', '双选题目', NULL, '2021-05-16 00:19:49.820000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('e996cef76dbe4def9e93ab4c9f2af358', '确认通过', '542061319b934960bc080ee87fec0ef9', '/teacher/task/chosenstudent', '双选课题选择', '026fed30ec4c409493d16ce20ab9f385', '2021-05-16 00:45:56.977000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('efde5374b5c445fab9b55b7408e2a655', '选择', '8858d9cb62a644d2ae3e9055faa6f7c9', '/task/student/double/choose', '课题', '4f90ff5ef2984e1e8fc16c0f9d7f5732', '2021-05-16 07:23:16.912000', '29da68c34c8747fc83640485639d63dd');
INSERT INTO `log` VALUES ('f037a8e06c2a43f8a5a3c4eabea91553', '查看', '73a41961ce024d3c92da16c7fe416647', '/teacher/tasklist', '双选题目', NULL, '2021-05-15 22:16:28.434000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('f0faf512f67f4d5c8b5da9b8855b41fa', '选择', '8858d9cb62a644d2ae3e9055faa6f7c9', '/task/student/double/choose', '课题', '026fed30ec4c409493d16ce20ab9f385', '2021-05-16 00:06:24.974000', '29da68c34c8747fc83640485639d63dd');
INSERT INTO `log` VALUES ('f10fde9a36e846fa94ba27dd3064ce61', '添加', '542061319b934960bc080ee87fec0ef9', '/task/form/save', '课题', '43106f2a9f1740289ef09e40489e28e2', '2021-05-16 09:34:41.575000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('f85f89a020fa42958cb23fa29674ec3f', '查看', '73a41961ce024d3c92da16c7fe416647', '/teacher/tasklist', '双选题目', NULL, '2021-05-15 22:17:50.909000', '89317d974ca64587aefc6b3ed5b7f004');
INSERT INTO `log` VALUES ('f91c1a3f59894df9977df5ee638de723', '退选', '39c2a456d62f4c3e87afc863ae6decda', '/task/student/deletehaschosentopic', '题目', '66fea16c6fd949cf928bd9f433ef9aa8', '2022-02-13 16:24:45.378000', '29da68c34c8747fc83640485639d63dd');
INSERT INTO `log` VALUES ('fe6446c7b189490aa4046e0daaffd400', '添加', '542061319b934960bc080ee87fec0ef9', '/task/form/save', '课题', '4f90ff5ef2984e1e8fc16c0f9d7f5732', '2021-05-15 21:34:34.772000', '89317d974ca64587aefc6b3ed5b7f004');

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
INSERT INTO `office` VALUES ('01461c6822964d7ebda08332e3867fcd', 'e7be21050aad4cdaa4d33cb207b47cf9', '0,1,e7be21050aad4cdaa4d33cb207b47cf9,', '电子信息科学与技术', 60, '1', '2021-05-14 10:39:22', '1', '2021-05-14 10:39:22', '', '0');
INSERT INTO `office` VALUES ('074ed1fb779541278bb576921e8628ee', 'b3398db4af644c9cb15ebb336430b703', '0,1,b3398db4af644c9cb15ebb336430b703,', '工业设计', 120, '1', '2021-05-14 10:19:36', '1', '2021-05-14 10:19:36', '', '0');
INSERT INTO `office` VALUES ('0aa4de5fa89b44f3bac4353ac10424b0', 'b3398db4af644c9cb15ebb336430b703', '0,1,b3398db4af644c9cb15ebb336430b703,', '工业工程', 150, '1', '2021-05-14 10:20:07', '1', '2021-05-14 10:20:07', '', '0');
INSERT INTO `office` VALUES ('0f4da6f3925646f4a98255086e9db0b7', 'b3398db4af644c9cb15ebb336430b703', '0,1,b3398db4af644c9cb15ebb336430b703,', '机械设计制造及其自动化', 30, '1', '2021-05-14 10:17:59', '1', '2021-05-14 10:17:59', '', '0');
INSERT INTO `office` VALUES ('1', '0', '0,', '广东石油化工学院', 0, '', '2013-05-27 08:00:00', '', '2013-05-27 08:00:00', '', '0');
INSERT INTO `office` VALUES ('1cfc28018a314e63add1ce9c39205f7f', '83968cb9c5a94dc197e42b17e511f009', '0,1,83968cb9c5a94dc197e42b17e511f009,', '土木工程', 60, '1', '2021-05-14 10:41:27', '1', '2021-05-14 10:41:27', '', '0');
INSERT INTO `office` VALUES ('2', '1', '0,1', '计算机学院', 100, '', '2021-04-09 17:56:23', '', '2021-04-09 17:56:28', '', '0');
INSERT INTO `office` VALUES ('22ded5d4b36a4a418c900c9d5ebf03cf', '2b5c447b12d443c2a1ffd581656d3d11', '0,1,2b5c447b12d443c2a1ffd581656d3d11,', '新能源科学与工程', 180, '1', '2021-05-14 10:43:31', '1', '2021-05-14 10:43:31', '', '0');
INSERT INTO `office` VALUES ('230012a1b3ee4f76b3802411fcab5f23', '1', '0,1,', '外国语学院', 360, '1', '2021-05-14 10:47:06', '1', '2021-05-14 10:47:06', '', '0');
INSERT INTO `office` VALUES ('263084bd5cce4b38a24f0cb345a53eb1', '6e1b65d59ef44b3bac1ab3fc02dba26d', '0,1,6e1b65d59ef44b3bac1ab3fc02dba26d,', '化学工程与工艺', 60, '1', '2021-05-14 02:45:01', '1', '2021-05-14 02:45:01', '', '0');
INSERT INTO `office` VALUES ('282c29adc8c740a1982b8e013c32083e', 'f2692a04ee114be4bb213c732a53a373', '0,1,f2692a04ee114be4bb213c732a53a373,', '生物工程', 90, '1', '2021-05-14 10:16:30', '1', '2021-05-14 10:16:30', '', '0');
INSERT INTO `office` VALUES ('2877008d60d4489f8b57de91d637567e', 'f2692a04ee114be4bb213c732a53a373', '0,1,f2692a04ee114be4bb213c732a53a373,', '生物技术', 60, '1', '2021-05-14 10:16:09', '1', '2021-05-14 10:16:09', '', '0');
INSERT INTO `office` VALUES ('2892bcdc17ff4dfd80bbe66e309fc34b', '1', '0,1,', '化学学院', 80, '1', '2021-05-14 02:46:08', '1', '2021-05-14 02:46:08', '', '0');
INSERT INTO `office` VALUES ('2b5c447b12d443c2a1ffd581656d3d11', '1', '0,1,', '理学院', 110, '1', '2021-05-14 10:41:37', '1', '2021-05-14 10:41:37', '', '0');
INSERT INTO `office` VALUES ('3', '1', '0,1', '石油工程学院', 50, '', '2021-04-09 18:00:02', '', '2021-04-09 18:00:05', '', '0');
INSERT INTO `office` VALUES ('3ad9ab76ec0848bca2e4c20ef08f767e', '8d4a5f10d62a49e08b838114c1f7bdc5', '0,1,8d4a5f10d62a49e08b838114c1f7bdc5,', '社会体育指导与管理', 30, '1', '2021-05-14 10:48:25', '1', '2021-05-14 10:48:25', '', '0');
INSERT INTO `office` VALUES ('3b3a3eb79ab04bfcb2543250a8fbcf06', 'b3398db4af644c9cb15ebb336430b703', '0,1,b3398db4af644c9cb15ebb336430b703,', '安全工程', 240, '1', '2021-05-14 10:35:51', '1', '2021-05-14 10:35:51', '', '0');
INSERT INTO `office` VALUES ('4', '1', '0,1,', '环境科学与工程学院', 86, '1', '2021-05-14 02:48:34', '1', '2021-05-14 02:48:34', '', '0');
INSERT INTO `office` VALUES ('417053ee4c754b5cb5d66943bd4a6343', '53f2c19b1fc34448bfbc8af9acef1690', '0,1,53f2c19b1fc34448bfbc8af9acef1690,', '音乐表演', 30, '1', '2021-05-14 10:49:45', '1', '2021-05-14 10:49:45', '', '0');
INSERT INTO `office` VALUES ('42d5036b3e27430d9fbf7267361fa4f1', '83968cb9c5a94dc197e42b17e511f009', '0,1,83968cb9c5a94dc197e42b17e511f009,', '建筑学', 30, '1', '2021-05-14 10:41:17', '1', '2021-05-14 10:41:17', '', '0');
INSERT INTO `office` VALUES ('43f1a367626a4049aca38e1b3d6ba3a3', '1', '0,1,', '外国语学院', 380, '5', '2021-04-14 22:10:39', '5', '2021-04-14 22:10:39', '', '1');
INSERT INTO `office` VALUES ('4f06ae6e37be43f9973cd7db53311827', '2b5c447b12d443c2a1ffd581656d3d11', '0,1,2b5c447b12d443c2a1ffd581656d3d11,', '地理科学', 150, '1', '2021-05-14 10:42:57', '1', '2021-05-14 10:42:57', '', '0');
INSERT INTO `office` VALUES ('53f2c19b1fc34448bfbc8af9acef1690', '1', '0,1,', '艺术与设计学院', 420, '1', '2021-05-14 10:49:27', '1', '2021-05-14 10:49:27', '', '0');
INSERT INTO `office` VALUES ('5f2b5e605bc948b491a910fbece0c35c', 'ae102782f17f455aa25853a767b25c09', '0,1,ae102782f17f455aa25853a767b25c09,', '自动化', 180, '5', '2021-05-01 23:29:58', '5', '2021-05-01 23:29:58', '', '0');
INSERT INTO `office` VALUES ('60d7ba1caeb24e4d83bf6be3c1132779', '1', '0,1,', '材料科学与工程学院', 85, '1', '2021-05-14 02:47:09', '1', '2021-05-14 02:47:09', '', '0');
INSERT INTO `office` VALUES ('61f4486965f845229a516fce68e799f4', '60d7ba1caeb24e4d83bf6be3c1132779', '0,1,60d7ba1caeb24e4d83bf6be3c1132779,', '高分子材料与工程', 30, '1', '2021-05-14 02:47:58', '1', '2021-05-14 02:47:58', '', '0');
INSERT INTO `office` VALUES ('683ed4f5260d40a7a92bcf2b9221e1be', '2b5c447b12d443c2a1ffd581656d3d11', '0,1,2b5c447b12d443c2a1ffd581656d3d11,', '教育技术学', 30, '1', '2021-05-14 10:42:02', '1', '2021-05-14 10:42:02', '', '0');
INSERT INTO `office` VALUES ('6e1b65d59ef44b3bac1ab3fc02dba26d', '1', '0,1,', '化学工程学院', 75, '1', '2021-05-14 02:44:25', '1', '2021-05-14 02:44:25', '', '0');
INSERT INTO `office` VALUES ('731dc0fa74db4e318c9a7d22b55ee80a', 'ef0d5304c81f4d85ac34b57693ef57c8', '0,1,ef0d5304c81f4d85ac34b57693ef57c8,', '市场营销', 30, '1', '2021-05-14 10:44:44', '1', '2021-05-14 10:44:44', '', '0');
INSERT INTO `office` VALUES ('771ee789e8ee45f98f7a1e11db47542a', 'ae102782f17f455aa25853a767b25c09', '0,1,ae102782f17f455aa25853a767b25c09,', '电气工程及其自动化（卓越班）', 60, '1', '2021-05-14 10:36:41', '1', '2021-05-14 10:36:41', '', '0');
INSERT INTO `office` VALUES ('7758c93552d04388840f12c4c412ee4d', '4', '0,1,4,', '环保设备工程', 60, '1', '2021-05-14 02:49:05', '1', '2021-05-14 02:49:05', '', '0');
INSERT INTO `office` VALUES ('78ddadf6604e4f89a0b642ad658c0848', 'b3398db4af644c9cb15ebb336430b703', '0,1,b3398db4af644c9cb15ebb336430b703,', '能源与动力工程', 180, '1', '2021-05-14 10:20:41', '1', '2021-05-14 10:20:41', '', '0');
INSERT INTO `office` VALUES ('7b18260ea805426a9b817d5e6daf66bc', '3', '0,13,', '资源勘查工程', 60, '1', '2021-05-14 02:44:03', '1', '2021-05-14 02:44:03', '', '0');
INSERT INTO `office` VALUES ('83968cb9c5a94dc197e42b17e511f009', '1', '0,1,', '建筑工程学院', 105, '1', '2021-05-14 10:40:55', '1', '2021-05-14 10:40:55', '', '0');
INSERT INTO `office` VALUES ('876e21c365b7428e971e2df322d9ec6d', '1', '0,1,', '文法学院', 330, '5', '2021-04-09 19:39:38', '5', '2021-04-09 19:39:38', '', '0');
INSERT INTO `office` VALUES ('8afc86fa60dc407c9006ccf4ce3f54df', '876e21c365b7428e971e2df322d9ec6d', '0,1,876e21c365b7428e971e2df322d9ec6d,', '汉语言文学', 90, '1', '2021-05-14 10:46:00', '1', '2021-05-14 10:46:00', '', '0');
INSERT INTO `office` VALUES ('8ba829b9368f4873b247b60c11a4f52e', '6e1b65d59ef44b3bac1ab3fc02dba26d', '0,1,6e1b65d59ef44b3bac1ab3fc02dba26d,', '能源化学工程', 90, '1', '2021-05-14 02:45:21', '1', '2021-05-14 02:45:21', '', '0');
INSERT INTO `office` VALUES ('8c1ed74ced39433d850e57ec527e5c3f', 'e7be21050aad4cdaa4d33cb207b47cf9', '0,1,e7be21050aad4cdaa4d33cb207b47cf9,', '电子信息工程', 30, '1', '2021-05-14 10:39:07', '1', '2021-05-14 10:39:07', '', '0');
INSERT INTO `office` VALUES ('8d4a5f10d62a49e08b838114c1f7bdc5', '1', '0,1,', '体育学院', 390, '1', '2021-05-14 10:47:35', '1', '2021-05-14 10:47:35', '', '0');
INSERT INTO `office` VALUES ('8fdd5e3f614b4a2faecb98c112d2859d', '876e21c365b7428e971e2df322d9ec6d', '0,1,876e21c365b7428e971e2df322d9ec6d,', '法学', 60, '5', '2021-04-10 02:58:25', '5', '2021-04-10 02:58:25', '', '0');
INSERT INTO `office` VALUES ('952c0788253f437b92bcbab464a16485', '83968cb9c5a94dc197e42b17e511f009', '0,1,83968cb9c5a94dc197e42b17e511f009,', '环艺', 30, '5', '2021-05-01 23:30:12', '5', '2021-05-01 23:30:12', '', '1');
INSERT INTO `office` VALUES ('97de3c8049c242eda05342039df91201', 'b3398db4af644c9cb15ebb336430b703', '0,1,b3398db4af644c9cb15ebb336430b703,', '焊接技术与工程', 210, '1', '2021-05-14 10:35:37', '1', '2021-05-14 10:35:37', '', '0');
INSERT INTO `office` VALUES ('9912b9927ac94a3697f068491e87d7e3', '230012a1b3ee4f76b3802411fcab5f23', '0,1,230012a1b3ee4f76b3802411fcab5f23,', '英语', 30, '1', '2021-05-14 10:47:18', '1', '2021-05-14 10:47:18', '', '0');
INSERT INTO `office` VALUES ('a152cd4f82094cb19fda73db74b653fa', '2', '0,12,', '计算机科学与技术', 50, '5', '2021-04-09 19:50:20', '5', '2021-04-09 19:50:20', '', '0');
INSERT INTO `office` VALUES ('a576b376aacb463aba3a92a10de3e128', '2b5c447b12d443c2a1ffd581656d3d11', '0,1,2b5c447b12d443c2a1ffd581656d3d11,', '物理学', 120, '1', '2021-05-14 10:42:40', '1', '2021-05-14 10:42:40', '', '0');
INSERT INTO `office` VALUES ('ae102782f17f455aa25853a767b25c09', '1', '0,1,', '自动化学院', 92, '5', '2021-04-10 02:58:08', '5', '2021-04-10 02:58:08', '', '0');
INSERT INTO `office` VALUES ('afd304c87215465ea9b8706d8f339904', 'ae102782f17f455aa25853a767b25c09', '0,1,ae102782f17f455aa25853a767b25c09,', '测控技术与仪器', 120, '1', '2021-05-14 10:37:28', '1', '2021-05-14 10:37:28', '', '0');
INSERT INTO `office` VALUES ('b3398db4af644c9cb15ebb336430b703', '1', '0,1,', '机电工程学院', 91, '1', '2021-05-14 10:16:58', '1', '2021-05-14 10:16:58', '', '0');
INSERT INTO `office` VALUES ('b3631e8b53bf466e9828651ab1b10ebd', 'ef0d5304c81f4d85ac34b57693ef57c8', '0,1,ef0d5304c81f4d85ac34b57693ef57c8,', '会计学', 60, '1', '2021-05-14 10:44:55', '1', '2021-05-14 10:44:55', '', '0');
INSERT INTO `office` VALUES ('b36dabc5cc4c4fc1aad2884f40b41a51', 'ae102782f17f455aa25853a767b25c09', '0,1,ae102782f17f455aa25853a767b25c09,', '电气工程及其自动化', 90, '1', '2021-05-14 10:37:12', '1', '2021-05-14 10:37:12', '', '0');
INSERT INTO `office` VALUES ('b3e3d6c48788464fac4c215886941047', '2892bcdc17ff4dfd80bbe66e309fc34b', '0,1,2892bcdc17ff4dfd80bbe66e309fc34b,', '应用化学', 30, '1', '2021-05-14 02:46:32', '1', '2021-05-14 02:46:32', '', '0');
INSERT INTO `office` VALUES ('b46b120689004a85b5f65fb1147a2861', '876e21c365b7428e971e2df322d9ec6d', '0,1,876e21c365b7428e971e2df322d9ec6d,', '中文', 60, '5', '2021-04-10 02:57:49', '5', '2021-04-10 02:57:49', '', '1');
INSERT INTO `office` VALUES ('ba365c5d038c4483a2dc3c17569cae7c', '4', '0,14,', '环境工程', 30, '5', '2021-04-09 20:02:06', '5', '2021-04-09 20:02:06', '', '0');
INSERT INTO `office` VALUES ('bc8651ea2bab48ceba68c49bc260a264', 'b3398db4af644c9cb15ebb336430b703', '0,1,b3398db4af644c9cb15ebb336430b703,', '过程设备与控制工程', 60, '1', '2021-05-14 10:18:46', '1', '2021-05-14 10:18:46', '', '0');
INSERT INTO `office` VALUES ('c0284c5df56d48eebe3a24e1078686da', '2', '0,12,', '物联网工程', 70, '1', '2021-05-14 10:39:35', '1', '2021-05-14 10:39:35', '', '0');
INSERT INTO `office` VALUES ('cd75251b38474fd3901845b4c24d03c3', '6e1b65d59ef44b3bac1ab3fc02dba26d', '0,1,6e1b65d59ef44b3bac1ab3fc02dba26d,', '化学工程与工艺（卓越班）', 30, '1', '2021-05-14 02:44:53', '1', '2021-05-14 02:44:53', '', '0');
INSERT INTO `office` VALUES ('d1b56058e5f347938a005261c511d554', '53f2c19b1fc34448bfbc8af9acef1690', '0,1,53f2c19b1fc34448bfbc8af9acef1690,', '环境设计', 90, '1', '2021-05-14 10:50:25', '1', '2021-05-14 10:50:25', '', '0');
INSERT INTO `office` VALUES ('d67e23535f1d48bd9c700bc112ac4bf5', '2b5c447b12d443c2a1ffd581656d3d11', '0,1,2b5c447b12d443c2a1ffd581656d3d11,', '数学与应用数学', 60, '1', '2021-05-14 10:42:13', '1', '2021-05-14 10:42:13', '', '0');
INSERT INTO `office` VALUES ('d70ed3300ec94065b7a7bba7076fcf66', '53f2c19b1fc34448bfbc8af9acef1690', '0,1,53f2c19b1fc34448bfbc8af9acef1690,', '音乐学', 60, '1', '2021-05-14 10:50:10', '1', '2021-05-14 10:50:10', '', '0');
INSERT INTO `office` VALUES ('d9ec5ed938284e5696c885798a94c914', '876e21c365b7428e971e2df322d9ec6d', '0,1,876e21c365b7428e971e2df322d9ec6d,', '历史学', 120, '1', '2021-05-14 10:46:17', '1', '2021-05-14 10:46:17', '', '0');
INSERT INTO `office` VALUES ('dd540e00d55f4c63b2f7cfd55ac1ba25', 'b3398db4af644c9cb15ebb336430b703', '0,1,b3398db4af644c9cb15ebb336430b703,', '材料成型及控制工程', 90, '1', '2021-05-14 10:19:24', '1', '2021-05-14 10:19:24', '', '0');
INSERT INTO `office` VALUES ('e24238487daa41daa0ff84d62af033ef', '2', '0,12,', '网络', 110, '5', '2021-04-09 19:51:09', '5', '2021-04-09 19:51:09', '', '1');
INSERT INTO `office` VALUES ('e7be21050aad4cdaa4d33cb207b47cf9', '1', '0,1,', '电子信息工程学院', 93, '1', '2021-05-14 10:38:38', '1', '2021-05-14 10:38:38', '', '0');
INSERT INTO `office` VALUES ('e932c4eac8fe444a8e05d457cf7102b1', '3', '0,13,', '油气储运工程', 20, '1', '2021-05-14 02:43:25', '1', '2021-05-14 02:43:25', '', '0');
INSERT INTO `office` VALUES ('ea4fe1a19cee45de9e81a4c42c625a87', '876e21c365b7428e971e2df322d9ec6d', '0,1,876e21c365b7428e971e2df322d9ec6d,', '学前教育（师范）', 150, '1', '2021-05-14 10:46:45', '1', '2021-05-14 10:46:45', '', '0');
INSERT INTO `office` VALUES ('ead94513607b4d0aa243037cce3c0d71', '4', '0,1,4,', '给排水科学与工程', 90, '1', '2021-05-14 02:49:54', '1', '2021-05-14 02:49:54', '', '0');
INSERT INTO `office` VALUES ('ef0d5304c81f4d85ac34b57693ef57c8', '1', '0,1,', '经济管理学院', 115, '1', '2021-05-14 10:44:02', '1', '2021-05-14 10:44:02', '', '0');
INSERT INTO `office` VALUES ('f007fa39ac474fc0af2dec00a99ea0c0', '2', '0,12,', '网络工程', 60, '1', '2021-05-14 10:40:04', '1', '2021-05-14 10:40:04', '', '0');
INSERT INTO `office` VALUES ('f2692a04ee114be4bb213c732a53a373', '1', '0,1,', '生物与食品工程学院', 90, '1', '2021-05-14 02:51:00', '1', '2021-05-14 02:51:00', '', '0');
INSERT INTO `office` VALUES ('f27a03bd05dc48a5a2e1ba3872b61635', 'ae102782f17f455aa25853a767b25c09', '0,1,ae102782f17f455aa25853a767b25c09,', '智能科学与技术', 150, '1', '2021-05-14 10:37:44', '1', '2021-05-14 10:37:44', '', '0');
INSERT INTO `office` VALUES ('f293fbf32c4443e9b5ca863705aadd78', '2b5c447b12d443c2a1ffd581656d3d11', '0,1,2b5c447b12d443c2a1ffd581656d3d11,', '信息与计算科学', 90, '1', '2021-05-14 10:42:31', '1', '2021-05-14 10:42:31', '', '0');
INSERT INTO `office` VALUES ('f41af8efa077441781a9a9875a9bf799', '3', '0,13,', '石油工程', 30, '1', '2021-05-14 02:43:13', '1', '2021-05-14 02:43:13', '', '0');
INSERT INTO `office` VALUES ('f8691aab77cf46fbb243fefe0fa382f0', 'ef0d5304c81f4d85ac34b57693ef57c8', '0,1,ef0d5304c81f4d85ac34b57693ef57c8,', '国际经济与贸易', 90, '1', '2021-05-14 10:45:16', '1', '2021-05-14 10:45:16', '', '0');
INSERT INTO `office` VALUES ('fe5c7087613945f582c4f883f61a96f9', 'f2692a04ee114be4bb213c732a53a373', '0,1,f2692a04ee114be4bb213c732a53a373,', '食品科学与工程', 30, '1', '2021-05-14 10:13:43', '1', '2021-05-14 10:13:43', '', '0');

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
INSERT INTO `schedule` VALUES ('a152cd4f82094cb19fda73db74b653fa', '2021-05-12 00:00:00', '2021-05-13 00:00:00');

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
INSERT INTO `task` VALUES ('026fed30ec4c409493d16ce20ab9f385', '彩色图像特征提取与植物分类研究', '2', 'a152cd4f82094cb19fda73db74b653fa', '1', '1', '1', '3', '计算机视觉;数字图像处理;模式识别;彩色图像;径向基概率神经网络(RBPNN);支持向量机(SVM);小波变换;广义高斯模型;Contourlet小波;Gabor纹理特征', '计算机视觉技术在现代生活中已获得了广泛的应用，高效的图像处理算法是计算机视觉技术能否获得成功应用的关键，与工业图像处理相比，植物的外形尺寸、形状、颜色是植物分类的重要外观特征。', '基本实现基于内容的图像特征提取方面', '[1]邱茂林,马颂德,李毅.计算机视觉中摄像机定标综述[J].自动化学报,2000(01):47-59.\r\n[2]卢宏涛,张秦川.深度卷积神经网络在计算机视觉中的应用研究综述[J].数据采集与处理,2016,31(01):1-17.\r\n[3]郑胤,陈权崎,章毓晋.深度学习及其在目标和行为识别中的新进展[J].中国图象图形学报,2014,19(02):175-184.\r\n[4]贾慧星,章毓晋.车辆辅助驾驶系统中基于计算机视觉的行人检测研究综述[J].自动化学报,2007(01):84-90.', '542061319b934960bc080ee87fec0ef9', '1', '2020', 'be2744906ed84f20911e05c8f70c187d', '/static/material/毕业设计相关材料提交.rar', '毕业设计相关材料提交.rar', NULL, '80', '5ac2df0370bf447785b8312a58e86ede', '88', '2021-05-15 21:45:33', '2021-05-15 21:45:33', '0');
INSERT INTO `task` VALUES ('14b5a123945c4c719ea8460cf4d23a45', '双目立体视觉深度感知与三维重建若干问题研究', '2', 'a152cd4f82094cb19fda73db74b653fa', '1', '1', '1', '3', '双目立体视觉;摄像机标定;自适应窗口;Harris特征提取;深度信息提取;三维重建', '双目立体视觉是计算机视觉研究领域的重要分支之一,它通过直接模拟人类视觉系统的方式感知客观世界,广泛应用于微操作系统的位姿检测与控制、机器人导航与航测、三维非接触测量及虚拟现实等领域。因此,对双目立体视觉的深度感知与三维重建中的若干问题进行研究具有一定的理论价值和十分重要的现实意义。论文围绕双目立体视觉系统摄像机标定技术、匹配策略与匹配算法、深度信息提取及后续处理、重建方法等重点与难点问题展开研究。论文的主要工作包括以下几个方面。', '基本实现在对传统摄像机标定方法进行分析的基础上,提出基于棋盘平面方格的半自动摄像机标定方法。', '[1]邱茂林,马颂德,李毅.计算机视觉中摄像机定标综述[J].自动化学报,2000(01):47-59.\r\n[2]卢宏涛,张秦川.深度卷积神经网络在计算机视觉中的应用研究综述[J].数据采集与处理,2016,31(01):1-17.\r\n[3]郑胤,陈权崎,章毓晋.深度学习及其在目标和行为识别中的新进展[J].中国图象图形学报,2014,19(02):175-184.\r\n[4]贾慧星,章毓晋.车辆辅助驾驶系统中基于计算机视觉的行人检测研究综述[J].自动化学报,2007(01):84-90.', '542061319b934960bc080ee87fec0ef9', '3', '2020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-15 21:29:55', '2021-05-15 21:29:55', '0');
INSERT INTO `task` VALUES ('266d19549a6b4f5d9d68d7ca36d319d5', '机械零件计算机视觉检测关键技术的研究', '2', 'a152cd4f82094cb19fda73db74b653fa', '1', '1', '1', '3', '计算机视觉检测;CCD; 边缘检测; Hough 变换; 亚像素; 系统标定; 螺纹', '随着计算机视觉技术和光电技术的飞速发展,视觉检测技术得到了迅速发展和广泛应用,视觉检测技术作为一种非接触检测手段已经越来越引起人们的重视。', '基本实现基于几何特性快速圆的Hough 算法', '[1]邱茂林,马颂德,李毅.计算机视觉中摄像机定标综述[J].自动化学报,2000(01):47-59.\r\n[2]卢宏涛,张秦川.深度卷积神经网络在计算机视觉中的应用研究综述[J].数据采集与处理,2016,31(01):1-17.\r\n[3]郑胤,陈权崎,章毓晋.深度学习及其在目标和行为识别中的新进展[J].中国图象图形学报,2014,19(02):175-184.\r\n[4]贾慧星,章毓晋.车辆辅助驾驶系统中基于计算机视觉的行人检测研究综述[J].自动化学报,2007(01):84-90.', '542061319b934960bc080ee87fec0ef9', '3', '2020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-15 21:44:24', '2021-05-15 21:44:24', '0');
INSERT INTO `task` VALUES ('2ef01aa8d70248bbbb1f02ea6c589da2', '基于机器视觉的谷物外观品质检测技术研究', '2', 'a152cd4f82094cb19fda73db74b653fa', '1', '1', '1', '3', '机器视觉,图像处理,分形,人工神经网络,品质检测,谷物', '利用机器视觉技术进行谷物外观品质检测研究，对提高我国粮食的市场竞争力具有重要意义，特别是在我国加入WTO后，研究工作显得更加重要。在这样的背景下，本文研究了静态和动态两种情况下的谷物外观品质检测技术，设计和开发了适合于我国谷物外观品质分析的检测装置。', '基本实现对图像基础处理算法进行了研究，分析了静态和动态两种情况下适用于谷物外观品质检测的图像处理算法。', '[1]邱茂林,马颂德,李毅.计算机视觉中摄像机定标综述[J].自动化学报,2000(01):47-59.\r\n[2]卢宏涛,张秦川.深度卷积神经网络在计算机视觉中的应用研究综述[J].数据采集与处理,2016,31(01):1-17.\r\n[3]郑胤,陈权崎,章毓晋.深度学习及其在目标和行为识别中的新进展[J].中国图象图形学报,2014,19(02):175-184.\r\n[4]贾慧星,章毓晋.车辆辅助驾驶系统中基于计算机视觉的行人检测研究综述[J].自动化学报,2007(01):84-90.', '542061319b934960bc080ee87fec0ef9', '3', '2020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-15 21:39:40', '2021-05-15 21:39:40', '0');
INSERT INTO `task` VALUES ('3c2564569b71448ab7b6770fec1e7404', '摄像机标定方法及边缘检测和轮廓跟踪算法研究', '2', 'a152cd4f82094cb19fda73db74b653fa', '1', '1', '1', '3', '计算机视觉;边缘检测和轮廓跟踪;摄像机标定;自适应神经元;主动视觉;神经网络;颜色模型;足球机器人', '计算机视觉作为当今最为活跃而又富有挑战意义的研究领域，其研究内容和应用领域相当广泛。本文以足球机器人视觉识别系统的开发为主要的工程应用背景，对边缘检测和轮廓跟踪算法、传统标定技术、自标定技术、隐式标定技术等相关技术进行深入研究。', '基本实现边缘检测和轮廓跟踪', '[1]邱茂林,马颂德,李毅.计算机视觉中摄像机定标综述[J].自动化学报,2000(01):47-59.\r\n[2]卢宏涛,张秦川.深度卷积神经网络在计算机视觉中的应用研究综述[J].数据采集与处理,2016,31(01):1-17.\r\n[3]郑胤,陈权崎,章毓晋.深度学习及其在目标和行为识别中的新进展[J].中国图象图形学报,2014,19(02):175-184.\r\n[4]贾慧星,章毓晋.车辆辅助驾驶系统中基于计算机视觉的行人检测研究综述[J].自动化学报,2007(01):84-90.', '542061319b934960bc080ee87fec0ef9', '3', '2020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-15 21:38:41', '2021-05-15 21:38:41', '0');
INSERT INTO `task` VALUES ('43106f2a9f1740289ef09e40489e28e2', 'gh', '2', 'a152cd4f82094cb19fda73db74b653fa', '1', '1', '1', '2', 'bj', 'bj', 'hg', 'gu', '542061319b934960bc080ee87fec0ef9', '1', '2020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-16 09:34:41', '2021-05-16 09:34:41', '0');
INSERT INTO `task` VALUES ('4f90ff5ef2984e1e8fc16c0f9d7f5732', '摄像机标定方法的研究', '2', 'a152cd4f82094cb19fda73db74b653fa', '1', '1', '1', '3', '相机标定;直线约束;Levenberg-Marquardt算法;计算机视觉;三维重建', '随着计算机应用的不断推广,人们不仅希望计算机能获取图像信息,也希望能像人类一样高效地处理图像信息,因此诞生了计算机视觉这门新兴的综合学科。', '阐述了相机标定的基础理论；采用Harris算法实现了亚像素级角点检测；采用canny算法实现了二维相机图像的边缘提取。', '[1]邱茂林,马颂德,李毅.计算机视觉中摄像机定标综述[J].自动化学报,2000(01):47-59.\r\n[2]卢宏涛,张秦川.深度卷积神经网络在计算机视觉中的应用研究综述[J].数据采集与处理,2016,31(01):1-17.\r\n[3]郑胤,陈权崎,章毓晋.深度学习及其在目标和行为识别中的新进展[J].中国图象图形学报,2014,19(02):175-184.\r\n[4]贾慧星,章毓晋.车辆辅助驾驶系统中基于计算机视觉的行人检测研究综述[J].自动化学报,2007(01):84-90.', '542061319b934960bc080ee87fec0ef9', '1', '2020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-15 21:34:35', '2021-05-15 21:34:35', '0');
INSERT INTO `task` VALUES ('5cdce9b015b14af1b83937515c24064d', '面向服务的数据挖掘关键技术研究', '2', 'a152cd4f82094cb19fda73db74b653fa', '1', '1', '1', '3', '数据挖掘;面向服务的体系结构;本体;语义数据集成;隐私保护;质量评价;服务选择', '解决大规模分布异构数据挖掘问题,需要一种便于资源集成、提供高质量数据挖掘服务,并具有较高安全性和隐私保护性的框架模型。面向服务的体系结构(Service Oriented Architecture,SOA)、本体、WEB服务等新技术将为数据挖掘系统的开发提供更强大的技术支持。', '基本实现实现了一个外汇反洗钱领域的隐私保护数据集成和数据挖掘服务选择的原型系统,并总结了系统设计特点。', '[1]黄解军,潘和平,万幼川.数据挖掘技术的应用研究[J].计算机工程与应用,2003(02):45-48.\r\n[2]王惠中,彭安群.数据挖掘研究现状及发展趋势[J].工矿自动化,2011,37(02):29-32.\r\n[3]朱凌云,吴宝明.医学数据挖掘的技术、方法及应用[J].生物医学工程学杂志,2003(03):559-562.\r\n[4]李宝东,宋瀚涛.数据挖掘在客户关系管理(CRM)中的应用[J].计算机应用研究,2002(10):71-74.', '73a41961ce024d3c92da16c7fe416647', '3', '2020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-15 22:04:42', '2021-05-15 22:04:42', '0');
INSERT INTO `task` VALUES ('66fea16c6fd949cf928bd9f433ef9aa8', '基于统计视角的数据挖掘研究', '2', 'a152cd4f82094cb19fda73db74b653fa', '1', '1', '1', '3', '统计学;数据挖掘;理论体系;质量;LavaMiner', '数据挖掘是一个年轻、活跃的研究领域，不同专业背景的研究者侧重于不同方面对数据挖掘展开了研究。从目前国内外的研究现状看，从事数据挖掘研究的主要是计算机领域的学者和专家，统计界的学者和专家对数据挖掘的研究相对较少。', '基本实现本文从统计学视角研究数据挖掘，以期从统计学角度对数据挖掘理论的研究有所突破和创新，同时对统计学理论在数据挖掘方向的发展做出探索。', '[1]黄解军,潘和平,万幼川.数据挖掘技术的应用研究[J].计算机工程与应用,2003(02):45-48.\r\n[2]王惠中,彭安群.数据挖掘研究现状及发展趋势[J].工矿自动化,2011,37(02):29-32.\r\n[3]朱凌云,吴宝明.医学数据挖掘的技术、方法及应用[J].生物医学工程学杂志,2003(03):559-562.\r\n[4]李宝东,宋瀚涛.数据挖掘在客户关系管理(CRM)中的应用[J].计算机应用研究,2002(10):71-74.', '73a41961ce024d3c92da16c7fe416647', '1', '2020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-15 22:06:33', '2021-05-15 22:06:33', '0');
INSERT INTO `task` VALUES ('6f6c3b35a2a84fec918009014caf412c', '数据挖掘技术与分类算法研究', '2', 'a152cd4f82094cb19fda73db74b653fa', '1', '1', '1', '3', '数据挖掘;知识发现;分类算法;知识模型', '数据挖掘(Data Mining)是致力于数据分析和理解,揭示数据内部蕴藏知识的技术。它是未来信息技术应用的重要目标之一。', '基本实现在分析、归类现有数据挖掘研究成果以及原型系统的基础上,进行了数据挖掘应用系统体系结构和基于SJEP的分类理论模型以及算法方面的研究', '[1]黄解军,潘和平,万幼川.数据挖掘技术的应用研究[J].计算机工程与应用,2003(02):45-48.\r\n[2]王惠中,彭安群.数据挖掘研究现状及发展趋势[J].工矿自动化,2011,37(02):29-32.\r\n[3]朱凌云,吴宝明.医学数据挖掘的技术、方法及应用[J].生物医学工程学杂志,2003(03):559-562.\r\n[4]李宝东,宋瀚涛.数据挖掘在客户关系管理(CRM)中的应用[J].计算机应用研究,2002(10):71-74.', '73a41961ce024d3c92da16c7fe416647', '1', '2020', '10d8ee53a8cd4e92ba04c4680cfc042b', '/static/material/自我介绍.docx', '自我介绍.docx', NULL, NULL, NULL, NULL, '2021-05-15 22:03:21', '2021-05-15 22:03:21', '0');
INSERT INTO `task` VALUES ('744aaeb78a6948cc82393f980f04f46a', '数字近景工业摄影测量关键技术研究与应用', '2', 'a152cd4f82094cb19fda73db74b653fa', '1', '1', '1', '3', '大尺寸测量;三坐标测量系统;计算机视觉;数字近景摄影测量;光束法平差;自标定;编码标志;网形设计', '论文根据现代测量技术的发展方向,针对大尺寸测量的需求和应用,对八大类大尺寸三坐标测量方法和系统的原理、特点进行了研究、比较和小结。论文主要围绕数字近景工业摄影测量中的几项关键技术进行了一些列的研究??基于摄影测量学科的测量理论、RRT标志数字影像的获取及高精度中心定位、数字像机的实验室及现场标定、相应像点的自动匹配以及测量网的优化设计等。论文从理论上和实践上进行了深入细致的研究与探讨,并完成了相应的实验论证和实际应用工作。', '基本实现针对大尺寸测量的需求和应用,对八大类大尺寸三坐标测量方法和系统的原理、特点进行了研究、比较和小结。并对数字近景摄影的发展、现状及与计算机视觉的联系和区别进行了阐述', '[1]邱茂林,马颂德,李毅.计算机视觉中摄像机定标综述[J].自动化学报,2000(01):47-59.\r\n[2]卢宏涛,张秦川.深度卷积神经网络在计算机视觉中的应用研究综述[J].数据采集与处理,2016,31(01):1-17.\r\n[3]郑胤,陈权崎,章毓晋.深度学习及其在目标和行为识别中的新进展[J].中国图象图形学报,2014,19(02):175-184.\r\n[4]贾慧星,章毓晋.车辆辅助驾驶系统中基于计算机视觉的行人检测研究综述[J].自动化学报,2007(01):84-90.', '542061319b934960bc080ee87fec0ef9', '1', '2020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-15 21:28:53', '2021-05-15 21:28:53', '0');
INSERT INTO `task` VALUES ('753ced55667e43358c1a45f4ebb99d20', '基于数据挖掘的电站运行优化理论研究与应用', '2', 'a152cd4f82094cb19fda73db74b653fa', '1', '1', '1', '3', '数据挖掘;关联规则;运行优化;优化目标值;运行操作指导', '数据挖掘技术是当今智能系统理论的重要研究内容,它综合运用人工智能、计算智能、模式识别、数理统计等先进技术从大量数据中挖掘发现有价值和隐含的知识,因而近年来得到国内外极大的重视。', '基本实现对电站运行优化问题,、基于模糊关联规则挖掘的电站运行优化目标值确定的新方法,解决了传统优化目标值确定中对机组实际状态考虑不足而失去指导意义的问题。', '[1]黄解军,潘和平,万幼川.数据挖掘技术的应用研究[J].计算机工程与应用,2003(02):45-48.\r\n[2]王惠中,彭安群.数据挖掘研究现状及发展趋势[J].工矿自动化,2011,37(02):29-32.\r\n[3]朱凌云,吴宝明.医学数据挖掘的技术、方法及应用[J].生物医学工程学杂志,2003(03):559-562.\r\n[4]李宝东,宋瀚涛.数据挖掘在客户关系管理(CRM)中的应用[J].计算机应用研究,2002(10):71-74.', '73a41961ce024d3c92da16c7fe416647', '3', '2020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-15 21:58:03', '2021-05-15 21:58:03', '0');
INSERT INTO `task` VALUES ('86f12e5c58054a16840c9721ead26d9f', '空间数据挖掘的研究', '2', 'a152cd4f82094cb19fda73db74b653fa', '1', '1', '1', '3', '数据挖掘,空间数据挖掘,空间数据仓库,粗集,空间关联规则,空间统计分析,空间数据聚类,遗传算法,Voronoi图,Delaunay三角网', '空间数据挖掘是指从空间数据库中提取用户感兴趣的空间模式与特征、空间与非空间数据的普遍关系及其它一些隐含在空间数据中的普遍的数据特征。', '基本实现建立起空间数据挖掘的基础理论和技术框架，进一步完善了空间数据挖掘的理论和方法。', '[1]黄解军,潘和平,万幼川.数据挖掘技术的应用研究[J].计算机工程与应用,2003(02):45-48.\r\n[2]王惠中,彭安群.数据挖掘研究现状及发展趋势[J].工矿自动化,2011,37(02):29-32.\r\n[3]朱凌云,吴宝明.医学数据挖掘的技术、方法及应用[J].生物医学工程学杂志,2003(03):559-562.\r\n[4]李宝东,宋瀚涛.数据挖掘在客户关系管理(CRM)中的应用[J].计算机应用研究,2002(10):71-74.', '73a41961ce024d3c92da16c7fe416647', '1', '2020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-15 21:56:53', '2021-05-15 21:56:53', '0');
INSERT INTO `task` VALUES ('8b1c013f7790453fb95977acb85243bf', '可视化数据挖掘技术的研究与实现', '2', 'a152cd4f82094cb19fda73db74b653fa', '1', '1', '1', '3', '数据挖掘技术;可视化;PMML;DMX', '随着数据库技术的迅速发展以及数据库管理系统的广泛应用,积累的数据越来越多,数据挖掘技术正是从这些海量数据中抽取出潜在的、有价值的知识的技术。', '基本完成可视化数据的总结和展示', '[1]黄解军,潘和平,万幼川.数据挖掘技术的应用研究[J].计算机工程与应用,2003(02):45-48.\r\n[2]王惠中,彭安群.数据挖掘研究现状及发展趋势[J].工矿自动化,2011,37(02):29-32.\r\n[3]朱凌云,吴宝明.医学数据挖掘的技术、方法及应用[J].生物医学工程学杂志,2003(03):559-562.\r\n[4]李宝东,宋瀚涛.数据挖掘在客户关系管理(CRM)中的应用[J].计算机应用研究,2002(10):71-74.', '73a41961ce024d3c92da16c7fe416647', '1', '2020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-15 22:38:29', '2021-05-15 22:38:29', '0');
INSERT INTO `task` VALUES ('9092825929db4ea48bd2f467d0da9ee2', '数据挖掘中多维数据可视化的研究', '2', 'a152cd4f82094cb19fda73db74b653fa', '1', '1', '1', '3', '数据挖掘;数据仓库;多维数据可视化;可视化数据挖掘', '随着数据库技术的迅速发展以及数据库管理系统的广泛应用，人们积累的数据越来越多。激增的数据背后隐藏着许多重要的信息，人们希望能够对其进行更高层次的分析，以便更好地利用这些数据。', '基本实现多维性是非空间数据场的一个重要特性', '[1]黄解军,潘和平,万幼川.数据挖掘技术的应用研究[J].计算机工程与应用,2003(02):45-48.\r\n[2]王惠中,彭安群.数据挖掘研究现状及发展趋势[J].工矿自动化,2011,37(02):29-32.\r\n[3]朱凌云,吴宝明.医学数据挖掘的技术、方法及应用[J].生物医学工程学杂志,2003(03):559-562.\r\n[4]李宝东,宋瀚涛.数据挖掘在客户关系管理(CRM)中的应用[J].计算机应用研究,2002(10):71-74.', '73a41961ce024d3c92da16c7fe416647', '1', '2020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-15 22:14:59', '2021-05-15 22:14:59', '0');
INSERT INTO `task` VALUES ('c1dbe1cd68e54456b0c6e877cdea8486', '基于计算机视觉图像精密测量的关键技术研究', '2', 'a152cd4f82094cb19fda73db74b653fa', '1', '1', '1', '3', '计算机视觉测量;边缘检测; 亚像素;摄像机标定;自动聚焦', '基于计算机视觉图像的精密测量在国外已经得到了深入研究和广泛的应用,在国内也受到了越来越多的重视。随着计算机硬件性价比的不断提高,相关技术的不断发展,计算机视觉图像精密测量以其柔性、快速、非接触、精确、自动化程度高等特点将很快得到全球化应用。', '基本实现研制了一种用于镜头畸变校正的平面圆形网格模板,推导了利用该模板计算镜头畸变系数的公式,提出了计算机视觉图像精密测量标定的两步法:实验室计算镜头畸变系数,', '[1]邱茂林,马颂德,李毅.计算机视觉中摄像机定标综述[J].自动化学报,2000(01):47-59.\r\n[2]卢宏涛,张秦川.深度卷积神经网络在计算机视觉中的应用研究综述[J].数据采集与处理,2016,31(01):1-17.\r\n[3]郑胤,陈权崎,章毓晋.深度学习及其在目标和行为识别中的新进展[J].中国图象图形学报,2014,19(02):175-184.\r\n[4]贾慧星,章毓晋.车辆辅助驾驶系统中基于计算机视觉的行人检测研究综述[J].自动化学报,2007(01):84-90.', '542061319b934960bc080ee87fec0ef9', '3', '2020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-15 21:31:39', '2021-05-15 21:31:39', '0');
INSERT INTO `task` VALUES ('d331b1ca79e343639e3fe60222ca946f', '摄像机标定及相关技术研究', '2', 'a152cd4f82094cb19fda73db74b653fa', '2', '1', '1', '3', '计算机视觉;立体视觉;摄像机标定;角点检测;共面点', '视觉是人类感知环境世界,认识外部世界的主要途径。随着计算机技术的不断发展和人类对数字化信息需求的不断增加,计算机视觉和双目立体视觉得到了极大的发展。', '基本实现.图像特征点的提取问题。在角点提取过程中,针对Susan角点检测算法的不足,本文对它进行了改进,提出了一种阈值快速自适应的确定方法,从而能够避免由于阈值设置的过大或过小而引起的角点误检测,提高了角点检测的可靠性,实现了角点检测的自动化。', '[1]邱茂林,马颂德,李毅.计算机视觉中摄像机定标综述[J].自动化学报,2000(01):47-59.\r\n[2]卢宏涛,张秦川.深度卷积神经网络在计算机视觉中的应用研究综述[J].数据采集与处理,2016,31(01):1-17.\r\n[3]郑胤,陈权崎,章毓晋.深度学习及其在目标和行为识别中的新进展[J].中国图象图形学报,2014,19(02):175-184.\r\n[4]贾慧星,章毓晋.车辆辅助驾驶系统中基于计算机视觉的行人检测研究综述[J].自动化学报,2007(01):84-90.', '542061319b934960bc080ee87fec0ef9', '1', '2020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-15 21:36:38', '2021-05-15 21:36:38', '0');
INSERT INTO `task` VALUES ('e17a1f4cb2024556806e0bdda16f44a0', '数据挖掘技术与关联规则挖掘算法研究', '2', 'a152cd4f82094cb19fda73db74b653fa', '1', '1', '1', '3', '数据挖掘;知识发现;关联规则;项目序列集;时态约束;数据分割', '据挖掘是致力于数据分析和理解、揭示数据内部蕴藏知识的技术，它成为未来信息技术应用的重要目标之一。', '基本实现数据挖掘应用系统体系结构、关联规则挖掘理论及其算法等。', '[1]黄解军,潘和平,万幼川.数据挖掘技术的应用研究[J].计算机工程与应用,2003(02):45-48.\r\n[2]王惠中,彭安群.数据挖掘研究现状及发展趋势[J].工矿自动化,2011,37(02):29-32.\r\n[3]朱凌云,吴宝明.医学数据挖掘的技术、方法及应用[J].生物医学工程学杂志,2003(03):559-562.\r\n[4]李宝东,宋瀚涛.数据挖掘在客户关系管理(CRM)中的应用[J].计算机应用研究,2002(10):71-74.', '73a41961ce024d3c92da16c7fe416647', '3', '2020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-15 21:49:35', '2021-05-15 21:49:35', '0');
INSERT INTO `task` VALUES ('f58624e695444fef9b9475d31ff9dd1e', '基于机器视觉的水果品质实时检测与分级生产线的关键技术研究', '2', 'a152cd4f82094cb19fda73db74b653fa', '1', '1', '1', '3', '水果;品质检测;实时;机器视觉;生产线', '针对我国商品水果品质差、出口量小、价格低、附加值低等问题，采用机器视觉技术，研究了水果品质的实时检测与分级方法，对提高我国水果的市场竞争力，具有非常现实的社会和经济意义。', '基本实现水果表面积检测的球带计算法。球带是水果表面上一个窄长区域，其图像是宽度为一个像素的水平线段。球带作为圆柱的一部分，其宽度h、半径r及圆心角a根据其图像的纵坐标、线段起点和终点横坐标确定，其面积值为h×r×a。累加全部球带面积可得到水果表面ROI面积。试验结果表明，最大相对误差为1.32％。', '[1]邱茂林,马颂德,李毅.计算机视觉中摄像机定标综述[J].自动化学报,2000(01):47-59.\r\n[2]卢宏涛,张秦川.深度卷积神经网络在计算机视觉中的应用研究综述[J].数据采集与处理,2016,31(01):1-17.\r\n[3]郑胤,陈权崎,章毓晋.深度学习及其在目标和行为识别中的新进展[J].中国图象图形学报,2014,19(02):175-184.\r\n[4]贾慧星,章毓晋.车辆辅助驾驶系统中基于计算机视觉的行人检测研究综述[J].自动化学报,2007(01):84-90.', '542061319b934960bc080ee87fec0ef9', '3', '2020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-15 21:35:42', '2021-05-15 21:35:42', '0');

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
INSERT INTO `task_canbechosenmajor` VALUES ('026fed30ec4c409493d16ce20ab9f385', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('14b5a123945c4c719ea8460cf4d23a45', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('266d19549a6b4f5d9d68d7ca36d319d5', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('2ef01aa8d70248bbbb1f02ea6c589da2', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('3c2564569b71448ab7b6770fec1e7404', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('43106f2a9f1740289ef09e40489e28e2', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('43106f2a9f1740289ef09e40489e28e2', 'b3e3d6c48788464fac4c215886941047');
INSERT INTO `task_canbechosenmajor` VALUES ('43106f2a9f1740289ef09e40489e28e2', 'ba365c5d038c4483a2dc3c17569cae7c');
INSERT INTO `task_canbechosenmajor` VALUES ('4f90ff5ef2984e1e8fc16c0f9d7f5732', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('5cdce9b015b14af1b83937515c24064d', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('66fea16c6fd949cf928bd9f433ef9aa8', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('6f6c3b35a2a84fec918009014caf412c', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('744aaeb78a6948cc82393f980f04f46a', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('753ced55667e43358c1a45f4ebb99d20', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('86f12e5c58054a16840c9721ead26d9f', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('8b1c013f7790453fb95977acb85243bf', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('9092825929db4ea48bd2f467d0da9ee2', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('c1dbe1cd68e54456b0c6e877cdea8486', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('d331b1ca79e343639e3fe60222ca946f', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('e17a1f4cb2024556806e0bdda16f44a0', 'a152cd4f82094cb19fda73db74b653fa');
INSERT INTO `task_canbechosenmajor` VALUES ('f58624e695444fef9b9475d31ff9dd1e', 'a152cd4f82094cb19fda73db74b653fa');

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
INSERT INTO `task_chosen` VALUES ('026fed30ec4c409493d16ce20ab9f385', '39c2a456d62f4c3e87afc863ae6decda', '3');
INSERT INTO `task_chosen` VALUES ('026fed30ec4c409493d16ce20ab9f385', '39c2a456d62f4c3e87afc863ae6decda', '3');
INSERT INTO `task_chosen` VALUES ('4f90ff5ef2984e1e8fc16c0f9d7f5732', '8858d9cb62a644d2ae3e9055faa6f7c9', '3');
INSERT INTO `task_chosen` VALUES ('43106f2a9f1740289ef09e40489e28e2', '4263769fe9d64c75b703bdb88d80f714', '2');
INSERT INTO `task_chosen` VALUES ('4f90ff5ef2984e1e8fc16c0f9d7f5732', '8858d9cb62a644d2ae3e9055faa6f7c9', '1');
INSERT INTO `task_chosen` VALUES ('026fed30ec4c409493d16ce20ab9f385', '542061319b934960bc080ee87fec0ef9', '1');
INSERT INTO `task_chosen` VALUES ('86f12e5c58054a16840c9721ead26d9f', '542061319b934960bc080ee87fec0ef9', '1');
INSERT INTO `task_chosen` VALUES ('6f6c3b35a2a84fec918009014caf412c', '39c2a456d62f4c3e87afc863ae6decda', '2');
INSERT INTO `task_chosen` VALUES ('9092825929db4ea48bd2f467d0da9ee2', '39c2a456d62f4c3e87afc863ae6decda', '1');

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
INSERT INTO `user` VALUES ('024198a3bbce4caabe97dd67f66d158f', '卡利斯', '606007', '302133', '606007', '2', '3210999999@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('02ebea115c1746b2bb4dbbcc76db5654', '开宇航', '17034480106', '302133', '17034480106', '1', '2159521595@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('080d900c4af0464eaad0dda987030506', '伍兹器', '606010', '302133', '606010', '1', '1379710512@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('0f11dbc4ad314b278bf3da3cd4487b8d', '陆航其', '17034480104', '302133', '17034480104', '1', '2159621596@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('1', '吴家剑', 'superadmin', 'superadmin', '44', '', '', 'SUPERADMIN', '0');
INSERT INTO `user` VALUES ('1a4536276f354e61993b01d0e6861f25', '陈子育', '606012', '302133', '606012', '1', '1351484615@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('33ed386bd4f548238b2f3bfaf145eb09', '派卡思', '606005', '302133', '606005', '1', '2510000000@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('34c65e7b54994cdda4c0c9c9181d7987', '开开林', '50000', '302133', '50000', '1', '1284403491', 'USER', '0');
INSERT INTO `user` VALUES ('36cf6e2d15484c759392992ef00896cc', '李子佩', '606009', '302133', '606009', '1', '1416683994@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('39c2a456d62f4c3e87afc863ae6decda', '吴家剑', '17034480100', '302133', '17034480100', '1', '1150878978@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('4263769fe9d64c75b703bdb88d80f714', '刘涵雨', '17034480102', '302133', '17034480102', '1', '2069470168@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('4f892b64c44a485abea1f88c943b8c9e', '归宇涵', '17034480103', '302133', '17034480103', '1', '2419124191@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('542061319b934960bc080ee87fec0ef9', '无期露', '606000', '302133', '606000', '1', '3531835318@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('5ac2df0370bf447785b8312a58e86ede', '卡齐克', '606002', '302133', '606002', '1', '3301833018@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('5c451440f2c84bdf8fccf758cfa91229', '欧子奇', '606013', '302133', '606013', '1', '1471568938', 'USER', '0');
INSERT INTO `user` VALUES ('73a41961ce024d3c92da16c7fe416647', '开核里', '606001', '302133', '606001', '1', '2569025690@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('7d8c8e9110d342b085849b75209412f7', '黑里斯', '606008', '302133', '606008', '1', '1480276980@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('85c812290ade488cbb35812c3738c8e0', '梁子和', '17034480108', '302133', '17034480109', '1', '1150878978@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('8858d9cb62a644d2ae3e9055faa6f7c9', '吴昱含', '17034480101', '302133', '17034480101', '1', '2157921579@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('9644dbffa6414a92b23245163bddb497', '杨子留', '606003', '302133', '606003', '1', '1598915989@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('a8e1de9d31074f11ac4c08e2e41c871a', '刘凯源', '606004', '302133', '606004', '1', '1378113781@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('b37aa84728844bc49fdde791c2a7fceb', '凯雷思', '606011', '302133', '606011', '1', '1379082069@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('ba9bbe8ddee444ac884f41c08a6ae8fb', '其海米', '17034480105', '302133', '17034480105', '1', '2106521065@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('ce5d07156ea84b2d8ca694b70495da90', '米咔啦', '17034480107', '302133', '17034480108', '1', '3158831588@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('d906e8ae44e14e96bdc0e7dd95f44642', '刘琦晗', '17034480109', '302133', '17034480110', '2', '1657216572@qq.com', 'USER', '0');
INSERT INTO `user` VALUES ('eea06cc0fffb48d6a152643116167bfd', '欧紫烟', '606006', '302133', '606006', '1', '1005522222@qq.com', 'USER', '0');

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
INSERT INTO `user_info_all` VALUES ('0bdb118cec0243929ae7e71569ac5998', '33ed386bd4f548238b2f3bfaf145eb09', '2', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', '89317d974ca64587aefc6b3ed5b7f004', '0');
INSERT INTO `user_info_all` VALUES ('0ec6b1d7248941c887228cda4ce93d38', '85c812290ade488cbb35812c3738c8e0', '1', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', '29da68c34c8747fc83640485639d63dd', '0');
INSERT INTO `user_info_all` VALUES ('1817ab99f3234ccca6e972d39ee89519', '4f892b64c44a485abea1f88c943b8c9e', '1', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', '29da68c34c8747fc83640485639d63dd', '0');
INSERT INTO `user_info_all` VALUES ('25ddc597e3ff43a08017a89328f74aca', 'eea06cc0fffb48d6a152643116167bfd', '2', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', '89317d974ca64587aefc6b3ed5b7f004', '0');
INSERT INTO `user_info_all` VALUES ('2c8645b173734ebb84b0bb75851e78d6', '39c2a456d62f4c3e87afc863ae6decda', '1', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', '29da68c34c8747fc83640485639d63dd', '0');
INSERT INTO `user_info_all` VALUES ('2d8939bff965413080f0aa9ede9e7f99', '080d900c4af0464eaad0dda987030506', '2', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', '89317d974ca64587aefc6b3ed5b7f004', '0');
INSERT INTO `user_info_all` VALUES ('3341b0b6eb6a4523839bc083901abb06', '024198a3bbce4caabe97dd67f66d158f', '2', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', '89317d974ca64587aefc6b3ed5b7f004', '0');
INSERT INTO `user_info_all` VALUES ('3605a2381db44395801d08275e2a3f83', 'ba9bbe8ddee444ac884f41c08a6ae8fb', '1', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', '29da68c34c8747fc83640485639d63dd', '0');
INSERT INTO `user_info_all` VALUES ('536d2b48764f4c3296dde14bc6e4e67b', 'd906e8ae44e14e96bdc0e7dd95f44642', '1', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', '29da68c34c8747fc83640485639d63dd', '0');
INSERT INTO `user_info_all` VALUES ('5dd68e1423de461c8c014b9b0f8becfb', '542061319b934960bc080ee87fec0ef9', '2', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', '89317d974ca64587aefc6b3ed5b7f004', '0');
INSERT INTO `user_info_all` VALUES ('777c9370e6c548a888dafb3b3c95fa67', '7d8c8e9110d342b085849b75209412f7', '2', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', '89317d974ca64587aefc6b3ed5b7f004', '0');
INSERT INTO `user_info_all` VALUES ('797472149fb0495d993e139841317074', 'ce5d07156ea84b2d8ca694b70495da90', '1', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', '29da68c34c8747fc83640485639d63dd', '0');
INSERT INTO `user_info_all` VALUES ('7a0729065ec64ab08a41fa4f83318f41', '36cf6e2d15484c759392992ef00896cc', '2', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', '89317d974ca64587aefc6b3ed5b7f004', '0');
INSERT INTO `user_info_all` VALUES ('7adf35b6912148b6b66c470a6a468860', '5c451440f2c84bdf8fccf758cfa91229', '2', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', '89317d974ca64587aefc6b3ed5b7f004', '0');
INSERT INTO `user_info_all` VALUES ('935d102234bb4a5499e066d4efeefe08', '34c65e7b54994cdda4c0c9c9181d7987', '3', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', '238f83634b69468a9641637c430499fa', '0');
INSERT INTO `user_info_all` VALUES ('b226d8ce083140c69dcca32145595c0b', '9644dbffa6414a92b23245163bddb497', '2', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', '89317d974ca64587aefc6b3ed5b7f004', '0');
INSERT INTO `user_info_all` VALUES ('bfd01fece8bd441ab8a85252a7ef6dad', '8858d9cb62a644d2ae3e9055faa6f7c9', '1', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', '29da68c34c8747fc83640485639d63dd', '0');
INSERT INTO `user_info_all` VALUES ('d1ca0a7e99994de79b993002009e519f', '0f11dbc4ad314b278bf3da3cd4487b8d', '1', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', '29da68c34c8747fc83640485639d63dd', '0');
INSERT INTO `user_info_all` VALUES ('dac1399b04864f50bc8c5533215a9fc8', '4263769fe9d64c75b703bdb88d80f714', '1', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', '29da68c34c8747fc83640485639d63dd', '0');
INSERT INTO `user_info_all` VALUES ('dc53a1ec0ae9482cb7b6beab14d5375e', 'b37aa84728844bc49fdde791c2a7fceb', '2', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', '89317d974ca64587aefc6b3ed5b7f004', '0');
INSERT INTO `user_info_all` VALUES ('e6e6611eb8af41e89a1012834767c268', '1a4536276f354e61993b01d0e6861f25', '2', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', '89317d974ca64587aefc6b3ed5b7f004', '0');
INSERT INTO `user_info_all` VALUES ('f92cef4003b642ed812ca64f3fd6e062', 'a8e1de9d31074f11ac4c08e2e41c871a', '2', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', '89317d974ca64587aefc6b3ed5b7f004', '0');
INSERT INTO `user_info_all` VALUES ('f93313639268408bbee675326c144f69', '73a41961ce024d3c92da16c7fe416647', '3', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', '89317d974ca64587aefc6b3ed5b7f004', '0');
INSERT INTO `user_info_all` VALUES ('f958717d2356448192e698b7f30cf3f5', '5ac2df0370bf447785b8312a58e86ede', '2', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', '89317d974ca64587aefc6b3ed5b7f004', '0');
INSERT INTO `user_info_all` VALUES ('fcbda802fd574b9ea19679f63241534e', '542061319b934960bc080ee87fec0ef9', '3', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', 'd7b3b776a37a4cc4986da4409a173d98', '0');
INSERT INTO `user_info_all` VALUES ('fdd49a7b56b44cbab8dd956f074fe53b', '02ebea115c1746b2bb4dbbcc76db5654', '1', '2020', '2', 'a152cd4f82094cb19fda73db74b653fa', '29da68c34c8747fc83640485639d63dd', '0');

SET FOREIGN_KEY_CHECKS = 1;
