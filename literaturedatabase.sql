/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : localhost:3306
 Source Schema         : literaturedatabase

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 30/05/2023 12:31:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for literaturetable
-- ----------------------------
DROP TABLE IF EXISTS `literaturetable`;
CREATE TABLE `literaturetable`  (
  `Serial_NO` int(4) NOT NULL COMMENT '序号，自动增长',
  `DOI` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键，论文唯一标识',
  `EnglishTitle` varchar(511) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '英文标题',
  `ChineseTitle` varchar(511) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中文标题',
  `Category` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'M专著，C会议论文，N报纸文章，J期刊文章，D学位论文，R报告，S标准，P专利，R科技报告，对于不属于上述的文献类型用Z',
  `Thesis_I` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '一作',
  `Thesis_II` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '二作',
  `ThesisAuthors` varchar(511) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所有作者',
  `Publisher` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '期刊、学校、会议',
  `PublishingLevel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'EI，sci区级，北大核心，名校，普通院校',
  `Year` int(8) NULL DEFAULT NULL COMMENT '年份',
  `GeneralIntroduction` varchar(1023) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '大致介绍',
  `MethodIntroduction` varchar(1023) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '方法描述',
  `MatchingLevel` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'L0 不契合，但行文可以参考，L1 方向交集不大，但文章背景有所需之处\r\nL2 方向交集不深，但所用方法有价值和指导意义，L3 方向有交集，但文章所用方法指导意义不深，L4 方向部分吻合，方法合适且有指导价值，L5 方向完全吻合，值得进行文章扩充',
  `ReproducingOrNot` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否值得复现（YES or Not）',
  `CurValue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '可以用中文描述',
  `CreateTime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`DOI`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of literaturetable
-- ----------------------------
INSERT INTO `literaturetable` VALUES (1, '10.1109/ISGT-Asia.2018.8467823', 'Effect of DFIG Wind Farm Fault Currents on the Transformer Differential Relaying Performance', 'DFIG风电场故障电流对变压器差动继电器性能的影响', 'C', 'Huy Nguyen-Duc', 'Yosuke Nakanishi', 'Huy Nguyen-Duc, IEEE member\r\nDepartment of Electric power systems, \r\nHanoi University of Science and Technology \r\nHanoi, Vietnam', '2018 IEEE Innovative Smart Grid Technologies - Asia (ISGT Asia)', NULL, 2018, NULL, NULL, 'L4', 'Yes', '9', '2023-05-30 12:27:35');

SET FOREIGN_KEY_CHECKS = 1;
