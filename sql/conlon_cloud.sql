/*
Navicat MySQL Data Transfer

Source Server         : mydb
Source Server Version : 50643
Source Host           : localhost:3306
Source Database       : conlon_cloud

Target Server Type    : MYSQL
Target Server Version : 50643
File Encoding         : 65001

Date: 2020-01-31 20:22:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `menu_name` varchar(50) DEFAULT NULL COMMENT '权限名称',
  `menu_code` varchar(50) DEFAULT NULL COMMENT '权限编码',
  `menu_url` varchar(200) DEFAULT NULL COMMENT '访问连接',
  `created_time` datetime NOT NULL COMMENT '创建时间',
  `created_user_id` bigint(20) NOT NULL COMMENT '创建人ID',
  `created_user_name` varchar(50) NOT NULL COMMENT '创建人姓名',
  `modified_time` datetime NOT NULL COMMENT '最后修改时间',
  `modified_user_id` bigint(20) NOT NULL COMMENT '最后修改人ID',
  `modified_user_name` varchar(50) NOT NULL COMMENT '最后一次修改用户名称',
  `is_deleted` tinyint(4) NOT NULL COMMENT '删除状态1表示删除，0表示未删除',
  `status` tinyint(4) NOT NULL COMMENT '状态（0正常，1停用）',
  `remarks` varchar(50) NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='权限表sys_menu';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '新增', 'system:menu:add', '', '2020-01-29 11:54:32', '0', 'admin', '2020-01-29 11:54:48', '0', 'admin', '0', '0', '-');
INSERT INTO `sys_menu` VALUES ('2', '修改', 'system:menu:edit', '', '2020-01-29 11:54:32', '0', 'admin', '2020-01-29 11:54:48', '0', 'admin', '0', '0', '-');
INSERT INTO `sys_menu` VALUES ('3', '删除', 'system:menu:remove', '', '2020-01-29 11:54:32', '0', 'admin', '2020-01-29 11:54:48', '0', 'admin', '0', '0', '-');
INSERT INTO `sys_menu` VALUES ('4', '查看', 'system:menu:list', '', '2020-01-29 11:54:32', '0', 'admin', '2020-01-29 11:54:48', '0', 'admin', '0', '0', '-');

-- ----------------------------
-- Table structure for sys_menu_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu_role`;
CREATE TABLE `sys_menu_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色id',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `menu_code` varchar(50) DEFAULT NULL COMMENT '权限编码(为了查询方便,适当冗余)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色权限关联sys_menu_role';

-- ----------------------------
-- Records of sys_menu_role
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `role_name` varchar(50) DEFAULT NULL COMMENT '角色名称',
  `role_code` varchar(50) DEFAULT NULL COMMENT '角色编码',
  `created_time` datetime NOT NULL COMMENT '创建时间',
  `created_user_id` bigint(20) NOT NULL COMMENT '创建人ID',
  `created_user_name` varchar(50) NOT NULL COMMENT '创建人姓名',
  `modified_time` datetime NOT NULL COMMENT '最后修改时间',
  `modified_user_id` bigint(20) NOT NULL COMMENT '最后修改人ID',
  `modified_user_name` varchar(50) NOT NULL COMMENT '最后一次修改用户名称',
  `is_deleted` tinyint(4) NOT NULL COMMENT '删除状态1表示删除，0表示未删除',
  `status` tinyint(4) NOT NULL COMMENT '状态（0正常，1停用）',
  `remarks` varchar(50) NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='角色表sys_role';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'admin', '2020-01-29 11:58:43', '0', 'admin', '2020-01-29 11:58:54', '0', 'admin', '0', '0', '-');
INSERT INTO `sys_role` VALUES ('2', '普通管理员', 'plain_admin', '2020-01-29 11:58:43', '0', 'admin', '2020-01-29 11:58:54', '0', 'admin', '0', '0', '-');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_name` varchar(50) DEFAULT NULL COMMENT '用户名称',
  `user_code` varchar(50) DEFAULT NULL COMMENT '用户编码',
  `nick_name` varchar(200) DEFAULT NULL COMMENT '用户昵称',
  `password` varchar(50) DEFAULT NULL COMMENT '用户密码',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `created_user_id` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `created_user_name` varchar(50) DEFAULT NULL COMMENT '创建人姓名',
  `modified_time` datetime DEFAULT NULL COMMENT '最后修改时间',
  `modified_user_id` bigint(20) DEFAULT NULL COMMENT '最后修改人ID',
  `modified_user_name` varchar(50) DEFAULT NULL COMMENT '最后一次修改用户名称',
  `is_deleted` tinyint(4) DEFAULT NULL COMMENT '删除状态1表示删除，0表示未删除',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态（0正常，1停用）',
  `remarks` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COMMENT='用户表sys_user';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('52', 'conlon', '10000', '帅哥段', 'e10adc3949ba59abbe56e057f20f883e', '2020-01-31 10:37:18', '0', 'admin', '2020-01-31 10:37:18', '0', 'admin', '0', '0', '-');

-- ----------------------------
-- Table structure for sys_user_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_menu`;
CREATE TABLE `sys_user_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '权限id',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `menu_code` varchar(50) DEFAULT NULL COMMENT '权限编码(为了查询方便,适当冗余)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COMMENT='用户权限关联sys_user_menu';

-- ----------------------------
-- Records of sys_user_menu
-- ----------------------------
INSERT INTO `sys_user_menu` VALUES ('5', '1', '52', 'system:menu:add');
INSERT INTO `sys_user_menu` VALUES ('6', '2', '52', 'system:menu:edit');
INSERT INTO `sys_user_menu` VALUES ('7', '3', '52', 'system:menu:remove');
INSERT INTO `sys_user_menu` VALUES ('8', '4', '52', 'system:menu:list');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色id',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `role_code` varchar(50) DEFAULT NULL COMMENT '角色编码(查询方便适当冗余)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='用户角色关联sys_user_role';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('2', '2', '52', 'plain_admin');
