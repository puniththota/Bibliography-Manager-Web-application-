/*
Navicat MySQL Data Transfer

Source Server         : MySql
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : ssm

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2019-05-01 19:03:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for library
-- ----------------------------
DROP TABLE IF EXISTS `library`;
CREATE TABLE `library` (
  `libraryId` int(11) NOT NULL AUTO_INCREMENT,
  `libraryName` varchar(50) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`libraryId`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of library
-- ----------------------------
INSERT INTO `library` VALUES ('2', 'software', '2', null);
INSERT INTO `library` VALUES ('11', 'fafafafafadgsdg', '1', null);
INSERT INTO `library` VALUES ('12', 'gdsgsdgds', '1', null);
INSERT INTO `library` VALUES ('13', 'dsafsaf', '1', null);
INSERT INTO `library` VALUES ('14', 'dasf', '1', null);
INSERT INTO `library` VALUES ('15', 'dsafadgd', '1', null);
INSERT INTO `library` VALUES ('16', 'dasfkdlkad', '1', null);
INSERT INTO `library` VALUES ('17', 'fdagdfad', '1', null);
INSERT INTO `library` VALUES ('18', 'czvcxvc', '1', null);
INSERT INTO `library` VALUES ('19', 'computer', '1', null);
INSERT INTO `library` VALUES ('20', 'fafdaf', '1', null);
INSERT INTO `library` VALUES ('21', 'fa', '1', null);
INSERT INTO `library` VALUES ('22', 'vdf', '1', null);

-- ----------------------------
-- Table structure for reference
-- ----------------------------
DROP TABLE IF EXISTS `reference`;
CREATE TABLE `reference` (
  `referenceId` int(11) NOT NULL AUTO_INCREMENT,
  `libraryId` int(11) NOT NULL,
  `time` date DEFAULT NULL,
  `enterType` varchar(30) DEFAULT NULL,
  `author` varchar(30) DEFAULT NULL,
  `bookTitle` varchar(30) DEFAULT NULL,
  `editor` varchar(30) DEFAULT NULL,
  `journal` varchar(30) DEFAULT NULL,
  `publisher` varchar(30) DEFAULT NULL,
  `year` varchar(30) DEFAULT NULL,
  `volume` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`referenceId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of reference
-- ----------------------------
INSERT INTO `reference` VALUES ('1', '1', null, 'book', 'mylibrary1', 'efaf', null, null, null, '2134', null);
INSERT INTO `reference` VALUES ('2', '2', null, 'english', 'mylibrary2', 'fasfasf', null, null, null, '432', null);
INSERT INTO `reference` VALUES ('3', '1', null, 'book', 'mylibrary3', 'fdafdafa', null, null, null, '325', null);

-- ----------------------------
-- Table structure for sharedlibrary
-- ----------------------------
DROP TABLE IF EXISTS `sharedlibrary`;
CREATE TABLE `sharedlibrary` (
  `libraryId` int(11) NOT NULL,
  `SuserId` int(11) DEFAULT NULL,
  `libraryName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`libraryId`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of sharedlibrary
-- ----------------------------
INSERT INTO `sharedlibrary` VALUES ('12', '2', 'gdsgsdgds');

-- ----------------------------
-- Table structure for trash
-- ----------------------------
DROP TABLE IF EXISTS `trash`;
CREATE TABLE `trash` (
  `trashId` int(11) NOT NULL AUTO_INCREMENT,
  `libraryName` varchar(50) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `libraryId` int(11) DEFAULT NULL,
  PRIMARY KEY (`trashId`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of trash
-- ----------------------------
INSERT INTO `trash` VALUES ('59', 'fadfdg', '1', null);
INSERT INTO `trash` VALUES ('60', 'dadaf', '1', null);
INSERT INTO `trash` VALUES ('61', null, '1', null);
INSERT INTO `trash` VALUES ('62', null, '1', null);
INSERT INTO `trash` VALUES ('63', null, '1', null);
INSERT INTO `trash` VALUES ('64', null, '1', null);
INSERT INTO `trash` VALUES ('65', null, '1', null);
INSERT INTO `trash` VALUES ('66', null, '1', null);
INSERT INTO `trash` VALUES ('67', null, '1', null);
INSERT INTO `trash` VALUES ('68', 'Math', '1', '1');
INSERT INTO `trash` VALUES ('69', 'dsafsa', '1', '3');
INSERT INTO `trash` VALUES ('70', 'dsafsa', '1', '4');
INSERT INTO `trash` VALUES ('71', 'dsafsaf', '1', '5');
INSERT INTO `trash` VALUES ('72', 'ydfhfdhhah', '1', '6');
INSERT INTO `trash` VALUES ('73', 'Delete Library', '1', '7');
INSERT INTO `trash` VALUES ('74', 'fhfgsgsdsa', '1', '8');
INSERT INTO `trash` VALUES ('75', 'fhfgsgsfs', '1', '9');
INSERT INTO `trash` VALUES ('76', 'fagdafadad', '1', '10');

-- ----------------------------
-- Table structure for undefined
-- ----------------------------
DROP TABLE IF EXISTS `undefined`;
CREATE TABLE `undefined` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` date DEFAULT NULL,
  `enterType` varchar(30) DEFAULT NULL,
  `author` varchar(30) DEFAULT NULL,
  `bookTitle` varchar(30) DEFAULT NULL,
  `editor` varchar(30) DEFAULT NULL,
  `journal` varchar(30) DEFAULT NULL,
  `publisher` varchar(30) DEFAULT NULL,
  `year` varchar(30) DEFAULT NULL,
  `volume` varchar(30) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of undefined
-- ----------------------------
INSERT INTO `undefined` VALUES ('37', null, null, null, 'fa', null, null, null, null, null, '1');
INSERT INTO `undefined` VALUES ('38', null, null, null, 'fdfafda', null, null, null, null, null, '1');

-- ----------------------------
-- Table structure for userl
-- ----------------------------
DROP TABLE IF EXISTS `userl`;
CREATE TABLE `userl` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(30) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `fullName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of userl
-- ----------------------------
INSERT INTO `userl` VALUES ('1', '13085068629@163.com', 'Dj940506', 'faff');
INSERT INTO `userl` VALUES ('2', '351714291@qq.com', 'DJ940506', 'Deng Jie');
INSERT INTO `userl` VALUES ('3', 'a351714291@gmail.com', 'DJ940506', null);
INSERT INTO `userl` VALUES ('4', '123456789@163.com', 'DJ940506', 'faff');
