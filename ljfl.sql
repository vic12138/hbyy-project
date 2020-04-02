/*
 Navicat Premium Data Transfer

 Source Server         : 阿里云
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : 116.62.162.64:3306
 Source Schema         : ljfl

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 02/04/2020 11:23:46
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
INSERT INTO `app_img` VALUES ('0344c72db22f461ab2ed1d7222d1eef3', '/profile/infoImg/2020/03/07/0cd1e4904522936b918f251667c9942f.jpg', '1', '0', '0', '2020-03-07 14:15:01', '', NULL, '');
INSERT INTO `app_img` VALUES ('1eb632aa5a2349359019ee0ad3a20462', '/profile/infoImg/2020/03/27/f4ec24a215844750e5452367805c0e73.jpg', '0', '0', '0', '2020-03-27 16:59:02', 'admin', '2020-03-27 20:40:52', '');
INSERT INTO `app_img` VALUES ('409cf170cc01483b8e423c714e2aca3f', '/profile/infoImg/2020/03/27/cf1f3cc33eb4c064a570c8c59c904769.jpg', '0', '0', '0', '2020-03-27 20:41:03', '', NULL, '');
INSERT INTO `app_img` VALUES ('51818d4b727b49dead7b62dde2067d46', '/profile/infoImg/2020/03/09/e96bf08faef8dc89a32333f886c9841e.jpg', '0', '0', '0', '2020-03-09 17:24:41', '', NULL, '');
INSERT INTO `app_img` VALUES ('b20b74ce67364fd59092f222362cf678', '/profile/infoImg/2020/03/22/b3f0de5d3cea43a1b2b570b2044c26f8.jpg', '1', '0', '0', '2020-03-22 16:20:47', 'admin', '2020-03-22 16:21:02', '');

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
  `cycling_introduce` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '回收站介绍',
  `cycling_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '回收站详情',
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
INSERT INTO `cycling` VALUES ('055a6603c66e4b6a8ef3c64089822944', '高能回收站', '/profile/CycImg/2020/03/27/d2b05f2ea387d2714b6d97dbd27ea32e.jpg', '17765604567', '李先生', '好好好', '能大量回收', '113.109397', '23.01853', '广东省佛山市南海区狮山镇广东东软学院-创新楼广东东软学院', 'admin', '2020-03-27 20:43:32', '', NULL, '', '0');
INSERT INTO `cycling` VALUES ('0593cbd727204f5387e489888221daf9', '铭记废品回收站', '/profile/CycImg/2020/03/07/b71ee5b4638e32f77a15cd5aa31c7e56.jpg', '17765603040', '李先生', '专业上门收购废品！有大小货车拉货。有工人搬运，欢迎老板的来电咨询。', '1.针对客户需求，定制整体化服务解决方案，提供社区和楼宇智能垃圾分类闭环解决方案\n2.分类回收站/垃圾箱/分类桶等产品无论在结构功能方面，还是广告营收方面都进行了精心规划设计，与市场化运作需求紧密贴合，全面满足客户对产品和盈利的需求。', '113.11537', '23.01502', '广东省佛山市禅城区祖庙街道垂虹村新荣大厦', 'admin', '2020-01-02 14:57:09', 'admin', '2020-03-07 14:13:50', '', '0');
INSERT INTO `cycling` VALUES ('0a57edace6aa4cc8bbc8b922f3b6c015', '华夏回收站', '/profile/CycImg/2020/03/13/df6b1c01af812675ff7fe44719083427.jpg', '17765607845', '潘老板', '专业上门收购废品！有大小货车拉货。有工人搬运，欢迎老板的来电咨询。', '空', '113.017143', '22.964798', '广东省佛山市禅城区南庄镇陶博大道佛山华夏明珠大酒店', 'admin', '2020-03-13 17:01:30', 'admin', '2020-03-17 16:32:48', '', '0');
INSERT INTO `cycling` VALUES ('1da3fa81474a459c8b0787ac1e251517', '汕头华侨回收站', '/profile/CycImg/2020/03/27/b0a669cf262087a07d21f15f7d3eb2b5.jpg', '13433333333', '李先生', '专业上门收购废品！有大小货车拉货。有工人搬运，欢迎老板的来电咨询。', '1.针对客户需求，定制整体化服务解决方案，提供社区和楼宇智能垃圾分类闭环解决方案\n2.分类回收站/垃圾箱/分类桶等产品无论在结构功能方面，还是广告营收方面都进行了精心规划设计，与市场化运作需求紧密贴合，全面满足客户对产品和盈利的需求。', '116.695588', '23.367159', '广东省汕头市金平区金砂街道广东汕头华侨中学', 'admin', '2020-03-27 12:51:00', 'admin', '2020-03-27 13:02:21', '', '0');
INSERT INTO `cycling` VALUES ('29ed65fbed0244e5bd2fe0abfa628015', '休闲回收站', '/profile/CycImg/2020/03/13/06ccb7cc26aec9c1fa44cfa7f028d21d.jpg', '17765601245', '花老板', '专业上门收购废品！有大小货车拉货。有工人搬运，欢迎老板的来电咨询。', '空', '113.056882', '23.039143', '广东省佛山市禅城区张槎街道塱宝西路51号上朗休闲广场', 'admin', '2020-03-13 16:49:56', 'admin', '2020-03-17 16:32:55', '', '0');
INSERT INTO `cycling` VALUES ('4345ef5de02a437c882fa2efce29d7e9', '百益废品回收站', '/profile/CycImg/2020/03/07/e0897a8d4124292bb8aa3d3462de0fce.jpg', '17765603324', '张先生', '公司秉承“诚信经营，用心服务”的理念，为您提供优质的产品和服务。欢迎来电咨询！', '1.针对客户需求，定制整体化服务解决方案，提供社区和楼宇智能垃圾分类闭环解决方案 2.分类回收站/垃圾箱/分类桶等产品无论在结构功能方面，还是广告营收方面都进行了精心规划设计，与市场化运作需求紧密贴合，全面满足客户对产品和盈利的需求。', '113.077562', '23.004276', '广东省佛山市禅城区石湾镇街道忠信路12号南风古灶', 'admin', '2020-01-02 14:59:20', 'admin', '2020-03-07 14:14:07', '', '0');
INSERT INTO `cycling` VALUES ('51a2049fcbc641c193d9341e093064fc', '广州白云废品回收站', '/profile/CycImg/2020/03/07/35805418af0eab67bd69625cc9e6f25f.jpg', '17765603230', '李先生', '2016年在推进行业转型升级的指导意见中就指出，积极推广“互联网+回收”模式。紧接着今年4月，又在《循环发展引领行动》中强调，支持再生资源企业建立线上线下融合的回收网络。', '可回收垃圾、厨余垃圾、有害垃圾和其他垃圾。 可回收垃圾是指可以循环再利用的废弃物，也是废品回收公司回收的废料，主要包括废纸、废塑料、废玻璃、金属和布料等。废纸主要包括报纸、杂志、图书、纸壳等；废塑料主要包括塑料袋、塑料包装盒、塑料餐盒餐具、塑料瓶子等；废玻璃主要包括各种玻璃瓶、玻璃片、镜子和灯泡等；金属主要包括罐头盒等；布料主要包括废毛巾、丢弃的旧衣服等。 厨余垃圾是指人们在加工、存储、食用各种食品过程中所产生的残余废弃物。包括生厨余垃圾和熟厨余垃圾2类，生厨余垃圾包括果壳、贝壳等，熟厨余垃圾包括剩菜剩饭、骨头、菜根菜叶等，可以经生物技术就地处理堆肥。 有害垃圾是指对人体健康和环境有害的重金属、有毒物质或者潜在危害的废弃物，包括废电池、废水银温度计、过期药品、电子垃圾等，这些垃圾需要特殊安全处理。', '113.209747', '23.27368', '广东省广州市白云区江高镇学苑路广东白云学院西校区', 'admin', '2020-02-23 15:28:12', 'admin', '2020-03-07 14:14:18', '', '0');
INSERT INTO `cycling` VALUES ('5d2b711264e6477180e0f4082ee4118a', '顺德回收站', '/profile/CycImg/2020/03/13/8301a180c2bcbd4ba232fb4e4c27d2c2.jpg', '17765604578', '陈老板', '专业上门收购废品！有大小货车拉货。有工人搬运，欢迎老板的来电咨询。', NULL, '113.316863', '22.794781', '广东省佛山市顺德区容桂街道大汕岛', 'admin', '2020-03-13 17:02:59', 'admin', '2020-03-17 16:33:04', '', '0');
INSERT INTO `cycling` VALUES ('9270a4bb98be4c679105e158b9320f0d', '南庄回收站', '/profile/CycImg/2020/03/13/d1281ed5584b945e6d5615cec69c04d8.jpg', '17765602356', '戴老板', '专业上门收购废品！有大小货车拉货。有工人搬运，欢迎老板的来电咨询。', '空', '113.041776', '22.99364', '广东省佛山市禅城区南庄镇丰盛总仓', 'admin', '2020-03-13 16:51:29', 'admin', '2020-03-17 16:33:09', '', '0');
INSERT INTO `cycling` VALUES ('a11e23b86b4e4615b8cfc1ddf12a10be', '百宝箱废品回收站', '/profile/CycImg/2020/03/07/28ac429c61f0e4f2b289d5d1ef3e20d2.jpg', '17765602265', '邱先生', '专业收废铁,废不锈钢,废铜,废铝,废锌,废铅,废塑料,废纸板等本站诚实经营,价格合理,保证客户利益最大化!重视与客户的长期联盟合作关系!', '1.针对客户需求，定制整体化服务解决方案，提供社区和楼宇智能垃圾分类闭环解决方案 2.分类回收站/垃圾箱/分类桶等产品无论在结构功能方面，还是广告营收方面都进行了精心规划设计，与市场化运作需求紧密贴合，全面满足客户对产品和盈利的需求。', '113.073528', '23.078441', '广东省佛山市南海区狮山镇佛山沙堤机场', 'admin', '2020-01-02 15:00:41', 'admin', '2020-03-07 14:14:29', '', '0');
INSERT INTO `cycling` VALUES ('c6bea4b003c14db5b296dbdaf199c620', '本地回收', '/profile/CycImg/2020/03/27/85c11a334be6730ffa66ae3dd877f3c6.jpg', '15911111111', '李先生', '我为人人', '回收快狠准', '113.027944', '23.011658', '广东省佛山市南海区狮山镇广东东软学院', 'admin', '2020-03-27 17:01:55', '', NULL, '', '0');

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
  `letter_id` int(0) NOT NULL COMMENT '字母表id',
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
INSERT INTO `garbage` VALUES ('1eae2d96042b4affb1c21eed91ed460b', '怡宝', '0', '怡宝是可回收垃圾', '百岁山', '投放到可回收垃圾桶中', 25, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('2', '纸巾', '3', '干垃圾即其它垃圾，指除可回收物、有害垃圾、厨余垃圾（湿垃圾）以外的其它生活废弃物。', '常见包括砖瓦陶瓷、渣土、卫生间废纸、猫砂、污损塑料、毛发、硬壳、一次性制品、灰土、瓷器碎片等难以回收的废弃物', '尽量沥干水分；难以辨识类别的生活垃圾都可以投入干垃圾容器内', 26, '', NULL, '', NULL, NULL, '0');
INSERT INTO `garbage` VALUES ('20', 'A4纸', '3', '干垃圾即其它垃圾，指除可回收物、有害垃圾、厨余垃圾（湿垃圾）以外的其它生活废弃物。', '常见包括砖瓦陶瓷、渣土、卫生间废纸、猫砂、污损塑料、毛发、硬壳、一次性制品、灰土、瓷器碎片等难以回收的废弃物', '尽量沥干水分；难以辨识类别的生活垃圾都可以投入干垃圾容器内', 1, '', NULL, '', NULL, NULL, '0');
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
INSERT INTO `garbage` VALUES ('dfb99837a2a44882b5fae1e620789650', '水杯', '0', '水杯是可回收的', '水壶', '投放到可回收垃圾桶', 11, '', NULL, '', NULL, NULL, '0');

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
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
  `column_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
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
  `sort` int(0) NULL DEFAULT NULL COMMENT '排序',
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
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '资讯id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '资讯标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '资讯内容',
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
INSERT INTO `information` VALUES ('36bfaf0c7e404428b7c2008ab3a7e4e4', '如何进行垃圾分类', '请使用环保助手小程序', '人民日报', '/profile/infoImg/2020/03/27/e8d64db4b1e371f9fc60bc57686c965f.jpg', '0', 'admin', '2020-03-27 20:44:29', '', NULL, '', '0');
INSERT INTO `information` VALUES ('3ab1ad4e3de34476ad03e54df7cdbd81', '某小伙子发明出了快速将垃圾进行分类的发明！！！', '垃圾分类（英文名为Garbage classification），一般是指按一定规定或标准将垃圾分类储存、分类投放和分类搬运，从而转变成公共资源的一系列活动的总称。分类的目的是提高垃圾的资源价值和经济价值，力争物尽其用。 [1] \n垃圾在分类储存阶段属于公众的私有品，垃圾经公众分类投放后成为公众所在小区或社区的区域性准公共资源，垃圾分类搬运到垃圾集中点或转运站后成为没有排除性的公共资源。从国内外各城市对生活垃圾分类的方法来看，大致都是根据垃圾的成分、产生量，结合本地垃圾的资源利用和处理方式来进行分类的。\n进行垃圾分类收集可以减少垃圾处理量和处理设备，降低处理成本，减少土地资源的消耗，具有社会、经济、生态等几方面的效益。\n2019年6月25日，生活垃圾分类制度将入法。 [2]  2019年9月，大连在每个垃圾分类投放点设督导员。\n上海成为第一个中国垃圾分类试点城市 [3] \n2019年12月6日，入选“2019年中国媒体十大流行语”。 [4] ', 'UC日报', '/profile/infoImg/2020/03/07/0a6046bdf1da1cf489e92c04dd4d79e8.jpg', '48', 'admin', '2020-01-02 15:18:09', 'admin', '2020-03-07 14:15:29', '', '0');
INSERT INTO `information` VALUES ('3ab1ad4e3de34476ad03e54df7cdbd8f', '关于如何准确快速进行垃圾分类？？？', '垃圾分类（英文名为Garbage classification），一般是指按一定规定或标准将垃圾分类储存、分类投放和分类搬运，从而转变成公共资源的一系列活动的总称。分类的目的是提高垃圾的资源价值和经济价值，力争物尽其用。 [1] \n垃圾在分类储存阶段属于公众的私有品，垃圾经公众分类投放后成为公众所在小区或社区的区域性准公共资源，垃圾分类搬运到垃圾集中点或转运站后成为没有排除性的公共资源。从国内外各城市对生活垃圾分类的方法来看，大致都是根据垃圾的成分、产生量，结合本地垃圾的资源利用和处理方式来进行分类的。\n进行垃圾分类收集可以减少垃圾处理量和处理设备，降低处理成本，减少土地资源的消耗，具有社会、经济、生态等几方面的效益。\n2019年6月25日，生活垃圾分类制度将入法。 [2]  2019年9月，大连在每个垃圾分类投放点设督导员。\n上海成为第一个中国垃圾分类试点城市 [3] \n2019年12月6日，入选“2019年中国媒体十大流行语”。 [4] ', 'UC日报', '/profile/infoImg/2020/03/07/9aa626075b03eac00607a81ae08700c7.jpg', '16', 'admin', '2020-01-02 15:18:09', 'admin', '2020-03-07 14:15:39', '', '0');
INSERT INTO `information` VALUES ('426266f023a948a2a6accb2a86553567', '政府对垃圾分类进行了新一套规整！！！', '空', '今日视线', '/profile/infoImg/2020/03/07/853ef2aad6642d58c17bd5b68fa28970.jpg', '0', 'admin', '2020-02-24 15:26:44', 'admin', '2020-03-07 14:15:54', '', '0');
INSERT INTO `information` VALUES ('6f7dc816f5d04427a599f7129bdd2b1b', '垃圾分类已成为了人们生活的习惯', '垃圾分类（英文名为Garbage classification），一般是指按一定规定或标准将垃圾分类储存、分类投放和分类搬运，从而转变成公共资源的一系列活动的总称。分类的目的是提高垃圾的资源价值和经济价值，力争物尽其用。 [1] \n垃圾在分类储存阶段属于公众的私有品，垃圾经公众分类投放后成为公众所在小区或社区的区域性准公共资源，垃圾分类搬运到垃圾集中点或转运站后成为没有排除性的公共资源。从国内外各城市对生活垃圾分类的方法来看，大致都是根据垃圾的成分、产生量，结合本地垃圾的资源利用和处理方式来进行分类的。\n进行垃圾分类收集可以减少垃圾处理量和处理设备，降低处理成本，减少土地资源的消耗，具有社会、经济、生态等几方面的效益。\n2019年6月25日，生活垃圾分类制度将入法。 [2]  2019年9月，大连在每个垃圾分类投放点设督导员。\n上海成为第一个中国垃圾分类试点城市 [3] \n2019年12月6日，入选“2019年中国媒体十大流行语”。 [4] ', '佛山日报', '/profile/infoImg/2020/03/07/800856785d5048919ef74024039f0509.jpg', '5', 'admin', '2019-12-25 22:55:47', 'admin', '2020-03-07 14:16:02', '', '0');
INSERT INTO `information` VALUES ('8a31790a540b48648905fb83866ce940', '叫你如何快速的进行垃圾的规整', '空', '今日视线', '/profile/infoImg/2020/03/07/a06b5ead5b5d2108ecbd0b074da71be4.jpg', '1', 'admin', '2020-02-24 15:26:03', 'admin', '2020-03-07 14:16:15', '', '0');
INSERT INTO `information` VALUES ('af058beb7f2743778a316603104049f9', '城市治理靠的是大家的自觉', '垃圾分类（英文名为Garbage classification），一般是指按一定规定或标准将垃圾分类储存、分类投放和分类搬运，从而转变成公共资源的一系列活动的总称。分类的目的是提高垃圾的资源价值和经济价值，力争物尽其用。 [1] \n垃圾在分类储存阶段属于公众的私有品，垃圾经公众分类投放后成为公众所在小区或社区的区域性准公共资源，垃圾分类搬运到垃圾集中点或转运站后成为没有排除性的公共资源。从国内外各城市对生活垃圾分类的方法来看，大致都是根据垃圾的成分、产生量，结合本地垃圾的资源利用和处理方式来进行分类的。\n进行垃圾分类收集可以减少垃圾处理量和处理设备，降低处理成本，减少土地资源的消耗，具有社会、经济、生态等几方面的效益。\n2019年6月25日，生活垃圾分类制度将入法。 [2]  2019年9月，大连在每个垃圾分类投放点设督导员。\n上海成为第一个中国垃圾分类试点城市 [3] \n2019年12月6日，入选“2019年中国媒体十大流行语”。 [4] ', '富人排行榜', '/profile/infoImg/2020/03/07/efa650897fc9c6e6066c84e233e70fdc.jpg', '4', 'admin', '2020-01-06 21:05:24', 'admin', '2020-03-07 14:16:29', '', '0');
INSERT INTO `information` VALUES ('e191ebb2b668470a83b11c434be88a97', '测试标题', '测试内容', '测试出处', '/profile/infoImg/2020/03/26/b208413740fe1df080290575b6fed170.jpg', '1', 'admin', '2020-03-26 14:55:36', '', NULL, '', '0');
INSERT INTO `information` VALUES ('ef07166bb8f342489c65225172e112c0', '如何快速区分垃圾', '空', '广东东软学院', '/profile/infoImg/2020/03/27/2843021d6838032eb9878cc6f77f2a19.jpg', '0', 'admin', '2020-03-27 17:02:42', '', NULL, '', '0');
INSERT INTO `information` VALUES ('fc63595c561f446d8f8fbec39151da57', '开学之日如果帮助孩子进行更好的区分垃圾的类别', '空', '今日视线', '/profile/infoImg/2020/03/07/7e6c63bddfb23e2635f9b6c83e94cad3.jpg', '0', 'admin', '2020-02-24 15:31:39', 'admin', '2020-03-07 14:16:39', '', '0');

-- ----------------------------
-- Table structure for letter
-- ----------------------------
DROP TABLE IF EXISTS `letter`;
CREATE TABLE `letter`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '字母表id',
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
  `config_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

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
  `dept_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(0) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(0) NULL DEFAULT 0 COMMENT '显示顺序',
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
) ENGINE = InnoDB AUTO_INCREMENT = 114 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '环保助手', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-03-27 20:23:10');
INSERT INTO `sys_dept` VALUES (109, 100, '0,100', '测试部门', 1, '李部长', '17765603020', NULL, '0', '0', 'admin', '2020-03-09 15:25:45', 'admin', '2020-03-27 20:22:58');
INSERT INTO `sys_dept` VALUES (110, 100, '0,100', '回收部门', 2, '李先生', NULL, NULL, '0', '0', 'admin', '2020-03-27 16:58:29', 'admin', '2020-03-27 20:23:10');
INSERT INTO `sys_dept` VALUES (113, 100, '0,100', '分类部门', 3, NULL, NULL, NULL, '0', '0', 'admin', '2020-03-27 20:40:06', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(0) NULL DEFAULT 0 COMMENT '字典排序',
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
  `dict_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
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
  `job_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

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
  `job_log_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
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
  `info_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 186 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (1, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-24 16:41:36');
INSERT INTO `sys_logininfor` VALUES (2, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2020-02-24 16:41:50');
INSERT INTO `sys_logininfor` VALUES (3, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-24 17:02:54');
INSERT INTO `sys_logininfor` VALUES (4, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-24 17:13:07');
INSERT INTO `sys_logininfor` VALUES (5, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-24 17:13:09');
INSERT INTO `sys_logininfor` VALUES (6, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-26 15:43:53');
INSERT INTO `sys_logininfor` VALUES (7, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-01 15:03:16');
INSERT INTO `sys_logininfor` VALUES (8, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-02 14:47:09');
INSERT INTO `sys_logininfor` VALUES (9, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-02 14:48:45');
INSERT INTO `sys_logininfor` VALUES (10, 'test1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2020-03-02 14:48:54');
INSERT INTO `sys_logininfor` VALUES (11, 'test1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-02 14:49:02');
INSERT INTO `sys_logininfor` VALUES (12, 'test1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-02 15:00:38');
INSERT INTO `sys_logininfor` VALUES (13, 'test1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-02 15:00:49');
INSERT INTO `sys_logininfor` VALUES (14, 'test1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-02 15:01:12');
INSERT INTO `sys_logininfor` VALUES (15, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-02 15:01:16');
INSERT INTO `sys_logininfor` VALUES (16, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-02 15:03:38');
INSERT INTO `sys_logininfor` VALUES (17, 'test', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-02 15:03:46');
INSERT INTO `sys_logininfor` VALUES (18, 'test', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-02 15:08:10');
INSERT INTO `sys_logininfor` VALUES (19, 'test', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-02 15:15:17');
INSERT INTO `sys_logininfor` VALUES (20, 'test', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-02 15:22:30');
INSERT INTO `sys_logininfor` VALUES (21, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-02 15:22:35');
INSERT INTO `sys_logininfor` VALUES (22, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-02 15:23:16');
INSERT INTO `sys_logininfor` VALUES (23, 'test', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-02 15:23:23');
INSERT INTO `sys_logininfor` VALUES (24, 'test', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-02 15:23:41');
INSERT INTO `sys_logininfor` VALUES (25, 'test', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-02 15:24:13');
INSERT INTO `sys_logininfor` VALUES (26, 'test', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-02 15:24:51');
INSERT INTO `sys_logininfor` VALUES (27, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-02 15:24:55');
INSERT INTO `sys_logininfor` VALUES (28, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-02 15:27:42');
INSERT INTO `sys_logininfor` VALUES (29, 'test', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-02 15:27:50');
INSERT INTO `sys_logininfor` VALUES (30, 'test', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-02 15:34:19');
INSERT INTO `sys_logininfor` VALUES (31, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-02 15:34:23');
INSERT INTO `sys_logininfor` VALUES (32, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-03 16:47:50');
INSERT INTO `sys_logininfor` VALUES (33, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-03 20:31:11');
INSERT INTO `sys_logininfor` VALUES (34, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-03 21:40:32');
INSERT INTO `sys_logininfor` VALUES (35, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-03 21:42:01');
INSERT INTO `sys_logininfor` VALUES (36, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-03 21:42:10');
INSERT INTO `sys_logininfor` VALUES (37, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-03 21:42:15');
INSERT INTO `sys_logininfor` VALUES (38, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-03 21:42:19');
INSERT INTO `sys_logininfor` VALUES (39, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-03 21:42:30');
INSERT INTO `sys_logininfor` VALUES (40, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-03 21:43:22');
INSERT INTO `sys_logininfor` VALUES (41, 'admin', '192.168.3.69', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-06 20:24:08');
INSERT INTO `sys_logininfor` VALUES (42, 'admin', '192.168.3.69', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-06 21:32:06');
INSERT INTO `sys_logininfor` VALUES (43, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-06 21:46:18');
INSERT INTO `sys_logininfor` VALUES (44, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-07 12:00:03');
INSERT INTO `sys_logininfor` VALUES (45, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-07 12:00:52');
INSERT INTO `sys_logininfor` VALUES (46, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-07 12:02:24');
INSERT INTO `sys_logininfor` VALUES (47, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-07 12:02:41');
INSERT INTO `sys_logininfor` VALUES (48, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-07 12:19:00');
INSERT INTO `sys_logininfor` VALUES (49, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-07 12:39:51');
INSERT INTO `sys_logininfor` VALUES (50, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-07 14:11:45');
INSERT INTO `sys_logininfor` VALUES (51, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-07 16:34:52');
INSERT INTO `sys_logininfor` VALUES (52, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-07 16:35:16');
INSERT INTO `sys_logininfor` VALUES (53, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-07 16:35:27');
INSERT INTO `sys_logininfor` VALUES (54, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-08 13:52:28');
INSERT INTO `sys_logininfor` VALUES (55, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-08 14:50:45');
INSERT INTO `sys_logininfor` VALUES (56, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-08 14:53:12');
INSERT INTO `sys_logininfor` VALUES (57, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-08 14:54:01');
INSERT INTO `sys_logininfor` VALUES (58, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-08 15:05:42');
INSERT INTO `sys_logininfor` VALUES (59, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-08 15:05:49');
INSERT INTO `sys_logininfor` VALUES (60, 'admin', '116.62.162.64', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-08 15:28:30');
INSERT INTO `sys_logininfor` VALUES (61, 'admin', '116.62.162.64', 'XX XX', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-08 15:31:02');
INSERT INTO `sys_logininfor` VALUES (62, 'admin', '116.62.162.64', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-08 15:31:14');
INSERT INTO `sys_logininfor` VALUES (63, 'admin', '116.62.162.64', 'XX XX', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-08 15:31:33');
INSERT INTO `sys_logininfor` VALUES (64, 'admin', '116.62.162.64', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-08 16:01:20');
INSERT INTO `sys_logininfor` VALUES (65, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-08 16:02:16');
INSERT INTO `sys_logininfor` VALUES (66, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-09 11:31:57');
INSERT INTO `sys_logininfor` VALUES (67, 'admin', '116.62.162.64', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-09 14:51:53');
INSERT INTO `sys_logininfor` VALUES (68, 'admin', '116.62.162.64', 'XX XX', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2020-03-09 14:54:15');
INSERT INTO `sys_logininfor` VALUES (69, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-09 15:18:48');
INSERT INTO `sys_logininfor` VALUES (70, 'admin', '116.62.162.64', '浙江 杭州', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-09 15:56:09');
INSERT INTO `sys_logininfor` VALUES (71, 'admin', '116.62.162.64', 'XX XX', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-09 16:23:52');
INSERT INTO `sys_logininfor` VALUES (72, 'test', '116.62.162.64', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-09 16:24:01');
INSERT INTO `sys_logininfor` VALUES (73, 'test', '116.62.162.64', 'XX XX', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-09 16:24:45');
INSERT INTO `sys_logininfor` VALUES (74, 'test', '116.62.162.64', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-09 16:24:53');
INSERT INTO `sys_logininfor` VALUES (75, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-09 16:25:12');
INSERT INTO `sys_logininfor` VALUES (76, 'test', '116.62.162.64', 'XX XX', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-09 16:25:23');
INSERT INTO `sys_logininfor` VALUES (77, 'admin', '116.62.162.64', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-09 16:25:26');
INSERT INTO `sys_logininfor` VALUES (78, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-09 16:26:00');
INSERT INTO `sys_logininfor` VALUES (79, 'test1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-09 16:26:13');
INSERT INTO `sys_logininfor` VALUES (80, 'test1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-09 16:30:29');
INSERT INTO `sys_logininfor` VALUES (81, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-09 16:30:31');
INSERT INTO `sys_logininfor` VALUES (82, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-09 17:01:41');
INSERT INTO `sys_logininfor` VALUES (83, 'admin', '116.62.162.64', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-09 17:46:24');
INSERT INTO `sys_logininfor` VALUES (84, 'admin', '116.62.162.64', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-10 12:06:02');
INSERT INTO `sys_logininfor` VALUES (85, 'admin', '116.62.162.64', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-10 13:57:31');
INSERT INTO `sys_logininfor` VALUES (86, 'admin', '116.62.162.64', 'XX XX', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2020-03-11 00:58:16');
INSERT INTO `sys_logininfor` VALUES (87, 'admin', '116.62.162.64', '浙江 杭州', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2020-03-12 15:14:11');
INSERT INTO `sys_logininfor` VALUES (88, 'admin', '116.62.162.64', 'XX XX', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2020-03-12 22:50:08');
INSERT INTO `sys_logininfor` VALUES (89, 'admin', '116.62.162.64', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-13 11:24:09');
INSERT INTO `sys_logininfor` VALUES (90, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-13 11:31:58');
INSERT INTO `sys_logininfor` VALUES (91, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-13 16:31:56');
INSERT INTO `sys_logininfor` VALUES (92, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-13 16:32:01');
INSERT INTO `sys_logininfor` VALUES (93, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-13 16:32:15');
INSERT INTO `sys_logininfor` VALUES (94, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-13 16:47:57');
INSERT INTO `sys_logininfor` VALUES (95, 'admin', '116.62.162.64', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-13 16:48:28');
INSERT INTO `sys_logininfor` VALUES (96, 'admin', '116.62.162.64', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-13 16:48:43');
INSERT INTO `sys_logininfor` VALUES (97, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-13 17:19:19');
INSERT INTO `sys_logininfor` VALUES (98, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-13 17:19:33');
INSERT INTO `sys_logininfor` VALUES (99, 'admin', '116.62.162.64', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-14 13:04:45');
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '116.62.162.64', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-17 16:32:20');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '116.62.162.64', '浙江 杭州', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-19 15:32:11');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '116.62.162.64', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-20 12:01:19');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '116.62.162.64', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-20 12:04:03');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-20 15:49:59');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-20 16:03:21');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-20 16:03:30');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-20 16:06:25');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-20 16:06:45');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-20 16:39:58');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-20 16:40:36');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-20 19:51:21');
INSERT INTO `sys_logininfor` VALUES (112, '123', '116.62.162.64', 'XX XX', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2020-03-21 12:17:45');
INSERT INTO `sys_logininfor` VALUES (113, '123', '116.62.162.64', 'XX XX', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2020-03-21 12:17:51');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-22 15:46:11');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '116.62.162.64', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-23 11:45:26');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '116.62.162.64', 'XX XX', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-23 11:46:03');
INSERT INTO `sys_logininfor` VALUES (117, 'test', '116.62.162.64', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-23 11:46:13');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '116.62.162.64', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-24 17:56:29');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '116.62.162.64', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-26 14:54:24');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '116.62.162.64', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-26 14:54:45');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '116.62.162.64', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-26 14:54:58');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-26 15:09:54');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-26 15:44:17');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-26 17:55:19');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-26 19:35:51');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-26 19:38:42');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-26 19:54:37');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '116.62.162.64', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-27 12:47:47');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '116.62.162.64', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-27 12:48:20');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '116.62.162.64', 'XX XX', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-27 12:54:09');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '116.62.162.64', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-27 12:54:13');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '116.62.162.64', 'XX XX', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-27 12:54:33');
INSERT INTO `sys_logininfor` VALUES (133, 'test', '116.62.162.64', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-27 12:55:03');
INSERT INTO `sys_logininfor` VALUES (134, 'test', '116.62.162.64', 'XX XX', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-27 12:55:13');
INSERT INTO `sys_logininfor` VALUES (135, 'test', '116.62.162.64', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-27 12:55:20');
INSERT INTO `sys_logininfor` VALUES (136, 'test', '116.62.162.64', 'XX XX', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-27 12:55:32');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '116.62.162.64', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-27 12:55:39');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-27 15:18:49');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-27 16:56:25');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-27 17:06:25');
INSERT INTO `sys_logininfor` VALUES (141, 'user1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-27 17:06:31');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-27 18:35:53');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-27 18:36:48');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-27 18:37:11');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-27 18:39:16');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-27 18:39:38');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-27 18:42:18');
INSERT INTO `sys_logininfor` VALUES (148, 'fl', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-27 18:42:24');
INSERT INTO `sys_logininfor` VALUES (149, 'fl', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-27 18:43:12');
INSERT INTO `sys_logininfor` VALUES (150, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2020-03-27 19:59:41');
INSERT INTO `sys_logininfor` VALUES (151, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-27 19:59:47');
INSERT INTO `sys_logininfor` VALUES (152, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-27 20:02:15');
INSERT INTO `sys_logininfor` VALUES (153, 'fl', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2020-03-27 20:02:26');
INSERT INTO `sys_logininfor` VALUES (154, 'user', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-27 20:02:33');
INSERT INTO `sys_logininfor` VALUES (155, 'user', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-27 20:02:48');
INSERT INTO `sys_logininfor` VALUES (156, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-27 20:03:08');
INSERT INTO `sys_logininfor` VALUES (157, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-27 20:14:32');
INSERT INTO `sys_logininfor` VALUES (158, 'user', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-27 20:14:39');
INSERT INTO `sys_logininfor` VALUES (159, 'user', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-27 20:14:48');
INSERT INTO `sys_logininfor` VALUES (160, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2020-03-27 20:15:04');
INSERT INTO `sys_logininfor` VALUES (161, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-27 20:15:20');
INSERT INTO `sys_logininfor` VALUES (162, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-27 20:15:38');
INSERT INTO `sys_logininfor` VALUES (163, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-27 20:16:24');
INSERT INTO `sys_logininfor` VALUES (164, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-27 20:17:05');
INSERT INTO `sys_logininfor` VALUES (165, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-27 20:17:43');
INSERT INTO `sys_logininfor` VALUES (166, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-27 20:25:16');
INSERT INTO `sys_logininfor` VALUES (167, 'user', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-27 20:25:24');
INSERT INTO `sys_logininfor` VALUES (168, 'user', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-27 20:25:37');
INSERT INTO `sys_logininfor` VALUES (169, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-27 20:25:54');
INSERT INTO `sys_logininfor` VALUES (170, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-27 20:28:28');
INSERT INTO `sys_logininfor` VALUES (171, 'user', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-27 20:28:36');
INSERT INTO `sys_logininfor` VALUES (172, 'user', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-27 20:28:55');
INSERT INTO `sys_logininfor` VALUES (173, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-27 20:29:02');
INSERT INTO `sys_logininfor` VALUES (174, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-27 20:32:07');
INSERT INTO `sys_logininfor` VALUES (175, 'user', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-27 20:32:15');
INSERT INTO `sys_logininfor` VALUES (176, 'user', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-27 20:32:25');
INSERT INTO `sys_logininfor` VALUES (177, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-27 20:32:29');
INSERT INTO `sys_logininfor` VALUES (178, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-27 20:33:05');
INSERT INTO `sys_logininfor` VALUES (179, 'user', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-27 20:33:10');
INSERT INTO `sys_logininfor` VALUES (180, 'user', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-27 20:33:18');
INSERT INTO `sys_logininfor` VALUES (181, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-27 20:33:37');
INSERT INTO `sys_logininfor` VALUES (182, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-27 20:34:04');
INSERT INTO `sys_logininfor` VALUES (183, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-27 20:34:18');
INSERT INTO `sys_logininfor` VALUES (184, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-03-27 20:37:49');
INSERT INTO `sys_logininfor` VALUES (185, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-03-27 20:38:16');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(0) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(0) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '组件路径',
  `is_frame` int(0) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
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
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', 1, 'C', '0', 'system:user:list', 'user', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', 1, 'C', '0', 'system:role:list', 'peoples', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', 1, 'C', '0', 'system:dept:list', 'tree', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', 1, 'C', '0', 'system:post:list', 'post', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '岗位管理菜单');
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
INSERT INTO `sys_menu` VALUES (2023, '资讯管理', 2009, 2, 'information', 'information/index', 1, 'C', '0', 'system:information:list', 'excel', 'admin', '2019-12-22 23:37:29', 'admin', '2020-02-24 15:36:25', '');
INSERT INTO `sys_menu` VALUES (2031, '首页管理', 0, 4, '', NULL, 1, 'M', '0', NULL, 'documentation', 'admin', '2020-01-13 22:39:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2032, '轮播图管理', 2031, 1, 'img', 'appImg/index', 1, 'C', '0', 'system:img:list', 'view', 'admin', '2020-01-13 22:40:34', 'admin', '2020-01-13 22:42:13', '');
INSERT INTO `sys_menu` VALUES (2033, '轮播图管理', 2009, 1, 'img', 'infoImg/index', 1, 'C', '0', 'system:img:list', 'view', 'admin', '2020-01-13 23:29:03', 'admin', '2020-02-24 15:36:17', '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(0) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(0) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(0) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 340 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (1, '操作日志', 9, 'com.ruoyi.project.monitor.controller.SysOperlogController.clean()', 'DELETE', 1, 'admin', NULL, '/monitor/operlog/clean', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-02-24 16:17:11');
INSERT INTO `sys_oper_log` VALUES (2, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"monitor\",\"orderNum\":\"2\",\"menuName\":\"系统监控\",\"params\":{},\"parentId\":0,\"path\":\"monitor\",\"children\":[],\"createTime\":1521171180000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2,\"menuType\":\"M\",\"perms\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-02-24 16:19:54');
INSERT INTO `sys_oper_log` VALUES (3, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"tool\",\"orderNum\":\"3\",\"menuName\":\"系统工具\",\"params\":{},\"parentId\":0,\"path\":\"tool\",\"children\":[],\"createTime\":1521171180000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":3,\"menuType\":\"M\",\"perms\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-02-24 16:20:03');
INSERT INTO `sys_oper_log` VALUES (4, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-02-24 17:02:55');
INSERT INTO `sys_oper_log` VALUES (5, '用户头像', 2, 'com.ruoyi.project.system.controller.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2020/02/24/251d07f6be448885c2bda4e0a5cac01a.jpeg\",\"code\":200}', 0, NULL, '2020-02-24 17:12:49');
INSERT INTO `sys_oper_log` VALUES (6, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-02-24 17:13:14');
INSERT INTO `sys_oper_log` VALUES (7, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-02-26 15:43:54');
INSERT INTO `sys_oper_log` VALUES (8, '图片轮播图', 3, 'com.ruoyi.project.appImg.controller.AppImgController.remove()', 'DELETE', 1, 'admin', NULL, '/system/img/14319f93a3c44d4ead8e70f8b2201155', '127.0.0.1', '内网IP', '{ids=14319f93a3c44d4ead8e70f8b2201155}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-02-26 15:51:02');
INSERT INTO `sys_oper_log` VALUES (9, '图片轮播图', 3, 'com.ruoyi.project.appImg.controller.AppImgController.remove()', 'DELETE', 1, 'admin', NULL, '/system/img/5e16472a0bf54f329f1ab43760b4439c', '127.0.0.1', '内网IP', '{ids=5e16472a0bf54f329f1ab43760b4439c}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-02-26 15:51:06');
INSERT INTO `sys_oper_log` VALUES (10, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/02/26/292390597627b111897379bb43ed8938.jpg\"}', 0, NULL, '2020-02-26 15:51:14');
INSERT INTO `sys_oper_log` VALUES (11, '图片轮播图', 1, 'com.ruoyi.project.appImg.controller.AppImgController.add()', 'POST', 1, 'admin', NULL, '/system/img', '127.0.0.1', '内网IP', '{\"params\":{},\"imgTab\":\"0\",\"openFlag\":\"0\",\"createTime\":1582703477779,\"imgPath\":\"/profile/infoImg/2020/02/26/292390597627b111897379bb43ed8938.jpg\",\"id\":\"6d1415e5734f40a9881c17763e7add6e\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-02-26 15:51:17');
INSERT INTO `sys_oper_log` VALUES (12, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/02/26/55433aaf3d91ef725f99ace5de6adf27.jpg\"}', 0, NULL, '2020-02-26 15:51:25');
INSERT INTO `sys_oper_log` VALUES (13, '图片轮播图', 1, 'com.ruoyi.project.appImg.controller.AppImgController.add()', 'POST', 1, 'admin', NULL, '/system/img', '127.0.0.1', '内网IP', '{\"params\":{},\"imgTab\":\"0\",\"openFlag\":\"0\",\"createTime\":1582703488696,\"imgPath\":\"/profile/infoImg/2020/02/26/55433aaf3d91ef725f99ace5de6adf27.jpg\",\"id\":\"aa6cb7b846d04ab7a53da89c200dd6be\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-02-26 15:51:28');
INSERT INTO `sys_oper_log` VALUES (14, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/02/26/9f7e711da0f909185ebd90d6a7ac4fd3.jpg\"}', 0, NULL, '2020-02-26 15:51:35');
INSERT INTO `sys_oper_log` VALUES (15, '图片轮播图', 1, 'com.ruoyi.project.appImg.controller.AppImgController.add()', 'POST', 1, 'admin', NULL, '/system/img', '127.0.0.1', '内网IP', '{\"params\":{},\"imgTab\":\"0\",\"openFlag\":\"0\",\"createTime\":1582703497868,\"imgPath\":\"/profile/infoImg/2020/02/26/9f7e711da0f909185ebd90d6a7ac4fd3.jpg\",\"id\":\"348a750947c84ad790906204bc7fbcde\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-02-26 15:51:37');
INSERT INTO `sys_oper_log` VALUES (16, '图片轮播图', 3, 'com.ruoyi.project.appImg.controller.AppImgController.remove()', 'DELETE', 1, 'admin', NULL, '/system/img/5210c963a20c4fab87199bd1d1287130', '127.0.0.1', '内网IP', '{ids=5210c963a20c4fab87199bd1d1287130}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-02-26 15:51:49');
INSERT INTO `sys_oper_log` VALUES (17, '图片轮播图', 3, 'com.ruoyi.project.appImg.controller.AppImgController.remove()', 'DELETE', 1, 'admin', NULL, '/system/img/57b58817fd8442b1bb0d0199ea034d95', '127.0.0.1', '内网IP', '{ids=57b58817fd8442b1bb0d0199ea034d95}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-02-26 15:51:56');
INSERT INTO `sys_oper_log` VALUES (18, '图片轮播图', 3, 'com.ruoyi.project.appImg.controller.AppImgController.remove()', 'DELETE', 1, 'admin', NULL, '/system/img/b483d12b51b54beaa7223984e0b51b34', '127.0.0.1', '内网IP', '{ids=b483d12b51b54beaa7223984e0b51b34}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-02-26 15:52:00');
INSERT INTO `sys_oper_log` VALUES (19, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/02/26/79c2c08fc5b4738d073371c820563c7a.jpg\"}', 0, NULL, '2020-02-26 15:52:06');
INSERT INTO `sys_oper_log` VALUES (20, '图片轮播图', 1, 'com.ruoyi.project.appImg.controller.AppImgController.add()', 'POST', 1, 'admin', NULL, '/system/img', '127.0.0.1', '内网IP', '{\"params\":{},\"imgTab\":\"1\",\"openFlag\":\"0\",\"createTime\":1582703529430,\"imgPath\":\"/profile/infoImg/2020/02/26/79c2c08fc5b4738d073371c820563c7a.jpg\",\"id\":\"a1d20524f5664e079a764400ca7e2325\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-02-26 15:52:09');
INSERT INTO `sys_oper_log` VALUES (21, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/02/26/d1d3cc34973b48aedcfaba4d72baaadb.jpg\"}', 0, NULL, '2020-02-26 15:52:14');
INSERT INTO `sys_oper_log` VALUES (22, '图片轮播图', 1, 'com.ruoyi.project.appImg.controller.AppImgController.add()', 'POST', 1, 'admin', NULL, '/system/img', '127.0.0.1', '内网IP', '{\"params\":{},\"imgTab\":\"1\",\"openFlag\":\"0\",\"createTime\":1582703540408,\"imgPath\":\"/profile/infoImg/2020/02/26/d1d3cc34973b48aedcfaba4d72baaadb.jpg\",\"id\":\"b6448f1d8efd45ffbe7bf711ab5c13cb\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-02-26 15:52:20');
INSERT INTO `sys_oper_log` VALUES (23, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/02/26/baae4e9b1b75155707a752a612a4561d.jpg\"}', 0, NULL, '2020-02-26 15:52:26');
INSERT INTO `sys_oper_log` VALUES (24, '图片轮播图', 1, 'com.ruoyi.project.appImg.controller.AppImgController.add()', 'POST', 1, 'admin', NULL, '/system/img', '127.0.0.1', '内网IP', '{\"params\":{},\"imgTab\":\"1\",\"openFlag\":\"0\",\"createTime\":1582703549731,\"imgPath\":\"/profile/infoImg/2020/02/26/baae4e9b1b75155707a752a612a4561d.jpg\",\"id\":\"1a2165e8d8c248cca41f9ab270cde008\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-02-26 15:52:29');
INSERT INTO `sys_oper_log` VALUES (25, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/02/26/cba8f030955297630d7d3a73a1c1f75c.jpg\"}', 0, NULL, '2020-02-26 16:04:27');
INSERT INTO `sys_oper_log` VALUES (26, '资讯管理', 2, 'com.ruoyi.project.information.controller.InformationController.edit()', 'PUT', 1, 'admin', NULL, '/information', '127.0.0.1', '内网IP', '{\"infoImg\":\"/profile/infoImg/2020/02/26/cba8f030955297630d7d3a73a1c1f75c.jpg\",\"remark\":\"\",\"updateTime\":1582704268375,\"source\":\"UC日报\",\"params\":{},\"title\":\"震惊!新疆小伙看视频导致笑死，背后的秘密居然是这样的!\",\"content\":\"垃圾分类（英文名为Garbage classification），一般是指按一定规定或标准将垃圾分类储存、分类投放和分类搬运，从而转变成公共资源的一系列活动的总称。分类的目的是提高垃圾的资源价值和经济价值，力争物尽其用。 [1] \\n垃圾在分类储存阶段属于公众的私有品，垃圾经公众分类投放后成为公众所在小区或社区的区域性准公共资源，垃圾分类搬运到垃圾集中点或转运站后成为没有排除性的公共资源。从国内外各城市对生活垃圾分类的方法来看，大致都是根据垃圾的成分、产生量，结合本地垃圾的资源利用和处理方式来进行分类的。\\n进行垃圾分类收集可以减少垃圾处理量和处理设备，降低处理成本，减少土地资源的消耗，具有社会、经济、生态等几方面的效益。\\n2019年6月25日，生活垃圾分类制度将入法。 [2]  2019年9月，大连在每个垃圾分类投放点设督导员。\\n上海成为第一个中国垃圾分类试点城市 [3] \\n2019年12月6日，入选“2019年中国媒体十大流行语”。 [4] \",\"createBy\":\"admin\",\"createTime\":1577949489000,\"updateBy\":\"admin\",\"id\":\"3ab1ad4e3de34476ad03e54df7cdbd81\",\"viewCount\":\"7\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-02-26 16:04:28');
INSERT INTO `sys_oper_log` VALUES (27, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/02/26/0252d3e0b3c36b788b3edf41f1e1ad57.jpg\"}', 0, NULL, '2020-02-26 16:04:36');
INSERT INTO `sys_oper_log` VALUES (28, '资讯管理', 2, 'com.ruoyi.project.information.controller.InformationController.edit()', 'PUT', 1, 'admin', NULL, '/information', '127.0.0.1', '内网IP', '{\"infoImg\":\"/profile/infoImg/2020/02/26/0252d3e0b3c36b788b3edf41f1e1ad57.jpg\",\"remark\":\"\",\"updateTime\":1582704297659,\"source\":\"UC日报\",\"params\":{},\"title\":\"关于如何准确快速进行垃圾分类？？？\",\"content\":\"垃圾分类（英文名为Garbage classification），一般是指按一定规定或标准将垃圾分类储存、分类投放和分类搬运，从而转变成公共资源的一系列活动的总称。分类的目的是提高垃圾的资源价值和经济价值，力争物尽其用。 [1] \\n垃圾在分类储存阶段属于公众的私有品，垃圾经公众分类投放后成为公众所在小区或社区的区域性准公共资源，垃圾分类搬运到垃圾集中点或转运站后成为没有排除性的公共资源。从国内外各城市对生活垃圾分类的方法来看，大致都是根据垃圾的成分、产生量，结合本地垃圾的资源利用和处理方式来进行分类的。\\n进行垃圾分类收集可以减少垃圾处理量和处理设备，降低处理成本，减少土地资源的消耗，具有社会、经济、生态等几方面的效益。\\n2019年6月25日，生活垃圾分类制度将入法。 [2]  2019年9月，大连在每个垃圾分类投放点设督导员。\\n上海成为第一个中国垃圾分类试点城市 [3] \\n2019年12月6日，入选“2019年中国媒体十大流行语”。 [4] \",\"createBy\":\"admin\",\"createTime\":1577949489000,\"updateBy\":\"admin\",\"id\":\"3ab1ad4e3de34476ad03e54df7cdbd8f\",\"viewCount\":\"8\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-02-26 16:04:57');
INSERT INTO `sys_oper_log` VALUES (29, '资讯管理', 2, 'com.ruoyi.project.information.controller.InformationController.edit()', 'PUT', 1, 'admin', NULL, '/information', '127.0.0.1', '内网IP', '{\"infoImg\":\"/profile/infoImg/2020/02/26/cba8f030955297630d7d3a73a1c1f75c.jpg\",\"remark\":\"\",\"updateTime\":1582704333179,\"source\":\"UC日报\",\"params\":{},\"title\":\"某小伙子发明出了快速将垃圾进行分类的发明！！！\",\"content\":\"垃圾分类（英文名为Garbage classification），一般是指按一定规定或标准将垃圾分类储存、分类投放和分类搬运，从而转变成公共资源的一系列活动的总称。分类的目的是提高垃圾的资源价值和经济价值，力争物尽其用。 [1] \\n垃圾在分类储存阶段属于公众的私有品，垃圾经公众分类投放后成为公众所在小区或社区的区域性准公共资源，垃圾分类搬运到垃圾集中点或转运站后成为没有排除性的公共资源。从国内外各城市对生活垃圾分类的方法来看，大致都是根据垃圾的成分、产生量，结合本地垃圾的资源利用和处理方式来进行分类的。\\n进行垃圾分类收集可以减少垃圾处理量和处理设备，降低处理成本，减少土地资源的消耗，具有社会、经济、生态等几方面的效益。\\n2019年6月25日，生活垃圾分类制度将入法。 [2]  2019年9月，大连在每个垃圾分类投放点设督导员。\\n上海成为第一个中国垃圾分类试点城市 [3] \\n2019年12月6日，入选“2019年中国媒体十大流行语”。 [4] \",\"createBy\":\"admin\",\"createTime\":1577949489000,\"updateBy\":\"admin\",\"id\":\"3ab1ad4e3de34476ad03e54df7cdbd81\",\"viewCount\":\"7\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-02-26 16:05:33');
INSERT INTO `sys_oper_log` VALUES (30, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/02/26/aabf48d6cd78cef2a2f7683f68fde2e2.jpg\"}', 0, NULL, '2020-02-26 16:06:01');
INSERT INTO `sys_oper_log` VALUES (31, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/02/26/cfcaa48846734fc1de5a333cd6e7801c.jpg\"}', 0, NULL, '2020-02-26 16:06:06');
INSERT INTO `sys_oper_log` VALUES (32, '资讯管理', 2, 'com.ruoyi.project.information.controller.InformationController.edit()', 'PUT', 1, 'admin', NULL, '/information', '127.0.0.1', '内网IP', '{\"infoImg\":\"/profile/infoImg/2020/02/26/cfcaa48846734fc1de5a333cd6e7801c.jpg\",\"remark\":\"\",\"updateTime\":1582704369034,\"source\":\"今日视线\",\"params\":{},\"title\":\"政府对垃圾分类进行了新一套规整！！！\",\"content\":\"空\",\"createBy\":\"admin\",\"createTime\":1582529204000,\"updateBy\":\"admin\",\"id\":\"426266f023a948a2a6accb2a86553567\",\"viewCount\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-02-26 16:06:09');
INSERT INTO `sys_oper_log` VALUES (33, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/02/26/fa78f60871082f274d049558f8d55162.jpg\"}', 0, NULL, '2020-02-26 16:06:33');
INSERT INTO `sys_oper_log` VALUES (34, '资讯管理', 2, 'com.ruoyi.project.information.controller.InformationController.edit()', 'PUT', 1, 'admin', NULL, '/information', '127.0.0.1', '内网IP', '{\"infoImg\":\"/profile/infoImg/2020/02/26/fa78f60871082f274d049558f8d55162.jpg\",\"remark\":\"\",\"updateTime\":1582704395498,\"source\":\"佛山日报\",\"params\":{},\"title\":\"垃圾分类已成为了人们生活的习惯\",\"content\":\"垃圾分类（英文名为Garbage classification），一般是指按一定规定或标准将垃圾分类储存、分类投放和分类搬运，从而转变成公共资源的一系列活动的总称。分类的目的是提高垃圾的资源价值和经济价值，力争物尽其用。 [1] \\n垃圾在分类储存阶段属于公众的私有品，垃圾经公众分类投放后成为公众所在小区或社区的区域性准公共资源，垃圾分类搬运到垃圾集中点或转运站后成为没有排除性的公共资源。从国内外各城市对生活垃圾分类的方法来看，大致都是根据垃圾的成分、产生量，结合本地垃圾的资源利用和处理方式来进行分类的。\\n进行垃圾分类收集可以减少垃圾处理量和处理设备，降低处理成本，减少土地资源的消耗，具有社会、经济、生态等几方面的效益。\\n2019年6月25日，生活垃圾分类制度将入法。 [2]  2019年9月，大连在每个垃圾分类投放点设督导员。\\n上海成为第一个中国垃圾分类试点城市 [3] \\n2019年12月6日，入选“2019年中国媒体十大流行语”。 [4] \",\"createBy\":\"admin\",\"createTime\":1577285747000,\"updateBy\":\"admin\",\"id\":\"6f7dc816f5d04427a599f7129bdd2b1b\",\"viewCount\":\"2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-02-26 16:06:35');
INSERT INTO `sys_oper_log` VALUES (35, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/02/26/71c93a5bf3c4c48a145df55224e44bc0.jpg\"}', 0, NULL, '2020-02-26 16:06:56');
INSERT INTO `sys_oper_log` VALUES (36, '资讯管理', 2, 'com.ruoyi.project.information.controller.InformationController.edit()', 'PUT', 1, 'admin', NULL, '/information', '127.0.0.1', '内网IP', '{\"infoImg\":\"/profile/infoImg/2020/02/26/71c93a5bf3c4c48a145df55224e44bc0.jpg\",\"remark\":\"\",\"updateTime\":1582704418114,\"source\":\"今日视线\",\"params\":{},\"title\":\"叫你如何快速的进行垃圾的规整\",\"content\":\"空\",\"createBy\":\"admin\",\"createTime\":1582529163000,\"updateBy\":\"admin\",\"id\":\"8a31790a540b48648905fb83866ce940\",\"viewCount\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-02-26 16:06:58');
INSERT INTO `sys_oper_log` VALUES (37, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/02/26/eb6446df7985ef69990ab4994af72b70.jpg\"}', 0, NULL, '2020-02-26 16:07:20');
INSERT INTO `sys_oper_log` VALUES (38, '资讯管理', 2, 'com.ruoyi.project.information.controller.InformationController.edit()', 'PUT', 1, 'admin', NULL, '/information', '127.0.0.1', '内网IP', '{\"infoImg\":\"/profile/infoImg/2020/02/26/eb6446df7985ef69990ab4994af72b70.jpg\",\"remark\":\"\",\"updateTime\":1582704442574,\"source\":\"富人排行榜\",\"params\":{},\"title\":\"城市治理靠的是大家的自觉\",\"content\":\"垃圾分类（英文名为Garbage classification），一般是指按一定规定或标准将垃圾分类储存、分类投放和分类搬运，从而转变成公共资源的一系列活动的总称。分类的目的是提高垃圾的资源价值和经济价值，力争物尽其用。 [1] \\n垃圾在分类储存阶段属于公众的私有品，垃圾经公众分类投放后成为公众所在小区或社区的区域性准公共资源，垃圾分类搬运到垃圾集中点或转运站后成为没有排除性的公共资源。从国内外各城市对生活垃圾分类的方法来看，大致都是根据垃圾的成分、产生量，结合本地垃圾的资源利用和处理方式来进行分类的。\\n进行垃圾分类收集可以减少垃圾处理量和处理设备，降低处理成本，减少土地资源的消耗，具有社会、经济、生态等几方面的效益。\\n2019年6月25日，生活垃圾分类制度将入法。 [2]  2019年9月，大连在每个垃圾分类投放点设督导员。\\n上海成为第一个中国垃圾分类试点城市 [3] \\n2019年12月6日，入选“2019年中国媒体十大流行语”。 [4] \",\"createBy\":\"admin\",\"createTime\":1578315924000,\"updateBy\":\"admin\",\"id\":\"af058beb7f2743778a316603104049f9\",\"viewCount\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-02-26 16:07:22');
INSERT INTO `sys_oper_log` VALUES (39, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/02/26/81866b8a90f36456837fa121f5d76e3d.jpg\"}', 0, NULL, '2020-02-26 16:07:48');
INSERT INTO `sys_oper_log` VALUES (40, '资讯管理', 2, 'com.ruoyi.project.information.controller.InformationController.edit()', 'PUT', 1, 'admin', NULL, '/information', '127.0.0.1', '内网IP', '{\"infoImg\":\"/profile/infoImg/2020/02/26/81866b8a90f36456837fa121f5d76e3d.jpg\",\"remark\":\"\",\"updateTime\":1582704470049,\"source\":\"今日视线\",\"params\":{},\"title\":\"开学之日如果帮助孩子进行更好的区分垃圾的类别\",\"content\":\"空\",\"createBy\":\"admin\",\"createTime\":1582529499000,\"updateBy\":\"admin\",\"id\":\"fc63595c561f446d8f8fbec39151da57\",\"viewCount\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-02-26 16:07:50');
INSERT INTO `sys_oper_log` VALUES (41, '回收站图片', 2, 'com.ruoyi.project.cycling.controller.CyclingController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/cycling/uploadCyclingImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/CycImg/2020/02/26/21ab6a085de5f6e1769b497796241bf3.jpg\"}', 0, NULL, '2020-02-26 16:10:44');
INSERT INTO `sys_oper_log` VALUES (42, '回收站管理', 2, 'com.ruoyi.project.cycling.controller.CyclingController.edit()', 'PUT', 1, 'admin', NULL, '/cycling', '127.0.0.1', '内网IP', '{\"cyclingAddress\":\"广东省佛山市禅城区祖庙街道垂虹村新荣大厦\",\"cyclingDetail\":\"1.针对客户需求，定制整体化服务解决方案，提供社区和楼宇智能垃圾分类闭环解决方案\\n2.分类回收站/垃圾箱/分类桶等产品无论在结构功能方面，还是广告营收方面都进行了精心规划设计，与市场化运作需求紧密贴合，全面满足客户对产品和盈利的需求。\",\"cyclingMan\":\"李先生\",\"remark\":\"\",\"updateTime\":1582704646370,\"params\":{},\"createBy\":\"admin\",\"createTime\":1577948229000,\"updateBy\":\"admin\",\"cyclingMobile\":\"17765603040\",\"id\":\"0593cbd727204f5387e489888221daf9\",\"addressY\":\"23.01502\",\"addressX\":\"113.11537\",\"cyclingImg\":\"/profile/CycImg/2020/02/26/21ab6a085de5f6e1769b497796241bf3.jpg\",\"cyclingIntroduce\":\"专业上门收购废品！有大小货车拉货。有工人搬运，欢迎老板的来电咨询。\",\"cyclingName\":\"铭记废品回收站\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-02-26 16:10:46');
INSERT INTO `sys_oper_log` VALUES (43, '回收站图片', 2, 'com.ruoyi.project.cycling.controller.CyclingController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/cycling/uploadCyclingImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/CycImg/2020/02/26/79c6412b47558d5448c7bc00684fd9e0.jpg\"}', 0, NULL, '2020-02-26 16:10:59');
INSERT INTO `sys_oper_log` VALUES (44, '回收站管理', 2, 'com.ruoyi.project.cycling.controller.CyclingController.edit()', 'PUT', 1, 'admin', NULL, '/cycling', '127.0.0.1', '内网IP', '{\"cyclingAddress\":\"广东省佛山市禅城区石湾镇街道忠信路12号南风古灶\",\"cyclingDetail\":\"1.针对客户需求，定制整体化服务解决方案，提供社区和楼宇智能垃圾分类闭环解决方案 2.分类回收站/垃圾箱/分类桶等产品无论在结构功能方面，还是广告营收方面都进行了精心规划设计，与市场化运作需求紧密贴合，全面满足客户对产品和盈利的需求。\",\"cyclingMan\":\"张先生\",\"remark\":\"\",\"updateTime\":1582704661618,\"params\":{},\"createBy\":\"admin\",\"createTime\":1577948360000,\"updateBy\":\"admin\",\"cyclingMobile\":\"17765603324\",\"id\":\"4345ef5de02a437c882fa2efce29d7e9\",\"addressY\":\"23.004276\",\"addressX\":\"113.077562\",\"cyclingImg\":\"/profile/CycImg/2020/02/26/79c6412b47558d5448c7bc00684fd9e0.jpg\",\"cyclingIntroduce\":\"公司秉承“诚信经营，用心服务”的理念，为您提供优质的产品和服务。欢迎来电咨询！\",\"cyclingName\":\"百益废品回收站\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-02-26 16:11:01');
INSERT INTO `sys_oper_log` VALUES (45, '回收站图片', 2, 'com.ruoyi.project.cycling.controller.CyclingController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/cycling/uploadCyclingImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/CycImg/2020/02/26/b6cfe56ef8d5bb49d2a4057a99c51396.jpg\"}', 0, NULL, '2020-02-26 16:11:26');
INSERT INTO `sys_oper_log` VALUES (46, '回收站管理', 2, 'com.ruoyi.project.cycling.controller.CyclingController.edit()', 'PUT', 1, 'admin', NULL, '/cycling', '127.0.0.1', '内网IP', '{\"cyclingAddress\":\"广东省佛山市南海区狮山镇佛山沙堤机场\",\"cyclingDetail\":\"1.针对客户需求，定制整体化服务解决方案，提供社区和楼宇智能垃圾分类闭环解决方案 2.分类回收站/垃圾箱/分类桶等产品无论在结构功能方面，还是广告营收方面都进行了精心规划设计，与市场化运作需求紧密贴合，全面满足客户对产品和盈利的需求。\",\"cyclingMan\":\"邱先生\",\"remark\":\"\",\"updateTime\":1582704688593,\"params\":{},\"createBy\":\"admin\",\"createTime\":1577948441000,\"updateBy\":\"admin\",\"cyclingMobile\":\"17765602265\",\"id\":\"a11e23b86b4e4615b8cfc1ddf12a10be\",\"addressY\":\"23.078441\",\"addressX\":\"113.073528\",\"cyclingImg\":\"/profile/CycImg/2020/02/26/b6cfe56ef8d5bb49d2a4057a99c51396.jpg\",\"cyclingIntroduce\":\"专业收废铁,废不锈钢,废铜,废铝,废锌,废铅,废塑料,废纸板等本站诚实经营,价格合理,保证客户利益最大化!重视与客户的长期联盟合作关系!\",\"cyclingName\":\"百宝箱废品回收站\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-02-26 16:11:28');
INSERT INTO `sys_oper_log` VALUES (47, '回收站图片', 2, 'com.ruoyi.project.cycling.controller.CyclingController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/cycling/uploadCyclingImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/CycImg/2020/02/26/d50053d2db502028c741773be57e5de3.jpg\"}', 0, NULL, '2020-02-26 16:13:48');
INSERT INTO `sys_oper_log` VALUES (48, '回收站管理', 2, 'com.ruoyi.project.cycling.controller.CyclingController.edit()', 'PUT', 1, 'admin', NULL, '/cycling', '127.0.0.1', '内网IP', '{\"cyclingAddress\":\"广东省广州市白云区江高镇学苑路广东白云学院西校区\",\"cyclingDetail\":\"可回收垃圾、厨余垃圾、有害垃圾和其他垃圾。 可回收垃圾是指可以循环再利用的废弃物，也是废品回收公司回收的废料，主要包括废纸、废塑料、废玻璃、金属和布料等。废纸主要包括报纸、杂志、图书、纸壳等；废塑料主要包括塑料袋、塑料包装盒、塑料餐盒餐具、塑料瓶子等；废玻璃主要包括各种玻璃瓶、玻璃片、镜子和灯泡等；金属主要包括罐头盒等；布料主要包括废毛巾、丢弃的旧衣服等。 厨余垃圾是指人们在加工、存储、食用各种食品过程中所产生的残余废弃物。包括生厨余垃圾和熟厨余垃圾2类，生厨余垃圾包括果壳、贝壳等，熟厨余垃圾包括剩菜剩饭、骨头、菜根菜叶等，可以经生物技术就地处理堆肥。 有害垃圾是指对人体健康和环境有害的重金属、有毒物质或者潜在危害的废弃物，包括废电池、废水银温度计、过期药品、电子垃圾等，这些垃圾需要特殊安全处理。\",\"cyclingMan\":\"李先生\",\"remark\":\"\",\"updateTime\":1582704830760,\"params\":{},\"createBy\":\"admin\",\"createTime\":1582442892000,\"updateBy\":\"admin\",\"cyclingMobile\":\"17765603230\",\"id\":\"51a2049fcbc641c193d9341e093064fc\",\"addressY\":\"23.27368\",\"addressX\":\"113.209747\",\"cyclingImg\":\"/profile/CycImg/2020/02/26/d50053d2db502028c741773be57e5de3.jpg\",\"cyclingIntroduce\":\"2016年在推进行业转型升级的指导意见中就指出，积极推广“互联网+回收”模式。紧接着今年4月，又在《循环发展引领行动》中强调，支持再生资源企业建立线上线下融合的回收网络。\",\"cyclingName\":\"广州白云废品回收站\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-02-26 16:13:50');
INSERT INTO `sys_oper_log` VALUES (49, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-01 15:03:18');
INSERT INTO `sys_oper_log` VALUES (50, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-01 15:08:28');
INSERT INTO `sys_oper_log` VALUES (51, '用户管理', 2, 'com.ruoyi.project.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"roleKey\":\"admin\",\"roleName\":\"管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1521171180000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"123@163.com\",\"nickName\":\"阿钊\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"/profile/avatar/2020/02/24/251d07f6be448885c2bda4e0a5cac01a.jpeg\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1521171180000,\"status\":\"0\"}', 'null', 1, '不允许操作超级管理员用户', '2020-03-01 15:09:50');
INSERT INTO `sys_oper_log` VALUES (52, '用户管理', 2, 'com.ruoyi.project.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"roleKey\":\"admin\",\"roleName\":\"管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1521171180000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"123@163.com\",\"nickName\":\"阿钊\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"/profile/avatar/2020/02/24/251d07f6be448885c2bda4e0a5cac01a.jpeg\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1521171180000,\"status\":\"0\"}', 'null', 1, '不允许操作超级管理员用户', '2020-03-01 15:09:51');
INSERT INTO `sys_oper_log` VALUES (53, '用户管理', 3, 'com.ruoyi.project.system.controller.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/2', '127.0.0.1', '内网IP', '{userIds=2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-01 15:10:07');
INSERT INTO `sys_oper_log` VALUES (54, '用户管理', 1, 'com.ruoyi.project.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"17765603040\",\"admin\":false,\"password\":\"$2a$10$sQ2bZL1Z//zQWp60KyZOrOsz6DowlRUGYs8eAcdc63HpxMtFcz/AG\",\"postIds\":[1],\"email\":\"123@qq.com\",\"nickName\":\"阿钊\",\"sex\":\"0\",\"deptId\":100,\"params\":{},\"userName\":\"阿钊\",\"userId\":100,\"createBy\":\"admin\",\"roleIds\":[2],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-01 15:11:42');
INSERT INTO `sys_oper_log` VALUES (55, '用户管理', 2, 'com.ruoyi.project.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"17765603040\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[1],\"loginIp\":\"\",\"email\":\"123@qq.com\",\"nickName\":\"test\",\"sex\":\"0\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"环保助手\",\"leader\":\"若依\",\"deptId\":100,\"orderNum\":\"0\",\"params\":{},\"parentId\":0,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"阿钊\",\"userId\":100,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1583046702000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-01 15:12:03');
INSERT INTO `sys_oper_log` VALUES (56, '用户管理', 2, 'com.ruoyi.project.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"17765603040\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[1],\"loginIp\":\"\",\"email\":\"123@qq.com\",\"nickName\":\"阿钊\",\"sex\":\"0\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"环保助手\",\"leader\":\"若依\",\"deptId\":100,\"orderNum\":\"0\",\"params\":{},\"parentId\":0,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"test\",\"userId\":100,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1583046702000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-01 15:12:20');
INSERT INTO `sys_oper_log` VALUES (57, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"edit\",\"orderNum\":\"7\",\"menuName\":\"参数设置\",\"params\":{},\"parentId\":1,\"path\":\"config\",\"component\":\"system/config/index\",\"children\":[],\"createTime\":1521171180000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":106,\"menuType\":\"C\",\"perms\":\"system:config:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-01 15:13:44');
INSERT INTO `sys_oper_log` VALUES (58, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"message\",\"orderNum\":\"8\",\"menuName\":\"通知公告\",\"params\":{},\"parentId\":1,\"path\":\"notice\",\"component\":\"system/notice/index\",\"children\":[],\"createTime\":1521171180000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":107,\"menuType\":\"C\",\"perms\":\"system:notice:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-01 15:13:52');
INSERT INTO `sys_oper_log` VALUES (59, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"log\",\"orderNum\":\"9\",\"menuName\":\"日志管理\",\"params\":{},\"parentId\":1,\"path\":\"log\",\"component\":\"system/log/index\",\"children\":[],\"createTime\":1521171180000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":108,\"menuType\":\"M\",\"perms\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-01 15:13:58');
INSERT INTO `sys_oper_log` VALUES (60, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"dict\",\"orderNum\":\"6\",\"menuName\":\"字典管理\",\"params\":{},\"parentId\":1,\"path\":\"dict\",\"component\":\"system/dict/index\",\"children\":[],\"createTime\":1521171180000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":105,\"menuType\":\"C\",\"perms\":\"system:dict:list\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-01 15:14:20');
INSERT INTO `sys_oper_log` VALUES (61, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-01 15:15:08');
INSERT INTO `sys_oper_log` VALUES (62, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-02 14:47:11');
INSERT INTO `sys_oper_log` VALUES (63, '用户管理', 1, 'com.ruoyi.project.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"password\":\"123456\",\"postIds\":[],\"nickName\":\"test\",\"deptId\":100,\"params\":{},\"userName\":\"test\",\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"新增用户\'test\'失败，登录账号已存在\",\"code\":500}', 0, NULL, '2020-03-02 14:48:03');
INSERT INTO `sys_oper_log` VALUES (64, '用户管理', 1, 'com.ruoyi.project.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"password\":\"$2a$10$JgfS5ub4k2h27K1F9LZ8x.qlp3JPZ1MgyhtFeXFrjfIsb.8ze0LWu\",\"postIds\":[],\"nickName\":\"test\",\"deptId\":100,\"params\":{},\"userName\":\"test1\",\"userId\":101,\"createBy\":\"admin\",\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-02 14:48:13');
INSERT INTO `sys_oper_log` VALUES (65, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-02 14:48:24');
INSERT INTO `sys_oper_log` VALUES (66, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-02 14:48:33');
INSERT INTO `sys_oper_log` VALUES (67, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'test1', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-02 14:49:03');
INSERT INTO `sys_oper_log` VALUES (68, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'test1', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-02 14:49:22');
INSERT INTO `sys_oper_log` VALUES (69, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'test1', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-02 15:00:18');
INSERT INTO `sys_oper_log` VALUES (70, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'test1', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-02 15:00:23');
INSERT INTO `sys_oper_log` VALUES (71, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'test1', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-02 15:00:50');
INSERT INTO `sys_oper_log` VALUES (72, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'test1', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-02 15:01:04');
INSERT INTO `sys_oper_log` VALUES (73, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-02 15:01:17');
INSERT INTO `sys_oper_log` VALUES (74, '用户管理', 3, 'com.ruoyi.project.system.controller.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/101', '127.0.0.1', '内网IP', '{userIds=101}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-02 15:01:31');
INSERT INTO `sys_oper_log` VALUES (75, '用户管理', 3, 'com.ruoyi.project.system.controller.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/100', '127.0.0.1', '内网IP', '{userIds=100}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-02 15:01:36');
INSERT INTO `sys_oper_log` VALUES (76, '用户管理', 1, 'com.ruoyi.project.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"password\":\"111111\",\"postIds\":[],\"nickName\":\"test\",\"deptId\":103,\"params\":{},\"userName\":\"test\",\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"新增用户\'test\'失败，登录账号已存在\",\"code\":500}', 0, NULL, '2020-03-02 15:02:01');
INSERT INTO `sys_oper_log` VALUES (77, '用户管理', 1, 'com.ruoyi.project.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"password\":\"111111\",\"postIds\":[],\"nickName\":\"test1\",\"deptId\":103,\"params\":{},\"userName\":\"test1\",\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"新增用户\'test1\'失败，登录账号已存在\",\"code\":500}', 0, NULL, '2020-03-02 15:02:08');
INSERT INTO `sys_oper_log` VALUES (78, '用户管理', 1, 'com.ruoyi.project.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"password\":\"$2a$10$qaEr9asKIhBHlhNKTc5o0uZXaQibRVMP.CUG.Akhl8VP8/hfSVJO.\",\"postIds\":[],\"nickName\":\"test\",\"deptId\":103,\"params\":{},\"userName\":\"test\",\"userId\":102,\"createBy\":\"admin\",\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-02 15:03:19');
INSERT INTO `sys_oper_log` VALUES (79, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'test', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-02 15:03:50');
INSERT INTO `sys_oper_log` VALUES (80, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'test', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-02 15:08:11');
INSERT INTO `sys_oper_log` VALUES (81, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'test', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-02 15:08:29');
INSERT INTO `sys_oper_log` VALUES (82, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'test', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-02 15:15:17');
INSERT INTO `sys_oper_log` VALUES (83, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'test', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-02 15:21:06');
INSERT INTO `sys_oper_log` VALUES (84, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'test', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-02 15:22:04');
INSERT INTO `sys_oper_log` VALUES (85, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-02 15:22:36');
INSERT INTO `sys_oper_log` VALUES (86, '用户管理', 2, 'com.ruoyi.project.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[],\"phonenumber\":\"17765656030\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[1],\"loginIp\":\"\",\"email\":\"\",\"nickName\":\"test\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"test\",\"userId\":102,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1583132599000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-02 15:23:05');
INSERT INTO `sys_oper_log` VALUES (87, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'test', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-02 15:23:27');
INSERT INTO `sys_oper_log` VALUES (88, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'test', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-02 15:23:31');
INSERT INTO `sys_oper_log` VALUES (89, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'test', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-02 15:24:14');
INSERT INTO `sys_oper_log` VALUES (90, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-02 15:24:57');
INSERT INTO `sys_oper_log` VALUES (91, '角色管理', 1, 'com.ruoyi.project.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"params\":{},\"roleSort\":\"0\",\"createBy\":\"admin\",\"roleKey\":\"testyg\",\"roleName\":\"测试人员\",\"deptIds\":[],\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,107,1036,1037,1038,1039,108,500,1040,1041,1042,501,1043,1044,1045,2031,2032,2006,2000,2001,2002,2003,2004,2005,2007,2022,2009,2033,2023],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-02 15:27:18');
INSERT INTO `sys_oper_log` VALUES (92, '用户管理', 2, 'com.ruoyi.project.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"roleKey\":\"admin\",\"roleName\":\"管理员\",\"status\":\"0\"}],\"phonenumber\":\"17765656030\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[1],\"loginIp\":\"\",\"email\":\"\",\"nickName\":\"test\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"test\",\"userId\":102,\"createBy\":\"admin\",\"roleIds\":[100],\"createTime\":1583132599000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-02 15:27:33');
INSERT INTO `sys_oper_log` VALUES (93, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-03 16:47:51');
INSERT INTO `sys_oper_log` VALUES (94, '用户管理', 2, 'com.ruoyi.project.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"roleKey\":\"admin\",\"roleName\":\"管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1521171180000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"阿钊\",\"sex\":\"1\",\"deptId\":100,\"avatar\":\"/profile/avatar/2020/02/24/251d07f6be448885c2bda4e0a5cac01a.jpeg\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1521171180000,\"status\":\"0\"}', 'null', 1, '不允许操作超级管理员用户', '2020-03-03 16:48:22');
INSERT INTO `sys_oper_log` VALUES (95, '用户管理', 2, 'com.ruoyi.project.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"roleKey\":\"admin\",\"roleName\":\"管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1521171180000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"阿钊\",\"sex\":\"1\",\"deptId\":100,\"avatar\":\"/profile/avatar/2020/02/24/251d07f6be448885c2bda4e0a5cac01a.jpeg\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1521171180000,\"status\":\"0\"}', 'null', 1, '不允许操作超级管理员用户', '2020-03-03 16:48:24');
INSERT INTO `sys_oper_log` VALUES (96, '部门管理', 3, 'com.ruoyi.project.system.controller.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/102', '127.0.0.1', '内网IP', '{deptId=102}', '{\"msg\":\"存在下级部门,不允许删除\",\"code\":500}', 0, NULL, '2020-03-03 16:48:36');
INSERT INTO `sys_oper_log` VALUES (97, '部门管理', 3, 'com.ruoyi.project.system.controller.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/108', '127.0.0.1', '内网IP', '{deptId=108}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-03 16:48:40');
INSERT INTO `sys_oper_log` VALUES (98, '部门管理', 3, 'com.ruoyi.project.system.controller.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/109', '127.0.0.1', '内网IP', '{deptId=109}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-03 16:48:44');
INSERT INTO `sys_oper_log` VALUES (99, '部门管理', 3, 'com.ruoyi.project.system.controller.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/102', '127.0.0.1', '内网IP', '{deptId=102}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-03 16:48:47');
INSERT INTO `sys_oper_log` VALUES (100, '部门管理', 3, 'com.ruoyi.project.system.controller.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/107', '127.0.0.1', '内网IP', '{deptId=107}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-03 16:48:52');
INSERT INTO `sys_oper_log` VALUES (101, '部门管理', 3, 'com.ruoyi.project.system.controller.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/106', '127.0.0.1', '内网IP', '{deptId=106}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-03 16:48:55');
INSERT INTO `sys_oper_log` VALUES (102, '部门管理', 3, 'com.ruoyi.project.system.controller.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/103', '127.0.0.1', '内网IP', '{deptId=103}', '{\"msg\":\"部门存在用户,不允许删除\",\"code\":500}', 0, NULL, '2020-03-03 16:48:59');
INSERT INTO `sys_oper_log` VALUES (103, '部门管理', 3, 'com.ruoyi.project.system.controller.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/104', '127.0.0.1', '内网IP', '{deptId=104}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-03 16:49:04');
INSERT INTO `sys_oper_log` VALUES (104, '部门管理', 3, 'com.ruoyi.project.system.controller.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/105', '127.0.0.1', '内网IP', '{deptId=105}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-03 16:49:07');
INSERT INTO `sys_oper_log` VALUES (105, '用户管理', 2, 'com.ruoyi.project.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":100,\"admin\":false,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"0\",\"roleKey\":\"testyg\",\"roleName\":\"测试人员\",\"status\":\"0\"}],\"phonenumber\":\"17765656030\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[1],\"loginIp\":\"\",\"email\":\"\",\"nickName\":\"test\",\"sex\":\"0\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部门\",\"leader\":\"若依\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"test\",\"userId\":102,\"createBy\":\"admin\",\"roleIds\":[100],\"createTime\":1583132599000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-03 17:03:10');
INSERT INTO `sys_oper_log` VALUES (106, '用户管理', 2, 'com.ruoyi.project.system.controller.SysUserController.resetPwd()', 'PUT', 1, 'admin', NULL, '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\"admin\":true,\"password\":\"111111\",\"params\":{},\"userId\":1}', 'null', 1, '不允许操作超级管理员用户', '2020-03-03 17:03:21');
INSERT INTO `sys_oper_log` VALUES (107, '角色管理', 2, 'com.ruoyi.project.system.controller.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"createTime\":1521171180000,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"deptIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-03 17:08:56');
INSERT INTO `sys_oper_log` VALUES (108, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-03 20:31:12');
INSERT INTO `sys_oper_log` VALUES (109, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-03 21:43:23');
INSERT INTO `sys_oper_log` VALUES (110, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-03 21:44:34');
INSERT INTO `sys_oper_log` VALUES (111, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '192.168.3.69', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-06 20:24:09');
INSERT INTO `sys_oper_log` VALUES (112, '图片轮播图', 3, 'com.ruoyi.project.appImg.controller.AppImgController.remove()', 'DELETE', 1, 'admin', NULL, '/system/img/348a750947c84ad790906204bc7fbcde', '192.168.3.69', '内网IP', '{ids=348a750947c84ad790906204bc7fbcde}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-06 21:32:15');
INSERT INTO `sys_oper_log` VALUES (113, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '192.168.3.69', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/03/06/801a54aa9c254eae4447cfceeb98254a.jpg\"}', 0, NULL, '2020-03-06 21:33:16');
INSERT INTO `sys_oper_log` VALUES (114, '图片轮播图', 1, 'com.ruoyi.project.appImg.controller.AppImgController.add()', 'POST', 1, 'admin', NULL, '/system/img', '192.168.3.69', '内网IP', '{\"params\":{},\"imgTab\":\"0\",\"openFlag\":\"0\",\"createTime\":1583501599631,\"imgPath\":\"/profile/infoImg/2020/03/06/801a54aa9c254eae4447cfceeb98254a.jpg\",\"id\":\"96378763a4154f66913306ebd41a6133\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-06 21:33:20');
INSERT INTO `sys_oper_log` VALUES (115, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-07 12:39:54');
INSERT INTO `sys_oper_log` VALUES (116, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-07 14:11:48');
INSERT INTO `sys_oper_log` VALUES (117, '图片轮播图', 3, 'com.ruoyi.project.appImg.controller.AppImgController.remove()', 'DELETE', 1, 'admin', NULL, '/system/img/aa6cb7b846d04ab7a53da89c200dd6be', '127.0.0.1', '内网IP', '{ids=aa6cb7b846d04ab7a53da89c200dd6be}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-07 14:12:14');
INSERT INTO `sys_oper_log` VALUES (118, '图片轮播图', 3, 'com.ruoyi.project.appImg.controller.AppImgController.remove()', 'DELETE', 1, 'admin', NULL, '/system/img/96378763a4154f66913306ebd41a6133', '127.0.0.1', '内网IP', '{ids=96378763a4154f66913306ebd41a6133}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-07 14:12:18');
INSERT INTO `sys_oper_log` VALUES (119, '图片轮播图', 3, 'com.ruoyi.project.appImg.controller.AppImgController.remove()', 'DELETE', 1, 'admin', NULL, '/system/img/6d1415e5734f40a9881c17763e7add6e', '127.0.0.1', '内网IP', '{ids=6d1415e5734f40a9881c17763e7add6e}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-07 14:12:23');
INSERT INTO `sys_oper_log` VALUES (120, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/03/07/aa6554fdcfac76f816529ca4814798e7.jpg\"}', 0, NULL, '2020-03-07 14:12:34');
INSERT INTO `sys_oper_log` VALUES (121, '图片轮播图', 1, 'com.ruoyi.project.appImg.controller.AppImgController.add()', 'POST', 1, 'admin', NULL, '/system/img', '127.0.0.1', '内网IP', '{\"params\":{},\"imgTab\":\"0\",\"openFlag\":\"0\",\"createTime\":1583561557743,\"imgPath\":\"/profile/infoImg/2020/03/07/aa6554fdcfac76f816529ca4814798e7.jpg\",\"id\":\"3614575fcfe04bdc9ae88c00b9ace878\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-07 14:12:37');
INSERT INTO `sys_oper_log` VALUES (122, '回收站图片', 2, 'com.ruoyi.project.cycling.controller.CyclingController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/cycling/uploadCyclingImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/CycImg/2020/03/07/b71ee5b4638e32f77a15cd5aa31c7e56.jpg\"}', 0, NULL, '2020-03-07 14:13:47');
INSERT INTO `sys_oper_log` VALUES (123, '回收站管理', 2, 'com.ruoyi.project.cycling.controller.CyclingController.edit()', 'PUT', 1, 'admin', NULL, '/cycling', '127.0.0.1', '内网IP', '{\"cyclingAddress\":\"广东省佛山市禅城区祖庙街道垂虹村新荣大厦\",\"cyclingDetail\":\"1.针对客户需求，定制整体化服务解决方案，提供社区和楼宇智能垃圾分类闭环解决方案\\n2.分类回收站/垃圾箱/分类桶等产品无论在结构功能方面，还是广告营收方面都进行了精心规划设计，与市场化运作需求紧密贴合，全面满足客户对产品和盈利的需求。\",\"cyclingMan\":\"李先生\",\"remark\":\"\",\"updateTime\":1583561630132,\"params\":{},\"createBy\":\"admin\",\"createTime\":1577948229000,\"updateBy\":\"admin\",\"cyclingMobile\":\"17765603040\",\"id\":\"0593cbd727204f5387e489888221daf9\",\"addressY\":\"23.01502\",\"addressX\":\"113.11537\",\"cyclingImg\":\"/profile/CycImg/2020/03/07/b71ee5b4638e32f77a15cd5aa31c7e56.jpg\",\"cyclingIntroduce\":\"专业上门收购废品！有大小货车拉货。有工人搬运，欢迎老板的来电咨询。\",\"cyclingName\":\"铭记废品回收站\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-07 14:13:50');
INSERT INTO `sys_oper_log` VALUES (124, '回收站图片', 2, 'com.ruoyi.project.cycling.controller.CyclingController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/cycling/uploadCyclingImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/CycImg/2020/03/07/e0897a8d4124292bb8aa3d3462de0fce.jpg\"}', 0, NULL, '2020-03-07 14:14:04');
INSERT INTO `sys_oper_log` VALUES (125, '回收站管理', 2, 'com.ruoyi.project.cycling.controller.CyclingController.edit()', 'PUT', 1, 'admin', NULL, '/cycling', '127.0.0.1', '内网IP', '{\"cyclingAddress\":\"广东省佛山市禅城区石湾镇街道忠信路12号南风古灶\",\"cyclingDetail\":\"1.针对客户需求，定制整体化服务解决方案，提供社区和楼宇智能垃圾分类闭环解决方案 2.分类回收站/垃圾箱/分类桶等产品无论在结构功能方面，还是广告营收方面都进行了精心规划设计，与市场化运作需求紧密贴合，全面满足客户对产品和盈利的需求。\",\"cyclingMan\":\"张先生\",\"remark\":\"\",\"updateTime\":1583561646869,\"params\":{},\"createBy\":\"admin\",\"createTime\":1577948360000,\"updateBy\":\"admin\",\"cyclingMobile\":\"17765603324\",\"id\":\"4345ef5de02a437c882fa2efce29d7e9\",\"addressY\":\"23.004276\",\"addressX\":\"113.077562\",\"cyclingImg\":\"/profile/CycImg/2020/03/07/e0897a8d4124292bb8aa3d3462de0fce.jpg\",\"cyclingIntroduce\":\"公司秉承“诚信经营，用心服务”的理念，为您提供优质的产品和服务。欢迎来电咨询！\",\"cyclingName\":\"百益废品回收站\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-07 14:14:06');
INSERT INTO `sys_oper_log` VALUES (126, '回收站图片', 2, 'com.ruoyi.project.cycling.controller.CyclingController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/cycling/uploadCyclingImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/CycImg/2020/03/07/35805418af0eab67bd69625cc9e6f25f.jpg\"}', 0, NULL, '2020-03-07 14:14:15');
INSERT INTO `sys_oper_log` VALUES (127, '回收站管理', 2, 'com.ruoyi.project.cycling.controller.CyclingController.edit()', 'PUT', 1, 'admin', NULL, '/cycling', '127.0.0.1', '内网IP', '{\"cyclingAddress\":\"广东省广州市白云区江高镇学苑路广东白云学院西校区\",\"cyclingDetail\":\"可回收垃圾、厨余垃圾、有害垃圾和其他垃圾。 可回收垃圾是指可以循环再利用的废弃物，也是废品回收公司回收的废料，主要包括废纸、废塑料、废玻璃、金属和布料等。废纸主要包括报纸、杂志、图书、纸壳等；废塑料主要包括塑料袋、塑料包装盒、塑料餐盒餐具、塑料瓶子等；废玻璃主要包括各种玻璃瓶、玻璃片、镜子和灯泡等；金属主要包括罐头盒等；布料主要包括废毛巾、丢弃的旧衣服等。 厨余垃圾是指人们在加工、存储、食用各种食品过程中所产生的残余废弃物。包括生厨余垃圾和熟厨余垃圾2类，生厨余垃圾包括果壳、贝壳等，熟厨余垃圾包括剩菜剩饭、骨头、菜根菜叶等，可以经生物技术就地处理堆肥。 有害垃圾是指对人体健康和环境有害的重金属、有毒物质或者潜在危害的废弃物，包括废电池、废水银温度计、过期药品、电子垃圾等，这些垃圾需要特殊安全处理。\",\"cyclingMan\":\"李先生\",\"remark\":\"\",\"updateTime\":1583561657550,\"params\":{},\"createBy\":\"admin\",\"createTime\":1582442892000,\"updateBy\":\"admin\",\"cyclingMobile\":\"17765603230\",\"id\":\"51a2049fcbc641c193d9341e093064fc\",\"addressY\":\"23.27368\",\"addressX\":\"113.209747\",\"cyclingImg\":\"/profile/CycImg/2020/03/07/35805418af0eab67bd69625cc9e6f25f.jpg\",\"cyclingIntroduce\":\"2016年在推进行业转型升级的指导意见中就指出，积极推广“互联网+回收”模式。紧接着今年4月，又在《循环发展引领行动》中强调，支持再生资源企业建立线上线下融合的回收网络。\",\"cyclingName\":\"广州白云废品回收站\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-07 14:14:17');
INSERT INTO `sys_oper_log` VALUES (128, '回收站图片', 2, 'com.ruoyi.project.cycling.controller.CyclingController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/cycling/uploadCyclingImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/CycImg/2020/03/07/28ac429c61f0e4f2b289d5d1ef3e20d2.jpg\"}', 0, NULL, '2020-03-07 14:14:27');
INSERT INTO `sys_oper_log` VALUES (129, '回收站管理', 2, 'com.ruoyi.project.cycling.controller.CyclingController.edit()', 'PUT', 1, 'admin', NULL, '/cycling', '127.0.0.1', '内网IP', '{\"cyclingAddress\":\"广东省佛山市南海区狮山镇佛山沙堤机场\",\"cyclingDetail\":\"1.针对客户需求，定制整体化服务解决方案，提供社区和楼宇智能垃圾分类闭环解决方案 2.分类回收站/垃圾箱/分类桶等产品无论在结构功能方面，还是广告营收方面都进行了精心规划设计，与市场化运作需求紧密贴合，全面满足客户对产品和盈利的需求。\",\"cyclingMan\":\"邱先生\",\"remark\":\"\",\"updateTime\":1583561669198,\"params\":{},\"createBy\":\"admin\",\"createTime\":1577948441000,\"updateBy\":\"admin\",\"cyclingMobile\":\"17765602265\",\"id\":\"a11e23b86b4e4615b8cfc1ddf12a10be\",\"addressY\":\"23.078441\",\"addressX\":\"113.073528\",\"cyclingImg\":\"/profile/CycImg/2020/03/07/28ac429c61f0e4f2b289d5d1ef3e20d2.jpg\",\"cyclingIntroduce\":\"专业收废铁,废不锈钢,废铜,废铝,废锌,废铅,废塑料,废纸板等本站诚实经营,价格合理,保证客户利益最大化!重视与客户的长期联盟合作关系!\",\"cyclingName\":\"百宝箱废品回收站\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-07 14:14:29');
INSERT INTO `sys_oper_log` VALUES (130, '图片轮播图', 3, 'com.ruoyi.project.appImg.controller.AppImgController.remove()', 'DELETE', 1, 'admin', NULL, '/system/img/b6448f1d8efd45ffbe7bf711ab5c13cb', '127.0.0.1', '内网IP', '{ids=b6448f1d8efd45ffbe7bf711ab5c13cb}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-07 14:14:39');
INSERT INTO `sys_oper_log` VALUES (131, '图片轮播图', 3, 'com.ruoyi.project.appImg.controller.AppImgController.remove()', 'DELETE', 1, 'admin', NULL, '/system/img/a1d20524f5664e079a764400ca7e2325', '127.0.0.1', '内网IP', '{ids=a1d20524f5664e079a764400ca7e2325}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-07 14:14:42');
INSERT INTO `sys_oper_log` VALUES (132, '图片轮播图', 3, 'com.ruoyi.project.appImg.controller.AppImgController.remove()', 'DELETE', 1, 'admin', NULL, '/system/img/1a2165e8d8c248cca41f9ab270cde008', '127.0.0.1', '内网IP', '{ids=1a2165e8d8c248cca41f9ab270cde008}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-07 14:14:50');
INSERT INTO `sys_oper_log` VALUES (133, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/03/07/0cd1e4904522936b918f251667c9942f.jpg\"}', 0, NULL, '2020-03-07 14:14:58');
INSERT INTO `sys_oper_log` VALUES (134, '图片轮播图', 1, 'com.ruoyi.project.appImg.controller.AppImgController.add()', 'POST', 1, 'admin', NULL, '/system/img', '127.0.0.1', '内网IP', '{\"params\":{},\"imgTab\":\"1\",\"openFlag\":\"0\",\"createTime\":1583561701017,\"imgPath\":\"/profile/infoImg/2020/03/07/0cd1e4904522936b918f251667c9942f.jpg\",\"id\":\"0344c72db22f461ab2ed1d7222d1eef3\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-07 14:15:01');
INSERT INTO `sys_oper_log` VALUES (135, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/03/07/0a6046bdf1da1cf489e92c04dd4d79e8.jpg\"}', 0, NULL, '2020-03-07 14:15:27');
INSERT INTO `sys_oper_log` VALUES (136, '资讯管理', 2, 'com.ruoyi.project.information.controller.InformationController.edit()', 'PUT', 1, 'admin', NULL, '/information', '127.0.0.1', '内网IP', '{\"infoImg\":\"/profile/infoImg/2020/03/07/0a6046bdf1da1cf489e92c04dd4d79e8.jpg\",\"remark\":\"\",\"updateTime\":1583561728785,\"source\":\"UC日报\",\"params\":{},\"title\":\"某小伙子发明出了快速将垃圾进行分类的发明！！！\",\"content\":\"垃圾分类（英文名为Garbage classification），一般是指按一定规定或标准将垃圾分类储存、分类投放和分类搬运，从而转变成公共资源的一系列活动的总称。分类的目的是提高垃圾的资源价值和经济价值，力争物尽其用。 [1] \\n垃圾在分类储存阶段属于公众的私有品，垃圾经公众分类投放后成为公众所在小区或社区的区域性准公共资源，垃圾分类搬运到垃圾集中点或转运站后成为没有排除性的公共资源。从国内外各城市对生活垃圾分类的方法来看，大致都是根据垃圾的成分、产生量，结合本地垃圾的资源利用和处理方式来进行分类的。\\n进行垃圾分类收集可以减少垃圾处理量和处理设备，降低处理成本，减少土地资源的消耗，具有社会、经济、生态等几方面的效益。\\n2019年6月25日，生活垃圾分类制度将入法。 [2]  2019年9月，大连在每个垃圾分类投放点设督导员。\\n上海成为第一个中国垃圾分类试点城市 [3] \\n2019年12月6日，入选“2019年中国媒体十大流行语”。 [4] \",\"createBy\":\"admin\",\"createTime\":1577949489000,\"updateBy\":\"admin\",\"id\":\"3ab1ad4e3de34476ad03e54df7cdbd81\",\"viewCount\":\"7\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-07 14:15:28');
INSERT INTO `sys_oper_log` VALUES (137, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/03/07/9aa626075b03eac00607a81ae08700c7.jpg\"}', 0, NULL, '2020-03-07 14:15:36');
INSERT INTO `sys_oper_log` VALUES (138, '资讯管理', 2, 'com.ruoyi.project.information.controller.InformationController.edit()', 'PUT', 1, 'admin', NULL, '/information', '127.0.0.1', '内网IP', '{\"infoImg\":\"/profile/infoImg/2020/03/07/9aa626075b03eac00607a81ae08700c7.jpg\",\"remark\":\"\",\"updateTime\":1583561739244,\"source\":\"UC日报\",\"params\":{},\"title\":\"关于如何准确快速进行垃圾分类？？？\",\"content\":\"垃圾分类（英文名为Garbage classification），一般是指按一定规定或标准将垃圾分类储存、分类投放和分类搬运，从而转变成公共资源的一系列活动的总称。分类的目的是提高垃圾的资源价值和经济价值，力争物尽其用。 [1] \\n垃圾在分类储存阶段属于公众的私有品，垃圾经公众分类投放后成为公众所在小区或社区的区域性准公共资源，垃圾分类搬运到垃圾集中点或转运站后成为没有排除性的公共资源。从国内外各城市对生活垃圾分类的方法来看，大致都是根据垃圾的成分、产生量，结合本地垃圾的资源利用和处理方式来进行分类的。\\n进行垃圾分类收集可以减少垃圾处理量和处理设备，降低处理成本，减少土地资源的消耗，具有社会、经济、生态等几方面的效益。\\n2019年6月25日，生活垃圾分类制度将入法。 [2]  2019年9月，大连在每个垃圾分类投放点设督导员。\\n上海成为第一个中国垃圾分类试点城市 [3] \\n2019年12月6日，入选“2019年中国媒体十大流行语”。 [4] \",\"createBy\":\"admin\",\"createTime\":1577949489000,\"updateBy\":\"admin\",\"id\":\"3ab1ad4e3de34476ad03e54df7cdbd8f\",\"viewCount\":\"8\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-07 14:15:39');
INSERT INTO `sys_oper_log` VALUES (139, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/03/07/853ef2aad6642d58c17bd5b68fa28970.jpg\"}', 0, NULL, '2020-03-07 14:15:51');
INSERT INTO `sys_oper_log` VALUES (140, '资讯管理', 2, 'com.ruoyi.project.information.controller.InformationController.edit()', 'PUT', 1, 'admin', NULL, '/information', '127.0.0.1', '内网IP', '{\"infoImg\":\"/profile/infoImg/2020/03/07/853ef2aad6642d58c17bd5b68fa28970.jpg\",\"remark\":\"\",\"updateTime\":1583561754149,\"source\":\"今日视线\",\"params\":{},\"title\":\"政府对垃圾分类进行了新一套规整！！！\",\"content\":\"空\",\"createBy\":\"admin\",\"createTime\":1582529204000,\"updateBy\":\"admin\",\"id\":\"426266f023a948a2a6accb2a86553567\",\"viewCount\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-07 14:15:54');
INSERT INTO `sys_oper_log` VALUES (141, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/03/07/800856785d5048919ef74024039f0509.jpg\"}', 0, NULL, '2020-03-07 14:16:00');
INSERT INTO `sys_oper_log` VALUES (142, '资讯管理', 2, 'com.ruoyi.project.information.controller.InformationController.edit()', 'PUT', 1, 'admin', NULL, '/information', '127.0.0.1', '内网IP', '{\"infoImg\":\"/profile/infoImg/2020/03/07/800856785d5048919ef74024039f0509.jpg\",\"remark\":\"\",\"updateTime\":1583561762497,\"source\":\"佛山日报\",\"params\":{},\"title\":\"垃圾分类已成为了人们生活的习惯\",\"content\":\"垃圾分类（英文名为Garbage classification），一般是指按一定规定或标准将垃圾分类储存、分类投放和分类搬运，从而转变成公共资源的一系列活动的总称。分类的目的是提高垃圾的资源价值和经济价值，力争物尽其用。 [1] \\n垃圾在分类储存阶段属于公众的私有品，垃圾经公众分类投放后成为公众所在小区或社区的区域性准公共资源，垃圾分类搬运到垃圾集中点或转运站后成为没有排除性的公共资源。从国内外各城市对生活垃圾分类的方法来看，大致都是根据垃圾的成分、产生量，结合本地垃圾的资源利用和处理方式来进行分类的。\\n进行垃圾分类收集可以减少垃圾处理量和处理设备，降低处理成本，减少土地资源的消耗，具有社会、经济、生态等几方面的效益。\\n2019年6月25日，生活垃圾分类制度将入法。 [2]  2019年9月，大连在每个垃圾分类投放点设督导员。\\n上海成为第一个中国垃圾分类试点城市 [3] \\n2019年12月6日，入选“2019年中国媒体十大流行语”。 [4] \",\"createBy\":\"admin\",\"createTime\":1577285747000,\"updateBy\":\"admin\",\"id\":\"6f7dc816f5d04427a599f7129bdd2b1b\",\"viewCount\":\"2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-07 14:16:02');
INSERT INTO `sys_oper_log` VALUES (143, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/03/07/a06b5ead5b5d2108ecbd0b074da71be4.jpg\"}', 0, NULL, '2020-03-07 14:16:12');
INSERT INTO `sys_oper_log` VALUES (144, '资讯管理', 2, 'com.ruoyi.project.information.controller.InformationController.edit()', 'PUT', 1, 'admin', NULL, '/information', '127.0.0.1', '内网IP', '{\"infoImg\":\"/profile/infoImg/2020/03/07/a06b5ead5b5d2108ecbd0b074da71be4.jpg\",\"remark\":\"\",\"updateTime\":1583561774905,\"source\":\"今日视线\",\"params\":{},\"title\":\"叫你如何快速的进行垃圾的规整\",\"content\":\"空\",\"createBy\":\"admin\",\"createTime\":1582529163000,\"updateBy\":\"admin\",\"id\":\"8a31790a540b48648905fb83866ce940\",\"viewCount\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-07 14:16:14');
INSERT INTO `sys_oper_log` VALUES (145, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/03/07/efa650897fc9c6e6066c84e233e70fdc.jpg\"}', 0, NULL, '2020-03-07 14:16:26');
INSERT INTO `sys_oper_log` VALUES (146, '资讯管理', 2, 'com.ruoyi.project.information.controller.InformationController.edit()', 'PUT', 1, 'admin', NULL, '/information', '127.0.0.1', '内网IP', '{\"infoImg\":\"/profile/infoImg/2020/03/07/efa650897fc9c6e6066c84e233e70fdc.jpg\",\"remark\":\"\",\"updateTime\":1583561789070,\"source\":\"富人排行榜\",\"params\":{},\"title\":\"城市治理靠的是大家的自觉\",\"content\":\"垃圾分类（英文名为Garbage classification），一般是指按一定规定或标准将垃圾分类储存、分类投放和分类搬运，从而转变成公共资源的一系列活动的总称。分类的目的是提高垃圾的资源价值和经济价值，力争物尽其用。 [1] \\n垃圾在分类储存阶段属于公众的私有品，垃圾经公众分类投放后成为公众所在小区或社区的区域性准公共资源，垃圾分类搬运到垃圾集中点或转运站后成为没有排除性的公共资源。从国内外各城市对生活垃圾分类的方法来看，大致都是根据垃圾的成分、产生量，结合本地垃圾的资源利用和处理方式来进行分类的。\\n进行垃圾分类收集可以减少垃圾处理量和处理设备，降低处理成本，减少土地资源的消耗，具有社会、经济、生态等几方面的效益。\\n2019年6月25日，生活垃圾分类制度将入法。 [2]  2019年9月，大连在每个垃圾分类投放点设督导员。\\n上海成为第一个中国垃圾分类试点城市 [3] \\n2019年12月6日，入选“2019年中国媒体十大流行语”。 [4] \",\"createBy\":\"admin\",\"createTime\":1578315924000,\"updateBy\":\"admin\",\"id\":\"af058beb7f2743778a316603104049f9\",\"viewCount\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-07 14:16:29');
INSERT INTO `sys_oper_log` VALUES (147, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/03/07/7e6c63bddfb23e2635f9b6c83e94cad3.jpg\"}', 0, NULL, '2020-03-07 14:16:37');
INSERT INTO `sys_oper_log` VALUES (148, '资讯管理', 2, 'com.ruoyi.project.information.controller.InformationController.edit()', 'PUT', 1, 'admin', NULL, '/information', '127.0.0.1', '内网IP', '{\"infoImg\":\"/profile/infoImg/2020/03/07/7e6c63bddfb23e2635f9b6c83e94cad3.jpg\",\"remark\":\"\",\"updateTime\":1583561799450,\"source\":\"今日视线\",\"params\":{},\"title\":\"开学之日如果帮助孩子进行更好的区分垃圾的类别\",\"content\":\"空\",\"createBy\":\"admin\",\"createTime\":1582529499000,\"updateBy\":\"admin\",\"id\":\"fc63595c561f446d8f8fbec39151da57\",\"viewCount\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-07 14:16:39');
INSERT INTO `sys_oper_log` VALUES (149, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-08 13:52:31');
INSERT INTO `sys_oper_log` VALUES (150, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-08 14:50:46');
INSERT INTO `sys_oper_log` VALUES (151, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-08 14:54:03');
INSERT INTO `sys_oper_log` VALUES (152, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-08 15:05:51');
INSERT INTO `sys_oper_log` VALUES (153, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '116.62.162.64', 'XX XX', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-08 15:28:36');
INSERT INTO `sys_oper_log` VALUES (154, '用户头像', 2, 'com.ruoyi.project.system.controller.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/system/user/profile/avatar', '116.62.162.64', 'XX XX', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2020/03/08/baee223f97a96d9e18cce35a739ed86a.jpeg\",\"code\":200}', 0, NULL, '2020-03-08 15:29:32');
INSERT INTO `sys_oper_log` VALUES (155, '用户头像', 2, 'com.ruoyi.project.system.controller.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/system/user/profile/avatar', '116.62.162.64', 'XX XX', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2020/03/08/4fb1bbf2dabc834d8ad083cf9c0a80fc.jpeg\",\"code\":200}', 0, NULL, '2020-03-08 15:30:08');
INSERT INTO `sys_oper_log` VALUES (156, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-08 16:02:17');
INSERT INTO `sys_oper_log` VALUES (157, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '116.62.162.64', 'XX XX', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-08 16:05:14');
INSERT INTO `sys_oper_log` VALUES (158, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-09 11:32:01');
INSERT INTO `sys_oper_log` VALUES (159, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-09 11:32:10');
INSERT INTO `sys_oper_log` VALUES (160, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '116.62.162.64', 'XX XX', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-09 14:51:55');
INSERT INTO `sys_oper_log` VALUES (161, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '116.62.162.64', 'XX XX', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-09 14:54:21');
INSERT INTO `sys_oper_log` VALUES (162, '部门管理', 1, 'com.ruoyi.project.system.controller.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"垃圾测试\",\"leader\":\"李部长\",\"orderNum\":\"1\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"phone\":\"17765603020\",\"ancestors\":\"0,100\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-09 15:25:45');
INSERT INTO `sys_oper_log` VALUES (163, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-09 15:27:49');
INSERT INTO `sys_oper_log` VALUES (164, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-09 15:29:39');
INSERT INTO `sys_oper_log` VALUES (165, '个人信息', 2, 'com.ruoyi.project.system.controller.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"roleKey\":\"admin\",\"roleName\":\"管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1521171180000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2\",\"loginIp\":\"127.0.0.1\",\"email\":\"azhao@123.com\",\"nickName\":\"阿钊\",\"sex\":\"1\",\"deptId\":100,\"avatar\":\"/profile/avatar/2020/03/08/4fb1bbf2dabc834d8ad083cf9c0a80fc.jpeg\",\"dept\":{\"deptName\":\"环保助手\",\"leader\":\"若依\",\"deptId\":100,\"orderNum\":\"0\",\"params\":{},\"parentId\":0,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1521171180000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-09 15:31:29');
INSERT INTO `sys_oper_log` VALUES (166, '个人信息', 2, 'com.ruoyi.project.system.controller.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"roleKey\":\"admin\",\"roleName\":\"管理员\",\"status\":\"0\"}],\"phonenumber\":\"17765603020\",\"admin\":true,\"loginDate\":1521171180000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2\",\"loginIp\":\"127.0.0.1\",\"email\":\"azhao@123.com\",\"nickName\":\"阿钊\",\"sex\":\"1\",\"deptId\":100,\"avatar\":\"/profile/avatar/2020/03/08/4fb1bbf2dabc834d8ad083cf9c0a80fc.jpeg\",\"dept\":{\"deptName\":\"环保助手\",\"leader\":\"若依\",\"deptId\":100,\"orderNum\":\"0\",\"params\":{},\"parentId\":0,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1521171180000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-09 15:31:38');
INSERT INTO `sys_oper_log` VALUES (167, '用户管理', 2, 'com.ruoyi.project.system.controller.SysUserController.resetPwd()', 'PUT', 1, 'admin', NULL, '/system/user/resetPwd', '116.62.162.64', 'XX XX', '{\"admin\":true,\"params\":{},\"userId\":1}', 'null', 1, '不允许操作超级管理员用户', '2020-03-09 15:56:27');
INSERT INTO `sys_oper_log` VALUES (168, '用户管理', 2, 'com.ruoyi.project.system.controller.SysUserController.resetPwd()', 'PUT', 1, 'admin', NULL, '/system/user/resetPwd', '116.62.162.64', 'XX XX', '{\"admin\":false,\"password\":\"$2a$10$UTzEqOMACCLSbXlM3uiYJe2gMnHLosQsiIN9DCnfYCfzdP973PxmO\",\"updateBy\":\"admin\",\"params\":{},\"userId\":102}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-09 15:56:34');
INSERT INTO `sys_oper_log` VALUES (169, '角色管理', 2, 'com.ruoyi.project.system.controller.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '116.62.162.64', 'XX XX', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"createTime\":1521171180000,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"deptIds\":[100,109],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-09 16:21:24');
INSERT INTO `sys_oper_log` VALUES (170, '用户管理', 2, 'com.ruoyi.project.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '116.62.162.64', 'XX XX', '{\"roles\":[{\"flag\":false,\"roleId\":100,\"admin\":false,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"0\",\"roleKey\":\"testyg\",\"roleName\":\"测试人员\",\"status\":\"0\"}],\"phonenumber\":\"17765656030\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[1],\"loginIp\":\"\",\"email\":\"\",\"nickName\":\"test\",\"sex\":\"0\",\"deptId\":109,\"avatar\":\"\",\"dept\":{\"deptName\":\"环保助手\",\"leader\":\"若依\",\"deptId\":100,\"orderNum\":\"0\",\"params\":{},\"parentId\":0,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"test\",\"userId\":102,\"createBy\":\"admin\",\"roleIds\":[100],\"createTime\":1583132599000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-09 16:21:41');
INSERT INTO `sys_oper_log` VALUES (171, '角色管理', 2, 'com.ruoyi.project.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '116.62.162.64', 'XX XX', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"0\",\"createTime\":1583134038000,\"updateBy\":\"admin\",\"roleKey\":\"testyg\",\"roleName\":\"测试人员\",\"menuIds\":[2031,2032,2006,2000,2001,2002,2003,2004,2005,2007,2022,2009,2033,2023],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-09 16:23:02');
INSERT INTO `sys_oper_log` VALUES (172, '角色管理', 2, 'com.ruoyi.project.system.controller.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '116.62.162.64', '浙江 杭州', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"0\",\"createTime\":1583134038000,\"roleKey\":\"testyg\",\"roleName\":\"测试人员\",\"deptIds\":[100,109],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-09 16:23:30');
INSERT INTO `sys_oper_log` VALUES (173, '角色管理', 2, 'com.ruoyi.project.system.controller.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '116.62.162.64', 'XX XX', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"dataScope\":\"5\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"0\",\"createTime\":1583134038000,\"roleKey\":\"testyg\",\"roleName\":\"测试人员\",\"deptIds\":[100,109],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-09 16:23:45');
INSERT INTO `sys_oper_log` VALUES (174, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'test', NULL, '/garbage/getCount', '116.62.162.64', 'XX XX', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-09 16:24:09');
INSERT INTO `sys_oper_log` VALUES (175, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'test', NULL, '/garbage/getCount', '116.62.162.64', 'XX XX', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-09 16:24:54');
INSERT INTO `sys_oper_log` VALUES (176, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '116.62.162.64', '浙江 杭州', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-09 16:25:26');
INSERT INTO `sys_oper_log` VALUES (177, '用户管理', 1, 'com.ruoyi.project.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"password\":\"$2a$10$GULm8eTq2pihWcfveCOvQeAy.Qdmts6TxtR2m.TyhadM.pDzOAM5q\",\"postIds\":[],\"nickName\":\"test1\",\"deptId\":109,\"params\":{},\"userName\":\"test1\",\"userId\":103,\"createBy\":\"admin\",\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-09 16:25:52');
INSERT INTO `sys_oper_log` VALUES (178, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'test1', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-09 16:26:56');
INSERT INTO `sys_oper_log` VALUES (179, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-09 16:30:36');
INSERT INTO `sys_oper_log` VALUES (180, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/03/09/e96bf08faef8dc89a32333f886c9841e.jpg\"}', 0, NULL, '2020-03-09 17:24:38');
INSERT INTO `sys_oper_log` VALUES (181, '图片轮播图', 1, 'com.ruoyi.project.appImg.controller.AppImgController.add()', 'POST', 1, 'admin', NULL, '/system/img', '127.0.0.1', '内网IP', '{\"params\":{},\"imgTab\":\"0\",\"openFlag\":\"0\",\"createTime\":1583745881166,\"imgPath\":\"/profile/infoImg/2020/03/09/e96bf08faef8dc89a32333f886c9841e.jpg\",\"id\":\"51818d4b727b49dead7b62dde2067d46\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-09 17:24:41');
INSERT INTO `sys_oper_log` VALUES (182, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '116.62.162.64', 'XX XX', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-09 17:46:25');
INSERT INTO `sys_oper_log` VALUES (183, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '116.62.162.64', '浙江 杭州', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-10 12:06:03');
INSERT INTO `sys_oper_log` VALUES (184, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '116.62.162.64', '浙江 杭州', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-10 13:57:33');
INSERT INTO `sys_oper_log` VALUES (185, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '116.62.162.64', 'XX XX', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-11 00:57:54');
INSERT INTO `sys_oper_log` VALUES (186, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '116.62.162.64', 'XX XX', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-11 00:58:14');
INSERT INTO `sys_oper_log` VALUES (187, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '116.62.162.64', '浙江 杭州', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-11 01:00:44');
INSERT INTO `sys_oper_log` VALUES (188, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '116.62.162.64', 'XX XX', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-12 15:14:18');
INSERT INTO `sys_oper_log` VALUES (189, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '116.62.162.64', 'XX XX', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-12 22:50:09');
INSERT INTO `sys_oper_log` VALUES (190, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '116.62.162.64', 'XX XX', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-13 11:24:11');
INSERT INTO `sys_oper_log` VALUES (191, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-13 11:32:00');
INSERT INTO `sys_oper_log` VALUES (192, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-13 16:48:00');
INSERT INTO `sys_oper_log` VALUES (193, '回收站图片', 2, 'com.ruoyi.project.cycling.controller.CyclingController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/cycling/uploadCyclingImg', '116.62.162.64', 'XX XX', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/CycImg/2020/03/13/06ccb7cc26aec9c1fa44cfa7f028d21d.jpg\"}', 0, NULL, '2020-03-13 16:49:46');
INSERT INTO `sys_oper_log` VALUES (194, '回收站管理', 1, 'com.ruoyi.project.cycling.controller.CyclingController.add()', 'POST', 1, 'admin', NULL, '/cycling', '116.62.162.64', 'XX XX', '{\"cyclingAddress\":\"广东省佛山市禅城区张槎街道塱宝西路51号上朗休闲广场\",\"cyclingDetail\":\"空\",\"cyclingMan\":\"花老板\",\"params\":{},\"createBy\":\"admin\",\"createTime\":1584089396236,\"cyclingMobile\":\"17765601245\",\"id\":\"29ed65fbed0244e5bd2fe0abfa628015\",\"addressY\":\"23.039143\",\"addressX\":\"113.056882\",\"cyclingImg\":\"/profile/CycImg/2020/03/13/06ccb7cc26aec9c1fa44cfa7f028d21d.jpg\",\"cyclingIntroduce\":\"空\",\"cyclingName\":\"休闲回收站\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-13 16:49:56');
INSERT INTO `sys_oper_log` VALUES (195, '回收站图片', 2, 'com.ruoyi.project.cycling.controller.CyclingController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/cycling/uploadCyclingImg', '116.62.162.64', 'XX XX', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/CycImg/2020/03/13/d1281ed5584b945e6d5615cec69c04d8.jpg\"}', 0, NULL, '2020-03-13 16:51:21');
INSERT INTO `sys_oper_log` VALUES (196, '回收站管理', 1, 'com.ruoyi.project.cycling.controller.CyclingController.add()', 'POST', 1, 'admin', NULL, '/cycling', '116.62.162.64', 'XX XX', '{\"cyclingAddress\":\"广东省佛山市禅城区南庄镇丰盛总仓\",\"cyclingDetail\":\"空\",\"cyclingMan\":\"戴老板\",\"params\":{},\"createBy\":\"admin\",\"createTime\":1584089489381,\"cyclingMobile\":\"17765602356\",\"id\":\"9270a4bb98be4c679105e158b9320f0d\",\"addressY\":\"22.99364\",\"addressX\":\"113.041776\",\"cyclingImg\":\"/profile/CycImg/2020/03/13/d1281ed5584b945e6d5615cec69c04d8.jpg\",\"cyclingIntroduce\":\"空\",\"cyclingName\":\"南庄回收站\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-13 16:51:29');
INSERT INTO `sys_oper_log` VALUES (197, '回收站图片', 2, 'com.ruoyi.project.cycling.controller.CyclingController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/cycling/uploadCyclingImg', '116.62.162.64', 'XX XX', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/CycImg/2020/03/13/df6b1c01af812675ff7fe44719083427.jpg\"}', 0, NULL, '2020-03-13 17:01:20');
INSERT INTO `sys_oper_log` VALUES (198, '回收站管理', 1, 'com.ruoyi.project.cycling.controller.CyclingController.add()', 'POST', 1, 'admin', NULL, '/cycling', '116.62.162.64', '浙江 杭州', '{\"cyclingAddress\":\"广东省佛山市禅城区南庄镇陶博大道佛山华夏明珠大酒店\",\"cyclingDetail\":\"空\",\"cyclingMan\":\"潘老板\",\"params\":{},\"createBy\":\"admin\",\"createTime\":1584090089574,\"cyclingMobile\":\"17765607845\",\"id\":\"0a57edace6aa4cc8bbc8b922f3b6c015\",\"addressY\":\"22.964798\",\"addressX\":\"113.017143\",\"cyclingImg\":\"/profile/CycImg/2020/03/13/df6b1c01af812675ff7fe44719083427.jpg\",\"cyclingIntroduce\":\"空\",\"cyclingName\":\"华夏回收站\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-13 17:01:29');
INSERT INTO `sys_oper_log` VALUES (199, '回收站图片', 2, 'com.ruoyi.project.cycling.controller.CyclingController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/cycling/uploadCyclingImg', '116.62.162.64', 'XX XX', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/CycImg/2020/03/13/8301a180c2bcbd4ba232fb4e4c27d2c2.jpg\"}', 0, NULL, '2020-03-13 17:02:58');
INSERT INTO `sys_oper_log` VALUES (200, '回收站管理', 1, 'com.ruoyi.project.cycling.controller.CyclingController.add()', 'POST', 1, 'admin', NULL, '/cycling', '116.62.162.64', 'XX XX', '{\"cyclingAddress\":\"广东省佛山市顺德区容桂街道大汕岛\",\"cyclingMan\":\"陈老板\",\"params\":{},\"createBy\":\"admin\",\"createTime\":1584090179245,\"cyclingMobile\":\"17765604578\",\"id\":\"5d2b711264e6477180e0f4082ee4118a\",\"addressY\":\"22.794781\",\"addressX\":\"113.316863\",\"cyclingImg\":\"/profile/CycImg/2020/03/13/8301a180c2bcbd4ba232fb4e4c27d2c2.jpg\",\"cyclingName\":\"顺德回收站\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-13 17:02:59');
INSERT INTO `sys_oper_log` VALUES (201, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-13 17:19:34');
INSERT INTO `sys_oper_log` VALUES (202, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '116.62.162.64', 'XX XX', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-14 13:04:53');
INSERT INTO `sys_oper_log` VALUES (203, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '116.62.162.64', '浙江 杭州', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-17 16:32:21');
INSERT INTO `sys_oper_log` VALUES (204, '回收站管理', 2, 'com.ruoyi.project.cycling.controller.CyclingController.edit()', 'PUT', 1, 'admin', NULL, '/cycling', '116.62.162.64', 'XX XX', '{\"cyclingAddress\":\"广东省佛山市禅城区南庄镇陶博大道佛山华夏明珠大酒店\",\"cyclingDetail\":\"空\",\"cyclingMan\":\"潘老板\",\"remark\":\"\",\"updateTime\":1584433968411,\"params\":{},\"createBy\":\"admin\",\"createTime\":1584090090000,\"updateBy\":\"admin\",\"cyclingMobile\":\"17765607845\",\"id\":\"0a57edace6aa4cc8bbc8b922f3b6c015\",\"addressY\":\"22.964798\",\"addressX\":\"113.017143\",\"cyclingImg\":\"/profile/CycImg/2020/03/13/df6b1c01af812675ff7fe44719083427.jpg\",\"cyclingIntroduce\":\"专业上门收购废品！有大小货车拉货。有工人搬运，欢迎老板的来电咨询。\",\"cyclingName\":\"华夏回收站\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-17 16:32:48');
INSERT INTO `sys_oper_log` VALUES (205, '回收站管理', 2, 'com.ruoyi.project.cycling.controller.CyclingController.edit()', 'PUT', 1, 'admin', NULL, '/cycling', '116.62.162.64', 'XX XX', '{\"cyclingAddress\":\"广东省佛山市禅城区张槎街道塱宝西路51号上朗休闲广场\",\"cyclingDetail\":\"空\",\"cyclingMan\":\"花老板\",\"remark\":\"\",\"updateTime\":1584433975150,\"params\":{},\"createBy\":\"admin\",\"createTime\":1584089396000,\"updateBy\":\"admin\",\"cyclingMobile\":\"17765601245\",\"id\":\"29ed65fbed0244e5bd2fe0abfa628015\",\"addressY\":\"23.039143\",\"addressX\":\"113.056882\",\"cyclingImg\":\"/profile/CycImg/2020/03/13/06ccb7cc26aec9c1fa44cfa7f028d21d.jpg\",\"cyclingIntroduce\":\"专业上门收购废品！有大小货车拉货。有工人搬运，欢迎老板的来电咨询。\",\"cyclingName\":\"休闲回收站\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-17 16:32:55');
INSERT INTO `sys_oper_log` VALUES (206, '回收站管理', 2, 'com.ruoyi.project.cycling.controller.CyclingController.edit()', 'PUT', 1, 'admin', NULL, '/cycling', '116.62.162.64', 'XX XX', '{\"cyclingAddress\":\"广东省佛山市顺德区容桂街道大汕岛\",\"cyclingMan\":\"陈老板\",\"remark\":\"\",\"updateTime\":1584433983727,\"params\":{},\"createBy\":\"admin\",\"createTime\":1584090179000,\"updateBy\":\"admin\",\"cyclingMobile\":\"17765604578\",\"id\":\"5d2b711264e6477180e0f4082ee4118a\",\"addressY\":\"22.794781\",\"addressX\":\"113.316863\",\"cyclingImg\":\"/profile/CycImg/2020/03/13/8301a180c2bcbd4ba232fb4e4c27d2c2.jpg\",\"cyclingIntroduce\":\"专业上门收购废品！有大小货车拉货。有工人搬运，欢迎老板的来电咨询。\",\"cyclingName\":\"顺德回收站\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-17 16:33:03');
INSERT INTO `sys_oper_log` VALUES (207, '回收站管理', 2, 'com.ruoyi.project.cycling.controller.CyclingController.edit()', 'PUT', 1, 'admin', NULL, '/cycling', '116.62.162.64', 'XX XX', '{\"cyclingAddress\":\"广东省佛山市禅城区南庄镇丰盛总仓\",\"cyclingDetail\":\"空\",\"cyclingMan\":\"戴老板\",\"remark\":\"\",\"updateTime\":1584433988805,\"params\":{},\"createBy\":\"admin\",\"createTime\":1584089489000,\"updateBy\":\"admin\",\"cyclingMobile\":\"17765602356\",\"id\":\"9270a4bb98be4c679105e158b9320f0d\",\"addressY\":\"22.99364\",\"addressX\":\"113.041776\",\"cyclingImg\":\"/profile/CycImg/2020/03/13/d1281ed5584b945e6d5615cec69c04d8.jpg\",\"cyclingIntroduce\":\"专业上门收购废品！有大小货车拉货。有工人搬运，欢迎老板的来电咨询。\",\"cyclingName\":\"南庄回收站\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-17 16:33:08');
INSERT INTO `sys_oper_log` VALUES (208, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '116.62.162.64', '浙江 杭州', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-19 15:32:12');
INSERT INTO `sys_oper_log` VALUES (209, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '116.62.162.64', '浙江 杭州', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-20 12:01:22');
INSERT INTO `sys_oper_log` VALUES (210, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '116.62.162.64', 'XX XX', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-20 12:04:10');
INSERT INTO `sys_oper_log` VALUES (211, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-20 15:50:01');
INSERT INTO `sys_oper_log` VALUES (212, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-20 15:54:20');
INSERT INTO `sys_oper_log` VALUES (213, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-20 15:54:35');
INSERT INTO `sys_oper_log` VALUES (214, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-20 16:05:45');
INSERT INTO `sys_oper_log` VALUES (215, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-20 16:06:46');
INSERT INTO `sys_oper_log` VALUES (216, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-20 16:09:25');
INSERT INTO `sys_oper_log` VALUES (217, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-20 16:30:54');
INSERT INTO `sys_oper_log` VALUES (218, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-20 16:40:41');
INSERT INTO `sys_oper_log` VALUES (219, '个人信息', 2, 'com.ruoyi.project.system.controller.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"roleKey\":\"admin\",\"roleName\":\"管理员\",\"status\":\"0\"}],\"phonenumber\":\"17765603020\",\"admin\":true,\"loginDate\":1521171180000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2\",\"loginIp\":\"127.0.0.1\",\"email\":\"azhao@123.com\",\"nickName\":\"阿钊\",\"sex\":\"0\",\"deptId\":100,\"avatar\":\"/profile/avatar/2020/03/08/4fb1bbf2dabc834d8ad083cf9c0a80fc.jpeg\",\"dept\":{\"deptName\":\"环保助手\",\"leader\":\"若依\",\"deptId\":100,\"orderNum\":\"0\",\"params\":{},\"parentId\":0,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1521171180000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-20 16:44:14');
INSERT INTO `sys_oper_log` VALUES (220, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-20 16:44:34');
INSERT INTO `sys_oper_log` VALUES (221, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-22 15:46:12');
INSERT INTO `sys_oper_log` VALUES (222, '图片轮播图', 1, 'com.ruoyi.project.appImg.controller.AppImgController.add()', 'POST', 1, 'admin', NULL, '/system/img', '127.0.0.1', '内网IP', '{\"params\":{},\"imgTab\":\"1\",\"openFlag\":\"1\",\"createTime\":1584864795213,\"id\":\"f12877c6b7434d988d406e8a3f89c71f\"}', 'null', 1, '\n### Error updating database.  Cause: java.sql.SQLException: Field \'img_path\' doesn\'t have a default value\n### The error may involve com.ruoyi.project.appImg.mapper.AppImgMapper.insertAppImg-Inline\n### The error occurred while setting parameters\n### SQL: insert into app_img          ( id,                          img_tab,                          open_flag,             create_time )           values ( ?,                          ?,                          ?,             ? )\n### Cause: java.sql.SQLException: Field \'img_path\' doesn\'t have a default value\n; Field \'img_path\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'img_path\' doesn\'t have a default value', '2020-03-22 16:13:15');
INSERT INTO `sys_oper_log` VALUES (223, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/03/22/aad27ece43310764d9a645f79b8c7b5e.jpg\"}', 0, NULL, '2020-03-22 16:16:22');
INSERT INTO `sys_oper_log` VALUES (224, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/03/22/e157597fb0879aaf1457d8c12c38e03d.jpg\"}', 0, NULL, '2020-03-22 16:19:22');
INSERT INTO `sys_oper_log` VALUES (225, '图片轮播图', 1, 'com.ruoyi.project.appImg.controller.AppImgController.add()', 'POST', 1, 'admin', NULL, '/system/img', '127.0.0.1', '内网IP', '{\"params\":{},\"imgTab\":\"0\",\"openFlag\":\"1\",\"createTime\":1584865165717,\"imgPath\":\"/profile/infoImg/2020/03/22/e157597fb0879aaf1457d8c12c38e03d.jpg\",\"id\":\"13ff2b6ffc584883b39ad006041d5ecd\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-22 16:19:25');
INSERT INTO `sys_oper_log` VALUES (226, '图片轮播图', 3, 'com.ruoyi.project.appImg.controller.AppImgController.remove()', 'DELETE', 1, 'admin', NULL, '/system/img/13ff2b6ffc584883b39ad006041d5ecd', '127.0.0.1', '内网IP', '{ids=13ff2b6ffc584883b39ad006041d5ecd}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-22 16:19:34');
INSERT INTO `sys_oper_log` VALUES (227, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/03/22/b3f0de5d3cea43a1b2b570b2044c26f8.jpg\"}', 0, NULL, '2020-03-22 16:20:45');
INSERT INTO `sys_oper_log` VALUES (228, '图片轮播图', 1, 'com.ruoyi.project.appImg.controller.AppImgController.add()', 'POST', 1, 'admin', NULL, '/system/img', '127.0.0.1', '内网IP', '{\"params\":{},\"imgTab\":\"1\",\"openFlag\":\"1\",\"createTime\":1584865247273,\"imgPath\":\"/profile/infoImg/2020/03/22/b3f0de5d3cea43a1b2b570b2044c26f8.jpg\",\"id\":\"b20b74ce67364fd59092f222362cf678\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-22 16:20:47');
INSERT INTO `sys_oper_log` VALUES (229, '图片状态修改', 2, 'com.ruoyi.project.appImg.controller.AppImgController.changeStatus()', 'PUT', 1, 'admin', NULL, '/system/img/changeImgStatus', '127.0.0.1', '内网IP', '{\"updateTime\":1584865261923,\"params\":{},\"openFlag\":\"0\",\"updateBy\":\"admin\",\"id\":\"b20b74ce67364fd59092f222362cf678\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-22 16:21:01');
INSERT INTO `sys_oper_log` VALUES (230, '用户管理', 5, 'com.ruoyi.project.system.controller.SysUserController.export()', 'GET', 1, 'admin', NULL, '/system/user/export', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"fd97f08d-027d-40fd-970e-4c8a93b0323b_用户数据.xlsx\",\"code\":200}', 0, NULL, '2020-03-22 16:23:20');
INSERT INTO `sys_oper_log` VALUES (231, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '116.62.162.64', 'XX XX', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-23 11:45:32');
INSERT INTO `sys_oper_log` VALUES (232, '用户管理', 2, 'com.ruoyi.project.system.controller.SysUserController.resetPwd()', 'PUT', 1, 'admin', NULL, '/system/user/resetPwd', '116.62.162.64', 'XX XX', '{\"admin\":false,\"password\":\"$2a$10$YZU9gQFNB./HQ1U7ulXsGOOIkVFuhticiEzCFBNDCH1hExcxU1tdi\",\"updateBy\":\"admin\",\"params\":{},\"userId\":102}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-23 11:45:54');
INSERT INTO `sys_oper_log` VALUES (233, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'test', NULL, '/garbage/getCount', '116.62.162.64', 'XX XX', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-23 11:46:17');
INSERT INTO `sys_oper_log` VALUES (234, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '116.62.162.64', 'XX XX', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-24 17:56:36');
INSERT INTO `sys_oper_log` VALUES (235, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '116.62.162.64', 'XX XX', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-26 14:55:20');
INSERT INTO `sys_oper_log` VALUES (236, '资讯管理', 1, 'com.ruoyi.project.information.controller.InformationController.add()', 'POST', 1, 'admin', NULL, '/information', '116.62.162.64', 'XX XX', '{\"infoImg\":\"/profile/infoImg/2020/03/26/b208413740fe1df080290575b6fed170.jpg\",\"source\":\"测试出处\",\"params\":{},\"title\":\"测试标题\",\"content\":\"测试内容\",\"createBy\":\"admin\",\"createTime\":1585205735984,\"id\":\"e191ebb2b668470a83b11c434be88a97\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-26 14:55:42');
INSERT INTO `sys_oper_log` VALUES (237, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '116.62.162.64', 'XX XX', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/03/26/b208413740fe1df080290575b6fed170.jpg\"}', 0, NULL, '2020-03-26 14:55:47');
INSERT INTO `sys_oper_log` VALUES (238, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '116.62.162.64', 'XX XX', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-26 14:56:00');
INSERT INTO `sys_oper_log` VALUES (239, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-26 15:09:55');
INSERT INTO `sys_oper_log` VALUES (240, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-26 17:55:20');
INSERT INTO `sys_oper_log` VALUES (241, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-26 19:35:52');
INSERT INTO `sys_oper_log` VALUES (242, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '116.62.162.64', 'XX XX', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-27 12:48:25');
INSERT INTO `sys_oper_log` VALUES (243, '回收站图片', 2, 'com.ruoyi.project.cycling.controller.CyclingController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/cycling/uploadCyclingImg', '116.62.162.64', 'XX XX', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/CycImg/2020/03/27/b0a669cf262087a07d21f15f7d3eb2b5.jpg\"}', 0, NULL, '2020-03-27 12:51:07');
INSERT INTO `sys_oper_log` VALUES (244, '回收站管理', 1, 'com.ruoyi.project.cycling.controller.CyclingController.add()', 'POST', 1, 'admin', NULL, '/cycling', '116.62.162.64', 'XX XX', '{\"cyclingAddress\":\"广东省汕头市金平区金砂街道广东汕头华侨中学\",\"cyclingDetail\":\"无\",\"cyclingMan\":\"李先生\",\"params\":{},\"createBy\":\"admin\",\"createTime\":1585284660246,\"cyclingMobile\":\"13433333333\",\"id\":\"1da3fa81474a459c8b0787ac1e251517\",\"addressY\":\"23.367159\",\"addressX\":\"116.695588\",\"cyclingImg\":\"/profile/CycImg/2020/03/27/b0a669cf262087a07d21f15f7d3eb2b5.jpg\",\"cyclingIntroduce\":\"无\",\"cyclingName\":\"汕头华侨回收站\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 12:51:13');
INSERT INTO `sys_oper_log` VALUES (245, '个人信息', 2, 'com.ruoyi.project.system.controller.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '116.62.162.64', 'XX XX', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"roleKey\":\"admin\",\"roleName\":\"管理员\",\"status\":\"0\"}],\"phonenumber\":\"15999999999\",\"admin\":true,\"loginDate\":1521171180000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2\",\"loginIp\":\"127.0.0.1\",\"email\":\"azhao@123.com\",\"nickName\":\"阿钊\",\"sex\":\"0\",\"deptId\":100,\"avatar\":\"/profile/avatar/2020/03/08/4fb1bbf2dabc834d8ad083cf9c0a80fc.jpeg\",\"dept\":{\"deptName\":\"环保助手\",\"leader\":\"若依\",\"deptId\":100,\"orderNum\":\"0\",\"params\":{},\"parentId\":0,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1521171180000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 12:52:38');
INSERT INTO `sys_oper_log` VALUES (246, '个人信息', 2, 'com.ruoyi.project.system.controller.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '116.62.162.64', 'XX XX', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"roleKey\":\"admin\",\"roleName\":\"管理员\",\"status\":\"0\"}],\"phonenumber\":\"15999999999\",\"admin\":true,\"loginDate\":1521171180000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2\",\"loginIp\":\"127.0.0.1\",\"email\":\"azhao@123.com\",\"nickName\":\"阿钊\",\"sex\":\"0\",\"deptId\":100,\"avatar\":\"/profile/avatar/2020/03/08/4fb1bbf2dabc834d8ad083cf9c0a80fc.jpeg\",\"dept\":{\"deptName\":\"环保助手\",\"leader\":\"若依\",\"deptId\":100,\"orderNum\":\"0\",\"params\":{},\"parentId\":0,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1521171180000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 12:52:53');
INSERT INTO `sys_oper_log` VALUES (247, '个人信息', 2, 'com.ruoyi.project.system.controller.SysProfileController.updatePwd()', 'PUT', 1, 'admin', NULL, '/system/user/profile/updatePwd', '116.62.162.64', 'XX XX', 'admin 123456', '{\"msg\":\"修改密码失败，旧密码错误\",\"code\":500}', 0, NULL, '2020-03-27 12:53:44');
INSERT INTO `sys_oper_log` VALUES (248, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '116.62.162.64', 'XX XX', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-27 12:54:14');
INSERT INTO `sys_oper_log` VALUES (249, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'test', NULL, '/garbage/getCount', '116.62.162.64', 'XX XX', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-27 12:55:09');
INSERT INTO `sys_oper_log` VALUES (250, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'test', NULL, '/garbage/getCount', '116.62.162.64', 'XX XX', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-27 12:55:20');
INSERT INTO `sys_oper_log` VALUES (251, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '116.62.162.64', 'XX XX', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-27 12:55:40');
INSERT INTO `sys_oper_log` VALUES (252, '回收站管理', 2, 'com.ruoyi.project.cycling.controller.CyclingController.edit()', 'PUT', 1, 'admin', NULL, '/cycling', '116.62.162.64', 'XX XX', '{\"cyclingAddress\":\"广东省汕头市金平区金砂街道广东汕头华侨中学\",\"cyclingDetail\":\"无\",\"cyclingMan\":\"李先生\",\"remark\":\"\",\"updateTime\":1585285317800,\"params\":{},\"createBy\":\"admin\",\"createTime\":1585284660000,\"updateBy\":\"admin\",\"cyclingMobile\":\"13433333333\",\"id\":\"1da3fa81474a459c8b0787ac1e251517\",\"addressY\":\"23.367159\",\"addressX\":\"116.695588\",\"cyclingImg\":\"/profile/CycImg/2020/03/27/b0a669cf262087a07d21f15f7d3eb2b5.jpg\",\"cyclingIntroduce\":\"专业上门收购废品！有大小货车拉货。有工人搬运，欢迎老板的来电咨询。\",\"cyclingName\":\"汕头华侨回收站\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 13:01:57');
INSERT INTO `sys_oper_log` VALUES (253, '回收站管理', 2, 'com.ruoyi.project.cycling.controller.CyclingController.edit()', 'PUT', 1, 'admin', NULL, '/cycling', '116.62.162.64', 'XX XX', '{\"cyclingAddress\":\"广东省汕头市金平区金砂街道广东汕头华侨中学\",\"cyclingDetail\":\"1.针对客户需求，定制整体化服务解决方案，提供社区和楼宇智能垃圾分类闭环解决方案\\n2.分类回收站/垃圾箱/分类桶等产品无论在结构功能方面，还是广告营收方面都进行了精心规划设计，与市场化运作需求紧密贴合，全面满足客户对产品和盈利的需求。\",\"cyclingMan\":\"李先生\",\"remark\":\"\",\"updateTime\":1585285341068,\"params\":{},\"createBy\":\"admin\",\"createTime\":1585284660000,\"updateBy\":\"admin\",\"cyclingMobile\":\"13433333333\",\"id\":\"1da3fa81474a459c8b0787ac1e251517\",\"addressY\":\"23.367159\",\"addressX\":\"116.695588\",\"cyclingImg\":\"/profile/CycImg/2020/03/27/b0a669cf262087a07d21f15f7d3eb2b5.jpg\",\"cyclingIntroduce\":\"专业上门收购废品！有大小货车拉货。有工人搬运，欢迎老板的来电咨询。\",\"cyclingName\":\"汕头华侨回收站\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 13:02:24');
INSERT INTO `sys_oper_log` VALUES (254, '图片轮播图', 3, 'com.ruoyi.project.appImg.controller.AppImgController.remove()', 'DELETE', 1, 'admin', NULL, '/system/img/3614575fcfe04bdc9ae88c00b9ace878', '116.62.162.64', 'XX XX', '{ids=3614575fcfe04bdc9ae88c00b9ace878}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 13:04:52');
INSERT INTO `sys_oper_log` VALUES (255, '用户头像', 2, 'com.ruoyi.project.system.controller.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/system/user/profile/avatar', '116.62.162.64', 'XX XX', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2020/03/27/78b9239a101b2ca5785786d00db7474f.jpeg\",\"code\":200}', 0, NULL, '2020-03-27 13:08:43');
INSERT INTO `sys_oper_log` VALUES (256, '个人信息', 2, 'com.ruoyi.project.system.controller.SysProfileController.updatePwd()', 'PUT', 1, 'admin', NULL, '/system/user/profile/updatePwd', '116.62.162.64', 'XX XX', 'admin123 123456', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 13:09:51');
INSERT INTO `sys_oper_log` VALUES (257, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-27 15:18:58');
INSERT INTO `sys_oper_log` VALUES (258, '用户管理', 3, 'com.ruoyi.project.system.controller.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/103', '127.0.0.1', '内网IP', '{userIds=103}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 15:20:38');
INSERT INTO `sys_oper_log` VALUES (259, '用户管理', 1, 'com.ruoyi.project.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"15999999999\",\"admin\":false,\"password\":\"123456\",\"postIds\":[3],\"email\":\"123@qq.com\",\"nickName\":\"user\",\"sex\":\"2\",\"deptId\":109,\"params\":{},\"userName\":\"用户\",\"roleIds\":[1,2],\"status\":\"0\"}', '{\"msg\":\"新增用户\'用户\'失败，手机号码已存在\",\"code\":500}', 0, NULL, '2020-03-27 15:22:30');
INSERT INTO `sys_oper_log` VALUES (260, '用户管理', 1, 'com.ruoyi.project.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"15999999992\",\"admin\":false,\"password\":\"$2a$10$RBK4fx8dgQFVEsh9res6a.Bz5GLHU9QrjCK3iMIVsCm7UxvzEzoMy\",\"postIds\":[3],\"email\":\"123@qq.com\",\"nickName\":\"user\",\"sex\":\"2\",\"deptId\":109,\"params\":{},\"userName\":\"用户\",\"userId\":104,\"createBy\":\"admin\",\"roleIds\":[1,2],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 15:22:42');
INSERT INTO `sys_oper_log` VALUES (261, '用户管理', 2, 'com.ruoyi.project.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"roleKey\":\"admin\",\"roleName\":\"管理员\",\"status\":\"0\"},{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"15999999992\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[3],\"loginIp\":\"\",\"email\":\"123@qq.com\",\"nickName\":\"用户\",\"sex\":\"2\",\"deptId\":109,\"avatar\":\"\",\"dept\":{\"deptName\":\"垃圾测试\",\"leader\":\"李部长\",\"deptId\":109,\"orderNum\":\"1\",\"params\":{},\"parentId\":100,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"user\",\"userId\":104,\"createBy\":\"admin\",\"roleIds\":[1,2],\"createTime\":1585293762000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 15:23:05');
INSERT INTO `sys_oper_log` VALUES (262, '用户管理', 3, 'com.ruoyi.project.system.controller.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/102', '127.0.0.1', '内网IP', '{userIds=102}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 15:27:31');
INSERT INTO `sys_oper_log` VALUES (263, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":53}', 0, NULL, '2020-03-27 16:56:26');
INSERT INTO `sys_oper_log` VALUES (264, '用户管理', 1, 'com.ruoyi.project.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"13411111111\",\"admin\":false,\"password\":\"123456\",\"postIds\":[1],\"email\":\"123@qq.com\",\"nickName\":\"用户1号\",\"sex\":\"0\",\"deptId\":109,\"params\":{},\"userName\":\"user1\",\"roleIds\":[1],\"status\":\"0\"}', '{\"msg\":\"新增用户\'user1\'失败，邮箱账号已存在\",\"code\":500}', 0, NULL, '2020-03-27 16:57:33');
INSERT INTO `sys_oper_log` VALUES (265, '用户管理', 1, 'com.ruoyi.project.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"13411111111\",\"admin\":false,\"password\":\"$2a$10$eSf3wxy6CdEDRJIXy8.Ij.ThhG/m28u1Nl6OUYRCW.FrThn.0jQfy\",\"postIds\":[1],\"email\":\"ldz3@qq.com\",\"nickName\":\"用户1号\",\"sex\":\"0\",\"deptId\":109,\"params\":{},\"userName\":\"user1\",\"userId\":105,\"createBy\":\"admin\",\"roleIds\":[1],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 16:57:43');
INSERT INTO `sys_oper_log` VALUES (266, '角色管理', 1, 'com.ruoyi.project.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":101,\"admin\":false,\"params\":{},\"roleSort\":\"0\",\"createBy\":\"admin\",\"roleKey\":\"ldz\",\"roleName\":\"ldz\",\"deptIds\":[],\"menuIds\":[2031,2032,2006,2000,2001,2002,2003,2004,2005,2007,2022,2009,2033,2023],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 16:58:08');
INSERT INTO `sys_oper_log` VALUES (267, '部门管理', 1, 'com.ruoyi.project.system.controller.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"垃圾回收\",\"leader\":\"李先生\",\"orderNum\":\"1\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"ancestors\":\"0,100\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 16:58:29');
INSERT INTO `sys_oper_log` VALUES (268, '岗位管理', 1, 'com.ruoyi.project.system.controller.SysPostController.add()', 'POST', 1, 'admin', NULL, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"0\",\"flag\":false,\"postId\":5,\"params\":{},\"createBy\":\"admin\",\"postName\":\"回收人员\",\"postCode\":\"hs\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 16:58:47');
INSERT INTO `sys_oper_log` VALUES (269, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/03/27/f4ec24a215844750e5452367805c0e73.jpg\"}', 0, NULL, '2020-03-27 16:58:59');
INSERT INTO `sys_oper_log` VALUES (270, '图片轮播图', 1, 'com.ruoyi.project.appImg.controller.AppImgController.add()', 'POST', 1, 'admin', NULL, '/system/img', '127.0.0.1', '内网IP', '{\"params\":{},\"imgTab\":\"0\",\"openFlag\":\"0\",\"createTime\":1585299542182,\"imgPath\":\"/profile/infoImg/2020/03/27/f4ec24a215844750e5452367805c0e73.jpg\",\"id\":\"1eb632aa5a2349359019ee0ad3a20462\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 16:59:02');
INSERT INTO `sys_oper_log` VALUES (271, '垃圾分类', 1, 'com.ruoyi.project.garbage.controller.GarbageController.add()', 'POST', 1, 'admin', NULL, '/garbage', '127.0.0.1', '内网IP', '{\"contain\":\"水壶\",\"params\":{},\"type\":\"0\",\"createBy\":\"admin\",\"createTime\":1585299596137,\"name\":\"水杯\",\"gExplain\":\"水杯是可回收的\",\"letterId\":11,\"tip\":\"投放到可回收垃圾桶\",\"id\":\"dfb99837a2a44882b5fae1e620789650\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 16:59:56');
INSERT INTO `sys_oper_log` VALUES (272, '回收站图片', 2, 'com.ruoyi.project.cycling.controller.CyclingController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/cycling/uploadCyclingImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/CycImg/2020/03/27/85c11a334be6730ffa66ae3dd877f3c6.jpg\"}', 0, NULL, '2020-03-27 17:00:53');
INSERT INTO `sys_oper_log` VALUES (273, '回收站管理', 1, 'com.ruoyi.project.cycling.controller.CyclingController.add()', 'POST', 1, 'admin', NULL, '/cycling', '127.0.0.1', '内网IP', '{\"cyclingAddress\":\"广东省佛山市南海区狮山镇广东东软学院\",\"cyclingDetail\":\"回收快狠准\",\"cyclingMan\":\"李先生\",\"params\":{},\"createBy\":\"admin\",\"createTime\":1585299714713,\"cyclingMobile\":\"15911111111\",\"id\":\"c6bea4b003c14db5b296dbdaf199c620\",\"addressY\":\"23.011658\",\"addressX\":\"113.027944\",\"cyclingImg\":\"/profile/CycImg/2020/03/27/85c11a334be6730ffa66ae3dd877f3c6.jpg\",\"cyclingIntroduce\":\"我为人人\",\"cyclingName\":\"本地回收\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 17:01:54');
INSERT INTO `sys_oper_log` VALUES (274, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/03/27/2843021d6838032eb9878cc6f77f2a19.jpg\"}', 0, NULL, '2020-03-27 17:02:30');
INSERT INTO `sys_oper_log` VALUES (275, '资讯管理', 1, 'com.ruoyi.project.information.controller.InformationController.add()', 'POST', 1, 'admin', NULL, '/information', '127.0.0.1', '内网IP', '{\"infoImg\":\"/profile/infoImg/2020/03/27/2843021d6838032eb9878cc6f77f2a19.jpg\",\"source\":\"广东东软学院\",\"params\":{},\"title\":\"如何快速区分垃圾\",\"content\":\"空\",\"createBy\":\"admin\",\"createTime\":1585299761648,\"id\":\"ef07166bb8f342489c65225172e112c0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 17:02:41');
INSERT INTO `sys_oper_log` VALUES (276, '用户头像', 2, 'com.ruoyi.project.system.controller.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2020/03/27/ccc12705a0ffcb2e149a90414f5cad7a.jpeg\",\"code\":200}', 0, NULL, '2020-03-27 17:03:23');
INSERT INTO `sys_oper_log` VALUES (277, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'user1', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":54}', 0, NULL, '2020-03-27 17:06:35');
INSERT INTO `sys_oper_log` VALUES (278, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":54}', 0, NULL, '2020-03-27 18:35:54');
INSERT INTO `sys_oper_log` VALUES (279, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":54}', 0, NULL, '2020-03-27 18:37:11');
INSERT INTO `sys_oper_log` VALUES (280, '用户管理', 3, 'com.ruoyi.project.system.controller.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/105', '127.0.0.1', '内网IP', '{userIds=105}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 18:38:06');
INSERT INTO `sys_oper_log` VALUES (281, '角色管理', 3, 'com.ruoyi.project.system.controller.SysRoleController.remove()', 'DELETE', 1, 'admin', NULL, '/system/role/101', '127.0.0.1', '内网IP', '{roleIds=101}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 18:38:16');
INSERT INTO `sys_oper_log` VALUES (282, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":54}', 0, NULL, '2020-03-27 18:39:10');
INSERT INTO `sys_oper_log` VALUES (283, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":54}', 0, NULL, '2020-03-27 18:39:39');
INSERT INTO `sys_oper_log` VALUES (284, '岗位管理', 1, 'com.ruoyi.project.system.controller.SysPostController.add()', 'POST', 1, 'admin', NULL, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"5\",\"flag\":false,\"postId\":6,\"params\":{},\"createBy\":\"admin\",\"postName\":\"分类人员\",\"postCode\":\"fl\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 18:40:13');
INSERT INTO `sys_oper_log` VALUES (285, '部门管理', 1, 'com.ruoyi.project.system.controller.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"垃圾分类\",\"orderNum\":\"2\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"ancestors\":\"0,100\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 18:40:32');
INSERT INTO `sys_oper_log` VALUES (286, '角色管理', 1, 'com.ruoyi.project.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":102,\"admin\":false,\"params\":{},\"roleSort\":\"4\",\"createBy\":\"admin\",\"roleKey\":\"flyg\",\"roleName\":\"分类人员\",\"deptIds\":[],\"menuIds\":[2031,2032,2006,2000,2001,2002,2003,2004,2005,2007,2022,2009,2033,2023],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 18:41:04');
INSERT INTO `sys_oper_log` VALUES (287, '用户管理', 1, 'com.ruoyi.project.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"17799999999\",\"admin\":false,\"password\":\"$2a$10$5/OmrkrVOvUayGEtWO6g8uoejTDZX66.GlXyZy/Pimls3pip5Tugu\",\"postIds\":[6],\"email\":\"fl@qq.com\",\"nickName\":\"分类用户\",\"sex\":\"0\",\"deptId\":111,\"params\":{},\"userName\":\"fl\",\"userId\":106,\"createBy\":\"admin\",\"roleIds\":[102],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 18:42:04');
INSERT INTO `sys_oper_log` VALUES (288, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'fl', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":54}', 0, NULL, '2020-03-27 18:42:27');
INSERT INTO `sys_oper_log` VALUES (289, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'user', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":54}', 0, NULL, '2020-03-27 20:02:37');
INSERT INTO `sys_oper_log` VALUES (290, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":54}', 0, NULL, '2020-03-27 20:03:09');
INSERT INTO `sys_oper_log` VALUES (291, '部门管理', 3, 'com.ruoyi.project.system.controller.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/111', '127.0.0.1', '内网IP', '{deptId=111}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 20:03:27');
INSERT INTO `sys_oper_log` VALUES (292, '角色管理', 3, 'com.ruoyi.project.system.controller.SysRoleController.remove()', 'DELETE', 1, 'admin', NULL, '/system/role/102', '127.0.0.1', '内网IP', '{roleIds=102}', 'null', 1, '分类人员已分配,不能删除', '2020-03-27 20:03:35');
INSERT INTO `sys_oper_log` VALUES (293, '岗位管理', 3, 'com.ruoyi.project.system.controller.SysPostController.remove()', 'DELETE', 1, 'admin', NULL, '/system/post/6', '127.0.0.1', '内网IP', '{postIds=6}', 'null', 1, '分类人员已分配,不能删除', '2020-03-27 20:03:50');
INSERT INTO `sys_oper_log` VALUES (294, '岗位管理', 3, 'com.ruoyi.project.system.controller.SysPostController.remove()', 'DELETE', 1, 'admin', NULL, '/system/post/6', '127.0.0.1', '内网IP', '{postIds=6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 20:05:05');
INSERT INTO `sys_oper_log` VALUES (295, '角色管理', 3, 'com.ruoyi.project.system.controller.SysRoleController.remove()', 'DELETE', 1, 'admin', NULL, '/system/role/102', '127.0.0.1', '内网IP', '{roleIds=102}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 20:05:12');
INSERT INTO `sys_oper_log` VALUES (296, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":54}', 0, NULL, '2020-03-27 20:15:25');
INSERT INTO `sys_oper_log` VALUES (297, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":54}', 0, NULL, '2020-03-27 20:16:25');
INSERT INTO `sys_oper_log` VALUES (298, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":54}', 0, NULL, '2020-03-27 20:17:44');
INSERT INTO `sys_oper_log` VALUES (299, '用户管理', 1, 'com.ruoyi.project.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"15977777777\",\"admin\":false,\"password\":\"$2a$10$jsqPsTiCwosXPil.XH4zGOHddfUbsZmVmbyTkV4WHJ5WIrFnBSQCa\",\"postIds\":[1],\"email\":\"123456@qq.com\",\"nickName\":\"用户\",\"sex\":\"0\",\"deptId\":110,\"params\":{},\"userName\":\"test\",\"userId\":107,\"createBy\":\"admin\",\"roleIds\":[1],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 20:18:53');
INSERT INTO `sys_oper_log` VALUES (300, '角色管理', 1, 'com.ruoyi.project.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":103,\"admin\":false,\"params\":{},\"roleSort\":\"4\",\"createBy\":\"admin\",\"roleKey\":\"fl\",\"roleName\":\"分类角色\",\"deptIds\":[],\"menuIds\":[2031,2032,2006,2000,2001,2002,2003,2004,2005,2007,2022,2009,2033,2023],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 20:19:34');
INSERT INTO `sys_oper_log` VALUES (301, '部门管理', 1, 'com.ruoyi.project.system.controller.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"分类部门\",\"leader\":\"李先生\",\"orderNum\":\"3\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"phone\":\"17765603040\",\"ancestors\":\"0,100\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 20:20:03');
INSERT INTO `sys_oper_log` VALUES (302, '部门管理', 3, 'com.ruoyi.project.system.controller.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/112', '127.0.0.1', '内网IP', '{deptId=112}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 20:22:37');
INSERT INTO `sys_oper_log` VALUES (303, '部门管理', 2, 'com.ruoyi.project.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"回收部门\",\"leader\":\"李先生\",\"deptId\":110,\"orderNum\":\"1\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"createTime\":1585299509000,\"updateBy\":\"admin\",\"ancestors\":\"0,100\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 20:22:49');
INSERT INTO `sys_oper_log` VALUES (304, '部门管理', 2, 'com.ruoyi.project.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"测试部门\",\"leader\":\"李部长\",\"deptId\":109,\"orderNum\":\"1\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"createTime\":1583738745000,\"phone\":\"17765603020\",\"updateBy\":\"admin\",\"ancestors\":\"0,100\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 20:22:59');
INSERT INTO `sys_oper_log` VALUES (305, '部门管理', 2, 'com.ruoyi.project.system.controller.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"回收部门\",\"leader\":\"李先生\",\"deptId\":110,\"orderNum\":\"2\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"createTime\":1585299509000,\"updateBy\":\"admin\",\"ancestors\":\"0,100\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 20:23:10');
INSERT INTO `sys_oper_log` VALUES (306, '角色管理', 3, 'com.ruoyi.project.system.controller.SysRoleController.remove()', 'DELETE', 1, 'admin', NULL, '/system/role/103', '127.0.0.1', '内网IP', '{roleIds=103}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 20:23:28');
INSERT INTO `sys_oper_log` VALUES (307, '用户管理', 3, 'com.ruoyi.project.system.controller.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/107', '127.0.0.1', '内网IP', '{userIds=107}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2020-03-27 20:23:39');
INSERT INTO `sys_oper_log` VALUES (308, '用户管理', 3, 'com.ruoyi.project.system.controller.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/107', '127.0.0.1', '内网IP', '{userIds=107}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2020-03-27 20:23:50');
INSERT INTO `sys_oper_log` VALUES (309, '用户管理', 2, 'com.ruoyi.project.system.controller.SysUserController.changeStatus()', 'PUT', 1, 'admin', NULL, '/system/user/changeStatus', '127.0.0.1', '内网IP', '{\"admin\":false,\"updateBy\":\"admin\",\"params\":{},\"userId\":107,\"status\":\"1\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2020-03-27 20:24:02');
INSERT INTO `sys_oper_log` VALUES (310, '用户管理', 2, 'com.ruoyi.project.system.controller.SysUserController.changeStatus()', 'PUT', 1, 'admin', NULL, '/system/user/changeStatus', '127.0.0.1', '内网IP', '{\"admin\":false,\"updateBy\":\"admin\",\"params\":{},\"userId\":107,\"status\":\"1\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2020-03-27 20:24:06');
INSERT INTO `sys_oper_log` VALUES (311, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":54}', 0, NULL, '2020-03-27 20:25:03');
INSERT INTO `sys_oper_log` VALUES (312, '用户管理', 2, 'com.ruoyi.project.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"roleKey\":\"admin\",\"roleName\":\"管理员\",\"status\":\"0\"},{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"15999999992\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[3],\"loginIp\":\"\",\"email\":\"123@qq.com\",\"nickName\":\"用户\",\"sex\":\"2\",\"deptId\":109,\"avatar\":\"\",\"dept\":{\"deptName\":\"测试部门\",\"leader\":\"李部长\",\"deptId\":109,\"orderNum\":\"1\",\"params\":{},\"parentId\":100,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"user\",\"userId\":104,\"createBy\":\"admin\",\"roleIds\":[100],\"createTime\":1585293762000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 20:28:22');
INSERT INTO `sys_oper_log` VALUES (313, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'user', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":54}', 0, NULL, '2020-03-27 20:28:39');
INSERT INTO `sys_oper_log` VALUES (314, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":54}', 0, NULL, '2020-03-27 20:29:02');
INSERT INTO `sys_oper_log` VALUES (315, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":54}', 0, NULL, '2020-03-27 20:31:59');
INSERT INTO `sys_oper_log` VALUES (316, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'user', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":54}', 0, NULL, '2020-03-27 20:32:16');
INSERT INTO `sys_oper_log` VALUES (317, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":54}', 0, NULL, '2020-03-27 20:32:30');
INSERT INTO `sys_oper_log` VALUES (318, '用户管理', 2, 'com.ruoyi.project.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":100,\"admin\":false,\"dataScope\":\"5\",\"params\":{},\"roleSort\":\"0\",\"roleKey\":\"testyg\",\"roleName\":\"测试人员\",\"status\":\"0\"}],\"phonenumber\":\"15999999992\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[3],\"loginIp\":\"\",\"email\":\"123@qq.com\",\"nickName\":\"用户\",\"sex\":\"2\",\"deptId\":109,\"avatar\":\"\",\"dept\":{\"deptName\":\"测试部门\",\"leader\":\"李部长\",\"deptId\":109,\"orderNum\":\"1\",\"params\":{},\"parentId\":100,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"user\",\"userId\":104,\"createBy\":\"admin\",\"roleIds\":[2,100],\"createTime\":1585293762000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 20:32:58');
INSERT INTO `sys_oper_log` VALUES (319, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":54}', 0, NULL, '2020-03-27 20:33:43');
INSERT INTO `sys_oper_log` VALUES (320, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":54}', 0, NULL, '2020-03-27 20:34:19');
INSERT INTO `sys_oper_log` VALUES (321, '用户管理', 1, 'com.ruoyi.project.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"17765601234\",\"admin\":false,\"password\":\"$2a$10$szIb7.c3cZ61iZCCZtBDVubsw.jvxgf7JUHMSrKNe0EGnbuAHsCMm\",\"postIds\":[1],\"email\":\"1234@qq.com\",\"nickName\":\"用户\",\"sex\":\"0\",\"deptId\":109,\"params\":{},\"userName\":\"ldz\",\"userId\":108,\"createBy\":\"admin\",\"roleIds\":[2],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 20:35:15');
INSERT INTO `sys_oper_log` VALUES (322, '角色管理', 1, 'com.ruoyi.project.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":104,\"admin\":false,\"params\":{},\"roleSort\":\"0\",\"createBy\":\"admin\",\"roleKey\":\"system\",\"roleName\":\"系统管理角色\",\"deptIds\":[],\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 20:35:42');
INSERT INTO `sys_oper_log` VALUES (323, '部门管理', 1, 'com.ruoyi.project.system.controller.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"分类部门\",\"leader\":\"李先生\",\"orderNum\":\"3\",\"params\":{},\"parentId\":100,\"children\":[],\"phone\":\"17765602654\",\"email\":\"123123@qq.com\",\"status\":\"0\"}', '{\"msg\":\"新增部门\'分类部门\'失败，部门名称已存在\",\"code\":500}', 0, NULL, '2020-03-27 20:36:20');
INSERT INTO `sys_oper_log` VALUES (324, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":54}', 0, NULL, '2020-03-27 20:37:42');
INSERT INTO `sys_oper_log` VALUES (325, '获取垃圾分类总数', 0, 'com.ruoyi.project.garbage.controller.GarbageController.GetCount()', 'GET', 1, 'admin', NULL, '/garbage/getCount', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":54}', 0, NULL, '2020-03-27 20:38:16');
INSERT INTO `sys_oper_log` VALUES (326, '用户管理', 1, 'com.ruoyi.project.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"17765602235\",\"admin\":false,\"password\":\"$2a$10$Yw5D2yTdnKYk363fLQCa/uTlrpBuc6laiMwy7.X4z4JatNpAfCGJO\",\"postIds\":[1],\"email\":\"456@qq.com\",\"nickName\":\"李先生\",\"sex\":\"0\",\"deptId\":100,\"params\":{},\"userName\":\"lidz\",\"userId\":109,\"createBy\":\"admin\",\"roleIds\":[1],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 20:39:14');
INSERT INTO `sys_oper_log` VALUES (327, '角色管理', 1, 'com.ruoyi.project.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":105,\"admin\":false,\"params\":{},\"roleSort\":\"4\",\"createBy\":\"admin\",\"roleKey\":\"fenlei\",\"roleName\":\"分类角色\",\"deptIds\":[],\"menuIds\":[2031,2032,2006,2000,2001,2002,2003,2004,2005,2007,2022,2009,2033,2023],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 20:39:51');
INSERT INTO `sys_oper_log` VALUES (328, '部门管理', 1, 'com.ruoyi.project.system.controller.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"分类部门\",\"orderNum\":\"3\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"ancestors\":\"0,100\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 20:40:06');
INSERT INTO `sys_oper_log` VALUES (329, '岗位管理', 1, 'com.ruoyi.project.system.controller.SysPostController.add()', 'POST', 1, 'admin', NULL, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"5\",\"flag\":false,\"postId\":7,\"params\":{},\"createBy\":\"admin\",\"postName\":\"分类员工\",\"postCode\":\"fenleiyg\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 20:40:32');
INSERT INTO `sys_oper_log` VALUES (330, '图片状态修改', 2, 'com.ruoyi.project.appImg.controller.AppImgController.changeStatus()', 'PUT', 1, 'admin', NULL, '/system/img/changeImgStatus', '127.0.0.1', '内网IP', '{\"updateTime\":1585312848734,\"params\":{},\"openFlag\":\"1\",\"updateBy\":\"admin\",\"id\":\"1eb632aa5a2349359019ee0ad3a20462\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 20:40:48');
INSERT INTO `sys_oper_log` VALUES (331, '图片状态修改', 2, 'com.ruoyi.project.appImg.controller.AppImgController.changeStatus()', 'PUT', 1, 'admin', NULL, '/system/img/changeImgStatus', '127.0.0.1', '内网IP', '{\"updateTime\":1585312852393,\"params\":{},\"openFlag\":\"0\",\"updateBy\":\"admin\",\"id\":\"1eb632aa5a2349359019ee0ad3a20462\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 20:40:52');
INSERT INTO `sys_oper_log` VALUES (332, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/03/27/cf1f3cc33eb4c064a570c8c59c904769.jpg\"}', 0, NULL, '2020-03-27 20:41:00');
INSERT INTO `sys_oper_log` VALUES (333, '图片轮播图', 1, 'com.ruoyi.project.appImg.controller.AppImgController.add()', 'POST', 1, 'admin', NULL, '/system/img', '127.0.0.1', '内网IP', '{\"params\":{},\"imgTab\":\"0\",\"openFlag\":\"0\",\"createTime\":1585312863148,\"imgPath\":\"/profile/infoImg/2020/03/27/cf1f3cc33eb4c064a570c8c59c904769.jpg\",\"id\":\"409cf170cc01483b8e423c714e2aca3f\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 20:41:03');
INSERT INTO `sys_oper_log` VALUES (334, '垃圾分类', 1, 'com.ruoyi.project.garbage.controller.GarbageController.add()', 'POST', 1, 'admin', NULL, '/garbage', '127.0.0.1', '内网IP', '{\"contain\":\"百岁山\",\"params\":{},\"type\":\"0\",\"createBy\":\"admin\",\"createTime\":1585312925336,\"name\":\"怡宝\",\"gExplain\":\"怡宝是可回收垃圾\",\"letterId\":25,\"tip\":\"投放到可回收垃圾桶中\",\"id\":\"1eae2d96042b4affb1c21eed91ed460b\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 20:42:05');
INSERT INTO `sys_oper_log` VALUES (335, '回收站图片', 2, 'com.ruoyi.project.cycling.controller.CyclingController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/cycling/uploadCyclingImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/CycImg/2020/03/27/d2b05f2ea387d2714b6d97dbd27ea32e.jpg\"}', 0, NULL, '2020-03-27 20:42:56');
INSERT INTO `sys_oper_log` VALUES (336, '回收站管理', 1, 'com.ruoyi.project.cycling.controller.CyclingController.add()', 'POST', 1, 'admin', NULL, '/cycling', '127.0.0.1', '内网IP', '{\"cyclingAddress\":\"广东省佛山市南海区狮山镇广东东软学院-创新楼广东东软学院\",\"cyclingDetail\":\"能大量回收\",\"cyclingMan\":\"李先生\",\"params\":{},\"createBy\":\"admin\",\"createTime\":1585313011929,\"cyclingMobile\":\"17765604567\",\"id\":\"055a6603c66e4b6a8ef3c64089822944\",\"addressY\":\"23.01853\",\"addressX\":\"113.109397\",\"cyclingImg\":\"/profile/CycImg/2020/03/27/d2b05f2ea387d2714b6d97dbd27ea32e.jpg\",\"cyclingIntroduce\":\"好好好\",\"cyclingName\":\"高能回收站\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 20:43:31');
INSERT INTO `sys_oper_log` VALUES (337, '资讯图片上传', 2, 'com.ruoyi.project.information.controller.InformationController.uploadCyclingImg()', 'POST', 1, 'admin', NULL, '/information/uploadInfoImg', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":200,\"imageUrl\":\"/profile/infoImg/2020/03/27/e8d64db4b1e371f9fc60bc57686c965f.jpg\"}', 0, NULL, '2020-03-27 20:44:19');
INSERT INTO `sys_oper_log` VALUES (338, '资讯管理', 1, 'com.ruoyi.project.information.controller.InformationController.add()', 'POST', 1, 'admin', NULL, '/information', '127.0.0.1', '内网IP', '{\"infoImg\":\"/profile/infoImg/2020/03/27/e8d64db4b1e371f9fc60bc57686c965f.jpg\",\"source\":\"人民日报\",\"params\":{},\"title\":\"如何进行垃圾分类\",\"content\":\"请使用环保助手小程序\",\"createBy\":\"admin\",\"createTime\":1585313068917,\"id\":\"36bfaf0c7e404428b7c2008ab3a7e4e4\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2020-03-27 20:44:28');
INSERT INTO `sys_oper_log` VALUES (339, '用户头像', 2, 'com.ruoyi.project.system.controller.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2020/03/27/706e0908a0e09c793d4146e6988bb9b4.jpeg\",\"code\":200}', 0, NULL, '2020-03-27 20:45:04');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(0) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (5, 'hs', '回收人员', 0, '0', 'admin', '2020-03-27 16:58:47', '', NULL, NULL);
INSERT INTO `sys_post` VALUES (7, 'fenleiyg', '分类员工', 5, '0', 'admin', '2020-03-27 20:40:32', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(0) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 106 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '管理员', 'admin', 1, '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2020-03-09 16:21:24', '普通角色');
INSERT INTO `sys_role` VALUES (100, '测试人员', 'testyg', 0, '5', '0', '0', 'admin', '2020-03-02 15:27:18', 'admin', '2020-03-09 16:23:45', NULL);
INSERT INTO `sys_role` VALUES (105, '分类角色', 'fenlei', 4, '1', '0', '0', 'admin', '2020-03-27 20:39:51', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(0) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(0) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 109);
INSERT INTO `sys_role_dept` VALUES (100, 100);
INSERT INTO `sys_role_dept` VALUES (100, 109);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(0) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(0) NOT NULL COMMENT '菜单ID',
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
INSERT INTO `sys_role_menu` VALUES (100, 2000);
INSERT INTO `sys_role_menu` VALUES (100, 2001);
INSERT INTO `sys_role_menu` VALUES (100, 2002);
INSERT INTO `sys_role_menu` VALUES (100, 2003);
INSERT INTO `sys_role_menu` VALUES (100, 2004);
INSERT INTO `sys_role_menu` VALUES (100, 2005);
INSERT INTO `sys_role_menu` VALUES (100, 2006);
INSERT INTO `sys_role_menu` VALUES (100, 2007);
INSERT INTO `sys_role_menu` VALUES (100, 2009);
INSERT INTO `sys_role_menu` VALUES (100, 2022);
INSERT INTO `sys_role_menu` VALUES (100, 2023);
INSERT INTO `sys_role_menu` VALUES (100, 2031);
INSERT INTO `sys_role_menu` VALUES (100, 2032);
INSERT INTO `sys_role_menu` VALUES (100, 2033);
INSERT INTO `sys_role_menu` VALUES (101, 2000);
INSERT INTO `sys_role_menu` VALUES (101, 2001);
INSERT INTO `sys_role_menu` VALUES (101, 2002);
INSERT INTO `sys_role_menu` VALUES (101, 2003);
INSERT INTO `sys_role_menu` VALUES (101, 2004);
INSERT INTO `sys_role_menu` VALUES (101, 2005);
INSERT INTO `sys_role_menu` VALUES (101, 2006);
INSERT INTO `sys_role_menu` VALUES (101, 2007);
INSERT INTO `sys_role_menu` VALUES (101, 2009);
INSERT INTO `sys_role_menu` VALUES (101, 2022);
INSERT INTO `sys_role_menu` VALUES (101, 2023);
INSERT INTO `sys_role_menu` VALUES (101, 2031);
INSERT INTO `sys_role_menu` VALUES (101, 2032);
INSERT INTO `sys_role_menu` VALUES (101, 2033);
INSERT INTO `sys_role_menu` VALUES (102, 2000);
INSERT INTO `sys_role_menu` VALUES (102, 2001);
INSERT INTO `sys_role_menu` VALUES (102, 2002);
INSERT INTO `sys_role_menu` VALUES (102, 2003);
INSERT INTO `sys_role_menu` VALUES (102, 2004);
INSERT INTO `sys_role_menu` VALUES (102, 2005);
INSERT INTO `sys_role_menu` VALUES (102, 2006);
INSERT INTO `sys_role_menu` VALUES (102, 2007);
INSERT INTO `sys_role_menu` VALUES (102, 2009);
INSERT INTO `sys_role_menu` VALUES (102, 2022);
INSERT INTO `sys_role_menu` VALUES (102, 2023);
INSERT INTO `sys_role_menu` VALUES (102, 2031);
INSERT INTO `sys_role_menu` VALUES (102, 2032);
INSERT INTO `sys_role_menu` VALUES (102, 2033);
INSERT INTO `sys_role_menu` VALUES (103, 2000);
INSERT INTO `sys_role_menu` VALUES (103, 2001);
INSERT INTO `sys_role_menu` VALUES (103, 2002);
INSERT INTO `sys_role_menu` VALUES (103, 2003);
INSERT INTO `sys_role_menu` VALUES (103, 2004);
INSERT INTO `sys_role_menu` VALUES (103, 2005);
INSERT INTO `sys_role_menu` VALUES (103, 2006);
INSERT INTO `sys_role_menu` VALUES (103, 2007);
INSERT INTO `sys_role_menu` VALUES (103, 2009);
INSERT INTO `sys_role_menu` VALUES (103, 2022);
INSERT INTO `sys_role_menu` VALUES (103, 2023);
INSERT INTO `sys_role_menu` VALUES (103, 2031);
INSERT INTO `sys_role_menu` VALUES (103, 2032);
INSERT INTO `sys_role_menu` VALUES (103, 2033);
INSERT INTO `sys_role_menu` VALUES (104, 1);
INSERT INTO `sys_role_menu` VALUES (104, 100);
INSERT INTO `sys_role_menu` VALUES (104, 101);
INSERT INTO `sys_role_menu` VALUES (104, 103);
INSERT INTO `sys_role_menu` VALUES (104, 104);
INSERT INTO `sys_role_menu` VALUES (104, 1001);
INSERT INTO `sys_role_menu` VALUES (104, 1002);
INSERT INTO `sys_role_menu` VALUES (104, 1003);
INSERT INTO `sys_role_menu` VALUES (104, 1004);
INSERT INTO `sys_role_menu` VALUES (104, 1005);
INSERT INTO `sys_role_menu` VALUES (104, 1006);
INSERT INTO `sys_role_menu` VALUES (104, 1007);
INSERT INTO `sys_role_menu` VALUES (104, 1008);
INSERT INTO `sys_role_menu` VALUES (104, 1009);
INSERT INTO `sys_role_menu` VALUES (104, 1010);
INSERT INTO `sys_role_menu` VALUES (104, 1011);
INSERT INTO `sys_role_menu` VALUES (104, 1012);
INSERT INTO `sys_role_menu` VALUES (104, 1017);
INSERT INTO `sys_role_menu` VALUES (104, 1018);
INSERT INTO `sys_role_menu` VALUES (104, 1019);
INSERT INTO `sys_role_menu` VALUES (104, 1020);
INSERT INTO `sys_role_menu` VALUES (104, 1021);
INSERT INTO `sys_role_menu` VALUES (104, 1022);
INSERT INTO `sys_role_menu` VALUES (104, 1023);
INSERT INTO `sys_role_menu` VALUES (104, 1024);
INSERT INTO `sys_role_menu` VALUES (104, 1025);
INSERT INTO `sys_role_menu` VALUES (105, 2000);
INSERT INTO `sys_role_menu` VALUES (105, 2001);
INSERT INTO `sys_role_menu` VALUES (105, 2002);
INSERT INTO `sys_role_menu` VALUES (105, 2003);
INSERT INTO `sys_role_menu` VALUES (105, 2004);
INSERT INTO `sys_role_menu` VALUES (105, 2005);
INSERT INTO `sys_role_menu` VALUES (105, 2006);
INSERT INTO `sys_role_menu` VALUES (105, 2007);
INSERT INTO `sys_role_menu` VALUES (105, 2009);
INSERT INTO `sys_role_menu` VALUES (105, 2022);
INSERT INTO `sys_role_menu` VALUES (105, 2023);
INSERT INTO `sys_role_menu` VALUES (105, 2031);
INSERT INTO `sys_role_menu` VALUES (105, 2032);
INSERT INTO `sys_role_menu` VALUES (105, 2033);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(0) NULL DEFAULT NULL COMMENT '部门ID',
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
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 100, 'admin', '阿钊', '00', 'azhao@123.com', '15999999999', '0', '/profile/avatar/2020/03/27/706e0908a0e09c793d4146e6988bb9b4.jpeg', '$2a$10$66N0bfnafIab.Y8mxsSsM.8t9c6oPEOeTZ.Z2s9pdzgXCTQQhlBXK', '0', '0', '127.0.0.1', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', 'ry', '2020-03-27 12:52:32', '管理员');
INSERT INTO `sys_user` VALUES (104, 109, 'user', '用户', '00', '123@qq.com', '15999999992', '2', '', '$2a$10$RBK4fx8dgQFVEsh9res6a.Bz5GLHU9QrjCK3iMIVsCm7UxvzEzoMy', '0', '0', '', NULL, 'admin', '2020-03-27 15:22:42', 'admin', '2020-03-27 20:32:58', NULL);
INSERT INTO `sys_user` VALUES (108, 109, 'ldz', '用户', '00', '1234@qq.com', '17765601234', '0', '', '$2a$10$szIb7.c3cZ61iZCCZtBDVubsw.jvxgf7JUHMSrKNe0EGnbuAHsCMm', '0', '0', '', NULL, 'admin', '2020-03-27 20:35:15', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (109, 100, 'lidz', '李先生', '00', '456@qq.com', '17765602235', '0', '', '$2a$10$Yw5D2yTdnKYk363fLQCa/uTlrpBuc6laiMwy7.X4z4JatNpAfCGJO', '0', '0', '', NULL, 'admin', '2020-03-27 20:39:13', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(0) NOT NULL COMMENT '用户ID',
  `post_id` bigint(0) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (104, 3);
INSERT INTO `sys_user_post` VALUES (107, 1);
INSERT INTO `sys_user_post` VALUES (108, 1);
INSERT INTO `sys_user_post` VALUES (109, 1);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(0) NOT NULL COMMENT '用户ID',
  `role_id` bigint(0) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (104, 2);
INSERT INTO `sys_user_role` VALUES (104, 100);
INSERT INTO `sys_user_role` VALUES (108, 2);
INSERT INTO `sys_user_role` VALUES (109, 1);

SET FOREIGN_KEY_CHECKS = 1;
