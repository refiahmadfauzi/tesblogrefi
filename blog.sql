/*
 Navicat Premium Data Transfer

 Source Server         : ProjectFi
 Source Server Type    : MySQL
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 19/07/2022 11:42:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `username` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('admin', '21232f297a57a5a743894a0e4a801fc3', 'Ini Admin', '1', 1);
INSERT INTO `account` VALUES ('author', '02bd92faa38aaa6cc0ea75e59937a1ef', 'Refi Ahmad Fauzi', '2', 2);

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post`  (
  `idpost` int NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` datetime NOT NULL,
  `id_account` int NOT NULL,
  PRIMARY KEY (`idpost`) USING BTREE,
  INDEX `fk_post_account_idx`(`id_account`) USING BTREE,
  CONSTRAINT `post_ibfk_1` FOREIGN KEY (`id_account`) REFERENCES `account` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES (6, 'ini post pertama', 'cek dulu nihh', '2022-07-19 11:36:48', 1);
INSERT INTO `post` VALUES (8, 'ini post kedua', 'dari si user cek', '2022-07-19 11:42:01', 2);

SET FOREIGN_KEY_CHECKS = 1;
