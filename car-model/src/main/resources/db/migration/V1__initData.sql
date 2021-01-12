
-- ----------------------------
-- Table structure for UserInfo
-- ----------------------------

DROP TABLE IF EXISTS `UserInfo`;
-- 创建一个表，指定了4个属性：id、年龄、身高、体重。最后指定了id是唯一不能重复的键值
CREATE TABLE IF NOT EXISTS `UserInfo` (  `id` varchar(20) NOT NULL,  `age` int DEFAULT NULL,  `height` int DEFAULT NULL,  `weight` int DEFAULT NULL,  PRIMARY KEY (`id`) );


-- ----------------------------
-- Records of UserInfo
-- ----------------------------

-- 插入数据，分别是 姓名（id）、年龄、身高体、重
INSERT INTO `UserInfo` VALUES ('world', '18', '123','321');
INSERT INTO `UserInfo` VALUES ('Jack', '38', '432', '333');
