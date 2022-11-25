/*
 Navicat Premium Data Transfer

 Source Server         : 39
 Source Server Type    : MySQL
 Source Server Version : 100410
 Source Host           : localhost:3306
 Source Schema         : db

 Target Server Type    : MySQL
 Target Server Version : 100410
 File Encoding         : 65001

 Date: 21/05/2022 18:42:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for food
-- ----------------------------
DROP TABLE IF EXISTS `food`;
CREATE TABLE `food`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stock` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'sqmr.png',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of food
-- ----------------------------
INSERT INTO `food` VALUES (1, '狗粮', '未售罄', '999', '123', 'gl.png');
INSERT INTO `food` VALUES (2, '猫粮', '过期', '2', '120', 'ml.png');
INSERT INTO `food` VALUES (3, '骨头', '售罄', '100', '20', 'sqmr.png');
INSERT INTO `food` VALUES (4, '1', '1', '1', '1', 'sqmr.png');

-- ----------------------------
-- Table structure for gwc
-- ----------------------------
DROP TABLE IF EXISTS `gwc`;
CREATE TABLE `gwc`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gwc
-- ----------------------------
INSERT INTO `gwc` VALUES (27, '中华田园犬', '1000', 'dog.jpg');

-- ----------------------------
-- Table structure for jewelry
-- ----------------------------
DROP TABLE IF EXISTS `jewelry`;
CREATE TABLE `jewelry`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stock` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'xaignquan.png',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of jewelry
-- ----------------------------
INSERT INTO `jewelry` VALUES (1, '项圈', '未售罄', '1000', '123', 'xq.jpg');
INSERT INTO `jewelry` VALUES (2, '狗狗背带裤', '未售罄', '5', '200', 'bdk.jpg');
INSERT INTO `jewelry` VALUES (5, '1', '1', '1', '1', 'xaignquan.png');

-- ----------------------------
-- Table structure for pet
-- ----------------------------
DROP TABLE IF EXISTS `pet`;
CREATE TABLE `pet`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `race` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jewelry` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `food` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `guas` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'cwmr.png',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pet
-- ----------------------------
INSERT INTO `pet` VALUES (1, '中华田园犬', '项圈', '杂食', '健康', '在店', '1000', 'dog.jpg');
INSERT INTO `pet` VALUES (2, '孟加拉巨蜥', '铁链', '肉食', '生病', '被印度f4偷窃', '1', 'jx.jpg');
INSERT INTO `pet` VALUES (14, '野生凹凸曼', '变身器', '光', '健康', '自己飞走了', '9999', 'atm.jpg');
INSERT INTO `pet` VALUES (15, '菜鸡', '篮球', '谷物', '健康', '在店', '666666', 'caiji.jpg');
INSERT INTO `pet` VALUES (21, '123', '123', '123', '123', '123', '123', 'cwmr.png');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `power` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'zhangsan', '123', '0');
INSERT INTO `user` VALUES (2, 'lisi', '123', '1');
INSERT INTO `user` VALUES (4, '123', '123', '1');
INSERT INTO `user` VALUES (6, '789', '456', '1');
INSERT INTO `user` VALUES (7, '123', '123', '1');
INSERT INTO `user` VALUES (8, '123', '123', '1');

SET FOREIGN_KEY_CHECKS = 1;
