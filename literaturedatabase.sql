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

 Date: 12/06/2023 15:35:16
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
INSERT INTO `literaturetable` VALUES (4, '10.1002/etep.2594', 'Adaptive differential protection for transformers in grid-connected wind farms', '并网风电场变压器的自适应差动保护', 'J', NULL, NULL, NULL, NULL, 'SCIE 4区', 2018, NULL, NULL, 'L4', 'Yes', '9', '2023-06-06 22:18:53');
INSERT INTO `literaturetable` VALUES (3, '10.1016/j.phpro.2012.03.111', 'Simulation Study on Internal Fault of Transformer', '变压器内部故障的仿真研究', 'J', 'Haihui Song', 'Fangming Zhao', 'Haihui Song,Fangming Zhao,Di He', 'Physics Procedia', '普刊', 2012, '变压器差动保护仿真', 'simulink仿真变压器和差动保护', 'L2', 'Yes', '7', '2023-06-06 15:47:00');
INSERT INTO `literaturetable` VALUES (1, '10.1109/ISGT-Asia.2018.8467823', 'Effect of DFIG Wind Farm Fault Currents on the Transformer Differential Relaying Performance', 'DFIG风电场故障电流对变压器差动继电器性能的影响', 'C', 'Huy Nguyen-Duc', 'Yosuke Nakanishi', 'Huy Nguyen-Duc, IEEE member\r\nDepartment of Electric power systems, \r\nHanoi University of Science and Technology \r\nHanoi, Vietnam', '2018 IEEE Innovative Smart Grid Technologies - Asia (ISGT Asia)', '', 2018, '本文重在讲述simulink仿真后结果的分析，介绍了DFIG的控制模型和建模过程，差动保护的运行情况。讨论了，在电流互感器饱和与非饱和，有撬棍电路和无撬棍电路情况下的差动电流。发现在故障排除瞬间，差动电流会出现浪涌，使变压器铁芯饱和，导致变压器差动保护元件发出错误的跳闸信号。', '关于DFIG的建模和差动电流不同情况的讨论，涉及低电压穿过的撬棍保护', 'L4', 'Yes', '8', '2023-05-30 12:27:35');
INSERT INTO `literaturetable` VALUES (6, '10.27275/d.cnki.gsdku.2019.000430', NULL, '基于故障暂态差异的双馈风电场保护研究', 'D', '葛彤辉', NULL, NULL, '山东科技大学', NULL, 2019, '给出风电场的相关建模，DFIG工作原理，说明了频率偏移性对变压器保护的影响', '基于HHT的频率突变量法特判', 'L4', 'Yes', '8', '2023-06-11 19:08:52');
INSERT INTO `literaturetable` VALUES (2, '10.3390/en7095566', 'Differential protection for an outgoing transformer of large-scale doubly fed induction generator-based wind farms', '基于大型双馈感应发电机的风电场的出线变压器的差分保护', 'J', 'Bingtuan Gao ', 'Wei Wei ', 'Bing Gao,Wei Wei,Luoma Zhang,Ning Chen,Yingjun Wu,Yi Tang', 'Energies', 'SCIE 4区', 2014, '', '', 'L2', 'Yes', '0', '2023-06-01 20:03:18');
INSERT INTO `literaturetable` VALUES (7, '10.7667/j.issn.1674-3415.2015.19.005', NULL, '风力发电系统短路故障特征分析及对保护的影响', 'J', '滕予非', '行武', '滕予非,行武,张宏图,史华勃,焦在滨', '电力系统保护与控制', 'EI', 2015, '建立了双馈和直驱风电系统电磁暂态模型。通过电磁暂态仿真研究了风电系统短路电流及系统正负序阻抗的特征，得出了风电系统提供**短路电流能力较常规电源弱和风电系统正负序阻抗不一致且随时间波动**的结论。', '(2) 对于双馈风力发电，**Crowbar 保护不动作时**，对于联络线接地故障，由于控制系统的限幅作用，风场侧和风机出口暂态电流不大，与同步机风场接近，由于控制系统的作用，**故障相电流频率始终维持在工频**。 \r\n\r\n(3) 对于双馈风力发电，**Crowbar 保护动作时**，控制系统的电流限幅作用停止，有一定提供短路电流的能力，对于联络线接地故障，由于失去控制系统的限幅作用，与Crowbar 保护不动作时相比风场侧和风机出口暂态电流较大，对于所有类型的故障，集电线风机侧和风机出口电流频率发生变化，**不等于系统频率**，但发生单相接地故障后由于风场和同步系统仍然保持联系，电流频率很快恢复至工频。**这将对工频保护算法产生不利影响**。', 'L3', 'Yes', '8', '2023-06-12 10:03:52');
INSERT INTO `literaturetable` VALUES (5, 'ISBN 978-7-111-52948-4', 'Electric Power Transformer Engineering(Third Edition)', '电力变压器工程', 'M', 'James H.Harlow', NULL, NULL, '机械工业出版社', '书籍', 2015, '新能源变压器描述，差动保护方法介绍', NULL, 'L3', 'No', '5', '2023-06-11 14:47:42');

SET FOREIGN_KEY_CHECKS = 1;
