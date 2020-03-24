/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80018
Source Host           : localhost:3306
Source Database       : bookstore

Target Server Type    : MYSQL
Target Server Version : 80018
File Encoding         : 65001

Date: 2020-03-24 10:21:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookname` varchar(30) NOT NULL,
  `pub` varchar(30) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `date` datetime NOT NULL,
  `count` int(11) NOT NULL,
  `kind` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', '霸道总裁爱上我', '总裁出版社', '58', '2020-03-23 20:01:27', '20', '言情类');
INSERT INTO `book` VALUES ('2', '霸道总裁迷上我', '总裁出版社', '58', '2020-03-23 06:01:27', '10', '言情类');
INSERT INTO `book` VALUES ('5', '西游记', '西游出版社', '66', '2020-02-02 06:00:00', '40', '文学类');
INSERT INTO `book` VALUES ('6', '三国演义', '三国出版社', '68', '2019-12-31 16:00:00', '45', '文学类');
INSERT INTO `book` VALUES ('7', '红楼梦', '红楼出版社', '58', '2020-01-01 06:00:00', '23', '言情类');
INSERT INTO `book` VALUES ('8', '水浒传', '水壶出版社', '76', '2024-08-03 06:00:00', '50', '文学类');
INSERT INTO `book` VALUES ('9', '人生', '神秘出版社', '66', '2020-02-22 16:00:00', '50', '文学类');
INSERT INTO `book` VALUES ('10', '猫生', '神秘出版社', '38', '2020-02-01 16:00:00', '10', '文学类');
INSERT INTO `book` VALUES ('11', '狗生', '神秘出版社', '33', '2020-02-01 16:00:00', '20', '文学类');
INSERT INTO `book` VALUES ('12', '蛋生', '神秘出版社', '45', '2020-02-01 16:00:00', '32', '文学类');
INSERT INTO `book` VALUES ('13', '鸟生', '神秘出版社', '45', '2020-02-01 16:00:00', '32', '文学类');
INSERT INTO `book` VALUES ('14', '龙生', '神秘出版社', '45', '2020-02-02 06:00:00', '32', '文学类');
INSERT INTO `book` VALUES ('15', '鸡生', '神秘出版社', '50', '2020-02-01 16:00:00', '12', '文学类');
INSERT INTO `book` VALUES ('16', '鸭生', '神秘出版社', '50', '2020-02-01 16:00:00', '12', '文学类');
INSERT INTO `book` VALUES ('17', '花生', '神秘出版社', '50', '2020-02-01 16:00:00', '12', '文学类');
INSERT INTO `book` VALUES ('18', '强生', '神秘出版社', '50', '2020-02-01 16:00:00', '12', '文学类');
INSERT INTO `book` VALUES ('19', '医生', '神秘出版社', '50', '2020-02-01 16:00:00', '12', '文学类');
INSERT INTO `book` VALUES ('20', '鹅生', '神秘出版社', '50', '2020-02-01 16:00:00', '12', '文学类');
INSERT INTO `book` VALUES ('21', '猪生', '神秘出版社', '50', '2020-02-01 16:00:00', '12', '文学类');
INSERT INTO `book` VALUES ('22', '余生', '神秘出版社', '50', '2020-02-01 16:00:00', '12', '文学类');
INSERT INTO `book` VALUES ('23', '狮生', '神秘出版社', '50', '2020-02-01 16:00:00', '12', '文学类');
INSERT INTO `book` VALUES ('24', '豹生', '神秘出版社', '50', '2020-02-01 16:00:00', '12', '文学类');
INSERT INTO `book` VALUES ('25', '狒生', '神秘出版社', '50', '2020-02-01 16:00:00', '12', '文学类');
INSERT INTO `book` VALUES ('26', '鹿生', '神秘出版社', '50', '2020-02-01 16:00:00', '12', '文学类');
INSERT INTO `book` VALUES ('27', '象生', '神秘出版社', '50', '2020-02-01 16:00:00', '12', '文学类');
INSERT INTO `book` VALUES ('28', '马生', '神秘出版社', '50', '2020-02-01 16:00:00', '12', '文学类');
INSERT INTO `book` VALUES ('29', '牛生', '神秘出版社', '50', '2020-02-01 16:00:00', '12', '文学类');
INSERT INTO `book` VALUES ('30', '羊生', '神秘出版社', '50', '2020-02-01 16:00:00', '12', '文学类');
INSERT INTO `book` VALUES ('31', '学生', '神秘出版社', '50', '2020-02-01 16:00:00', '12', '文学类');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `sex` char(5) DEFAULT NULL,
  `perm` varchar(20) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'kk', '123123', '13531174771', '2319680237@qq.com', 'm', 'A-C-U-R-D', 'super-administrator');
INSERT INTO `user` VALUES ('2', 'zz', '123456', '13531174771', '2319680237@qq.com', 'f', 'C-R-U', 'adminstrator');
INSERT INTO `user` VALUES ('3', 'jj', '123456', '13531174771', '2319680237@qq.com', 'm', 'R', 'guest');
INSERT INTO `user` VALUES ('4', 'aa', '123456', '13531174771', '2319680237@qq.com', 'm', 'R', 'guest');
INSERT INTO `user` VALUES ('5', 'bb', '123456', '13531174771', '2319680237@qq.com', 'f', 'R', 'guest');
INSERT INTO `user` VALUES ('7', 'dd', '123456', '13531174771', '2319680237@qq.com', 'm', 'R', 'guest');
INSERT INTO `user` VALUES ('8', 'ee', '123456', '13531174771', '2319680237@qq.com', 'm', 'R', 'guest');
INSERT INTO `user` VALUES ('9', 'ff', '123456', '13531174771', '2319680237@qq.com', 'f', 'R', 'guest');
INSERT INTO `user` VALUES ('10', 'gg', '123456', '13531174771', '2319680237@qq.com', 'm', 'R', 'guest');
INSERT INTO `user` VALUES ('12', 'ii', '123456', '13531174771', '2319680237@qq.com', 'f', 'R', 'guest');
INSERT INTO `user` VALUES ('14', 'mm', '123456', '13531174771', '2319680237@qq.com', 'm', 'R', 'guest');
INSERT INTO `user` VALUES ('15', 'nn', '123456', '13531174771', '2319680237@qq.com', 'm', 'R', 'guest');
INSERT INTO `user` VALUES ('16', 'oo', '123456', '13531174771', '2319680237@qq.com', 'f', 'R', 'guest');
INSERT INTO `user` VALUES ('17', 'pp', '123456', '13531174771', '2319680237@qq.com', 'f', 'R', 'guest');
INSERT INTO `user` VALUES ('26', 'rr', '123456', '13531174771', '13531174771@qq.com', 'm', 'R', 'guest');
