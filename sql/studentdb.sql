/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50712
 Source Host           : localhost:3306
 Source Schema         : studentdb

 Target Server Type    : MySQL
 Target Server Version : 50712
 File Encoding         : 65001

 Date: 24/08/2020 22:32:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classid` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classexplain` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES (1, '10001', '计算机应用技术', '信息工程学院');
INSERT INTO `class` VALUES (2, '10002', '计算机网络技术', '信息工程学院');
INSERT INTO `class` VALUES (3, '10003', '信息安全与管理', '信息工程学院');
INSERT INTO `class` VALUES (4, '10004', '物联网应用技术', '信息工程学院');
INSERT INTO `class` VALUES (6, '10006', '软件与信息服务', '信息工程学院');
INSERT INTO `class` VALUES (7, '10007', '机电一体化技术', '机电与自动化学院');
INSERT INTO `class` VALUES (8, '10008', '工业机器人技术', '机电与自动化学院');
INSERT INTO `class` VALUES (9, '10009', '电气自动化技术', '机电与自动化学院');
INSERT INTO `class` VALUES (10, '10010', '汽车检测与维修技术', '机电与自动化学院');
INSERT INTO `class` VALUES (11, '10011', '建筑工程技术', '建筑与艺术学院');
INSERT INTO `class` VALUES (12, '10012', '工程造价', '建筑与艺术学院');
INSERT INTO `class` VALUES (13, '10013', '建筑室内设计', '建筑与艺术学院');
INSERT INTO `class` VALUES (14, '10014', '环境艺术设计', '建筑与艺术学院');
INSERT INTO `class` VALUES (15, '10015', '室内艺术设计', '建筑与艺术学院');
INSERT INTO `class` VALUES (16, '10016', '电子商务', '经济与管理学院');
INSERT INTO `class` VALUES (17, '10017', '会展策划与管理', '经济与管理学院');
INSERT INTO `class` VALUES (18, '10018', '工商企业管理', '经济与管理学院');
INSERT INTO `class` VALUES (19, '10019', '物流管理', '经济与管理学院');
INSERT INTO `class` VALUES (20, '10020', '国际贸易实务', '经济与管理学院');
INSERT INTO `class` VALUES (21, '10021', '会计', '经济与管理学院');
INSERT INTO `class` VALUES (22, '10022', '财务管理', '经济与管理学院');
INSERT INTO `class` VALUES (23, '10023', '互联网金融', '经济与管理学院');
INSERT INTO `class` VALUES (24, '10024', '商务英语', '经济与管理学院');
INSERT INTO `class` VALUES (25, NULL, NULL, NULL);
INSERT INTO `class` VALUES (26, NULL, NULL, NULL);
INSERT INTO `class` VALUES (27, NULL, NULL, NULL);
INSERT INTO `class` VALUES (28, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(10) NULL DEFAULT NULL,
  `name` varchar(502) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `course` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `teacher` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `score` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES (1, 1710001, '鸿蒙', '软件测试', '张三', '98.5', '2018-2019第一学期');
INSERT INTO `score` VALUES (2, 1710002, '小华之山', '软件测试', '张三', '87.5', '2018-2019第一学期');
INSERT INTO `score` VALUES (3, 1710003, '南山', '软件测试', '张三', '89.0', '2018-2019第一学期');
INSERT INTO `score` VALUES (4, 1710004, '西山', '软件测试', '张三', '99.0', '2018-2019第一学期');
INSERT INTO `score` VALUES (5, 1710005, '北山', 'Java', '李四', '97.5', '2018-2019第一学期');
INSERT INTO `score` VALUES (6, 1710006, '祝余', 'Java', '李四', '94.5', '2018-2019第一学期');
INSERT INTO `score` VALUES (7, 1710007, '萆荔', 'Java', '李四', '88.5', '2018-2019第一学期');
INSERT INTO `score` VALUES (8, 1710008, '芍药', 'Java', '李四', '89.5', '2018-2019第一学期');
INSERT INTO `score` VALUES (9, 1710009, '青雘', 'C', '王五', '92.0', '2018-2019第一学期');
INSERT INTO `score` VALUES (10, 1710010, '寇脱', 'C', '王五', '93.5', '2018-2019第一学期');
INSERT INTO `score` VALUES (11, 1710011, '薝棘', 'C', '王五', '94.5', '2018-2019第一学期');
INSERT INTO `score` VALUES (12, 1710012, '无条', 'C', '王五', '95.5', '2018-2019第一学期');
INSERT INTO `score` VALUES (13, 1710013, '荀草', 'Android', '赵六', '87.5', '2018-2019第一学期');
INSERT INTO `score` VALUES (14, 1710014, '丹木', 'Android', '赵六', '85.0', '2018-2019第一学期');
INSERT INTO `score` VALUES (15, 1710015, '秦椒', 'Android', '赵六', '88.5', '2018-2019第一学期');
INSERT INTO `score` VALUES (16, 1710016, '菌蒲', 'Android', '赵六', '90.5', '2018-2019第一学期');
INSERT INTO `score` VALUES (17, 1710017, '莽草', '软件工程', '柳七', '91.5', '2018-2019第一学期');
INSERT INTO `score` VALUES (18, 1710018, '植楮', '软件工程', '柳七', '92.5', '2018-2019第一学期');
INSERT INTO `score` VALUES (19, 1710019, '焉酸', '软件工程', '柳七', '93.0', '2018-2019第一学期');
INSERT INTO `score` VALUES (20, 1710020, '嘉荣', '软件工程', '柳七', '96.5', '2018-2019第一学期');
INSERT INTO `score` VALUES (21, 1710021, '张三', '软件工程', '柳七', '97.5', '2018-2019第一学期');
INSERT INTO `score` VALUES (22, 1710022, '张三', 'C', '张三', '98.5', '2018-2019第一学期');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` date NULL DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `grade` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, 1710001, '鲲鹏', '男', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (2, 1710002, '独角兽', '男', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (3, 1710003, '混沌', '男', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (4, 1710004, '飞廉', '女', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (5, 1710006, '夔牛', '男', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (6, 1710006, '鬼车', '男', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (7, 1710007, '重明鸟', '男', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (8, 1710008, '化蛇', '女', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (9, 1710009, '祸斗', '男', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (10, 1710010, '蚣蝮', '男', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (11, 1710011, '钟山神', '女', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (12, 1710012, '虚耗', '男', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (13, 1710013, '貔貅', '男', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (14, 1710014, '螭吻', '男', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (15, 1710015, '霸下', '男', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (16, 1710016, '相柳氏', '女', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (17, 1710017, '蒲牢', '男', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (18, 1710018, '狻猊', '男', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (19, 1710019, '青龙', '女', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (20, 1710020, '白虎', '女', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (21, 1710021, '朱雀', '女', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (22, 1710022, '玄武', '女', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (23, 1710023, '嘲风', '男', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (24, 1710024, '睚毗', '男', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (25, 1710025, '囚牛', '男', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (26, 1710026, '风生兽', '女', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (27, 1710027, '何罗鱼', '男', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (28, 1710028, '蟠龙', '男', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (29, 1710029, '蛟龙', '男', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (30, 1710030, '螭龙', '男', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (31, 1710031, '应龙', '男', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (32, 1710032, '白矖', '男', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (33, 1710033, '麒麟', '男', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (34, 1710034, '白泽', '男', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (35, 1710035, '梼杌', '男', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (36, 1710036, '西王母', '女', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (37, 1710037, '冉遗鱼', '女', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (38, 1710038, '精卫', '男', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (39, 1710039, '狸力', '男', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (40, 1710040, '帝江', '女', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (41, 1710041, '举父', '男', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (42, 1710042, '獓狠', '男', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (43, 1710043, '饕餮', '男', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (44, 1710046, '九尾狐', '女', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (45, 1710045, '鳐鱼', '男', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (46, 1710046, '魍魉', '男', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (47, 1710047, '灭蒙鸟', '女', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (48, 1710048, '陵鱼', '男', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (49, 1710049, '比翼鸟', '男', '2019-06-20', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (50, 1710050, '蚩尤', '男', '2019-06-22', '1234567', '广东省广州市天河区');
INSERT INTO `student` VALUES (53, 1710060, '张小三', '男', '1997-04-27', '12345', '广东省广州市天河区');
INSERT INTO `student` VALUES (54, 1710065, '张小小三', '男', '2019-06-20', '1234567', '广东省广州市天河区');

-- ----------------------------
-- Table structure for useroa
-- ----------------------------
DROP TABLE IF EXISTS `useroa`;
CREATE TABLE `useroa`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of useroa
-- ----------------------------
INSERT INTO `useroa` VALUES (1, 'admin', '系统管理员', '123456', '1234567');

SET FOREIGN_KEY_CHECKS = 1;
