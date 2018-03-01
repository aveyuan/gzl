/*
Navicat MySQL Data Transfer

Source Server         : glpi
Source Server Version : 50556
Source Host           : 172.30.101.38:3306
Source Database       : lck

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2018-03-01 08:28:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for oa_gxb1
-- ----------------------------
DROP TABLE IF EXISTS `oa_gxb1`;
CREATE TABLE `oa_gxb1` (
  `ID` varchar(255) CHARACTER SET utf8 NOT NULL,
  `关联流程ID` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `分支名称` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `节点1` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `节点2` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `节点3` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `节点4` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `节点5` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `节点6` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `节点7` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `节点8` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of oa_gxb1
-- ----------------------------
INSERT INTO `oa_gxb1` VALUES ('1', '1,16,14,12,9,8,7,11,13,6,5,4,3,2', '商业BP', '人力资源经理', '', '', '', '', '', '', '');
INSERT INTO `oa_gxb1` VALUES ('2', '1,16,14,12,9,8,7,11,13,6,5,4,3,2', '地产BP', '人力资源经理', '', '', '', '', '', '', '');
INSERT INTO `oa_gxb1` VALUES ('27', '15', '计划内', '财务正副总监会审', '', '', '', '', '', '', '');
INSERT INTO `oa_gxb1` VALUES ('28', '15', '计划外', '财务正副总监会审', '正副总经理会审', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for oa_gxb2
-- ----------------------------
DROP TABLE IF EXISTS `oa_gxb2`;
CREATE TABLE `oa_gxb2` (
  `ID` varchar(255) CHARACTER SET utf8 NOT NULL,
  `关联流程ID` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `分支名称` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `节点1` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `节点2` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `节点3` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `节点4` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `节点5` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `节点6` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `节点7` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `节点8` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of oa_gxb2
-- ----------------------------
INSERT INTO `oa_gxb2` VALUES ('1', '13', '计划内', '人力资源副总监审批', '', '', '', '', '', '', '');
INSERT INTO `oa_gxb2` VALUES ('2', '13', '计划外', '人力资源副总监审批', '正副总经理会审', '', '', '', '', '', '');
INSERT INTO `oa_gxb2` VALUES ('3', '14', '计划内', '人力资源副总监审批', '财务正副总监会审', '', '', '', '', '', '');
INSERT INTO `oa_gxb2` VALUES ('4', '14', '计划外', '人力资源副总监审批', '财务正副总监会审', '正副总经理会审', '', '', '', '', '');
INSERT INTO `oa_gxb2` VALUES ('5', '5', '非工作日加班', '', '', '', '', '', '', '', '');
INSERT INTO `oa_gxb2` VALUES ('6', '5', '节假日加班', '人力资源副总监审批', '', '', '', '', '', '', '');
INSERT INTO `oa_gxb2` VALUES ('7', '2', '小于及等于3天', '人力资源跟踪人-薪酬绩效', '人力资源副总监审批', null, null, null, null, null, null);
INSERT INTO `oa_gxb2` VALUES ('8', '2', '大于3天', '人力资源跟踪人-薪酬绩效', '人力资源副总监审批', '正副总经理会审', null, null, null, null, null);

-- ----------------------------
-- Table structure for oa_lcb
-- ----------------------------
DROP TABLE IF EXISTS `oa_lcb`;
CREATE TABLE `oa_lcb` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `公司` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `流程类别` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `流程名称` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `流程状态` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `主责部门` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `重复参与人策略` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `分支` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `抄送` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `发起人` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `节点1` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `节点2` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `节点3` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `节点4` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `节点5` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `节点6` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `节点7` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `节点8` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `节点9` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `节点10` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `节点11` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `节点12` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `节点13` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `节点14` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `节点15` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of oa_lcb
-- ----------------------------
INSERT INTO `oa_lcb` VALUES ('1', '地产公司', '人力资源流程', '转正申请', '禁用', '人力资源部', '', '商业BP\n地产BP\n', '公章管理员;财务总监;财务副总监;<申请人>;<直线领导>;<1级直线领导>;<本单位-副总监>;<本单位-总监>;人力资源薪酬绩效', '发起人', '直接领导审批', '1级直线领导审批', '部门正副总监会审', '分支1', '人力资源副总监审批', '正副总经理会审', '公章管理员审批', '抄送相关人员', '', '', '', '', '', '', '');
INSERT INTO `oa_lcb` VALUES ('2', '地产公司', '人力资源流程', '请假申请（员工）', '启用', '人力资源部', '', '小于及等于3天\n大于3天', '<申请人>;<直线领导>;人力资源考勤负责人;人力资源跟踪人-薪酬绩效', '发起人', '直接领导审批', '1级直线领导审批', '部门正副总监会审', '分支1', '人力资源考勤负责人', '分支2', '抄送相关人员', '', '', '', '', '', '', '', '');
INSERT INTO `oa_lcb` VALUES ('3', '地产公司', '人力资源流程', '请假申请（总经理室直接下属）', '启用', '人力资源部', '', '商业BP\n地产BP\n', '<申请人>;人力资源考勤负责人;人力资源跟踪人-薪酬绩效', '发起人', '人力资源考勤负责人审批', '人力资源跟踪人-薪酬绩效', '人力资源副总监审批', '正副总经理会审', '抄送相关人员', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oa_lcb` VALUES ('4', '地产公司', '人力资源流程', '排班表申请', '禁用', '人力资源部', '', '商业BP\n地产BP\n', '<申请人>;人力资源跟踪人-薪酬绩效;人力资源考勤负责人;', '发起人', '直接领导审批', '1级直线领导审批', '分支1', '部门正副总监会审', '人力资源副总监审批', '抄送相关人员', '', '', '', '', '', '', '', '', '');
INSERT INTO `oa_lcb` VALUES ('5', '地产公司', '人力资源流程', '加班申请', '禁用', '人力资源部', '', '商业BP\n地产BP\n', '<申请人>;人力资源跟踪人-薪酬绩效;人力资源考勤负责人;人力资源副总监', '发起人', '直接领导审批', '1级直线领导审批', '部门正副总监会审', '分支1', '分支2（平常加班/法定节假日加班）', '抄送相关人员', '', '', '', '', '', '', '', '', '');
INSERT INTO `oa_lcb` VALUES ('6', '地产公司', '人力资源流程', '劳动合同续签/终止/解除申请（员工）', '禁用', '人力资源部', '', '商业BP\n地产BP\n', '<申请人>;人力资源跟踪人-薪酬绩效;人力资源考勤负责人;公章管理员;', '发起人', '直接领导审批', '1级直线领导审批', '部门正副总监会审', '分支1', '财务正副总监会审', '人力资源副总监审批', '正副总经理会审', '公章管理员审批', '抄送相关人员', '', '', '', '', '', '');
INSERT INTO `oa_lcb` VALUES ('7', '地产公司', '人力资源流程', '劳动合同续签/终止/解除申请（总经理直接下属）', '禁用', '人力资源部', '', '商业BP\n地产BP\n', '<申请人>;人力资源跟踪人-薪酬绩效;人力资源考勤负责人;公章管理员;', '发起人', '财务正副总监会审', '人力资源副总监审批', '正副总经理会审', '公章管理员审批', '抄送相关人员', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oa_lcb` VALUES ('8', '地产公司', '人力资源流程', '离职申请（员工）', '禁用', '人力资源部', '', '商业BP\n地产BP\n', '<申请人>;人力资源考勤负责人;人力资源跟踪人-薪酬绩效', '发起人', '直接领导审批', '1级直线领导审批', '部门正副总监会审', '分支1', '人力资源副总监审批', '正副总经理会审', '抄送相关人员', '', '', '', '', '', '', '', '');
INSERT INTO `oa_lcb` VALUES ('9', '地产公司', '人力资源流程', '离职申请（总经理直接下属）', '禁用', '人力资源部', '', '商业BP\n地产BP\n', '<申请人>;人力资源考勤负责人;人力资源跟踪人-薪酬绩效', '发起人', '人力资源副总监审批', '正副总经理会审', '抄送相关人员', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oa_lcb` VALUES ('10', '地产公司', '人力资源流程', '离职交接申请', '禁用', '人力资源部', '', '商业BP\n地产BP\n', '<申请人>;公章管理员;人力资源考勤负责人;人力资源跟踪人-薪酬绩效', '发起人', '选择工作交接人审批', '直接领导审批', '1级直线领导审批', '部门正副总监会审', '财务会计、行政专员、IT主管、人力资源考勤负责人会审', '人力资源跟踪人-薪酬绩效审批', '公章管理员审批', '抄送相关人员', '', '', '', '', '', '', '');
INSERT INTO `oa_lcb` VALUES ('13', '地产公司', '人力资源流程', '招聘申请', '启用', '人力资源部', '', '计划内\n计划外', '<申请人>;人力资源经理（招聘口）;人力资源副总监;财务总监;财务副总监;', '部门经理', '部门正副总监会审', '项目计划协调人', '分支1', '分支2', '抄送相关人员', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oa_lcb` VALUES ('14', '地产公司', '人力资源流程', '培训申请（员工）', '启用', '人力资源部', '', '计划内\n计划外', '<申请人>;人力资源跟踪人-薪酬绩效;', '发起人', '直接领导审批', '1级直线领导审批', '部门正副总监会审', '分支1', '分支2', '抄送相关人员', '', '', '', '', '', '', '', '', '');
INSERT INTO `oa_lcb` VALUES ('15', '地产公司', '人力资源流程', '培训申请（总经理直接下属）', '启用', '人力资源部', '', '计划内\n计划外', '<申请人>;人力资源跟踪人-薪酬绩效;', '发起人', '人力资源副总监审批', '分支1', '抄送相关人员', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oa_lcb` VALUES ('16', '地产公司', '人力资源流程', '学习考察或团建申请', '启用', '人力资源部', '', '商业BP\n地产BP\n', '<申请人>;', '发起人', '直接领导审批', '1级直线领导审批', '部门正副总监会审', '分支1', '人力资源副总监审批', '财务正副总监会审', '正副总经理会审', '抄送相关人员', '', '', '', '', '', '', '');
INSERT INTO `oa_lcb` VALUES ('17', '地产公司', '商业运营类', '商业部库房物品领用流程', '待建', '商业部', '', '', '长嘉汇商业库房管理员，长嘉汇商业运营经理', '申请人', '发起人填写部门领导', '长嘉汇商业库房管理员审批', '长嘉汇财务会计经理审批', '长嘉汇商业财务经理审批\r\n', '商业副总监审批', '正副财务总监会审', '商业总监;总经理会审', '', '', '', '', '', '', '', '');
