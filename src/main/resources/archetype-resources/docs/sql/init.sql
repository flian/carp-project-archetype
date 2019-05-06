

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for carp_action
-- ----------------------------

CREATE TABLE `carp_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_method` varchar(5) DEFAULT NULL,
  `action_url` varchar(100) NOT NULL,
  `leaf` bit(1) NOT NULL,
  `name` varchar(20) NOT NULL,
  `parent_id` int(11) DEFAULT '-1',
  `priority` int(11) DEFAULT '100',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of carp_action
-- ----------------------------
INSERT INTO `carp_action` VALUES ('1', 'ALL', 'NONE', '\0', '系统管理', '-1', '1');
INSERT INTO `carp_action` VALUES ('2', 'ALL', 'NONE', '\0', '业务管理', '-1', '1');
INSERT INTO `carp_action` VALUES ('3', 'ALL', 'NONE', '\0', '示例管理', '-1', '2');
INSERT INTO `carp_action` VALUES ('4', 'ALL', 'NONE', '\0', '权限中心', '1', '1');
INSERT INTO `carp_action` VALUES ('5', 'ALL', 'NONE', '\0', '示例中心', '3', '1');
INSERT INTO `carp_action` VALUES ('6', 'ALL', '/profile.*', '', '用户管理', '4', '1');
INSERT INTO `carp_action` VALUES ('7', 'ALL', '/roles.*', '', '角色管理', '4', '1');
INSERT INTO `carp_action` VALUES ('8', 'ALL', '/menus.*', '', '菜单管理', '4', '2');
INSERT INTO `carp_action` VALUES ('9', 'ALL', '/actions.*', '', '功能管理', '4', '3');
INSERT INTO `carp_action` VALUES ('10', 'ALL', '/cards.*', '', '卡片管理示范', '5', '1');
INSERT INTO `carp_action` VALUES ('11', 'ALL', '#', '\0', '客户管理', '2', '1');
INSERT INTO `carp_action` VALUES ('16', 'ALL', '/customer.*', '', '客户管理', '11', '1');

-- ----------------------------
-- Table structure for carp_customer
-- ----------------------------

CREATE TABLE `carp_customer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(150) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `mobile` varchar(11) NOT NULL,
  `nick_name` varchar(32) CHARACTER SET utf8mb4 NOT NULL,
  `password` varchar(64) NOT NULL,
  `user_name` varchar(32) NOT NULL,
  `uuid` varchar(64) NOT NULL,
  `last_password_reset_date` datetime DEFAULT NULL,
  `from_channel` varchar(64) NOT NULL,
  `wx_open_id` varchar(32) DEFAULT NULL,
  `wx_union_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_user_name` (`user_name`),
  UNIQUE KEY `UK_uuid` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of carp_customer
-- ----------------------------
INSERT INTO `carp_customer` VALUES ('1', '11', '1', '13333333333', '小白', '$2a$10$tpYOWdQtvOKLWN02mUbDMO/Y3aHE8dM4q9jc.7cYJh/9mFPPnIEIi', 'test_001', '$10$tpYOWdQtvOKLWN02mUbDMO/Y3aHE8dM4q9jc.7cYJh/9mF2PnIEIi', null, 'NORMAL', null, null);
INSERT INTO `carp_customer` VALUES ('2', '222', '1', '13333333333', '大白', '$10$tpYOWdQtvOKLWN02mUbDMO/Y3aHE8dM4q9jc.7cYJh/9mFPPnIEIi', 'test_002', '$10$tpYOWdQtvOKLWN02mUbDMO/Y3aHE8dM4q9jc.7cYJh/9maPPnIEIi', null, 'NORMAL', null, null);
INSERT INTO `carp_customer` VALUES ('3', '33', '1', '13333333333', '张三', '$10$tpYOWdQtvOKLWN02mUbDMO/Y3aHE8dM4q9jc.7cYJh/9mFPPnIEIi', 'test_003', '$10$tpYOWdQtvOKLWN02mUbDMO/Y3aHE8dM4q9jc.7cYJh/9mFdPnIEIi', null, 'NORMAL', null, null);
INSERT INTO `carp_customer` VALUES ('4', '4', '1', '13333333333', '李四', '$10$tpYOWdQtvOKLWN02mUbDMO/Y3aHE8dM4q9jc.7cYJh/9mFPPnIEIi', 'test_004', '$10$tpYOWdQtvOKLWN02mUbDMO/Y3aHE8dM4q9jc.7cYJh/9mFxPnIEIi', null, 'NORMAL', null, null);
INSERT INTO `carp_customer` VALUES ('5', '5', '1', '13333333333', '王五', '$10$tpYOWdQtvOKLWN02mUbDMO/Y3aHE8dM4q9jc.7cYJh/9mFPPnIEIi', 'test_005', '$10$tdYOWdQtvOKLWN02mUbDMO/Y3aHE8dM4q9jc.7cYJh/9mFPPnIEIi', null, 'NORMAL', null, null);
INSERT INTO `carp_customer` VALUES ('6', '1', '1', '13333333333', '刘六', '$10$tpYOWdQtvOKLWN02mUbDMO/Y3aHE8dM4q9jc.7cYJh/9mFPPnIEIi', 'test_006', '$10$tpYOWdQtvOKLWN02mUbDMO/Y3aHE8dM4q9jc.7cYJh/9mXPPnIEIi', null, 'NORMAL', null, null);
INSERT INTO `carp_customer` VALUES ('7', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqdClaMPEeJeF8FubefH33VDZWYjCOZhyYQhicQjGcuibJ0xrcTQtcCia77I3t29LlCrfuLmtwIdthUw/132', '1', '00000000000', 'f? oy', '$2a$10$plvg4rx4NBV44cmHfJISLuKnLP3K4dvxE4SVrgDEXgHvwyBOBNq8e', 'oX__v0vDEShGvs22VD8xifHggmQc', 'b3a1ff72-1a47-40af-81c0-96356a054a16', '2018-08-17 13:14:45', 'WECHAT', 'oX__v0vDEShGvs22VD8xifHggmQc', null);

-- ----------------------------
-- Table structure for carp_menu
-- ----------------------------

CREATE TABLE `carp_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leaf` bit(1) NOT NULL,
  `name` varchar(20) NOT NULL,
  `parent_id` int(11) DEFAULT '-1',
  `priority` int(11) DEFAULT '100',
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of carp_menu
-- ----------------------------
INSERT INTO `carp_menu` VALUES ('1', '\0', '系统管理', '-1', '1', '');
INSERT INTO `carp_menu` VALUES ('2', '\0', '业务管理', '-1', '2', '');
INSERT INTO `carp_menu` VALUES ('5', '\0', '权限中心', '1', '1', '');
INSERT INTO `carp_menu` VALUES ('6', '', '用户管理', '5', '1', '/profile');
INSERT INTO `carp_menu` VALUES ('7', '', '角色管理', '5', '2', '/roles');
INSERT INTO `carp_menu` VALUES ('8', '', '菜单管理', '5', '3', '/menus');
INSERT INTO `carp_menu` VALUES ('9', '', '功能管理', '5', '4', '/actions');
INSERT INTO `carp_menu` VALUES ('10', '\0', '静态页面', '-1', '3', 'NONE');
INSERT INTO `carp_menu` VALUES ('12', '\0', 'Dashboard', '10', '1', 'NONE');
INSERT INTO `carp_menu` VALUES ('14', '', 'Dashboard V1', '12', '1', '/webjars/AdminLTE/index.html');
INSERT INTO `carp_menu` VALUES ('15', '', 'dashboard v2', '12', '1', '/webjars/AdminLTE/index2.html');
INSERT INTO `carp_menu` VALUES ('16', '\0', 'layout Options', '10', '2', 'NONE');
INSERT INTO `carp_menu` VALUES ('18', '\0', 'Charts', '10', '4', 'NONE');
INSERT INTO `carp_menu` VALUES ('19', '\0', 'Widgets', '10', '5', 'NONE');
INSERT INTO `carp_menu` VALUES ('20', '\0', 'UI Elements', '10', '6', 'NONE');
INSERT INTO `carp_menu` VALUES ('21', '\0', 'Forms', '10', '7', 'NONE');
INSERT INTO `carp_menu` VALUES ('22', '\0', 'Tables', '10', '8', 'NONE');
INSERT INTO `carp_menu` VALUES ('23', '\0', 'Calendar', '10', '9', 'NONE');
INSERT INTO `carp_menu` VALUES ('24', '\0', 'Mailbox', '10', '10', 'NONE');
INSERT INTO `carp_menu` VALUES ('27', '\0', 'Examples', '10', '13', 'NONE');
INSERT INTO `carp_menu` VALUES ('30', '\0', 'Documents', '10', '16', 'NONE');
INSERT INTO `carp_menu` VALUES ('31', '', 'documentation', '30', '1', '/webjars/AdminLTE/documentation/index.html');
INSERT INTO `carp_menu` VALUES ('32', '', 'Top Navigation', '16', '1', '/webjars/AdminLTE/pages/layout/top-nav.html');
INSERT INTO `carp_menu` VALUES ('33', '', 'Boxed', '16', '1', '/webjars/AdminLTE/pages/layout/boxed.html');
INSERT INTO `carp_menu` VALUES ('34', '', 'Fixed', '16', '2', '/webjars/AdminLTE/pages/layout/fixed.html');
INSERT INTO `carp_menu` VALUES ('35', '', 'Collapsed Sidebar', '16', '3', '/webjars/AdminLTE/pages/layout/collapsed-sidebar.html');
INSERT INTO `carp_menu` VALUES ('36', '', 'ChartJS', '18', '1', '/webjars/AdminLTE/pages/charts/chartjs.html');
INSERT INTO `carp_menu` VALUES ('37', '', 'Morris', '18', '1', '/webjars/AdminLTE/pages/charts/morris.html');
INSERT INTO `carp_menu` VALUES ('38', '', 'Flot', '18', '2', '/webjars/AdminLTE/pages/charts/flot.html');
INSERT INTO `carp_menu` VALUES ('39', '', 'Inline charts', '18', '3', '/webjars/AdminLTE/pages/charts/inline.html');
INSERT INTO `carp_menu` VALUES ('40', '', 'Widgets', '19', '1', '/webjars/AdminLTE/pages/widgets.html');
INSERT INTO `carp_menu` VALUES ('41', '', 'General', '20', '1', '/webjars/AdminLTE/pages/UI/general.html');
INSERT INTO `carp_menu` VALUES ('42', '', 'Icons', '20', '1', '/webjars/AdminLTE/pages/UI/icons.html');
INSERT INTO `carp_menu` VALUES ('43', '', 'Buttons', '20', '2', '/webjars/AdminLTE/pages/UI/buttons.html');
INSERT INTO `carp_menu` VALUES ('44', '', 'Sliders', '20', '3', '/webjars/AdminLTE/pages/UI/sliders.html');
INSERT INTO `carp_menu` VALUES ('45', '', 'Timeline', '20', '4', '/webjars/AdminLTE/pages/UI/timeline.html');
INSERT INTO `carp_menu` VALUES ('46', '', 'Modals', '20', '5', '/webjars/AdminLTE/pages/UI/modals.html');
INSERT INTO `carp_menu` VALUES ('51', '', 'General Elements', '21', '4', '/webjars/AdminLTE/pages/forms/general.html');
INSERT INTO `carp_menu` VALUES ('52', '', 'Advanced Elements', '21', '5', '/webjars/AdminLTE/pages/forms/advanced.html');
INSERT INTO `carp_menu` VALUES ('53', '', 'Editors', '21', '6', '/webjars/AdminLTE/pages/forms/editors.html');
INSERT INTO `carp_menu` VALUES ('54', '', 'Simple Tables', '22', '1', '/webjars/AdminLTE/pages/tables/simple.html');
INSERT INTO `carp_menu` VALUES ('55', '', 'Data tables', '22', '1', '/webjars/AdminLTE/pages/tables/data.html');
INSERT INTO `carp_menu` VALUES ('56', '', 'Calendar', '23', '1', '/webjars/AdminLTE/pages/calendar.html');
INSERT INTO `carp_menu` VALUES ('57', '', 'MainBox', '24', '1', '/webjars/AdminLTE/pages/mailbox/mailbox.html');
INSERT INTO `carp_menu` VALUES ('58', '', 'Invoice', '27', '1', '/webjars/AdminLTE/pages/examples/invoice.html');
INSERT INTO `carp_menu` VALUES ('59', '', 'Profile', '27', '1', '/webjars/AdminLTE/pages/examples/profile.html');
INSERT INTO `carp_menu` VALUES ('60', '', 'Login', '27', '2', '/webjars/AdminLTE/pages/examples/login.html');
INSERT INTO `carp_menu` VALUES ('61', '', 'Register', '27', '3', '/webjars/AdminLTE/pages/examples/register.html');
INSERT INTO `carp_menu` VALUES ('62', '', 'Lockscreen', '27', '4', '/webjars/AdminLTE/pages/examples/lockscreen.html');
INSERT INTO `carp_menu` VALUES ('63', '', '404 Error', '27', '5', '/webjars/AdminLTE/pages/examples/404.html');
INSERT INTO `carp_menu` VALUES ('64', '', '500 Error', '27', '6', '/webjars/AdminLTE/pages/examples/500.html');
INSERT INTO `carp_menu` VALUES ('65', '', 'Blank Page', '27', '7', '/webjars/AdminLTE/pages/examples/blank.html');
INSERT INTO `carp_menu` VALUES ('66', '', 'Pace Page', '27', '8', '/webjars/AdminLTE/pages/examples/pace.html');
INSERT INTO `carp_menu` VALUES ('67', '\0', '示例管理', '-1', '4', 'NONE');
INSERT INTO `carp_menu` VALUES ('68', '\0', '示例中心', '67', '1', 'NONE');
INSERT INTO `carp_menu` VALUES ('69', '', '卡片管理示范', '68', '1', '/cards');
INSERT INTO `carp_menu` VALUES ('70', '\0', '客户管理', '2', '1', '#');
INSERT INTO `carp_menu` VALUES ('75', '', '客户管理', '70', '1', '/customer');

-- ----------------------------
-- Table structure for carp_role
-- ----------------------------

CREATE TABLE `carp_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '逻辑主键',
  `role_code` varchar(30) NOT NULL COMMENT '角色编码，业务主键。',
  `role_name` varchar(50) NOT NULL COMMENT '角色名称。',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_role_code` (`role_code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of carp_role
-- ----------------------------
INSERT INTO `carp_role` VALUES ('1', 'ROLE_ADMIN', '系统管理员');
INSERT INTO `carp_role` VALUES ('2', 'ROLE_USER', '一般用户');

-- ----------------------------
-- Table structure for carp_role_action
-- ----------------------------

CREATE TABLE `carp_role_action` (
  `role_id` bigint(20) NOT NULL,
  `action_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of carp_role_action
-- ----------------------------
INSERT INTO `carp_role_action` VALUES ('1', '6');
INSERT INTO `carp_role_action` VALUES ('1', '7');
INSERT INTO `carp_role_action` VALUES ('1', '8');
INSERT INTO `carp_role_action` VALUES ('1', '9');
INSERT INTO `carp_role_action` VALUES ('1', '10');
INSERT INTO `carp_role_action` VALUES ('1', '16');

-- ----------------------------
-- Table structure for carp_role_menu
-- ----------------------------

CREATE TABLE `carp_role_menu` (
  `role_id` bigint(20) NOT NULL,
  `menu_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of carp_role_menu
-- ----------------------------
INSERT INTO `carp_role_menu` VALUES ('1', '6');
INSERT INTO `carp_role_menu` VALUES ('1', '7');
INSERT INTO `carp_role_menu` VALUES ('1', '8');
INSERT INTO `carp_role_menu` VALUES ('1', '9');
INSERT INTO `carp_role_menu` VALUES ('1', '14');
INSERT INTO `carp_role_menu` VALUES ('1', '15');
INSERT INTO `carp_role_menu` VALUES ('1', '31');
INSERT INTO `carp_role_menu` VALUES ('1', '32');
INSERT INTO `carp_role_menu` VALUES ('1', '33');
INSERT INTO `carp_role_menu` VALUES ('1', '34');
INSERT INTO `carp_role_menu` VALUES ('1', '35');
INSERT INTO `carp_role_menu` VALUES ('1', '36');
INSERT INTO `carp_role_menu` VALUES ('1', '37');
INSERT INTO `carp_role_menu` VALUES ('1', '38');
INSERT INTO `carp_role_menu` VALUES ('1', '39');
INSERT INTO `carp_role_menu` VALUES ('1', '40');
INSERT INTO `carp_role_menu` VALUES ('1', '41');
INSERT INTO `carp_role_menu` VALUES ('1', '42');
INSERT INTO `carp_role_menu` VALUES ('1', '43');
INSERT INTO `carp_role_menu` VALUES ('1', '44');
INSERT INTO `carp_role_menu` VALUES ('1', '45');
INSERT INTO `carp_role_menu` VALUES ('1', '46');
INSERT INTO `carp_role_menu` VALUES ('1', '51');
INSERT INTO `carp_role_menu` VALUES ('1', '52');
INSERT INTO `carp_role_menu` VALUES ('1', '53');
INSERT INTO `carp_role_menu` VALUES ('1', '54');
INSERT INTO `carp_role_menu` VALUES ('1', '55');
INSERT INTO `carp_role_menu` VALUES ('1', '56');
INSERT INTO `carp_role_menu` VALUES ('1', '57');
INSERT INTO `carp_role_menu` VALUES ('1', '58');
INSERT INTO `carp_role_menu` VALUES ('1', '59');
INSERT INTO `carp_role_menu` VALUES ('1', '60');
INSERT INTO `carp_role_menu` VALUES ('1', '61');
INSERT INTO `carp_role_menu` VALUES ('1', '62');
INSERT INTO `carp_role_menu` VALUES ('1', '63');
INSERT INTO `carp_role_menu` VALUES ('1', '64');
INSERT INTO `carp_role_menu` VALUES ('1', '65');
INSERT INTO `carp_role_menu` VALUES ('1', '66');
INSERT INTO `carp_role_menu` VALUES ('1', '69');
INSERT INTO `carp_role_menu` VALUES ('1', '75');

-- ----------------------------
-- Table structure for carp_showcase_card
-- ----------------------------

CREATE TABLE `carp_showcase_card` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT COMMENT '逻辑主键',
  `card_id` varchar(64) NOT NULL COMMENT '卡号，业务主键',
  `card_type` varchar(4) NOT NULL DEFAULT '0001' COMMENT '卡片类型',
  `issue_value` decimal(12,2) NOT NULL COMMENT '卡片发行时价格',
  `frozen_value` decimal(12,2) NOT NULL COMMENT '已冻结金额',
  `balance_value` decimal(12,2) NOT NULL COMMENT '当前余额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of carp_showcase_card
-- ----------------------------
INSERT INTO `carp_showcase_card` VALUES ('1', 'card001', '0001', '1000.00', '11.00', '1000.00');
INSERT INTO `carp_showcase_card` VALUES ('2', 'card002', '0001', '100.00', '0.00', '100.00');
INSERT INTO `carp_showcase_card` VALUES ('3', 'card003', '0001', '1000.00', '1.00', '1000.00');
INSERT INTO `carp_showcase_card` VALUES ('4', 'card004', '0001', '100.00', '0.00', '100.00');
INSERT INTO `carp_showcase_card` VALUES ('5', 'card005', '0001', '1000.00', '1.00', '1000.00');
INSERT INTO `carp_showcase_card` VALUES ('6', 'card006', '0001', '100.00', '0.00', '100.00');
INSERT INTO `carp_showcase_card` VALUES ('7', 'card007', '0001', '1000.00', '1.00', '1000.00');
INSERT INTO `carp_showcase_card` VALUES ('8', 'card008', '0001', '100.00', '0.00', '100.00');
INSERT INTO `carp_showcase_card` VALUES ('9', 'card009', '0001', '1000.00', '1.00', '1000.00');
INSERT INTO `carp_showcase_card` VALUES ('10', 'card010', '0001', '100.00', '0.00', '100.00');
INSERT INTO `carp_showcase_card` VALUES ('11', 'card011', '0001', '1000.00', '1.00', '1000.00');
INSERT INTO `carp_showcase_card` VALUES ('12', 'card012', '0001', '100.00', '0.00', '100.00');

-- ----------------------------
-- Table structure for carp_user
-- ----------------------------

CREATE TABLE `carp_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '逻辑主键',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `user_name` varchar(20) NOT NULL COMMENT '用户名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_user_name` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of carp_user
-- ----------------------------
INSERT INTO `carp_user` VALUES ('1', '$2a$10$Ohb6kWObdqM231o8lzIkT.AWkApqhEe2XNL2akji9y0wzREdOa37q', 'admin');
INSERT INTO `carp_user` VALUES ('2', '$2a$10$HkOAFyU86LVXjtnlILOtFu2SdHQ4dJgYd6DATL.EydBLfvmRTo6wm', 'user');

-- ----------------------------
-- Table structure for carp_user_role
-- ----------------------------

CREATE TABLE `carp_user_role` (
  `user_name` varchar(20) NOT NULL,
  `role_code` varchar(30) NOT NULL,
  PRIMARY KEY (`user_name`,`role_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of carp_user_role
-- ----------------------------
INSERT INTO `carp_user_role` VALUES ('admin', 'ROLE_ADMIN');
INSERT INTO `carp_user_role` VALUES ('user', 'ROLE_USER');

-- ----------------------------
-- Table structure for flyway_schema_history
-- ----------------------------

CREATE TABLE `flyway_schema_history` (
  `installed_rank` int(11) NOT NULL,
  `version` varchar(50) DEFAULT NULL,
  `description` varchar(200) NOT NULL,
  `type` varchar(20) NOT NULL,
  `script` varchar(1000) NOT NULL,
  `checksum` int(11) DEFAULT NULL,
  `installed_by` varchar(100) NOT NULL,
  `installed_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `execution_time` int(11) NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`installed_rank`),
  KEY `flyway_schema_history_s_idx` (`success`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flyway_schema_history
-- ----------------------------
INSERT INTO `flyway_schema_history` VALUES ('1', '1.0.0', 'security init', 'SQL', 'mysql/V1_0_0__security_init.sql', '2023838508', 'root', '2019-04-15 03:58:54', '749', '1');
INSERT INTO `flyway_schema_history` VALUES ('2', '1.1.0', 'showcase init', 'SQL', 'mysql/V1_1_0__showcase_init.sql', '-1608744166', 'root', '2019-04-15 03:58:55', '24', '1');
INSERT INTO `flyway_schema_history` VALUES ('3', '1.1.1', 'customer table init', 'SQL', 'mysql/V1_1_1__customer_table_init.sql', '-414965373', 'root', '2019-04-15 03:58:55', '72', '1');
INSERT INTO `flyway_schema_history` VALUES ('4', '1.1.10', 'core menu action init', 'SQL', 'mysql/V1_1_10__core_menu_action_init.sql', '313705840', 'root', '2019-04-15 03:58:55', '46', '1');
INSERT INTO `flyway_schema_history` VALUES ('5', '1.1.11', 'core seed data init', 'SQL', 'mysql/V1_1_11__core_seed_data_init.sql', '238315186', 'root', '2019-04-15 03:58:55', '76', '1');
INSERT INTO `flyway_schema_history` VALUES ('6', null, 'security assign admin everything', 'SQL', 'mysql/R__security_assign_admin_everything.sql', '-790612620', 'root', '2019-04-15 03:58:55', '41', '1');
