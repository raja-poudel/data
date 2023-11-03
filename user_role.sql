/*
 Navicat Premium Data Transfer

 Source Server         : Mariadb Local
 Source Server Type    : MySQL
 Source Server Version : 110002 (11.0.2-MariaDB-1:11.0.2+maria~ubu2204)
 Source Host           : localhost:6603
 Source Schema         : eyravat-retail-pos

 Target Server Type    : MySQL
 Target Server Version : 110002 (11.0.2-MariaDB-1:11.0.2+maria~ubu2204)
 File Encoding         : 65001

 Date: 16/09/2023 10:49:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userRole` varchar(191) NOT NULL,
  `roleName` varchar(191) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_role_userRole_key` (`userRole`),
  UNIQUE KEY `user_role_roleName_key` (`roleName`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_role
-- ----------------------------
BEGIN;
INSERT INTO `user_role` (`id`, `userRole`, `roleName`, `description`) VALUES (1, 'Technical', 'Technical', 'Administrative user who have fully CRUD functionality.');
INSERT INTO `user_role` (`id`, `userRole`, `roleName`, `description`) VALUES (2, 'Owner', 'Owner', 'Administrative user who have fully CRUD functionality.');
INSERT INTO `user_role` (`id`, `userRole`, `roleName`, `description`) VALUES (3, 'Manager', 'Manager', 'Managerial person who have permitted access depends on own branch data.');
INSERT INTO `user_role` (`id`, `userRole`, `roleName`, `description`) VALUES (4, 'Operator', 'Operator', 'Staff only allow to use POS and CRM only, cannot add and edit inventory.');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
