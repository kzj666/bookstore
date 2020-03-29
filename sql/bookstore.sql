/*
Navicat MySQL Data Transfer

Source Server         : 阿里云数据库
Source Server Version : 50729
Source Host           : localhost:3306
Source Database       : bookstore

Target Server Type    : MYSQL
Target Server Version : 50729
File Encoding         : 65001

Date: 2020-03-29 18:09:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'int文章的唯一ID',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `title` varchar(100) NOT NULL COMMENT '标题',
  `content` longtext NOT NULL COMMENT '文章的内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', 'kk', '我爱你', '## 走在漆黑的夜里，没有说再见，怕你听到我呜咽的声音，没有回头，怕你看见我滑落的泪滴，漆黑的夜里我听见心碎的声音。对着天空许下愿望：我愿牵着你的手慢慢变老！你的照片，我会把它放在我身上最热的那个地方，要让你感受到我想你的心不曾停止过！\r\n\r\n------------\r\n\r\n\r\n### 爱上你一生无悔。你曾经笑着对我说，当爱一个人爱到骨头里时，那是爱的极致，当时我也笑了，其实我对你的爱遍布到我全身的每一个细胞，是我所能爱到的临界点，你是否有感受到呢？爱上你一生无悔。你曾经笑着对我说，当爱一个人爱到骨头里时，那是爱的极致，当时我也笑了，其实我对你的爱遍布到我全身的每一个细胞，是我所能爱到的临界点，你是否有感受到呢？\r\n\r\n------------\r\n\r\n\r\n#### 我写不出多么优美的文字来表达我对你爱，但是在我心里一直在念着你。你说，只要彼此的心通，就是灵犀。我还是喜欢站在风里，但是，不再迷失。在我们友谊的旅途上，有时你看不到我在你身旁，不是我把你遗忘，更不是我选择走在你前面，而是我们的友谊一直在燃烧，天长地久！\r\n\r\n------------\r\n\r\n\r\n##### 我愿意是那春天的小鸟，在树的枝头快乐地歌唱。我愿意是那夏日的浪花，在海的怀抱里顽皮地跳跃。只要我爱的你似清风常伴我的左右。爱加爱等于非常的爱，爱减爱等于爱的起点，爱乘爱等于无限的爱，爱除爱等于爱的唯一。亲爱的，无论你的爱是加减乘除，你都是我的最爱！\r\n\r\n![帅气](/upload/3月/pg-2d0dc5a727b347ffa5e53bfd121f793e \"帅气\")');
INSERT INTO `article` VALUES ('5', 'kzj', '我爱你', '	走在漆黑的夜里，没有说再见，怕你听到我呜咽的声音，没有回头，怕你看见我滑落的泪滴，漆黑的夜里我听见心碎的声音。对着天空许下愿望：我愿牵着你的手慢慢变老！你的照片，我会把它放在我身上最热的那个地方，要让你感受到我想你的心不曾停止过！爱上你一生无悔。你曾经笑着对我说，当爱一个人爱到骨头里时，那是爱的极致，当时我也笑了，其实我对你的爱遍布到我全身的每一个细胞，是我所能爱到的临界点，你是否有感受到呢？我写不出多么优美的文字来表达我对你爱，但是在我心里一直在念着你。你说，只要彼此的心通，就是灵犀。我还是喜欢站在风里，但是，不再迷失。在我们友谊的旅途上，有时你看不到我在你身旁，不是我把你遗忘，更不是我选择走在你前面，而是我们的友谊一直在燃烧，天长地久！我愿意是那春天的小鸟，在树的枝头快乐地歌唱。我愿意是那夏日的浪花，在海的怀抱里顽皮地跳跃。只要我爱的你似清风常伴我的左右。爱加爱等于非常的爱，爱减爱等于爱的起点，爱乘爱等于无限的爱，爱除爱等于爱的唯一。亲爱的，无论你的爱是加减乘除，你都是我的最爱！');
INSERT INTO `article` VALUES ('6', 'kzj', 'ss', ' aaaaaaaaaaaaaaaaaaaa');
INSERT INTO `article` VALUES ('9', 'kk', 'fsdacasd', 'fadsvvfasvrsafvcasdcad');
INSERT INTO `article` VALUES ('10', 'kk', 'vsadvaw', '## csadcasvevrae\r\n# vasdafv');
INSERT INTO `article` VALUES ('12', 'kk', 'aaa', 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA');
INSERT INTO `article` VALUES ('13', 'kk', '我爱你', 'asvdddddddda\r\n![](/upload/3月/pg-6c5dcae87a334eb0be3529353fd90893jpg)');
INSERT INTO `article` VALUES ('14', 'kk', 'vaf', 'vasva\r\n![](/upload/3月/pg-70d7a7fa93d9433bae0c6179d892d6df.jpg)');
INSERT INTO `article` VALUES ('15', 'kk', 'afsds', '##### avfvegdbev\r\n![](/upload/3月/pg-b9f81be328c4470ca7bcb2dc73fa4d76.jpg)');
INSERT INTO `article` VALUES ('16', 'kk', 'avfefafvfdg', 'vadgsvef dgvefgdbvdgav\r\n![](/upload/3月/pg-3f0c26d0752046c4b44abe83faf1b9e5.jpg)');
INSERT INTO `article` VALUES ('18', 'kk', '', '![](/upload/3月/pg-e2e1df56a1274f62b92e38393a3593f1.jpg)');

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
INSERT INTO `user` VALUES ('6', 'cc', '123456', '13531174771', '13531174771@qq.com', 'm', 'R', 'guest');
INSERT INTO `user` VALUES ('7', 'dd', '123456', '13531174771', '2319680237@qq.com', 'f', 'R', 'guest');
INSERT INTO `user` VALUES ('8', 'ee', '123456', '13531174771', '2319680237@qq.com', 'm', 'R', 'guest');
INSERT INTO `user` VALUES ('9', 'ff', '123456', '13531174771', '2319680237@qq.com', 'f', 'R', 'guest');
INSERT INTO `user` VALUES ('10', 'gg', '123456', '13531174771', '2319680237@qq.com', 'm', 'R', 'guest');
INSERT INTO `user` VALUES ('11', 'ii', '123456', '13531174771', '2319680237@qq.com', 'f', 'R', 'guest');
INSERT INTO `user` VALUES ('12', 'mm', '123456', '13531174771', '2319680237@qq.com', 'm', 'R', 'guest');
INSERT INTO `user` VALUES ('13', 'nn', '123456', '13531174771', '2319680237@qq.com', 'm', 'R', 'guest');
INSERT INTO `user` VALUES ('14', 'oo', '123456', '13531174771', '2319680237@qq.com', 'f', 'R', 'guest');
