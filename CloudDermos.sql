create database Couldcar default character set utf8 collate utf8_general_ci;
use Couldcar;
/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50133
Source Host           : localhost:3306
Source Database       : couldcar

Target Server Type    : MYSQL
Target Server Version : 50133
File Encoding         : 65001

Date: 2019-04-17 19:43:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for branch
-- ----------------------------
DROP TABLE IF EXISTS `branch`;
CREATE TABLE `branch` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT,
  `b_name` varchar(50) NOT NULL,
  `b_remark` varchar(100) DEFAULT NULL,
  `b_usable` int(11) DEFAULT '1',
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of branch
-- ----------------------------
INSERT INTO `branch` VALUES ('1', '������', '����֧�ֵĹ���', '1');
INSERT INTO `branch` VALUES ('2', '���ڲ�', '�������������', '1');
INSERT INTO `branch` VALUES ('3', '����', '�������������', '1');
INSERT INTO `branch` VALUES ('4', 'ǰ̨��', 'ǰ̨�ĽӴ��Ĺ���', '1');
INSERT INTO `branch` VALUES ('5', '���²�', '��Ա��Ϣ�Ĺ���', '1');
INSERT INTO `branch` VALUES ('6', '������', '���й�˾�İ�ȫ��', '1');
INSERT INTO `branch` VALUES ('7', '���ڰ�ȫ��', '��ȫ�Ĺ���Ӵ', '0');

-- ----------------------------
-- Table structure for incomingparts
-- ----------------------------
DROP TABLE IF EXISTS `incomingparts`;
CREATE TABLE `incomingparts` (
  `i_partsId` int(11) NOT NULL AUTO_INCREMENT COMMENT '������ID',
  `i_title` varchar(100) NOT NULL COMMENT '������',
  `i_time` datetime NOT NULL COMMENT '���ʱ��',
  `i_personnel` varchar(255) NOT NULL COMMENT '�����Ա',
  PRIMARY KEY (`i_partsId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of incomingparts
-- ----------------------------
INSERT INTO `incomingparts` VALUES ('1', '������', '2019-04-24 04:52:10', '����');
INSERT INTO `incomingparts` VALUES ('2', '����', '2019-04-24 04:52:10', '����');
INSERT INTO `incomingparts` VALUES ('3', '����', '2019-04-24 04:52:10', '����');
INSERT INTO `incomingparts` VALUES ('5', '����', '2019-04-24 04:52:10', '����');
INSERT INTO `incomingparts` VALUES ('6', '����', '2019-04-24 04:52:10', '����');
INSERT INTO `incomingparts` VALUES ('7', '����', '2019-04-24 04:52:10', '����');
INSERT INTO `incomingparts` VALUES ('9', '����', '2019-04-24 04:52:10', '����');
INSERT INTO `incomingparts` VALUES ('10', '1', '2019-04-08 09:20:57', '1');
INSERT INTO `incomingparts` VALUES ('11', '����', '2019-04-17 11:23:09', ' ��ĳ��');
INSERT INTO `incomingparts` VALUES ('12', 's ', '2019-04-04 19:18:45', 's ');

-- ----------------------------
-- Table structure for incomingpartsinfo
-- ----------------------------
DROP TABLE IF EXISTS `incomingpartsinfo`;
CREATE TABLE `incomingpartsinfo` (
  `i_partsId` int(11) NOT NULL AUTO_INCREMENT COMMENT '����������ID',
  `i_incomingPartsId` int(11) NOT NULL COMMENT '������ID,���',
  `i_querytheWarehouseId` int(11) NOT NULL COMMENT '���������ϢID,���',
  `i_number` int(11) NOT NULL COMMENT '�������',
  `i_totalPrice` decimal(10,0) NOT NULL COMMENT '�ܽ��',
  PRIMARY KEY (`i_partsId`),
  KEY `FK_incomingPartsInfo_i_incomingPartsId` (`i_incomingPartsId`),
  KEY `FK_incomingPartsInfo_i_querytheWarehouseId` (`i_querytheWarehouseId`),
  CONSTRAINT `FK_incomingPartsInfo_i_querytheWarehouseId` FOREIGN KEY (`i_querytheWarehouseId`) REFERENCES `querythewarehouse` (`q_id`),
  CONSTRAINT `FK_incomingPartsInfo_i_incomingPartsId` FOREIGN KEY (`i_incomingPartsId`) REFERENCES `incomingparts` (`i_partsId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of incomingpartsinfo
-- ----------------------------
INSERT INTO `incomingpartsinfo` VALUES ('1', '2', '4', '1', '5000');
INSERT INTO `incomingpartsinfo` VALUES ('2', '2', '4', '1', '5000');
INSERT INTO `incomingpartsinfo` VALUES ('3', '2', '4', '1', '5000');
INSERT INTO `incomingpartsinfo` VALUES ('4', '2', '4', '1', '5000');
INSERT INTO `incomingpartsinfo` VALUES ('5', '2', '4', '1', '5000');
INSERT INTO `incomingpartsinfo` VALUES ('6', '2', '4', '1', '5000');
INSERT INTO `incomingpartsinfo` VALUES ('7', '10', '1', '1', '8888');
INSERT INTO `incomingpartsinfo` VALUES ('8', '11', '12', '5', '5000');
INSERT INTO `incomingpartsinfo` VALUES ('9', '12', '7', '1111', '888800');

-- ----------------------------
-- Table structure for largeservicetype
-- ----------------------------
DROP TABLE IF EXISTS `largeservicetype`;
CREATE TABLE `largeservicetype` (
  `l_id` int(11) NOT NULL AUTO_INCREMENT,
  `lst_name` varchar(50) NOT NULL,
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of largeservicetype
-- ----------------------------
INSERT INTO `largeservicetype` VALUES ('3', '��������');
INSERT INTO `largeservicetype` VALUES ('4', '��������');
INSERT INTO `largeservicetype` VALUES ('5', '������װ');

-- ----------------------------
-- Table structure for maintenancerecord
-- ----------------------------
DROP TABLE IF EXISTS `maintenancerecord`;
CREATE TABLE `maintenancerecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `o_id` int(11) NOT NULL,
  `Begin_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `S_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of maintenancerecord
-- ----------------------------
INSERT INTO `maintenancerecord` VALUES ('1', '1', '2019-04-16 08:00:09', null, '2');
INSERT INTO `maintenancerecord` VALUES ('2', '1', '2019-04-16 08:04:53', null, '2');
INSERT INTO `maintenancerecord` VALUES ('3', '1', '2019-04-16 08:31:37', null, '2');
INSERT INTO `maintenancerecord` VALUES ('4', '4', '2019-04-17 11:30:27', null, '2');
INSERT INTO `maintenancerecord` VALUES ('5', '6', '2019-04-17 11:33:02', null, '5');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `msgId` int(20) NOT NULL AUTO_INCREMENT,
  `userface` varchar(50) DEFAULT NULL,
  `userName` varchar(50) NOT NULL,
  `userAsk` varchar(200) NOT NULL,
  `askTime` datetime NOT NULL,
  `email` varchar(50) NOT NULL,
  `msgReply` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`msgId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('15', null, 'С��', '��ð�', '2019-04-17 10:16:11', '2671412803@qq.com', null);

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `ramart` varchar(200) NOT NULL,
  `r_time` datetime NOT NULL,
  `s_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `out_id` int(11) DEFAULT NULL,
  `user_id` int(50) NOT NULL,
  `sta_id` int(50) NOT NULL,
  `service_type` int(11) NOT NULL,
  `discount` double(50,0) NOT NULL,
  `l_price` double(50,0) DEFAULT NULL,
  `pay_type` varchar(50) NOT NULL,
  `order_state` varchar(50) NOT NULL,
  `service_way` varchar(50) NOT NULL,
  `remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_orders_out_id` (`out_id`),
  KEY `FK_orders_user_id` (`user_id`),
  CONSTRAINT `FK_orders_user_id` FOREIGN KEY (`user_id`) REFERENCES `userinfo` (`us_id`),
  CONSTRAINT `FK_orders_out_id` FOREIGN KEY (`out_id`) REFERENCES `outboundparts` (`o_outboundId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', null, '1', '1', '2', '9', null, '�ֽ�', 'δ����', '���ŷ���', 'kjnjnknjknjk');
INSERT INTO `orders` VALUES ('4', null, '1', '1', '4', '9', null, '΢��', 'δ����', '�ڵ����', '��һ������');
INSERT INTO `orders` VALUES ('5', null, '1', '1', '3', '9', null, '�ֽ�', 'δ����', '�ڵ����', '������');
INSERT INTO `orders` VALUES ('6', null, '1', '4', '3', '8', null, '֧����', 'δ����', '�ڵ����', '�Ͽͻ�');

-- ----------------------------
-- Table structure for outboundparts
-- ----------------------------
DROP TABLE IF EXISTS `outboundparts`;
CREATE TABLE `outboundparts` (
  `o_outboundId` int(11) NOT NULL AUTO_INCREMENT COMMENT '����ID',
  `o_title` varchar(100) NOT NULL COMMENT '�������',
  `o_time` datetime NOT NULL COMMENT '����ʱ��',
  `o_cause` varchar(255) NOT NULL COMMENT '����ԭ��',
  `o_personnel` varchar(255) NOT NULL COMMENT '������Ա',
  `o_manager` varchar(255) NOT NULL COMMENT '�ֿ������Ա',
  PRIMARY KEY (`o_outboundId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of outboundparts
-- ----------------------------
INSERT INTO `outboundparts` VALUES ('1', 'ά��', '2019-04-30 13:57:55', 'ά������', '����', 'admin');
INSERT INTO `outboundparts` VALUES ('2', '����', '2019-04-30 13:57:55', '��������', '����', 'admin');
INSERT INTO `outboundparts` VALUES ('3', 'С��', '2019-04-30 13:57:55', 'С������', '����', 'admin');
INSERT INTO `outboundparts` VALUES ('4', 's ', '2019-04-16 20:24:06', '1', '1', '1');
INSERT INTO `outboundparts` VALUES ('5', '1', '2019-04-30 20:24:25', '1', '1', '1');
INSERT INTO `outboundparts` VALUES ('6', '�ͻ�ά��', '2019-04-17 11:24:19', '�ͻ����ӻ���', '��ĳ��', '��ĳ��');
INSERT INTO `outboundparts` VALUES ('7', '1', '2019-04-17 19:18:26', 's ', 's ', 's ');

-- ----------------------------
-- Table structure for outboundpartsinfo
-- ----------------------------
DROP TABLE IF EXISTS `outboundpartsinfo`;
CREATE TABLE `outboundpartsinfo` (
  `o_ouId` int(11) NOT NULL AUTO_INCREMENT COMMENT '����ID',
  `o_partsId2` int(11) NOT NULL COMMENT '�������ID,���',
  `o_querytheWarehouseId2` int(11) NOT NULL COMMENT '���������ϢID,���',
  `o_number` int(11) NOT NULL COMMENT '��������',
  `o_totalPrice` decimal(10,0) NOT NULL COMMENT '�ܽ��',
  PRIMARY KEY (`o_ouId`),
  KEY `FK_outboundParts_o_partsId2` (`o_partsId2`),
  KEY `FK_outboundParts_o_querytheWarehouseId2` (`o_querytheWarehouseId2`),
  CONSTRAINT `FK_outboundParts_o_querytheWarehouseId2` FOREIGN KEY (`o_querytheWarehouseId2`) REFERENCES `querythewarehouse` (`q_id`),
  CONSTRAINT `FK_outboundParts_o_partsId2` FOREIGN KEY (`o_partsId2`) REFERENCES `outboundparts` (`o_outboundId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of outboundpartsinfo
-- ----------------------------
INSERT INTO `outboundpartsinfo` VALUES ('1', '1', '1', '1', '9999');
INSERT INTO `outboundpartsinfo` VALUES ('2', '2', '2', '2', '9999');
INSERT INTO `outboundpartsinfo` VALUES ('3', '3', '3', '3', '9999');
INSERT INTO `outboundpartsinfo` VALUES ('4', '4', '6', '1', '138');
INSERT INTO `outboundpartsinfo` VALUES ('5', '5', '1', '10', '188880');
INSERT INTO `outboundpartsinfo` VALUES ('6', '6', '1', '1', '18888');
INSERT INTO `outboundpartsinfo` VALUES ('7', '7', '7', '25', '34700');

-- ----------------------------
-- Table structure for postinfo
-- ----------------------------
DROP TABLE IF EXISTS `postinfo`;
CREATE TABLE `postinfo` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_name` varchar(50) NOT NULL,
  `p_bId` int(11) NOT NULL,
  `p_remark` varchar(100) DEFAULT NULL,
  `p_usable` int(11) DEFAULT '1',
  PRIMARY KEY (`post_id`),
  KEY `p_bId` (`p_bId`),
  CONSTRAINT `p_bId` FOREIGN KEY (`p_bId`) REFERENCES `branch` (`b_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of postinfo
-- ----------------------------
INSERT INTO `postinfo` VALUES ('1', '��������', '1', '��������Ӵ', '1');
INSERT INTO `postinfo` VALUES ('2', '�����鳤', '1', '��������Ӵ', '1');
INSERT INTO `postinfo` VALUES ('3', '����Ա', '1', '��������Ӵ', '1');
INSERT INTO `postinfo` VALUES ('4', '�����ܹ�', '2', '��������Ӵ', '1');
INSERT INTO `postinfo` VALUES ('5', '������Ա', '2', '��������Ӵ', '1');
INSERT INTO `postinfo` VALUES ('6', '������', '3', '��������Ӵ', '1');
INSERT INTO `postinfo` VALUES ('7', '�����鳤', '3', '��������Ӵ', '1');
INSERT INTO `postinfo` VALUES ('8', '���þ���', '4', '��������Ӵ', '1');
INSERT INTO `postinfo` VALUES ('9', '���¾���', '5', '��������Ӵ', '1');
INSERT INTO `postinfo` VALUES ('10', '��ȫ�鳤', '6', '�������ȫ��ԱӴ', '0');

-- ----------------------------
-- Table structure for querythewarehouse
-- ----------------------------
DROP TABLE IF EXISTS `querythewarehouse`;
CREATE TABLE `querythewarehouse` (
  `q_id` int(11) NOT NULL AUTO_INCREMENT,
  `q_vehicleBrand` varchar(20) NOT NULL COMMENT '����',
  `q_partsImg` varchar(255) NOT NULL COMMENT '���ͼƬ����ַ��',
  `q_partsName` varchar(20) NOT NULL COMMENT '�������',
  `q_partBrand` varchar(255) NOT NULL COMMENT '���Ʒ��',
  `q_number` int(11) NOT NULL COMMENT '����',
  `q_unit` varchar(5) NOT NULL COMMENT '��λ',
  `q_partType` varchar(255) NOT NULL COMMENT '����ͺ�',
  `q_partEffect` varchar(255) NOT NULL COMMENT '�������',
  `q_buyingRate` decimal(10,2) NOT NULL COMMENT '�������',
  `q_sellingPrice` decimal(10,2) NOT NULL COMMENT '�ۼ�',
  `q_noFollow` int(11) NOT NULL COMMENT '�Ƿ���Ҫ��1Ϊ��Ҫ��2Ϊ����Ҫ',
  PRIMARY KEY (`q_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of querythewarehouse
-- ----------------------------
INSERT INTO `querythewarehouse` VALUES ('1', '����3ϵ', 'fadongji.png', '������', '������', '0', 'ά�޲�', 'FDJ_BWM', '��������', '8888.00', '18888.00', '2');
INSERT INTO `querythewarehouse` VALUES ('2', '�µ�ȫϵ', 'fangxiangpan.png', '������', '�µ���', '1', 'ά�޲�', 'FXP_AD', 'ת��', '88.00', '188.00', '2');
INSERT INTO `querythewarehouse` VALUES ('3', '��ʱ��', 'houshijing.png', '���Ӿ�', '��ʱ����', '25', 'ά�޲�', 'HSJ_BS', '����', '800.00', '1388.00', '2');
INSERT INTO `querythewarehouse` VALUES ('4', '����B5', 'luntaiwaiquan.png', '��̥��Ȧ', '������', '3', 'ά�޲�', 'LTWQ_BJ', 'װ��Ȧ', '888.00', '1999.00', '1');
INSERT INTO `querythewarehouse` VALUES ('5', '�������', 'gangquan.png', '��Ȧ', '������', '4', 'ά�޲�', 'LTGQ_DZ', '����̥', '1000.00', '3000.00', '1');
INSERT INTO `querythewarehouse` VALUES ('6', '����K3', 'fangxiangpanqiya.png', '������', '������', '1', 'ά�޲�', 'FXP_QY', 'ת��', '65.00', '138.00', '1');
INSERT INTO `querythewarehouse` VALUES ('7', '��ʱ��', 'houshijing.png', '���Ӿ�', '��ʱ��', '1111', 'ά�޲�', 'HSJ_BS', '����', '800.00', '1388.00', '1');
INSERT INTO `querythewarehouse` VALUES ('8', '����B5', 'luntaiwaiquan.png', '����̥', '������', '3', 'ά�޲�', 'LTWQ_BJ', 'װ��Ȧ', '888.00', '1999.00', '1');
INSERT INTO `querythewarehouse` VALUES ('9', '�������', 'gangquan.png', '��Ȧ', '������', '4', 'ά�޲�', 'LTGQ_DZ', '����̥', '1000.00', '3000.00', '1');
INSERT INTO `querythewarehouse` VALUES ('10', '����3ϵ', 'fadongji.png', '������', '������', '10', 'ά�޲�', 'FDJ_BWM', '��������', '8888.00', '18888.00', '1');
INSERT INTO `querythewarehouse` VALUES ('11', '1', 'Penguins.jpg', '1', '1', '0', '1', '1', '1', '1.00', '1.00', '2');
INSERT INTO `querythewarehouse` VALUES ('12', '����', 'Koala.jpg', '����', '������', '5', 'ά��', 'BENCHI_YX', '��©��', '1000.00', '10000.00', '1');
INSERT INTO `querythewarehouse` VALUES ('13', 'ħ�����', 'Tulips.jpg', 'ħ�����', 'ħ�����', '0', 'ħ�����', 'ħ�����', 'ħ�����', '1111.00', '1111.00', '1');

-- ----------------------------
-- Table structure for recruit
-- ----------------------------
DROP TABLE IF EXISTS `recruit`;
CREATE TABLE `recruit` (
  `reId` int(20) NOT NULL AUTO_INCREMENT,
  `post_id` int(20) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `sum` int(20) DEFAULT NULL,
  `b_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`reId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recruit
-- ----------------------------
INSERT INTO `recruit` VALUES ('1', '1', '2019-04-10 00:00:00', '2019-04-12 00:00:00', '5', '1');
INSERT INTO `recruit` VALUES ('2', '1', '2019-01-12 00:00:00', '2019-05-12 00:00:00', '4', '1');
INSERT INTO `recruit` VALUES ('3', '1', '2012-04-10 00:00:00', '2012-04-11 00:00:00', '3', '1');
INSERT INTO `recruit` VALUES ('4', '1', '2019-04-17 00:00:00', '2019-04-17 00:00:00', '1', '1');
INSERT INTO `recruit` VALUES ('5', '5', '2019-04-17 00:00:00', '2019-05-17 00:00:00', '10', '5');

-- ----------------------------
-- Table structure for register
-- ----------------------------
DROP TABLE IF EXISTS `register`;
CREATE TABLE `register` (
  `r_id` int(10) NOT NULL AUTO_INCREMENT,
  `r_name` varchar(20) NOT NULL,
  `r_pwd` varchar(20) NOT NULL,
  `r_qq` varchar(20) DEFAULT NULL,
  `r_phone` varchar(20) NOT NULL,
  PRIMARY KEY (`r_id`),
  UNIQUE KEY `r_id` (`r_id`),
  UNIQUE KEY `UQ_register_r_phone` (`r_phone`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of register
-- ----------------------------
INSERT INTO `register` VALUES ('1', 'admain', '123456', null, '13595594303');

-- ----------------------------
-- Table structure for smallservicetypes
-- ----------------------------
DROP TABLE IF EXISTS `smallservicetypes`;
CREATE TABLE `smallservicetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sst_name` varchar(50) NOT NULL,
  `lst_id` int(11) NOT NULL,
  `sst_price` decimal(10,2) NOT NULL,
  `sst_remarks` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of smallservicetypes
-- ----------------------------
INSERT INTO `smallservicetypes` VALUES ('3', 'ϴ��', '3', '20.00', '������շ�');
INSERT INTO `smallservicetypes` VALUES ('4', '�׹�', '3', '50.00', '�������շ�');
INSERT INTO `smallservicetypes` VALUES ('5', '����β��', '5', '300.00', '�Ƚ�˧');

-- ----------------------------
-- Table structure for sta_staffss
-- ----------------------------
DROP TABLE IF EXISTS `sta_staffss`;
CREATE TABLE `sta_staffss` (
  `S_id` int(11) NOT NULL AUTO_INCREMENT,
  `S_name` varchar(255) DEFAULT NULL,
  `S_sex` varchar(255) DEFAULT NULL,
  `S_birthday` varchar(255) DEFAULT NULL,
  `S_phone` varchar(255) DEFAULT NULL,
  `S_logname` varchar(255) DEFAULT NULL,
  `S_pwdss` varchar(255) DEFAULT NULL,
  `S_entrytime` varchar(255) DEFAULT NULL,
  `S_postss` int(11) DEFAULT NULL,
  `S_present` varchar(255) DEFAULT NULL,
  `S_natio` varchar(255) DEFAULT NULL,
  `S_place` varchar(255) DEFAULT NULL,
  `S_blood` varchar(255) DEFAULT NULL,
  `S_idcate` varchar(255) DEFAULT NULL,
  `S_marital` varchar(255) DEFAULT NULL,
  `S_politics` varchar(255) DEFAULT NULL,
  `S_maxeducation` varchar(255) DEFAULT NULL,
  `S_maxdegree` varchar(255) DEFAULT NULL,
  `S_Email` varchar(255) DEFAULT NULL,
  `S_emIP` varchar(255) DEFAULT NULL,
  `S_Englist` varchar(255) DEFAULT NULL,
  `S_computer` varchar(255) DEFAULT NULL,
  `S_img` varchar(255) DEFAULT NULL,
  `s_usable` int(11) DEFAULT '1',
  PRIMARY KEY (`S_id`),
  KEY `F_keys` (`S_postss`),
  CONSTRAINT `F_keys` FOREIGN KEY (`S_postss`) REFERENCES `postinfo` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sta_staffss
-- ----------------------------
INSERT INTO `sta_staffss` VALUES ('1', '����', '��', '1999-12-28 ', '12345678911', '��¼��', '����', '2018-02-03', '1', '����', '����', '����', 'b��', '520203199211141234', 'δ��', 'Ⱥ��', '����', '��ʿ', '123@qq.com', '123456789', '4��', '3��', 'null', '1');
INSERT INTO `sta_staffss` VALUES ('2', '����', '��', '2019-02-05', '12345678911', '��¼��', '����', '2019-04-01 ', '2', '����', '����', '����', 'b��', '520203199211141234 ', 'δ��', 'Ⱥ��', '����', '��ʿ', '123@qq.com', '123456789', '4��', '3��', 'a', '1');
INSERT INTO `sta_staffss` VALUES ('3', '����', 'Ů', '2019-03-05', '12345678911', '��¼��', '����', '2019-04-01 ', '3', '����', '����', '����', 'b��', '520203199211141234 ', 'δ��', 'Ⱥ��', '����', '��ʿ', '123@qq.com', '123456789', '4��', '3��', 'a', '1');
INSERT INTO `sta_staffss` VALUES ('4', '����', 'Ů', '2019-04-09 ', '12345678911', '��¼��', '����', '2019-04-01 ', '5', '����', '����', '����', 'b��', '520203199211141234 ', 'δ��', 'Ⱥ��', '����', '��ʿ', '123@qq.com', '123456789', '4��', '3��', null, '1');
INSERT INTO `sta_staffss` VALUES ('5', 'ǰ��', 'Ů', '2019-04-09 ', '12345678911', '��¼��', '����', '2019-04-01 ', '6', '����', '����', '����', 'b��', '520203199211141234 ', 'δ��', 'Ⱥ��', '����', '��ʿ', '123@qq.com', '123456789', '4��', '3��', null, '1');
INSERT INTO `sta_staffss` VALUES ('6', '쳼�', 'Ů', '2019-04-09 ', '12345678911', '��¼��', '����', '2019-04-01 ', '6', '����', '����', '����', 'b��', '520203199211141234 ', 'δ��', 'Ⱥ��', '����', '��ʿ', '123@qq.com', '123456789', '4��', '3��', null, '1');
INSERT INTO `sta_staffss` VALUES ('7', '����', 'Ů', '2019-04-09 ', '12345678911', '��¼��', '����', '2019-04-01 ', '7', '����', '����', '����', 'b��', '520203199211141234 ', 'δ��', 'Ⱥ��', '����', '��ʿ', '123@qq.com', '123456789', '4��', '3��', null, '1');
INSERT INTO `sta_staffss` VALUES ('8', '�ϼ�', 'Ů', '2019-04-09 ', '12345678911', '��¼��', '����', '2019-04-01 ', '8', '����', '����', '����', 'b��', '520203199211141234 ', 'δ��', 'Ⱥ��', '����', '��ʿ', '123@qq.com', '123456789', '4��', '3��', null, '1');
INSERT INTO `sta_staffss` VALUES ('9', '������ ', 'Ů', '2019-04-09 ', '12345678911', '��¼��', '����', '2019-04-01 ', '9', '����', '����', '����', 'b��', '520203199211141234 ', 'δ��', 'Ⱥ��', '����', '��ʿ', '123@qq.com', '123456789', '4��', '3��', null, '1');
INSERT INTO `sta_staffss` VALUES ('10', '���� ', 'Ů', '2019-04-09 ', '12345678911', '��¼��', '����', '2019-04-01 ', '6', '����', '����', '����', 'b��', '520203199211141234 ', 'δ��', 'Ⱥ��', '����', '��ʿ', '123@qq.com', '123456789', '4��', '3��', null, '1');
INSERT INTO `sta_staffss` VALUES ('11', '���� ', 'Ů', '2019-04-09 ', '12345678911', '��¼��', '����', '2019-04-01 ', '2', '����', '����', '����', 'b��', '520203199211141234 ', 'δ��', 'Ⱥ��', '����', '��ʿ', '123@qq.com', '123456789', '4��', '3��', null, '1');
INSERT INTO `sta_staffss` VALUES ('12', '����', '��', '2019-04-11', '123456789', 'haha123456', 'e10adc3949ba59abbe56e057f20f883e', '2016-04-19', '4', '����', '����', '�й�', 'A��', '520203177711272811', 'δ��', '��Ա', '����', '˶ʿ', '123456@qq.com', '12345678911', '3��', '2��', 'a', '1');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `us_id` int(10) NOT NULL AUTO_INCREMENT,
  `us_name` varchar(20) NOT NULL,
  `us_sex` varchar(20) NOT NULL,
  `us_idcate` varchar(20) NOT NULL,
  `us_years` datetime DEFAULT NULL,
  `us_phone` varchar(11) DEFAULT NULL,
  `us_present` varchar(100) DEFAULT NULL,
  `us_Email` varchar(100) NOT NULL,
  PRIMARY KEY (`us_id`),
  UNIQUE KEY `us_id` (`us_id`),
  UNIQUE KEY `UQ_userinfo_us_phone` (`us_phone`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', '����', '��', '22523484801988464160', '1999-04-15 17:43:04', '13546486435', '����', '136@qq.com');
INSERT INTO `userinfo` VALUES ('2', '�ڰɰ�', 'Ů', '22523484801996091800', '1988-04-15 17:43:49', '14785236998', '����', '225@qq.com');

-- ----------------------------
-- Table structure for usermessage
-- ----------------------------
DROP TABLE IF EXISTS `usermessage`;
CREATE TABLE `usermessage` (
  `userId` int(20) NOT NULL AUTO_INCREMENT,
  `msgId` int(20) NOT NULL,
  `userface` varchar(50) DEFAULT NULL,
  `userName` varchar(50) NOT NULL,
  `userAsk` varchar(200) NOT NULL,
  `askTime` datetime NOT NULL,
  PRIMARY KEY (`userId`),
  KEY `FK_usermessage_ID_msgId` (`msgId`),
  CONSTRAINT `FK_usermessage_ID_msgId` FOREIGN KEY (`msgId`) REFERENCES `message` (`msgId`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usermessage
-- ----------------------------
