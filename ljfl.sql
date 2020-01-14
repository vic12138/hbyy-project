/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : ljfl

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 14/01/2020 14:35:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for app_img
-- ----------------------------
DROP TABLE IF EXISTS `app_img`;
CREATE TABLE `app_img`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'id',
  `img_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '图片路径',
  `img_tab` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '图片标记（0-首页，1-资讯页）',
  `open_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图片是否开启标志(0表开启，1代表关闭)',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '删除标志（0代表存在 1代表删除）',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_img
-- ----------------------------
INSERT INTO `app_img` VALUES ('5210c963a20c4fab87199bd1d1287130', '/profile/infoImg/2020/01/13/ee7d326d7b63ef99e6e109dfe914d6c4.jpg', '1', '0', '0', '2020-01-13 23:29:54', 'admin', '2020-01-13 23:30:17', '');
INSERT INTO `app_img` VALUES ('5e16472a0bf54f329f1ab43760b4439c', '/profile/infoImg/2020/01/13/cd9154eb8157b49ddf65f7fb25b6a1be.jpg', '0', '1', '0', '2020-01-13 23:08:23', 'admin', '2020-01-13 23:25:00', '');

-- ----------------------------
-- Table structure for cycling
-- ----------------------------
DROP TABLE IF EXISTS `cycling`;
CREATE TABLE `cycling`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '回收站id',
  `cycling_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '回收站名称',
  `cycling_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '回收站图片',
  `cycling_mobile` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '回收站联系方式',
  `cycling_man` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '回收站负责人',
  `cycling_introduce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '回收站介绍',
  `cycling_detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '回收站详情',
  `address_x` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址X轴',
  `address_y` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址y轴',
  `cycling_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '回收站具体地址',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '删除标志（0代表存在 1代表删除）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cycling
-- ----------------------------
INSERT INTO `cycling` VALUES ('0593cbd727204f5387e489888221daf9', '铭记废品回收站', '/profile/CycImg/2020/01/06/81c15bd5d04871c28474fde2b8d866c5.jpg', '17765603040', '李先生', '专业上门收购废品！有大小货车拉货。有工人搬运，欢迎老板的来电咨询。', NULL, '113.11537', '23.01502', '广东省佛山市禅城区祖庙街道垂虹村新荣大厦', 'admin', '2020-01-02 14:57:09', 'admin', '2020-01-08 23:33:26', '', '0');
INSERT INTO `cycling` VALUES ('4345ef5de02a437c882fa2efce29d7e9', '百益废品回收站', '/profile/CycImg/2020/01/06/83f2f6ea463477e4ed187b5afd877819.jpg', '17765603324', '张先生', '公司秉承“诚信经营，用心服务”的理念，为您提供优质的产品和服务。欢迎来电咨询！', NULL, '113.077562', '23.004276', '广东省佛山市禅城区石湾镇街道忠信路12号南风古灶', 'admin', '2020-01-02 14:59:20', 'admin', '2020-01-08 23:34:44', '', '0');
INSERT INTO `cycling` VALUES ('a11e23b86b4e4615b8cfc1ddf12a10be', '百宝箱废品回收站', '/profile/CycImg/2020/01/06/f2448613b16a70c568508b11fa22b2c1.jpg', '17765602265', '邱先生', '专业收废铁,废不锈钢,废铜,废铝,废锌,废铅,废塑料,废纸板等本站诚实经营,价格合理,保证客户利益最大化!重视与客户的长期联盟合作关系!', NULL, '113.073528', '23.078441', '广东省佛山市南海区狮山镇佛山沙堤机场', 'admin', '2020-01-02 15:00:41', 'admin', '2020-01-08 23:35:38', '', '0');

-- ----------------------------
-- Table structure for garbage
-- ----------------------------
DROP TABLE IF EXISTS `garbage`;
CREATE TABLE `garbage`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '垃圾分类id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '垃圾分类名称',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '垃圾分类类型（0-可回收垃圾，1-有害垃圾，2-厨余（湿）垃圾，3-其他（干）垃圾）',
  `g_explain` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '解释',
  `contain` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '包含物品',
  `tip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '投放提示',
  `letter_id` int(11) NOT NULL COMMENT '字母表id',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '删除标志（0代表存在 1代表删除）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of garbage
-- ----------------------------
INSERT INTO `garbage` VALUES ('1', '苹果核', '2', '厨余垃圾是指居民日常生活及食品加工、饮食服务、单位供餐等活动中产生的垃圾。', '包含物品：常见包括菜叶、剩菜、剩饭、果皮、蛋壳、茶渣、骨头等', '投放提示：纯流质的食物垃圾、如牛奶等，应直接倒进下水口。有包装物的湿垃圾应将包装物去除后分类投放、包装物请投放到对应的可回收物或干垃圾容器', 16, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('10', 'PET塑料瓶', '0', '可回收垃圾是指适宜回收、可循环利用的生活废弃物。', '常见包括各类废金属、玻璃瓶、易拉罐、饮料瓶、塑料玩具、书本、报纸、广告单、纸板箱、衣服、床上用品、电子产品等', '轻投轻放；清洁干燥，避免污染，费纸尽量平整；立体包装物请清空内容物，清洁后压扁投放；有尖锐边角的、应包裹后投放', 16, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('11', '剩饭', '2', '厨余垃圾是指居民日常生活及食品加工、饮食服务、单位供餐等活动中产生的垃圾。', '包含物品：常见包括菜叶、剩菜、剩饭、果皮、蛋壳、茶渣、骨头等', '投放提示：纯流质的食物垃圾、如牛奶等，应直接倒进下水口。有包装物的湿垃圾应将包装物去除后分类投放、包装物请投放到对应的可回收物或干垃圾容器', 19, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('12', '油漆桶', '1', '有毒有害垃圾是指存有对人体健康有害的重金属、有毒的物质或者对环境造成现实危害或者潜在危害的废弃物。', '常见包括废电池、废荧光灯管、废灯泡、废水银温度计、废油漆桶、过期药品、农药、杀虫剂等。', '分类投放有害垃圾时，应注意轻放。其中：废灯管等易破损的有害垃圾应连带包装或包裹后投放；废弃药品宜连带包装一并投放；杀虫剂等压力罐装容器，应排空内容物后投放；在公共场所产生有害垃圾且未发现对应收集容器时，应携带至有害垃圾投放点妥善投放。', 25, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('13', '葡萄', '2', '厨余垃圾是指居民日常生活及食品加工、饮食服务、单位供餐等活动中产生的垃圾。', '包含物品：常见包括菜叶、剩菜、剩饭、果皮、蛋壳、茶渣、骨头等', '投放提示：纯流质的食物垃圾、如牛奶等，应直接倒进下水口。有包装物的湿垃圾应将包装物去除后分类投放、包装物请投放到对应的可回收物或干垃圾容器', 16, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('14', '连衣裙', '0', '可回收垃圾是指适宜回收、可循环利用的生活废弃物。', '常见包括各类废金属、玻璃瓶、易拉罐、饮料瓶、塑料玩具、书本、报纸、广告单、纸板箱、衣服、床上用品、电子产品等', '轻投轻放；清洁干燥，避免污染，费纸尽量平整；立体包装物请清空内容物，清洁后压扁投放；有尖锐边角的、应包裹后投放', 12, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('15', '不锈钢垃圾桶', '0', '可回收垃圾是指适宜回收、可循环利用的生活废弃物。', '常见包括各类废金属、玻璃瓶、易拉罐、饮料瓶、塑料玩具、书本、报纸、广告单、纸板箱、衣服、床上用品、电子产品等', '轻投轻放；清洁干燥，避免污染，费纸尽量平整；立体包装物请清空内容物，清洁后压扁投放；有尖锐边角的、应包裹后投放', 2, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('16', '塑料碗', '0', '可回收垃圾是指适宜回收、可循环利用的生活废弃物。', '常见包括各类废金属、玻璃瓶、易拉罐、饮料瓶、塑料玩具、书本、报纸、广告单、纸板箱、衣服、床上用品、电子产品等', '轻投轻放；清洁干燥，避免污染，费纸尽量平整；立体包装物请清空内容物，清洁后压扁投放；有尖锐边角的、应包裹后投放', 19, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('17', '废钥匙', '0', '可回收垃圾是指适宜回收、可循环利用的生活废弃物。', '常见包括各类废金属、玻璃瓶、易拉罐、饮料瓶、塑料玩具、书本、报纸、广告单、纸板箱、衣服、床上用品、电子产品等', '轻投轻放；清洁干燥，避免污染，费纸尽量平整；立体包装物请清空内容物，清洁后压扁投放；有尖锐边角的、应包裹后投放', 6, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('18', '方便面包装袋', '3', '干垃圾即其它垃圾，指除可回收物、有害垃圾、厨余垃圾（湿垃圾）以外的其它生活废弃物。', '常见包括砖瓦陶瓷、渣土、卫生间废纸、猫砂、污损塑料、毛发、硬壳、一次性制品、灰土、瓷器碎片等难以回收的废弃物', '尽量沥干水分；难以辨识类别的生活垃圾都可以投入干垃圾容器内', 6, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('19', '照相机', '0', '可回收垃圾是指适宜回收、可循环利用的生活废弃物。', '常见包括各类废金属、玻璃瓶、易拉罐、饮料瓶、塑料玩具、书本、报纸、广告单、纸板箱、衣服、床上用品、电子产品等', '轻投轻放；清洁干燥，避免污染，费纸尽量平整；立体包装物请清空内容物，清洁后压扁投放；有尖锐边角的、应包裹后投放', 26, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('2', '纸巾', '3', '干垃圾即其它垃圾，指除可回收物、有害垃圾、厨余垃圾（湿垃圾）以外的其它生活废弃物。', '常见包括砖瓦陶瓷、渣土、卫生间废纸、猫砂、污损塑料、毛发、硬壳、一次性制品、灰土、瓷器碎片等难以回收的废弃物', '尽量沥干水分；难以辨识类别的生活垃圾都可以投入干垃圾容器内', 26, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('20', '安全套', '3', '干垃圾即其它垃圾，指除可回收物、有害垃圾、厨余垃圾（湿垃圾）以外的其它生活废弃物。', '常见包括砖瓦陶瓷、渣土、卫生间废纸、猫砂、污损塑料、毛发、硬壳、一次性制品、灰土、瓷器碎片等难以回收的废弃物', '尽量沥干水分；难以辨识类别的生活垃圾都可以投入干垃圾容器内', 1, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('21', '土豆', '2', '厨余垃圾是指居民日常生活及食品加工、饮食服务、单位供餐等活动中产生的垃圾。', '包含物品：常见包括菜叶、剩菜、剩饭、果皮、蛋壳、茶渣、骨头等', '投放提示：纯流质的食物垃圾、如牛奶等，应直接倒进下水口。有包装物的湿垃圾应将包装物去除后分类投放、包装物请投放到对应的可回收物或干垃圾容器', 20, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('22', '帽子', '0', '可回收垃圾是指适宜回收、可循环利用的生活废弃物。', '常见包括各类废金属、玻璃瓶、易拉罐、饮料瓶、塑料玩具、书本、报纸、广告单、纸板箱、衣服、床上用品、电子产品等', '轻投轻放；清洁干燥，避免污染，费纸尽量平整；立体包装物请清空内容物，清洁后压扁投放；有尖锐边角的、应包裹后投放', 13, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('23', '快餐盒', '3', '干垃圾即其它垃圾，指除可回收物、有害垃圾、厨余垃圾（湿垃圾）以外的其它生活废弃物。', '常见包括砖瓦陶瓷、渣土、卫生间废纸、猫砂、污损塑料、毛发、硬壳、一次性制品、灰土、瓷器碎片等难以回收的废弃物', '尽量沥干水分；难以辨识类别的生活垃圾都可以投入干垃圾容器内', 11, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('24', '碎玻璃', '0', '可回收垃圾是指适宜回收、可循环利用的生活废弃物。', '常见包括各类废金属、玻璃瓶、易拉罐、饮料瓶、塑料玩具、书本、报纸、广告单、纸板箱、衣服、床上用品、电子产品等', '轻投轻放；清洁干燥，避免污染，费纸尽量平整；立体包装物请清空内容物，清洁后压扁投放；有尖锐边角的、应包裹后投放', 19, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('25', '一次性口罩', '3', '干垃圾即其它垃圾，指除可回收物、有害垃圾、厨余垃圾（湿垃圾）以外的其它生活废弃物。', '常见包括砖瓦陶瓷、渣土、卫生间废纸、猫砂、污损塑料、毛发、硬壳、一次性制品、灰土、瓷器碎片等难以回收的废弃物', '尽量沥干水分；难以辨识类别的生活垃圾都可以投入干垃圾容器内', 25, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('26', '次性咖啡纸杯', '3', '干垃圾即其它垃圾，指除可回收物、有害垃圾、厨余垃圾（湿垃圾）以外的其它生活废弃物。', '常见包括砖瓦陶瓷、渣土、卫生间废纸、猫砂、污损塑料、毛发、硬壳、一次性制品、灰土、瓷器碎片等难以回收的废弃物', '尽量沥干水分；难以辨识类别的生活垃圾都可以投入干垃圾容器内', 3, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('27', '书', '0', '可回收垃圾是指适宜回收、可循环利用的生活废弃物。', '常见包括各类废金属、玻璃瓶、易拉罐、饮料瓶、塑料玩具、书本、报纸、广告单、纸板箱、衣服、床上用品、电子产品等', '轻投轻放；清洁干燥，避免污染，费纸尽量平整；立体包装物请清空内容物，清洁后压扁投放；有尖锐边角的、应包裹后投放', 19, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('28', '化妆品', '1', '有毒有害垃圾是指存有对人体健康有害的重金属、有毒的物质或者对环境造成现实危害或者潜在危害的废弃物。', '常见包括废电池、废荧光灯管、废灯泡、废水银温度计、废油漆桶、过期药品、农药、杀虫剂等。', '分类投放有害垃圾时，应注意轻放。其中：废灯管等易破损的有害垃圾应连带包装或包裹后投放；废弃药品宜连带包装一并投放；杀虫剂等压力罐装容器，应排空内容物后投放；在公共场所产生有害垃圾且未发现对应收集容器时，应携带至有害垃圾投放点妥善投放。', 8, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('29', '南瓜子壳', '2', '厨余垃圾是指居民日常生活及食品加工、饮食服务、单位供餐等活动中产生的垃圾。', '包含物品：常见包括菜叶、剩菜、剩饭、果皮、蛋壳、茶渣、骨头等', '投放提示：纯流质的食物垃圾、如牛奶等，应直接倒进下水口。有包装物的湿垃圾应将包装物去除后分类投放、包装物请投放到对应的可回收物或干垃圾容器', 14, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('3', '苹果皮', '2', '厨余垃圾是指居民日常生活及食品加工、饮食服务、单位供餐等活动中产生的垃圾。', '包含物品：常见包括菜叶、剩菜、剩饭、果皮、蛋壳、茶渣、骨头等', '投放提示：纯流质的食物垃圾、如牛奶等，应直接倒进下水口。有包装物的湿垃圾应将包装物去除后分类投放、包装物请投放到对应的可回收物或干垃圾容器', 16, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('30', '卫生巾', '3', '干垃圾即其它垃圾，指除可回收物、有害垃圾、厨余垃圾（湿垃圾）以外的其它生活废弃物。', '常见包括砖瓦陶瓷、渣土、卫生间废纸、猫砂、污损塑料、毛发、硬壳、一次性制品、灰土、瓷器碎片等难以回收的废弃物', '尽量沥干水分；难以辨识类别的生活垃圾都可以投入干垃圾容器内', 23, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('31', '啤酒瓶', '0', '可回收垃圾是指适宜回收、可循环利用的生活废弃物。', '常见包括各类废金属、玻璃瓶、易拉罐、饮料瓶、塑料玩具、书本、报纸、广告单、纸板箱、衣服、床上用品、电子产品等', '轻投轻放；清洁干燥，避免污染，费纸尽量平整；立体包装物请清空内容物，清洁后压扁投放；有尖锐边角的、应包裹后投放', 2, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('32', '塑料日用品', '0', '可回收垃圾是指适宜回收、可循环利用的生活废弃物。', '常见包括各类废金属、玻璃瓶、易拉罐、饮料瓶、塑料玩具、书本、报纸、广告单、纸板箱、衣服、床上用品、电子产品等', '轻投轻放；清洁干燥，避免污染，费纸尽量平整；立体包装物请清空内容物，清洁后压扁投放；有尖锐边角的、应包裹后投放', 19, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('33', '婴幼儿纸尿裤', '3', '干垃圾即其它垃圾，指除可回收物、有害垃圾、厨余垃圾（湿垃圾）以外的其它生活废弃物。', '常见包括砖瓦陶瓷、渣土、卫生间废纸、猫砂、污损塑料、毛发、硬壳、一次性制品、灰土、瓷器碎片等难以回收的废弃物', '尽量沥干水分；难以辨识类别的生活垃圾都可以投入干垃圾容器内', 25, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('34', '床单', '0', '可回收垃圾是指适宜回收、可循环利用的生活废弃物。', '常见包括各类废金属、玻璃瓶、易拉罐、饮料瓶、塑料玩具、书本、报纸、广告单、纸板箱、衣服、床上用品、电子产品等', '轻投轻放；清洁干燥，避免污染，费纸尽量平整；立体包装物请清空内容物，清洁后压扁投放；有尖锐边角的、应包裹后投放', 3, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('35', '报废车辆', '0', '可回收垃圾是指适宜回收、可循环利用的生活废弃物。', '常见包括各类废金属、玻璃瓶、易拉罐、饮料瓶、塑料玩具、书本、报纸、广告单、纸板箱、衣服、床上用品、电子产品等', '轻投轻放；清洁干燥，避免污染，费纸尽量平整；立体包装物请清空内容物，清洁后压扁投放；有尖锐边角的、应包裹后投放', 2, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('36', '无人机', '0', '可回收垃圾是指适宜回收、可循环利用的生活废弃物。', '常见包括各类废金属、玻璃瓶、易拉罐、饮料瓶、塑料玩具、书本、报纸、广告单、纸板箱、衣服、床上用品、电子产品等', '轻投轻放；清洁干燥，避免污染，费纸尽量平整；立体包装物请清空内容物，清洁后压扁投放；有尖锐边角的、应包裹后投放', 23, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('37', '月饼', '2', '厨余垃圾是指居民日常生活及食品加工、饮食服务、单位供餐等活动中产生的垃圾。', '包含物品：常见包括菜叶、剩菜、剩饭、果皮、蛋壳、茶渣、骨头等', '投放提示：纯流质的食物垃圾、如牛奶等，应直接倒进下水口。有包装物的湿垃圾应将包装物去除后分类投放、包装物请投放到对应的可回收物或干垃圾容器', 25, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('38', '未被污染的输液瓶', '0', '可回收垃圾是指适宜回收、可循环利用的生活废弃物。', '常见包括各类废金属、玻璃瓶、易拉罐、饮料瓶、塑料玩具、书本、报纸、广告单、纸板箱、衣服、床上用品、电子产品等', '轻投轻放；清洁干燥，避免污染，费纸尽量平整；立体包装物请清空内容物，清洁后压扁投放；有尖锐边角的、应包裹后投放', 23, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('39', '杀虫喷雾', '1', '有毒有害垃圾是指存有对人体健康有害的重金属、有毒的物质或者对环境造成现实危害或者潜在危害的废弃物。', '常见包括废电池、废荧光灯管、废灯泡、废水银温度计、废油漆桶、过期药品、农药、杀虫剂等。', '分类投放有害垃圾时，应注意轻放。其中：废灯管等易破损的有害垃圾应连带包装或包裹后投放；废弃药品宜连带包装一并投放；杀虫剂等压力罐装容器，应排空内容物后投放；在公共场所产生有害垃圾且未发现对应收集容器时，应携带至有害垃圾投放点妥善投放。', 19, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('4', '充电电池', '1', '有毒有害垃圾是指存有对人体健康有害的重金属、有毒的物质或者对环境造成现实危害或者潜在危害的废弃物。', '常见包括废电池、废荧光灯管、废灯泡、废水银温度计、废油漆桶、过期药品、农药、杀虫剂等。', '分类投放有害垃圾时，应注意轻放。其中：废灯管等易破损的有害垃圾应连带包装或包裹后投放；废弃药品宜连带包装一并投放；杀虫剂等压力罐装容器，应排空内容物后投放；在公共场所产生有害垃圾且未发现对应收集容器时，应携带至有害垃圾投放点妥善投放。', 3, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('40', '枣', '2', '厨余垃圾是指居民日常生活及食品加工、饮食服务、单位供餐等活动中产生的垃圾。', '包含物品：常见包括菜叶、剩菜、剩饭、果皮、蛋壳、茶渣、骨头等', '投放提示：纯流质的食物垃圾、如牛奶等，应直接倒进下水口。有包装物的湿垃圾应将包装物去除后分类投放、包装物请投放到对应的可回收物或干垃圾容器', 26, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('41', '洗洁精瓶', '0', '可回收垃圾是指适宜回收、可循环利用的生活废弃物。', '常见包括各类废金属、玻璃瓶、易拉罐、饮料瓶、塑料玩具、书本、报纸、广告单、纸板箱、衣服、床上用品、电子产品等', '轻投轻放；清洁干燥，避免污染，费纸尽量平整；立体包装物请清空内容物，清洁后压扁投放；有尖锐边角的、应包裹后投放', 24, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('42', '渣女', '1', '有毒有害垃圾是指存有对人体健康有害的重金属、有毒的物质或者对环境造成现实危害或者潜在危害的废弃物。', '常见包括废电池、废荧光灯管、废灯泡、废水银温度计、废油漆桶、过期药品、农药、杀虫剂等。', '分类投放有害垃圾时，应注意轻放。其中：废灯管等易破损的有害垃圾应连带包装或包裹后投放；废弃药品宜连带包装一并投放；杀虫剂等压力罐装容器，应排空内容物后投放；在公共场所产生有害垃圾且未发现对应收集容器时，应携带至有害垃圾投放点妥善投放。', 26, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('43', '烟蒂', '3', '干垃圾即其它垃圾，指除可回收物、有害垃圾、厨余垃圾（湿垃圾）以外的其它生活废弃物。', '常见包括砖瓦陶瓷、渣土、卫生间废纸、猫砂、污损塑料、毛发、硬壳、一次性制品、灰土、瓷器碎片等难以回收的废弃物', '尽量沥干水分；难以辨识类别的生活垃圾都可以投入干垃圾容器内', 25, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('44', '电线', '0', '可回收垃圾是指适宜回收、可循环利用的生活废弃物。', '常见包括各类废金属、玻璃瓶、易拉罐、饮料瓶、塑料玩具、书本、报纸、广告单、纸板箱、衣服、床上用品、电子产品等', '轻投轻放；清洁干燥，避免污染，费纸尽量平整；立体包装物请清空内容物，清洁后压扁投放；有尖锐边角的、应包裹后投放', 4, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('45', '茶叶', '2', '厨余垃圾是指居民日常生活及食品加工、饮食服务、单位供餐等活动中产生的垃圾。', '包含物品：常见包括菜叶、剩菜、剩饭、果皮、蛋壳、茶渣、骨头等', '投放提示：纯流质的食物垃圾、如牛奶等，应直接倒进下水口。有包装物的湿垃圾应将包装物去除后分类投放、包装物请投放到对应的可回收物或干垃圾容器', 3, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('46', 'A3纸', '0', '可回收垃圾是指适宜回收、可循环利用的生活废弃物。', '常见包括各类废金属、玻璃瓶、易拉罐、饮料瓶、塑料玩具、书本、报纸、广告单、纸板箱、衣服、床上用品、电子产品等', '轻投轻放；清洁干燥，避免污染，费纸尽量平整；立体包装物请清空内容物，清洁后压扁投放；有尖锐边角的、应包裹后投放', 1, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('47', 'CD塑料盒', '0', '可回收垃圾是指适宜回收、可循环利用的生活废弃物。', '常见包括各类废金属、玻璃瓶、易拉罐、饮料瓶、塑料玩具、书本、报纸、广告单、纸板箱、衣服、床上用品、电子产品等', '轻投轻放；清洁干燥，避免污染，费纸尽量平整；立体包装物请清空内容物，清洁后压扁投放；有尖锐边角的、应包裹后投放', 3, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('48', 'Kindle', '0', '可回收垃圾是指适宜回收、可循环利用的生活废弃物。', '常见包括各类废金属、玻璃瓶、易拉罐、饮料瓶、塑料玩具、书本、报纸、广告单、纸板箱、衣服、床上用品、电子产品等', '轻投轻放；清洁干燥，避免污染，费纸尽量平整；立体包装物请清空内容物，清洁后压扁投放；有尖锐边角的、应包裹后投放', 11, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('49', '乐扣玻璃盒', '0', '可回收垃圾是指适宜回收、可循环利用的生活废弃物。', '常见包括各类废金属、玻璃瓶、易拉罐、饮料瓶、塑料玩具、书本、报纸、广告单、纸板箱、衣服、床上用品、电子产品等', '轻投轻放；清洁干燥，避免污染，费纸尽量平整；立体包装物请清空内容物，清洁后压扁投放；有尖锐边角的、应包裹后投放', 12, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('5', '富士苹果', '2', '厨余垃圾是指居民日常生活及食品加工、饮食服务、单位供餐等活动中产生的垃圾。', '包含物品：常见包括菜叶、剩菜、剩饭、果皮、蛋壳、茶渣、骨头等', '投放提示：纯流质的食物垃圾、如牛奶等，应直接倒进下水口。有包装物的湿垃圾应将包装物去除后分类投放、包装物请投放到对应的可回收物或干垃圾容器', 6, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('50', '化妆品玻璃瓶', '0', '可回收垃圾是指适宜回收、可循环利用的生活废弃物。', '常见包括各类废金属、玻璃瓶、易拉罐、饮料瓶、塑料玩具、书本、报纸、广告单、纸板箱、衣服、床上用品、电子产品等', '轻投轻放；清洁干燥，避免污染，费纸尽量平整；立体包装物请清空内容物，清洁后压扁投放；有尖锐边角的、应包裹后投放', 8, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('51', '多宝鱼骨头', '2', '厨余垃圾是指居民日常生活及食品加工、饮食服务、单位供餐等活动中产生的垃圾。', '包含物品：常见包括菜叶、剩菜、剩饭、果皮、蛋壳、茶渣、骨头等', '投放提示：纯流质的食物垃圾、如牛奶等，应直接倒进下水口。有包装物的湿垃圾应将包装物去除后分类投放、包装物请投放到对应的可回收物或干垃圾容器', 4, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('52', '大白菜', '2', '厨余垃圾是指居民日常生活及食品加工、饮食服务、单位供餐等活动中产生的垃圾。', '包含物品：常见包括菜叶、剩菜、剩饭、果皮、蛋壳、茶渣、骨头等', '投放提示：纯流质的食物垃圾、如牛奶等，应直接倒进下水口。有包装物的湿垃圾应将包装物去除后分类投放、包装物请投放到对应的可回收物或干垃圾容器', 4, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('53', '干花生壳', '2', '厨余垃圾是指居民日常生活及食品加工、饮食服务、单位供餐等活动中产生的垃圾。', '包含物品：常见包括菜叶、剩菜、剩饭、果皮、蛋壳、茶渣、骨头等', '投放提示：纯流质的食物垃圾、如牛奶等，应直接倒进下水口。有包装物的湿垃圾应将包装物去除后分类投放、包装物请投放到对应的可回收物或干垃圾容器', 7, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('6', '乐高玩具', '0', '可回收垃圾是指适宜回收、可循环利用的生活废弃物。', '常见包括各类废金属、玻璃瓶、易拉罐、饮料瓶、塑料玩具、书本、报纸、广告单、纸板箱、衣服、床上用品、电子产品等', '轻投轻放；清洁干燥，避免污染，费纸尽量平整；立体包装物请清空内容物，清洁后压扁投放；有尖锐边角的、应包裹后投放', 12, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('7', '快递纸箱', '0', '可回收垃圾是指适宜回收、可循环利用的生活废弃物。', '常见包括各类废金属、玻璃瓶、易拉罐、饮料瓶、塑料玩具、书本、报纸、广告单、纸板箱、衣服、床上用品、电子产品等', '轻投轻放；清洁干燥，避免污染，费纸尽量平整；立体包装物请清空内容物，清洁后压扁投放；有尖锐边角的、应包裹后投放', 11, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('8', '易拉罐', '0', '可回收垃圾是指适宜回收、可循环利用的生活废弃物。', '常见包括各类废金属、玻璃瓶、易拉罐、饮料瓶、塑料玩具、书本、报纸、广告单、纸板箱、衣服、床上用品、电子产品等', '轻投轻放；清洁干燥，避免污染，费纸尽量平整；立体包装物请清空内容物，清洁后压扁投放；有尖锐边角的、应包裹后投放', 25, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('9', '针筒', '1', '有毒有害垃圾是指存有对人体健康有害的重金属、有毒的物质或者对环境造成现实危害或者潜在危害的废弃物。', '常见包括废电池、废荧光灯管、废灯泡、废水银温度计、废油漆桶、过期药品、农药、杀虫剂等。', '分类投放有害垃圾时，应注意轻放。其中：废灯管等易破损的有害垃圾应连带包装或包裹后投放；废弃药品宜连带包装一并投放；杀虫剂等压力罐装容器，应排空内容物后投放；在公共场所产生有害垃圾且未发现对应收集容器时，应携带至有害垃圾投放点妥善投放。', 26, '', NULL, '', NULL, NULL, '0');

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (9, 'app_img', '图片表', 'AppImg', 'crud', 'com.ruoyi.project.system', 'system', 'img', '图片轮播图', 'zhao', '{}', 'admin', '2020-01-13 22:30:48', '', '2020-01-13 22:31:51', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (55, '9', 'id', 'id', 'varchar(64)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-01-13 22:30:48', '', '2020-01-13 22:31:51');
INSERT INTO `gen_table_column` VALUES (56, '9', 'img_path', '图片路径', 'varchar(255)', 'String', 'imgPath', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-01-13 22:30:48', '', '2020-01-13 22:31:51');
INSERT INTO `gen_table_column` VALUES (57, '9', 'img_tab', '图片标记（0-首页，1-资讯页）', 'char(1)', 'String', 'imgTab', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-01-13 22:30:48', '', '2020-01-13 22:31:51');
INSERT INTO `gen_table_column` VALUES (58, '9', 'del_flag', '删除标志（0代表存在 1代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', '1', '1', NULL, NULL, NULL, 'EQ', 'input', '', 4, 'admin', '2020-01-13 22:30:48', '', '2020-01-13 22:31:51');
INSERT INTO `gen_table_column` VALUES (59, '9', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 5, 'admin', '2020-01-13 22:30:48', '', '2020-01-13 22:31:51');
INSERT INTO `gen_table_column` VALUES (60, '9', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 6, 'admin', '2020-01-13 22:30:48', '', '2020-01-13 22:31:51');
INSERT INTO `gen_table_column` VALUES (61, '9', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2020-01-13 22:30:48', '', '2020-01-13 22:31:51');
INSERT INTO `gen_table_column` VALUES (62, '9', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 8, 'admin', '2020-01-13 22:30:48', '', '2020-01-13 22:31:51');

-- ----------------------------
-- Table structure for information
-- ----------------------------
DROP TABLE IF EXISTS `information`;
CREATE TABLE `information`  (
  `id` varbinary(64) NOT NULL COMMENT '资讯id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '资讯标题',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '资讯内容',
  `source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '资讯出处',
  `info_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '资讯图片',
  `view_count` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '观看数',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '删除标志（0代表存在 1代表删除）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of information
-- ----------------------------
INSERT INTO `information` VALUES (0x3361623161643465336465333434373661643033653534646637636462643866, '震惊!新疆小伙看视频导致笑死，背后的秘密居然是这样的!', '123123', 'UC日报', '/profile/infoImg/2020/01/06/430adcd5d0535e9b5126a672ee39fc81.jpg', '0', 'admin', '2020-01-02 15:18:09', 'admin', '2020-01-07 22:53:03', '', '0');
INSERT INTO `information` VALUES (0x3666376463383136663564303434323761353939663731323962646432623162, '震惊!男人看了会沉默，女人看了会流泪!不转不是中国人!', '33333', '佛山日报', '/profile/infoImg/2020/01/06/d7184bf787bf37ff816962593a0ae51d.jpg', '123', 'admin', '2019-12-25 22:55:47', 'admin', '2020-01-07 22:53:13', '', '0');
INSERT INTO `information` VALUES (0x6166303538626562376632373433373738613331363630333130343034396639, '发现富人不想告诉你快速致富的方法', '22222', '富人排行榜', '/profile/infoImg/2020/01/06/2b1ae3f36f157627d4ab3b0cf208227b.jpg', '0', 'admin', '2020-01-06 21:05:24', 'admin', '2020-01-07 22:53:33', '', '0');

-- ----------------------------
-- Table structure for letter
-- ----------------------------
DROP TABLE IF EXISTS `letter`;
CREATE TABLE `letter`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '字母表id',
  `region` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字母',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of letter
-- ----------------------------
INSERT INTO `letter` VALUES (1, 'A');
INSERT INTO `letter` VALUES (2, 'B');
INSERT INTO `letter` VALUES (3, 'C');
INSERT INTO `letter` VALUES (4, 'D');
INSERT INTO `letter` VALUES (5, 'E');
INSERT INTO `letter` VALUES (6, 'F');
INSERT INTO `letter` VALUES (7, 'G');
INSERT INTO `letter` VALUES (8, 'H');
INSERT INTO `letter` VALUES (9, 'I');
INSERT INTO `letter` VALUES (10, 'J');
INSERT INTO `letter` VALUES (11, 'K');
INSERT INTO `letter` VALUES (12, 'L');
INSERT INTO `letter` VALUES (13, 'M');
INSERT INTO `letter` VALUES (14, 'N');
INSERT INTO `letter` VALUES (15, 'O');
INSERT INTO `letter` VALUES (16, 'P');
INSERT INTO `letter` VALUES (17, 'Q');
INSERT INTO `letter` VALUES (18, 'R');
INSERT INTO `letter` VALUES (19, 'S');
INSERT INTO `letter` VALUES (20, 'T');
INSERT INTO `letter` VALUES (21, 'U');
INSERT INTO `letter` VALUES (22, 'V');
INSERT INTO `letter` VALUES (23, 'W');
INSERT INTO `letter` VALUES (24, 'X');
INSERT INTO `letter` VALUES (25, 'Y');
INSERT INTO `letter` VALUES (26, 'Z');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '深色主题theme-dark，浅色主题theme-light');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '修改操作');
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '删除操作');
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '授权操作');
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导出操作');
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导入操作');
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '强退操作');
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '生成操作');
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '清空操作');
INSERT INTO `sys_dict_data` VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (100, 0, '可回收垃圾', '0', 'garbage_type', NULL, NULL, 'N', '0', 'admin', '2019-12-18 22:49:11', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (101, 1, '有害垃圾', '1', 'garbage_type', NULL, NULL, 'N', '0', 'admin', '2019-12-18 22:49:23', 'admin', '2019-12-18 22:50:03', NULL);
INSERT INTO `sys_dict_data` VALUES (102, 2, '厨余（湿）垃圾', '2', 'garbage_type', NULL, NULL, 'N', '0', 'admin', '2019-12-18 22:49:37', 'admin', '2019-12-18 22:49:58', NULL);
INSERT INTO `sys_dict_data` VALUES (103, 3, '其他（干）垃圾', '3', 'garbage_type', NULL, NULL, 'N', '0', 'admin', '2019-12-18 22:49:47', 'admin', '2019-12-18 22:49:53', NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (100, '垃圾分类', 'garbage_type', '0', 'admin', '2019-12-18 22:48:11', '', NULL, '垃圾分类类型');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 149 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 20:19:58');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 21:13:42');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 22:19:27');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-12-18 22:22:10');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-18 22:22:14');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-19 23:15:18');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-20 23:25:50');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-12-22 21:36:52');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-22 21:37:00');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-22 22:02:46');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-22 23:09:32');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-23 20:05:46');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码已失效', '2019-12-23 22:28:51');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-23 22:28:56');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-25 22:49:58');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码已失效', '2019-12-27 22:52:07');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-27 22:52:18');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-29 23:09:09');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码已失效', '2019-12-30 22:10:07');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-30 22:10:16');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-12-30 22:58:10');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-01 20:59:47');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-01 22:11:19');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-01 22:11:27');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-01 22:11:38');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-01 22:11:53');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-01 22:12:24');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-01 22:15:22');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-02 13:42:55');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-01-02 14:23:23');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-02 14:23:29');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-01-02 15:56:07');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-02 16:14:33');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-01-02 16:17:17');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-02 16:25:24');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-01-02 16:25:40');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-02 16:51:24');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '192.168.3.212', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-03 09:59:40');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-03 10:04:14');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-04 14:24:13');
INSERT INTO `sys_logininfor` VALUES (140, NULL, '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2020-01-04 15:34:06');
INSERT INTO `sys_logininfor` VALUES (141, NULL, '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '用户不存在/密码错误', '2020-01-04 15:34:41');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-05 21:52:12');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-06 20:47:33');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-06 22:28:44');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-06 23:16:50');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-07 22:52:36');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-08 23:29:14');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-01-13 22:30:33');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '组件路径',
  `is_frame` int(1) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2034 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, 1, 'M', '0', '', 'system', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, 1, 'M', '0', '', 'monitor', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, 1, 'M', '0', '', 'tool', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '若依官网', 0, 4, 'http://ruoyi.vip', NULL, 0, 'M', '1', '', 'guide', 'admin', '2018-03-16 11:33:00', 'admin', '2019-12-18 22:29:18', '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', 1, 'C', '0', 'system:user:list', 'user', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', 1, 'C', '0', 'system:role:list', 'peoples', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', 1, 'C', '0', 'system:menu:list', 'tree-table', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', 1, 'C', '0', 'system:dept:list', 'tree', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', 1, 'C', '0', 'system:post:list', 'post', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', 1, 'C', '0', 'system:dict:list', 'dict', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', 1, 'C', '0', 'system:config:list', 'edit', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', 1, 'C', '0', 'system:notice:list', 'message', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', 'system/log/index', 1, 'M', '0', '', 'log', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', 1, 'C', '0', 'monitor:online:list', 'online', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', 1, 'C', '0', 'monitor:job:list', 'job', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', 1, 'C', '0', 'monitor:druid:list', 'druid', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', 1, 'C', '0', 'monitor:server:list', 'server', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '表单构建', 3, 1, 'build', 'tool/build/index', 1, 'C', '0', 'tool:build:list', 'build', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '表单构建菜单');
INSERT INTO `sys_menu` VALUES (114, '代码生成', 3, 2, 'gen', 'tool/gen/index', 1, 'C', '0', 'tool:gen:list', 'code', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代码生成菜单');
INSERT INTO `sys_menu` VALUES (115, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', 1, 'C', '0', 'tool:swagger:list', 'swagger', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', 1, 'C', '0', 'monitor:operlog:list', 'form', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', 1, 'C', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1001, '用户查询', 100, 1, '', '', 1, 'F', '0', 'system:user:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1002, '用户新增', 100, 2, '', '', 1, 'F', '0', 'system:user:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1003, '用户修改', 100, 3, '', '', 1, 'F', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1004, '用户删除', 100, 4, '', '', 1, 'F', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1005, '用户导出', 100, 5, '', '', 1, 'F', '0', 'system:user:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1006, '用户导入', 100, 6, '', '', 1, 'F', '0', 'system:user:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1007, '重置密码', 100, 7, '', '', 1, 'F', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1008, '角色查询', 101, 1, '', '', 1, 'F', '0', 'system:role:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1009, '角色新增', 101, 2, '', '', 1, 'F', '0', 'system:role:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1010, '角色修改', 101, 3, '', '', 1, 'F', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1011, '角色删除', 101, 4, '', '', 1, 'F', '0', 'system:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1012, '角色导出', 101, 5, '', '', 1, 'F', '0', 'system:role:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1013, '菜单查询', 102, 1, '', '', 1, 'F', '0', 'system:menu:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1014, '菜单新增', 102, 2, '', '', 1, 'F', '0', 'system:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1015, '菜单修改', 102, 3, '', '', 1, 'F', '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1016, '菜单删除', 102, 4, '', '', 1, 'F', '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1017, '部门查询', 103, 1, '', '', 1, 'F', '0', 'system:dept:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1018, '部门新增', 103, 2, '', '', 1, 'F', '0', 'system:dept:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1019, '部门修改', 103, 3, '', '', 1, 'F', '0', 'system:dept:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1020, '部门删除', 103, 4, '', '', 1, 'F', '0', 'system:dept:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1021, '岗位查询', 104, 1, '', '', 1, 'F', '0', 'system:post:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1022, '岗位新增', 104, 2, '', '', 1, 'F', '0', 'system:post:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1023, '岗位修改', 104, 3, '', '', 1, 'F', '0', 'system:post:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1024, '岗位删除', 104, 4, '', '', 1, 'F', '0', 'system:post:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1025, '岗位导出', 104, 5, '', '', 1, 'F', '0', 'system:post:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1026, '字典查询', 105, 1, '#', '', 1, 'F', '0', 'system:dict:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1027, '字典新增', 105, 2, '#', '', 1, 'F', '0', 'system:dict:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1028, '字典修改', 105, 3, '#', '', 1, 'F', '0', 'system:dict:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1029, '字典删除', 105, 4, '#', '', 1, 'F', '0', 'system:dict:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1030, '字典导出', 105, 5, '#', '', 1, 'F', '0', 'system:dict:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1031, '参数查询', 106, 1, '#', '', 1, 'F', '0', 'system:config:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1032, '参数新增', 106, 2, '#', '', 1, 'F', '0', 'system:config:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1033, '参数修改', 106, 3, '#', '', 1, 'F', '0', 'system:config:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1034, '参数删除', 106, 4, '#', '', 1, 'F', '0', 'system:config:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1035, '参数导出', 106, 5, '#', '', 1, 'F', '0', 'system:config:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1036, '公告查询', 107, 1, '#', '', 1, 'F', '0', 'system:notice:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1037, '公告新增', 107, 2, '#', '', 1, 'F', '0', 'system:notice:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1038, '公告修改', 107, 3, '#', '', 1, 'F', '0', 'system:notice:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1039, '公告删除', 107, 4, '#', '', 1, 'F', '0', 'system:notice:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1040, '操作查询', 500, 1, '#', '', 1, 'F', '0', 'monitor:operlog:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1041, '操作删除', 500, 2, '#', '', 1, 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', 1, 'F', '0', 'monitor:operlog:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', 1, 'F', '0', 'monitor:logininfor:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', 1, 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', 1, 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', 1, 'F', '0', 'monitor:online:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', 1, 'F', '0', 'monitor:online:batchLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', 1, 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', 1, 'F', '0', 'monitor:job:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', 1, 'F', '0', 'monitor:job:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', 1, 'F', '0', 'monitor:job:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', 1, 'F', '0', 'monitor:job:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', 1, 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 7, '#', '', 1, 'F', '0', 'monitor:job:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 114, 1, '#', '', 1, 'F', '0', 'tool:gen:query', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 114, 2, '#', '', 1, 'F', '0', 'tool:gen:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 114, 3, '#', '', 1, 'F', '0', 'tool:gen:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 114, 2, '#', '', 1, 'F', '0', 'tool:gen:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 114, 4, '#', '', 1, 'F', '0', 'tool:gen:preview', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 114, 5, '#', '', 1, 'F', '0', 'tool:gen:code', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (2000, '垃圾分类', 2006, 1, 'garbage', 'garbage/index', 1, 'C', '0', 'system:garbage:list', 'component', 'admin', '2018-03-01 00:00:00', 'admin', '2019-12-18 22:28:41', '垃圾分类菜单');
INSERT INTO `sys_menu` VALUES (2001, '垃圾分类查询', 2000, 1, '#', '', 1, 'F', '0', 'system:garbage:query', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2002, '垃圾分类新增', 2000, 2, '#', '', 1, 'F', '0', 'system:garbage:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2003, '垃圾分类修改', 2000, 3, '#', '', 1, 'F', '0', 'system:garbage:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2004, '垃圾分类删除', 2000, 4, '#', '', 1, 'F', '0', 'system:garbage:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2005, '垃圾分类导出', 2000, 5, '#', '', 1, 'F', '0', 'system:garbage:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2006, '垃圾分类', 0, 5, 'garbage', NULL, 1, 'M', '0', '', 'list', 'admin', '2019-12-18 22:28:21', 'admin', '2019-12-22 23:40:39', '');
INSERT INTO `sys_menu` VALUES (2007, '回收站管理', 0, 6, 'cycling', NULL, 1, 'M', '0', '', 'example', 'admin', '2019-12-22 21:46:18', 'admin', '2019-12-22 23:40:31', '');
INSERT INTO `sys_menu` VALUES (2009, '资讯管理', 0, 7, 'information', NULL, 1, 'M', '0', '', 'education', 'admin', '2019-12-22 23:09:49', 'admin', '2019-12-22 23:40:16', '');
INSERT INTO `sys_menu` VALUES (2022, '回收站管理', 2007, 1, 'cycling', 'cycling/index', 1, 'C', '0', 'system:cycling:list', 'international', 'admin', '2019-12-22 23:30:21', 'admin', '2019-12-22 23:30:33', '');
INSERT INTO `sys_menu` VALUES (2023, '资讯管理', 2009, 1, 'information', 'information/index', 1, 'C', '0', 'system:information:list', 'excel', 'admin', '2019-12-22 23:37:29', 'admin', '2019-12-22 23:39:34', '');
INSERT INTO `sys_menu` VALUES (2031, '首页管理', 0, 4, '', NULL, 1, 'M', '0', NULL, 'documentation', 'admin', '2020-01-13 22:39:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2032, '轮播图管理', 2031, 1, 'img', 'appImg/index', 1, 'C', '0', 'system:img:list', 'view', 'admin', '2020-01-13 22:40:34', 'admin', '2020-01-13 22:42:13', '');
INSERT INTO `sys_menu` VALUES (2033, '轮播图管理', 2009, 2, 'img', 'infoImg/index', 1, 'C', '0', 'system:img:list', 'view', 'admin', '2020-01-13 23:29:03', 'admin', '2020-01-13 23:29:37', '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 313 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'letter,garbage', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-18 20:38:05');
INSERT INTO `sys_oper_log` VALUES (101, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"functionAuthor\":\"zhao\",\"columns\":[{\"usableColumn\":false,\"columnId\":1,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"垃圾分类id\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1576672685000,\"tableId\":1,\"pk\":true,\"columnName\":\"id\"},{\"usableColumn\":false,\"columnId\":2,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"name\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"垃圾分类名称\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1576672685000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"name\"},{\"usableColumn\":false,\"columnId\":3,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"type\",\"htmlType\":\"select\",\"edit\":true,\"query\":true,\"columnComment\":\"垃圾分类类型（0-可回收垃圾，1-有害垃圾，2-厨余（湿）垃圾，3-其他（干）垃圾）\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(1)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1576672685000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"type\"},{\"usableColumn\":false,\"columnId\":4,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"explain\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"解释\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1576672685000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"explain\"},{\"usableC', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-18 20:39:28');
INSERT INTO `sys_oper_log` VALUES (102, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2019-12-18 21:13:46');
INSERT INTO `sys_oper_log` VALUES (103, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/1,2', '127.0.0.1', '内网IP', '{tableIds=1,2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-18 21:14:43');
INSERT INTO `sys_oper_log` VALUES (104, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'garbage,letter', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-18 21:14:50');
INSERT INTO `sys_oper_log` VALUES (105, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"functionAuthor\":\"zhao\",\"columns\":[{\"usableColumn\":false,\"columnId\":10,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"垃圾分类id\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1576674890000,\"tableId\":3,\"pk\":true,\"columnName\":\"id\"},{\"usableColumn\":false,\"columnId\":11,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"垃圾分类名称\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1576674890000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"name\"},{\"usableColumn\":false,\"columnId\":12,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"type\",\"htmlType\":\"select\",\"edit\":true,\"query\":true,\"columnComment\":\"垃圾分类类型（0-可回收垃圾，1-有害垃圾，2-厨余（湿）垃圾，3-其他（干）垃圾）\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(1)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1576674890000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"type\"},{\"usableColumn\":false,\"columnId\":13,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"explain\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"解释\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1576674890000,\"isEdit\":\"1\",\"tableId\":3,\"p', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-18 21:16:11');
INSERT INTO `sys_oper_log` VALUES (106, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"functionAuthor\":\"zhao\",\"columns\":[{\"usableColumn\":false,\"columnId\":10,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"垃圾分类id\",\"updateTime\":1576674971000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1576674890000,\"tableId\":3,\"pk\":true,\"columnName\":\"id\"},{\"usableColumn\":false,\"columnId\":11,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"垃圾分类名称\",\"isQuery\":\"1\",\"updateTime\":1576674971000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1576674890000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"name\"},{\"usableColumn\":false,\"columnId\":12,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"type\",\"htmlType\":\"select\",\"edit\":true,\"query\":true,\"columnComment\":\"垃圾分类类型（0-可回收垃圾，1-有害垃圾，2-厨余（湿）垃圾，3-其他（干）垃圾）\",\"isQuery\":\"1\",\"updateTime\":1576674971000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(1)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1576674890000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"type\"},{\"usableColumn\":false,\"columnId\":13,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"explain\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"解释\",\"isQuery\":\"1\",\"updateTime\":1576674971000,\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"col', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-18 21:17:06');
INSERT INTO `sys_oper_log` VALUES (107, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2019-12-18 21:17:09');
INSERT INTO `sys_oper_log` VALUES (108, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"functionAuthor\":\"zhao\",\"columns\":[{\"usableColumn\":false,\"columnId\":17,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"字母表id\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1576674890000,\"tableId\":4,\"pk\":true,\"columnName\":\"id\"},{\"usableColumn\":false,\"columnId\":18,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"region\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"字母\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1576674890000,\"isEdit\":\"1\",\"tableId\":4,\"pk\":false,\"columnName\":\"region\"}],\"businessName\":\"letter\",\"moduleName\":\"letter\",\"className\":\"Letter\",\"tableName\":\"letter\",\"crud\":true,\"options\":\"{}\",\"packageName\":\"com.ruoyi.project.letter\",\"functionName\":\"字母表\",\"tree\":false,\"tableComment\":\"字母表\",\"params\":{},\"tplCategory\":\"crud\",\"tableId\":4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-18 22:20:04');
INSERT INTO `sys_oper_log` VALUES (109, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"functionAuthor\":\"zhao\",\"columns\":[{\"usableColumn\":false,\"columnId\":10,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"垃圾分类id\",\"updateTime\":1576675026000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1576674890000,\"tableId\":3,\"pk\":true,\"columnName\":\"id\"},{\"usableColumn\":false,\"columnId\":11,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"垃圾分类名称\",\"isQuery\":\"1\",\"updateTime\":1576675026000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1576674890000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"name\"},{\"usableColumn\":false,\"columnId\":12,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"type\",\"htmlType\":\"select\",\"edit\":true,\"query\":true,\"columnComment\":\"垃圾分类类型（0-可回收垃圾，1-有害垃圾，2-厨余（湿）垃圾，3-其他（干）垃圾）\",\"isQuery\":\"1\",\"updateTime\":1576675026000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(1)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1576674890000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"type\"},{\"usableColumn\":false,\"columnId\":13,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"explain\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"解释\",\"isQuery\":\"1\",\"updateTime\":1576675026000,\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"col', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-18 22:20:13');
INSERT INTO `sys_oper_log` VALUES (110, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2019-12-18 22:20:15');
INSERT INTO `sys_oper_log` VALUES (111, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"垃圾分类\",\"params\":{},\"parentId\":3,\"path\":\"garbage\",\"component\":\"garbage/index\",\"children\":[],\"createTime\":1519833600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2000,\"menuType\":\"C\",\"perms\":\"system:garbage:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-18 22:25:13');
INSERT INTO `sys_oper_log` VALUES (112, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"垃圾分类\",\"params\":{},\"parentId\":0,\"path\":\"garbage\",\"component\":\"garbage/index\",\"children\":[],\"createTime\":1519833600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2000,\"menuType\":\"C\",\"perms\":\"system:garbage:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-18 22:25:55');
INSERT INTO `sys_oper_log` VALUES (113, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"垃圾分类\",\"params\":{},\"parentId\":0,\"path\":\"garbage\",\"component\":\"garbage/index\",\"children\":[],\"createTime\":1519833600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2000,\"menuType\":\"C\",\"perms\":\"system:garbage:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-18 22:26:23');
INSERT INTO `sys_oper_log` VALUES (114, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"垃圾分类\",\"params\":{},\"parentId\":1,\"path\":\"garbage\",\"component\":\"garbage/index\",\"children\":[],\"createTime\":1519833600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2000,\"menuType\":\"C\",\"perms\":\"system:garbage:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-18 22:26:55');
INSERT INTO `sys_oper_log` VALUES (115, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"垃圾分类\",\"params\":{},\"parentId\":0,\"path\":\"garbage\",\"component\":\"garbage/index\",\"children\":[],\"createTime\":1519833600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2000,\"menuType\":\"C\",\"perms\":\"system:garbage:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-18 22:27:31');
INSERT INTO `sys_oper_log` VALUES (116, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"5\",\"menuName\":\"垃圾分类\",\"params\":{},\"parentId\":0,\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-18 22:28:21');
INSERT INTO `sys_oper_log` VALUES (117, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"component\",\"orderNum\":\"1\",\"menuName\":\"垃圾分类\",\"params\":{},\"parentId\":2006,\"path\":\"garbage\",\"component\":\"garbage/index\",\"children\":[],\"createTime\":1519833600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2000,\"menuType\":\"C\",\"perms\":\"system:garbage:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-18 22:28:41');
INSERT INTO `sys_oper_log` VALUES (118, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"guide\",\"orderNum\":\"4\",\"menuName\":\"若依官网\",\"params\":{},\"parentId\":0,\"path\":\"http://ruoyi.vip\",\"children\":[],\"createTime\":1521171180000,\"updateBy\":\"admin\",\"isFrame\":\"0\",\"menuId\":4,\"menuType\":\"M\",\"perms\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-18 22:29:18');
INSERT INTO `sys_oper_log` VALUES (119, '字典类型', 1, 'com.ruoyi.project.system.controller.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"remark\":\"垃圾分类类型\",\"params\":{},\"dictType\":\"garbage_type\",\"createBy\":\"admin\",\"dictName\":\"垃圾分类\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-18 22:48:11');
INSERT INTO `sys_oper_log` VALUES (120, '字典数据', 1, 'com.ruoyi.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"0\",\"dictSort\":0,\"params\":{},\"dictType\":\"garbage_type\",\"dictLabel\":\"可回收垃圾\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-18 22:49:11');
INSERT INTO `sys_oper_log` VALUES (121, '字典数据', 1, 'com.ruoyi.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"dictSort\":0,\"params\":{},\"dictType\":\"garbage_type\",\"dictLabel\":\"有害垃圾\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-18 22:49:23');
INSERT INTO `sys_oper_log` VALUES (122, '字典数据', 1, 'com.ruoyi.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"2\",\"dictSort\":0,\"params\":{},\"dictType\":\"garbage_type\",\"dictLabel\":\"厨余（湿）垃圾\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-18 22:49:37');
INSERT INTO `sys_oper_log` VALUES (123, '字典数据', 1, 'com.ruoyi.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"3\",\"dictSort\":0,\"params\":{},\"dictType\":\"garbage_type\",\"dictLabel\":\"其他（干）垃圾\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-18 22:49:47');
INSERT INTO `sys_oper_log` VALUES (124, '字典数据', 2, 'com.ruoyi.project.system.controller.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"3\",\"dictSort\":3,\"params\":{},\"dictType\":\"garbage_type\",\"dictLabel\":\"其他（干）垃圾\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1576680587000,\"dictCode\":103,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-18 22:49:53');
INSERT INTO `sys_oper_log` VALUES (125, '字典数据', 2, 'com.ruoyi.project.system.controller.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"2\",\"dictSort\":2,\"params\":{},\"dictType\":\"garbage_type\",\"dictLabel\":\"厨余（湿）垃圾\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1576680577000,\"dictCode\":102,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-18 22:49:58');
INSERT INTO `sys_oper_log` VALUES (126, '字典数据', 2, 'com.ruoyi.project.system.controller.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"dictSort\":1,\"params\":{},\"dictType\":\"garbage_type\",\"dictLabel\":\"有害垃圾\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1576680563000,\"dictCode\":101,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-18 22:50:03');
INSERT INTO `sys_oper_log` VALUES (127, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/3,4', '127.0.0.1', '内网IP', '{tableIds=3,4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-18 23:41:01');
INSERT INTO `sys_oper_log` VALUES (128, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'garbage', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-18 23:41:05');
INSERT INTO `sys_oper_log` VALUES (129, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/5', '127.0.0.1', '内网IP', '{tableIds=5}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-18 23:41:30');
INSERT INTO `sys_oper_log` VALUES (130, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'garbage', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-18 23:41:49');
INSERT INTO `sys_oper_log` VALUES (131, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/6', '127.0.0.1', '内网IP', '{tableIds=6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-18 23:45:40');
INSERT INTO `sys_oper_log` VALUES (132, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/6', '127.0.0.1', '内网IP', '{tableIds=6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-18 23:45:40');
INSERT INTO `sys_oper_log` VALUES (133, '垃圾分类', 2, 'com.ruoyi.project.garbage.controller.GarbageController.edit()', 'PUT', 1, 'admin', NULL, '/garbage', '127.0.0.1', '内网IP', '{\"explain\":\"厨余垃圾是指居民日常生活及食品加工、饮食服务、单位供餐等活动中产生的垃圾。\",\"contain\":\"包含物品：常见包括菜叶、剩菜、剩饭、果皮、蛋壳、茶渣、骨头等\",\"params\":{},\"type\":2,\"name\":\"苹果核\",\"letterId\":16,\"tip\":\"投放提示：纯流质的食物垃圾、如牛奶等，应直接倒进下水口。有包装物的湿垃圾应将包装物去除后分类投放、包装物请投放到对应的可回收物或干垃圾容器\",\"id\":1}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'explain = \'厨余垃圾是指居民日常生活及食品加工、饮食服务、\' at line 4\r\n### The error may involve com.ruoyi.project.garbage.mapper.GarbageMapper.updateGarbage-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update garbage          SET name = ?,             type = ?,             explain = ?,             contain = ?,             tip = ?,             letter_id = ?          where id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'explain = \'厨余垃圾是指居民日常生活及食品加工、饮食服务、\' at line 4\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'explain = \'厨余垃圾是指居民日常生活及食品加工、饮食服务、\' at line 4', '2019-12-19 23:20:51');
INSERT INTO `sys_oper_log` VALUES (134, '垃圾分类', 2, 'com.ruoyi.project.garbage.controller.GarbageController.edit()', 'PUT', 1, 'admin', NULL, '/garbage', '127.0.0.1', '内网IP', '{\"explain\":\"厨余垃圾是指居民日常生活及食品加工、饮食服务、单位供餐等活动中产生的垃圾。\",\"contain\":\"包含物品：常见包括菜叶、剩菜、剩饭、果皮、蛋壳、茶渣、骨头等\",\"params\":{},\"type\":2,\"name\":\"苹果核\",\"letterId\":16,\"tip\":\"投放提示：纯流质的食物垃圾、如牛奶等，应直接倒进下水口。有包装物的湿垃圾应将包装物去除后分类投放、包装物请投放到对应的可回收物或干垃圾容器\",\"id\":1}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'explain = \'厨余垃圾是指居民日常生活及食品加工、饮食服务、\' at line 4\r\n### The error may involve com.ruoyi.project.garbage.mapper.GarbageMapper.updateGarbage-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update garbage          SET name = ?,             type = ?,             explain = ?,             contain = ?,             tip = ?,             letter_id = ?          where id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'explain = \'厨余垃圾是指居民日常生活及食品加工、饮食服务、\' at line 4\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'explain = \'厨余垃圾是指居民日常生活及食品加工、饮食服务、\' at line 4', '2019-12-19 23:20:52');
INSERT INTO `sys_oper_log` VALUES (135, '垃圾分类', 2, 'com.ruoyi.project.garbage.controller.GarbageController.edit()', 'PUT', 1, 'admin', NULL, '/garbage', '127.0.0.1', '内网IP', '{\"explain\":\"厨余垃圾是指居民日常生活及食品加工、饮食服务、单位供餐等活动中产生的垃圾。\",\"contain\":\"包含物品：常见包括菜叶、剩菜、剩饭、果皮、蛋壳、茶渣、骨头等\",\"params\":{},\"type\":2,\"name\":\"苹果核\",\"letterId\":16,\"tip\":\"投放提示：纯流质的食物垃圾、如牛奶等，应直接倒进下水口。有包装物的湿垃圾应将包装物去除后分类投放、包装物请投放到对应的可回收物或干垃圾容器\",\"id\":1}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'explain = \'厨余垃圾是指居民日常生活及食品加工、饮食服务、\' at line 4\r\n### The error may involve com.ruoyi.project.garbage.mapper.GarbageMapper.updateGarbage-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update garbage          SET name = ?,             type = ?,             explain = ?,             contain = ?,             tip = ?,             letter_id = ?          where id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'explain = \'厨余垃圾是指居民日常生活及食品加工、饮食服务、\' at line 4\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'explain = \'厨余垃圾是指居民日常生活及食品加工、饮食服务、\' at line 4', '2019-12-19 23:20:54');
INSERT INTO `sys_oper_log` VALUES (136, '垃圾分类', 1, 'com.ruoyi.project.garbage.controller.GarbageController.add()', 'POST', 1, 'admin', NULL, '/garbage', '127.0.0.1', '内网IP', '{\"params\":{},\"type\":1}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.project.garbage.mapper.GarbageMapper.insertGarbage-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into garbage          ( type )           values ( ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2019-12-19 23:21:00');
INSERT INTO `sys_oper_log` VALUES (137, '垃圾分类', 2, 'com.ruoyi.project.garbage.controller.GarbageController.edit()', 'PUT', 1, 'admin', NULL, '/garbage', '127.0.0.1', '内网IP', '{\"explain\":\"厨余垃圾是指居民日常生活及食品加工、饮食服务、单位供餐等活动中产生的垃圾。\",\"contain\":\"包含物品：常见包括菜叶、剩菜、剩饭、果皮、蛋壳、茶渣、骨头等\",\"params\":{},\"type\":\"2\",\"name\":\"苹果核\",\"letterId\":16,\"tip\":\"投放提示：纯流质的食物垃圾、如牛奶等，应直接倒进下水口。有包装物的湿垃圾应将包装物去除后分类投放、包装物请投放到对应的可回收物或干垃圾容器\",\"id\":1}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'explain = \'厨余垃圾是指居民日常生活及食品加工、饮食服务、\' at line 4\r\n### The error may involve com.ruoyi.project.garbage.mapper.GarbageMapper.updateGarbage-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update garbage          SET name = ?,             type = ?,             explain = ?,             contain = ?,             tip = ?,             letter_id = ?          where id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'explain = \'厨余垃圾是指居民日常生活及食品加工、饮食服务、\' at line 4\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'explain = \'厨余垃圾是指居民日常生活及食品加工、饮食服务、\' at line 4', '2019-12-19 23:28:18');
INSERT INTO `sys_oper_log` VALUES (138, '垃圾分类', 2, 'com.ruoyi.project.garbage.controller.GarbageController.edit()', 'PUT', 1, 'admin', NULL, '/garbage', '127.0.0.1', '内网IP', '{\"explain\":\"厨余垃圾是指居民日常生活及食品加工、饮食服务、单位供餐等活动中产生的垃圾。\",\"contain\":\"包含物品：常见包括菜叶、剩菜、剩饭、果皮、蛋壳、茶渣、骨头等\",\"params\":{},\"type\":\"2\",\"name\":\"苹果核\",\"letterId\":16,\"tip\":\"投放提示：纯流质的食物垃圾、如牛奶等，应直接倒进下水口。有包装物的湿垃圾应将包装物去除后分类投放、包装物请投放到对应的可回收物或干垃圾容器\",\"id\":1}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'explain = \'厨余垃圾是指居民日常生活及食品加工、饮食服务、\' at line 4\r\n### The error may involve com.ruoyi.project.garbage.mapper.GarbageMapper.updateGarbage-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update garbage          SET name = ?,             type = ?,             explain = ?,             contain = ?,             tip = ?,             letter_id = ?          where id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'explain = \'厨余垃圾是指居民日常生活及食品加工、饮食服务、\' at line 4\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'explain = \'厨余垃圾是指居民日常生活及食品加工、饮食服务、\' at line 4', '2019-12-19 23:29:35');
INSERT INTO `sys_oper_log` VALUES (139, '垃圾分类', 2, 'com.ruoyi.project.garbage.controller.GarbageController.edit()', 'PUT', 1, 'admin', NULL, '/garbage', '127.0.0.1', '内网IP', '{\"explain\":\"厨余垃圾是指居民日常生活及食品加工、饮食服务、单位供餐等活动中产生的垃圾。\",\"contain\":\"包含物品：常见包括菜叶、剩菜、剩饭、果皮、蛋壳、茶渣、骨头等\",\"params\":{},\"type\":\"2\",\"name\":\"苹果核\",\"letterId\":16,\"tip\":\"投放提示：纯流质的食物垃圾、如牛奶等，应直接倒进下水口。有包装物的湿垃圾应将包装物去除后分类投放、包装物请投放到对应的可回收物或干垃圾容器\",\"id\":1}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'g.d\' in \'where clause\'\r\n### The error may involve com.ruoyi.project.garbage.mapper.GarbageMapper.updateGarbage-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update garbage as g          SET g.name = ?,             g.type = ?,             g.explain = ?,             g.contain = ?,             g.tip = ?,             g.letter_id = ?          where g.d = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'g.d\' in \'where clause\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'g.d\' in \'where clause\'', '2019-12-19 23:36:31');
INSERT INTO `sys_oper_log` VALUES (140, '垃圾分类', 2, 'com.ruoyi.project.garbage.controller.GarbageController.edit()', 'PUT', 1, 'admin', NULL, '/garbage', '127.0.0.1', '内网IP', '{\"explain\":\"厨余垃圾是指居民日常生活及食品加工、饮食服务、单位供餐等活动中产生的垃圾。\",\"contain\":\"包含物品：常见包括菜叶、剩菜、剩饭、果皮、蛋壳、茶渣、骨头等\",\"params\":{},\"type\":\"2\",\"name\":\"苹果核\",\"letterId\":16,\"tip\":\"投放提示：纯流质的食物垃圾、如牛奶等，应直接倒进下水口。有包装物的湿垃圾应将包装物去除后分类投放、包装物请投放到对应的可回收物或干垃圾容器\",\"id\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-19 23:38:06');
INSERT INTO `sys_oper_log` VALUES (141, '垃圾分类', 2, 'com.ruoyi.project.garbage.controller.GarbageController.edit()', 'PUT', 1, 'admin', NULL, '/garbage', '127.0.0.1', '内网IP', '{\"explain\":\"厨余垃圾是指居民日常生活及食品加工、饮食服务、单位供餐等活动中产生的垃圾。\",\"contain\":\"包含物品：常见包括菜叶、剩菜、剩饭、果皮、蛋壳、茶渣、骨头等\",\"params\":{},\"type\":\"2\",\"name\":\"苹果核\",\"letterId\":16,\"tip\":\"投放提示：纯流质的食物垃圾、如牛奶等，应直接倒进下水口。有包装物的湿垃圾应将包装物去除后分类投放、包装物请投放到对应的可回收物或干垃圾容器\",\"id\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-19 23:38:17');
INSERT INTO `sys_oper_log` VALUES (142, '垃圾分类', 1, 'com.ruoyi.project.garbage.controller.GarbageController.add()', 'POST', 1, 'admin', NULL, '/garbage', '127.0.0.1', '内网IP', '{\"explain\":\"害人\",\"contain\":\"害人\",\"params\":{},\"type\":\"1\",\"name\":\"啦啦啦啦\",\"letterId\":1,\"tip\":\"害人\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'as g\n         ( g.name,\n            g.type,\n            g.explain,\n            g\' at line 1\r\n### The error may involve com.ruoyi.project.garbage.mapper.GarbageMapper.insertGarbage-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into garbage as g          ( g.name,             g.type,             g.explain,             g.contain,             g.tip,             g.letter_id )           values ( ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'as g\n         ( g.name,\n            g.type,\n            g.explain,\n            g\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'as g\n         ( g.name,\n            g.type,\n            g.explain,\n            g\' at line 1', '2019-12-19 23:38:41');
INSERT INTO `sys_oper_log` VALUES (143, '垃圾分类', 1, 'com.ruoyi.project.garbage.controller.GarbageController.add()', 'POST', 1, 'admin', NULL, '/garbage', '127.0.0.1', '内网IP', '{\"explain\":\"害人\",\"contain\":\"害人\",\"params\":{},\"type\":\"1\",\"name\":\"啦啦啦啦\",\"letterId\":1,\"tip\":\"害人\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'explain,\n            contain,\n            tip,\n            letter_id ) \n        \' at line 4\r\n### The error may involve com.ruoyi.project.garbage.mapper.GarbageMapper.insertGarbage-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into garbage          ( name,             type,             explain,             contain,             tip,             letter_id )           values ( ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'explain,\n            contain,\n            tip,\n            letter_id ) \n        \' at line 4\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'explain,\n            contain,\n            tip,\n            letter_id ) \n        \' at line 4', '2019-12-19 23:40:57');
INSERT INTO `sys_oper_log` VALUES (144, '垃圾分类', 1, 'com.ruoyi.project.garbage.controller.GarbageController.add()', 'POST', 1, 'admin', NULL, '/garbage', '127.0.0.1', '内网IP', '{\"explain\":\"害人\",\"contain\":\"害人\",\"params\":{},\"type\":\"1\",\"name\":\"啦啦啦啦\",\"letterId\":1,\"tip\":\"害人\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'explain,\n            contain,\n            tip,\n            letter_id ) \n        \' at line 4\r\n### The error may involve com.ruoyi.project.garbage.mapper.GarbageMapper.insertGarbage-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into garbage          ( name,             type,             explain,             contain,             tip,             letter_id )           values ( ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'explain,\n            contain,\n            tip,\n            letter_id ) \n        \' at line 4\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'explain,\n            contain,\n            tip,\n            letter_id ) \n        \' at line 4', '2019-12-19 23:41:25');
INSERT INTO `sys_oper_log` VALUES (145, '垃圾分类', 1, 'com.ruoyi.project.garbage.controller.GarbageController.add()', 'POST', 1, 'admin', NULL, '/garbage', '127.0.0.1', '内网IP', '{\"explain\":\"害人\",\"contain\":\"害人\",\"params\":{},\"type\":\"1\",\"name\":\"啦啦啦啦\",\"letterId\":1,\"tip\":\"害人\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'as g\n         ( name,\n            type,\n            g.explain,\n            conta\' at line 1\r\n### The error may involve com.ruoyi.project.garbage.mapper.GarbageMapper.insertGarbage-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into garbage as g          ( name,             type,             g.explain,             contain,             tip,             letter_id )           values ( ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'as g\n         ( name,\n            type,\n            g.explain,\n            conta\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'as g\n         ( name,\n            type,\n            g.explain,\n            conta\' at line 1', '2019-12-19 23:42:46');
INSERT INTO `sys_oper_log` VALUES (146, '垃圾分类', 2, 'com.ruoyi.project.garbage.controller.GarbageController.edit()', 'PUT', 1, 'admin', NULL, '/garbage', '127.0.0.1', '内网IP', '{\"contain\":\"包含物品：常见包括菜叶、剩菜、剩饭、果皮、蛋壳、茶渣、骨头等\",\"params\":{},\"type\":\"2\",\"name\":\"苹果核\",\"gExplain\":\"厨余垃圾是指居民日常生活及食品加工、饮食服务、单位供餐等活动中产生的垃圾。\",\"letterId\":16,\"tip\":\"投放提示：纯流质的食物垃圾、如牛奶等，应直接倒进下水口。有包装物的湿垃圾应将包装物去除后分类投放、包装物请投放到对应的可回收物或干垃圾容器\",\"id\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-19 23:49:11');
INSERT INTO `sys_oper_log` VALUES (147, '垃圾分类', 1, 'com.ruoyi.project.garbage.controller.GarbageController.add()', 'POST', 1, 'admin', NULL, '/garbage', '127.0.0.1', '内网IP', '{\"contain\":\"垃圾\",\"params\":{},\"type\":\"1\",\"name\":\"垃圾\",\"gExplain\":\"垃圾\",\"letterId\":1,\"tip\":\"垃圾\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.project.garbage.mapper.GarbageMapper.insertGarbage-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into garbage          ( name,             type,             g_explain,             contain,             tip,             letter_id )           values ( ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2019-12-19 23:49:38');
INSERT INTO `sys_oper_log` VALUES (148, '垃圾分类', 2, 'com.ruoyi.project.garbage.controller.GarbageController.edit()', 'PUT', 1, 'admin', NULL, '/garbage', '127.0.0.1', '内网IP', '{\"contain\":\"包含物品：常见包括菜叶、剩菜、剩饭、果皮、蛋壳、茶渣、骨头等\",\"params\":{},\"type\":\"2\",\"name\":\"苹果核\",\"gExplain\":\"厨余垃圾是指居民日常生活及食品加工、饮食服务、单位供餐等活动中产生的垃圾。\",\"letterId\":16,\"tip\":\"投放提示：纯流质的食物垃圾、如牛奶等，应直接倒进下水口。有包装物的湿垃圾应将包装物去除后分类投放、包装物请投放到对应的可回收物或干垃圾容器\",\"id\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-20 23:26:03');
INSERT INTO `sys_oper_log` VALUES (149, '垃圾分类', 1, 'com.ruoyi.project.garbage.controller.GarbageController.add()', 'POST', 1, 'admin', NULL, '/garbage', '127.0.0.1', '内网IP', '{\"contain\":\"123\",\"params\":{},\"type\":\"0\",\"name\":\"123\",\"gExplain\":\"123\",\"letterId\":1,\"tip\":\"123\",\"id\":\"294ad72d-5d88-41be-a2e2-8eb68d5fc621\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-20 23:50:47');
INSERT INTO `sys_oper_log` VALUES (150, '垃圾分类', 1, 'com.ruoyi.project.garbage.controller.GarbageController.add()', 'POST', 1, 'admin', NULL, '/garbage', '127.0.0.1', '内网IP', '{\"contain\":\"123\",\"params\":{},\"type\":\"0\",\"name\":\"123\",\"gExplain\":\"123\",\"letterId\":1,\"tip\":\"123\",\"id\":\"1a9ab8ac-2162-4900-b04c-445acd8192c3\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-20 23:54:54');
INSERT INTO `sys_oper_log` VALUES (151, '垃圾分类', 2, 'com.ruoyi.project.garbage.controller.GarbageController.edit()', 'PUT', 1, 'admin', NULL, '/garbage', '127.0.0.1', '内网IP', '{\"contain\":\"包含物品：常见包括菜叶、剩菜、剩饭、果皮、蛋壳、茶渣、骨头等\",\"params\":{},\"type\":\"2\",\"name\":\"苹果核\",\"gExplain\":\"厨余垃圾是指居民日常生活及食品加工、饮食服务、单位供餐等活动中产生的垃圾。\",\"letterId\":10,\"tip\":\"投放提示：纯流质的食物垃圾、如牛奶等，应直接倒进下水口。有包装物的湿垃圾应将包装物去除后分类投放、包装物请投放到对应的可回收物或干垃圾容器\",\"id\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-20 23:55:03');
INSERT INTO `sys_oper_log` VALUES (152, '垃圾分类', 2, 'com.ruoyi.project.garbage.controller.GarbageController.edit()', 'PUT', 1, 'admin', NULL, '/garbage', '127.0.0.1', '内网IP', '{\"contain\":\"包含物品：常见包括菜叶、剩菜、剩饭、果皮、蛋壳、茶渣、骨头等\",\"params\":{},\"type\":\"2\",\"name\":\"苹果核\",\"gExplain\":\"厨余垃圾是指居民日常生活及食品加工、饮食服务、单位供餐等活动中产生的垃圾。\",\"letterId\":16,\"tip\":\"投放提示：纯流质的食物垃圾、如牛奶等，应直接倒进下水口。有包装物的湿垃圾应将包装物去除后分类投放、包装物请投放到对应的可回收物或干垃圾容器\",\"id\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-20 23:55:10');
INSERT INTO `sys_oper_log` VALUES (153, '垃圾分类', 3, 'com.ruoyi.project.garbage.controller.GarbageController.remove()', 'DELETE', 1, 'admin', NULL, '/garbage/1a9ab8ac-2162-4900-b04c-445acd8192c3', '127.0.0.1', '内网IP', '{ids=1a9ab8ac-2162-4900-b04c-445acd8192c3}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-20 23:55:29');
INSERT INTO `sys_oper_log` VALUES (154, '垃圾分类', 3, 'com.ruoyi.project.garbage.controller.GarbageController.remove()', 'DELETE', 1, 'admin', NULL, '/garbage/294ad72d-5d88-41be-a2e2-8eb68d5fc621', '127.0.0.1', '内网IP', '{ids=294ad72d-5d88-41be-a2e2-8eb68d5fc621}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-20 23:55:31');
INSERT INTO `sys_oper_log` VALUES (155, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"example\",\"orderNum\":\"6\",\"menuName\":\"回收站管理\",\"params\":{},\"parentId\":0,\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-22 21:46:18');
INSERT INTO `sys_oper_log` VALUES (156, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"international\",\"orderNum\":\"1\",\"menuName\":\"回收站管理\",\"params\":{},\"parentId\":2007,\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-22 21:46:41');
INSERT INTO `sys_oper_log` VALUES (157, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"education\",\"orderNum\":\"7\",\"menuName\":\"资讯管理\",\"params\":{},\"parentId\":0,\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-22 23:09:49');
INSERT INTO `sys_oper_log` VALUES (158, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'cycling,information', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-22 23:10:37');
INSERT INTO `sys_oper_log` VALUES (159, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"functionAuthor\":\"zhao\",\"columns\":[{\"usableColumn\":false,\"columnId\":33,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"回收站id\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1577027437000,\"tableId\":7,\"pk\":true,\"columnName\":\"id\"},{\"usableColumn\":false,\"columnId\":34,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"cyclingName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"回收站名称\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1577027437000,\"isEdit\":\"1\",\"tableId\":7,\"pk\":false,\"columnName\":\"cycling_name\"},{\"usableColumn\":false,\"columnId\":35,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"cyclingMobile\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"回收站联系方式\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1577027437000,\"isEdit\":\"1\",\"tableId\":7,\"pk\":false,\"columnName\":\"cycling_mobile\"},{\"usableColumn\":false,\"columnId\":36,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"cyclingMan\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"回收站负责人\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1577027437000,\"isEd', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-22 23:11:21');
INSERT INTO `sys_oper_log` VALUES (160, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"functionAuthor\":\"zhao\",\"columns\":[{\"usableColumn\":false,\"columnId\":45,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"edit\":false,\"query\":false,\"columnComment\":\"资讯id\",\"sort\":1,\"list\":false,\"params\":{},\"queryType\":\"EQ\",\"columnType\":\"varbinary(64)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1577027437000,\"tableId\":8,\"pk\":true,\"columnName\":\"id\"},{\"usableColumn\":false,\"columnId\":46,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"title\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"资讯标题\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1577027437000,\"isEdit\":\"1\",\"tableId\":8,\"pk\":false,\"columnName\":\"title\"},{\"usableColumn\":false,\"columnId\":47,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"content\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"资讯内容\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1577027437000,\"isEdit\":\"1\",\"tableId\":8,\"pk\":false,\"columnName\":\"content\"},{\"usableColumn\":false,\"columnId\":48,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"infoImg\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"资讯图片\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1577027437000,\"isEdit\":\"1\",\"tableId\":8,\"pk\":false,\"columnName\":\"info_img\"},{\"usableColumn\":false,\"columnId\":', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-22 23:11:38');
INSERT INTO `sys_oper_log` VALUES (161, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2019-12-22 23:11:41');
INSERT INTO `sys_oper_log` VALUES (162, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2019-12-22 23:11:44');
INSERT INTO `sys_oper_log` VALUES (163, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"international\",\"orderNum\":\"1\",\"menuName\":\"回收站管理\",\"params\":{},\"parentId\":2007,\"path\":\"cycling\",\"component\":\"cycling\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"perms\":\"system:cycling:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-22 23:30:21');
INSERT INTO `sys_oper_log` VALUES (164, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"international\",\"orderNum\":\"1\",\"menuName\":\"回收站管理\",\"params\":{},\"parentId\":2007,\"path\":\"cycling\",\"component\":\"cycling/index\",\"children\":[],\"createTime\":1577028621000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2022,\"menuType\":\"C\",\"perms\":\"system:cycling:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-22 23:30:33');
INSERT INTO `sys_oper_log` VALUES (165, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"excel\",\"orderNum\":\"1\",\"menuName\":\"资讯管理\",\"params\":{},\"parentId\":2009,\"path\":\"information\",\"component\":\"information/list\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"perms\":\"system:information:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-22 23:37:29');
INSERT INTO `sys_oper_log` VALUES (166, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"excel\",\"orderNum\":\"1\",\"menuName\":\"资讯管理\",\"params\":{},\"parentId\":2009,\"path\":\"information\",\"component\":\"information/list\",\"children\":[],\"createTime\":1577029049000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2023,\"menuType\":\"C\",\"perms\":\"system:information:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-22 23:38:55');
INSERT INTO `sys_oper_log` VALUES (167, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"excel\",\"orderNum\":\"1\",\"menuName\":\"资讯管理\",\"params\":{},\"parentId\":2009,\"path\":\"information\",\"component\":\"information/index\",\"children\":[],\"createTime\":1577029049000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2023,\"menuType\":\"C\",\"perms\":\"system:information:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-22 23:39:34');
INSERT INTO `sys_oper_log` VALUES (168, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"5\",\"menuName\":\"垃圾分类\",\"params\":{},\"parentId\":0,\"path\":\"cycling\",\"children\":[],\"createTime\":1576679301000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2006,\"menuType\":\"M\",\"perms\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-22 23:39:59');
INSERT INTO `sys_oper_log` VALUES (169, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"example\",\"orderNum\":\"6\",\"menuName\":\"回收站管理\",\"params\":{},\"parentId\":0,\"path\":\"cycling\",\"children\":[],\"createTime\":1577022378000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2007,\"menuType\":\"M\",\"perms\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-22 23:40:10');
INSERT INTO `sys_oper_log` VALUES (170, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"education\",\"orderNum\":\"7\",\"menuName\":\"资讯管理\",\"params\":{},\"parentId\":0,\"path\":\"information\",\"children\":[],\"createTime\":1577027389000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2009,\"menuType\":\"M\",\"perms\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-22 23:40:16');
INSERT INTO `sys_oper_log` VALUES (171, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"example\",\"orderNum\":\"6\",\"menuName\":\"回收站管理\",\"params\":{},\"parentId\":0,\"path\":\"cycling\",\"children\":[],\"createTime\":1577022378000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2007,\"menuType\":\"M\",\"perms\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-22 23:40:31');
INSERT INTO `sys_oper_log` VALUES (172, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"5\",\"menuName\":\"垃圾分类\",\"params\":{},\"parentId\":0,\"path\":\"garbage\",\"children\":[],\"createTime\":1576679301000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2006,\"menuType\":\"M\",\"perms\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-22 23:40:39');
INSERT INTO `sys_oper_log` VALUES (173, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/7', '127.0.0.1', '内网IP', '{tableIds=7}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-23 20:08:23');
INSERT INTO `sys_oper_log` VALUES (174, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/8', '127.0.0.1', '内网IP', '{tableIds=8}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-23 20:08:25');
INSERT INTO `sys_oper_log` VALUES (175, '菜单管理', 3, 'com.ruoyi.project.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2016', '127.0.0.1', '内网IP', '{menuId=2016}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":500}', 0, NULL, '2019-12-23 20:09:21');
INSERT INTO `sys_oper_log` VALUES (176, '菜单管理', 3, 'com.ruoyi.project.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2010', '127.0.0.1', '内网IP', '{menuId=2010}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":500}', 0, NULL, '2019-12-23 20:09:24');
INSERT INTO `sys_oper_log` VALUES (177, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"资讯管理\",\"params\":{},\"parentId\":3,\"path\":\"information\",\"component\":\"system\",\"children\":[],\"createTime\":1519833600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2016,\"menuType\":\"C\",\"perms\":\"system:information:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-23 20:09:46');
INSERT INTO `sys_oper_log` VALUES (178, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"回收站管理\",\"params\":{},\"parentId\":3,\"path\":\"cycling\",\"component\":\"system\",\"children\":[],\"createTime\":1519833600000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2010,\"menuType\":\"C\",\"perms\":\"system:cycling:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-23 20:09:52');
INSERT INTO `sys_oper_log` VALUES (179, '菜单管理', 3, 'com.ruoyi.project.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2016', '127.0.0.1', '内网IP', '{menuId=2016}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":500}', 0, NULL, '2019-12-23 20:09:55');
INSERT INTO `sys_oper_log` VALUES (180, '菜单管理', 3, 'com.ruoyi.project.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2017', '127.0.0.1', '内网IP', '{menuId=2017}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-23 20:10:01');
INSERT INTO `sys_oper_log` VALUES (181, '菜单管理', 3, 'com.ruoyi.project.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2018', '127.0.0.1', '内网IP', '{menuId=2018}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-23 20:10:06');
INSERT INTO `sys_oper_log` VALUES (182, '菜单管理', 3, 'com.ruoyi.project.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2019', '127.0.0.1', '内网IP', '{menuId=2019}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-23 20:10:08');
INSERT INTO `sys_oper_log` VALUES (183, '菜单管理', 3, 'com.ruoyi.project.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2020', '127.0.0.1', '内网IP', '{menuId=2020}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-23 20:10:09');
INSERT INTO `sys_oper_log` VALUES (184, '菜单管理', 3, 'com.ruoyi.project.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2021', '127.0.0.1', '内网IP', '{menuId=2021}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-23 20:10:11');
INSERT INTO `sys_oper_log` VALUES (185, '菜单管理', 3, 'com.ruoyi.project.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2016', '127.0.0.1', '内网IP', '{menuId=2016}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-23 20:10:16');
INSERT INTO `sys_oper_log` VALUES (186, '菜单管理', 3, 'com.ruoyi.project.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2011', '127.0.0.1', '内网IP', '{menuId=2011}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-23 20:10:21');
INSERT INTO `sys_oper_log` VALUES (187, '菜单管理', 3, 'com.ruoyi.project.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2012', '127.0.0.1', '内网IP', '{menuId=2012}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-23 20:10:22');
INSERT INTO `sys_oper_log` VALUES (188, '菜单管理', 3, 'com.ruoyi.project.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2013', '127.0.0.1', '内网IP', '{menuId=2013}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-23 20:10:25');
INSERT INTO `sys_oper_log` VALUES (189, '菜单管理', 3, 'com.ruoyi.project.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2014', '127.0.0.1', '内网IP', '{menuId=2014}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-23 20:10:27');
INSERT INTO `sys_oper_log` VALUES (190, '菜单管理', 3, 'com.ruoyi.project.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2015', '127.0.0.1', '内网IP', '{menuId=2015}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-23 20:10:29');
INSERT INTO `sys_oper_log` VALUES (191, '菜单管理', 3, 'com.ruoyi.project.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2010', '127.0.0.1', '内网IP', '{menuId=2010}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-23 20:10:32');
INSERT INTO `sys_oper_log` VALUES (192, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"404\",\"orderNum\":\"1\",\"menuName\":\"123123123\",\"params\":{},\"parentId\":0,\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-23 20:10:43');
INSERT INTO `sys_oper_log` VALUES (193, '菜单管理', 3, 'com.ruoyi.project.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2024', '127.0.0.1', '内网IP', '{menuId=2024}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-23 20:10:56');
INSERT INTO `sys_oper_log` VALUES (194, '角色管理', 2, 'com.ruoyi.project.system.controller.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":1,\"admin\":true,\"remark\":\"管理员\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"1\",\"createTime\":1521171180000,\"roleKey\":\"admin\",\"roleName\":\"管理员\",\"deptIds\":[103,104,105,100,101],\"status\":\"0\"}', 'null', 1, '不允许操作超级管理员角色', '2019-12-23 20:27:35');
INSERT INTO `sys_oper_log` VALUES (195, '回收站管理', 1, 'com.ruoyi.project.cycling.controller.CyclingController.add()', 'POST', 1, 'admin', NULL, '/cycling', '127.0.0.1', '内网IP', '{\"cyclingAddress\":\"123\",\"cyclingDetail\":\"123\",\"cyclingMan\":\"123\",\"params\":{},\"createTime\":1577112566593,\"cyclingMobile\":\"123\",\"cyclingIntroduce\":\"123\",\"cyclingName\":\"123\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.project.cycling.mapper.CyclingMapper.insertCycling-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into cycling          ( cycling_name,             cycling_mobile,             cycling_man,             cycling_introduce,             cycling_detail,             cycling_address,                          create_time )           values ( ?,             ?,             ?,             ?,             ?,             ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2019-12-23 22:49:26');
INSERT INTO `sys_oper_log` VALUES (196, '回收站管理', 1, 'com.ruoyi.project.cycling.controller.CyclingController.add()', 'POST', 1, 'admin', NULL, '/cycling', '127.0.0.1', '内网IP', '{\"cyclingAddress\":\"123\",\"cyclingDetail\":\"123\",\"cyclingMan\":\"123\",\"params\":{},\"createBy\":\"admin\",\"createTime\":1577285411571,\"cyclingMobile\":\"123\",\"id\":\"9c9a29a1c0554709a159acbee0b7fe80\",\"cyclingIntroduce\":\"123\",\"cyclingName\":\"123\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-25 22:50:11');
INSERT INTO `sys_oper_log` VALUES (197, '资讯管理', 1, 'com.ruoyi.project.information.controller.InformationController.add()', 'POST', 1, 'admin', NULL, '/information', '127.0.0.1', '内网IP', '{\"infoImg\":\"123\",\"params\":{},\"title\":\"123\",\"content\":\"123\",\"createTime\":1577285481326,\"viewCount\":\"123\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.project.information.mapper.InformationMapper.insertInformation-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into information          ( title,             content,             info_img,             view_count,                          create_time )           values ( ?,             ?,             ?,             ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2019-12-25 22:51:21');
INSERT INTO `sys_oper_log` VALUES (198, '资讯管理', 1, 'com.ruoyi.project.information.controller.InformationController.add()', 'POST', 1, 'admin', NULL, '/information', '127.0.0.1', '内网IP', '{\"infoImg\":\"123\",\"params\":{},\"title\":\"123\",\"content\":\"123\",\"createTime\":1577285680417,\"viewCount\":\"123\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.project.information.mapper.InformationMapper.insertInformation-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into information          ( title,             content,             info_img,             view_count,                          create_time )           values ( ?,             ?,             ?,             ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2019-12-25 22:54:40');
INSERT INTO `sys_oper_log` VALUES (199, '资讯管理', 1, 'com.ruoyi.project.information.controller.InformationController.add()', 'POST', 1, 'admin', NULL, '/information', '127.0.0.1', '内网IP', '{\"infoImg\":\"123\",\"params\":{},\"title\":\"123\",\"content\":\"123\",\"createTime\":1577285680310,\"viewCount\":\"123\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.project.information.mapper.InformationMapper.insertInformation-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into information          ( title,             content,             info_img,             view_count,                          create_time )           values ( ?,             ?,             ?,             ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2019-12-25 22:54:40');
INSERT INTO `sys_oper_log` VALUES (200, '资讯管理', 1, 'com.ruoyi.project.information.controller.InformationController.add()', 'POST', 1, 'admin', NULL, '/information', '127.0.0.1', '内网IP', '{\"infoImg\":\"123\",\"params\":{},\"title\":\"123\",\"content\":\"123\",\"createTime\":1577285702536,\"viewCount\":\"123\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.project.information.mapper.InformationMapper.insertInformation-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into information          ( title,             content,             info_img,             view_count,                          create_time )           values ( ?,             ?,             ?,             ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2019-12-25 22:55:02');
INSERT INTO `sys_oper_log` VALUES (201, '资讯管理', 1, 'com.ruoyi.project.information.controller.InformationController.add()', 'POST', 1, 'admin', NULL, '/information', '127.0.0.1', '内网IP', '{\"infoImg\":\"123\",\"params\":{},\"title\":\"123\",\"content\":\"123\",\"createBy\":\"admin\",\"createTime\":1577285746550,\"id\":\"6f7dc816f5d04427a599f7129bdd2b1b\",\"viewCount\":\"123\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2019-12-25 22:55:46');
INSERT INTO `sys_oper_log` VALUES (202, '用户头像', 2, 'com.ruoyi.project.system.controller.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2020/01/01/d496106772368ddfb662daa685d2df27.jpeg\",\"code\":200}', 0, NULL, '2020-01-01 21:20:08');
INSERT INTO `sys_oper_log` VALUES (203, '用户头像', 2, 'com.ruoyi.project.system.controller.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2020/01/02/b796c7e1c8d1576b500a17ceb4b226a5.jpeg\",\"code\":200}', 0, NULL, '2020-01-02 00:01:46');
INSERT INTO `sys_oper_log` VALUES (204, '回收站图片', 2, 'com.ruoyi.project.cycling.controller.CyclingController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/cycling/uploadCyclingImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"上传图片异常，请联系管理员\",\"code\":500}', 0, NULL, '2020-01-02 14:29:47');
INSERT INTO `sys_oper_log` VALUES (205, '回收站图片', 2, 'com.ruoyi.project.cycling.controller.CyclingController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/cycling/uploadCyclingImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/upload/2020/01/02/fcf8037bd7eea5e9afe603f6bb4743a2.jpeg\"}', 0, NULL, '2020-01-02 14:31:39');
INSERT INTO `sys_oper_log` VALUES (206, '回收站图片', 2, 'com.ruoyi.project.cycling.controller.CyclingController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/cycling/uploadCyclingImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/upload/2020/01/02/64149d7561401d03bf6378a207e2c842.jpg\"}', 0, NULL, '2020-01-02 14:33:10');
INSERT INTO `sys_oper_log` VALUES (207, '回收站图片', 2, 'com.ruoyi.project.cycling.controller.CyclingController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/cycling/uploadCyclingImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/upload/2020/01/02/ea1d9afc84b54ecc6cc7c926dda795f8.jpg\"}', 0, NULL, '2020-01-02 14:33:31');
INSERT INTO `sys_oper_log` VALUES (208, '回收站图片', 2, 'com.ruoyi.project.cycling.controller.CyclingController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/cycling/uploadCyclingImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/upload/2020/01/02/8e97b9d59175919ed7e55e1ad05cfa7b.jpg\"}', 0, NULL, '2020-01-02 14:38:22');
INSERT INTO `sys_oper_log` VALUES (209, '回收站图片', 2, 'com.ruoyi.project.cycling.controller.CyclingController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/cycling/uploadCyclingImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/upload/2020/01/02/d2eee69bbea37af7617a73f7c1c8f353.jpg\"}', 0, NULL, '2020-01-02 14:43:30');
INSERT INTO `sys_oper_log` VALUES (210, '回收站图片', 2, 'com.ruoyi.project.cycling.controller.CyclingController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/cycling/uploadCyclingImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/upload/2020/01/02/40289e70c744742fd1b4f9588d499df4.jpg\"}', 0, NULL, '2020-01-02 14:49:58');
INSERT INTO `sys_oper_log` VALUES (211, '回收站图片', 2, 'com.ruoyi.project.cycling.controller.CyclingController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/cycling/uploadCyclingImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/upload/2020/01/02/9b6417860076161c51d0997b9887e221.jpg\"}', 0, NULL, '2020-01-02 14:51:02');
INSERT INTO `sys_oper_log` VALUES (212, '回收站图片', 2, 'com.ruoyi.project.cycling.controller.CyclingController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/cycling/uploadCyclingImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/upload/2020/01/02/3bdb7acb6217d4ad91bf45800aec93b1.jpg\"}', 0, NULL, '2020-01-02 14:51:56');
INSERT INTO `sys_oper_log` VALUES (213, '回收站图片', 2, 'com.ruoyi.project.cycling.controller.CyclingController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/cycling/uploadCyclingImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/upload/2020/01/02/97250896e61a68902be56defa2651b2a.jpg\"}', 0, NULL, '2020-01-02 14:52:22');
INSERT INTO `sys_oper_log` VALUES (214, '回收站图片', 2, 'com.ruoyi.project.cycling.controller.CyclingController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/cycling/uploadCyclingImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/upload/2020/01/02/5abec3dcdf103f45edda6b85a1961541.jpg\"}', 0, NULL, '2020-01-02 14:55:52');
INSERT INTO `sys_oper_log` VALUES (215, '回收站管理', 1, 'com.ruoyi.project.cycling.controller.CyclingController.add()', 'POST', 1, 'admin', NULL, '/cycling', '127.0.0.1', '内网IP', '{\"cyclingAddress\":\"北京市顺义区天竺镇二十里堡路\",\"cyclingDetail\":\"123\",\"cyclingMan\":\"123\",\"params\":{},\"createBy\":\"admin\",\"createTime\":1577948173777,\"cyclingMobile\":\"123\",\"id\":\"b1198bcfc42341749933f32deca8f52a\",\"addressY\":\"40.078173\",\"addressX\":\"116.570388\",\"cyclingImg\":\"/profile/upload/2020/01/02/5abec3dcdf103f45edda6b85a1961541.jpg\",\"cyclingIntroduce\":\"123\",\"cyclingName\":\"123\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-02 14:56:13');
INSERT INTO `sys_oper_log` VALUES (216, '回收站管理', 1, 'com.ruoyi.project.cycling.controller.CyclingController.add()', 'POST', 1, 'admin', NULL, '/cycling', '127.0.0.1', '内网IP', '{\"cyclingAddress\":\"北京市顺义区天竺镇二十里堡路\",\"cyclingDetail\":\"123\",\"cyclingMan\":\"123\",\"params\":{},\"createBy\":\"admin\",\"createTime\":1577948193528,\"cyclingMobile\":\"123\",\"id\":\"58e85376be2a44aaac8e9ba1174a050b\",\"addressY\":\"40.078173\",\"addressX\":\"116.570388\",\"cyclingImg\":\"/profile/upload/2020/01/02/5abec3dcdf103f45edda6b85a1961541.jpg\",\"cyclingIntroduce\":\"123\",\"cyclingName\":\"123\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-02 14:56:33');
INSERT INTO `sys_oper_log` VALUES (217, '回收站管理', 3, 'com.ruoyi.project.cycling.controller.CyclingController.remove()', 'DELETE', 1, 'admin', NULL, '/cycling/b1198bcfc42341749933f32deca8f52a', '127.0.0.1', '内网IP', '{ids=b1198bcfc42341749933f32deca8f52a}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-02 14:56:39');
INSERT INTO `sys_oper_log` VALUES (218, '回收站管理', 3, 'com.ruoyi.project.cycling.controller.CyclingController.remove()', 'DELETE', 1, 'admin', NULL, '/cycling/58e85376be2a44aaac8e9ba1174a050b', '127.0.0.1', '内网IP', '{ids=58e85376be2a44aaac8e9ba1174a050b}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-02 14:56:42');
INSERT INTO `sys_oper_log` VALUES (219, '回收站管理', 3, 'com.ruoyi.project.cycling.controller.CyclingController.remove()', 'DELETE', 1, 'admin', NULL, '/cycling/9c9a29a1c0554709a159acbee0b7fe80', '127.0.0.1', '内网IP', '{ids=9c9a29a1c0554709a159acbee0b7fe80}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-02 14:56:45');
INSERT INTO `sys_oper_log` VALUES (220, '回收站图片', 2, 'com.ruoyi.project.cycling.controller.CyclingController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/cycling/uploadCyclingImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/upload/2020/01/02/5a5156431ae8292a2614930064c10558.jpg\"}', 0, NULL, '2020-01-02 14:56:55');
INSERT INTO `sys_oper_log` VALUES (221, '回收站管理', 1, 'com.ruoyi.project.cycling.controller.CyclingController.add()', 'POST', 1, 'admin', NULL, '/cycling', '127.0.0.1', '内网IP', '{\"cyclingAddress\":\"北京市顺义区空港街道裕华路\",\"cyclingMan\":\"111\",\"params\":{},\"createBy\":\"admin\",\"createTime\":1577948229470,\"cyclingMobile\":\"111\",\"id\":\"0593cbd727204f5387e489888221daf9\",\"addressY\":\"40.076203\",\"addressX\":\"116.547986\",\"cyclingImg\":\"/profile/upload/2020/01/02/5a5156431ae8292a2614930064c10558.jpg\",\"cyclingName\":\"111\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-02 14:57:09');
INSERT INTO `sys_oper_log` VALUES (222, '回收站管理', 1, 'com.ruoyi.project.cycling.controller.CyclingController.add()', 'POST', 1, 'admin', NULL, '/cycling', '127.0.0.1', '内网IP', '{\"cyclingAddress\":\"北京市顺义区仁和镇万晴园\",\"cyclingMan\":\"123\",\"params\":{},\"createBy\":\"admin\",\"createTime\":1577948360219,\"cyclingMobile\":\"123\",\"id\":\"4345ef5de02a437c882fa2efce29d7e9\",\"addressY\":\"40.0852\",\"addressX\":\"116.719734\",\"cyclingName\":\"123\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-02 14:59:20');
INSERT INTO `sys_oper_log` VALUES (223, '回收站管理', 1, 'com.ruoyi.project.cycling.controller.CyclingController.add()', 'POST', 1, 'admin', NULL, '/cycling', '127.0.0.1', '内网IP', '{\"cyclingAddress\":\"北京市顺义区空港街道北京市天竺房地产开发公司(裕华路)\",\"cyclingMan\":\"123\",\"params\":{},\"createBy\":\"admin\",\"createTime\":1577948441237,\"cyclingMobile\":\"123\",\"id\":\"a11e23b86b4e4615b8cfc1ddf12a10be\",\"addressY\":\"40.074955\",\"addressX\":\"116.546871\",\"cyclingName\":\"123\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-02 15:00:41');
INSERT INTO `sys_oper_log` VALUES (224, '回收站管理', 2, 'com.ruoyi.project.cycling.controller.CyclingController.edit()', 'PUT', 1, 'admin', NULL, '/cycling', '127.0.0.1', '内网IP', '{\"cyclingAddress\":\"北京市顺义区天竺镇天纬三街领航雅苑\",\"cyclingMan\":\"111\",\"remark\":\"\",\"updateTime\":1577948782740,\"params\":{},\"createBy\":\"admin\",\"createTime\":1577948229000,\"updateBy\":\"admin\",\"cyclingMobile\":\"111\",\"id\":\"0593cbd727204f5387e489888221daf9\",\"addressY\":\"40.075743\",\"addressX\":\"116.569787\",\"cyclingImg\":\"/profile/upload/2020/01/02/5a5156431ae8292a2614930064c10558.jpg\",\"cyclingName\":\"111\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-02 15:06:22');
INSERT INTO `sys_oper_log` VALUES (225, '回收站管理', 2, 'com.ruoyi.project.cycling.controller.CyclingController.edit()', 'PUT', 1, 'admin', NULL, '/cycling', '127.0.0.1', '内网IP', '{\"cyclingAddress\":\"北京市顺义区天竺镇星巴克咖啡(3号航站楼E区)北京首都国际机场\",\"cyclingMan\":\"111\",\"remark\":\"\",\"updateTime\":1577948799379,\"params\":{},\"createBy\":\"admin\",\"createTime\":1577948229000,\"updateBy\":\"admin\",\"cyclingMobile\":\"111\",\"id\":\"0593cbd727204f5387e489888221daf9\",\"addressY\":\"40.078895\",\"addressX\":\"116.605235\",\"cyclingImg\":\"/profile/upload/2020/01/02/5a5156431ae8292a2614930064c10558.jpg\",\"cyclingName\":\"111\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-02 15:06:39');
INSERT INTO `sys_oper_log` VALUES (226, '回收站图片', 2, 'com.ruoyi.project.cycling.controller.CyclingController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/cycling/uploadCyclingImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/CycImg/2020/01/02/cf4cc91d38f9c69dc36801168d19af46.jpg\"}', 0, NULL, '2020-01-02 15:18:05');
INSERT INTO `sys_oper_log` VALUES (227, '资讯管理', 1, 'com.ruoyi.project.information.controller.InformationController.add()', 'POST', 1, 'admin', NULL, '/information', '127.0.0.1', '内网IP', '{\"infoImg\":\"/profile/CycImg/2020/01/02/cf4cc91d38f9c69dc36801168d19af46.jpg\",\"params\":{},\"title\":\"123\",\"content\":\"123123\",\"createBy\":\"admin\",\"createTime\":1577949489131,\"id\":\"3ab1ad4e3de34476ad03e54df7cdbd8f\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-02 15:18:09');
INSERT INTO `sys_oper_log` VALUES (228, '资讯管理', 2, 'com.ruoyi.project.information.controller.InformationController.edit()', 'PUT', 1, 'admin', NULL, '/information', '127.0.0.1', '内网IP', '{\"infoImg\":\"123\",\"remark\":\"\",\"updateTime\":1577949501168,\"params\":{},\"title\":\"3333\",\"content\":\"33333\",\"createBy\":\"admin\",\"createTime\":1577285747000,\"updateBy\":\"admin\",\"id\":\"6f7dc816f5d04427a599f7129bdd2b1b\",\"viewCount\":\"123\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-02 15:18:21');
INSERT INTO `sys_oper_log` VALUES (229, '回收站图片', 2, 'com.ruoyi.project.cycling.controller.CyclingController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/cycling/uploadCyclingImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/CycImg/2020/01/02/344f06c05151a0e057cf20a009e3da3a.jpeg\"}', 0, NULL, '2020-01-02 15:27:45');
INSERT INTO `sys_oper_log` VALUES (230, '资讯管理', 2, 'com.ruoyi.project.information.controller.InformationController.edit()', 'PUT', 1, 'admin', NULL, '/information', '127.0.0.1', '内网IP', '{\"infoImg\":\"/profile/CycImg/2020/01/02/344f06c05151a0e057cf20a009e3da3a.jpeg\",\"remark\":\"\",\"updateTime\":1577950066723,\"params\":{},\"title\":\"3333\",\"content\":\"33333\",\"createBy\":\"admin\",\"createTime\":1577285747000,\"updateBy\":\"admin\",\"id\":\"6f7dc816f5d04427a599f7129bdd2b1b\",\"viewCount\":\"123\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-02 15:27:46');
INSERT INTO `sys_oper_log` VALUES (231, '回收站图片', 2, 'com.ruoyi.project.cycling.controller.CyclingController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/cycling/uploadCyclingImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/CycImg/2020/01/02/12e10db8ebfb41da50957a06c4418407.jpg\"}', 0, NULL, '2020-01-02 15:28:12');
INSERT INTO `sys_oper_log` VALUES (232, '回收站管理', 2, 'com.ruoyi.project.cycling.controller.CyclingController.edit()', 'PUT', 1, 'admin', NULL, '/cycling', '127.0.0.1', '内网IP', '{\"cyclingAddress\":\"北京市顺义区天竺镇星巴克咖啡(3号航站楼E区)北京首都国际机场\",\"cyclingMan\":\"111\",\"remark\":\"\",\"updateTime\":1577950093844,\"params\":{},\"createBy\":\"admin\",\"createTime\":1577948229000,\"updateBy\":\"admin\",\"cyclingMobile\":\"111\",\"id\":\"0593cbd727204f5387e489888221daf9\",\"addressY\":\"40.078895\",\"addressX\":\"116.605235\",\"cyclingImg\":\"/profile/CycImg/2020/01/02/12e10db8ebfb41da50957a06c4418407.jpg\",\"cyclingName\":\"111\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-02 15:28:13');
INSERT INTO `sys_oper_log` VALUES (233, '回收站图片', 2, 'com.ruoyi.project.cycling.controller.CyclingController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/cycling/uploadCyclingImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/CycImg/2020/01/02/41f96234b8212594838450ff674fba7e.jpeg\"}', 0, NULL, '2020-01-02 15:28:20');
INSERT INTO `sys_oper_log` VALUES (234, '回收站管理', 2, 'com.ruoyi.project.cycling.controller.CyclingController.edit()', 'PUT', 1, 'admin', NULL, '/cycling', '127.0.0.1', '内网IP', '{\"cyclingAddress\":\"北京市顺义区仁和镇万晴园\",\"cyclingMan\":\"123\",\"remark\":\"\",\"updateTime\":1577950101728,\"params\":{},\"createBy\":\"admin\",\"createTime\":1577948360000,\"updateBy\":\"admin\",\"cyclingMobile\":\"123\",\"id\":\"4345ef5de02a437c882fa2efce29d7e9\",\"addressY\":\"40.0852\",\"addressX\":\"116.719734\",\"cyclingImg\":\"/profile/CycImg/2020/01/02/41f96234b8212594838450ff674fba7e.jpeg\",\"cyclingName\":\"123\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-02 15:28:21');
INSERT INTO `sys_oper_log` VALUES (235, '回收站图片', 2, 'com.ruoyi.project.cycling.controller.CyclingController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/cycling/uploadCyclingImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/CycImg/2020/01/02/5f4efb65485b2ba0b67c9e2b630d0127.jpg\"}', 0, NULL, '2020-01-02 15:28:25');
INSERT INTO `sys_oper_log` VALUES (236, '回收站管理', 2, 'com.ruoyi.project.cycling.controller.CyclingController.edit()', 'PUT', 1, 'admin', NULL, '/cycling', '127.0.0.1', '内网IP', '{\"cyclingAddress\":\"北京市顺义区空港街道北京市天竺房地产开发公司(裕华路)\",\"cyclingMan\":\"123\",\"remark\":\"\",\"updateTime\":1577950106560,\"params\":{},\"createBy\":\"admin\",\"createTime\":1577948441000,\"updateBy\":\"admin\",\"cyclingMobile\":\"123\",\"id\":\"a11e23b86b4e4615b8cfc1ddf12a10be\",\"addressY\":\"40.074955\",\"addressX\":\"116.546871\",\"cyclingImg\":\"/profile/CycImg/2020/01/02/5f4efb65485b2ba0b67c9e2b630d0127.jpg\",\"cyclingName\":\"123\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-02 15:28:26');
INSERT INTO `sys_oper_log` VALUES (237, '用户头像', 2, 'com.ruoyi.project.system.controller.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2020/01/03/fc8521175a8a8a82e150a2a6275f82f6.jpeg\",\"code\":200}', 0, NULL, '2020-01-03 10:04:48');
INSERT INTO `sys_oper_log` VALUES (238, '资讯管理', 2, 'com.ruoyi.project.information.controller.InformationController.edit()', 'PUT', 1, 'admin', NULL, '/information', '127.0.0.1', '内网IP', '{\"remark\":\"\",\"updateTime\":1578314875226,\"params\":{},\"title\":\"3333\",\"content\":\"33333\",\"createBy\":\"admin\",\"createTime\":1577285747000,\"updateBy\":\"admin\",\"id\":\"6f7dc816f5d04427a599f7129bdd2b1b\",\"viewCount\":\"123\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-06 20:47:55');
INSERT INTO `sys_oper_log` VALUES (239, '资讯管理', 2, 'com.ruoyi.project.information.controller.InformationController.edit()', 'PUT', 1, 'admin', NULL, '/information', '127.0.0.1', '内网IP', '{\"remark\":\"\",\"updateTime\":1578314987299,\"params\":{},\"title\":\"3333\",\"content\":\"33333\",\"createBy\":\"admin\",\"createTime\":1577285747000,\"updateBy\":\"admin\",\"id\":\"6f7dc816f5d04427a599f7129bdd2b1b\",\"viewCount\":\"123\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-06 20:49:47');
INSERT INTO `sys_oper_log` VALUES (240, '资讯管理', 2, 'com.ruoyi.project.information.controller.InformationController.edit()', 'PUT', 1, 'admin', NULL, '/information', '127.0.0.1', '内网IP', '{\"remark\":\"\",\"updateTime\":1578315063594,\"params\":{},\"title\":\"3333\",\"content\":\"33333\",\"createBy\":\"admin\",\"createTime\":1577285747000,\"updateBy\":\"admin\",\"id\":\"6f7dc816f5d04427a599f7129bdd2b1b\",\"viewCount\":\"123\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-06 20:51:03');
INSERT INTO `sys_oper_log` VALUES (241, '资讯管理', 2, 'com.ruoyi.project.information.controller.InformationController.edit()', 'PUT', 1, 'admin', NULL, '/information', '127.0.0.1', '内网IP', '{\"remark\":\"\",\"updateTime\":1578315218741,\"params\":{},\"title\":\"3333\",\"content\":\"33333\",\"createBy\":\"admin\",\"createTime\":1577285747000,\"updateBy\":\"admin\",\"id\":\"6f7dc816f5d04427a599f7129bdd2b1b\",\"viewCount\":\"123\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-06 20:53:38');
INSERT INTO `sys_oper_log` VALUES (242, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/01/06/c9f9def7925f26c85e8ae9fe110c37d9.jpg\"}', 0, NULL, '2020-01-06 20:56:31');
INSERT INTO `sys_oper_log` VALUES (243, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/01/06/6a3eba58f917476717d0714f906e5d91.jpg\"}', 0, NULL, '2020-01-06 20:57:24');
INSERT INTO `sys_oper_log` VALUES (244, '资讯管理', 2, 'com.ruoyi.project.information.controller.InformationController.edit()', 'PUT', 1, 'admin', NULL, '/information', '127.0.0.1', '内网IP', '{\"infoImg\":\"/profile/infoImg/2020/01/06/6a3eba58f917476717d0714f906e5d91.jpg\",\"remark\":\"\",\"updateTime\":1578315454789,\"params\":{},\"title\":\"3333\",\"content\":\"33333\",\"createBy\":\"admin\",\"createTime\":1577285747000,\"updateBy\":\"admin\",\"id\":\"6f7dc816f5d04427a599f7129bdd2b1b\",\"viewCount\":\"123\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-06 20:57:34');
INSERT INTO `sys_oper_log` VALUES (245, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/01/06/430adcd5d0535e9b5126a672ee39fc81.jpg\"}', 0, NULL, '2020-01-06 20:58:11');
INSERT INTO `sys_oper_log` VALUES (246, '资讯管理', 2, 'com.ruoyi.project.information.controller.InformationController.edit()', 'PUT', 1, 'admin', NULL, '/information', '127.0.0.1', '内网IP', '{\"infoImg\":\"/profile/infoImg/2020/01/06/430adcd5d0535e9b5126a672ee39fc81.jpg\",\"remark\":\"\",\"updateTime\":1578315492656,\"params\":{},\"title\":\"123\",\"content\":\"123123\",\"createBy\":\"admin\",\"createTime\":1577949489000,\"updateBy\":\"admin\",\"id\":\"3ab1ad4e3de34476ad03e54df7cdbd8f\",\"viewCount\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-06 20:58:12');
INSERT INTO `sys_oper_log` VALUES (247, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/01/06/2b1ae3f36f157627d4ab3b0cf208227b.jpg\"}', 0, NULL, '2020-01-06 21:05:21');
INSERT INTO `sys_oper_log` VALUES (248, '资讯管理', 1, 'com.ruoyi.project.information.controller.InformationController.add()', 'POST', 1, 'admin', NULL, '/information', '127.0.0.1', '内网IP', '{\"infoImg\":\"/profile/infoImg/2020/01/06/2b1ae3f36f157627d4ab3b0cf208227b.jpg\",\"params\":{},\"title\":\"4444\",\"content\":\"22222\",\"createBy\":\"admin\",\"createTime\":1578315924157,\"id\":\"af058beb7f2743778a316603104049f9\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-06 21:05:24');
INSERT INTO `sys_oper_log` VALUES (249, '资讯管理', 2, 'com.ruoyi.project.information.controller.InformationController.edit()', 'PUT', 1, 'admin', NULL, '/information', '127.0.0.1', '内网IP', '{\"infoImg\":\"/profile/infoImg/2020/01/06/430adcd5d0535e9b5126a672ee39fc81.jpg\",\"remark\":\"\",\"updateTime\":1578320971844,\"params\":{},\"title\":\"震惊!新疆小伙看视频导致笑死，背后的秘密居然是这样的!\",\"content\":\"123123\",\"createBy\":\"admin\",\"createTime\":1577949489000,\"updateBy\":\"admin\",\"id\":\"3ab1ad4e3de34476ad03e54df7cdbd8f\",\"viewCount\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-06 22:29:31');
INSERT INTO `sys_oper_log` VALUES (250, '资讯管理', 2, 'com.ruoyi.project.information.controller.InformationController.edit()', 'PUT', 1, 'admin', NULL, '/information', '127.0.0.1', '内网IP', '{\"infoImg\":\"/profile/infoImg/2020/01/06/6a3eba58f917476717d0714f906e5d91.jpg\",\"remark\":\"\",\"updateTime\":1578320999077,\"params\":{},\"title\":\"震惊!男人看了会沉默，女人看了会流泪!不转不是中国人!\",\"content\":\"33333\",\"createBy\":\"admin\",\"createTime\":1577285747000,\"updateBy\":\"admin\",\"id\":\"6f7dc816f5d04427a599f7129bdd2b1b\",\"viewCount\":\"123\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-06 22:29:59');
INSERT INTO `sys_oper_log` VALUES (251, '资讯管理', 2, 'com.ruoyi.project.information.controller.InformationController.edit()', 'PUT', 1, 'admin', NULL, '/information', '127.0.0.1', '内网IP', '{\"infoImg\":\"/profile/infoImg/2020/01/06/2b1ae3f36f157627d4ab3b0cf208227b.jpg\",\"remark\":\"\",\"updateTime\":1578321146747,\"params\":{},\"title\":\"发现富人不想告诉你快速致富的方法\",\"content\":\"22222\",\"createBy\":\"admin\",\"createTime\":1578315924000,\"updateBy\":\"admin\",\"id\":\"af058beb7f2743778a316603104049f9\",\"viewCount\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-06 22:32:26');
INSERT INTO `sys_oper_log` VALUES (252, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/01/06/d7184bf787bf37ff816962593a0ae51d.jpg\"}', 0, NULL, '2020-01-06 22:32:45');
INSERT INTO `sys_oper_log` VALUES (253, '资讯管理', 2, 'com.ruoyi.project.information.controller.InformationController.edit()', 'PUT', 1, 'admin', NULL, '/information', '127.0.0.1', '内网IP', '{\"infoImg\":\"/profile/infoImg/2020/01/06/d7184bf787bf37ff816962593a0ae51d.jpg\",\"remark\":\"\",\"updateTime\":1578321166617,\"params\":{},\"title\":\"震惊!男人看了会沉默，女人看了会流泪!不转不是中国人!\",\"content\":\"33333\",\"createBy\":\"admin\",\"createTime\":1577285747000,\"updateBy\":\"admin\",\"id\":\"6f7dc816f5d04427a599f7129bdd2b1b\",\"viewCount\":\"123\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-06 22:32:46');
INSERT INTO `sys_oper_log` VALUES (254, '回收站管理', 2, 'com.ruoyi.project.cycling.controller.CyclingController.edit()', 'PUT', 1, 'admin', NULL, '/cycling', '127.0.0.1', '内网IP', '{\"cyclingAddress\":\"北京市顺义区天竺镇星巴克咖啡(3号航站楼E区)北京首都国际机场\",\"cyclingMan\":\"李先生\",\"remark\":\"\",\"updateTime\":1578323842604,\"params\":{},\"createBy\":\"admin\",\"createTime\":1577948229000,\"updateBy\":\"admin\",\"cyclingMobile\":\"17765603040\",\"id\":\"0593cbd727204f5387e489888221daf9\",\"addressY\":\"40.078895\",\"addressX\":\"116.605235\",\"cyclingImg\":\"/profile/CycImg/2020/01/02/12e10db8ebfb41da50957a06c4418407.jpg\",\"cyclingName\":\"铭记废品回收站\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-06 23:17:22');
INSERT INTO `sys_oper_log` VALUES (255, '回收站管理', 2, 'com.ruoyi.project.cycling.controller.CyclingController.edit()', 'PUT', 1, 'admin', NULL, '/cycling', '127.0.0.1', '内网IP', '{\"cyclingAddress\":\"北京市顺义区仁和镇万晴园\",\"cyclingMan\":\"张先生\",\"remark\":\"\",\"updateTime\":1578323871289,\"params\":{},\"createBy\":\"admin\",\"createTime\":1577948360000,\"updateBy\":\"admin\",\"cyclingMobile\":\"17765603324\",\"id\":\"4345ef5de02a437c882fa2efce29d7e9\",\"addressY\":\"40.0852\",\"addressX\":\"116.719734\",\"cyclingImg\":\"/profile/CycImg/2020/01/02/41f96234b8212594838450ff674fba7e.jpeg\",\"cyclingName\":\"百益废品回收站\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-06 23:17:51');
INSERT INTO `sys_oper_log` VALUES (256, '回收站管理', 2, 'com.ruoyi.project.cycling.controller.CyclingController.edit()', 'PUT', 1, 'admin', NULL, '/cycling', '127.0.0.1', '内网IP', '{\"cyclingAddress\":\"北京市顺义区空港街道北京市天竺房地产开发公司(裕华路)\",\"cyclingMan\":\"邱先生\",\"remark\":\"\",\"updateTime\":1578323902921,\"params\":{},\"createBy\":\"admin\",\"createTime\":1577948441000,\"updateBy\":\"admin\",\"cyclingMobile\":\"17765602265\",\"id\":\"a11e23b86b4e4615b8cfc1ddf12a10be\",\"addressY\":\"40.074955\",\"addressX\":\"116.546871\",\"cyclingImg\":\"/profile/CycImg/2020/01/02/5f4efb65485b2ba0b67c9e2b630d0127.jpg\",\"cyclingName\":\"百宝箱废品回收站\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-06 23:18:22');
INSERT INTO `sys_oper_log` VALUES (257, '回收站图片', 2, 'com.ruoyi.project.cycling.controller.CyclingController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/cycling/uploadCyclingImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/CycImg/2020/01/06/aa7251b63848dfd7e08be33734584143.jpg\"}', 0, NULL, '2020-01-06 23:44:02');
INSERT INTO `sys_oper_log` VALUES (258, '回收站图片', 2, 'com.ruoyi.project.cycling.controller.CyclingController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/cycling/uploadCyclingImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/CycImg/2020/01/06/81c15bd5d04871c28474fde2b8d866c5.jpg\"}', 0, NULL, '2020-01-06 23:44:07');
INSERT INTO `sys_oper_log` VALUES (259, '回收站管理', 2, 'com.ruoyi.project.cycling.controller.CyclingController.edit()', 'PUT', 1, 'admin', NULL, '/cycling', '127.0.0.1', '内网IP', '{\"cyclingAddress\":\"北京市顺义区天竺镇星巴克咖啡(3号航站楼E区)北京首都国际机场\",\"cyclingMan\":\"李先生\",\"remark\":\"\",\"updateTime\":1578325448497,\"params\":{},\"createBy\":\"admin\",\"createTime\":1577948229000,\"updateBy\":\"admin\",\"cyclingMobile\":\"17765603040\",\"id\":\"0593cbd727204f5387e489888221daf9\",\"addressY\":\"40.078895\",\"addressX\":\"116.605235\",\"cyclingImg\":\"/profile/CycImg/2020/01/06/81c15bd5d04871c28474fde2b8d866c5.jpg\",\"cyclingName\":\"铭记废品回收站\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-06 23:44:08');
INSERT INTO `sys_oper_log` VALUES (260, '回收站图片', 2, 'com.ruoyi.project.cycling.controller.CyclingController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/cycling/uploadCyclingImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/CycImg/2020/01/06/83f2f6ea463477e4ed187b5afd877819.jpg\"}', 0, NULL, '2020-01-06 23:44:34');
INSERT INTO `sys_oper_log` VALUES (261, '回收站管理', 2, 'com.ruoyi.project.cycling.controller.CyclingController.edit()', 'PUT', 1, 'admin', NULL, '/cycling', '127.0.0.1', '内网IP', '{\"cyclingAddress\":\"北京市顺义区仁和镇万晴园\",\"cyclingMan\":\"张先生\",\"remark\":\"\",\"updateTime\":1578325476386,\"params\":{},\"createBy\":\"admin\",\"createTime\":1577948360000,\"updateBy\":\"admin\",\"cyclingMobile\":\"17765603324\",\"id\":\"4345ef5de02a437c882fa2efce29d7e9\",\"addressY\":\"40.0852\",\"addressX\":\"116.719734\",\"cyclingImg\":\"/profile/CycImg/2020/01/06/83f2f6ea463477e4ed187b5afd877819.jpg\",\"cyclingName\":\"百益废品回收站\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-06 23:44:36');
INSERT INTO `sys_oper_log` VALUES (262, '回收站图片', 2, 'com.ruoyi.project.cycling.controller.CyclingController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/cycling/uploadCyclingImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/CycImg/2020/01/06/f2448613b16a70c568508b11fa22b2c1.jpg\"}', 0, NULL, '2020-01-06 23:44:47');
INSERT INTO `sys_oper_log` VALUES (263, '回收站管理', 2, 'com.ruoyi.project.cycling.controller.CyclingController.edit()', 'PUT', 1, 'admin', NULL, '/cycling', '127.0.0.1', '内网IP', '{\"cyclingAddress\":\"北京市顺义区空港街道北京市天竺房地产开发公司(裕华路)\",\"cyclingMan\":\"邱先生\",\"remark\":\"\",\"updateTime\":1578325488759,\"params\":{},\"createBy\":\"admin\",\"createTime\":1577948441000,\"updateBy\":\"admin\",\"cyclingMobile\":\"17765602265\",\"id\":\"a11e23b86b4e4615b8cfc1ddf12a10be\",\"addressY\":\"40.074955\",\"addressX\":\"116.546871\",\"cyclingImg\":\"/profile/CycImg/2020/01/06/f2448613b16a70c568508b11fa22b2c1.jpg\",\"cyclingName\":\"百宝箱废品回收站\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-06 23:44:48');
INSERT INTO `sys_oper_log` VALUES (264, '资讯管理', 2, 'com.ruoyi.project.information.controller.InformationController.edit()', 'PUT', 1, 'admin', NULL, '/information', '127.0.0.1', '内网IP', '{\"infoImg\":\"/profile/infoImg/2020/01/06/430adcd5d0535e9b5126a672ee39fc81.jpg\",\"remark\":\"\",\"updateTime\":1578408783225,\"source\":\"UC日报\",\"params\":{},\"title\":\"震惊!新疆小伙看视频导致笑死，背后的秘密居然是这样的!\",\"content\":\"123123\",\"createBy\":\"admin\",\"createTime\":1577949489000,\"updateBy\":\"admin\",\"id\":\"3ab1ad4e3de34476ad03e54df7cdbd8f\",\"viewCount\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-07 22:53:03');
INSERT INTO `sys_oper_log` VALUES (265, '资讯管理', 2, 'com.ruoyi.project.information.controller.InformationController.edit()', 'PUT', 1, 'admin', NULL, '/information', '127.0.0.1', '内网IP', '{\"infoImg\":\"/profile/infoImg/2020/01/06/d7184bf787bf37ff816962593a0ae51d.jpg\",\"remark\":\"\",\"updateTime\":1578408792889,\"source\":\"佛山日报\",\"params\":{},\"title\":\"震惊!男人看了会沉默，女人看了会流泪!不转不是中国人!\",\"content\":\"33333\",\"createBy\":\"admin\",\"createTime\":1577285747000,\"updateBy\":\"admin\",\"id\":\"6f7dc816f5d04427a599f7129bdd2b1b\",\"viewCount\":\"123\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-07 22:53:12');
INSERT INTO `sys_oper_log` VALUES (266, '资讯管理', 2, 'com.ruoyi.project.information.controller.InformationController.edit()', 'PUT', 1, 'admin', NULL, '/information', '127.0.0.1', '内网IP', '{\"infoImg\":\"/profile/infoImg/2020/01/06/2b1ae3f36f157627d4ab3b0cf208227b.jpg\",\"remark\":\"\",\"updateTime\":1578408813147,\"source\":\"富人排行榜\",\"params\":{},\"title\":\"发现富人不想告诉你快速致富的方法\",\"content\":\"22222\",\"createBy\":\"admin\",\"createTime\":1578315924000,\"updateBy\":\"admin\",\"id\":\"af058beb7f2743778a316603104049f9\",\"viewCount\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-07 22:53:33');
INSERT INTO `sys_oper_log` VALUES (267, '回收站管理', 2, 'com.ruoyi.project.cycling.controller.CyclingController.edit()', 'PUT', 1, 'admin', NULL, '/cycling', '127.0.0.1', '内网IP', '{\"cyclingAddress\":\"广东省佛山市禅城区祖庙街道垂虹村新荣大厦\",\"cyclingMan\":\"李先生\",\"remark\":\"\",\"updateTime\":1578497385273,\"params\":{},\"createBy\":\"admin\",\"createTime\":1577948229000,\"updateBy\":\"admin\",\"cyclingMobile\":\"17765603040\",\"id\":\"0593cbd727204f5387e489888221daf9\",\"addressY\":\"23.01502\",\"addressX\":\"113.11537\",\"cyclingImg\":\"/profile/CycImg/2020/01/06/81c15bd5d04871c28474fde2b8d866c5.jpg\",\"cyclingName\":\"铭记废品回收站\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-08 23:29:45');
INSERT INTO `sys_oper_log` VALUES (268, '回收站管理', 2, 'com.ruoyi.project.cycling.controller.CyclingController.edit()', 'PUT', 1, 'admin', NULL, '/cycling', '127.0.0.1', '内网IP', '{\"cyclingAddress\":\"广东省佛山市禅城区石湾镇街道忠信路12号南风古灶\",\"cyclingMan\":\"张先生\",\"remark\":\"\",\"updateTime\":1578497401700,\"params\":{},\"createBy\":\"admin\",\"createTime\":1577948360000,\"updateBy\":\"admin\",\"cyclingMobile\":\"17765603324\",\"id\":\"4345ef5de02a437c882fa2efce29d7e9\",\"addressY\":\"23.004276\",\"addressX\":\"113.077562\",\"cyclingImg\":\"/profile/CycImg/2020/01/06/83f2f6ea463477e4ed187b5afd877819.jpg\",\"cyclingName\":\"百益废品回收站\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-08 23:30:01');
INSERT INTO `sys_oper_log` VALUES (269, '回收站管理', 2, 'com.ruoyi.project.cycling.controller.CyclingController.edit()', 'PUT', 1, 'admin', NULL, '/cycling', '127.0.0.1', '内网IP', '{\"cyclingAddress\":\"广东省佛山市南海区狮山镇佛山沙堤机场\",\"cyclingMan\":\"邱先生\",\"remark\":\"\",\"updateTime\":1578497414432,\"params\":{},\"createBy\":\"admin\",\"createTime\":1577948441000,\"updateBy\":\"admin\",\"cyclingMobile\":\"17765602265\",\"id\":\"a11e23b86b4e4615b8cfc1ddf12a10be\",\"addressY\":\"23.078441\",\"addressX\":\"113.073528\",\"cyclingImg\":\"/profile/CycImg/2020/01/06/f2448613b16a70c568508b11fa22b2c1.jpg\",\"cyclingName\":\"百宝箱废品回收站\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-08 23:30:14');
INSERT INTO `sys_oper_log` VALUES (270, '回收站管理', 2, 'com.ruoyi.project.cycling.controller.CyclingController.edit()', 'PUT', 1, 'admin', NULL, '/cycling', '127.0.0.1', '内网IP', '{\"cyclingAddress\":\"广东省佛山市禅城区祖庙街道垂虹村新荣大厦\",\"cyclingMan\":\"李先生\",\"remark\":\"\",\"updateTime\":1578497606097,\"params\":{},\"createBy\":\"admin\",\"createTime\":1577948229000,\"updateBy\":\"admin\",\"cyclingMobile\":\"17765603040\",\"id\":\"0593cbd727204f5387e489888221daf9\",\"addressY\":\"23.01502\",\"addressX\":\"113.11537\",\"cyclingImg\":\"/profile/CycImg/2020/01/06/81c15bd5d04871c28474fde2b8d866c5.jpg\",\"cyclingIntroduce\":\"专业上门收购废品！有大小货车拉货。有工人搬运，欢迎老板的来电咨询。\",\"cyclingName\":\"铭记废品回收站\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-08 23:33:26');
INSERT INTO `sys_oper_log` VALUES (271, '回收站管理', 2, 'com.ruoyi.project.cycling.controller.CyclingController.edit()', 'PUT', 1, 'admin', NULL, '/cycling', '127.0.0.1', '内网IP', '{\"cyclingAddress\":\"广东省佛山市禅城区石湾镇街道忠信路12号南风古灶\",\"cyclingMan\":\"张先生\",\"remark\":\"\",\"updateTime\":1578497684473,\"params\":{},\"createBy\":\"admin\",\"createTime\":1577948360000,\"updateBy\":\"admin\",\"cyclingMobile\":\"17765603324\",\"id\":\"4345ef5de02a437c882fa2efce29d7e9\",\"addressY\":\"23.004276\",\"addressX\":\"113.077562\",\"cyclingImg\":\"/profile/CycImg/2020/01/06/83f2f6ea463477e4ed187b5afd877819.jpg\",\"cyclingIntroduce\":\"公司秉承“诚信经营，用心服务”的理念，为您提供优质的产品和服务。欢迎来电咨询！\",\"cyclingName\":\"百益废品回收站\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-08 23:34:44');
INSERT INTO `sys_oper_log` VALUES (272, '回收站管理', 2, 'com.ruoyi.project.cycling.controller.CyclingController.edit()', 'PUT', 1, 'admin', NULL, '/cycling', '127.0.0.1', '内网IP', '{\"cyclingAddress\":\"广东省佛山市南海区狮山镇佛山沙堤机场\",\"cyclingMan\":\"邱先生\",\"remark\":\"\",\"updateTime\":1578497737955,\"params\":{},\"createBy\":\"admin\",\"createTime\":1577948441000,\"updateBy\":\"admin\",\"cyclingMobile\":\"17765602265\",\"id\":\"a11e23b86b4e4615b8cfc1ddf12a10be\",\"addressY\":\"23.078441\",\"addressX\":\"113.073528\",\"cyclingImg\":\"/profile/CycImg/2020/01/06/f2448613b16a70c568508b11fa22b2c1.jpg\",\"cyclingIntroduce\":\"专业收废铁,废不锈钢,废铜,废铝,废锌,废铅,废塑料,废纸板等本站诚实经营,价格合理,保证客户利益最大化!重视与客户的长期联盟合作关系!\",\"cyclingName\":\"百宝箱废品回收站\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-08 23:35:37');
INSERT INTO `sys_oper_log` VALUES (273, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'app_img', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-13 22:30:48');
INSERT INTO `sys_oper_log` VALUES (274, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"functionAuthor\":\"zhao\",\"columns\":[{\"usableColumn\":false,\"columnId\":55,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"id\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1578925848000,\"tableId\":9,\"pk\":true,\"columnName\":\"id\"},{\"usableColumn\":false,\"columnId\":56,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"imgPath\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"图片路径\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1578925848000,\"isEdit\":\"1\",\"tableId\":9,\"pk\":false,\"columnName\":\"img_path\"},{\"usableColumn\":false,\"columnId\":57,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"imgTab\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"图片标记（0-首页，1-资讯页）\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"char(1)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1578925848000,\"isEdit\":\"1\",\"tableId\":9,\"pk\":false,\"columnName\":\"img_tab\"},{\"usableColumn\":false,\"columnId\":58,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"delFlag\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"删除标志（0代表存在 1代表删除）\",\"sort\":4,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"char(1)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1578925848000,\"tableId\":9,\"pk\":false,\"columnName\":\"del_flag\"},', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-13 22:31:51');
INSERT INTO `sys_oper_log` VALUES (275, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2020-01-13 22:31:55');
INSERT INTO `sys_oper_log` VALUES (276, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"documentation\",\"orderNum\":\"4\",\"menuName\":\"首页管理\",\"params\":{},\"parentId\":0,\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-13 22:39:23');
INSERT INTO `sys_oper_log` VALUES (277, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"view\",\"orderNum\":\"1\",\"menuName\":\"轮播图管理\",\"params\":{},\"parentId\":2031,\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-13 22:40:34');
INSERT INTO `sys_oper_log` VALUES (278, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"view\",\"orderNum\":\"1\",\"menuName\":\"轮播图管理\",\"params\":{},\"parentId\":2031,\"path\":\"img\",\"component\":\"appImg/index\",\"children\":[],\"createTime\":1578926434000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2032,\"menuType\":\"C\",\"perms\":\"system:img:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-13 22:41:16');
INSERT INTO `sys_oper_log` VALUES (279, '菜单管理', 3, 'com.ruoyi.project.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2025', '127.0.0.1', '内网IP', '{menuId=2025}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":500}', 0, NULL, '2020-01-13 22:41:32');
INSERT INTO `sys_oper_log` VALUES (280, '菜单管理', 3, 'com.ruoyi.project.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2030', '127.0.0.1', '内网IP', '{menuId=2030}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-13 22:41:40');
INSERT INTO `sys_oper_log` VALUES (281, '菜单管理', 3, 'com.ruoyi.project.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2029', '127.0.0.1', '内网IP', '{menuId=2029}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-13 22:41:43');
INSERT INTO `sys_oper_log` VALUES (282, '菜单管理', 3, 'com.ruoyi.project.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2028', '127.0.0.1', '内网IP', '{menuId=2028}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-13 22:41:46');
INSERT INTO `sys_oper_log` VALUES (283, '菜单管理', 3, 'com.ruoyi.project.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2027', '127.0.0.1', '内网IP', '{menuId=2027}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-13 22:41:49');
INSERT INTO `sys_oper_log` VALUES (284, '菜单管理', 3, 'com.ruoyi.project.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2026', '127.0.0.1', '内网IP', '{menuId=2026}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-13 22:41:51');
INSERT INTO `sys_oper_log` VALUES (285, '菜单管理', 3, 'com.ruoyi.project.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2025', '127.0.0.1', '内网IP', '{menuId=2025}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-13 22:41:55');
INSERT INTO `sys_oper_log` VALUES (286, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"view\",\"orderNum\":\"1\",\"menuName\":\"轮播图管理\",\"params\":{},\"parentId\":2031,\"path\":\"img\",\"component\":\"appImg/index\",\"children\":[],\"createTime\":1578926434000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2032,\"menuType\":\"C\",\"perms\":\"system:img:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-13 22:42:13');
INSERT INTO `sys_oper_log` VALUES (287, '用户管理', 2, 'com.ruoyi.project.system.controller.SysUserController.changeStatus()', 'PUT', 1, 'admin', NULL, '/system/user/changeStatus', '127.0.0.1', '内网IP', '{\"admin\":true,\"params\":{},\"userId\":1,\"status\":\"1\"}', 'null', 1, '不允许操作超级管理员用户', '2020-01-13 22:57:33');
INSERT INTO `sys_oper_log` VALUES (288, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/01/13/26d105167fbcd2094bbfdfaccaea1629.jpg\"}', 0, NULL, '2020-01-13 23:05:09');
INSERT INTO `sys_oper_log` VALUES (289, '图片轮播图', 1, 'com.ruoyi.project.appImg.controller.AppImgController.add()', 'POST', 1, 'admin', NULL, '/system/img', '127.0.0.1', '内网IP', '{\"params\":{},\"openFlag\":\"0\",\"createTime\":1578927915903,\"imgPath\":\"/profile/infoImg/2020/01/13/26d105167fbcd2094bbfdfaccaea1629.jpg\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.project.appImg.mapper.AppImgMapper.insertAppImg-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into app_img          ( img_path,                                       open_flag,             create_time )           values ( ?,                                       ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2020-01-13 23:05:16');
INSERT INTO `sys_oper_log` VALUES (290, '图片轮播图', 1, 'com.ruoyi.project.appImg.controller.AppImgController.add()', 'POST', 1, 'admin', NULL, '/system/img', '127.0.0.1', '内网IP', '{\"params\":{},\"openFlag\":\"0\",\"createTime\":1578928000844,\"imgPath\":\"/profile/infoImg/2020/01/13/26d105167fbcd2094bbfdfaccaea1629.jpg\",\"id\":\"b898c97f50a147f0869b52eebb08c703\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'img_tab\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.project.appImg.mapper.AppImgMapper.insertAppImg-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into app_img          ( id,             img_path,                                       open_flag,             create_time )           values ( ?,             ?,                                       ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'img_tab\' doesn\'t have a default value\n; Field \'img_tab\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'img_tab\' doesn\'t have a default value', '2020-01-13 23:06:40');
INSERT INTO `sys_oper_log` VALUES (291, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/01/13/33125b0da3ed07ba07293ac9a2ac346b.jpg\"}', 0, NULL, '2020-01-13 23:07:44');
INSERT INTO `sys_oper_log` VALUES (292, '图片轮播图', 1, 'com.ruoyi.project.appImg.controller.AppImgController.add()', 'POST', 1, 'admin', NULL, '/system/img', '127.0.0.1', '内网IP', '{\"params\":{},\"openFlag\":\"0\",\"createTime\":1578928066025,\"imgPath\":\"/profile/infoImg/2020/01/13/33125b0da3ed07ba07293ac9a2ac346b.jpg\",\"id\":\"f4a995cd47b94396a36c2badbffc56dd\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'img_tab\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.project.appImg.mapper.AppImgMapper.insertAppImg-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into app_img          ( id,             img_path,                                       open_flag,             create_time )           values ( ?,             ?,                                       ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'img_tab\' doesn\'t have a default value\n; Field \'img_tab\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'img_tab\' doesn\'t have a default value', '2020-01-13 23:07:46');
INSERT INTO `sys_oper_log` VALUES (293, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/01/13/cd9154eb8157b49ddf65f7fb25b6a1be.jpg\"}', 0, NULL, '2020-01-13 23:08:20');
INSERT INTO `sys_oper_log` VALUES (294, '图片轮播图', 1, 'com.ruoyi.project.appImg.controller.AppImgController.add()', 'POST', 1, 'admin', NULL, '/system/img', '127.0.0.1', '内网IP', '{\"params\":{},\"imgTab\":\"0\",\"openFlag\":\"0\",\"createTime\":1578928102508,\"imgPath\":\"/profile/infoImg/2020/01/13/cd9154eb8157b49ddf65f7fb25b6a1be.jpg\",\"id\":\"5e16472a0bf54f329f1ab43760b4439c\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-13 23:08:22');
INSERT INTO `sys_oper_log` VALUES (295, '图片状态修改', 2, 'com.ruoyi.project.appImg.controller.AppImgController.changeStatus()', 'PUT', 1, 'admin', NULL, '/system/img/changeImgStatus', '127.0.0.1', '内网IP', '{\"updateTime\":1578928990574,\"params\":{},\"updateBy\":\"admin\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2020-01-13 23:23:10');
INSERT INTO `sys_oper_log` VALUES (296, '图片状态修改', 2, 'com.ruoyi.project.appImg.controller.AppImgController.changeStatus()', 'PUT', 1, 'admin', NULL, '/system/img/changeImgStatus', '127.0.0.1', '内网IP', '{\"updateTime\":1578929026198,\"params\":{},\"updateBy\":\"admin\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2020-01-13 23:23:46');
INSERT INTO `sys_oper_log` VALUES (297, '图片状态修改', 2, 'com.ruoyi.project.appImg.controller.AppImgController.changeStatus()', 'PUT', 1, 'admin', NULL, '/system/img/changeImgStatus', '127.0.0.1', '内网IP', '{\"updateTime\":1578929074249,\"params\":{},\"openFlag\":\"1\",\"updateBy\":\"admin\",\"id\":\"5e16472a0bf54f329f1ab43760b4439c\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-13 23:24:34');
INSERT INTO `sys_oper_log` VALUES (298, '图片状态修改', 2, 'com.ruoyi.project.appImg.controller.AppImgController.changeStatus()', 'PUT', 1, 'admin', NULL, '/system/img/changeImgStatus', '127.0.0.1', '内网IP', '{\"updateTime\":1578929080233,\"params\":{},\"openFlag\":\"0\",\"updateBy\":\"admin\",\"id\":\"5e16472a0bf54f329f1ab43760b4439c\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-13 23:24:40');
INSERT INTO `sys_oper_log` VALUES (299, '图片状态修改', 2, 'com.ruoyi.project.appImg.controller.AppImgController.changeStatus()', 'PUT', 1, 'admin', NULL, '/system/img/changeImgStatus', '127.0.0.1', '内网IP', '{\"updateTime\":1578929083448,\"params\":{},\"openFlag\":\"1\",\"updateBy\":\"admin\",\"id\":\"5e16472a0bf54f329f1ab43760b4439c\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-13 23:24:43');
INSERT INTO `sys_oper_log` VALUES (300, '图片状态修改', 2, 'com.ruoyi.project.appImg.controller.AppImgController.changeStatus()', 'PUT', 1, 'admin', NULL, '/system/img/changeImgStatus', '127.0.0.1', '内网IP', '{\"updateTime\":1578929097188,\"params\":{},\"openFlag\":\"0\",\"updateBy\":\"admin\",\"id\":\"5e16472a0bf54f329f1ab43760b4439c\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-13 23:24:57');
INSERT INTO `sys_oper_log` VALUES (301, '图片状态修改', 2, 'com.ruoyi.project.appImg.controller.AppImgController.changeStatus()', 'PUT', 1, 'admin', NULL, '/system/img/changeImgStatus', '127.0.0.1', '内网IP', '{\"updateTime\":1578929099732,\"params\":{},\"openFlag\":\"1\",\"updateBy\":\"admin\",\"id\":\"5e16472a0bf54f329f1ab43760b4439c\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-13 23:24:59');
INSERT INTO `sys_oper_log` VALUES (302, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"view\",\"orderNum\":\"2\",\"menuName\":\"轮播图管理\",\"params\":{},\"parentId\":2009,\"path\":\"img\",\"component\":\"infoImg/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"perms\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-13 23:29:03');
INSERT INTO `sys_oper_log` VALUES (303, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"view\",\"orderNum\":\"2\",\"menuName\":\"轮播图管理\",\"params\":{},\"parentId\":2009,\"path\":\"img\",\"component\":\"infoImg/index\",\"children\":[],\"createTime\":1578929343000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2033,\"menuType\":\"C\",\"perms\":\"system:imgApp:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-13 23:29:22');
INSERT INTO `sys_oper_log` VALUES (304, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"view\",\"orderNum\":\"2\",\"menuName\":\"轮播图管理\",\"params\":{},\"parentId\":2009,\"path\":\"img\",\"component\":\"infoImg/index\",\"children\":[],\"createTime\":1578929343000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2033,\"menuType\":\"C\",\"perms\":\"system:img:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-13 23:29:37');
INSERT INTO `sys_oper_log` VALUES (305, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/01/13/ee7d326d7b63ef99e6e109dfe914d6c4.jpg\"}', 0, NULL, '2020-01-13 23:29:51');
INSERT INTO `sys_oper_log` VALUES (306, '图片轮播图', 1, 'com.ruoyi.project.appImg.controller.AppImgController.add()', 'POST', 1, 'admin', NULL, '/system/img', '127.0.0.1', '内网IP', '{\"params\":{},\"imgTab\":\"1\",\"openFlag\":\"0\",\"createTime\":1578929393742,\"imgPath\":\"/profile/infoImg/2020/01/13/ee7d326d7b63ef99e6e109dfe914d6c4.jpg\",\"id\":\"5210c963a20c4fab87199bd1d1287130\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-13 23:29:53');
INSERT INTO `sys_oper_log` VALUES (307, '图片状态修改', 2, 'com.ruoyi.project.appImg.controller.AppImgController.changeStatus()', 'PUT', 1, 'admin', NULL, '/system/img/changeImgStatus', '127.0.0.1', '内网IP', '{\"updateTime\":1578929398298,\"params\":{},\"openFlag\":\"1\",\"updateBy\":\"admin\",\"id\":\"5210c963a20c4fab87199bd1d1287130\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-13 23:29:58');
INSERT INTO `sys_oper_log` VALUES (308, '图片状态修改', 2, 'com.ruoyi.project.appImg.controller.AppImgController.changeStatus()', 'PUT', 1, 'admin', NULL, '/system/img/changeImgStatus', '127.0.0.1', '内网IP', '{\"updateTime\":1578929417110,\"params\":{},\"openFlag\":\"0\",\"updateBy\":\"admin\",\"id\":\"5210c963a20c4fab87199bd1d1287130\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-13 23:30:17');
INSERT INTO `sys_oper_log` VALUES (309, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/01/13/b784ae0953ab620ff7f6f0433019cf04.jpg\"}', 0, NULL, '2020-01-13 23:30:31');
INSERT INTO `sys_oper_log` VALUES (310, '图片轮播图', 1, 'com.ruoyi.project.appImg.controller.AppImgController.add()', 'POST', 1, 'admin', NULL, '/system/img', '127.0.0.1', '内网IP', '{\"params\":{},\"imgTab\":\"1\",\"openFlag\":\"0\",\"createTime\":1578929433728,\"imgPath\":\"/profile/infoImg/2020/01/13/b784ae0953ab620ff7f6f0433019cf04.jpg\",\"id\":\"c8f207768dea4d44a5c16703f7250a92\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-13 23:30:33');
INSERT INTO `sys_oper_log` VALUES (311, '图片状态修改', 2, 'com.ruoyi.project.appImg.controller.AppImgController.changeStatus()', 'PUT', 1, 'admin', NULL, '/system/img/changeImgStatus', '127.0.0.1', '内网IP', '{\"updateTime\":1578929449548,\"params\":{},\"openFlag\":\"1\",\"updateBy\":\"admin\",\"id\":\"c8f207768dea4d44a5c16703f7250a92\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-13 23:30:49');
INSERT INTO `sys_oper_log` VALUES (312, '图片轮播图', 3, 'com.ruoyi.project.appImg.controller.AppImgController.remove()', 'DELETE', 1, 'admin', NULL, '/system/img/c8f207768dea4d44a5c16703f7250a92', '127.0.0.1', '内网IP', '{ids=c8f207768dea4d44a5c16703f7250a92}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-01-13 23:31:55');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '管理员', 'admin', 1, '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '/profile/avatar/2020/01/03/fc8521175a8a8a82e150a2a6275f82f6.jpeg', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '测试员');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);

SET FOREIGN_KEY_CHECKS = 1;
