/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : hshop2

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2021-01-03 13:54:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for shop_address
-- ----------------------------
DROP TABLE IF EXISTS `shop_address`;
CREATE TABLE `shop_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(20) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL COMMENT '地址',
  `city_id` int(11) NOT NULL DEFAULT '0' COMMENT '市',
  `country_id` int(11) NOT NULL DEFAULT '0' COMMENT '县乡',
  `province_id` int(11) DEFAULT '0' COMMENT '省',
  `default` varchar(20) DEFAULT NULL COMMENT '1=>不默认，2=>默认',
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='用户收货地址';

-- ----------------------------
-- Records of shop_address
-- ----------------------------
INSERT INTO `shop_address` VALUES ('1', '59', '陈', '12', '陈', '36', '37', '1', '2');
INSERT INTO `shop_address` VALUES ('2', '62', '835', '13168888835', '835', '36', '37', '1', '2');
INSERT INTO `shop_address` VALUES ('3', '66', '55', '13355555555', '55', '36', '37', '1', '2');
INSERT INTO `shop_address` VALUES ('4', '69', '66', '13366666666', '66', '36', '37', '1', '2');
INSERT INTO `shop_address` VALUES ('5', '67', '44', '13344444444', '43', '36', '37', '1', '2');
INSERT INTO `shop_address` VALUES ('6', '78', '66', '13366666666', '66', '36', '37', '1', '2');
INSERT INTO `shop_address` VALUES ('7', '80', '88', '13388888888', '88', '36', '37', '1', '2');
INSERT INTO `shop_address` VALUES ('8', '83', '1111', '1111', '1111', '0', '0', '0', '2');
INSERT INTO `shop_address` VALUES ('9', '77', '33', '33', '33', '36', '37', '1', '2');
INSERT INTO `shop_address` VALUES ('10', '84', '陈生', '13168888836', '石沙路', '289', '0', '19', '2');
INSERT INTO `shop_address` VALUES ('11', '85', '陈', '123', '销', '36', '38', '1', '2');
INSERT INTO `shop_address` VALUES ('12', '86', '陈', '123', '乙', '36', '37', '1', '2');
INSERT INTO `shop_address` VALUES ('13', '87', '陈', '123', '帐', '36', '37', '1', '2');
INSERT INTO `shop_address` VALUES ('14', '89', '陈', '12', '帐', '36', '37', '1', '2');
INSERT INTO `shop_address` VALUES ('15', '90', '陈', '12', '购', '36', '37', '1', '2');
INSERT INTO `shop_address` VALUES ('16', '92', '陈', '12', '帐', '36', '37', '1', '2');
INSERT INTO `shop_address` VALUES ('17', '96', '222', '13322222222', '22', '36', '37', '1', '2');
INSERT INTO `shop_address` VALUES ('18', '97', '33', '13333333333', '33', '36', '37', '1', '2');
INSERT INTO `shop_address` VALUES ('19', '93', '我', '23', '我', '36', '38', '1', '2');
INSERT INTO `shop_address` VALUES ('20', '99', '陈', '132', '中', '36', '37', '1', '2');
INSERT INTO `shop_address` VALUES ('21', '95', '11', '133111111111', '11', '36', '37', '1', '1');
INSERT INTO `shop_address` VALUES ('22', '95', '11', '133111111111', '11', '36', '37', '1', '2');
INSERT INTO `shop_address` VALUES ('23', '100', '于', '13570393608', '兔兔', '36', '37', '1', '2');
INSERT INTO `shop_address` VALUES ('24', '101', '44', '13344444444', '44', '36', '37', '1', '2');
INSERT INTO `shop_address` VALUES ('25', '103', '收', '123', '图', '36', '37', '1', '2');
INSERT INTO `shop_address` VALUES ('26', '105', '收', '12', '图', '36', '37', '1', '2');
INSERT INTO `shop_address` VALUES ('27', '108', '33', '13433333333', '33', '36', '37', '1', '2');
INSERT INTO `shop_address` VALUES ('28', '110', '44', '13444444444', '44', '36', '37', '1', '2');
INSERT INTO `shop_address` VALUES ('29', '111', '55', '13455555555', '55', '36', '37', '1', '2');
INSERT INTO `shop_address` VALUES ('30', '117', '不是', '12', '合格', '36', '37', '1', '2');
INSERT INTO `shop_address` VALUES ('31', '119', '发给', '00', '看', '36', '37', '1', '2');
INSERT INTO `shop_address` VALUES ('32', '113', '77', '77', '77', '36', '37', '1', '2');
INSERT INTO `shop_address` VALUES ('33', '121', '不错', '11', '尺寸', '36', '37', '1', '2');
INSERT INTO `shop_address` VALUES ('34', '107', '那你', '11', '离开', '36', '37', '1', '2');
INSERT INTO `shop_address` VALUES ('35', '122', '陈', '12', '奖', '36', '37', '1', '2');
INSERT INTO `shop_address` VALUES ('36', '123', '了', '23', '时', '36', '37', '1', '2');
INSERT INTO `shop_address` VALUES ('37', '120', 'vv', '11111111111111111111', '1', '36', '37', '1', '2');

-- ----------------------------
-- Table structure for shop_admin
-- ----------------------------
DROP TABLE IF EXISTS `shop_admin`;
CREATE TABLE `shop_admin` (
  `admin_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) DEFAULT NULL COMMENT '用户名',
  `passwd` varchar(128) DEFAULT NULL,
  `true_name` varchar(20) DEFAULT NULL COMMENT '真名',
  `telephone` varchar(40) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `login_count` mediumint(8) NOT NULL DEFAULT '0' COMMENT '登录次数',
  `last_login_ip` varchar(40) DEFAULT NULL COMMENT '最后登录ip',
  `last_ip_region` varchar(40) DEFAULT NULL,
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0',
  `last_login_time` int(10) NOT NULL DEFAULT '0' COMMENT '最后登录',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `group_id` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='后台管理员';

-- ----------------------------
-- Records of shop_admin
-- ----------------------------
INSERT INTO `shop_admin` VALUES ('1', 'admin', 'MDAwMDAwMDAwML+6d2Z/n8bZhbF+34Gqr2c', '', '', 'admin@admin.com', '153', '59.42.191.41', '', '1505270345', '1587174973', '1608695352', '1', '2');

-- ----------------------------
-- Table structure for shop_area
-- ----------------------------
DROP TABLE IF EXISTS `shop_area`;
CREATE TABLE `shop_area` (
  `area_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引ID',
  `area_name` varchar(50) NOT NULL COMMENT '地区名称',
  `area_parent_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '地区父ID',
  `area_sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `area_deep` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '地区深度，从1开始',
  PRIMARY KEY (`area_id`),
  KEY `area_parent_id` (`area_parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45056 DEFAULT CHARSET=utf8 COMMENT='地区表';

-- ----------------------------
-- Records of shop_area
-- ----------------------------
INSERT INTO `shop_area` VALUES ('1', '北京', '0', '0', '1');
INSERT INTO `shop_area` VALUES ('2', '天津', '0', '0', '1');
INSERT INTO `shop_area` VALUES ('3', '河北省', '0', '0', '1');
INSERT INTO `shop_area` VALUES ('4', '山西省', '0', '0', '1');
INSERT INTO `shop_area` VALUES ('5', '内蒙古自治区', '0', '0', '1');
INSERT INTO `shop_area` VALUES ('6', '辽宁省', '0', '0', '1');
INSERT INTO `shop_area` VALUES ('7', '吉林省', '0', '0', '1');
INSERT INTO `shop_area` VALUES ('8', '黑龙江省', '0', '0', '1');
INSERT INTO `shop_area` VALUES ('9', '上海', '0', '0', '1');
INSERT INTO `shop_area` VALUES ('10', '江苏省', '0', '0', '1');
INSERT INTO `shop_area` VALUES ('11', '浙江省', '0', '0', '1');
INSERT INTO `shop_area` VALUES ('12', '安徽省', '0', '0', '1');
INSERT INTO `shop_area` VALUES ('13', '福建省', '0', '0', '1');
INSERT INTO `shop_area` VALUES ('14', '江西省', '0', '0', '1');
INSERT INTO `shop_area` VALUES ('15', '山东省', '0', '0', '1');
INSERT INTO `shop_area` VALUES ('16', '河南省', '0', '0', '1');
INSERT INTO `shop_area` VALUES ('17', '湖北省', '0', '0', '1');
INSERT INTO `shop_area` VALUES ('18', '湖南省', '0', '0', '1');
INSERT INTO `shop_area` VALUES ('19', '广东省', '0', '0', '1');
INSERT INTO `shop_area` VALUES ('20', '广西壮族自治区', '0', '0', '1');
INSERT INTO `shop_area` VALUES ('21', '海南省', '0', '0', '1');
INSERT INTO `shop_area` VALUES ('22', '重庆', '0', '0', '1');
INSERT INTO `shop_area` VALUES ('23', '四川省', '0', '0', '1');
INSERT INTO `shop_area` VALUES ('24', '贵州省', '0', '0', '1');
INSERT INTO `shop_area` VALUES ('25', '云南省', '0', '0', '1');
INSERT INTO `shop_area` VALUES ('26', '西藏自治区', '0', '0', '1');
INSERT INTO `shop_area` VALUES ('27', '陕西省', '0', '0', '1');
INSERT INTO `shop_area` VALUES ('28', '甘肃省', '0', '0', '1');
INSERT INTO `shop_area` VALUES ('29', '青海省', '0', '0', '1');
INSERT INTO `shop_area` VALUES ('30', '宁夏回族自治区', '0', '0', '1');
INSERT INTO `shop_area` VALUES ('31', '新疆维吾尔自治区', '0', '0', '1');
INSERT INTO `shop_area` VALUES ('32', '台湾省', '0', '0', '1');
INSERT INTO `shop_area` VALUES ('33', '香港特别行政区', '0', '0', '1');
INSERT INTO `shop_area` VALUES ('34', '澳门特别行政区', '0', '0', '1');
INSERT INTO `shop_area` VALUES ('35', '海外', '0', '0', '1');
INSERT INTO `shop_area` VALUES ('36', '北京市', '1', '0', '2');
INSERT INTO `shop_area` VALUES ('37', '东城区', '36', '0', '3');
INSERT INTO `shop_area` VALUES ('38', '西城区', '36', '0', '3');
INSERT INTO `shop_area` VALUES ('39', '上海市', '9', '0', '2');
INSERT INTO `shop_area` VALUES ('40', '天津市', '2', '0', '2');
INSERT INTO `shop_area` VALUES ('41', '朝阳区', '36', '0', '3');
INSERT INTO `shop_area` VALUES ('42', '丰台区', '36', '0', '3');
INSERT INTO `shop_area` VALUES ('43', '石景山区', '36', '0', '3');
INSERT INTO `shop_area` VALUES ('44', '海淀区', '36', '0', '3');
INSERT INTO `shop_area` VALUES ('45', '门头沟区', '36', '0', '3');
INSERT INTO `shop_area` VALUES ('46', '房山区', '36', '0', '3');
INSERT INTO `shop_area` VALUES ('47', '通州区', '36', '0', '3');
INSERT INTO `shop_area` VALUES ('48', '顺义区', '36', '0', '3');
INSERT INTO `shop_area` VALUES ('49', '昌平区', '36', '0', '3');
INSERT INTO `shop_area` VALUES ('50', '大兴区', '36', '0', '3');
INSERT INTO `shop_area` VALUES ('51', '怀柔区', '36', '0', '3');
INSERT INTO `shop_area` VALUES ('52', '平谷区', '36', '0', '3');
INSERT INTO `shop_area` VALUES ('53', '密云县', '36', '0', '3');
INSERT INTO `shop_area` VALUES ('54', '延庆县', '36', '0', '3');
INSERT INTO `shop_area` VALUES ('55', '和平区', '40', '0', '3');
INSERT INTO `shop_area` VALUES ('56', '河东区', '40', '0', '3');
INSERT INTO `shop_area` VALUES ('57', '河西区', '40', '0', '3');
INSERT INTO `shop_area` VALUES ('58', '南开区', '40', '0', '3');
INSERT INTO `shop_area` VALUES ('59', '河北区', '40', '0', '3');
INSERT INTO `shop_area` VALUES ('60', '红桥区', '40', '0', '3');
INSERT INTO `shop_area` VALUES ('61', '塘沽区', '40', '0', '3');
INSERT INTO `shop_area` VALUES ('62', '重庆市', '22', '0', '2');
INSERT INTO `shop_area` VALUES ('64', '东丽区', '40', '0', '3');
INSERT INTO `shop_area` VALUES ('65', '西青区', '40', '0', '3');
INSERT INTO `shop_area` VALUES ('66', '津南区', '40', '0', '3');
INSERT INTO `shop_area` VALUES ('67', '北辰区', '40', '0', '3');
INSERT INTO `shop_area` VALUES ('68', '武清区', '40', '0', '3');
INSERT INTO `shop_area` VALUES ('69', '宝坻区', '40', '0', '3');
INSERT INTO `shop_area` VALUES ('70', '宁河县', '40', '0', '3');
INSERT INTO `shop_area` VALUES ('71', '静海县', '40', '0', '3');
INSERT INTO `shop_area` VALUES ('72', '蓟县', '40', '0', '3');
INSERT INTO `shop_area` VALUES ('73', '石家庄市', '3', '0', '2');
INSERT INTO `shop_area` VALUES ('74', '唐山市', '3', '0', '2');
INSERT INTO `shop_area` VALUES ('75', '秦皇岛市', '3', '0', '2');
INSERT INTO `shop_area` VALUES ('76', '邯郸市', '3', '0', '2');
INSERT INTO `shop_area` VALUES ('77', '邢台市', '3', '0', '2');
INSERT INTO `shop_area` VALUES ('78', '保定市', '3', '0', '2');
INSERT INTO `shop_area` VALUES ('79', '张家口市', '3', '0', '2');
INSERT INTO `shop_area` VALUES ('80', '承德市', '3', '0', '2');
INSERT INTO `shop_area` VALUES ('81', '衡水市', '3', '0', '2');
INSERT INTO `shop_area` VALUES ('82', '廊坊市', '3', '0', '2');
INSERT INTO `shop_area` VALUES ('83', '沧州市', '3', '0', '2');
INSERT INTO `shop_area` VALUES ('84', '太原市', '4', '0', '2');
INSERT INTO `shop_area` VALUES ('85', '大同市', '4', '0', '2');
INSERT INTO `shop_area` VALUES ('86', '阳泉市', '4', '0', '2');
INSERT INTO `shop_area` VALUES ('87', '长治市', '4', '0', '2');
INSERT INTO `shop_area` VALUES ('88', '晋城市', '4', '0', '2');
INSERT INTO `shop_area` VALUES ('89', '朔州市', '4', '0', '2');
INSERT INTO `shop_area` VALUES ('90', '晋中市', '4', '0', '2');
INSERT INTO `shop_area` VALUES ('91', '运城市', '4', '0', '2');
INSERT INTO `shop_area` VALUES ('92', '忻州市', '4', '0', '2');
INSERT INTO `shop_area` VALUES ('93', '临汾市', '4', '0', '2');
INSERT INTO `shop_area` VALUES ('94', '吕梁市', '4', '0', '2');
INSERT INTO `shop_area` VALUES ('95', '呼和浩特市', '5', '0', '2');
INSERT INTO `shop_area` VALUES ('96', '包头市', '5', '0', '2');
INSERT INTO `shop_area` VALUES ('97', '乌海市', '5', '0', '2');
INSERT INTO `shop_area` VALUES ('98', '赤峰市', '5', '0', '2');
INSERT INTO `shop_area` VALUES ('99', '通辽市', '5', '0', '2');
INSERT INTO `shop_area` VALUES ('100', '鄂尔多斯市', '5', '0', '2');
INSERT INTO `shop_area` VALUES ('101', '呼伦贝尔市', '5', '0', '2');
INSERT INTO `shop_area` VALUES ('102', '巴彦淖尔市', '5', '0', '2');
INSERT INTO `shop_area` VALUES ('103', '乌兰察布市', '5', '0', '2');
INSERT INTO `shop_area` VALUES ('104', '兴安盟', '5', '0', '2');
INSERT INTO `shop_area` VALUES ('105', '锡林郭勒盟', '5', '0', '2');
INSERT INTO `shop_area` VALUES ('106', '阿拉善盟', '5', '0', '2');
INSERT INTO `shop_area` VALUES ('107', '沈阳市', '6', '0', '2');
INSERT INTO `shop_area` VALUES ('108', '大连市', '6', '0', '2');
INSERT INTO `shop_area` VALUES ('109', '鞍山市', '6', '0', '2');
INSERT INTO `shop_area` VALUES ('110', '抚顺市', '6', '0', '2');
INSERT INTO `shop_area` VALUES ('111', '本溪市', '6', '0', '2');
INSERT INTO `shop_area` VALUES ('112', '丹东市', '6', '0', '2');
INSERT INTO `shop_area` VALUES ('113', '锦州市', '6', '0', '2');
INSERT INTO `shop_area` VALUES ('114', '营口市', '6', '0', '2');
INSERT INTO `shop_area` VALUES ('115', '阜新市', '6', '0', '2');
INSERT INTO `shop_area` VALUES ('116', '辽阳市', '6', '0', '2');
INSERT INTO `shop_area` VALUES ('117', '盘锦市', '6', '0', '2');
INSERT INTO `shop_area` VALUES ('118', '铁岭市', '6', '0', '2');
INSERT INTO `shop_area` VALUES ('119', '朝阳市', '6', '0', '2');
INSERT INTO `shop_area` VALUES ('120', '葫芦岛市', '6', '0', '2');
INSERT INTO `shop_area` VALUES ('121', '长春市', '7', '0', '2');
INSERT INTO `shop_area` VALUES ('122', '吉林市', '7', '0', '2');
INSERT INTO `shop_area` VALUES ('123', '四平市', '7', '0', '2');
INSERT INTO `shop_area` VALUES ('124', '辽源市', '7', '0', '2');
INSERT INTO `shop_area` VALUES ('125', '通化市', '7', '0', '2');
INSERT INTO `shop_area` VALUES ('126', '白山市', '7', '0', '2');
INSERT INTO `shop_area` VALUES ('127', '松原市', '7', '0', '2');
INSERT INTO `shop_area` VALUES ('128', '白城市', '7', '0', '2');
INSERT INTO `shop_area` VALUES ('129', '延边朝鲜族自治州', '7', '0', '2');
INSERT INTO `shop_area` VALUES ('130', '哈尔滨市', '8', '0', '2');
INSERT INTO `shop_area` VALUES ('131', '齐齐哈尔市', '8', '0', '2');
INSERT INTO `shop_area` VALUES ('132', '鸡西市', '8', '0', '2');
INSERT INTO `shop_area` VALUES ('133', '鹤岗市', '8', '0', '2');
INSERT INTO `shop_area` VALUES ('134', '双鸭山市', '8', '0', '2');
INSERT INTO `shop_area` VALUES ('135', '大庆市', '8', '0', '2');
INSERT INTO `shop_area` VALUES ('136', '伊春市', '8', '0', '2');
INSERT INTO `shop_area` VALUES ('137', '佳木斯市', '8', '0', '2');
INSERT INTO `shop_area` VALUES ('138', '七台河市', '8', '0', '2');
INSERT INTO `shop_area` VALUES ('139', '牡丹江市', '8', '0', '2');
INSERT INTO `shop_area` VALUES ('140', '黑河市', '8', '0', '2');
INSERT INTO `shop_area` VALUES ('141', '绥化市', '8', '0', '2');
INSERT INTO `shop_area` VALUES ('142', '大兴安岭地区', '8', '0', '2');
INSERT INTO `shop_area` VALUES ('143', '黄浦区', '39', '0', '3');
INSERT INTO `shop_area` VALUES ('144', '卢湾区', '39', '0', '3');
INSERT INTO `shop_area` VALUES ('145', '徐汇区', '39', '0', '3');
INSERT INTO `shop_area` VALUES ('146', '长宁区', '39', '0', '3');
INSERT INTO `shop_area` VALUES ('147', '静安区', '39', '0', '3');
INSERT INTO `shop_area` VALUES ('148', '普陀区', '39', '0', '3');
INSERT INTO `shop_area` VALUES ('149', '闸北区', '39', '0', '3');
INSERT INTO `shop_area` VALUES ('150', '虹口区', '39', '0', '3');
INSERT INTO `shop_area` VALUES ('151', '杨浦区', '39', '0', '3');
INSERT INTO `shop_area` VALUES ('152', '闵行区', '39', '0', '3');
INSERT INTO `shop_area` VALUES ('153', '宝山区', '39', '0', '3');
INSERT INTO `shop_area` VALUES ('154', '嘉定区', '39', '0', '3');
INSERT INTO `shop_area` VALUES ('155', '浦东新区', '39', '0', '3');
INSERT INTO `shop_area` VALUES ('156', '金山区', '39', '0', '3');
INSERT INTO `shop_area` VALUES ('157', '松江区', '39', '0', '3');
INSERT INTO `shop_area` VALUES ('158', '青浦区', '39', '0', '3');
INSERT INTO `shop_area` VALUES ('159', '南汇区', '39', '0', '3');
INSERT INTO `shop_area` VALUES ('160', '奉贤区', '39', '0', '3');
INSERT INTO `shop_area` VALUES ('161', '崇明县', '39', '0', '3');
INSERT INTO `shop_area` VALUES ('162', '南京市', '10', '0', '2');
INSERT INTO `shop_area` VALUES ('163', '无锡市', '10', '0', '2');
INSERT INTO `shop_area` VALUES ('164', '徐州市', '10', '0', '2');
INSERT INTO `shop_area` VALUES ('165', '常州市', '10', '0', '2');
INSERT INTO `shop_area` VALUES ('166', '苏州市', '10', '0', '2');
INSERT INTO `shop_area` VALUES ('167', '南通市', '10', '0', '2');
INSERT INTO `shop_area` VALUES ('168', '连云港市', '10', '0', '2');
INSERT INTO `shop_area` VALUES ('169', '淮安市', '10', '0', '2');
INSERT INTO `shop_area` VALUES ('170', '盐城市', '10', '0', '2');
INSERT INTO `shop_area` VALUES ('171', '扬州市', '10', '0', '2');
INSERT INTO `shop_area` VALUES ('172', '镇江市', '10', '0', '2');
INSERT INTO `shop_area` VALUES ('173', '泰州市', '10', '0', '2');
INSERT INTO `shop_area` VALUES ('174', '宿迁市', '10', '0', '2');
INSERT INTO `shop_area` VALUES ('175', '杭州市', '11', '0', '2');
INSERT INTO `shop_area` VALUES ('176', '宁波市', '11', '0', '2');
INSERT INTO `shop_area` VALUES ('177', '温州市', '11', '0', '2');
INSERT INTO `shop_area` VALUES ('178', '嘉兴市', '11', '0', '2');
INSERT INTO `shop_area` VALUES ('179', '湖州市', '11', '0', '2');
INSERT INTO `shop_area` VALUES ('180', '绍兴市', '11', '0', '2');
INSERT INTO `shop_area` VALUES ('181', '舟山市', '11', '0', '2');
INSERT INTO `shop_area` VALUES ('182', '衢州市', '11', '0', '2');
INSERT INTO `shop_area` VALUES ('183', '金华市', '11', '0', '2');
INSERT INTO `shop_area` VALUES ('184', '台州市', '11', '0', '2');
INSERT INTO `shop_area` VALUES ('185', '丽水市', '11', '0', '2');
INSERT INTO `shop_area` VALUES ('186', '合肥市', '12', '0', '2');
INSERT INTO `shop_area` VALUES ('187', '芜湖市', '12', '0', '2');
INSERT INTO `shop_area` VALUES ('188', '蚌埠市', '12', '0', '2');
INSERT INTO `shop_area` VALUES ('189', '淮南市', '12', '0', '2');
INSERT INTO `shop_area` VALUES ('190', '马鞍山市', '12', '0', '2');
INSERT INTO `shop_area` VALUES ('191', '淮北市', '12', '0', '2');
INSERT INTO `shop_area` VALUES ('192', '铜陵市', '12', '0', '2');
INSERT INTO `shop_area` VALUES ('193', '安庆市', '12', '0', '2');
INSERT INTO `shop_area` VALUES ('194', '黄山市', '12', '0', '2');
INSERT INTO `shop_area` VALUES ('195', '滁州市', '12', '0', '2');
INSERT INTO `shop_area` VALUES ('196', '阜阳市', '12', '0', '2');
INSERT INTO `shop_area` VALUES ('197', '宿州市', '12', '0', '2');
INSERT INTO `shop_area` VALUES ('198', '巢湖市', '12', '0', '2');
INSERT INTO `shop_area` VALUES ('199', '六安市', '12', '0', '2');
INSERT INTO `shop_area` VALUES ('200', '亳州市', '12', '0', '2');
INSERT INTO `shop_area` VALUES ('201', '池州市', '12', '0', '2');
INSERT INTO `shop_area` VALUES ('202', '宣城市', '12', '0', '2');
INSERT INTO `shop_area` VALUES ('203', '福州市', '13', '0', '2');
INSERT INTO `shop_area` VALUES ('204', '厦门市', '13', '0', '2');
INSERT INTO `shop_area` VALUES ('205', '莆田市', '13', '0', '2');
INSERT INTO `shop_area` VALUES ('206', '三明市', '13', '0', '2');
INSERT INTO `shop_area` VALUES ('207', '泉州市', '13', '0', '2');
INSERT INTO `shop_area` VALUES ('208', '漳州市', '13', '0', '2');
INSERT INTO `shop_area` VALUES ('209', '南平市', '13', '0', '2');
INSERT INTO `shop_area` VALUES ('210', '龙岩市', '13', '0', '2');
INSERT INTO `shop_area` VALUES ('211', '宁德市', '13', '0', '2');
INSERT INTO `shop_area` VALUES ('212', '南昌市', '14', '0', '2');
INSERT INTO `shop_area` VALUES ('213', '景德镇市', '14', '0', '2');
INSERT INTO `shop_area` VALUES ('214', '萍乡市', '14', '0', '2');
INSERT INTO `shop_area` VALUES ('215', '九江市', '14', '0', '2');
INSERT INTO `shop_area` VALUES ('216', '新余市', '14', '0', '2');
INSERT INTO `shop_area` VALUES ('217', '鹰潭市', '14', '0', '2');
INSERT INTO `shop_area` VALUES ('218', '赣州市', '14', '0', '2');
INSERT INTO `shop_area` VALUES ('219', '吉安市', '14', '0', '2');
INSERT INTO `shop_area` VALUES ('220', '宜春市', '14', '0', '2');
INSERT INTO `shop_area` VALUES ('221', '抚州市', '14', '0', '2');
INSERT INTO `shop_area` VALUES ('222', '上饶市', '14', '0', '2');
INSERT INTO `shop_area` VALUES ('223', '济南市', '15', '0', '2');
INSERT INTO `shop_area` VALUES ('224', '青岛市', '15', '0', '2');
INSERT INTO `shop_area` VALUES ('225', '淄博市', '15', '0', '2');
INSERT INTO `shop_area` VALUES ('226', '枣庄市', '15', '0', '2');
INSERT INTO `shop_area` VALUES ('227', '东营市', '15', '0', '2');
INSERT INTO `shop_area` VALUES ('228', '烟台市', '15', '0', '2');
INSERT INTO `shop_area` VALUES ('229', '潍坊市', '15', '0', '2');
INSERT INTO `shop_area` VALUES ('230', '济宁市', '15', '0', '2');
INSERT INTO `shop_area` VALUES ('231', '泰安市', '15', '0', '2');
INSERT INTO `shop_area` VALUES ('232', '威海市', '15', '0', '2');
INSERT INTO `shop_area` VALUES ('233', '日照市', '15', '0', '2');
INSERT INTO `shop_area` VALUES ('234', '莱芜市', '15', '0', '2');
INSERT INTO `shop_area` VALUES ('235', '临沂市', '15', '0', '2');
INSERT INTO `shop_area` VALUES ('236', '德州市', '15', '0', '2');
INSERT INTO `shop_area` VALUES ('237', '聊城市', '15', '0', '2');
INSERT INTO `shop_area` VALUES ('238', '滨州市', '15', '0', '2');
INSERT INTO `shop_area` VALUES ('239', '菏泽市', '15', '0', '2');
INSERT INTO `shop_area` VALUES ('240', '郑州市', '16', '0', '2');
INSERT INTO `shop_area` VALUES ('241', '开封市', '16', '0', '2');
INSERT INTO `shop_area` VALUES ('242', '洛阳市', '16', '0', '2');
INSERT INTO `shop_area` VALUES ('243', '平顶山市', '16', '0', '2');
INSERT INTO `shop_area` VALUES ('244', '安阳市', '16', '0', '2');
INSERT INTO `shop_area` VALUES ('245', '鹤壁市', '16', '0', '2');
INSERT INTO `shop_area` VALUES ('246', '新乡市', '16', '0', '2');
INSERT INTO `shop_area` VALUES ('247', '焦作市', '16', '0', '2');
INSERT INTO `shop_area` VALUES ('248', '濮阳市', '16', '0', '2');
INSERT INTO `shop_area` VALUES ('249', '许昌市', '16', '0', '2');
INSERT INTO `shop_area` VALUES ('250', '漯河市', '16', '0', '2');
INSERT INTO `shop_area` VALUES ('251', '三门峡市', '16', '0', '2');
INSERT INTO `shop_area` VALUES ('252', '南阳市', '16', '0', '2');
INSERT INTO `shop_area` VALUES ('253', '商丘市', '16', '0', '2');
INSERT INTO `shop_area` VALUES ('254', '信阳市', '16', '0', '2');
INSERT INTO `shop_area` VALUES ('255', '周口市', '16', '0', '2');
INSERT INTO `shop_area` VALUES ('256', '驻马店市', '16', '0', '2');
INSERT INTO `shop_area` VALUES ('257', '济源市', '16', '0', '2');
INSERT INTO `shop_area` VALUES ('258', '武汉市', '17', '0', '2');
INSERT INTO `shop_area` VALUES ('259', '黄石市', '17', '0', '2');
INSERT INTO `shop_area` VALUES ('260', '十堰市', '17', '0', '2');
INSERT INTO `shop_area` VALUES ('261', '宜昌市', '17', '0', '2');
INSERT INTO `shop_area` VALUES ('262', '襄樊市', '17', '0', '2');
INSERT INTO `shop_area` VALUES ('263', '鄂州市', '17', '0', '2');
INSERT INTO `shop_area` VALUES ('264', '荆门市', '17', '0', '2');
INSERT INTO `shop_area` VALUES ('265', '孝感市', '17', '0', '2');
INSERT INTO `shop_area` VALUES ('266', '荆州市', '17', '0', '2');
INSERT INTO `shop_area` VALUES ('267', '黄冈市', '17', '0', '2');
INSERT INTO `shop_area` VALUES ('268', '咸宁市', '17', '0', '2');
INSERT INTO `shop_area` VALUES ('269', '随州市', '17', '0', '2');
INSERT INTO `shop_area` VALUES ('270', '恩施土家族苗族自治州', '17', '0', '2');
INSERT INTO `shop_area` VALUES ('271', '仙桃市', '17', '0', '2');
INSERT INTO `shop_area` VALUES ('272', '潜江市', '17', '0', '2');
INSERT INTO `shop_area` VALUES ('273', '天门市', '17', '0', '2');
INSERT INTO `shop_area` VALUES ('274', '神农架林区', '17', '0', '2');
INSERT INTO `shop_area` VALUES ('275', '长沙市', '18', '0', '2');
INSERT INTO `shop_area` VALUES ('276', '株洲市', '18', '0', '2');
INSERT INTO `shop_area` VALUES ('277', '湘潭市', '18', '0', '2');
INSERT INTO `shop_area` VALUES ('278', '衡阳市', '18', '0', '2');
INSERT INTO `shop_area` VALUES ('279', '邵阳市', '18', '0', '2');
INSERT INTO `shop_area` VALUES ('280', '岳阳市', '18', '0', '2');
INSERT INTO `shop_area` VALUES ('281', '常德市', '18', '0', '2');
INSERT INTO `shop_area` VALUES ('282', '张家界市', '18', '0', '2');
INSERT INTO `shop_area` VALUES ('283', '益阳市', '18', '0', '2');
INSERT INTO `shop_area` VALUES ('284', '郴州市', '18', '0', '2');
INSERT INTO `shop_area` VALUES ('285', '永州市', '18', '0', '2');
INSERT INTO `shop_area` VALUES ('286', '怀化市', '18', '0', '2');
INSERT INTO `shop_area` VALUES ('287', '娄底市', '18', '0', '2');
INSERT INTO `shop_area` VALUES ('288', '湘西土家族苗族自治州', '18', '0', '2');
INSERT INTO `shop_area` VALUES ('289', '广州市', '19', '0', '2');
INSERT INTO `shop_area` VALUES ('290', '韶关市', '19', '0', '2');
INSERT INTO `shop_area` VALUES ('291', '深圳市', '19', '0', '2');
INSERT INTO `shop_area` VALUES ('292', '珠海市', '19', '0', '2');
INSERT INTO `shop_area` VALUES ('293', '汕头市', '19', '0', '2');
INSERT INTO `shop_area` VALUES ('294', '佛山市', '19', '0', '2');
INSERT INTO `shop_area` VALUES ('295', '江门市', '19', '0', '2');
INSERT INTO `shop_area` VALUES ('296', '湛江市', '19', '0', '2');
INSERT INTO `shop_area` VALUES ('297', '茂名市', '19', '0', '2');
INSERT INTO `shop_area` VALUES ('298', '肇庆市', '19', '0', '2');
INSERT INTO `shop_area` VALUES ('299', '惠州市', '19', '0', '2');
INSERT INTO `shop_area` VALUES ('300', '梅州市', '19', '0', '2');
INSERT INTO `shop_area` VALUES ('301', '汕尾市', '19', '0', '2');
INSERT INTO `shop_area` VALUES ('302', '河源市', '19', '0', '2');
INSERT INTO `shop_area` VALUES ('303', '阳江市', '19', '0', '2');
INSERT INTO `shop_area` VALUES ('304', '清远市', '19', '0', '2');
INSERT INTO `shop_area` VALUES ('305', '东莞市', '19', '0', '2');
INSERT INTO `shop_area` VALUES ('306', '中山市', '19', '0', '2');
INSERT INTO `shop_area` VALUES ('307', '潮州市', '19', '0', '2');
INSERT INTO `shop_area` VALUES ('308', '揭阳市', '19', '0', '2');
INSERT INTO `shop_area` VALUES ('309', '云浮市', '19', '0', '2');
INSERT INTO `shop_area` VALUES ('310', '南宁市', '20', '0', '2');
INSERT INTO `shop_area` VALUES ('311', '柳州市', '20', '0', '2');
INSERT INTO `shop_area` VALUES ('312', '桂林市', '20', '0', '2');
INSERT INTO `shop_area` VALUES ('313', '梧州市', '20', '0', '2');
INSERT INTO `shop_area` VALUES ('314', '北海市', '20', '0', '2');
INSERT INTO `shop_area` VALUES ('315', '防城港市', '20', '0', '2');
INSERT INTO `shop_area` VALUES ('316', '钦州市', '20', '0', '2');
INSERT INTO `shop_area` VALUES ('317', '贵港市', '20', '0', '2');
INSERT INTO `shop_area` VALUES ('318', '玉林市', '20', '0', '2');
INSERT INTO `shop_area` VALUES ('319', '百色市', '20', '0', '2');
INSERT INTO `shop_area` VALUES ('320', '贺州市', '20', '0', '2');
INSERT INTO `shop_area` VALUES ('321', '河池市', '20', '0', '2');
INSERT INTO `shop_area` VALUES ('322', '来宾市', '20', '0', '2');
INSERT INTO `shop_area` VALUES ('323', '崇左市', '20', '0', '2');
INSERT INTO `shop_area` VALUES ('324', '海口市', '21', '0', '2');
INSERT INTO `shop_area` VALUES ('325', '三亚市', '21', '0', '2');
INSERT INTO `shop_area` VALUES ('326', '五指山市', '21', '0', '2');
INSERT INTO `shop_area` VALUES ('327', '琼海市', '21', '0', '2');
INSERT INTO `shop_area` VALUES ('328', '儋州市', '21', '0', '2');
INSERT INTO `shop_area` VALUES ('329', '文昌市', '21', '0', '2');
INSERT INTO `shop_area` VALUES ('330', '万宁市', '21', '0', '2');
INSERT INTO `shop_area` VALUES ('331', '东方市', '21', '0', '2');
INSERT INTO `shop_area` VALUES ('332', '定安县', '21', '0', '2');
INSERT INTO `shop_area` VALUES ('333', '屯昌县', '21', '0', '2');
INSERT INTO `shop_area` VALUES ('334', '澄迈县', '21', '0', '2');
INSERT INTO `shop_area` VALUES ('335', '临高县', '21', '0', '2');
INSERT INTO `shop_area` VALUES ('336', '白沙黎族自治县', '21', '0', '2');
INSERT INTO `shop_area` VALUES ('337', '昌江黎族自治县', '21', '0', '2');
INSERT INTO `shop_area` VALUES ('338', '乐东黎族自治县', '21', '0', '2');
INSERT INTO `shop_area` VALUES ('339', '陵水黎族自治县', '21', '0', '2');
INSERT INTO `shop_area` VALUES ('340', '保亭黎族苗族自治县', '21', '0', '2');
INSERT INTO `shop_area` VALUES ('341', '琼中黎族苗族自治县', '21', '0', '2');
INSERT INTO `shop_area` VALUES ('342', '西沙群岛', '21', '0', '2');
INSERT INTO `shop_area` VALUES ('343', '南沙群岛', '21', '0', '2');
INSERT INTO `shop_area` VALUES ('344', '中沙群岛的岛礁及其海域', '21', '0', '2');
INSERT INTO `shop_area` VALUES ('345', '万州区', '62', '0', '3');
INSERT INTO `shop_area` VALUES ('346', '涪陵区', '62', '0', '3');
INSERT INTO `shop_area` VALUES ('347', '渝中区', '62', '0', '3');
INSERT INTO `shop_area` VALUES ('348', '大渡口区', '62', '0', '3');
INSERT INTO `shop_area` VALUES ('349', '江北区', '62', '0', '3');
INSERT INTO `shop_area` VALUES ('350', '沙坪坝区', '62', '0', '3');
INSERT INTO `shop_area` VALUES ('351', '九龙坡区', '62', '0', '3');
INSERT INTO `shop_area` VALUES ('352', '南岸区', '62', '0', '3');
INSERT INTO `shop_area` VALUES ('353', '北碚区', '62', '0', '3');
INSERT INTO `shop_area` VALUES ('354', '双桥区', '62', '0', '3');
INSERT INTO `shop_area` VALUES ('355', '万盛区', '62', '0', '3');
INSERT INTO `shop_area` VALUES ('356', '渝北区', '62', '0', '3');
INSERT INTO `shop_area` VALUES ('357', '巴南区', '62', '0', '3');
INSERT INTO `shop_area` VALUES ('358', '黔江区', '62', '0', '3');
INSERT INTO `shop_area` VALUES ('359', '长寿区', '62', '0', '3');
INSERT INTO `shop_area` VALUES ('360', '綦江县', '62', '0', '3');
INSERT INTO `shop_area` VALUES ('361', '潼南县', '62', '0', '3');
INSERT INTO `shop_area` VALUES ('362', '铜梁县', '62', '0', '3');
INSERT INTO `shop_area` VALUES ('363', '大足县', '62', '0', '3');
INSERT INTO `shop_area` VALUES ('364', '荣昌县', '62', '0', '3');
INSERT INTO `shop_area` VALUES ('365', '璧山县', '62', '0', '3');
INSERT INTO `shop_area` VALUES ('366', '梁平县', '62', '0', '3');
INSERT INTO `shop_area` VALUES ('367', '城口县', '62', '0', '3');
INSERT INTO `shop_area` VALUES ('368', '丰都县', '62', '0', '3');
INSERT INTO `shop_area` VALUES ('369', '垫江县', '62', '0', '3');
INSERT INTO `shop_area` VALUES ('370', '武隆县', '62', '0', '3');
INSERT INTO `shop_area` VALUES ('371', '忠县', '62', '0', '3');
INSERT INTO `shop_area` VALUES ('372', '开县', '62', '0', '3');
INSERT INTO `shop_area` VALUES ('373', '云阳县', '62', '0', '3');
INSERT INTO `shop_area` VALUES ('374', '奉节县', '62', '0', '3');
INSERT INTO `shop_area` VALUES ('375', '巫山县', '62', '0', '3');
INSERT INTO `shop_area` VALUES ('376', '巫溪县', '62', '0', '3');
INSERT INTO `shop_area` VALUES ('377', '石柱土家族自治县', '62', '0', '3');
INSERT INTO `shop_area` VALUES ('378', '秀山土家族苗族自治县', '62', '0', '3');
INSERT INTO `shop_area` VALUES ('379', '酉阳土家族苗族自治县', '62', '0', '3');
INSERT INTO `shop_area` VALUES ('380', '彭水苗族土家族自治县', '62', '0', '3');
INSERT INTO `shop_area` VALUES ('381', '江津市', '62', '0', '3');
INSERT INTO `shop_area` VALUES ('382', '合川市', '62', '0', '3');
INSERT INTO `shop_area` VALUES ('383', '永川市', '62', '0', '3');
INSERT INTO `shop_area` VALUES ('384', '南川市', '62', '0', '3');
INSERT INTO `shop_area` VALUES ('385', '成都市', '23', '0', '2');
INSERT INTO `shop_area` VALUES ('386', '自贡市', '23', '0', '2');
INSERT INTO `shop_area` VALUES ('387', '攀枝花市', '23', '0', '2');
INSERT INTO `shop_area` VALUES ('388', '泸州市', '23', '0', '2');
INSERT INTO `shop_area` VALUES ('389', '德阳市', '23', '0', '2');
INSERT INTO `shop_area` VALUES ('390', '绵阳市', '23', '0', '2');
INSERT INTO `shop_area` VALUES ('391', '广元市', '23', '0', '2');
INSERT INTO `shop_area` VALUES ('392', '遂宁市', '23', '0', '2');
INSERT INTO `shop_area` VALUES ('393', '内江市', '23', '0', '2');
INSERT INTO `shop_area` VALUES ('394', '乐山市', '23', '0', '2');
INSERT INTO `shop_area` VALUES ('395', '南充市', '23', '0', '2');
INSERT INTO `shop_area` VALUES ('396', '眉山市', '23', '0', '2');
INSERT INTO `shop_area` VALUES ('397', '宜宾市', '23', '0', '2');
INSERT INTO `shop_area` VALUES ('398', '广安市', '23', '0', '2');
INSERT INTO `shop_area` VALUES ('399', '达州市', '23', '0', '2');
INSERT INTO `shop_area` VALUES ('400', '雅安市', '23', '0', '2');
INSERT INTO `shop_area` VALUES ('401', '巴中市', '23', '0', '2');
INSERT INTO `shop_area` VALUES ('402', '资阳市', '23', '0', '2');
INSERT INTO `shop_area` VALUES ('403', '阿坝藏族羌族自治州', '23', '0', '2');
INSERT INTO `shop_area` VALUES ('404', '甘孜藏族自治州', '23', '0', '2');
INSERT INTO `shop_area` VALUES ('405', '凉山彝族自治州', '23', '0', '2');
INSERT INTO `shop_area` VALUES ('406', '贵阳市', '24', '0', '2');
INSERT INTO `shop_area` VALUES ('407', '六盘水市', '24', '0', '2');
INSERT INTO `shop_area` VALUES ('408', '遵义市', '24', '0', '2');
INSERT INTO `shop_area` VALUES ('409', '安顺市', '24', '0', '2');
INSERT INTO `shop_area` VALUES ('410', '铜仁地区', '24', '0', '2');
INSERT INTO `shop_area` VALUES ('411', '黔西南布依族苗族自治州', '24', '0', '2');
INSERT INTO `shop_area` VALUES ('412', '毕节地区', '24', '0', '2');
INSERT INTO `shop_area` VALUES ('413', '黔东南苗族侗族自治州', '24', '0', '2');
INSERT INTO `shop_area` VALUES ('414', '黔南布依族苗族自治州', '24', '0', '2');
INSERT INTO `shop_area` VALUES ('415', '昆明市', '25', '0', '2');
INSERT INTO `shop_area` VALUES ('416', '曲靖市', '25', '0', '2');
INSERT INTO `shop_area` VALUES ('417', '玉溪市', '25', '0', '2');
INSERT INTO `shop_area` VALUES ('418', '保山市', '25', '0', '2');
INSERT INTO `shop_area` VALUES ('419', '昭通市', '25', '0', '2');
INSERT INTO `shop_area` VALUES ('420', '丽江市', '25', '0', '2');
INSERT INTO `shop_area` VALUES ('421', '思茅市', '25', '0', '2');
INSERT INTO `shop_area` VALUES ('422', '临沧市', '25', '0', '2');
INSERT INTO `shop_area` VALUES ('423', '楚雄彝族自治州', '25', '0', '2');
INSERT INTO `shop_area` VALUES ('424', '红河哈尼族彝族自治州', '25', '0', '2');
INSERT INTO `shop_area` VALUES ('425', '文山壮族苗族自治州', '25', '0', '2');
INSERT INTO `shop_area` VALUES ('426', '西双版纳傣族自治州', '25', '0', '2');
INSERT INTO `shop_area` VALUES ('427', '大理白族自治州', '25', '0', '2');
INSERT INTO `shop_area` VALUES ('428', '德宏傣族景颇族自治州', '25', '0', '2');
INSERT INTO `shop_area` VALUES ('429', '怒江傈僳族自治州', '25', '0', '2');
INSERT INTO `shop_area` VALUES ('430', '迪庆藏族自治州', '25', '0', '2');
INSERT INTO `shop_area` VALUES ('431', '拉萨市', '26', '0', '2');
INSERT INTO `shop_area` VALUES ('432', '昌都地区', '26', '0', '2');
INSERT INTO `shop_area` VALUES ('433', '山南地区', '26', '0', '2');
INSERT INTO `shop_area` VALUES ('434', '日喀则地区', '26', '0', '2');
INSERT INTO `shop_area` VALUES ('435', '那曲地区', '26', '0', '2');
INSERT INTO `shop_area` VALUES ('436', '阿里地区', '26', '0', '2');
INSERT INTO `shop_area` VALUES ('437', '林芝地区', '26', '0', '2');
INSERT INTO `shop_area` VALUES ('438', '西安市', '27', '0', '2');
INSERT INTO `shop_area` VALUES ('439', '铜川市', '27', '0', '2');
INSERT INTO `shop_area` VALUES ('440', '宝鸡市', '27', '0', '2');
INSERT INTO `shop_area` VALUES ('441', '咸阳市', '27', '0', '2');
INSERT INTO `shop_area` VALUES ('442', '渭南市', '27', '0', '2');
INSERT INTO `shop_area` VALUES ('443', '延安市', '27', '0', '2');
INSERT INTO `shop_area` VALUES ('444', '汉中市', '27', '0', '2');
INSERT INTO `shop_area` VALUES ('445', '榆林市', '27', '0', '2');
INSERT INTO `shop_area` VALUES ('446', '安康市', '27', '0', '2');
INSERT INTO `shop_area` VALUES ('447', '商洛市', '27', '0', '2');
INSERT INTO `shop_area` VALUES ('448', '兰州市', '28', '0', '2');
INSERT INTO `shop_area` VALUES ('449', '嘉峪关市', '28', '0', '2');
INSERT INTO `shop_area` VALUES ('450', '金昌市', '28', '0', '2');
INSERT INTO `shop_area` VALUES ('451', '白银市', '28', '0', '2');
INSERT INTO `shop_area` VALUES ('452', '天水市', '28', '0', '2');
INSERT INTO `shop_area` VALUES ('453', '武威市', '28', '0', '2');
INSERT INTO `shop_area` VALUES ('454', '张掖市', '28', '0', '2');
INSERT INTO `shop_area` VALUES ('455', '平凉市', '28', '0', '2');
INSERT INTO `shop_area` VALUES ('456', '酒泉市', '28', '0', '2');
INSERT INTO `shop_area` VALUES ('457', '庆阳市', '28', '0', '2');
INSERT INTO `shop_area` VALUES ('458', '定西市', '28', '0', '2');
INSERT INTO `shop_area` VALUES ('459', '陇南市', '28', '0', '2');
INSERT INTO `shop_area` VALUES ('460', '临夏回族自治州', '28', '0', '2');
INSERT INTO `shop_area` VALUES ('461', '甘南藏族自治州', '28', '0', '2');
INSERT INTO `shop_area` VALUES ('462', '西宁市', '29', '0', '2');
INSERT INTO `shop_area` VALUES ('463', '海东地区', '29', '0', '2');
INSERT INTO `shop_area` VALUES ('464', '海北藏族自治州', '29', '0', '2');
INSERT INTO `shop_area` VALUES ('465', '黄南藏族自治州', '29', '0', '2');
INSERT INTO `shop_area` VALUES ('466', '海南藏族自治州', '29', '0', '2');
INSERT INTO `shop_area` VALUES ('467', '果洛藏族自治州', '29', '0', '2');
INSERT INTO `shop_area` VALUES ('468', '玉树藏族自治州', '29', '0', '2');
INSERT INTO `shop_area` VALUES ('469', '海西蒙古族藏族自治州', '29', '0', '2');
INSERT INTO `shop_area` VALUES ('470', '银川市', '30', '0', '2');
INSERT INTO `shop_area` VALUES ('471', '石嘴山市', '30', '0', '2');
INSERT INTO `shop_area` VALUES ('472', '吴忠市', '30', '0', '2');
INSERT INTO `shop_area` VALUES ('473', '固原市', '30', '0', '2');
INSERT INTO `shop_area` VALUES ('474', '中卫市', '30', '0', '2');
INSERT INTO `shop_area` VALUES ('475', '乌鲁木齐市', '31', '0', '2');
INSERT INTO `shop_area` VALUES ('476', '克拉玛依市', '31', '0', '2');
INSERT INTO `shop_area` VALUES ('477', '吐鲁番地区', '31', '0', '2');
INSERT INTO `shop_area` VALUES ('478', '哈密地区', '31', '0', '2');
INSERT INTO `shop_area` VALUES ('479', '昌吉回族自治州', '31', '0', '2');
INSERT INTO `shop_area` VALUES ('480', '博尔塔拉蒙古自治州', '31', '0', '2');
INSERT INTO `shop_area` VALUES ('481', '巴音郭楞蒙古自治州', '31', '0', '2');
INSERT INTO `shop_area` VALUES ('482', '阿克苏地区', '31', '0', '2');
INSERT INTO `shop_area` VALUES ('483', '克孜勒苏柯尔克孜自治州', '31', '0', '2');
INSERT INTO `shop_area` VALUES ('484', '喀什地区', '31', '0', '2');
INSERT INTO `shop_area` VALUES ('485', '和田地区', '31', '0', '2');
INSERT INTO `shop_area` VALUES ('486', '伊犁哈萨克自治州', '31', '0', '2');
INSERT INTO `shop_area` VALUES ('487', '塔城地区', '31', '0', '2');
INSERT INTO `shop_area` VALUES ('488', '阿勒泰地区', '31', '0', '2');
INSERT INTO `shop_area` VALUES ('489', '石河子市', '31', '0', '2');
INSERT INTO `shop_area` VALUES ('490', '阿拉尔市', '31', '0', '2');
INSERT INTO `shop_area` VALUES ('491', '图木舒克市', '31', '0', '2');
INSERT INTO `shop_area` VALUES ('492', '五家渠市', '31', '0', '2');
INSERT INTO `shop_area` VALUES ('493', '台北市', '32', '0', '2');
INSERT INTO `shop_area` VALUES ('494', '高雄市', '32', '0', '2');
INSERT INTO `shop_area` VALUES ('495', '基隆市', '32', '0', '2');
INSERT INTO `shop_area` VALUES ('496', '台中市', '32', '0', '2');
INSERT INTO `shop_area` VALUES ('497', '台南市', '32', '0', '2');
INSERT INTO `shop_area` VALUES ('498', '新竹市', '32', '0', '2');
INSERT INTO `shop_area` VALUES ('499', '嘉义市', '32', '0', '2');
INSERT INTO `shop_area` VALUES ('500', '台北县', '32', '0', '2');
INSERT INTO `shop_area` VALUES ('501', '宜兰县', '32', '0', '2');
INSERT INTO `shop_area` VALUES ('502', '桃园县', '32', '0', '2');
INSERT INTO `shop_area` VALUES ('503', '新竹县', '32', '0', '2');
INSERT INTO `shop_area` VALUES ('504', '苗栗县', '32', '0', '2');
INSERT INTO `shop_area` VALUES ('505', '台中县', '32', '0', '2');
INSERT INTO `shop_area` VALUES ('506', '彰化县', '32', '0', '2');
INSERT INTO `shop_area` VALUES ('507', '南投县', '32', '0', '2');
INSERT INTO `shop_area` VALUES ('508', '云林县', '32', '0', '2');
INSERT INTO `shop_area` VALUES ('509', '嘉义县', '32', '0', '2');
INSERT INTO `shop_area` VALUES ('510', '台南县', '32', '0', '2');
INSERT INTO `shop_area` VALUES ('511', '高雄县', '32', '0', '2');
INSERT INTO `shop_area` VALUES ('512', '屏东县', '32', '0', '2');
INSERT INTO `shop_area` VALUES ('513', '澎湖县', '32', '0', '2');
INSERT INTO `shop_area` VALUES ('514', '台东县', '32', '0', '2');
INSERT INTO `shop_area` VALUES ('515', '花莲县', '32', '0', '2');
INSERT INTO `shop_area` VALUES ('516', '中西区', '33', '0', '2');
INSERT INTO `shop_area` VALUES ('517', '东区', '33', '0', '2');
INSERT INTO `shop_area` VALUES ('518', '九龙城区', '33', '0', '2');
INSERT INTO `shop_area` VALUES ('519', '观塘区', '33', '0', '2');
INSERT INTO `shop_area` VALUES ('520', '南区', '33', '0', '2');
INSERT INTO `shop_area` VALUES ('521', '深水埗区', '33', '0', '2');
INSERT INTO `shop_area` VALUES ('522', '黄大仙区', '33', '0', '2');
INSERT INTO `shop_area` VALUES ('523', '湾仔区', '33', '0', '2');
INSERT INTO `shop_area` VALUES ('524', '油尖旺区', '33', '0', '2');
INSERT INTO `shop_area` VALUES ('525', '离岛区', '33', '0', '2');
INSERT INTO `shop_area` VALUES ('526', '葵青区', '33', '0', '2');
INSERT INTO `shop_area` VALUES ('527', '北区', '33', '0', '2');
INSERT INTO `shop_area` VALUES ('528', '西贡区', '33', '0', '2');
INSERT INTO `shop_area` VALUES ('529', '沙田区', '33', '0', '2');
INSERT INTO `shop_area` VALUES ('530', '屯门区', '33', '0', '2');
INSERT INTO `shop_area` VALUES ('531', '大埔区', '33', '0', '2');
INSERT INTO `shop_area` VALUES ('532', '荃湾区', '33', '0', '2');
INSERT INTO `shop_area` VALUES ('533', '元朗区', '33', '0', '2');
INSERT INTO `shop_area` VALUES ('534', '澳门特别行政区', '34', '0', '2');
INSERT INTO `shop_area` VALUES ('535', '美国', '45055', '0', '3');
INSERT INTO `shop_area` VALUES ('536', '加拿大', '45055', '0', '3');
INSERT INTO `shop_area` VALUES ('537', '澳大利亚', '45055', '0', '3');
INSERT INTO `shop_area` VALUES ('538', '新西兰', '45055', '0', '3');
INSERT INTO `shop_area` VALUES ('539', '英国', '45055', '0', '3');
INSERT INTO `shop_area` VALUES ('540', '法国', '45055', '0', '3');
INSERT INTO `shop_area` VALUES ('541', '德国', '45055', '0', '3');
INSERT INTO `shop_area` VALUES ('542', '捷克', '45055', '0', '3');
INSERT INTO `shop_area` VALUES ('543', '荷兰', '45055', '0', '3');
INSERT INTO `shop_area` VALUES ('544', '瑞士', '45055', '0', '3');
INSERT INTO `shop_area` VALUES ('545', '希腊', '45055', '0', '3');
INSERT INTO `shop_area` VALUES ('546', '挪威', '45055', '0', '3');
INSERT INTO `shop_area` VALUES ('547', '瑞典', '45055', '0', '3');
INSERT INTO `shop_area` VALUES ('548', '丹麦', '45055', '0', '3');
INSERT INTO `shop_area` VALUES ('549', '芬兰', '45055', '0', '3');
INSERT INTO `shop_area` VALUES ('550', '爱尔兰', '45055', '0', '3');
INSERT INTO `shop_area` VALUES ('551', '奥地利', '45055', '0', '3');
INSERT INTO `shop_area` VALUES ('552', '意大利', '45055', '0', '3');
INSERT INTO `shop_area` VALUES ('553', '乌克兰', '45055', '0', '3');
INSERT INTO `shop_area` VALUES ('554', '俄罗斯', '45055', '0', '3');
INSERT INTO `shop_area` VALUES ('555', '西班牙', '45055', '0', '3');
INSERT INTO `shop_area` VALUES ('556', '韩国', '45055', '0', '3');
INSERT INTO `shop_area` VALUES ('557', '新加坡', '45055', '0', '3');
INSERT INTO `shop_area` VALUES ('558', '马来西亚', '45055', '0', '3');
INSERT INTO `shop_area` VALUES ('559', '印度', '45055', '0', '3');
INSERT INTO `shop_area` VALUES ('560', '泰国', '45055', '0', '3');
INSERT INTO `shop_area` VALUES ('561', '日本', '45055', '0', '3');
INSERT INTO `shop_area` VALUES ('562', '巴西', '45055', '0', '3');
INSERT INTO `shop_area` VALUES ('563', '阿根廷', '45055', '0', '3');
INSERT INTO `shop_area` VALUES ('564', '南非', '45055', '0', '3');
INSERT INTO `shop_area` VALUES ('565', '埃及', '45055', '0', '3');
INSERT INTO `shop_area` VALUES ('566', '其他', '36', '0', '3');
INSERT INTO `shop_area` VALUES ('1126', '井陉县', '73', '0', '3');
INSERT INTO `shop_area` VALUES ('1127', '井陉矿区', '73', '0', '3');
INSERT INTO `shop_area` VALUES ('1128', '元氏县', '73', '0', '3');
INSERT INTO `shop_area` VALUES ('1129', '平山县', '73', '0', '3');
INSERT INTO `shop_area` VALUES ('1130', '新乐市', '73', '0', '3');
INSERT INTO `shop_area` VALUES ('1131', '新华区', '73', '0', '3');
INSERT INTO `shop_area` VALUES ('1132', '无极县', '73', '0', '3');
INSERT INTO `shop_area` VALUES ('1133', '晋州市', '73', '0', '3');
INSERT INTO `shop_area` VALUES ('1134', '栾城县', '73', '0', '3');
INSERT INTO `shop_area` VALUES ('1135', '桥东区', '73', '0', '3');
INSERT INTO `shop_area` VALUES ('1136', '桥西区', '73', '0', '3');
INSERT INTO `shop_area` VALUES ('1137', '正定县', '73', '0', '3');
INSERT INTO `shop_area` VALUES ('1138', '深泽县', '73', '0', '3');
INSERT INTO `shop_area` VALUES ('1139', '灵寿县', '73', '0', '3');
INSERT INTO `shop_area` VALUES ('1140', '藁城市', '73', '0', '3');
INSERT INTO `shop_area` VALUES ('1141', '行唐县', '73', '0', '3');
INSERT INTO `shop_area` VALUES ('1142', '裕华区', '73', '0', '3');
INSERT INTO `shop_area` VALUES ('1143', '赞皇县', '73', '0', '3');
INSERT INTO `shop_area` VALUES ('1144', '赵县', '73', '0', '3');
INSERT INTO `shop_area` VALUES ('1145', '辛集市', '73', '0', '3');
INSERT INTO `shop_area` VALUES ('1146', '长安区', '73', '0', '3');
INSERT INTO `shop_area` VALUES ('1147', '高邑县', '73', '0', '3');
INSERT INTO `shop_area` VALUES ('1148', '鹿泉市', '73', '0', '3');
INSERT INTO `shop_area` VALUES ('1149', '丰南区', '74', '0', '3');
INSERT INTO `shop_area` VALUES ('1150', '丰润区', '74', '0', '3');
INSERT INTO `shop_area` VALUES ('1151', '乐亭县', '74', '0', '3');
INSERT INTO `shop_area` VALUES ('1152', '古冶区', '74', '0', '3');
INSERT INTO `shop_area` VALUES ('1153', '唐海县', '74', '0', '3');
INSERT INTO `shop_area` VALUES ('1154', '开平区', '74', '0', '3');
INSERT INTO `shop_area` VALUES ('1155', '滦南县', '74', '0', '3');
INSERT INTO `shop_area` VALUES ('1156', '滦县', '74', '0', '3');
INSERT INTO `shop_area` VALUES ('1157', '玉田县', '74', '0', '3');
INSERT INTO `shop_area` VALUES ('1158', '路北区', '74', '0', '3');
INSERT INTO `shop_area` VALUES ('1159', '路南区', '74', '0', '3');
INSERT INTO `shop_area` VALUES ('1160', '迁安市', '74', '0', '3');
INSERT INTO `shop_area` VALUES ('1161', '迁西县', '74', '0', '3');
INSERT INTO `shop_area` VALUES ('1162', '遵化市', '74', '0', '3');
INSERT INTO `shop_area` VALUES ('1163', '北戴河区', '75', '0', '3');
INSERT INTO `shop_area` VALUES ('1164', '卢龙县', '75', '0', '3');
INSERT INTO `shop_area` VALUES ('1165', '山海关区', '75', '0', '3');
INSERT INTO `shop_area` VALUES ('1166', '抚宁县', '75', '0', '3');
INSERT INTO `shop_area` VALUES ('1167', '昌黎县', '75', '0', '3');
INSERT INTO `shop_area` VALUES ('1168', '海港区', '75', '0', '3');
INSERT INTO `shop_area` VALUES ('1169', '青龙满族自治县', '75', '0', '3');
INSERT INTO `shop_area` VALUES ('1170', '丛台区', '76', '0', '3');
INSERT INTO `shop_area` VALUES ('1171', '临漳县', '76', '0', '3');
INSERT INTO `shop_area` VALUES ('1172', '复兴区', '76', '0', '3');
INSERT INTO `shop_area` VALUES ('1173', '大名县', '76', '0', '3');
INSERT INTO `shop_area` VALUES ('1174', '峰峰矿区', '76', '0', '3');
INSERT INTO `shop_area` VALUES ('1175', '广平县', '76', '0', '3');
INSERT INTO `shop_area` VALUES ('1176', '成安县', '76', '0', '3');
INSERT INTO `shop_area` VALUES ('1177', '曲周县', '76', '0', '3');
INSERT INTO `shop_area` VALUES ('1178', '武安市', '76', '0', '3');
INSERT INTO `shop_area` VALUES ('1179', '永年县', '76', '0', '3');
INSERT INTO `shop_area` VALUES ('1180', '涉县', '76', '0', '3');
INSERT INTO `shop_area` VALUES ('1181', '磁县', '76', '0', '3');
INSERT INTO `shop_area` VALUES ('1182', '肥乡县', '76', '0', '3');
INSERT INTO `shop_area` VALUES ('1183', '邯山区', '76', '0', '3');
INSERT INTO `shop_area` VALUES ('1184', '邯郸县', '76', '0', '3');
INSERT INTO `shop_area` VALUES ('1185', '邱县', '76', '0', '3');
INSERT INTO `shop_area` VALUES ('1186', '馆陶县', '76', '0', '3');
INSERT INTO `shop_area` VALUES ('1187', '魏县', '76', '0', '3');
INSERT INTO `shop_area` VALUES ('1188', '鸡泽县', '76', '0', '3');
INSERT INTO `shop_area` VALUES ('1189', '临城县', '77', '0', '3');
INSERT INTO `shop_area` VALUES ('1190', '临西县', '77', '0', '3');
INSERT INTO `shop_area` VALUES ('1191', '任县', '77', '0', '3');
INSERT INTO `shop_area` VALUES ('1192', '内丘县', '77', '0', '3');
INSERT INTO `shop_area` VALUES ('1193', '南和县', '77', '0', '3');
INSERT INTO `shop_area` VALUES ('1194', '南宫市', '77', '0', '3');
INSERT INTO `shop_area` VALUES ('1195', '威县', '77', '0', '3');
INSERT INTO `shop_area` VALUES ('1196', '宁晋县', '77', '0', '3');
INSERT INTO `shop_area` VALUES ('1197', '巨鹿县', '77', '0', '3');
INSERT INTO `shop_area` VALUES ('1198', '平乡县', '77', '0', '3');
INSERT INTO `shop_area` VALUES ('1199', '广宗县', '77', '0', '3');
INSERT INTO `shop_area` VALUES ('1200', '新河县', '77', '0', '3');
INSERT INTO `shop_area` VALUES ('1201', '柏乡县', '77', '0', '3');
INSERT INTO `shop_area` VALUES ('1202', '桥东区', '77', '0', '3');
INSERT INTO `shop_area` VALUES ('1203', '桥西区', '77', '0', '3');
INSERT INTO `shop_area` VALUES ('1204', '沙河市', '77', '0', '3');
INSERT INTO `shop_area` VALUES ('1205', '清河县', '77', '0', '3');
INSERT INTO `shop_area` VALUES ('1206', '邢台县', '77', '0', '3');
INSERT INTO `shop_area` VALUES ('1207', '隆尧县', '77', '0', '3');
INSERT INTO `shop_area` VALUES ('1208', '北市区', '78', '0', '3');
INSERT INTO `shop_area` VALUES ('1209', '南市区', '78', '0', '3');
INSERT INTO `shop_area` VALUES ('1210', '博野县', '78', '0', '3');
INSERT INTO `shop_area` VALUES ('1211', '唐县', '78', '0', '3');
INSERT INTO `shop_area` VALUES ('1212', '安国市', '78', '0', '3');
INSERT INTO `shop_area` VALUES ('1213', '安新县', '78', '0', '3');
INSERT INTO `shop_area` VALUES ('1214', '定兴县', '78', '0', '3');
INSERT INTO `shop_area` VALUES ('1215', '定州市', '78', '0', '3');
INSERT INTO `shop_area` VALUES ('1216', '容城县', '78', '0', '3');
INSERT INTO `shop_area` VALUES ('1217', '徐水县', '78', '0', '3');
INSERT INTO `shop_area` VALUES ('1218', '新市区', '78', '0', '3');
INSERT INTO `shop_area` VALUES ('1219', '易县', '78', '0', '3');
INSERT INTO `shop_area` VALUES ('1220', '曲阳县', '78', '0', '3');
INSERT INTO `shop_area` VALUES ('1221', '望都县', '78', '0', '3');
INSERT INTO `shop_area` VALUES ('1222', '涞水县', '78', '0', '3');
INSERT INTO `shop_area` VALUES ('1223', '涞源县', '78', '0', '3');
INSERT INTO `shop_area` VALUES ('1224', '涿州市', '78', '0', '3');
INSERT INTO `shop_area` VALUES ('1225', '清苑县', '78', '0', '3');
INSERT INTO `shop_area` VALUES ('1226', '满城县', '78', '0', '3');
INSERT INTO `shop_area` VALUES ('1227', '蠡县', '78', '0', '3');
INSERT INTO `shop_area` VALUES ('1228', '阜平县', '78', '0', '3');
INSERT INTO `shop_area` VALUES ('1229', '雄县', '78', '0', '3');
INSERT INTO `shop_area` VALUES ('1230', '顺平县', '78', '0', '3');
INSERT INTO `shop_area` VALUES ('1231', '高碑店市', '78', '0', '3');
INSERT INTO `shop_area` VALUES ('1232', '高阳县', '78', '0', '3');
INSERT INTO `shop_area` VALUES ('1233', '万全县', '79', '0', '3');
INSERT INTO `shop_area` VALUES ('1234', '下花园区', '79', '0', '3');
INSERT INTO `shop_area` VALUES ('1235', '宣化区', '79', '0', '3');
INSERT INTO `shop_area` VALUES ('1236', '宣化县', '79', '0', '3');
INSERT INTO `shop_area` VALUES ('1237', '尚义县', '79', '0', '3');
INSERT INTO `shop_area` VALUES ('1238', '崇礼县', '79', '0', '3');
INSERT INTO `shop_area` VALUES ('1239', '康保县', '79', '0', '3');
INSERT INTO `shop_area` VALUES ('1240', '张北县', '79', '0', '3');
INSERT INTO `shop_area` VALUES ('1241', '怀安县', '79', '0', '3');
INSERT INTO `shop_area` VALUES ('1242', '怀来县', '79', '0', '3');
INSERT INTO `shop_area` VALUES ('1243', '桥东区', '79', '0', '3');
INSERT INTO `shop_area` VALUES ('1244', '桥西区', '79', '0', '3');
INSERT INTO `shop_area` VALUES ('1245', '沽源县', '79', '0', '3');
INSERT INTO `shop_area` VALUES ('1246', '涿鹿县', '79', '0', '3');
INSERT INTO `shop_area` VALUES ('1247', '蔚县', '79', '0', '3');
INSERT INTO `shop_area` VALUES ('1248', '赤城县', '79', '0', '3');
INSERT INTO `shop_area` VALUES ('1249', '阳原县', '79', '0', '3');
INSERT INTO `shop_area` VALUES ('1250', '丰宁满族自治县', '80', '0', '3');
INSERT INTO `shop_area` VALUES ('1251', '兴隆县', '80', '0', '3');
INSERT INTO `shop_area` VALUES ('1252', '双桥区', '80', '0', '3');
INSERT INTO `shop_area` VALUES ('1253', '双滦区', '80', '0', '3');
INSERT INTO `shop_area` VALUES ('1254', '围场满族蒙古族自治县', '80', '0', '3');
INSERT INTO `shop_area` VALUES ('1255', '宽城满族自治县', '80', '0', '3');
INSERT INTO `shop_area` VALUES ('1256', '平泉县', '80', '0', '3');
INSERT INTO `shop_area` VALUES ('1257', '承德县', '80', '0', '3');
INSERT INTO `shop_area` VALUES ('1258', '滦平县', '80', '0', '3');
INSERT INTO `shop_area` VALUES ('1259', '隆化县', '80', '0', '3');
INSERT INTO `shop_area` VALUES ('1260', '鹰手营子矿区', '80', '0', '3');
INSERT INTO `shop_area` VALUES ('1261', '冀州市', '81', '0', '3');
INSERT INTO `shop_area` VALUES ('1262', '安平县', '81', '0', '3');
INSERT INTO `shop_area` VALUES ('1263', '故城县', '81', '0', '3');
INSERT INTO `shop_area` VALUES ('1264', '景县', '81', '0', '3');
INSERT INTO `shop_area` VALUES ('1265', '枣强县', '81', '0', '3');
INSERT INTO `shop_area` VALUES ('1266', '桃城区', '81', '0', '3');
INSERT INTO `shop_area` VALUES ('1267', '武强县', '81', '0', '3');
INSERT INTO `shop_area` VALUES ('1268', '武邑县', '81', '0', '3');
INSERT INTO `shop_area` VALUES ('1269', '深州市', '81', '0', '3');
INSERT INTO `shop_area` VALUES ('1270', '阜城县', '81', '0', '3');
INSERT INTO `shop_area` VALUES ('1271', '饶阳县', '81', '0', '3');
INSERT INTO `shop_area` VALUES ('1272', '三河市', '82', '0', '3');
INSERT INTO `shop_area` VALUES ('1273', '固安县', '82', '0', '3');
INSERT INTO `shop_area` VALUES ('1274', '大厂回族自治县', '82', '0', '3');
INSERT INTO `shop_area` VALUES ('1275', '大城县', '82', '0', '3');
INSERT INTO `shop_area` VALUES ('1276', '安次区', '82', '0', '3');
INSERT INTO `shop_area` VALUES ('1277', '广阳区', '82', '0', '3');
INSERT INTO `shop_area` VALUES ('1278', '文安县', '82', '0', '3');
INSERT INTO `shop_area` VALUES ('1279', '永清县', '82', '0', '3');
INSERT INTO `shop_area` VALUES ('1280', '霸州市', '82', '0', '3');
INSERT INTO `shop_area` VALUES ('1281', '香河县', '82', '0', '3');
INSERT INTO `shop_area` VALUES ('1282', '东光县', '83', '0', '3');
INSERT INTO `shop_area` VALUES ('1283', '任丘市', '83', '0', '3');
INSERT INTO `shop_area` VALUES ('1284', '南皮县', '83', '0', '3');
INSERT INTO `shop_area` VALUES ('1285', '吴桥县', '83', '0', '3');
INSERT INTO `shop_area` VALUES ('1286', '孟村回族自治县', '83', '0', '3');
INSERT INTO `shop_area` VALUES ('1287', '新华区', '83', '0', '3');
INSERT INTO `shop_area` VALUES ('1288', '沧县', '83', '0', '3');
INSERT INTO `shop_area` VALUES ('1289', '河间市', '83', '0', '3');
INSERT INTO `shop_area` VALUES ('1290', '泊头市', '83', '0', '3');
INSERT INTO `shop_area` VALUES ('1291', '海兴县', '83', '0', '3');
INSERT INTO `shop_area` VALUES ('1292', '献县', '83', '0', '3');
INSERT INTO `shop_area` VALUES ('1293', '盐山县', '83', '0', '3');
INSERT INTO `shop_area` VALUES ('1294', '肃宁县', '83', '0', '3');
INSERT INTO `shop_area` VALUES ('1295', '运河区', '83', '0', '3');
INSERT INTO `shop_area` VALUES ('1296', '青县', '83', '0', '3');
INSERT INTO `shop_area` VALUES ('1297', '黄骅市', '83', '0', '3');
INSERT INTO `shop_area` VALUES ('1298', '万柏林区', '84', '0', '3');
INSERT INTO `shop_area` VALUES ('1299', '古交市', '84', '0', '3');
INSERT INTO `shop_area` VALUES ('1300', '娄烦县', '84', '0', '3');
INSERT INTO `shop_area` VALUES ('1301', '小店区', '84', '0', '3');
INSERT INTO `shop_area` VALUES ('1302', '尖草坪区', '84', '0', '3');
INSERT INTO `shop_area` VALUES ('1303', '晋源区', '84', '0', '3');
INSERT INTO `shop_area` VALUES ('1304', '杏花岭区', '84', '0', '3');
INSERT INTO `shop_area` VALUES ('1305', '清徐县', '84', '0', '3');
INSERT INTO `shop_area` VALUES ('1306', '迎泽区', '84', '0', '3');
INSERT INTO `shop_area` VALUES ('1307', '阳曲县', '84', '0', '3');
INSERT INTO `shop_area` VALUES ('1308', '南郊区', '85', '0', '3');
INSERT INTO `shop_area` VALUES ('1309', '城区', '85', '0', '3');
INSERT INTO `shop_area` VALUES ('1310', '大同县', '85', '0', '3');
INSERT INTO `shop_area` VALUES ('1311', '天镇县', '85', '0', '3');
INSERT INTO `shop_area` VALUES ('1312', '左云县', '85', '0', '3');
INSERT INTO `shop_area` VALUES ('1313', '广灵县', '85', '0', '3');
INSERT INTO `shop_area` VALUES ('1314', '新荣区', '85', '0', '3');
INSERT INTO `shop_area` VALUES ('1315', '浑源县', '85', '0', '3');
INSERT INTO `shop_area` VALUES ('1316', '灵丘县', '85', '0', '3');
INSERT INTO `shop_area` VALUES ('1317', '矿区', '85', '0', '3');
INSERT INTO `shop_area` VALUES ('1318', '阳高县', '85', '0', '3');
INSERT INTO `shop_area` VALUES ('1319', '城区', '86', '0', '3');
INSERT INTO `shop_area` VALUES ('1320', '平定县', '86', '0', '3');
INSERT INTO `shop_area` VALUES ('1321', '盂县', '86', '0', '3');
INSERT INTO `shop_area` VALUES ('1322', '矿区', '86', '0', '3');
INSERT INTO `shop_area` VALUES ('1323', '郊区', '86', '0', '3');
INSERT INTO `shop_area` VALUES ('1324', '城区', '87', '0', '3');
INSERT INTO `shop_area` VALUES ('1325', '壶关县', '87', '0', '3');
INSERT INTO `shop_area` VALUES ('1326', '屯留县', '87', '0', '3');
INSERT INTO `shop_area` VALUES ('1327', '平顺县', '87', '0', '3');
INSERT INTO `shop_area` VALUES ('1328', '武乡县', '87', '0', '3');
INSERT INTO `shop_area` VALUES ('1329', '沁县', '87', '0', '3');
INSERT INTO `shop_area` VALUES ('1330', '沁源县', '87', '0', '3');
INSERT INTO `shop_area` VALUES ('1331', '潞城市', '87', '0', '3');
INSERT INTO `shop_area` VALUES ('1332', '襄垣县', '87', '0', '3');
INSERT INTO `shop_area` VALUES ('1333', '郊区', '87', '0', '3');
INSERT INTO `shop_area` VALUES ('1334', '长子县', '87', '0', '3');
INSERT INTO `shop_area` VALUES ('1335', '长治县', '87', '0', '3');
INSERT INTO `shop_area` VALUES ('1336', '黎城县', '87', '0', '3');
INSERT INTO `shop_area` VALUES ('1337', '城区', '88', '0', '3');
INSERT INTO `shop_area` VALUES ('1338', '沁水县', '88', '0', '3');
INSERT INTO `shop_area` VALUES ('1339', '泽州县', '88', '0', '3');
INSERT INTO `shop_area` VALUES ('1340', '阳城县', '88', '0', '3');
INSERT INTO `shop_area` VALUES ('1341', '陵川县', '88', '0', '3');
INSERT INTO `shop_area` VALUES ('1342', '高平市', '88', '0', '3');
INSERT INTO `shop_area` VALUES ('1343', '右玉县', '89', '0', '3');
INSERT INTO `shop_area` VALUES ('1344', '山阴县', '89', '0', '3');
INSERT INTO `shop_area` VALUES ('1345', '平鲁区', '89', '0', '3');
INSERT INTO `shop_area` VALUES ('1346', '应县', '89', '0', '3');
INSERT INTO `shop_area` VALUES ('1347', '怀仁县', '89', '0', '3');
INSERT INTO `shop_area` VALUES ('1348', '朔城区', '89', '0', '3');
INSERT INTO `shop_area` VALUES ('1349', '介休市', '90', '0', '3');
INSERT INTO `shop_area` VALUES ('1350', '和顺县', '90', '0', '3');
INSERT INTO `shop_area` VALUES ('1351', '太谷县', '90', '0', '3');
INSERT INTO `shop_area` VALUES ('1352', '寿阳县', '90', '0', '3');
INSERT INTO `shop_area` VALUES ('1353', '左权县', '90', '0', '3');
INSERT INTO `shop_area` VALUES ('1354', '平遥县', '90', '0', '3');
INSERT INTO `shop_area` VALUES ('1355', '昔阳县', '90', '0', '3');
INSERT INTO `shop_area` VALUES ('1356', '榆次区', '90', '0', '3');
INSERT INTO `shop_area` VALUES ('1357', '榆社县', '90', '0', '3');
INSERT INTO `shop_area` VALUES ('1358', '灵石县', '90', '0', '3');
INSERT INTO `shop_area` VALUES ('1359', '祁县', '90', '0', '3');
INSERT INTO `shop_area` VALUES ('1360', '万荣县', '91', '0', '3');
INSERT INTO `shop_area` VALUES ('1361', '临猗县', '91', '0', '3');
INSERT INTO `shop_area` VALUES ('1362', '垣曲县', '91', '0', '3');
INSERT INTO `shop_area` VALUES ('1363', '夏县', '91', '0', '3');
INSERT INTO `shop_area` VALUES ('1364', '平陆县', '91', '0', '3');
INSERT INTO `shop_area` VALUES ('1365', '新绛县', '91', '0', '3');
INSERT INTO `shop_area` VALUES ('1366', '永济市', '91', '0', '3');
INSERT INTO `shop_area` VALUES ('1367', '河津市', '91', '0', '3');
INSERT INTO `shop_area` VALUES ('1368', '盐湖区', '91', '0', '3');
INSERT INTO `shop_area` VALUES ('1369', '稷山县', '91', '0', '3');
INSERT INTO `shop_area` VALUES ('1370', '绛县', '91', '0', '3');
INSERT INTO `shop_area` VALUES ('1371', '芮城县', '91', '0', '3');
INSERT INTO `shop_area` VALUES ('1372', '闻喜县', '91', '0', '3');
INSERT INTO `shop_area` VALUES ('1373', '五台县', '92', '0', '3');
INSERT INTO `shop_area` VALUES ('1374', '五寨县', '92', '0', '3');
INSERT INTO `shop_area` VALUES ('1375', '代县', '92', '0', '3');
INSERT INTO `shop_area` VALUES ('1376', '保德县', '92', '0', '3');
INSERT INTO `shop_area` VALUES ('1377', '偏关县', '92', '0', '3');
INSERT INTO `shop_area` VALUES ('1378', '原平市', '92', '0', '3');
INSERT INTO `shop_area` VALUES ('1379', '宁武县', '92', '0', '3');
INSERT INTO `shop_area` VALUES ('1380', '定襄县', '92', '0', '3');
INSERT INTO `shop_area` VALUES ('1381', '岢岚县', '92', '0', '3');
INSERT INTO `shop_area` VALUES ('1382', '忻府区', '92', '0', '3');
INSERT INTO `shop_area` VALUES ('1383', '河曲县', '92', '0', '3');
INSERT INTO `shop_area` VALUES ('1384', '神池县', '92', '0', '3');
INSERT INTO `shop_area` VALUES ('1385', '繁峙县', '92', '0', '3');
INSERT INTO `shop_area` VALUES ('1386', '静乐县', '92', '0', '3');
INSERT INTO `shop_area` VALUES ('1387', '乡宁县', '93', '0', '3');
INSERT INTO `shop_area` VALUES ('1388', '侯马市', '93', '0', '3');
INSERT INTO `shop_area` VALUES ('1389', '古县', '93', '0', '3');
INSERT INTO `shop_area` VALUES ('1390', '吉县', '93', '0', '3');
INSERT INTO `shop_area` VALUES ('1391', '大宁县', '93', '0', '3');
INSERT INTO `shop_area` VALUES ('1392', '安泽县', '93', '0', '3');
INSERT INTO `shop_area` VALUES ('1393', '尧都区', '93', '0', '3');
INSERT INTO `shop_area` VALUES ('1394', '曲沃县', '93', '0', '3');
INSERT INTO `shop_area` VALUES ('1395', '永和县', '93', '0', '3');
INSERT INTO `shop_area` VALUES ('1396', '汾西县', '93', '0', '3');
INSERT INTO `shop_area` VALUES ('1397', '洪洞县', '93', '0', '3');
INSERT INTO `shop_area` VALUES ('1398', '浮山县', '93', '0', '3');
INSERT INTO `shop_area` VALUES ('1399', '翼城县', '93', '0', '3');
INSERT INTO `shop_area` VALUES ('1400', '蒲县', '93', '0', '3');
INSERT INTO `shop_area` VALUES ('1401', '襄汾县', '93', '0', '3');
INSERT INTO `shop_area` VALUES ('1402', '隰县', '93', '0', '3');
INSERT INTO `shop_area` VALUES ('1403', '霍州市', '93', '0', '3');
INSERT INTO `shop_area` VALUES ('1404', '中阳县', '94', '0', '3');
INSERT INTO `shop_area` VALUES ('1405', '临县', '94', '0', '3');
INSERT INTO `shop_area` VALUES ('1406', '交口县', '94', '0', '3');
INSERT INTO `shop_area` VALUES ('1407', '交城县', '94', '0', '3');
INSERT INTO `shop_area` VALUES ('1408', '兴县', '94', '0', '3');
INSERT INTO `shop_area` VALUES ('1409', '孝义市', '94', '0', '3');
INSERT INTO `shop_area` VALUES ('1410', '岚县', '94', '0', '3');
INSERT INTO `shop_area` VALUES ('1411', '文水县', '94', '0', '3');
INSERT INTO `shop_area` VALUES ('1412', '方山县', '94', '0', '3');
INSERT INTO `shop_area` VALUES ('1413', '柳林县', '94', '0', '3');
INSERT INTO `shop_area` VALUES ('1414', '汾阳市', '94', '0', '3');
INSERT INTO `shop_area` VALUES ('1415', '石楼县', '94', '0', '3');
INSERT INTO `shop_area` VALUES ('1416', '离石区', '94', '0', '3');
INSERT INTO `shop_area` VALUES ('1417', '和林格尔县', '95', '0', '3');
INSERT INTO `shop_area` VALUES ('1418', '回民区', '95', '0', '3');
INSERT INTO `shop_area` VALUES ('1419', '土默特左旗', '95', '0', '3');
INSERT INTO `shop_area` VALUES ('1420', '托克托县', '95', '0', '3');
INSERT INTO `shop_area` VALUES ('1421', '新城区', '95', '0', '3');
INSERT INTO `shop_area` VALUES ('1422', '武川县', '95', '0', '3');
INSERT INTO `shop_area` VALUES ('1423', '清水河县', '95', '0', '3');
INSERT INTO `shop_area` VALUES ('1424', '玉泉区', '95', '0', '3');
INSERT INTO `shop_area` VALUES ('1425', '赛罕区', '95', '0', '3');
INSERT INTO `shop_area` VALUES ('1426', '东河区', '96', '0', '3');
INSERT INTO `shop_area` VALUES ('1427', '九原区', '96', '0', '3');
INSERT INTO `shop_area` VALUES ('1428', '固阳县', '96', '0', '3');
INSERT INTO `shop_area` VALUES ('1429', '土默特右旗', '96', '0', '3');
INSERT INTO `shop_area` VALUES ('1430', '昆都仑区', '96', '0', '3');
INSERT INTO `shop_area` VALUES ('1431', '白云矿区', '96', '0', '3');
INSERT INTO `shop_area` VALUES ('1432', '石拐区', '96', '0', '3');
INSERT INTO `shop_area` VALUES ('1433', '达尔罕茂明安联合旗', '96', '0', '3');
INSERT INTO `shop_area` VALUES ('1434', '青山区', '96', '0', '3');
INSERT INTO `shop_area` VALUES ('1435', '乌达区', '97', '0', '3');
INSERT INTO `shop_area` VALUES ('1436', '海勃湾区', '97', '0', '3');
INSERT INTO `shop_area` VALUES ('1437', '海南区', '97', '0', '3');
INSERT INTO `shop_area` VALUES ('1438', '元宝山区', '98', '0', '3');
INSERT INTO `shop_area` VALUES ('1439', '克什克腾旗', '98', '0', '3');
INSERT INTO `shop_area` VALUES ('1440', '喀喇沁旗', '98', '0', '3');
INSERT INTO `shop_area` VALUES ('1441', '宁城县', '98', '0', '3');
INSERT INTO `shop_area` VALUES ('1442', '巴林右旗', '98', '0', '3');
INSERT INTO `shop_area` VALUES ('1443', '巴林左旗', '98', '0', '3');
INSERT INTO `shop_area` VALUES ('1444', '敖汉旗', '98', '0', '3');
INSERT INTO `shop_area` VALUES ('1445', '松山区', '98', '0', '3');
INSERT INTO `shop_area` VALUES ('1446', '林西县', '98', '0', '3');
INSERT INTO `shop_area` VALUES ('1447', '红山区', '98', '0', '3');
INSERT INTO `shop_area` VALUES ('1448', '翁牛特旗', '98', '0', '3');
INSERT INTO `shop_area` VALUES ('1449', '阿鲁科尔沁旗', '98', '0', '3');
INSERT INTO `shop_area` VALUES ('1450', '奈曼旗', '99', '0', '3');
INSERT INTO `shop_area` VALUES ('1451', '库伦旗', '99', '0', '3');
INSERT INTO `shop_area` VALUES ('1452', '开鲁县', '99', '0', '3');
INSERT INTO `shop_area` VALUES ('1453', '扎鲁特旗', '99', '0', '3');
INSERT INTO `shop_area` VALUES ('1454', '科尔沁区', '99', '0', '3');
INSERT INTO `shop_area` VALUES ('1455', '科尔沁左翼中旗', '99', '0', '3');
INSERT INTO `shop_area` VALUES ('1456', '科尔沁左翼后旗', '99', '0', '3');
INSERT INTO `shop_area` VALUES ('1457', '霍林郭勒市', '99', '0', '3');
INSERT INTO `shop_area` VALUES ('1458', '东胜区', '100', '0', '3');
INSERT INTO `shop_area` VALUES ('1459', '乌审旗', '100', '0', '3');
INSERT INTO `shop_area` VALUES ('1460', '伊金霍洛旗', '100', '0', '3');
INSERT INTO `shop_area` VALUES ('1461', '准格尔旗', '100', '0', '3');
INSERT INTO `shop_area` VALUES ('1462', '杭锦旗', '100', '0', '3');
INSERT INTO `shop_area` VALUES ('1463', '达拉特旗', '100', '0', '3');
INSERT INTO `shop_area` VALUES ('1464', '鄂东胜区', '100', '0', '3');
INSERT INTO `shop_area` VALUES ('1465', '鄂托克前旗', '100', '0', '3');
INSERT INTO `shop_area` VALUES ('1466', '鄂托克旗', '100', '0', '3');
INSERT INTO `shop_area` VALUES ('1467', '扎兰屯市', '101', '0', '3');
INSERT INTO `shop_area` VALUES ('1468', '新巴尔虎右旗', '101', '0', '3');
INSERT INTO `shop_area` VALUES ('1469', '新巴尔虎左旗', '101', '0', '3');
INSERT INTO `shop_area` VALUES ('1470', '根河市', '101', '0', '3');
INSERT INTO `shop_area` VALUES ('1471', '海拉尔区', '101', '0', '3');
INSERT INTO `shop_area` VALUES ('1472', '满洲里市', '101', '0', '3');
INSERT INTO `shop_area` VALUES ('1473', '牙克石市', '101', '0', '3');
INSERT INTO `shop_area` VALUES ('1474', '莫力达瓦达斡尔族自治旗', '101', '0', '3');
INSERT INTO `shop_area` VALUES ('1475', '鄂伦春自治旗', '101', '0', '3');
INSERT INTO `shop_area` VALUES ('1476', '鄂温克族自治旗', '101', '0', '3');
INSERT INTO `shop_area` VALUES ('1477', '阿荣旗', '101', '0', '3');
INSERT INTO `shop_area` VALUES ('1478', '陈巴尔虎旗', '101', '0', '3');
INSERT INTO `shop_area` VALUES ('1479', '额尔古纳市', '101', '0', '3');
INSERT INTO `shop_area` VALUES ('1480', '临河区', '102', '0', '3');
INSERT INTO `shop_area` VALUES ('1481', '乌拉特中旗', '102', '0', '3');
INSERT INTO `shop_area` VALUES ('1482', '乌拉特前旗', '102', '0', '3');
INSERT INTO `shop_area` VALUES ('1483', '乌拉特后旗', '102', '0', '3');
INSERT INTO `shop_area` VALUES ('1484', '五原县', '102', '0', '3');
INSERT INTO `shop_area` VALUES ('1485', '杭锦后旗', '102', '0', '3');
INSERT INTO `shop_area` VALUES ('1486', '磴口县', '102', '0', '3');
INSERT INTO `shop_area` VALUES ('1487', '丰镇市', '103', '0', '3');
INSERT INTO `shop_area` VALUES ('1488', '兴和县', '103', '0', '3');
INSERT INTO `shop_area` VALUES ('1489', '凉城县', '103', '0', '3');
INSERT INTO `shop_area` VALUES ('1490', '化德县', '103', '0', '3');
INSERT INTO `shop_area` VALUES ('1491', '卓资县', '103', '0', '3');
INSERT INTO `shop_area` VALUES ('1492', '商都县', '103', '0', '3');
INSERT INTO `shop_area` VALUES ('1493', '四子王旗', '103', '0', '3');
INSERT INTO `shop_area` VALUES ('1494', '察哈尔右翼中旗', '103', '0', '3');
INSERT INTO `shop_area` VALUES ('1495', '察哈尔右翼前旗', '103', '0', '3');
INSERT INTO `shop_area` VALUES ('1496', '察哈尔右翼后旗', '103', '0', '3');
INSERT INTO `shop_area` VALUES ('1497', '集宁区', '103', '0', '3');
INSERT INTO `shop_area` VALUES ('1498', '乌兰浩特市', '104', '0', '3');
INSERT INTO `shop_area` VALUES ('1499', '扎赉特旗', '104', '0', '3');
INSERT INTO `shop_area` VALUES ('1500', '科尔沁右翼中旗', '104', '0', '3');
INSERT INTO `shop_area` VALUES ('1501', '科尔沁右翼前旗', '104', '0', '3');
INSERT INTO `shop_area` VALUES ('1502', '突泉县', '104', '0', '3');
INSERT INTO `shop_area` VALUES ('1503', '阿尔山市', '104', '0', '3');
INSERT INTO `shop_area` VALUES ('1504', '东乌珠穆沁旗', '105', '0', '3');
INSERT INTO `shop_area` VALUES ('1505', '二连浩特市', '105', '0', '3');
INSERT INTO `shop_area` VALUES ('1506', '多伦县', '105', '0', '3');
INSERT INTO `shop_area` VALUES ('1507', '太仆寺旗', '105', '0', '3');
INSERT INTO `shop_area` VALUES ('1508', '正蓝旗', '105', '0', '3');
INSERT INTO `shop_area` VALUES ('1509', '正镶白旗', '105', '0', '3');
INSERT INTO `shop_area` VALUES ('1510', '苏尼特右旗', '105', '0', '3');
INSERT INTO `shop_area` VALUES ('1511', '苏尼特左旗', '105', '0', '3');
INSERT INTO `shop_area` VALUES ('1512', '西乌珠穆沁旗', '105', '0', '3');
INSERT INTO `shop_area` VALUES ('1513', '锡林浩特市', '105', '0', '3');
INSERT INTO `shop_area` VALUES ('1514', '镶黄旗', '105', '0', '3');
INSERT INTO `shop_area` VALUES ('1515', '阿巴嘎旗', '105', '0', '3');
INSERT INTO `shop_area` VALUES ('1516', '阿拉善右旗', '106', '0', '3');
INSERT INTO `shop_area` VALUES ('1517', '阿拉善左旗', '106', '0', '3');
INSERT INTO `shop_area` VALUES ('1518', '额济纳旗', '106', '0', '3');
INSERT INTO `shop_area` VALUES ('1519', '东陵区', '107', '0', '3');
INSERT INTO `shop_area` VALUES ('1520', '于洪区', '107', '0', '3');
INSERT INTO `shop_area` VALUES ('1521', '和平区', '107', '0', '3');
INSERT INTO `shop_area` VALUES ('1522', '大东区', '107', '0', '3');
INSERT INTO `shop_area` VALUES ('1523', '康平县', '107', '0', '3');
INSERT INTO `shop_area` VALUES ('1524', '新民市', '107', '0', '3');
INSERT INTO `shop_area` VALUES ('1525', '沈北新区', '107', '0', '3');
INSERT INTO `shop_area` VALUES ('1526', '沈河区', '107', '0', '3');
INSERT INTO `shop_area` VALUES ('1527', '法库县', '107', '0', '3');
INSERT INTO `shop_area` VALUES ('1528', '皇姑区', '107', '0', '3');
INSERT INTO `shop_area` VALUES ('1529', '苏家屯区', '107', '0', '3');
INSERT INTO `shop_area` VALUES ('1530', '辽中县', '107', '0', '3');
INSERT INTO `shop_area` VALUES ('1531', '铁西区', '107', '0', '3');
INSERT INTO `shop_area` VALUES ('1532', '中山区', '108', '0', '3');
INSERT INTO `shop_area` VALUES ('1533', '庄河市', '108', '0', '3');
INSERT INTO `shop_area` VALUES ('1534', '旅顺口区', '108', '0', '3');
INSERT INTO `shop_area` VALUES ('1535', '普兰店市', '108', '0', '3');
INSERT INTO `shop_area` VALUES ('1536', '沙河口区', '108', '0', '3');
INSERT INTO `shop_area` VALUES ('1537', '瓦房店市', '108', '0', '3');
INSERT INTO `shop_area` VALUES ('1538', '甘井子区', '108', '0', '3');
INSERT INTO `shop_area` VALUES ('1539', '西岗区', '108', '0', '3');
INSERT INTO `shop_area` VALUES ('1540', '金州区', '108', '0', '3');
INSERT INTO `shop_area` VALUES ('1541', '长海县', '108', '0', '3');
INSERT INTO `shop_area` VALUES ('1542', '千山区', '109', '0', '3');
INSERT INTO `shop_area` VALUES ('1543', '台安县', '109', '0', '3');
INSERT INTO `shop_area` VALUES ('1544', '岫岩满族自治县', '109', '0', '3');
INSERT INTO `shop_area` VALUES ('1545', '海城市', '109', '0', '3');
INSERT INTO `shop_area` VALUES ('1546', '立山区', '109', '0', '3');
INSERT INTO `shop_area` VALUES ('1547', '铁东区', '109', '0', '3');
INSERT INTO `shop_area` VALUES ('1548', '铁西区', '109', '0', '3');
INSERT INTO `shop_area` VALUES ('1549', '东洲区', '110', '0', '3');
INSERT INTO `shop_area` VALUES ('1550', '抚顺县', '110', '0', '3');
INSERT INTO `shop_area` VALUES ('1551', '新宾满族自治县', '110', '0', '3');
INSERT INTO `shop_area` VALUES ('1552', '新抚区', '110', '0', '3');
INSERT INTO `shop_area` VALUES ('1553', '望花区', '110', '0', '3');
INSERT INTO `shop_area` VALUES ('1554', '清原满族自治县', '110', '0', '3');
INSERT INTO `shop_area` VALUES ('1555', '顺城区', '110', '0', '3');
INSERT INTO `shop_area` VALUES ('1556', '南芬区', '111', '0', '3');
INSERT INTO `shop_area` VALUES ('1557', '平山区', '111', '0', '3');
INSERT INTO `shop_area` VALUES ('1558', '明山区', '111', '0', '3');
INSERT INTO `shop_area` VALUES ('1559', '本溪满族自治县', '111', '0', '3');
INSERT INTO `shop_area` VALUES ('1560', '桓仁满族自治县', '111', '0', '3');
INSERT INTO `shop_area` VALUES ('1561', '溪湖区', '111', '0', '3');
INSERT INTO `shop_area` VALUES ('1562', '东港市', '112', '0', '3');
INSERT INTO `shop_area` VALUES ('1563', '元宝区', '112', '0', '3');
INSERT INTO `shop_area` VALUES ('1564', '凤城市', '112', '0', '3');
INSERT INTO `shop_area` VALUES ('1565', '宽甸满族自治县', '112', '0', '3');
INSERT INTO `shop_area` VALUES ('1566', '振兴区', '112', '0', '3');
INSERT INTO `shop_area` VALUES ('1567', '振安区', '112', '0', '3');
INSERT INTO `shop_area` VALUES ('1568', '义县', '113', '0', '3');
INSERT INTO `shop_area` VALUES ('1569', '凌河区', '113', '0', '3');
INSERT INTO `shop_area` VALUES ('1570', '凌海市', '113', '0', '3');
INSERT INTO `shop_area` VALUES ('1571', '北镇市', '113', '0', '3');
INSERT INTO `shop_area` VALUES ('1572', '古塔区', '113', '0', '3');
INSERT INTO `shop_area` VALUES ('1573', '太和区', '113', '0', '3');
INSERT INTO `shop_area` VALUES ('1574', '黑山县', '113', '0', '3');
INSERT INTO `shop_area` VALUES ('1575', '大石桥市', '114', '0', '3');
INSERT INTO `shop_area` VALUES ('1576', '盖州市', '114', '0', '3');
INSERT INTO `shop_area` VALUES ('1577', '站前区', '114', '0', '3');
INSERT INTO `shop_area` VALUES ('1578', '老边区', '114', '0', '3');
INSERT INTO `shop_area` VALUES ('1579', '西市区', '114', '0', '3');
INSERT INTO `shop_area` VALUES ('1580', '鲅鱼圈区', '114', '0', '3');
INSERT INTO `shop_area` VALUES ('1581', '太平区', '115', '0', '3');
INSERT INTO `shop_area` VALUES ('1582', '彰武县', '115', '0', '3');
INSERT INTO `shop_area` VALUES ('1583', '新邱区', '115', '0', '3');
INSERT INTO `shop_area` VALUES ('1584', '海州区', '115', '0', '3');
INSERT INTO `shop_area` VALUES ('1585', '清河门区', '115', '0', '3');
INSERT INTO `shop_area` VALUES ('1586', '细河区', '115', '0', '3');
INSERT INTO `shop_area` VALUES ('1587', '蒙古族自治县', '115', '0', '3');
INSERT INTO `shop_area` VALUES ('1588', '太子河区', '116', '0', '3');
INSERT INTO `shop_area` VALUES ('1589', '宏伟区', '116', '0', '3');
INSERT INTO `shop_area` VALUES ('1590', '弓长岭区', '116', '0', '3');
INSERT INTO `shop_area` VALUES ('1591', '文圣区', '116', '0', '3');
INSERT INTO `shop_area` VALUES ('1592', '灯塔市', '116', '0', '3');
INSERT INTO `shop_area` VALUES ('1593', '白塔区', '116', '0', '3');
INSERT INTO `shop_area` VALUES ('1594', '辽阳县', '116', '0', '3');
INSERT INTO `shop_area` VALUES ('1595', '兴隆台区', '117', '0', '3');
INSERT INTO `shop_area` VALUES ('1596', '双台子区', '117', '0', '3');
INSERT INTO `shop_area` VALUES ('1597', '大洼县', '117', '0', '3');
INSERT INTO `shop_area` VALUES ('1598', '盘山县', '117', '0', '3');
INSERT INTO `shop_area` VALUES ('1599', '开原市', '118', '0', '3');
INSERT INTO `shop_area` VALUES ('1600', '昌图县', '118', '0', '3');
INSERT INTO `shop_area` VALUES ('1601', '清河区', '118', '0', '3');
INSERT INTO `shop_area` VALUES ('1602', '西丰县', '118', '0', '3');
INSERT INTO `shop_area` VALUES ('1603', '调兵山市', '118', '0', '3');
INSERT INTO `shop_area` VALUES ('1604', '铁岭县', '118', '0', '3');
INSERT INTO `shop_area` VALUES ('1605', '银州区', '118', '0', '3');
INSERT INTO `shop_area` VALUES ('1606', '凌源市', '119', '0', '3');
INSERT INTO `shop_area` VALUES ('1607', '北票市', '119', '0', '3');
INSERT INTO `shop_area` VALUES ('1608', '双塔区', '119', '0', '3');
INSERT INTO `shop_area` VALUES ('1609', '喀喇沁左翼蒙古族自治县', '119', '0', '3');
INSERT INTO `shop_area` VALUES ('1610', '建平县', '119', '0', '3');
INSERT INTO `shop_area` VALUES ('1611', '朝阳县', '119', '0', '3');
INSERT INTO `shop_area` VALUES ('1612', '龙城区', '119', '0', '3');
INSERT INTO `shop_area` VALUES ('1613', '兴城市', '120', '0', '3');
INSERT INTO `shop_area` VALUES ('1614', '南票区', '120', '0', '3');
INSERT INTO `shop_area` VALUES ('1615', '建昌县', '120', '0', '3');
INSERT INTO `shop_area` VALUES ('1616', '绥中县', '120', '0', '3');
INSERT INTO `shop_area` VALUES ('1617', '连山区', '120', '0', '3');
INSERT INTO `shop_area` VALUES ('1618', '龙港区', '120', '0', '3');
INSERT INTO `shop_area` VALUES ('1619', '九台市', '121', '0', '3');
INSERT INTO `shop_area` VALUES ('1620', '二道区', '121', '0', '3');
INSERT INTO `shop_area` VALUES ('1621', '农安县', '121', '0', '3');
INSERT INTO `shop_area` VALUES ('1622', '南关区', '121', '0', '3');
INSERT INTO `shop_area` VALUES ('1623', '双阳区', '121', '0', '3');
INSERT INTO `shop_area` VALUES ('1624', '宽城区', '121', '0', '3');
INSERT INTO `shop_area` VALUES ('1625', '德惠市', '121', '0', '3');
INSERT INTO `shop_area` VALUES ('1626', '朝阳区', '121', '0', '3');
INSERT INTO `shop_area` VALUES ('1627', '榆树市', '121', '0', '3');
INSERT INTO `shop_area` VALUES ('1628', '绿园区', '121', '0', '3');
INSERT INTO `shop_area` VALUES ('1629', '丰满区', '122', '0', '3');
INSERT INTO `shop_area` VALUES ('1630', '昌邑区', '122', '0', '3');
INSERT INTO `shop_area` VALUES ('1631', '桦甸市', '122', '0', '3');
INSERT INTO `shop_area` VALUES ('1632', '永吉县', '122', '0', '3');
INSERT INTO `shop_area` VALUES ('1633', '磐石市', '122', '0', '3');
INSERT INTO `shop_area` VALUES ('1634', '舒兰市', '122', '0', '3');
INSERT INTO `shop_area` VALUES ('1635', '船营区', '122', '0', '3');
INSERT INTO `shop_area` VALUES ('1636', '蛟河市', '122', '0', '3');
INSERT INTO `shop_area` VALUES ('1637', '龙潭区', '122', '0', '3');
INSERT INTO `shop_area` VALUES ('1638', '伊通满族自治县', '123', '0', '3');
INSERT INTO `shop_area` VALUES ('1639', '公主岭市', '123', '0', '3');
INSERT INTO `shop_area` VALUES ('1640', '双辽市', '123', '0', '3');
INSERT INTO `shop_area` VALUES ('1641', '梨树县', '123', '0', '3');
INSERT INTO `shop_area` VALUES ('1642', '铁东区', '123', '0', '3');
INSERT INTO `shop_area` VALUES ('1643', '铁西区', '123', '0', '3');
INSERT INTO `shop_area` VALUES ('1644', '东丰县', '124', '0', '3');
INSERT INTO `shop_area` VALUES ('1645', '东辽县', '124', '0', '3');
INSERT INTO `shop_area` VALUES ('1646', '西安区', '124', '0', '3');
INSERT INTO `shop_area` VALUES ('1647', '龙山区', '124', '0', '3');
INSERT INTO `shop_area` VALUES ('1648', '东昌区', '125', '0', '3');
INSERT INTO `shop_area` VALUES ('1649', '二道江区', '125', '0', '3');
INSERT INTO `shop_area` VALUES ('1650', '柳河县', '125', '0', '3');
INSERT INTO `shop_area` VALUES ('1651', '梅河口市', '125', '0', '3');
INSERT INTO `shop_area` VALUES ('1652', '辉南县', '125', '0', '3');
INSERT INTO `shop_area` VALUES ('1653', '通化县', '125', '0', '3');
INSERT INTO `shop_area` VALUES ('1654', '集安市', '125', '0', '3');
INSERT INTO `shop_area` VALUES ('1655', '临江市', '126', '0', '3');
INSERT INTO `shop_area` VALUES ('1656', '八道江区', '126', '0', '3');
INSERT INTO `shop_area` VALUES ('1657', '抚松县', '126', '0', '3');
INSERT INTO `shop_area` VALUES ('1658', '江源区', '126', '0', '3');
INSERT INTO `shop_area` VALUES ('1659', '长白朝鲜族自治县', '126', '0', '3');
INSERT INTO `shop_area` VALUES ('1660', '靖宇县', '126', '0', '3');
INSERT INTO `shop_area` VALUES ('1661', '干安县', '127', '0', '3');
INSERT INTO `shop_area` VALUES ('1662', '前郭尔罗斯蒙古族自治县', '127', '0', '3');
INSERT INTO `shop_area` VALUES ('1663', '宁江区', '127', '0', '3');
INSERT INTO `shop_area` VALUES ('1664', '扶余县', '127', '0', '3');
INSERT INTO `shop_area` VALUES ('1665', '长岭县', '127', '0', '3');
INSERT INTO `shop_area` VALUES ('1666', '大安市', '128', '0', '3');
INSERT INTO `shop_area` VALUES ('1667', '洮北区', '128', '0', '3');
INSERT INTO `shop_area` VALUES ('1668', '洮南市', '128', '0', '3');
INSERT INTO `shop_area` VALUES ('1669', '通榆县', '128', '0', '3');
INSERT INTO `shop_area` VALUES ('1670', '镇赉县', '128', '0', '3');
INSERT INTO `shop_area` VALUES ('1671', '和龙市', '129', '0', '3');
INSERT INTO `shop_area` VALUES ('1672', '图们市', '129', '0', '3');
INSERT INTO `shop_area` VALUES ('1673', '安图县', '129', '0', '3');
INSERT INTO `shop_area` VALUES ('1674', '延吉市', '129', '0', '3');
INSERT INTO `shop_area` VALUES ('1675', '敦化市', '129', '0', '3');
INSERT INTO `shop_area` VALUES ('1676', '汪清县', '129', '0', '3');
INSERT INTO `shop_area` VALUES ('1677', '珲春市', '129', '0', '3');
INSERT INTO `shop_area` VALUES ('1678', '龙井市', '129', '0', '3');
INSERT INTO `shop_area` VALUES ('1679', '五常市', '130', '0', '3');
INSERT INTO `shop_area` VALUES ('1680', '依兰县', '130', '0', '3');
INSERT INTO `shop_area` VALUES ('1681', '南岗区', '130', '0', '3');
INSERT INTO `shop_area` VALUES ('1682', '双城市', '130', '0', '3');
INSERT INTO `shop_area` VALUES ('1683', '呼兰区', '130', '0', '3');
INSERT INTO `shop_area` VALUES ('1684', '哈尔滨市道里区', '130', '0', '3');
INSERT INTO `shop_area` VALUES ('1685', '宾县', '130', '0', '3');
INSERT INTO `shop_area` VALUES ('1686', '尚志市', '130', '0', '3');
INSERT INTO `shop_area` VALUES ('1687', '巴彦县', '130', '0', '3');
INSERT INTO `shop_area` VALUES ('1688', '平房区', '130', '0', '3');
INSERT INTO `shop_area` VALUES ('1689', '延寿县', '130', '0', '3');
INSERT INTO `shop_area` VALUES ('1690', '方正县', '130', '0', '3');
INSERT INTO `shop_area` VALUES ('1691', '木兰县', '130', '0', '3');
INSERT INTO `shop_area` VALUES ('1692', '松北区', '130', '0', '3');
INSERT INTO `shop_area` VALUES ('1693', '通河县', '130', '0', '3');
INSERT INTO `shop_area` VALUES ('1694', '道外区', '130', '0', '3');
INSERT INTO `shop_area` VALUES ('1695', '阿城区', '130', '0', '3');
INSERT INTO `shop_area` VALUES ('1696', '香坊区', '130', '0', '3');
INSERT INTO `shop_area` VALUES ('1697', '依安县', '131', '0', '3');
INSERT INTO `shop_area` VALUES ('1698', '克东县', '131', '0', '3');
INSERT INTO `shop_area` VALUES ('1699', '克山县', '131', '0', '3');
INSERT INTO `shop_area` VALUES ('1700', '富拉尔基区', '131', '0', '3');
INSERT INTO `shop_area` VALUES ('1701', '富裕县', '131', '0', '3');
INSERT INTO `shop_area` VALUES ('1702', '建华区', '131', '0', '3');
INSERT INTO `shop_area` VALUES ('1703', '拜泉县', '131', '0', '3');
INSERT INTO `shop_area` VALUES ('1704', '昂昂溪区', '131', '0', '3');
INSERT INTO `shop_area` VALUES ('1705', '梅里斯达斡尔族区', '131', '0', '3');
INSERT INTO `shop_area` VALUES ('1706', '泰来县', '131', '0', '3');
INSERT INTO `shop_area` VALUES ('1707', '甘南县', '131', '0', '3');
INSERT INTO `shop_area` VALUES ('1708', '碾子山区', '131', '0', '3');
INSERT INTO `shop_area` VALUES ('1709', '讷河市', '131', '0', '3');
INSERT INTO `shop_area` VALUES ('1710', '铁锋区', '131', '0', '3');
INSERT INTO `shop_area` VALUES ('1711', '龙江县', '131', '0', '3');
INSERT INTO `shop_area` VALUES ('1712', '龙沙区', '131', '0', '3');
INSERT INTO `shop_area` VALUES ('1713', '城子河区', '132', '0', '3');
INSERT INTO `shop_area` VALUES ('1714', '密山市', '132', '0', '3');
INSERT INTO `shop_area` VALUES ('1715', '恒山区', '132', '0', '3');
INSERT INTO `shop_area` VALUES ('1716', '梨树区', '132', '0', '3');
INSERT INTO `shop_area` VALUES ('1717', '滴道区', '132', '0', '3');
INSERT INTO `shop_area` VALUES ('1718', '虎林市', '132', '0', '3');
INSERT INTO `shop_area` VALUES ('1719', '鸡东县', '132', '0', '3');
INSERT INTO `shop_area` VALUES ('1720', '鸡冠区', '132', '0', '3');
INSERT INTO `shop_area` VALUES ('1721', '麻山区', '132', '0', '3');
INSERT INTO `shop_area` VALUES ('1722', '东山区', '133', '0', '3');
INSERT INTO `shop_area` VALUES ('1723', '兴安区', '133', '0', '3');
INSERT INTO `shop_area` VALUES ('1724', '兴山区', '133', '0', '3');
INSERT INTO `shop_area` VALUES ('1725', '南山区', '133', '0', '3');
INSERT INTO `shop_area` VALUES ('1726', '向阳区', '133', '0', '3');
INSERT INTO `shop_area` VALUES ('1727', '工农区', '133', '0', '3');
INSERT INTO `shop_area` VALUES ('1728', '绥滨县', '133', '0', '3');
INSERT INTO `shop_area` VALUES ('1729', '萝北县', '133', '0', '3');
INSERT INTO `shop_area` VALUES ('1730', '友谊县', '134', '0', '3');
INSERT INTO `shop_area` VALUES ('1731', '四方台区', '134', '0', '3');
INSERT INTO `shop_area` VALUES ('1732', '宝山区', '134', '0', '3');
INSERT INTO `shop_area` VALUES ('1733', '宝清县', '134', '0', '3');
INSERT INTO `shop_area` VALUES ('1734', '尖山区', '134', '0', '3');
INSERT INTO `shop_area` VALUES ('1735', '岭东区', '134', '0', '3');
INSERT INTO `shop_area` VALUES ('1736', '集贤县', '134', '0', '3');
INSERT INTO `shop_area` VALUES ('1737', '饶河县', '134', '0', '3');
INSERT INTO `shop_area` VALUES ('1738', '大同区', '135', '0', '3');
INSERT INTO `shop_area` VALUES ('1739', '杜尔伯特蒙古族自治县', '135', '0', '3');
INSERT INTO `shop_area` VALUES ('1740', '林甸县', '135', '0', '3');
INSERT INTO `shop_area` VALUES ('1741', '红岗区', '135', '0', '3');
INSERT INTO `shop_area` VALUES ('1742', '肇州县', '135', '0', '3');
INSERT INTO `shop_area` VALUES ('1743', '肇源县', '135', '0', '3');
INSERT INTO `shop_area` VALUES ('1744', '胡路区', '135', '0', '3');
INSERT INTO `shop_area` VALUES ('1745', '萨尔图区', '135', '0', '3');
INSERT INTO `shop_area` VALUES ('1746', '龙凤区', '135', '0', '3');
INSERT INTO `shop_area` VALUES ('1747', '上甘岭区', '136', '0', '3');
INSERT INTO `shop_area` VALUES ('1748', '乌伊岭区', '136', '0', '3');
INSERT INTO `shop_area` VALUES ('1749', '乌马河区', '136', '0', '3');
INSERT INTO `shop_area` VALUES ('1750', '五营区', '136', '0', '3');
INSERT INTO `shop_area` VALUES ('1751', '伊春区', '136', '0', '3');
INSERT INTO `shop_area` VALUES ('1752', '南岔区', '136', '0', '3');
INSERT INTO `shop_area` VALUES ('1753', '友好区', '136', '0', '3');
INSERT INTO `shop_area` VALUES ('1754', '嘉荫县', '136', '0', '3');
INSERT INTO `shop_area` VALUES ('1755', '带岭区', '136', '0', '3');
INSERT INTO `shop_area` VALUES ('1756', '新青区', '136', '0', '3');
INSERT INTO `shop_area` VALUES ('1757', '汤旺河区', '136', '0', '3');
INSERT INTO `shop_area` VALUES ('1758', '红星区', '136', '0', '3');
INSERT INTO `shop_area` VALUES ('1759', '美溪区', '136', '0', '3');
INSERT INTO `shop_area` VALUES ('1760', '翠峦区', '136', '0', '3');
INSERT INTO `shop_area` VALUES ('1761', '西林区', '136', '0', '3');
INSERT INTO `shop_area` VALUES ('1762', '金山屯区', '136', '0', '3');
INSERT INTO `shop_area` VALUES ('1763', '铁力市', '136', '0', '3');
INSERT INTO `shop_area` VALUES ('1764', '东风区', '137', '0', '3');
INSERT INTO `shop_area` VALUES ('1765', '前进区', '137', '0', '3');
INSERT INTO `shop_area` VALUES ('1766', '同江市', '137', '0', '3');
INSERT INTO `shop_area` VALUES ('1767', '向阳区', '137', '0', '3');
INSERT INTO `shop_area` VALUES ('1768', '富锦市', '137', '0', '3');
INSERT INTO `shop_area` VALUES ('1769', '抚远县', '137', '0', '3');
INSERT INTO `shop_area` VALUES ('1770', '桦南县', '137', '0', '3');
INSERT INTO `shop_area` VALUES ('1771', '桦川县', '137', '0', '3');
INSERT INTO `shop_area` VALUES ('1772', '汤原县', '137', '0', '3');
INSERT INTO `shop_area` VALUES ('1773', '郊区', '137', '0', '3');
INSERT INTO `shop_area` VALUES ('1774', '勃利县', '138', '0', '3');
INSERT INTO `shop_area` VALUES ('1775', '新兴区', '138', '0', '3');
INSERT INTO `shop_area` VALUES ('1776', '桃山区', '138', '0', '3');
INSERT INTO `shop_area` VALUES ('1777', '茄子河区', '138', '0', '3');
INSERT INTO `shop_area` VALUES ('1778', '东宁县', '139', '0', '3');
INSERT INTO `shop_area` VALUES ('1779', '东安区', '139', '0', '3');
INSERT INTO `shop_area` VALUES ('1780', '宁安市', '139', '0', '3');
INSERT INTO `shop_area` VALUES ('1781', '林口县', '139', '0', '3');
INSERT INTO `shop_area` VALUES ('1782', '海林市', '139', '0', '3');
INSERT INTO `shop_area` VALUES ('1783', '爱民区', '139', '0', '3');
INSERT INTO `shop_area` VALUES ('1784', '穆棱市', '139', '0', '3');
INSERT INTO `shop_area` VALUES ('1785', '绥芬河市', '139', '0', '3');
INSERT INTO `shop_area` VALUES ('1786', '西安区', '139', '0', '3');
INSERT INTO `shop_area` VALUES ('1787', '阳明区', '139', '0', '3');
INSERT INTO `shop_area` VALUES ('1788', '五大连池市', '140', '0', '3');
INSERT INTO `shop_area` VALUES ('1789', '北安市', '140', '0', '3');
INSERT INTO `shop_area` VALUES ('1790', '嫩江县', '140', '0', '3');
INSERT INTO `shop_area` VALUES ('1791', '孙吴县', '140', '0', '3');
INSERT INTO `shop_area` VALUES ('1792', '爱辉区', '140', '0', '3');
INSERT INTO `shop_area` VALUES ('1793', '车逊克县', '140', '0', '3');
INSERT INTO `shop_area` VALUES ('1794', '逊克县', '140', '0', '3');
INSERT INTO `shop_area` VALUES ('1795', '兰西县', '141', '0', '3');
INSERT INTO `shop_area` VALUES ('1796', '安达市', '141', '0', '3');
INSERT INTO `shop_area` VALUES ('1797', '庆安县', '141', '0', '3');
INSERT INTO `shop_area` VALUES ('1798', '明水县', '141', '0', '3');
INSERT INTO `shop_area` VALUES ('1799', '望奎县', '141', '0', '3');
INSERT INTO `shop_area` VALUES ('1800', '海伦市', '141', '0', '3');
INSERT INTO `shop_area` VALUES ('1801', '绥化市北林区', '141', '0', '3');
INSERT INTO `shop_area` VALUES ('1802', '绥棱县', '141', '0', '3');
INSERT INTO `shop_area` VALUES ('1803', '肇东市', '141', '0', '3');
INSERT INTO `shop_area` VALUES ('1804', '青冈县', '141', '0', '3');
INSERT INTO `shop_area` VALUES ('1805', '呼玛县', '142', '0', '3');
INSERT INTO `shop_area` VALUES ('1806', '塔河县', '142', '0', '3');
INSERT INTO `shop_area` VALUES ('1807', '大兴安岭地区加格达奇区', '142', '0', '3');
INSERT INTO `shop_area` VALUES ('1808', '大兴安岭地区呼中区', '142', '0', '3');
INSERT INTO `shop_area` VALUES ('1809', '大兴安岭地区新林区', '142', '0', '3');
INSERT INTO `shop_area` VALUES ('1810', '大兴安岭地区松岭区', '142', '0', '3');
INSERT INTO `shop_area` VALUES ('1811', '漠河县', '142', '0', '3');
INSERT INTO `shop_area` VALUES ('2027', '下关区', '162', '0', '3');
INSERT INTO `shop_area` VALUES ('2028', '六合区', '162', '0', '3');
INSERT INTO `shop_area` VALUES ('2029', '建邺区', '162', '0', '3');
INSERT INTO `shop_area` VALUES ('2030', '栖霞区', '162', '0', '3');
INSERT INTO `shop_area` VALUES ('2031', '江宁区', '162', '0', '3');
INSERT INTO `shop_area` VALUES ('2032', '浦口区', '162', '0', '3');
INSERT INTO `shop_area` VALUES ('2033', '溧水县', '162', '0', '3');
INSERT INTO `shop_area` VALUES ('2034', '玄武区', '162', '0', '3');
INSERT INTO `shop_area` VALUES ('2035', '白下区', '162', '0', '3');
INSERT INTO `shop_area` VALUES ('2036', '秦淮区', '162', '0', '3');
INSERT INTO `shop_area` VALUES ('2037', '雨花台区', '162', '0', '3');
INSERT INTO `shop_area` VALUES ('2038', '高淳县', '162', '0', '3');
INSERT INTO `shop_area` VALUES ('2039', '鼓楼区', '162', '0', '3');
INSERT INTO `shop_area` VALUES ('2040', '北塘区', '163', '0', '3');
INSERT INTO `shop_area` VALUES ('2041', '南长区', '163', '0', '3');
INSERT INTO `shop_area` VALUES ('2042', '宜兴市', '163', '0', '3');
INSERT INTO `shop_area` VALUES ('2043', '崇安区', '163', '0', '3');
INSERT INTO `shop_area` VALUES ('2044', '惠山区', '163', '0', '3');
INSERT INTO `shop_area` VALUES ('2045', '江阴市', '163', '0', '3');
INSERT INTO `shop_area` VALUES ('2046', '滨湖区', '163', '0', '3');
INSERT INTO `shop_area` VALUES ('2047', '锡山区', '163', '0', '3');
INSERT INTO `shop_area` VALUES ('2048', '丰县', '164', '0', '3');
INSERT INTO `shop_area` VALUES ('2049', '九里区', '164', '0', '3');
INSERT INTO `shop_area` VALUES ('2050', '云龙区', '164', '0', '3');
INSERT INTO `shop_area` VALUES ('2051', '新沂市', '164', '0', '3');
INSERT INTO `shop_area` VALUES ('2052', '沛县', '164', '0', '3');
INSERT INTO `shop_area` VALUES ('2053', '泉山区', '164', '0', '3');
INSERT INTO `shop_area` VALUES ('2054', '睢宁县', '164', '0', '3');
INSERT INTO `shop_area` VALUES ('2055', '贾汪区', '164', '0', '3');
INSERT INTO `shop_area` VALUES ('2056', '邳州市', '164', '0', '3');
INSERT INTO `shop_area` VALUES ('2057', '铜山县', '164', '0', '3');
INSERT INTO `shop_area` VALUES ('2058', '鼓楼区', '164', '0', '3');
INSERT INTO `shop_area` VALUES ('2059', '天宁区', '165', '0', '3');
INSERT INTO `shop_area` VALUES ('2060', '戚墅堰区', '165', '0', '3');
INSERT INTO `shop_area` VALUES ('2061', '新北区', '165', '0', '3');
INSERT INTO `shop_area` VALUES ('2062', '武进区', '165', '0', '3');
INSERT INTO `shop_area` VALUES ('2063', '溧阳市', '165', '0', '3');
INSERT INTO `shop_area` VALUES ('2064', '金坛市', '165', '0', '3');
INSERT INTO `shop_area` VALUES ('2065', '钟楼区', '165', '0', '3');
INSERT INTO `shop_area` VALUES ('2066', '吴中区', '166', '0', '3');
INSERT INTO `shop_area` VALUES ('2067', '吴江市', '166', '0', '3');
INSERT INTO `shop_area` VALUES ('2068', '太仓市', '166', '0', '3');
INSERT INTO `shop_area` VALUES ('2069', '常熟市', '166', '0', '3');
INSERT INTO `shop_area` VALUES ('2070', '平江区', '166', '0', '3');
INSERT INTO `shop_area` VALUES ('2071', '张家港市', '166', '0', '3');
INSERT INTO `shop_area` VALUES ('2072', '昆山市', '166', '0', '3');
INSERT INTO `shop_area` VALUES ('2073', '沧浪区', '166', '0', '3');
INSERT INTO `shop_area` VALUES ('2074', '相城区', '166', '0', '3');
INSERT INTO `shop_area` VALUES ('2075', '苏州工业园区', '166', '0', '3');
INSERT INTO `shop_area` VALUES ('2076', '虎丘区', '166', '0', '3');
INSERT INTO `shop_area` VALUES ('2077', '金阊区', '166', '0', '3');
INSERT INTO `shop_area` VALUES ('2078', '启东市', '167', '0', '3');
INSERT INTO `shop_area` VALUES ('2079', '如东县', '167', '0', '3');
INSERT INTO `shop_area` VALUES ('2080', '如皋市', '167', '0', '3');
INSERT INTO `shop_area` VALUES ('2081', '崇川区', '167', '0', '3');
INSERT INTO `shop_area` VALUES ('2082', '海安县', '167', '0', '3');
INSERT INTO `shop_area` VALUES ('2083', '海门市', '167', '0', '3');
INSERT INTO `shop_area` VALUES ('2084', '港闸区', '167', '0', '3');
INSERT INTO `shop_area` VALUES ('2085', '通州市', '167', '0', '3');
INSERT INTO `shop_area` VALUES ('2086', '东海县', '168', '0', '3');
INSERT INTO `shop_area` VALUES ('2087', '新浦区', '168', '0', '3');
INSERT INTO `shop_area` VALUES ('2088', '海州区', '168', '0', '3');
INSERT INTO `shop_area` VALUES ('2089', '灌云县', '168', '0', '3');
INSERT INTO `shop_area` VALUES ('2090', '灌南县', '168', '0', '3');
INSERT INTO `shop_area` VALUES ('2091', '赣榆县', '168', '0', '3');
INSERT INTO `shop_area` VALUES ('2092', '连云区', '168', '0', '3');
INSERT INTO `shop_area` VALUES ('2093', '楚州区', '169', '0', '3');
INSERT INTO `shop_area` VALUES ('2094', '洪泽县', '169', '0', '3');
INSERT INTO `shop_area` VALUES ('2095', '涟水县', '169', '0', '3');
INSERT INTO `shop_area` VALUES ('2096', '淮阴区', '169', '0', '3');
INSERT INTO `shop_area` VALUES ('2097', '清河区', '169', '0', '3');
INSERT INTO `shop_area` VALUES ('2098', '清浦区', '169', '0', '3');
INSERT INTO `shop_area` VALUES ('2099', '盱眙县', '169', '0', '3');
INSERT INTO `shop_area` VALUES ('2100', '金湖县', '169', '0', '3');
INSERT INTO `shop_area` VALUES ('2101', '东台市', '170', '0', '3');
INSERT INTO `shop_area` VALUES ('2102', '亭湖区', '170', '0', '3');
INSERT INTO `shop_area` VALUES ('2103', '响水县', '170', '0', '3');
INSERT INTO `shop_area` VALUES ('2104', '大丰市', '170', '0', '3');
INSERT INTO `shop_area` VALUES ('2105', '射阳县', '170', '0', '3');
INSERT INTO `shop_area` VALUES ('2106', '建湖县', '170', '0', '3');
INSERT INTO `shop_area` VALUES ('2107', '滨海县', '170', '0', '3');
INSERT INTO `shop_area` VALUES ('2108', '盐都区', '170', '0', '3');
INSERT INTO `shop_area` VALUES ('2109', '阜宁县', '170', '0', '3');
INSERT INTO `shop_area` VALUES ('2110', '仪征市', '171', '0', '3');
INSERT INTO `shop_area` VALUES ('2111', '宝应县', '171', '0', '3');
INSERT INTO `shop_area` VALUES ('2112', '广陵区', '171', '0', '3');
INSERT INTO `shop_area` VALUES ('2113', '江都市', '171', '0', '3');
INSERT INTO `shop_area` VALUES ('2114', '维扬区', '171', '0', '3');
INSERT INTO `shop_area` VALUES ('2115', '邗江区', '171', '0', '3');
INSERT INTO `shop_area` VALUES ('2116', '高邮市', '171', '0', '3');
INSERT INTO `shop_area` VALUES ('2117', '丹徒区', '172', '0', '3');
INSERT INTO `shop_area` VALUES ('2118', '丹阳市', '172', '0', '3');
INSERT INTO `shop_area` VALUES ('2119', '京口区', '172', '0', '3');
INSERT INTO `shop_area` VALUES ('2120', '句容市', '172', '0', '3');
INSERT INTO `shop_area` VALUES ('2121', '扬中市', '172', '0', '3');
INSERT INTO `shop_area` VALUES ('2122', '润州区', '172', '0', '3');
INSERT INTO `shop_area` VALUES ('2123', '兴化市', '173', '0', '3');
INSERT INTO `shop_area` VALUES ('2124', '姜堰市', '173', '0', '3');
INSERT INTO `shop_area` VALUES ('2125', '泰兴市', '173', '0', '3');
INSERT INTO `shop_area` VALUES ('2126', '海陵区', '173', '0', '3');
INSERT INTO `shop_area` VALUES ('2127', '靖江市', '173', '0', '3');
INSERT INTO `shop_area` VALUES ('2128', '高港区', '173', '0', '3');
INSERT INTO `shop_area` VALUES ('2129', '宿城区', '174', '0', '3');
INSERT INTO `shop_area` VALUES ('2130', '宿豫区', '174', '0', '3');
INSERT INTO `shop_area` VALUES ('2131', '沭阳县', '174', '0', '3');
INSERT INTO `shop_area` VALUES ('2132', '泗洪县', '174', '0', '3');
INSERT INTO `shop_area` VALUES ('2133', '泗阳县', '174', '0', '3');
INSERT INTO `shop_area` VALUES ('2134', '上城区', '175', '0', '3');
INSERT INTO `shop_area` VALUES ('2135', '下城区', '175', '0', '3');
INSERT INTO `shop_area` VALUES ('2136', '临安市', '175', '0', '3');
INSERT INTO `shop_area` VALUES ('2137', '余杭区', '175', '0', '3');
INSERT INTO `shop_area` VALUES ('2138', '富阳市', '175', '0', '3');
INSERT INTO `shop_area` VALUES ('2139', '建德市', '175', '0', '3');
INSERT INTO `shop_area` VALUES ('2140', '拱墅区', '175', '0', '3');
INSERT INTO `shop_area` VALUES ('2141', '桐庐县', '175', '0', '3');
INSERT INTO `shop_area` VALUES ('2142', '江干区', '175', '0', '3');
INSERT INTO `shop_area` VALUES ('2143', '淳安县', '175', '0', '3');
INSERT INTO `shop_area` VALUES ('2144', '滨江区', '175', '0', '3');
INSERT INTO `shop_area` VALUES ('2145', '萧山区', '175', '0', '3');
INSERT INTO `shop_area` VALUES ('2146', '西湖区', '175', '0', '3');
INSERT INTO `shop_area` VALUES ('2147', '余姚市', '176', '0', '3');
INSERT INTO `shop_area` VALUES ('2148', '北仑区', '176', '0', '3');
INSERT INTO `shop_area` VALUES ('2149', '奉化市', '176', '0', '3');
INSERT INTO `shop_area` VALUES ('2150', '宁海县', '176', '0', '3');
INSERT INTO `shop_area` VALUES ('2151', '慈溪市', '176', '0', '3');
INSERT INTO `shop_area` VALUES ('2152', '江东区', '176', '0', '3');
INSERT INTO `shop_area` VALUES ('2153', '江北区', '176', '0', '3');
INSERT INTO `shop_area` VALUES ('2154', '海曙区', '176', '0', '3');
INSERT INTO `shop_area` VALUES ('2155', '象山县', '176', '0', '3');
INSERT INTO `shop_area` VALUES ('2156', '鄞州区', '176', '0', '3');
INSERT INTO `shop_area` VALUES ('2157', '镇海区', '176', '0', '3');
INSERT INTO `shop_area` VALUES ('2158', '乐清市', '177', '0', '3');
INSERT INTO `shop_area` VALUES ('2159', '平阳县', '177', '0', '3');
INSERT INTO `shop_area` VALUES ('2160', '文成县', '177', '0', '3');
INSERT INTO `shop_area` VALUES ('2161', '永嘉县', '177', '0', '3');
INSERT INTO `shop_area` VALUES ('2162', '泰顺县', '177', '0', '3');
INSERT INTO `shop_area` VALUES ('2163', '洞头县', '177', '0', '3');
INSERT INTO `shop_area` VALUES ('2164', '瑞安市', '177', '0', '3');
INSERT INTO `shop_area` VALUES ('2165', '瓯海区', '177', '0', '3');
INSERT INTO `shop_area` VALUES ('2166', '苍南县', '177', '0', '3');
INSERT INTO `shop_area` VALUES ('2167', '鹿城区', '177', '0', '3');
INSERT INTO `shop_area` VALUES ('2168', '龙湾区', '177', '0', '3');
INSERT INTO `shop_area` VALUES ('2169', '南湖区', '178', '0', '3');
INSERT INTO `shop_area` VALUES ('2170', '嘉善县', '178', '0', '3');
INSERT INTO `shop_area` VALUES ('2171', '平湖市', '178', '0', '3');
INSERT INTO `shop_area` VALUES ('2172', '桐乡市', '178', '0', '3');
INSERT INTO `shop_area` VALUES ('2173', '海宁市', '178', '0', '3');
INSERT INTO `shop_area` VALUES ('2174', '海盐县', '178', '0', '3');
INSERT INTO `shop_area` VALUES ('2175', '秀洲区', '178', '0', '3');
INSERT INTO `shop_area` VALUES ('2176', '南浔区', '179', '0', '3');
INSERT INTO `shop_area` VALUES ('2177', '吴兴区', '179', '0', '3');
INSERT INTO `shop_area` VALUES ('2178', '安吉县', '179', '0', '3');
INSERT INTO `shop_area` VALUES ('2179', '德清县', '179', '0', '3');
INSERT INTO `shop_area` VALUES ('2180', '长兴县', '179', '0', '3');
INSERT INTO `shop_area` VALUES ('2181', '上虞市', '180', '0', '3');
INSERT INTO `shop_area` VALUES ('2182', '嵊州市', '180', '0', '3');
INSERT INTO `shop_area` VALUES ('2183', '新昌县', '180', '0', '3');
INSERT INTO `shop_area` VALUES ('2184', '绍兴县', '180', '0', '3');
INSERT INTO `shop_area` VALUES ('2185', '诸暨市', '180', '0', '3');
INSERT INTO `shop_area` VALUES ('2186', '越城区', '180', '0', '3');
INSERT INTO `shop_area` VALUES ('2187', '定海区', '181', '0', '3');
INSERT INTO `shop_area` VALUES ('2188', '岱山县', '181', '0', '3');
INSERT INTO `shop_area` VALUES ('2189', '嵊泗县', '181', '0', '3');
INSERT INTO `shop_area` VALUES ('2190', '普陀区', '181', '0', '3');
INSERT INTO `shop_area` VALUES ('2191', '常山县', '182', '0', '3');
INSERT INTO `shop_area` VALUES ('2192', '开化县', '182', '0', '3');
INSERT INTO `shop_area` VALUES ('2193', '柯城区', '182', '0', '3');
INSERT INTO `shop_area` VALUES ('2194', '江山市', '182', '0', '3');
INSERT INTO `shop_area` VALUES ('2195', '衢江区', '182', '0', '3');
INSERT INTO `shop_area` VALUES ('2196', '龙游县', '182', '0', '3');
INSERT INTO `shop_area` VALUES ('2197', '东阳市', '183', '0', '3');
INSERT INTO `shop_area` VALUES ('2198', '义乌市', '183', '0', '3');
INSERT INTO `shop_area` VALUES ('2199', '兰溪市', '183', '0', '3');
INSERT INTO `shop_area` VALUES ('2200', '婺城区', '183', '0', '3');
INSERT INTO `shop_area` VALUES ('2201', '武义县', '183', '0', '3');
INSERT INTO `shop_area` VALUES ('2202', '永康市', '183', '0', '3');
INSERT INTO `shop_area` VALUES ('2203', '浦江县', '183', '0', '3');
INSERT INTO `shop_area` VALUES ('2204', '磐安县', '183', '0', '3');
INSERT INTO `shop_area` VALUES ('2205', '金东区', '183', '0', '3');
INSERT INTO `shop_area` VALUES ('2206', '三门县', '184', '0', '3');
INSERT INTO `shop_area` VALUES ('2207', '临海市', '184', '0', '3');
INSERT INTO `shop_area` VALUES ('2208', '仙居县', '184', '0', '3');
INSERT INTO `shop_area` VALUES ('2209', '天台县', '184', '0', '3');
INSERT INTO `shop_area` VALUES ('2210', '椒江区', '184', '0', '3');
INSERT INTO `shop_area` VALUES ('2211', '温岭市', '184', '0', '3');
INSERT INTO `shop_area` VALUES ('2212', '玉环县', '184', '0', '3');
INSERT INTO `shop_area` VALUES ('2213', '路桥区', '184', '0', '3');
INSERT INTO `shop_area` VALUES ('2214', '黄岩区', '184', '0', '3');
INSERT INTO `shop_area` VALUES ('2215', '云和县', '185', '0', '3');
INSERT INTO `shop_area` VALUES ('2216', '庆元县', '185', '0', '3');
INSERT INTO `shop_area` VALUES ('2217', '景宁畲族自治县', '185', '0', '3');
INSERT INTO `shop_area` VALUES ('2218', '松阳县', '185', '0', '3');
INSERT INTO `shop_area` VALUES ('2219', '缙云县', '185', '0', '3');
INSERT INTO `shop_area` VALUES ('2220', '莲都区', '185', '0', '3');
INSERT INTO `shop_area` VALUES ('2221', '遂昌县', '185', '0', '3');
INSERT INTO `shop_area` VALUES ('2222', '青田县', '185', '0', '3');
INSERT INTO `shop_area` VALUES ('2223', '龙泉市', '185', '0', '3');
INSERT INTO `shop_area` VALUES ('2224', '包河区', '186', '0', '3');
INSERT INTO `shop_area` VALUES ('2225', '庐阳区', '186', '0', '3');
INSERT INTO `shop_area` VALUES ('2226', '瑶海区', '186', '0', '3');
INSERT INTO `shop_area` VALUES ('2227', '肥东县', '186', '0', '3');
INSERT INTO `shop_area` VALUES ('2228', '肥西县', '186', '0', '3');
INSERT INTO `shop_area` VALUES ('2229', '蜀山区', '186', '0', '3');
INSERT INTO `shop_area` VALUES ('2230', '长丰县', '186', '0', '3');
INSERT INTO `shop_area` VALUES ('2231', '三山区', '187', '0', '3');
INSERT INTO `shop_area` VALUES ('2232', '南陵县', '187', '0', '3');
INSERT INTO `shop_area` VALUES ('2233', '弋江区', '187', '0', '3');
INSERT INTO `shop_area` VALUES ('2234', '繁昌县', '187', '0', '3');
INSERT INTO `shop_area` VALUES ('2235', '芜湖县', '187', '0', '3');
INSERT INTO `shop_area` VALUES ('2236', '镜湖区', '187', '0', '3');
INSERT INTO `shop_area` VALUES ('2237', '鸠江区', '187', '0', '3');
INSERT INTO `shop_area` VALUES ('2238', '五河县', '188', '0', '3');
INSERT INTO `shop_area` VALUES ('2239', '固镇县', '188', '0', '3');
INSERT INTO `shop_area` VALUES ('2240', '怀远县', '188', '0', '3');
INSERT INTO `shop_area` VALUES ('2241', '淮上区', '188', '0', '3');
INSERT INTO `shop_area` VALUES ('2242', '禹会区', '188', '0', '3');
INSERT INTO `shop_area` VALUES ('2243', '蚌山区', '188', '0', '3');
INSERT INTO `shop_area` VALUES ('2244', '龙子湖区', '188', '0', '3');
INSERT INTO `shop_area` VALUES ('2245', '八公山区', '189', '0', '3');
INSERT INTO `shop_area` VALUES ('2246', '凤台县', '189', '0', '3');
INSERT INTO `shop_area` VALUES ('2247', '大通区', '189', '0', '3');
INSERT INTO `shop_area` VALUES ('2248', '潘集区', '189', '0', '3');
INSERT INTO `shop_area` VALUES ('2249', '田家庵区', '189', '0', '3');
INSERT INTO `shop_area` VALUES ('2250', '谢家集区', '189', '0', '3');
INSERT INTO `shop_area` VALUES ('2251', '当涂县', '190', '0', '3');
INSERT INTO `shop_area` VALUES ('2252', '花山区', '190', '0', '3');
INSERT INTO `shop_area` VALUES ('2253', '金家庄区', '190', '0', '3');
INSERT INTO `shop_area` VALUES ('2254', '雨山区', '190', '0', '3');
INSERT INTO `shop_area` VALUES ('2255', '杜集区', '191', '0', '3');
INSERT INTO `shop_area` VALUES ('2256', '濉溪县', '191', '0', '3');
INSERT INTO `shop_area` VALUES ('2257', '烈山区', '191', '0', '3');
INSERT INTO `shop_area` VALUES ('2258', '相山区', '191', '0', '3');
INSERT INTO `shop_area` VALUES ('2259', '狮子山区', '192', '0', '3');
INSERT INTO `shop_area` VALUES ('2260', '郊区', '192', '0', '3');
INSERT INTO `shop_area` VALUES ('2261', '铜官山区', '192', '0', '3');
INSERT INTO `shop_area` VALUES ('2262', '铜陵县', '192', '0', '3');
INSERT INTO `shop_area` VALUES ('2263', '大观区', '193', '0', '3');
INSERT INTO `shop_area` VALUES ('2264', '太湖县', '193', '0', '3');
INSERT INTO `shop_area` VALUES ('2265', '宜秀区', '193', '0', '3');
INSERT INTO `shop_area` VALUES ('2266', '宿松县', '193', '0', '3');
INSERT INTO `shop_area` VALUES ('2267', '岳西县', '193', '0', '3');
INSERT INTO `shop_area` VALUES ('2268', '怀宁县', '193', '0', '3');
INSERT INTO `shop_area` VALUES ('2269', '望江县', '193', '0', '3');
INSERT INTO `shop_area` VALUES ('2270', '枞阳县', '193', '0', '3');
INSERT INTO `shop_area` VALUES ('2271', '桐城市', '193', '0', '3');
INSERT INTO `shop_area` VALUES ('2272', '潜山县', '193', '0', '3');
INSERT INTO `shop_area` VALUES ('2273', '迎江区', '193', '0', '3');
INSERT INTO `shop_area` VALUES ('2274', '休宁县', '194', '0', '3');
INSERT INTO `shop_area` VALUES ('2275', '屯溪区', '194', '0', '3');
INSERT INTO `shop_area` VALUES ('2276', '徽州区', '194', '0', '3');
INSERT INTO `shop_area` VALUES ('2277', '歙县', '194', '0', '3');
INSERT INTO `shop_area` VALUES ('2278', '祁门县', '194', '0', '3');
INSERT INTO `shop_area` VALUES ('2279', '黄山区', '194', '0', '3');
INSERT INTO `shop_area` VALUES ('2280', '黟县', '194', '0', '3');
INSERT INTO `shop_area` VALUES ('2281', '全椒县', '195', '0', '3');
INSERT INTO `shop_area` VALUES ('2282', '凤阳县', '195', '0', '3');
INSERT INTO `shop_area` VALUES ('2283', '南谯区', '195', '0', '3');
INSERT INTO `shop_area` VALUES ('2284', '天长市', '195', '0', '3');
INSERT INTO `shop_area` VALUES ('2285', '定远县', '195', '0', '3');
INSERT INTO `shop_area` VALUES ('2286', '明光市', '195', '0', '3');
INSERT INTO `shop_area` VALUES ('2287', '来安县', '195', '0', '3');
INSERT INTO `shop_area` VALUES ('2288', '琅玡区', '195', '0', '3');
INSERT INTO `shop_area` VALUES ('2289', '临泉县', '196', '0', '3');
INSERT INTO `shop_area` VALUES ('2290', '太和县', '196', '0', '3');
INSERT INTO `shop_area` VALUES ('2291', '界首市', '196', '0', '3');
INSERT INTO `shop_area` VALUES ('2292', '阜南县', '196', '0', '3');
INSERT INTO `shop_area` VALUES ('2293', '颍东区', '196', '0', '3');
INSERT INTO `shop_area` VALUES ('2294', '颍州区', '196', '0', '3');
INSERT INTO `shop_area` VALUES ('2295', '颍泉区', '196', '0', '3');
INSERT INTO `shop_area` VALUES ('2296', '颖上县', '196', '0', '3');
INSERT INTO `shop_area` VALUES ('2297', '埇桥区', '197', '0', '3');
INSERT INTO `shop_area` VALUES ('2298', '泗县辖', '197', '0', '3');
INSERT INTO `shop_area` VALUES ('2299', '灵璧县', '197', '0', '3');
INSERT INTO `shop_area` VALUES ('2300', '砀山县', '197', '0', '3');
INSERT INTO `shop_area` VALUES ('2301', '萧县', '197', '0', '3');
INSERT INTO `shop_area` VALUES ('2302', '含山县', '198', '0', '3');
INSERT INTO `shop_area` VALUES ('2303', '和县', '198', '0', '3');
INSERT INTO `shop_area` VALUES ('2304', '居巢区', '198', '0', '3');
INSERT INTO `shop_area` VALUES ('2305', '庐江县', '198', '0', '3');
INSERT INTO `shop_area` VALUES ('2306', '无为县', '198', '0', '3');
INSERT INTO `shop_area` VALUES ('2307', '寿县', '199', '0', '3');
INSERT INTO `shop_area` VALUES ('2308', '舒城县', '199', '0', '3');
INSERT INTO `shop_area` VALUES ('2309', '裕安区', '199', '0', '3');
INSERT INTO `shop_area` VALUES ('2310', '金安区', '199', '0', '3');
INSERT INTO `shop_area` VALUES ('2311', '金寨县', '199', '0', '3');
INSERT INTO `shop_area` VALUES ('2312', '霍山县', '199', '0', '3');
INSERT INTO `shop_area` VALUES ('2313', '霍邱县', '199', '0', '3');
INSERT INTO `shop_area` VALUES ('2314', '利辛县', '200', '0', '3');
INSERT INTO `shop_area` VALUES ('2315', '涡阳县', '200', '0', '3');
INSERT INTO `shop_area` VALUES ('2316', '蒙城县', '200', '0', '3');
INSERT INTO `shop_area` VALUES ('2317', '谯城区', '200', '0', '3');
INSERT INTO `shop_area` VALUES ('2318', '东至县', '201', '0', '3');
INSERT INTO `shop_area` VALUES ('2319', '石台县', '201', '0', '3');
INSERT INTO `shop_area` VALUES ('2320', '贵池区', '201', '0', '3');
INSERT INTO `shop_area` VALUES ('2321', '青阳县', '201', '0', '3');
INSERT INTO `shop_area` VALUES ('2322', '宁国市', '202', '0', '3');
INSERT INTO `shop_area` VALUES ('2323', '宣州区', '202', '0', '3');
INSERT INTO `shop_area` VALUES ('2324', '广德县', '202', '0', '3');
INSERT INTO `shop_area` VALUES ('2325', '旌德县', '202', '0', '3');
INSERT INTO `shop_area` VALUES ('2326', '泾县', '202', '0', '3');
INSERT INTO `shop_area` VALUES ('2327', '绩溪县', '202', '0', '3');
INSERT INTO `shop_area` VALUES ('2328', '郎溪县', '202', '0', '3');
INSERT INTO `shop_area` VALUES ('2329', '仓山区', '203', '0', '3');
INSERT INTO `shop_area` VALUES ('2330', '台江区', '203', '0', '3');
INSERT INTO `shop_area` VALUES ('2331', '平潭县', '203', '0', '3');
INSERT INTO `shop_area` VALUES ('2332', '晋安区', '203', '0', '3');
INSERT INTO `shop_area` VALUES ('2333', '永泰县', '203', '0', '3');
INSERT INTO `shop_area` VALUES ('2334', '福清市', '203', '0', '3');
INSERT INTO `shop_area` VALUES ('2335', '罗源县', '203', '0', '3');
INSERT INTO `shop_area` VALUES ('2336', '连江县', '203', '0', '3');
INSERT INTO `shop_area` VALUES ('2337', '长乐市', '203', '0', '3');
INSERT INTO `shop_area` VALUES ('2338', '闽侯县', '203', '0', '3');
INSERT INTO `shop_area` VALUES ('2339', '闽清县', '203', '0', '3');
INSERT INTO `shop_area` VALUES ('2340', '马尾区', '203', '0', '3');
INSERT INTO `shop_area` VALUES ('2341', '鼓楼区', '203', '0', '3');
INSERT INTO `shop_area` VALUES ('2342', '同安区', '204', '0', '3');
INSERT INTO `shop_area` VALUES ('2343', '思明区', '204', '0', '3');
INSERT INTO `shop_area` VALUES ('2344', '海沧区', '204', '0', '3');
INSERT INTO `shop_area` VALUES ('2345', '湖里区', '204', '0', '3');
INSERT INTO `shop_area` VALUES ('2346', '翔安区', '204', '0', '3');
INSERT INTO `shop_area` VALUES ('2347', '集美区', '204', '0', '3');
INSERT INTO `shop_area` VALUES ('2348', '仙游县', '205', '0', '3');
INSERT INTO `shop_area` VALUES ('2349', '城厢区', '205', '0', '3');
INSERT INTO `shop_area` VALUES ('2350', '涵江区', '205', '0', '3');
INSERT INTO `shop_area` VALUES ('2351', '秀屿区', '205', '0', '3');
INSERT INTO `shop_area` VALUES ('2352', '荔城区', '205', '0', '3');
INSERT INTO `shop_area` VALUES ('2353', '三元区', '206', '0', '3');
INSERT INTO `shop_area` VALUES ('2354', '大田县', '206', '0', '3');
INSERT INTO `shop_area` VALUES ('2355', '宁化县', '206', '0', '3');
INSERT INTO `shop_area` VALUES ('2356', '将乐县', '206', '0', '3');
INSERT INTO `shop_area` VALUES ('2357', '尤溪县', '206', '0', '3');
INSERT INTO `shop_area` VALUES ('2358', '建宁县', '206', '0', '3');
INSERT INTO `shop_area` VALUES ('2359', '明溪县', '206', '0', '3');
INSERT INTO `shop_area` VALUES ('2360', '梅列区', '206', '0', '3');
INSERT INTO `shop_area` VALUES ('2361', '永安市', '206', '0', '3');
INSERT INTO `shop_area` VALUES ('2362', '沙县', '206', '0', '3');
INSERT INTO `shop_area` VALUES ('2363', '泰宁县', '206', '0', '3');
INSERT INTO `shop_area` VALUES ('2364', '清流县', '206', '0', '3');
INSERT INTO `shop_area` VALUES ('2365', '丰泽区', '207', '0', '3');
INSERT INTO `shop_area` VALUES ('2366', '南安市', '207', '0', '3');
INSERT INTO `shop_area` VALUES ('2367', '安溪县', '207', '0', '3');
INSERT INTO `shop_area` VALUES ('2368', '德化县', '207', '0', '3');
INSERT INTO `shop_area` VALUES ('2369', '惠安县', '207', '0', '3');
INSERT INTO `shop_area` VALUES ('2370', '晋江市', '207', '0', '3');
INSERT INTO `shop_area` VALUES ('2371', '永春县', '207', '0', '3');
INSERT INTO `shop_area` VALUES ('2372', '泉港区', '207', '0', '3');
INSERT INTO `shop_area` VALUES ('2373', '洛江区', '207', '0', '3');
INSERT INTO `shop_area` VALUES ('2374', '石狮市', '207', '0', '3');
INSERT INTO `shop_area` VALUES ('2375', '金门县', '207', '0', '3');
INSERT INTO `shop_area` VALUES ('2376', '鲤城区', '207', '0', '3');
INSERT INTO `shop_area` VALUES ('2377', '东山县', '208', '0', '3');
INSERT INTO `shop_area` VALUES ('2378', '云霄县', '208', '0', '3');
INSERT INTO `shop_area` VALUES ('2379', '华安县', '208', '0', '3');
INSERT INTO `shop_area` VALUES ('2380', '南靖县', '208', '0', '3');
INSERT INTO `shop_area` VALUES ('2381', '平和县', '208', '0', '3');
INSERT INTO `shop_area` VALUES ('2382', '漳浦县', '208', '0', '3');
INSERT INTO `shop_area` VALUES ('2383', '芗城区', '208', '0', '3');
INSERT INTO `shop_area` VALUES ('2384', '诏安县', '208', '0', '3');
INSERT INTO `shop_area` VALUES ('2385', '长泰县', '208', '0', '3');
INSERT INTO `shop_area` VALUES ('2386', '龙文区', '208', '0', '3');
INSERT INTO `shop_area` VALUES ('2387', '龙海市', '208', '0', '3');
INSERT INTO `shop_area` VALUES ('2388', '光泽县', '209', '0', '3');
INSERT INTO `shop_area` VALUES ('2389', '延平区', '209', '0', '3');
INSERT INTO `shop_area` VALUES ('2390', '建瓯市', '209', '0', '3');
INSERT INTO `shop_area` VALUES ('2391', '建阳市', '209', '0', '3');
INSERT INTO `shop_area` VALUES ('2392', '政和县', '209', '0', '3');
INSERT INTO `shop_area` VALUES ('2393', '松溪县', '209', '0', '3');
INSERT INTO `shop_area` VALUES ('2394', '武夷山市', '209', '0', '3');
INSERT INTO `shop_area` VALUES ('2395', '浦城县', '209', '0', '3');
INSERT INTO `shop_area` VALUES ('2396', '邵武市', '209', '0', '3');
INSERT INTO `shop_area` VALUES ('2397', '顺昌县', '209', '0', '3');
INSERT INTO `shop_area` VALUES ('2398', '上杭县', '210', '0', '3');
INSERT INTO `shop_area` VALUES ('2399', '新罗区', '210', '0', '3');
INSERT INTO `shop_area` VALUES ('2400', '武平县', '210', '0', '3');
INSERT INTO `shop_area` VALUES ('2401', '永定县', '210', '0', '3');
INSERT INTO `shop_area` VALUES ('2402', '漳平市', '210', '0', '3');
INSERT INTO `shop_area` VALUES ('2403', '连城县', '210', '0', '3');
INSERT INTO `shop_area` VALUES ('2404', '长汀县', '210', '0', '3');
INSERT INTO `shop_area` VALUES ('2405', '古田县', '211', '0', '3');
INSERT INTO `shop_area` VALUES ('2406', '周宁县', '211', '0', '3');
INSERT INTO `shop_area` VALUES ('2407', '寿宁县', '211', '0', '3');
INSERT INTO `shop_area` VALUES ('2408', '屏南县', '211', '0', '3');
INSERT INTO `shop_area` VALUES ('2409', '柘荣县', '211', '0', '3');
INSERT INTO `shop_area` VALUES ('2410', '福安市', '211', '0', '3');
INSERT INTO `shop_area` VALUES ('2411', '福鼎市', '211', '0', '3');
INSERT INTO `shop_area` VALUES ('2412', '蕉城区', '211', '0', '3');
INSERT INTO `shop_area` VALUES ('2413', '霞浦县', '211', '0', '3');
INSERT INTO `shop_area` VALUES ('2414', '东湖区', '212', '0', '3');
INSERT INTO `shop_area` VALUES ('2415', '南昌县', '212', '0', '3');
INSERT INTO `shop_area` VALUES ('2416', '安义县', '212', '0', '3');
INSERT INTO `shop_area` VALUES ('2417', '新建县', '212', '0', '3');
INSERT INTO `shop_area` VALUES ('2418', '湾里区', '212', '0', '3');
INSERT INTO `shop_area` VALUES ('2419', '西湖区', '212', '0', '3');
INSERT INTO `shop_area` VALUES ('2420', '进贤县', '212', '0', '3');
INSERT INTO `shop_area` VALUES ('2421', '青云谱区', '212', '0', '3');
INSERT INTO `shop_area` VALUES ('2422', '青山湖区', '212', '0', '3');
INSERT INTO `shop_area` VALUES ('2423', '乐平市', '213', '0', '3');
INSERT INTO `shop_area` VALUES ('2424', '昌江区', '213', '0', '3');
INSERT INTO `shop_area` VALUES ('2425', '浮梁县', '213', '0', '3');
INSERT INTO `shop_area` VALUES ('2426', '珠山区', '213', '0', '3');
INSERT INTO `shop_area` VALUES ('2427', '上栗县', '214', '0', '3');
INSERT INTO `shop_area` VALUES ('2428', '安源区', '214', '0', '3');
INSERT INTO `shop_area` VALUES ('2429', '湘东区', '214', '0', '3');
INSERT INTO `shop_area` VALUES ('2430', '芦溪县', '214', '0', '3');
INSERT INTO `shop_area` VALUES ('2431', '莲花县', '214', '0', '3');
INSERT INTO `shop_area` VALUES ('2432', '九江县', '215', '0', '3');
INSERT INTO `shop_area` VALUES ('2433', '修水县', '215', '0', '3');
INSERT INTO `shop_area` VALUES ('2434', '庐山区', '215', '0', '3');
INSERT INTO `shop_area` VALUES ('2435', '彭泽县', '215', '0', '3');
INSERT INTO `shop_area` VALUES ('2436', '德安县', '215', '0', '3');
INSERT INTO `shop_area` VALUES ('2437', '星子县', '215', '0', '3');
INSERT INTO `shop_area` VALUES ('2438', '武宁县', '215', '0', '3');
INSERT INTO `shop_area` VALUES ('2439', '永修县', '215', '0', '3');
INSERT INTO `shop_area` VALUES ('2440', '浔阳区', '215', '0', '3');
INSERT INTO `shop_area` VALUES ('2441', '湖口县', '215', '0', '3');
INSERT INTO `shop_area` VALUES ('2442', '瑞昌市', '215', '0', '3');
INSERT INTO `shop_area` VALUES ('2443', '都昌县', '215', '0', '3');
INSERT INTO `shop_area` VALUES ('2444', '分宜县', '216', '0', '3');
INSERT INTO `shop_area` VALUES ('2445', '渝水区', '216', '0', '3');
INSERT INTO `shop_area` VALUES ('2446', '余江县', '217', '0', '3');
INSERT INTO `shop_area` VALUES ('2447', '月湖区', '217', '0', '3');
INSERT INTO `shop_area` VALUES ('2448', '贵溪市', '217', '0', '3');
INSERT INTO `shop_area` VALUES ('2449', '上犹县', '218', '0', '3');
INSERT INTO `shop_area` VALUES ('2450', '于都县', '218', '0', '3');
INSERT INTO `shop_area` VALUES ('2451', '会昌县', '218', '0', '3');
INSERT INTO `shop_area` VALUES ('2452', '信丰县', '218', '0', '3');
INSERT INTO `shop_area` VALUES ('2453', '全南县', '218', '0', '3');
INSERT INTO `shop_area` VALUES ('2454', '兴国县', '218', '0', '3');
INSERT INTO `shop_area` VALUES ('2455', '南康市', '218', '0', '3');
INSERT INTO `shop_area` VALUES ('2456', '大余县', '218', '0', '3');
INSERT INTO `shop_area` VALUES ('2457', '宁都县', '218', '0', '3');
INSERT INTO `shop_area` VALUES ('2458', '安远县', '218', '0', '3');
INSERT INTO `shop_area` VALUES ('2459', '定南县', '218', '0', '3');
INSERT INTO `shop_area` VALUES ('2460', '寻乌县', '218', '0', '3');
INSERT INTO `shop_area` VALUES ('2461', '崇义县', '218', '0', '3');
INSERT INTO `shop_area` VALUES ('2462', '瑞金市', '218', '0', '3');
INSERT INTO `shop_area` VALUES ('2463', '石城县', '218', '0', '3');
INSERT INTO `shop_area` VALUES ('2464', '章贡区', '218', '0', '3');
INSERT INTO `shop_area` VALUES ('2465', '赣县', '218', '0', '3');
INSERT INTO `shop_area` VALUES ('2466', '龙南县', '218', '0', '3');
INSERT INTO `shop_area` VALUES ('2467', '万安县', '219', '0', '3');
INSERT INTO `shop_area` VALUES ('2468', '井冈山市', '219', '0', '3');
INSERT INTO `shop_area` VALUES ('2469', '吉安县', '219', '0', '3');
INSERT INTO `shop_area` VALUES ('2470', '吉州区', '219', '0', '3');
INSERT INTO `shop_area` VALUES ('2471', '吉水县', '219', '0', '3');
INSERT INTO `shop_area` VALUES ('2472', '安福县', '219', '0', '3');
INSERT INTO `shop_area` VALUES ('2473', '峡江县', '219', '0', '3');
INSERT INTO `shop_area` VALUES ('2474', '新干县', '219', '0', '3');
INSERT INTO `shop_area` VALUES ('2475', '永丰县', '219', '0', '3');
INSERT INTO `shop_area` VALUES ('2476', '永新县', '219', '0', '3');
INSERT INTO `shop_area` VALUES ('2477', '泰和县', '219', '0', '3');
INSERT INTO `shop_area` VALUES ('2478', '遂川县', '219', '0', '3');
INSERT INTO `shop_area` VALUES ('2479', '青原区', '219', '0', '3');
INSERT INTO `shop_area` VALUES ('2480', '万载县', '220', '0', '3');
INSERT INTO `shop_area` VALUES ('2481', '上高县', '220', '0', '3');
INSERT INTO `shop_area` VALUES ('2482', '丰城市', '220', '0', '3');
INSERT INTO `shop_area` VALUES ('2483', '奉新县', '220', '0', '3');
INSERT INTO `shop_area` VALUES ('2484', '宜丰县', '220', '0', '3');
INSERT INTO `shop_area` VALUES ('2485', '樟树市', '220', '0', '3');
INSERT INTO `shop_area` VALUES ('2486', '袁州区', '220', '0', '3');
INSERT INTO `shop_area` VALUES ('2487', '铜鼓县', '220', '0', '3');
INSERT INTO `shop_area` VALUES ('2488', '靖安县', '220', '0', '3');
INSERT INTO `shop_area` VALUES ('2489', '高安市', '220', '0', '3');
INSERT INTO `shop_area` VALUES ('2490', '东乡县', '221', '0', '3');
INSERT INTO `shop_area` VALUES ('2491', '临川区', '221', '0', '3');
INSERT INTO `shop_area` VALUES ('2492', '乐安县', '221', '0', '3');
INSERT INTO `shop_area` VALUES ('2493', '南丰县', '221', '0', '3');
INSERT INTO `shop_area` VALUES ('2494', '南城县', '221', '0', '3');
INSERT INTO `shop_area` VALUES ('2495', '宜黄县', '221', '0', '3');
INSERT INTO `shop_area` VALUES ('2496', '崇仁县', '221', '0', '3');
INSERT INTO `shop_area` VALUES ('2497', '广昌县', '221', '0', '3');
INSERT INTO `shop_area` VALUES ('2498', '资溪县', '221', '0', '3');
INSERT INTO `shop_area` VALUES ('2499', '金溪县', '221', '0', '3');
INSERT INTO `shop_area` VALUES ('2500', '黎川县', '221', '0', '3');
INSERT INTO `shop_area` VALUES ('2501', '万年县', '222', '0', '3');
INSERT INTO `shop_area` VALUES ('2502', '上饶县', '222', '0', '3');
INSERT INTO `shop_area` VALUES ('2503', '余干县', '222', '0', '3');
INSERT INTO `shop_area` VALUES ('2504', '信州区', '222', '0', '3');
INSERT INTO `shop_area` VALUES ('2505', '婺源县', '222', '0', '3');
INSERT INTO `shop_area` VALUES ('2506', '广丰县', '222', '0', '3');
INSERT INTO `shop_area` VALUES ('2507', '弋阳县', '222', '0', '3');
INSERT INTO `shop_area` VALUES ('2508', '德兴市', '222', '0', '3');
INSERT INTO `shop_area` VALUES ('2509', '横峰县', '222', '0', '3');
INSERT INTO `shop_area` VALUES ('2510', '玉山县', '222', '0', '3');
INSERT INTO `shop_area` VALUES ('2511', '鄱阳县', '222', '0', '3');
INSERT INTO `shop_area` VALUES ('2512', '铅山县', '222', '0', '3');
INSERT INTO `shop_area` VALUES ('2513', '历下区', '223', '0', '3');
INSERT INTO `shop_area` VALUES ('2514', '历城区', '223', '0', '3');
INSERT INTO `shop_area` VALUES ('2515', '商河县', '223', '0', '3');
INSERT INTO `shop_area` VALUES ('2516', '天桥区', '223', '0', '3');
INSERT INTO `shop_area` VALUES ('2517', '市中区', '223', '0', '3');
INSERT INTO `shop_area` VALUES ('2518', '平阴县', '223', '0', '3');
INSERT INTO `shop_area` VALUES ('2519', '槐荫区', '223', '0', '3');
INSERT INTO `shop_area` VALUES ('2520', '济阳县', '223', '0', '3');
INSERT INTO `shop_area` VALUES ('2521', '章丘市', '223', '0', '3');
INSERT INTO `shop_area` VALUES ('2522', '长清区', '223', '0', '3');
INSERT INTO `shop_area` VALUES ('2523', '即墨市', '224', '0', '3');
INSERT INTO `shop_area` VALUES ('2524', '四方区', '224', '0', '3');
INSERT INTO `shop_area` VALUES ('2525', '城阳区', '224', '0', '3');
INSERT INTO `shop_area` VALUES ('2526', '崂山区', '224', '0', '3');
INSERT INTO `shop_area` VALUES ('2527', '市北区', '224', '0', '3');
INSERT INTO `shop_area` VALUES ('2528', '市南区', '224', '0', '3');
INSERT INTO `shop_area` VALUES ('2529', '平度市', '224', '0', '3');
INSERT INTO `shop_area` VALUES ('2530', '李沧区', '224', '0', '3');
INSERT INTO `shop_area` VALUES ('2531', '胶南市', '224', '0', '3');
INSERT INTO `shop_area` VALUES ('2532', '胶州市', '224', '0', '3');
INSERT INTO `shop_area` VALUES ('2533', '莱西市', '224', '0', '3');
INSERT INTO `shop_area` VALUES ('2534', '黄岛区', '224', '0', '3');
INSERT INTO `shop_area` VALUES ('2535', '临淄区', '225', '0', '3');
INSERT INTO `shop_area` VALUES ('2536', '博山区', '225', '0', '3');
INSERT INTO `shop_area` VALUES ('2537', '周村区', '225', '0', '3');
INSERT INTO `shop_area` VALUES ('2538', '张店区', '225', '0', '3');
INSERT INTO `shop_area` VALUES ('2539', '桓台县', '225', '0', '3');
INSERT INTO `shop_area` VALUES ('2540', '沂源县', '225', '0', '3');
INSERT INTO `shop_area` VALUES ('2541', '淄川区', '225', '0', '3');
INSERT INTO `shop_area` VALUES ('2542', '高青县', '225', '0', '3');
INSERT INTO `shop_area` VALUES ('2543', '台儿庄区', '226', '0', '3');
INSERT INTO `shop_area` VALUES ('2544', '山亭区', '226', '0', '3');
INSERT INTO `shop_area` VALUES ('2545', '峄城区', '226', '0', '3');
INSERT INTO `shop_area` VALUES ('2546', '市中区', '226', '0', '3');
INSERT INTO `shop_area` VALUES ('2547', '滕州市', '226', '0', '3');
INSERT INTO `shop_area` VALUES ('2548', '薛城区', '226', '0', '3');
INSERT INTO `shop_area` VALUES ('2549', '东营区', '227', '0', '3');
INSERT INTO `shop_area` VALUES ('2550', '利津县', '227', '0', '3');
INSERT INTO `shop_area` VALUES ('2551', '垦利县', '227', '0', '3');
INSERT INTO `shop_area` VALUES ('2552', '广饶县', '227', '0', '3');
INSERT INTO `shop_area` VALUES ('2553', '河口区', '227', '0', '3');
INSERT INTO `shop_area` VALUES ('2554', '招远市', '228', '0', '3');
INSERT INTO `shop_area` VALUES ('2555', '栖霞市', '228', '0', '3');
INSERT INTO `shop_area` VALUES ('2556', '海阳市', '228', '0', '3');
INSERT INTO `shop_area` VALUES ('2557', '牟平区', '228', '0', '3');
INSERT INTO `shop_area` VALUES ('2558', '福山区', '228', '0', '3');
INSERT INTO `shop_area` VALUES ('2559', '芝罘区', '228', '0', '3');
INSERT INTO `shop_area` VALUES ('2560', '莱山区', '228', '0', '3');
INSERT INTO `shop_area` VALUES ('2561', '莱州市', '228', '0', '3');
INSERT INTO `shop_area` VALUES ('2562', '莱阳市', '228', '0', '3');
INSERT INTO `shop_area` VALUES ('2563', '蓬莱市', '228', '0', '3');
INSERT INTO `shop_area` VALUES ('2564', '长岛县', '228', '0', '3');
INSERT INTO `shop_area` VALUES ('2565', '龙口市', '228', '0', '3');
INSERT INTO `shop_area` VALUES ('2566', '临朐县', '229', '0', '3');
INSERT INTO `shop_area` VALUES ('2567', '坊子区', '229', '0', '3');
INSERT INTO `shop_area` VALUES ('2568', '奎文区', '229', '0', '3');
INSERT INTO `shop_area` VALUES ('2569', '安丘市', '229', '0', '3');
INSERT INTO `shop_area` VALUES ('2570', '寒亭区', '229', '0', '3');
INSERT INTO `shop_area` VALUES ('2571', '寿光市', '229', '0', '3');
INSERT INTO `shop_area` VALUES ('2572', '昌乐县', '229', '0', '3');
INSERT INTO `shop_area` VALUES ('2573', '昌邑市', '229', '0', '3');
INSERT INTO `shop_area` VALUES ('2574', '潍城区', '229', '0', '3');
INSERT INTO `shop_area` VALUES ('2575', '诸城市', '229', '0', '3');
INSERT INTO `shop_area` VALUES ('2576', '青州市', '229', '0', '3');
INSERT INTO `shop_area` VALUES ('2577', '高密市', '229', '0', '3');
INSERT INTO `shop_area` VALUES ('2578', '任城区', '230', '0', '3');
INSERT INTO `shop_area` VALUES ('2579', '兖州市', '230', '0', '3');
INSERT INTO `shop_area` VALUES ('2580', '嘉祥县', '230', '0', '3');
INSERT INTO `shop_area` VALUES ('2581', '市中区', '230', '0', '3');
INSERT INTO `shop_area` VALUES ('2582', '微山县', '230', '0', '3');
INSERT INTO `shop_area` VALUES ('2583', '曲阜市', '230', '0', '3');
INSERT INTO `shop_area` VALUES ('2584', '梁山县', '230', '0', '3');
INSERT INTO `shop_area` VALUES ('2585', '汶上县', '230', '0', '3');
INSERT INTO `shop_area` VALUES ('2586', '泗水县', '230', '0', '3');
INSERT INTO `shop_area` VALUES ('2587', '邹城市', '230', '0', '3');
INSERT INTO `shop_area` VALUES ('2588', '金乡县', '230', '0', '3');
INSERT INTO `shop_area` VALUES ('2589', '鱼台县', '230', '0', '3');
INSERT INTO `shop_area` VALUES ('2590', '东平县', '231', '0', '3');
INSERT INTO `shop_area` VALUES ('2591', '宁阳县', '231', '0', '3');
INSERT INTO `shop_area` VALUES ('2592', '岱岳区', '231', '0', '3');
INSERT INTO `shop_area` VALUES ('2593', '新泰市', '231', '0', '3');
INSERT INTO `shop_area` VALUES ('2594', '泰山区', '231', '0', '3');
INSERT INTO `shop_area` VALUES ('2595', '肥城市', '231', '0', '3');
INSERT INTO `shop_area` VALUES ('2596', '乳山市', '232', '0', '3');
INSERT INTO `shop_area` VALUES ('2597', '文登市', '232', '0', '3');
INSERT INTO `shop_area` VALUES ('2598', '环翠区', '232', '0', '3');
INSERT INTO `shop_area` VALUES ('2599', '荣成市', '232', '0', '3');
INSERT INTO `shop_area` VALUES ('2600', '东港区', '233', '0', '3');
INSERT INTO `shop_area` VALUES ('2601', '五莲县', '233', '0', '3');
INSERT INTO `shop_area` VALUES ('2602', '岚山区', '233', '0', '3');
INSERT INTO `shop_area` VALUES ('2603', '莒县', '233', '0', '3');
INSERT INTO `shop_area` VALUES ('2604', '莱城区', '234', '0', '3');
INSERT INTO `shop_area` VALUES ('2605', '钢城区', '234', '0', '3');
INSERT INTO `shop_area` VALUES ('2606', '临沭县', '235', '0', '3');
INSERT INTO `shop_area` VALUES ('2607', '兰山区', '235', '0', '3');
INSERT INTO `shop_area` VALUES ('2608', '平邑县', '235', '0', '3');
INSERT INTO `shop_area` VALUES ('2609', '沂南县', '235', '0', '3');
INSERT INTO `shop_area` VALUES ('2610', '沂水县', '235', '0', '3');
INSERT INTO `shop_area` VALUES ('2611', '河东区', '235', '0', '3');
INSERT INTO `shop_area` VALUES ('2612', '罗庄区', '235', '0', '3');
INSERT INTO `shop_area` VALUES ('2613', '苍山县', '235', '0', '3');
INSERT INTO `shop_area` VALUES ('2614', '莒南县', '235', '0', '3');
INSERT INTO `shop_area` VALUES ('2615', '蒙阴县', '235', '0', '3');
INSERT INTO `shop_area` VALUES ('2616', '费县', '235', '0', '3');
INSERT INTO `shop_area` VALUES ('2617', '郯城县', '235', '0', '3');
INSERT INTO `shop_area` VALUES ('2618', '临邑县', '236', '0', '3');
INSERT INTO `shop_area` VALUES ('2619', '乐陵市', '236', '0', '3');
INSERT INTO `shop_area` VALUES ('2620', '夏津县', '236', '0', '3');
INSERT INTO `shop_area` VALUES ('2621', '宁津县', '236', '0', '3');
INSERT INTO `shop_area` VALUES ('2622', '平原县', '236', '0', '3');
INSERT INTO `shop_area` VALUES ('2623', '庆云县', '236', '0', '3');
INSERT INTO `shop_area` VALUES ('2624', '德城区', '236', '0', '3');
INSERT INTO `shop_area` VALUES ('2625', '武城县', '236', '0', '3');
INSERT INTO `shop_area` VALUES ('2626', '禹城市', '236', '0', '3');
INSERT INTO `shop_area` VALUES ('2627', '陵县', '236', '0', '3');
INSERT INTO `shop_area` VALUES ('2628', '齐河县', '236', '0', '3');
INSERT INTO `shop_area` VALUES ('2629', '东昌府区', '237', '0', '3');
INSERT INTO `shop_area` VALUES ('2630', '东阿县', '237', '0', '3');
INSERT INTO `shop_area` VALUES ('2631', '临清市', '237', '0', '3');
INSERT INTO `shop_area` VALUES ('2632', '冠县', '237', '0', '3');
INSERT INTO `shop_area` VALUES ('2633', '茌平县', '237', '0', '3');
INSERT INTO `shop_area` VALUES ('2634', '莘县', '237', '0', '3');
INSERT INTO `shop_area` VALUES ('2635', '阳谷县', '237', '0', '3');
INSERT INTO `shop_area` VALUES ('2636', '高唐县', '237', '0', '3');
INSERT INTO `shop_area` VALUES ('2637', '博兴县', '238', '0', '3');
INSERT INTO `shop_area` VALUES ('2638', '惠民县', '238', '0', '3');
INSERT INTO `shop_area` VALUES ('2639', '无棣县', '238', '0', '3');
INSERT INTO `shop_area` VALUES ('2640', '沾化县', '238', '0', '3');
INSERT INTO `shop_area` VALUES ('2641', '滨城区', '238', '0', '3');
INSERT INTO `shop_area` VALUES ('2642', '邹平县', '238', '0', '3');
INSERT INTO `shop_area` VALUES ('2643', '阳信县', '238', '0', '3');
INSERT INTO `shop_area` VALUES ('2644', '东明县', '239', '0', '3');
INSERT INTO `shop_area` VALUES ('2645', '单县', '239', '0', '3');
INSERT INTO `shop_area` VALUES ('2646', '定陶县', '239', '0', '3');
INSERT INTO `shop_area` VALUES ('2647', '巨野县', '239', '0', '3');
INSERT INTO `shop_area` VALUES ('2648', '成武县', '239', '0', '3');
INSERT INTO `shop_area` VALUES ('2649', '曹县', '239', '0', '3');
INSERT INTO `shop_area` VALUES ('2650', '牡丹区', '239', '0', '3');
INSERT INTO `shop_area` VALUES ('2651', '郓城县', '239', '0', '3');
INSERT INTO `shop_area` VALUES ('2652', '鄄城县', '239', '0', '3');
INSERT INTO `shop_area` VALUES ('2653', '上街区', '240', '0', '3');
INSERT INTO `shop_area` VALUES ('2654', '中原区', '240', '0', '3');
INSERT INTO `shop_area` VALUES ('2655', '中牟县', '240', '0', '3');
INSERT INTO `shop_area` VALUES ('2656', '二七区', '240', '0', '3');
INSERT INTO `shop_area` VALUES ('2657', '巩义市', '240', '0', '3');
INSERT INTO `shop_area` VALUES ('2658', '惠济区', '240', '0', '3');
INSERT INTO `shop_area` VALUES ('2659', '新密市', '240', '0', '3');
INSERT INTO `shop_area` VALUES ('2660', '新郑市', '240', '0', '3');
INSERT INTO `shop_area` VALUES ('2661', '登封市', '240', '0', '3');
INSERT INTO `shop_area` VALUES ('2662', '管城回族区', '240', '0', '3');
INSERT INTO `shop_area` VALUES ('2663', '荥阳市', '240', '0', '3');
INSERT INTO `shop_area` VALUES ('2664', '金水区', '240', '0', '3');
INSERT INTO `shop_area` VALUES ('2665', '兰考县', '241', '0', '3');
INSERT INTO `shop_area` VALUES ('2666', '尉氏县', '241', '0', '3');
INSERT INTO `shop_area` VALUES ('2667', '开封县', '241', '0', '3');
INSERT INTO `shop_area` VALUES ('2668', '杞县', '241', '0', '3');
INSERT INTO `shop_area` VALUES ('2669', '禹王台区', '241', '0', '3');
INSERT INTO `shop_area` VALUES ('2670', '通许县', '241', '0', '3');
INSERT INTO `shop_area` VALUES ('2671', '金明区', '241', '0', '3');
INSERT INTO `shop_area` VALUES ('2672', '顺河回族区', '241', '0', '3');
INSERT INTO `shop_area` VALUES ('2673', '鼓楼区', '241', '0', '3');
INSERT INTO `shop_area` VALUES ('2674', '龙亭区', '241', '0', '3');
INSERT INTO `shop_area` VALUES ('2675', '伊川县', '242', '0', '3');
INSERT INTO `shop_area` VALUES ('2676', '偃师市', '242', '0', '3');
INSERT INTO `shop_area` VALUES ('2677', '吉利区', '242', '0', '3');
INSERT INTO `shop_area` VALUES ('2678', '孟津县', '242', '0', '3');
INSERT INTO `shop_area` VALUES ('2679', '宜阳县', '242', '0', '3');
INSERT INTO `shop_area` VALUES ('2680', '嵩县', '242', '0', '3');
INSERT INTO `shop_area` VALUES ('2681', '新安县', '242', '0', '3');
INSERT INTO `shop_area` VALUES ('2682', '栾川县', '242', '0', '3');
INSERT INTO `shop_area` VALUES ('2683', '汝阳县', '242', '0', '3');
INSERT INTO `shop_area` VALUES ('2684', '洛宁县', '242', '0', '3');
INSERT INTO `shop_area` VALUES ('2685', '洛龙区', '242', '0', '3');
INSERT INTO `shop_area` VALUES ('2686', '涧西区', '242', '0', '3');
INSERT INTO `shop_area` VALUES ('2687', '瀍河回族区', '242', '0', '3');
INSERT INTO `shop_area` VALUES ('2688', '老城区', '242', '0', '3');
INSERT INTO `shop_area` VALUES ('2689', '西工区', '242', '0', '3');
INSERT INTO `shop_area` VALUES ('2690', '卫东区', '243', '0', '3');
INSERT INTO `shop_area` VALUES ('2691', '叶县', '243', '0', '3');
INSERT INTO `shop_area` VALUES ('2692', '宝丰县', '243', '0', '3');
INSERT INTO `shop_area` VALUES ('2693', '新华区', '243', '0', '3');
INSERT INTO `shop_area` VALUES ('2694', '汝州市', '243', '0', '3');
INSERT INTO `shop_area` VALUES ('2695', '湛河区', '243', '0', '3');
INSERT INTO `shop_area` VALUES ('2696', '石龙区', '243', '0', '3');
INSERT INTO `shop_area` VALUES ('2697', '舞钢市', '243', '0', '3');
INSERT INTO `shop_area` VALUES ('2698', '郏县', '243', '0', '3');
INSERT INTO `shop_area` VALUES ('2699', '鲁山县', '243', '0', '3');
INSERT INTO `shop_area` VALUES ('2700', '内黄县', '244', '0', '3');
INSERT INTO `shop_area` VALUES ('2701', '北关区', '244', '0', '3');
INSERT INTO `shop_area` VALUES ('2702', '安阳县', '244', '0', '3');
INSERT INTO `shop_area` VALUES ('2703', '文峰区', '244', '0', '3');
INSERT INTO `shop_area` VALUES ('2704', '林州市', '244', '0', '3');
INSERT INTO `shop_area` VALUES ('2705', '殷都区', '244', '0', '3');
INSERT INTO `shop_area` VALUES ('2706', '汤阴县', '244', '0', '3');
INSERT INTO `shop_area` VALUES ('2707', '滑县', '244', '0', '3');
INSERT INTO `shop_area` VALUES ('2708', '龙安区', '244', '0', '3');
INSERT INTO `shop_area` VALUES ('2709', '山城区', '245', '0', '3');
INSERT INTO `shop_area` VALUES ('2710', '浚县', '245', '0', '3');
INSERT INTO `shop_area` VALUES ('2711', '淇县', '245', '0', '3');
INSERT INTO `shop_area` VALUES ('2712', '淇滨区', '245', '0', '3');
INSERT INTO `shop_area` VALUES ('2713', '鹤山区', '245', '0', '3');
INSERT INTO `shop_area` VALUES ('2714', '凤泉区', '246', '0', '3');
INSERT INTO `shop_area` VALUES ('2715', '卫滨区', '246', '0', '3');
INSERT INTO `shop_area` VALUES ('2716', '卫辉市', '246', '0', '3');
INSERT INTO `shop_area` VALUES ('2717', '原阳县', '246', '0', '3');
INSERT INTO `shop_area` VALUES ('2718', '封丘县', '246', '0', '3');
INSERT INTO `shop_area` VALUES ('2719', '延津县', '246', '0', '3');
INSERT INTO `shop_area` VALUES ('2720', '新乡县', '246', '0', '3');
INSERT INTO `shop_area` VALUES ('2721', '牧野区', '246', '0', '3');
INSERT INTO `shop_area` VALUES ('2722', '红旗区', '246', '0', '3');
INSERT INTO `shop_area` VALUES ('2723', '获嘉县', '246', '0', '3');
INSERT INTO `shop_area` VALUES ('2724', '辉县市', '246', '0', '3');
INSERT INTO `shop_area` VALUES ('2725', '长垣县', '246', '0', '3');
INSERT INTO `shop_area` VALUES ('2726', '中站区', '247', '0', '3');
INSERT INTO `shop_area` VALUES ('2727', '修武县', '247', '0', '3');
INSERT INTO `shop_area` VALUES ('2728', '博爱县', '247', '0', '3');
INSERT INTO `shop_area` VALUES ('2729', '孟州市', '247', '0', '3');
INSERT INTO `shop_area` VALUES ('2730', '山阳区', '247', '0', '3');
INSERT INTO `shop_area` VALUES ('2731', '武陟县', '247', '0', '3');
INSERT INTO `shop_area` VALUES ('2732', '沁阳市', '247', '0', '3');
INSERT INTO `shop_area` VALUES ('2733', '温县', '247', '0', '3');
INSERT INTO `shop_area` VALUES ('2734', '解放区', '247', '0', '3');
INSERT INTO `shop_area` VALUES ('2735', '马村区', '247', '0', '3');
INSERT INTO `shop_area` VALUES ('2736', '华龙区', '248', '0', '3');
INSERT INTO `shop_area` VALUES ('2737', '南乐县', '248', '0', '3');
INSERT INTO `shop_area` VALUES ('2738', '台前县', '248', '0', '3');
INSERT INTO `shop_area` VALUES ('2739', '清丰县', '248', '0', '3');
INSERT INTO `shop_area` VALUES ('2740', '濮阳县', '248', '0', '3');
INSERT INTO `shop_area` VALUES ('2741', '范县', '248', '0', '3');
INSERT INTO `shop_area` VALUES ('2742', '禹州市', '249', '0', '3');
INSERT INTO `shop_area` VALUES ('2743', '襄城县', '249', '0', '3');
INSERT INTO `shop_area` VALUES ('2744', '许昌县', '249', '0', '3');
INSERT INTO `shop_area` VALUES ('2745', '鄢陵县', '249', '0', '3');
INSERT INTO `shop_area` VALUES ('2746', '长葛市', '249', '0', '3');
INSERT INTO `shop_area` VALUES ('2747', '魏都区', '249', '0', '3');
INSERT INTO `shop_area` VALUES ('2748', '临颍县', '250', '0', '3');
INSERT INTO `shop_area` VALUES ('2749', '召陵区', '250', '0', '3');
INSERT INTO `shop_area` VALUES ('2750', '源汇区', '250', '0', '3');
INSERT INTO `shop_area` VALUES ('2751', '舞阳县', '250', '0', '3');
INSERT INTO `shop_area` VALUES ('2752', '郾城区', '250', '0', '3');
INSERT INTO `shop_area` VALUES ('2753', '义马市', '251', '0', '3');
INSERT INTO `shop_area` VALUES ('2754', '卢氏县', '251', '0', '3');
INSERT INTO `shop_area` VALUES ('2755', '渑池县', '251', '0', '3');
INSERT INTO `shop_area` VALUES ('2756', '湖滨区', '251', '0', '3');
INSERT INTO `shop_area` VALUES ('2757', '灵宝市', '251', '0', '3');
INSERT INTO `shop_area` VALUES ('2758', '陕县', '251', '0', '3');
INSERT INTO `shop_area` VALUES ('2759', '内乡县', '252', '0', '3');
INSERT INTO `shop_area` VALUES ('2760', '南召县', '252', '0', '3');
INSERT INTO `shop_area` VALUES ('2761', '卧龙区', '252', '0', '3');
INSERT INTO `shop_area` VALUES ('2762', '唐河县', '252', '0', '3');
INSERT INTO `shop_area` VALUES ('2763', '宛城区', '252', '0', '3');
INSERT INTO `shop_area` VALUES ('2764', '新野县', '252', '0', '3');
INSERT INTO `shop_area` VALUES ('2765', '方城县', '252', '0', '3');
INSERT INTO `shop_area` VALUES ('2766', '桐柏县', '252', '0', '3');
INSERT INTO `shop_area` VALUES ('2767', '淅川县', '252', '0', '3');
INSERT INTO `shop_area` VALUES ('2768', '社旗县', '252', '0', '3');
INSERT INTO `shop_area` VALUES ('2769', '西峡县', '252', '0', '3');
INSERT INTO `shop_area` VALUES ('2770', '邓州市', '252', '0', '3');
INSERT INTO `shop_area` VALUES ('2771', '镇平县', '252', '0', '3');
INSERT INTO `shop_area` VALUES ('2772', '夏邑县', '253', '0', '3');
INSERT INTO `shop_area` VALUES ('2773', '宁陵县', '253', '0', '3');
INSERT INTO `shop_area` VALUES ('2774', '柘城县', '253', '0', '3');
INSERT INTO `shop_area` VALUES ('2775', '民权县', '253', '0', '3');
INSERT INTO `shop_area` VALUES ('2776', '永城市', '253', '0', '3');
INSERT INTO `shop_area` VALUES ('2777', '睢县', '253', '0', '3');
INSERT INTO `shop_area` VALUES ('2778', '睢阳区', '253', '0', '3');
INSERT INTO `shop_area` VALUES ('2779', '粱园区', '253', '0', '3');
INSERT INTO `shop_area` VALUES ('2780', '虞城县', '253', '0', '3');
INSERT INTO `shop_area` VALUES ('2781', '光山县', '254', '0', '3');
INSERT INTO `shop_area` VALUES ('2782', '商城县', '254', '0', '3');
INSERT INTO `shop_area` VALUES ('2783', '固始县', '254', '0', '3');
INSERT INTO `shop_area` VALUES ('2784', '平桥区', '254', '0', '3');
INSERT INTO `shop_area` VALUES ('2785', '息县', '254', '0', '3');
INSERT INTO `shop_area` VALUES ('2786', '新县', '254', '0', '3');
INSERT INTO `shop_area` VALUES ('2787', '浉河区', '254', '0', '3');
INSERT INTO `shop_area` VALUES ('2788', '淮滨县', '254', '0', '3');
INSERT INTO `shop_area` VALUES ('2789', '潢川县', '254', '0', '3');
INSERT INTO `shop_area` VALUES ('2790', '罗山县', '254', '0', '3');
INSERT INTO `shop_area` VALUES ('2791', '商水县', '255', '0', '3');
INSERT INTO `shop_area` VALUES ('2792', '太康县', '255', '0', '3');
INSERT INTO `shop_area` VALUES ('2793', '川汇区', '255', '0', '3');
INSERT INTO `shop_area` VALUES ('2794', '扶沟县', '255', '0', '3');
INSERT INTO `shop_area` VALUES ('2795', '沈丘县', '255', '0', '3');
INSERT INTO `shop_area` VALUES ('2796', '淮阳县', '255', '0', '3');
INSERT INTO `shop_area` VALUES ('2797', '西华县', '255', '0', '3');
INSERT INTO `shop_area` VALUES ('2798', '郸城县', '255', '0', '3');
INSERT INTO `shop_area` VALUES ('2799', '项城市', '255', '0', '3');
INSERT INTO `shop_area` VALUES ('2800', '鹿邑县', '255', '0', '3');
INSERT INTO `shop_area` VALUES ('2801', '上蔡县', '256', '0', '3');
INSERT INTO `shop_area` VALUES ('2802', '平舆县', '256', '0', '3');
INSERT INTO `shop_area` VALUES ('2803', '新蔡县', '256', '0', '3');
INSERT INTO `shop_area` VALUES ('2804', '正阳县', '256', '0', '3');
INSERT INTO `shop_area` VALUES ('2805', '汝南县', '256', '0', '3');
INSERT INTO `shop_area` VALUES ('2806', '泌阳县', '256', '0', '3');
INSERT INTO `shop_area` VALUES ('2807', '确山县', '256', '0', '3');
INSERT INTO `shop_area` VALUES ('2808', '西平县', '256', '0', '3');
INSERT INTO `shop_area` VALUES ('2809', '遂平县', '256', '0', '3');
INSERT INTO `shop_area` VALUES ('2810', '驿城区', '256', '0', '3');
INSERT INTO `shop_area` VALUES ('2811', '济源市', '257', '0', '3');
INSERT INTO `shop_area` VALUES ('2812', '东西湖区', '258', '0', '3');
INSERT INTO `shop_area` VALUES ('2813', '新洲区', '258', '0', '3');
INSERT INTO `shop_area` VALUES ('2814', '武昌区', '258', '0', '3');
INSERT INTO `shop_area` VALUES ('2815', '汉南区', '258', '0', '3');
INSERT INTO `shop_area` VALUES ('2816', '汉阳区', '258', '0', '3');
INSERT INTO `shop_area` VALUES ('2817', '江夏区', '258', '0', '3');
INSERT INTO `shop_area` VALUES ('2818', '江岸区', '258', '0', '3');
INSERT INTO `shop_area` VALUES ('2819', '江汉区', '258', '0', '3');
INSERT INTO `shop_area` VALUES ('2820', '洪山区', '258', '0', '3');
INSERT INTO `shop_area` VALUES ('2821', '硚口区', '258', '0', '3');
INSERT INTO `shop_area` VALUES ('2822', '蔡甸区', '258', '0', '3');
INSERT INTO `shop_area` VALUES ('2823', '青山区', '258', '0', '3');
INSERT INTO `shop_area` VALUES ('2824', '黄陂区', '258', '0', '3');
INSERT INTO `shop_area` VALUES ('2825', '下陆区', '259', '0', '3');
INSERT INTO `shop_area` VALUES ('2826', '大冶市', '259', '0', '3');
INSERT INTO `shop_area` VALUES ('2827', '西塞山区', '259', '0', '3');
INSERT INTO `shop_area` VALUES ('2828', '铁山区', '259', '0', '3');
INSERT INTO `shop_area` VALUES ('2829', '阳新县', '259', '0', '3');
INSERT INTO `shop_area` VALUES ('2830', '黄石港区', '259', '0', '3');
INSERT INTO `shop_area` VALUES ('2831', '丹江口市', '260', '0', '3');
INSERT INTO `shop_area` VALUES ('2832', '张湾区', '260', '0', '3');
INSERT INTO `shop_area` VALUES ('2833', '房县', '260', '0', '3');
INSERT INTO `shop_area` VALUES ('2834', '竹山县', '260', '0', '3');
INSERT INTO `shop_area` VALUES ('2835', '竹溪县', '260', '0', '3');
INSERT INTO `shop_area` VALUES ('2836', '茅箭区', '260', '0', '3');
INSERT INTO `shop_area` VALUES ('2837', '郧县', '260', '0', '3');
INSERT INTO `shop_area` VALUES ('2838', '郧西县', '260', '0', '3');
INSERT INTO `shop_area` VALUES ('2839', '五峰土家族自治县', '261', '0', '3');
INSERT INTO `shop_area` VALUES ('2840', '伍家岗区', '261', '0', '3');
INSERT INTO `shop_area` VALUES ('2841', '兴山县', '261', '0', '3');
INSERT INTO `shop_area` VALUES ('2842', '夷陵区', '261', '0', '3');
INSERT INTO `shop_area` VALUES ('2843', '宜都市', '261', '0', '3');
INSERT INTO `shop_area` VALUES ('2844', '当阳市', '261', '0', '3');
INSERT INTO `shop_area` VALUES ('2845', '枝江市', '261', '0', '3');
INSERT INTO `shop_area` VALUES ('2846', '点军区', '261', '0', '3');
INSERT INTO `shop_area` VALUES ('2847', '秭归县', '261', '0', '3');
INSERT INTO `shop_area` VALUES ('2848', '虢亭区', '261', '0', '3');
INSERT INTO `shop_area` VALUES ('2849', '西陵区', '261', '0', '3');
INSERT INTO `shop_area` VALUES ('2850', '远安县', '261', '0', '3');
INSERT INTO `shop_area` VALUES ('2851', '长阳土家族自治县', '261', '0', '3');
INSERT INTO `shop_area` VALUES ('2852', '保康县', '262', '0', '3');
INSERT INTO `shop_area` VALUES ('2853', '南漳县', '262', '0', '3');
INSERT INTO `shop_area` VALUES ('2854', '宜城市', '262', '0', '3');
INSERT INTO `shop_area` VALUES ('2855', '枣阳市', '262', '0', '3');
INSERT INTO `shop_area` VALUES ('2856', '樊城区', '262', '0', '3');
INSERT INTO `shop_area` VALUES ('2857', '老河口市', '262', '0', '3');
INSERT INTO `shop_area` VALUES ('2858', '襄城区', '262', '0', '3');
INSERT INTO `shop_area` VALUES ('2859', '襄阳区', '262', '0', '3');
INSERT INTO `shop_area` VALUES ('2860', '谷城县', '262', '0', '3');
INSERT INTO `shop_area` VALUES ('2861', '华容区', '263', '0', '3');
INSERT INTO `shop_area` VALUES ('2862', '粱子湖', '263', '0', '3');
INSERT INTO `shop_area` VALUES ('2863', '鄂城区', '263', '0', '3');
INSERT INTO `shop_area` VALUES ('2864', '东宝区', '264', '0', '3');
INSERT INTO `shop_area` VALUES ('2865', '京山县', '264', '0', '3');
INSERT INTO `shop_area` VALUES ('2866', '掇刀区', '264', '0', '3');
INSERT INTO `shop_area` VALUES ('2867', '沙洋县', '264', '0', '3');
INSERT INTO `shop_area` VALUES ('2868', '钟祥市', '264', '0', '3');
INSERT INTO `shop_area` VALUES ('2869', '云梦县', '265', '0', '3');
INSERT INTO `shop_area` VALUES ('2870', '大悟县', '265', '0', '3');
INSERT INTO `shop_area` VALUES ('2871', '孝南区', '265', '0', '3');
INSERT INTO `shop_area` VALUES ('2872', '孝昌县', '265', '0', '3');
INSERT INTO `shop_area` VALUES ('2873', '安陆市', '265', '0', '3');
INSERT INTO `shop_area` VALUES ('2874', '应城市', '265', '0', '3');
INSERT INTO `shop_area` VALUES ('2875', '汉川市', '265', '0', '3');
INSERT INTO `shop_area` VALUES ('2876', '公安县', '266', '0', '3');
INSERT INTO `shop_area` VALUES ('2877', '松滋市', '266', '0', '3');
INSERT INTO `shop_area` VALUES ('2878', '江陵县', '266', '0', '3');
INSERT INTO `shop_area` VALUES ('2879', '沙市区', '266', '0', '3');
INSERT INTO `shop_area` VALUES ('2880', '洪湖市', '266', '0', '3');
INSERT INTO `shop_area` VALUES ('2881', '监利县', '266', '0', '3');
INSERT INTO `shop_area` VALUES ('2882', '石首市', '266', '0', '3');
INSERT INTO `shop_area` VALUES ('2883', '荆州区', '266', '0', '3');
INSERT INTO `shop_area` VALUES ('2884', '团风县', '267', '0', '3');
INSERT INTO `shop_area` VALUES ('2885', '武穴市', '267', '0', '3');
INSERT INTO `shop_area` VALUES ('2886', '浠水县', '267', '0', '3');
INSERT INTO `shop_area` VALUES ('2887', '红安县', '267', '0', '3');
INSERT INTO `shop_area` VALUES ('2888', '罗田县', '267', '0', '3');
INSERT INTO `shop_area` VALUES ('2889', '英山县', '267', '0', '3');
INSERT INTO `shop_area` VALUES ('2890', '蕲春县', '267', '0', '3');
INSERT INTO `shop_area` VALUES ('2891', '麻城市', '267', '0', '3');
INSERT INTO `shop_area` VALUES ('2892', '黄州区', '267', '0', '3');
INSERT INTO `shop_area` VALUES ('2893', '黄梅县', '267', '0', '3');
INSERT INTO `shop_area` VALUES ('2894', '咸安区', '268', '0', '3');
INSERT INTO `shop_area` VALUES ('2895', '嘉鱼县', '268', '0', '3');
INSERT INTO `shop_area` VALUES ('2896', '崇阳县', '268', '0', '3');
INSERT INTO `shop_area` VALUES ('2897', '赤壁市', '268', '0', '3');
INSERT INTO `shop_area` VALUES ('2898', '通城县', '268', '0', '3');
INSERT INTO `shop_area` VALUES ('2899', '通山县', '268', '0', '3');
INSERT INTO `shop_area` VALUES ('2900', '广水市', '269', '0', '3');
INSERT INTO `shop_area` VALUES ('2901', '曾都区', '269', '0', '3');
INSERT INTO `shop_area` VALUES ('2902', '利川市', '270', '0', '3');
INSERT INTO `shop_area` VALUES ('2903', '咸丰县', '270', '0', '3');
INSERT INTO `shop_area` VALUES ('2904', '宣恩县', '270', '0', '3');
INSERT INTO `shop_area` VALUES ('2905', '巴东县', '270', '0', '3');
INSERT INTO `shop_area` VALUES ('2906', '建始县', '270', '0', '3');
INSERT INTO `shop_area` VALUES ('2907', '恩施市', '270', '0', '3');
INSERT INTO `shop_area` VALUES ('2908', '来凤县', '270', '0', '3');
INSERT INTO `shop_area` VALUES ('2909', '鹤峰县', '270', '0', '3');
INSERT INTO `shop_area` VALUES ('2910', '仙桃市', '271', '0', '3');
INSERT INTO `shop_area` VALUES ('2911', '潜江市', '272', '0', '3');
INSERT INTO `shop_area` VALUES ('2912', '天门市', '273', '0', '3');
INSERT INTO `shop_area` VALUES ('2913', '神农架林区', '274', '0', '3');
INSERT INTO `shop_area` VALUES ('2914', '天心区', '275', '0', '3');
INSERT INTO `shop_area` VALUES ('2915', '宁乡县', '275', '0', '3');
INSERT INTO `shop_area` VALUES ('2916', '岳麓区', '275', '0', '3');
INSERT INTO `shop_area` VALUES ('2917', '开福区', '275', '0', '3');
INSERT INTO `shop_area` VALUES ('2918', '望城县', '275', '0', '3');
INSERT INTO `shop_area` VALUES ('2919', '浏阳市', '275', '0', '3');
INSERT INTO `shop_area` VALUES ('2920', '芙蓉区', '275', '0', '3');
INSERT INTO `shop_area` VALUES ('2921', '长沙县', '275', '0', '3');
INSERT INTO `shop_area` VALUES ('2922', '雨花区', '275', '0', '3');
INSERT INTO `shop_area` VALUES ('2923', '天元区', '276', '0', '3');
INSERT INTO `shop_area` VALUES ('2924', '攸县', '276', '0', '3');
INSERT INTO `shop_area` VALUES ('2925', '株洲县', '276', '0', '3');
INSERT INTO `shop_area` VALUES ('2926', '炎陵县', '276', '0', '3');
INSERT INTO `shop_area` VALUES ('2927', '石峰区', '276', '0', '3');
INSERT INTO `shop_area` VALUES ('2928', '芦淞区', '276', '0', '3');
INSERT INTO `shop_area` VALUES ('2929', '茶陵县', '276', '0', '3');
INSERT INTO `shop_area` VALUES ('2930', '荷塘区', '276', '0', '3');
INSERT INTO `shop_area` VALUES ('2931', '醴陵市', '276', '0', '3');
INSERT INTO `shop_area` VALUES ('2932', '岳塘区', '277', '0', '3');
INSERT INTO `shop_area` VALUES ('2933', '湘乡市', '277', '0', '3');
INSERT INTO `shop_area` VALUES ('2934', '湘潭县', '277', '0', '3');
INSERT INTO `shop_area` VALUES ('2935', '雨湖区', '277', '0', '3');
INSERT INTO `shop_area` VALUES ('2936', '韶山市', '277', '0', '3');
INSERT INTO `shop_area` VALUES ('2937', '南岳区', '278', '0', '3');
INSERT INTO `shop_area` VALUES ('2938', '常宁市', '278', '0', '3');
INSERT INTO `shop_area` VALUES ('2939', '珠晖区', '278', '0', '3');
INSERT INTO `shop_area` VALUES ('2940', '石鼓区', '278', '0', '3');
INSERT INTO `shop_area` VALUES ('2941', '祁东县', '278', '0', '3');
INSERT INTO `shop_area` VALUES ('2942', '耒阳市', '278', '0', '3');
INSERT INTO `shop_area` VALUES ('2943', '蒸湘区', '278', '0', '3');
INSERT INTO `shop_area` VALUES ('2944', '衡东县', '278', '0', '3');
INSERT INTO `shop_area` VALUES ('2945', '衡南县', '278', '0', '3');
INSERT INTO `shop_area` VALUES ('2946', '衡山县', '278', '0', '3');
INSERT INTO `shop_area` VALUES ('2947', '衡阳县', '278', '0', '3');
INSERT INTO `shop_area` VALUES ('2948', '雁峰区', '278', '0', '3');
INSERT INTO `shop_area` VALUES ('2949', '北塔区', '279', '0', '3');
INSERT INTO `shop_area` VALUES ('2950', '双清区', '279', '0', '3');
INSERT INTO `shop_area` VALUES ('2951', '城步苗族自治县', '279', '0', '3');
INSERT INTO `shop_area` VALUES ('2952', '大祥区', '279', '0', '3');
INSERT INTO `shop_area` VALUES ('2953', '新宁县', '279', '0', '3');
INSERT INTO `shop_area` VALUES ('2954', '新邵县', '279', '0', '3');
INSERT INTO `shop_area` VALUES ('2955', '武冈市', '279', '0', '3');
INSERT INTO `shop_area` VALUES ('2956', '洞口县', '279', '0', '3');
INSERT INTO `shop_area` VALUES ('2957', '绥宁县', '279', '0', '3');
INSERT INTO `shop_area` VALUES ('2958', '邵东县', '279', '0', '3');
INSERT INTO `shop_area` VALUES ('2959', '邵阳县', '279', '0', '3');
INSERT INTO `shop_area` VALUES ('2960', '隆回县', '279', '0', '3');
INSERT INTO `shop_area` VALUES ('2961', '临湘市', '280', '0', '3');
INSERT INTO `shop_area` VALUES ('2962', '云溪区', '280', '0', '3');
INSERT INTO `shop_area` VALUES ('2963', '华容县', '280', '0', '3');
INSERT INTO `shop_area` VALUES ('2964', '君山区', '280', '0', '3');
INSERT INTO `shop_area` VALUES ('2965', '岳阳县', '280', '0', '3');
INSERT INTO `shop_area` VALUES ('2966', '岳阳楼区', '280', '0', '3');
INSERT INTO `shop_area` VALUES ('2967', '平江县', '280', '0', '3');
INSERT INTO `shop_area` VALUES ('2968', '汨罗市', '280', '0', '3');
INSERT INTO `shop_area` VALUES ('2969', '湘阴县', '280', '0', '3');
INSERT INTO `shop_area` VALUES ('2970', '临澧县', '281', '0', '3');
INSERT INTO `shop_area` VALUES ('2971', '安乡县', '281', '0', '3');
INSERT INTO `shop_area` VALUES ('2972', '桃源县', '281', '0', '3');
INSERT INTO `shop_area` VALUES ('2973', '武陵区', '281', '0', '3');
INSERT INTO `shop_area` VALUES ('2974', '汉寿县', '281', '0', '3');
INSERT INTO `shop_area` VALUES ('2975', '津市市', '281', '0', '3');
INSERT INTO `shop_area` VALUES ('2976', '澧县', '281', '0', '3');
INSERT INTO `shop_area` VALUES ('2977', '石门县', '281', '0', '3');
INSERT INTO `shop_area` VALUES ('2978', '鼎城区', '281', '0', '3');
INSERT INTO `shop_area` VALUES ('2979', '慈利县', '282', '0', '3');
INSERT INTO `shop_area` VALUES ('2980', '桑植县', '282', '0', '3');
INSERT INTO `shop_area` VALUES ('2981', '武陵源区', '282', '0', '3');
INSERT INTO `shop_area` VALUES ('2982', '永定区', '282', '0', '3');
INSERT INTO `shop_area` VALUES ('2983', '南县', '283', '0', '3');
INSERT INTO `shop_area` VALUES ('2984', '安化县', '283', '0', '3');
INSERT INTO `shop_area` VALUES ('2985', '桃江县', '283', '0', '3');
INSERT INTO `shop_area` VALUES ('2986', '沅江市', '283', '0', '3');
INSERT INTO `shop_area` VALUES ('2987', '资阳区', '283', '0', '3');
INSERT INTO `shop_area` VALUES ('2988', '赫山区', '283', '0', '3');
INSERT INTO `shop_area` VALUES ('2989', '临武县', '284', '0', '3');
INSERT INTO `shop_area` VALUES ('2990', '北湖区', '284', '0', '3');
INSERT INTO `shop_area` VALUES ('2991', '嘉禾县', '284', '0', '3');
INSERT INTO `shop_area` VALUES ('2992', '安仁县', '284', '0', '3');
INSERT INTO `shop_area` VALUES ('2993', '宜章县', '284', '0', '3');
INSERT INTO `shop_area` VALUES ('2994', '桂东县', '284', '0', '3');
INSERT INTO `shop_area` VALUES ('2995', '桂阳县', '284', '0', '3');
INSERT INTO `shop_area` VALUES ('2996', '永兴县', '284', '0', '3');
INSERT INTO `shop_area` VALUES ('2997', '汝城县', '284', '0', '3');
INSERT INTO `shop_area` VALUES ('2998', '苏仙区', '284', '0', '3');
INSERT INTO `shop_area` VALUES ('2999', '资兴市', '284', '0', '3');
INSERT INTO `shop_area` VALUES ('3000', '东安县', '285', '0', '3');
INSERT INTO `shop_area` VALUES ('3001', '冷水滩区', '285', '0', '3');
INSERT INTO `shop_area` VALUES ('3002', '双牌县', '285', '0', '3');
INSERT INTO `shop_area` VALUES ('3003', '宁远县', '285', '0', '3');
INSERT INTO `shop_area` VALUES ('3004', '新田县', '285', '0', '3');
INSERT INTO `shop_area` VALUES ('3005', '江华瑶族自治县', '285', '0', '3');
INSERT INTO `shop_area` VALUES ('3006', '江永县', '285', '0', '3');
INSERT INTO `shop_area` VALUES ('3007', '祁阳县', '285', '0', '3');
INSERT INTO `shop_area` VALUES ('3008', '蓝山县', '285', '0', '3');
INSERT INTO `shop_area` VALUES ('3009', '道县', '285', '0', '3');
INSERT INTO `shop_area` VALUES ('3010', '零陵区', '285', '0', '3');
INSERT INTO `shop_area` VALUES ('3011', '中方县', '286', '0', '3');
INSERT INTO `shop_area` VALUES ('3012', '会同县', '286', '0', '3');
INSERT INTO `shop_area` VALUES ('3013', '新晃侗族自治县', '286', '0', '3');
INSERT INTO `shop_area` VALUES ('3014', '沅陵县', '286', '0', '3');
INSERT INTO `shop_area` VALUES ('3015', '洪江市/洪江区', '286', '0', '3');
INSERT INTO `shop_area` VALUES ('3016', '溆浦县', '286', '0', '3');
INSERT INTO `shop_area` VALUES ('3017', '芷江侗族自治县', '286', '0', '3');
INSERT INTO `shop_area` VALUES ('3018', '辰溪县', '286', '0', '3');
INSERT INTO `shop_area` VALUES ('3019', '通道侗族自治县', '286', '0', '3');
INSERT INTO `shop_area` VALUES ('3020', '靖州苗族侗族自治县', '286', '0', '3');
INSERT INTO `shop_area` VALUES ('3021', '鹤城区', '286', '0', '3');
INSERT INTO `shop_area` VALUES ('3022', '麻阳苗族自治县', '286', '0', '3');
INSERT INTO `shop_area` VALUES ('3023', '冷水江市', '287', '0', '3');
INSERT INTO `shop_area` VALUES ('3024', '双峰县', '287', '0', '3');
INSERT INTO `shop_area` VALUES ('3025', '娄星区', '287', '0', '3');
INSERT INTO `shop_area` VALUES ('3026', '新化县', '287', '0', '3');
INSERT INTO `shop_area` VALUES ('3027', '涟源市', '287', '0', '3');
INSERT INTO `shop_area` VALUES ('3028', '保靖县', '288', '0', '3');
INSERT INTO `shop_area` VALUES ('3029', '凤凰县', '288', '0', '3');
INSERT INTO `shop_area` VALUES ('3030', '古丈县', '288', '0', '3');
INSERT INTO `shop_area` VALUES ('3031', '吉首市', '288', '0', '3');
INSERT INTO `shop_area` VALUES ('3032', '永顺县', '288', '0', '3');
INSERT INTO `shop_area` VALUES ('3033', '泸溪县', '288', '0', '3');
INSERT INTO `shop_area` VALUES ('3034', '花垣县', '288', '0', '3');
INSERT INTO `shop_area` VALUES ('3035', '龙山县', '288', '0', '3');
INSERT INTO `shop_area` VALUES ('3036', '萝岗区', '289', '0', '3');
INSERT INTO `shop_area` VALUES ('3037', '南沙区', '289', '0', '3');
INSERT INTO `shop_area` VALUES ('3038', '从化市', '289', '0', '3');
INSERT INTO `shop_area` VALUES ('3039', '增城市', '289', '0', '3');
INSERT INTO `shop_area` VALUES ('3040', '天河区', '289', '0', '3');
INSERT INTO `shop_area` VALUES ('3041', '海珠区', '289', '0', '3');
INSERT INTO `shop_area` VALUES ('3042', '番禺区', '289', '0', '3');
INSERT INTO `shop_area` VALUES ('3043', '白云区', '289', '0', '3');
INSERT INTO `shop_area` VALUES ('3044', '花都区', '289', '0', '3');
INSERT INTO `shop_area` VALUES ('3045', '荔湾区', '289', '0', '3');
INSERT INTO `shop_area` VALUES ('3046', '越秀区', '289', '0', '3');
INSERT INTO `shop_area` VALUES ('3047', '黄埔区', '289', '0', '3');
INSERT INTO `shop_area` VALUES ('3048', '乐昌市', '290', '0', '3');
INSERT INTO `shop_area` VALUES ('3049', '乳源瑶族自治县', '290', '0', '3');
INSERT INTO `shop_area` VALUES ('3050', '仁化县', '290', '0', '3');
INSERT INTO `shop_area` VALUES ('3051', '南雄市', '290', '0', '3');
INSERT INTO `shop_area` VALUES ('3052', '始兴县', '290', '0', '3');
INSERT INTO `shop_area` VALUES ('3053', '新丰县', '290', '0', '3');
INSERT INTO `shop_area` VALUES ('3054', '曲江区', '290', '0', '3');
INSERT INTO `shop_area` VALUES ('3055', '武江区', '290', '0', '3');
INSERT INTO `shop_area` VALUES ('3056', '浈江区', '290', '0', '3');
INSERT INTO `shop_area` VALUES ('3057', '翁源县', '290', '0', '3');
INSERT INTO `shop_area` VALUES ('3058', '南山区', '291', '0', '3');
INSERT INTO `shop_area` VALUES ('3059', '宝安区', '291', '0', '3');
INSERT INTO `shop_area` VALUES ('3060', '盐田区', '291', '0', '3');
INSERT INTO `shop_area` VALUES ('3061', '福田区', '291', '0', '3');
INSERT INTO `shop_area` VALUES ('3062', '罗湖区', '291', '0', '3');
INSERT INTO `shop_area` VALUES ('3063', '龙岗区', '291', '0', '3');
INSERT INTO `shop_area` VALUES ('3064', '斗门区', '292', '0', '3');
INSERT INTO `shop_area` VALUES ('3065', '金湾区', '292', '0', '3');
INSERT INTO `shop_area` VALUES ('3066', '香洲区', '292', '0', '3');
INSERT INTO `shop_area` VALUES ('3067', '南澳县', '293', '0', '3');
INSERT INTO `shop_area` VALUES ('3068', '潮南区', '293', '0', '3');
INSERT INTO `shop_area` VALUES ('3069', '潮阳区', '293', '0', '3');
INSERT INTO `shop_area` VALUES ('3070', '澄海区', '293', '0', '3');
INSERT INTO `shop_area` VALUES ('3071', '濠江区', '293', '0', '3');
INSERT INTO `shop_area` VALUES ('3072', '金平区', '293', '0', '3');
INSERT INTO `shop_area` VALUES ('3073', '龙湖区', '293', '0', '3');
INSERT INTO `shop_area` VALUES ('3074', '三水区', '294', '0', '3');
INSERT INTO `shop_area` VALUES ('3075', '南海区', '294', '0', '3');
INSERT INTO `shop_area` VALUES ('3076', '禅城区', '294', '0', '3');
INSERT INTO `shop_area` VALUES ('3077', '顺德区', '294', '0', '3');
INSERT INTO `shop_area` VALUES ('3078', '高明区', '294', '0', '3');
INSERT INTO `shop_area` VALUES ('3079', '台山市', '295', '0', '3');
INSERT INTO `shop_area` VALUES ('3080', '开平市', '295', '0', '3');
INSERT INTO `shop_area` VALUES ('3081', '恩平市', '295', '0', '3');
INSERT INTO `shop_area` VALUES ('3082', '新会区', '295', '0', '3');
INSERT INTO `shop_area` VALUES ('3083', '江海区', '295', '0', '3');
INSERT INTO `shop_area` VALUES ('3084', '蓬江区', '295', '0', '3');
INSERT INTO `shop_area` VALUES ('3085', '鹤山市', '295', '0', '3');
INSERT INTO `shop_area` VALUES ('3086', '吴川市', '296', '0', '3');
INSERT INTO `shop_area` VALUES ('3087', '坡头区', '296', '0', '3');
INSERT INTO `shop_area` VALUES ('3088', '廉江市', '296', '0', '3');
INSERT INTO `shop_area` VALUES ('3089', '徐闻县', '296', '0', '3');
INSERT INTO `shop_area` VALUES ('3090', '赤坎区', '296', '0', '3');
INSERT INTO `shop_area` VALUES ('3091', '遂溪县', '296', '0', '3');
INSERT INTO `shop_area` VALUES ('3092', '雷州市', '296', '0', '3');
INSERT INTO `shop_area` VALUES ('3093', '霞山区', '296', '0', '3');
INSERT INTO `shop_area` VALUES ('3094', '麻章区', '296', '0', '3');
INSERT INTO `shop_area` VALUES ('3095', '信宜市', '297', '0', '3');
INSERT INTO `shop_area` VALUES ('3096', '化州市', '297', '0', '3');
INSERT INTO `shop_area` VALUES ('3097', '电白县', '297', '0', '3');
INSERT INTO `shop_area` VALUES ('3098', '茂南区', '297', '0', '3');
INSERT INTO `shop_area` VALUES ('3099', '茂港区', '297', '0', '3');
INSERT INTO `shop_area` VALUES ('3100', '高州市', '297', '0', '3');
INSERT INTO `shop_area` VALUES ('3101', '四会市', '298', '0', '3');
INSERT INTO `shop_area` VALUES ('3102', '封开县', '298', '0', '3');
INSERT INTO `shop_area` VALUES ('3103', '广宁县', '298', '0', '3');
INSERT INTO `shop_area` VALUES ('3104', '德庆县', '298', '0', '3');
INSERT INTO `shop_area` VALUES ('3105', '怀集县', '298', '0', '3');
INSERT INTO `shop_area` VALUES ('3106', '端州区', '298', '0', '3');
INSERT INTO `shop_area` VALUES ('3107', '高要市', '298', '0', '3');
INSERT INTO `shop_area` VALUES ('3108', '鼎湖区', '298', '0', '3');
INSERT INTO `shop_area` VALUES ('3109', '博罗县', '299', '0', '3');
INSERT INTO `shop_area` VALUES ('3110', '惠东县', '299', '0', '3');
INSERT INTO `shop_area` VALUES ('3111', '惠城区', '299', '0', '3');
INSERT INTO `shop_area` VALUES ('3112', '惠阳区', '299', '0', '3');
INSERT INTO `shop_area` VALUES ('3113', '龙门县', '299', '0', '3');
INSERT INTO `shop_area` VALUES ('3114', '丰顺县', '300', '0', '3');
INSERT INTO `shop_area` VALUES ('3115', '五华县', '300', '0', '3');
INSERT INTO `shop_area` VALUES ('3116', '兴宁市', '300', '0', '3');
INSERT INTO `shop_area` VALUES ('3117', '大埔县', '300', '0', '3');
INSERT INTO `shop_area` VALUES ('3118', '平远县', '300', '0', '3');
INSERT INTO `shop_area` VALUES ('3119', '梅县', '300', '0', '3');
INSERT INTO `shop_area` VALUES ('3120', '梅江区', '300', '0', '3');
INSERT INTO `shop_area` VALUES ('3121', '蕉岭县', '300', '0', '3');
INSERT INTO `shop_area` VALUES ('3122', '城区', '301', '0', '3');
INSERT INTO `shop_area` VALUES ('3123', '海丰县', '301', '0', '3');
INSERT INTO `shop_area` VALUES ('3124', '陆丰市', '301', '0', '3');
INSERT INTO `shop_area` VALUES ('3125', '陆河县', '301', '0', '3');
INSERT INTO `shop_area` VALUES ('3126', '东源县', '302', '0', '3');
INSERT INTO `shop_area` VALUES ('3127', '和平县', '302', '0', '3');
INSERT INTO `shop_area` VALUES ('3128', '源城区', '302', '0', '3');
INSERT INTO `shop_area` VALUES ('3129', '紫金县', '302', '0', '3');
INSERT INTO `shop_area` VALUES ('3130', '连平县', '302', '0', '3');
INSERT INTO `shop_area` VALUES ('3131', '龙川县', '302', '0', '3');
INSERT INTO `shop_area` VALUES ('3132', '江城区', '303', '0', '3');
INSERT INTO `shop_area` VALUES ('3133', '阳东县', '303', '0', '3');
INSERT INTO `shop_area` VALUES ('3134', '阳春市', '303', '0', '3');
INSERT INTO `shop_area` VALUES ('3135', '阳西县', '303', '0', '3');
INSERT INTO `shop_area` VALUES ('3136', '佛冈县', '304', '0', '3');
INSERT INTO `shop_area` VALUES ('3137', '清城区', '304', '0', '3');
INSERT INTO `shop_area` VALUES ('3138', '清新县', '304', '0', '3');
INSERT INTO `shop_area` VALUES ('3139', '英德市', '304', '0', '3');
INSERT INTO `shop_area` VALUES ('3140', '连南瑶族自治县', '304', '0', '3');
INSERT INTO `shop_area` VALUES ('3141', '连山壮族瑶族自治县', '304', '0', '3');
INSERT INTO `shop_area` VALUES ('3142', '连州市', '304', '0', '3');
INSERT INTO `shop_area` VALUES ('3143', '阳山县', '304', '0', '3');
INSERT INTO `shop_area` VALUES ('3144', '东莞市', '305', '0', '3');
INSERT INTO `shop_area` VALUES ('3145', '中山市', '306', '0', '3');
INSERT INTO `shop_area` VALUES ('3146', '湘桥区', '307', '0', '3');
INSERT INTO `shop_area` VALUES ('3147', '潮安县', '307', '0', '3');
INSERT INTO `shop_area` VALUES ('3148', '饶平县', '307', '0', '3');
INSERT INTO `shop_area` VALUES ('3149', '惠来县', '308', '0', '3');
INSERT INTO `shop_area` VALUES ('3150', '揭东县', '308', '0', '3');
INSERT INTO `shop_area` VALUES ('3151', '揭西县', '308', '0', '3');
INSERT INTO `shop_area` VALUES ('3152', '普宁市', '308', '0', '3');
INSERT INTO `shop_area` VALUES ('3153', '榕城区', '308', '0', '3');
INSERT INTO `shop_area` VALUES ('3154', '云城区', '309', '0', '3');
INSERT INTO `shop_area` VALUES ('3155', '云安县', '309', '0', '3');
INSERT INTO `shop_area` VALUES ('3156', '新兴县', '309', '0', '3');
INSERT INTO `shop_area` VALUES ('3157', '罗定市', '309', '0', '3');
INSERT INTO `shop_area` VALUES ('3158', '郁南县', '309', '0', '3');
INSERT INTO `shop_area` VALUES ('3159', '上林县', '310', '0', '3');
INSERT INTO `shop_area` VALUES ('3160', '兴宁区', '310', '0', '3');
INSERT INTO `shop_area` VALUES ('3161', '宾阳县', '310', '0', '3');
INSERT INTO `shop_area` VALUES ('3162', '横县', '310', '0', '3');
INSERT INTO `shop_area` VALUES ('3163', '武鸣县', '310', '0', '3');
INSERT INTO `shop_area` VALUES ('3164', '江南区', '310', '0', '3');
INSERT INTO `shop_area` VALUES ('3165', '良庆区', '310', '0', '3');
INSERT INTO `shop_area` VALUES ('3166', '西乡塘区', '310', '0', '3');
INSERT INTO `shop_area` VALUES ('3167', '邕宁区', '310', '0', '3');
INSERT INTO `shop_area` VALUES ('3168', '隆安县', '310', '0', '3');
INSERT INTO `shop_area` VALUES ('3169', '青秀区', '310', '0', '3');
INSERT INTO `shop_area` VALUES ('3170', '马山县', '310', '0', '3');
INSERT INTO `shop_area` VALUES ('3171', '三江侗族自治县', '311', '0', '3');
INSERT INTO `shop_area` VALUES ('3172', '城中区', '311', '0', '3');
INSERT INTO `shop_area` VALUES ('3173', '柳北区', '311', '0', '3');
INSERT INTO `shop_area` VALUES ('3174', '柳南区', '311', '0', '3');
INSERT INTO `shop_area` VALUES ('3175', '柳城县', '311', '0', '3');
INSERT INTO `shop_area` VALUES ('3176', '柳江县', '311', '0', '3');
INSERT INTO `shop_area` VALUES ('3177', '融安县', '311', '0', '3');
INSERT INTO `shop_area` VALUES ('3178', '融水苗族自治县', '311', '0', '3');
INSERT INTO `shop_area` VALUES ('3179', '鱼峰区', '311', '0', '3');
INSERT INTO `shop_area` VALUES ('3180', '鹿寨县', '311', '0', '3');
INSERT INTO `shop_area` VALUES ('3181', '七星区', '312', '0', '3');
INSERT INTO `shop_area` VALUES ('3182', '临桂县', '312', '0', '3');
INSERT INTO `shop_area` VALUES ('3183', '全州县', '312', '0', '3');
INSERT INTO `shop_area` VALUES ('3184', '兴安县', '312', '0', '3');
INSERT INTO `shop_area` VALUES ('3185', '叠彩区', '312', '0', '3');
INSERT INTO `shop_area` VALUES ('3186', '平乐县', '312', '0', '3');
INSERT INTO `shop_area` VALUES ('3187', '恭城瑶族自治县', '312', '0', '3');
INSERT INTO `shop_area` VALUES ('3188', '永福县', '312', '0', '3');
INSERT INTO `shop_area` VALUES ('3189', '灌阳县', '312', '0', '3');
INSERT INTO `shop_area` VALUES ('3190', '灵川县', '312', '0', '3');
INSERT INTO `shop_area` VALUES ('3191', '秀峰区', '312', '0', '3');
INSERT INTO `shop_area` VALUES ('3192', '荔浦县', '312', '0', '3');
INSERT INTO `shop_area` VALUES ('3193', '象山区', '312', '0', '3');
INSERT INTO `shop_area` VALUES ('3194', '资源县', '312', '0', '3');
INSERT INTO `shop_area` VALUES ('3195', '阳朔县', '312', '0', '3');
INSERT INTO `shop_area` VALUES ('3196', '雁山区', '312', '0', '3');
INSERT INTO `shop_area` VALUES ('3197', '龙胜各族自治县', '312', '0', '3');
INSERT INTO `shop_area` VALUES ('3198', '万秀区', '313', '0', '3');
INSERT INTO `shop_area` VALUES ('3199', '岑溪市', '313', '0', '3');
INSERT INTO `shop_area` VALUES ('3200', '苍梧县', '313', '0', '3');
INSERT INTO `shop_area` VALUES ('3201', '蒙山县', '313', '0', '3');
INSERT INTO `shop_area` VALUES ('3202', '藤县', '313', '0', '3');
INSERT INTO `shop_area` VALUES ('3203', '蝶山区', '313', '0', '3');
INSERT INTO `shop_area` VALUES ('3204', '长洲区', '313', '0', '3');
INSERT INTO `shop_area` VALUES ('3205', '合浦县', '314', '0', '3');
INSERT INTO `shop_area` VALUES ('3206', '海城区', '314', '0', '3');
INSERT INTO `shop_area` VALUES ('3207', '铁山港区', '314', '0', '3');
INSERT INTO `shop_area` VALUES ('3208', '银海区', '314', '0', '3');
INSERT INTO `shop_area` VALUES ('3209', '上思县', '315', '0', '3');
INSERT INTO `shop_area` VALUES ('3210', '东兴市', '315', '0', '3');
INSERT INTO `shop_area` VALUES ('3211', '港口区', '315', '0', '3');
INSERT INTO `shop_area` VALUES ('3212', '防城区', '315', '0', '3');
INSERT INTO `shop_area` VALUES ('3213', '浦北县', '316', '0', '3');
INSERT INTO `shop_area` VALUES ('3214', '灵山县', '316', '0', '3');
INSERT INTO `shop_area` VALUES ('3215', '钦北区', '316', '0', '3');
INSERT INTO `shop_area` VALUES ('3216', '钦南区', '316', '0', '3');
INSERT INTO `shop_area` VALUES ('3217', '平南县', '317', '0', '3');
INSERT INTO `shop_area` VALUES ('3218', '桂平市', '317', '0', '3');
INSERT INTO `shop_area` VALUES ('3219', '港北区', '317', '0', '3');
INSERT INTO `shop_area` VALUES ('3220', '港南区', '317', '0', '3');
INSERT INTO `shop_area` VALUES ('3221', '覃塘区', '317', '0', '3');
INSERT INTO `shop_area` VALUES ('3222', '兴业县', '318', '0', '3');
INSERT INTO `shop_area` VALUES ('3223', '北流市', '318', '0', '3');
INSERT INTO `shop_area` VALUES ('3224', '博白县', '318', '0', '3');
INSERT INTO `shop_area` VALUES ('3225', '容县', '318', '0', '3');
INSERT INTO `shop_area` VALUES ('3226', '玉州区', '318', '0', '3');
INSERT INTO `shop_area` VALUES ('3227', '陆川县', '318', '0', '3');
INSERT INTO `shop_area` VALUES ('3228', '乐业县', '319', '0', '3');
INSERT INTO `shop_area` VALUES ('3229', '凌云县', '319', '0', '3');
INSERT INTO `shop_area` VALUES ('3230', '右江区', '319', '0', '3');
INSERT INTO `shop_area` VALUES ('3231', '平果县', '319', '0', '3');
INSERT INTO `shop_area` VALUES ('3232', '德保县', '319', '0', '3');
INSERT INTO `shop_area` VALUES ('3233', '田东县', '319', '0', '3');
INSERT INTO `shop_area` VALUES ('3234', '田林县', '319', '0', '3');
INSERT INTO `shop_area` VALUES ('3235', '田阳县', '319', '0', '3');
INSERT INTO `shop_area` VALUES ('3236', '西林县', '319', '0', '3');
INSERT INTO `shop_area` VALUES ('3237', '那坡县', '319', '0', '3');
INSERT INTO `shop_area` VALUES ('3238', '隆林各族自治县', '319', '0', '3');
INSERT INTO `shop_area` VALUES ('3239', '靖西县', '319', '0', '3');
INSERT INTO `shop_area` VALUES ('3240', '八步区', '320', '0', '3');
INSERT INTO `shop_area` VALUES ('3241', '富川瑶族自治县', '320', '0', '3');
INSERT INTO `shop_area` VALUES ('3242', '昭平县', '320', '0', '3');
INSERT INTO `shop_area` VALUES ('3243', '钟山县', '320', '0', '3');
INSERT INTO `shop_area` VALUES ('3244', '东兰县', '321', '0', '3');
INSERT INTO `shop_area` VALUES ('3245', '凤山县', '321', '0', '3');
INSERT INTO `shop_area` VALUES ('3246', '南丹县', '321', '0', '3');
INSERT INTO `shop_area` VALUES ('3247', '大化瑶族自治县', '321', '0', '3');
INSERT INTO `shop_area` VALUES ('3248', '天峨县', '321', '0', '3');
INSERT INTO `shop_area` VALUES ('3249', '宜州市', '321', '0', '3');
INSERT INTO `shop_area` VALUES ('3250', '巴马瑶族自治县', '321', '0', '3');
INSERT INTO `shop_area` VALUES ('3251', '环江毛南族自治县', '321', '0', '3');
INSERT INTO `shop_area` VALUES ('3252', '罗城仫佬族自治县', '321', '0', '3');
INSERT INTO `shop_area` VALUES ('3253', '都安瑶族自治县', '321', '0', '3');
INSERT INTO `shop_area` VALUES ('3254', '金城江区', '321', '0', '3');
INSERT INTO `shop_area` VALUES ('3255', '兴宾区', '322', '0', '3');
INSERT INTO `shop_area` VALUES ('3256', '合山市', '322', '0', '3');
INSERT INTO `shop_area` VALUES ('3257', '忻城县', '322', '0', '3');
INSERT INTO `shop_area` VALUES ('3258', '武宣县', '322', '0', '3');
INSERT INTO `shop_area` VALUES ('3259', '象州县', '322', '0', '3');
INSERT INTO `shop_area` VALUES ('3260', '金秀瑶族自治县', '322', '0', '3');
INSERT INTO `shop_area` VALUES ('3261', '凭祥市', '323', '0', '3');
INSERT INTO `shop_area` VALUES ('3262', '大新县', '323', '0', '3');
INSERT INTO `shop_area` VALUES ('3263', '天等县', '323', '0', '3');
INSERT INTO `shop_area` VALUES ('3264', '宁明县', '323', '0', '3');
INSERT INTO `shop_area` VALUES ('3265', '扶绥县', '323', '0', '3');
INSERT INTO `shop_area` VALUES ('3266', '江州区', '323', '0', '3');
INSERT INTO `shop_area` VALUES ('3267', '龙州县', '323', '0', '3');
INSERT INTO `shop_area` VALUES ('3268', '琼山区', '324', '0', '3');
INSERT INTO `shop_area` VALUES ('3269', '秀英区', '324', '0', '3');
INSERT INTO `shop_area` VALUES ('3270', '美兰区', '324', '0', '3');
INSERT INTO `shop_area` VALUES ('3271', '龙华区', '324', '0', '3');
INSERT INTO `shop_area` VALUES ('3272', '三亚市', '325', '0', '3');
INSERT INTO `shop_area` VALUES ('3273', '五指山市', '326', '0', '3');
INSERT INTO `shop_area` VALUES ('3274', '琼海市', '327', '0', '3');
INSERT INTO `shop_area` VALUES ('3275', '儋州市', '328', '0', '3');
INSERT INTO `shop_area` VALUES ('3276', '文昌市', '329', '0', '3');
INSERT INTO `shop_area` VALUES ('3277', '万宁市', '330', '0', '3');
INSERT INTO `shop_area` VALUES ('3278', '东方市', '331', '0', '3');
INSERT INTO `shop_area` VALUES ('3279', '定安县', '332', '0', '3');
INSERT INTO `shop_area` VALUES ('3280', '屯昌县', '333', '0', '3');
INSERT INTO `shop_area` VALUES ('3281', '澄迈县', '334', '0', '3');
INSERT INTO `shop_area` VALUES ('3282', '临高县', '335', '0', '3');
INSERT INTO `shop_area` VALUES ('3283', '白沙黎族自治县', '336', '0', '3');
INSERT INTO `shop_area` VALUES ('3284', '昌江黎族自治县', '337', '0', '3');
INSERT INTO `shop_area` VALUES ('3285', '乐东黎族自治县', '338', '0', '3');
INSERT INTO `shop_area` VALUES ('3286', '陵水黎族自治县', '339', '0', '3');
INSERT INTO `shop_area` VALUES ('3287', '保亭黎族苗族自治县', '340', '0', '3');
INSERT INTO `shop_area` VALUES ('3288', '琼中黎族苗族自治县', '341', '0', '3');
INSERT INTO `shop_area` VALUES ('4209', '双流县', '385', '0', '3');
INSERT INTO `shop_area` VALUES ('4210', '大邑县', '385', '0', '3');
INSERT INTO `shop_area` VALUES ('4211', '崇州市', '385', '0', '3');
INSERT INTO `shop_area` VALUES ('4212', '彭州市', '385', '0', '3');
INSERT INTO `shop_area` VALUES ('4213', '成华区', '385', '0', '3');
INSERT INTO `shop_area` VALUES ('4214', '新津县', '385', '0', '3');
INSERT INTO `shop_area` VALUES ('4215', '新都区', '385', '0', '3');
INSERT INTO `shop_area` VALUES ('4216', '武侯区', '385', '0', '3');
INSERT INTO `shop_area` VALUES ('4217', '温江区', '385', '0', '3');
INSERT INTO `shop_area` VALUES ('4218', '蒲江县', '385', '0', '3');
INSERT INTO `shop_area` VALUES ('4219', '邛崃市', '385', '0', '3');
INSERT INTO `shop_area` VALUES ('4220', '郫县', '385', '0', '3');
INSERT INTO `shop_area` VALUES ('4221', '都江堰市', '385', '0', '3');
INSERT INTO `shop_area` VALUES ('4222', '金堂县', '385', '0', '3');
INSERT INTO `shop_area` VALUES ('4223', '金牛区', '385', '0', '3');
INSERT INTO `shop_area` VALUES ('4224', '锦江区', '385', '0', '3');
INSERT INTO `shop_area` VALUES ('4225', '青白江区', '385', '0', '3');
INSERT INTO `shop_area` VALUES ('4226', '青羊区', '385', '0', '3');
INSERT INTO `shop_area` VALUES ('4227', '龙泉驿区', '385', '0', '3');
INSERT INTO `shop_area` VALUES ('4228', '大安区', '386', '0', '3');
INSERT INTO `shop_area` VALUES ('4229', '富顺县', '386', '0', '3');
INSERT INTO `shop_area` VALUES ('4230', '沿滩区', '386', '0', '3');
INSERT INTO `shop_area` VALUES ('4231', '自流井区', '386', '0', '3');
INSERT INTO `shop_area` VALUES ('4232', '荣县', '386', '0', '3');
INSERT INTO `shop_area` VALUES ('4233', '贡井区', '386', '0', '3');
INSERT INTO `shop_area` VALUES ('4234', '东区', '387', '0', '3');
INSERT INTO `shop_area` VALUES ('4235', '仁和区', '387', '0', '3');
INSERT INTO `shop_area` VALUES ('4236', '盐边县', '387', '0', '3');
INSERT INTO `shop_area` VALUES ('4237', '米易县', '387', '0', '3');
INSERT INTO `shop_area` VALUES ('4238', '西区', '387', '0', '3');
INSERT INTO `shop_area` VALUES ('4239', '叙永县', '388', '0', '3');
INSERT INTO `shop_area` VALUES ('4240', '古蔺县', '388', '0', '3');
INSERT INTO `shop_area` VALUES ('4241', '合江县', '388', '0', '3');
INSERT INTO `shop_area` VALUES ('4242', '江阳区', '388', '0', '3');
INSERT INTO `shop_area` VALUES ('4243', '泸县', '388', '0', '3');
INSERT INTO `shop_area` VALUES ('4244', '纳溪区', '388', '0', '3');
INSERT INTO `shop_area` VALUES ('4245', '龙马潭区', '388', '0', '3');
INSERT INTO `shop_area` VALUES ('4246', '中江县', '389', '0', '3');
INSERT INTO `shop_area` VALUES ('4247', '什邡市', '389', '0', '3');
INSERT INTO `shop_area` VALUES ('4248', '广汉市', '389', '0', '3');
INSERT INTO `shop_area` VALUES ('4249', '旌阳区', '389', '0', '3');
INSERT INTO `shop_area` VALUES ('4250', '绵竹市', '389', '0', '3');
INSERT INTO `shop_area` VALUES ('4251', '罗江县', '389', '0', '3');
INSERT INTO `shop_area` VALUES ('4252', '三台县', '390', '0', '3');
INSERT INTO `shop_area` VALUES ('4253', '北川羌族自治县', '390', '0', '3');
INSERT INTO `shop_area` VALUES ('4254', '安县', '390', '0', '3');
INSERT INTO `shop_area` VALUES ('4255', '平武县', '390', '0', '3');
INSERT INTO `shop_area` VALUES ('4256', '梓潼县', '390', '0', '3');
INSERT INTO `shop_area` VALUES ('4257', '江油市', '390', '0', '3');
INSERT INTO `shop_area` VALUES ('4258', '涪城区', '390', '0', '3');
INSERT INTO `shop_area` VALUES ('4259', '游仙区', '390', '0', '3');
INSERT INTO `shop_area` VALUES ('4260', '盐亭县', '390', '0', '3');
INSERT INTO `shop_area` VALUES ('4261', '元坝区', '391', '0', '3');
INSERT INTO `shop_area` VALUES ('4262', '利州区', '391', '0', '3');
INSERT INTO `shop_area` VALUES ('4263', '剑阁县', '391', '0', '3');
INSERT INTO `shop_area` VALUES ('4264', '旺苍县', '391', '0', '3');
INSERT INTO `shop_area` VALUES ('4265', '朝天区', '391', '0', '3');
INSERT INTO `shop_area` VALUES ('4266', '苍溪县', '391', '0', '3');
INSERT INTO `shop_area` VALUES ('4267', '青川县', '391', '0', '3');
INSERT INTO `shop_area` VALUES ('4268', '大英县', '392', '0', '3');
INSERT INTO `shop_area` VALUES ('4269', '安居区', '392', '0', '3');
INSERT INTO `shop_area` VALUES ('4270', '射洪县', '392', '0', '3');
INSERT INTO `shop_area` VALUES ('4271', '船山区', '392', '0', '3');
INSERT INTO `shop_area` VALUES ('4272', '蓬溪县', '392', '0', '3');
INSERT INTO `shop_area` VALUES ('4273', '东兴区', '393', '0', '3');
INSERT INTO `shop_area` VALUES ('4274', '威远县', '393', '0', '3');
INSERT INTO `shop_area` VALUES ('4275', '市中区', '393', '0', '3');
INSERT INTO `shop_area` VALUES ('4276', '资中县', '393', '0', '3');
INSERT INTO `shop_area` VALUES ('4277', '隆昌县', '393', '0', '3');
INSERT INTO `shop_area` VALUES ('4278', '五通桥区', '394', '0', '3');
INSERT INTO `shop_area` VALUES ('4279', '井研县', '394', '0', '3');
INSERT INTO `shop_area` VALUES ('4280', '夹江县', '394', '0', '3');
INSERT INTO `shop_area` VALUES ('4281', '峨眉山市', '394', '0', '3');
INSERT INTO `shop_area` VALUES ('4282', '峨边彝族自治县', '394', '0', '3');
INSERT INTO `shop_area` VALUES ('4283', '市中区', '394', '0', '3');
INSERT INTO `shop_area` VALUES ('4284', '沐川县', '394', '0', '3');
INSERT INTO `shop_area` VALUES ('4285', '沙湾区', '394', '0', '3');
INSERT INTO `shop_area` VALUES ('4286', '犍为县', '394', '0', '3');
INSERT INTO `shop_area` VALUES ('4287', '金口河区', '394', '0', '3');
INSERT INTO `shop_area` VALUES ('4288', '马边彝族自治县', '394', '0', '3');
INSERT INTO `shop_area` VALUES ('4289', '仪陇县', '395', '0', '3');
INSERT INTO `shop_area` VALUES ('4290', '南充市嘉陵区', '395', '0', '3');
INSERT INTO `shop_area` VALUES ('4291', '南部县', '395', '0', '3');
INSERT INTO `shop_area` VALUES ('4292', '嘉陵区', '395', '0', '3');
INSERT INTO `shop_area` VALUES ('4293', '营山县', '395', '0', '3');
INSERT INTO `shop_area` VALUES ('4294', '蓬安县', '395', '0', '3');
INSERT INTO `shop_area` VALUES ('4295', '西充县', '395', '0', '3');
INSERT INTO `shop_area` VALUES ('4296', '阆中市', '395', '0', '3');
INSERT INTO `shop_area` VALUES ('4297', '顺庆区', '395', '0', '3');
INSERT INTO `shop_area` VALUES ('4298', '高坪区', '395', '0', '3');
INSERT INTO `shop_area` VALUES ('4299', '东坡区', '396', '0', '3');
INSERT INTO `shop_area` VALUES ('4300', '丹棱县', '396', '0', '3');
INSERT INTO `shop_area` VALUES ('4301', '仁寿县', '396', '0', '3');
INSERT INTO `shop_area` VALUES ('4302', '彭山县', '396', '0', '3');
INSERT INTO `shop_area` VALUES ('4303', '洪雅县', '396', '0', '3');
INSERT INTO `shop_area` VALUES ('4304', '青神县', '396', '0', '3');
INSERT INTO `shop_area` VALUES ('4305', '兴文县', '397', '0', '3');
INSERT INTO `shop_area` VALUES ('4306', '南溪县', '397', '0', '3');
INSERT INTO `shop_area` VALUES ('4307', '宜宾县', '397', '0', '3');
INSERT INTO `shop_area` VALUES ('4308', '屏山县', '397', '0', '3');
INSERT INTO `shop_area` VALUES ('4309', '江安县', '397', '0', '3');
INSERT INTO `shop_area` VALUES ('4310', '珙县', '397', '0', '3');
INSERT INTO `shop_area` VALUES ('4311', '筠连县', '397', '0', '3');
INSERT INTO `shop_area` VALUES ('4312', '翠屏区', '397', '0', '3');
INSERT INTO `shop_area` VALUES ('4313', '长宁县', '397', '0', '3');
INSERT INTO `shop_area` VALUES ('4314', '高县', '397', '0', '3');
INSERT INTO `shop_area` VALUES ('4315', '华蓥市', '398', '0', '3');
INSERT INTO `shop_area` VALUES ('4316', '岳池县', '398', '0', '3');
INSERT INTO `shop_area` VALUES ('4317', '广安区', '398', '0', '3');
INSERT INTO `shop_area` VALUES ('4318', '武胜县', '398', '0', '3');
INSERT INTO `shop_area` VALUES ('4319', '邻水县', '398', '0', '3');
INSERT INTO `shop_area` VALUES ('4320', '万源市', '399', '0', '3');
INSERT INTO `shop_area` VALUES ('4321', '大竹县', '399', '0', '3');
INSERT INTO `shop_area` VALUES ('4322', '宣汉县', '399', '0', '3');
INSERT INTO `shop_area` VALUES ('4323', '开江县', '399', '0', '3');
INSERT INTO `shop_area` VALUES ('4324', '渠县', '399', '0', '3');
INSERT INTO `shop_area` VALUES ('4325', '达县', '399', '0', '3');
INSERT INTO `shop_area` VALUES ('4326', '通川区', '399', '0', '3');
INSERT INTO `shop_area` VALUES ('4327', '名山县', '400', '0', '3');
INSERT INTO `shop_area` VALUES ('4328', '天全县', '400', '0', '3');
INSERT INTO `shop_area` VALUES ('4329', '宝兴县', '400', '0', '3');
INSERT INTO `shop_area` VALUES ('4330', '汉源县', '400', '0', '3');
INSERT INTO `shop_area` VALUES ('4331', '石棉县', '400', '0', '3');
INSERT INTO `shop_area` VALUES ('4332', '芦山县', '400', '0', '3');
INSERT INTO `shop_area` VALUES ('4333', '荥经县', '400', '0', '3');
INSERT INTO `shop_area` VALUES ('4334', '雨城区', '400', '0', '3');
INSERT INTO `shop_area` VALUES ('4335', '南江县', '401', '0', '3');
INSERT INTO `shop_area` VALUES ('4336', '巴州区', '401', '0', '3');
INSERT INTO `shop_area` VALUES ('4337', '平昌县', '401', '0', '3');
INSERT INTO `shop_area` VALUES ('4338', '通江县', '401', '0', '3');
INSERT INTO `shop_area` VALUES ('4339', '乐至县', '402', '0', '3');
INSERT INTO `shop_area` VALUES ('4340', '安岳县', '402', '0', '3');
INSERT INTO `shop_area` VALUES ('4341', '简阳市', '402', '0', '3');
INSERT INTO `shop_area` VALUES ('4342', '雁江区', '402', '0', '3');
INSERT INTO `shop_area` VALUES ('4343', '九寨沟县', '403', '0', '3');
INSERT INTO `shop_area` VALUES ('4344', '壤塘县', '403', '0', '3');
INSERT INTO `shop_area` VALUES ('4345', '小金县', '403', '0', '3');
INSERT INTO `shop_area` VALUES ('4346', '松潘县', '403', '0', '3');
INSERT INTO `shop_area` VALUES ('4347', '汶川县', '403', '0', '3');
INSERT INTO `shop_area` VALUES ('4348', '理县', '403', '0', '3');
INSERT INTO `shop_area` VALUES ('4349', '红原县', '403', '0', '3');
INSERT INTO `shop_area` VALUES ('4350', '若尔盖县', '403', '0', '3');
INSERT INTO `shop_area` VALUES ('4351', '茂县', '403', '0', '3');
INSERT INTO `shop_area` VALUES ('4352', '金川县', '403', '0', '3');
INSERT INTO `shop_area` VALUES ('4353', '阿坝县', '403', '0', '3');
INSERT INTO `shop_area` VALUES ('4354', '马尔康县', '403', '0', '3');
INSERT INTO `shop_area` VALUES ('4355', '黑水县', '403', '0', '3');
INSERT INTO `shop_area` VALUES ('4356', '丹巴县', '404', '0', '3');
INSERT INTO `shop_area` VALUES ('4357', '乡城县', '404', '0', '3');
INSERT INTO `shop_area` VALUES ('4358', '巴塘县', '404', '0', '3');
INSERT INTO `shop_area` VALUES ('4359', '康定县', '404', '0', '3');
INSERT INTO `shop_area` VALUES ('4360', '得荣县', '404', '0', '3');
INSERT INTO `shop_area` VALUES ('4361', '德格县', '404', '0', '3');
INSERT INTO `shop_area` VALUES ('4362', '新龙县', '404', '0', '3');
INSERT INTO `shop_area` VALUES ('4363', '泸定县', '404', '0', '3');
INSERT INTO `shop_area` VALUES ('4364', '炉霍县', '404', '0', '3');
INSERT INTO `shop_area` VALUES ('4365', '理塘县', '404', '0', '3');
INSERT INTO `shop_area` VALUES ('4366', '甘孜县', '404', '0', '3');
INSERT INTO `shop_area` VALUES ('4367', '白玉县', '404', '0', '3');
INSERT INTO `shop_area` VALUES ('4368', '石渠县', '404', '0', '3');
INSERT INTO `shop_area` VALUES ('4369', '稻城县', '404', '0', '3');
INSERT INTO `shop_area` VALUES ('4370', '色达县', '404', '0', '3');
INSERT INTO `shop_area` VALUES ('4371', '道孚县', '404', '0', '3');
INSERT INTO `shop_area` VALUES ('4372', '雅江县', '404', '0', '3');
INSERT INTO `shop_area` VALUES ('4373', '会东县', '405', '0', '3');
INSERT INTO `shop_area` VALUES ('4374', '会理县', '405', '0', '3');
INSERT INTO `shop_area` VALUES ('4375', '冕宁县', '405', '0', '3');
INSERT INTO `shop_area` VALUES ('4376', '喜德县', '405', '0', '3');
INSERT INTO `shop_area` VALUES ('4377', '宁南县', '405', '0', '3');
INSERT INTO `shop_area` VALUES ('4378', '布拖县', '405', '0', '3');
INSERT INTO `shop_area` VALUES ('4379', '德昌县', '405', '0', '3');
INSERT INTO `shop_area` VALUES ('4380', '昭觉县', '405', '0', '3');
INSERT INTO `shop_area` VALUES ('4381', '普格县', '405', '0', '3');
INSERT INTO `shop_area` VALUES ('4382', '木里藏族自治县', '405', '0', '3');
INSERT INTO `shop_area` VALUES ('4383', '甘洛县', '405', '0', '3');
INSERT INTO `shop_area` VALUES ('4384', '盐源县', '405', '0', '3');
INSERT INTO `shop_area` VALUES ('4385', '美姑县', '405', '0', '3');
INSERT INTO `shop_area` VALUES ('4386', '西昌', '405', '0', '3');
INSERT INTO `shop_area` VALUES ('4387', '越西县', '405', '0', '3');
INSERT INTO `shop_area` VALUES ('4388', '金阳县', '405', '0', '3');
INSERT INTO `shop_area` VALUES ('4389', '雷波县', '405', '0', '3');
INSERT INTO `shop_area` VALUES ('4390', '乌当区', '406', '0', '3');
INSERT INTO `shop_area` VALUES ('4391', '云岩区', '406', '0', '3');
INSERT INTO `shop_area` VALUES ('4392', '修文县', '406', '0', '3');
INSERT INTO `shop_area` VALUES ('4393', '南明区', '406', '0', '3');
INSERT INTO `shop_area` VALUES ('4394', '小河区', '406', '0', '3');
INSERT INTO `shop_area` VALUES ('4395', '开阳县', '406', '0', '3');
INSERT INTO `shop_area` VALUES ('4396', '息烽县', '406', '0', '3');
INSERT INTO `shop_area` VALUES ('4397', '清镇市', '406', '0', '3');
INSERT INTO `shop_area` VALUES ('4398', '白云区', '406', '0', '3');
INSERT INTO `shop_area` VALUES ('4399', '花溪区', '406', '0', '3');
INSERT INTO `shop_area` VALUES ('4400', '六枝特区', '407', '0', '3');
INSERT INTO `shop_area` VALUES ('4401', '水城县', '407', '0', '3');
INSERT INTO `shop_area` VALUES ('4402', '盘县', '407', '0', '3');
INSERT INTO `shop_area` VALUES ('4403', '钟山区', '407', '0', '3');
INSERT INTO `shop_area` VALUES ('4404', '习水县', '408', '0', '3');
INSERT INTO `shop_area` VALUES ('4405', '仁怀市', '408', '0', '3');
INSERT INTO `shop_area` VALUES ('4406', '余庆县', '408', '0', '3');
INSERT INTO `shop_area` VALUES ('4407', '凤冈县', '408', '0', '3');
INSERT INTO `shop_area` VALUES ('4408', '务川仡佬族苗族自治县', '408', '0', '3');
INSERT INTO `shop_area` VALUES ('4409', '桐梓县', '408', '0', '3');
INSERT INTO `shop_area` VALUES ('4410', '正安县', '408', '0', '3');
INSERT INTO `shop_area` VALUES ('4411', '汇川区', '408', '0', '3');
INSERT INTO `shop_area` VALUES ('4412', '湄潭县', '408', '0', '3');
INSERT INTO `shop_area` VALUES ('4413', '红花岗区', '408', '0', '3');
INSERT INTO `shop_area` VALUES ('4414', '绥阳县', '408', '0', '3');
INSERT INTO `shop_area` VALUES ('4415', '赤水市', '408', '0', '3');
INSERT INTO `shop_area` VALUES ('4416', '道真仡佬族苗族自治县', '408', '0', '3');
INSERT INTO `shop_area` VALUES ('4417', '遵义县', '408', '0', '3');
INSERT INTO `shop_area` VALUES ('4418', '关岭布依族苗族自治县', '409', '0', '3');
INSERT INTO `shop_area` VALUES ('4419', '平坝县', '409', '0', '3');
INSERT INTO `shop_area` VALUES ('4420', '普定县', '409', '0', '3');
INSERT INTO `shop_area` VALUES ('4421', '紫云苗族布依族自治县', '409', '0', '3');
INSERT INTO `shop_area` VALUES ('4422', '西秀区', '409', '0', '3');
INSERT INTO `shop_area` VALUES ('4423', '镇宁布依族苗族自治县', '409', '0', '3');
INSERT INTO `shop_area` VALUES ('4424', '万山特区', '410', '0', '3');
INSERT INTO `shop_area` VALUES ('4425', '印江土家族苗族自治县', '410', '0', '3');
INSERT INTO `shop_area` VALUES ('4426', '德江县', '410', '0', '3');
INSERT INTO `shop_area` VALUES ('4427', '思南县', '410', '0', '3');
INSERT INTO `shop_area` VALUES ('4428', '松桃苗族自治县', '410', '0', '3');
INSERT INTO `shop_area` VALUES ('4429', '江口县', '410', '0', '3');
INSERT INTO `shop_area` VALUES ('4430', '沿河土家族自治县', '410', '0', '3');
INSERT INTO `shop_area` VALUES ('4431', '玉屏侗族自治县', '410', '0', '3');
INSERT INTO `shop_area` VALUES ('4432', '石阡县', '410', '0', '3');
INSERT INTO `shop_area` VALUES ('4433', '铜仁市', '410', '0', '3');
INSERT INTO `shop_area` VALUES ('4434', '兴义市', '411', '0', '3');
INSERT INTO `shop_area` VALUES ('4435', '兴仁县', '411', '0', '3');
INSERT INTO `shop_area` VALUES ('4436', '册亨县', '411', '0', '3');
INSERT INTO `shop_area` VALUES ('4437', '安龙县', '411', '0', '3');
INSERT INTO `shop_area` VALUES ('4438', '普安县', '411', '0', '3');
INSERT INTO `shop_area` VALUES ('4439', '晴隆县', '411', '0', '3');
INSERT INTO `shop_area` VALUES ('4440', '望谟县', '411', '0', '3');
INSERT INTO `shop_area` VALUES ('4441', '贞丰县', '411', '0', '3');
INSERT INTO `shop_area` VALUES ('4442', '大方县', '412', '0', '3');
INSERT INTO `shop_area` VALUES ('4443', '威宁彝族回族苗族自治县', '412', '0', '3');
INSERT INTO `shop_area` VALUES ('4444', '毕节市', '412', '0', '3');
INSERT INTO `shop_area` VALUES ('4445', '纳雍县', '412', '0', '3');
INSERT INTO `shop_area` VALUES ('4446', '织金县', '412', '0', '3');
INSERT INTO `shop_area` VALUES ('4447', '赫章县', '412', '0', '3');
INSERT INTO `shop_area` VALUES ('4448', '金沙县', '412', '0', '3');
INSERT INTO `shop_area` VALUES ('4449', '黔西县', '412', '0', '3');
INSERT INTO `shop_area` VALUES ('4450', '三穗县', '413', '0', '3');
INSERT INTO `shop_area` VALUES ('4451', '丹寨县', '413', '0', '3');
INSERT INTO `shop_area` VALUES ('4452', '从江县', '413', '0', '3');
INSERT INTO `shop_area` VALUES ('4453', '凯里市', '413', '0', '3');
INSERT INTO `shop_area` VALUES ('4454', '剑河县', '413', '0', '3');
INSERT INTO `shop_area` VALUES ('4455', '台江县', '413', '0', '3');
INSERT INTO `shop_area` VALUES ('4456', '天柱县', '413', '0', '3');
INSERT INTO `shop_area` VALUES ('4457', '岑巩县', '413', '0', '3');
INSERT INTO `shop_area` VALUES ('4458', '施秉县', '413', '0', '3');
INSERT INTO `shop_area` VALUES ('4459', '榕江县', '413', '0', '3');
INSERT INTO `shop_area` VALUES ('4460', '锦屏县', '413', '0', '3');
INSERT INTO `shop_area` VALUES ('4461', '镇远县', '413', '0', '3');
INSERT INTO `shop_area` VALUES ('4462', '雷山县', '413', '0', '3');
INSERT INTO `shop_area` VALUES ('4463', '麻江县', '413', '0', '3');
INSERT INTO `shop_area` VALUES ('4464', '黄平县', '413', '0', '3');
INSERT INTO `shop_area` VALUES ('4465', '黎平县', '413', '0', '3');
INSERT INTO `shop_area` VALUES ('4466', '三都水族自治县', '414', '0', '3');
INSERT INTO `shop_area` VALUES ('4467', '平塘县', '414', '0', '3');
INSERT INTO `shop_area` VALUES ('4468', '惠水县', '414', '0', '3');
INSERT INTO `shop_area` VALUES ('4469', '独山县', '414', '0', '3');
INSERT INTO `shop_area` VALUES ('4470', '瓮安县', '414', '0', '3');
INSERT INTO `shop_area` VALUES ('4471', '福泉市', '414', '0', '3');
INSERT INTO `shop_area` VALUES ('4472', '罗甸县', '414', '0', '3');
INSERT INTO `shop_area` VALUES ('4473', '荔波县', '414', '0', '3');
INSERT INTO `shop_area` VALUES ('4474', '贵定县', '414', '0', '3');
INSERT INTO `shop_area` VALUES ('4475', '都匀市', '414', '0', '3');
INSERT INTO `shop_area` VALUES ('4476', '长顺县', '414', '0', '3');
INSERT INTO `shop_area` VALUES ('4477', '龙里县', '414', '0', '3');
INSERT INTO `shop_area` VALUES ('4478', '东川区', '415', '0', '3');
INSERT INTO `shop_area` VALUES ('4479', '五华区', '415', '0', '3');
INSERT INTO `shop_area` VALUES ('4480', '呈贡县', '415', '0', '3');
INSERT INTO `shop_area` VALUES ('4481', '安宁市', '415', '0', '3');
INSERT INTO `shop_area` VALUES ('4482', '官渡区', '415', '0', '3');
INSERT INTO `shop_area` VALUES ('4483', '宜良县', '415', '0', '3');
INSERT INTO `shop_area` VALUES ('4484', '富民县', '415', '0', '3');
INSERT INTO `shop_area` VALUES ('4485', '寻甸回族彝族自治县', '415', '0', '3');
INSERT INTO `shop_area` VALUES ('4486', '嵩明县', '415', '0', '3');
INSERT INTO `shop_area` VALUES ('4487', '晋宁县', '415', '0', '3');
INSERT INTO `shop_area` VALUES ('4488', '盘龙区', '415', '0', '3');
INSERT INTO `shop_area` VALUES ('4489', '石林彝族自治县', '415', '0', '3');
INSERT INTO `shop_area` VALUES ('4490', '禄劝彝族苗族自治县', '415', '0', '3');
INSERT INTO `shop_area` VALUES ('4491', '西山区', '415', '0', '3');
INSERT INTO `shop_area` VALUES ('4492', '会泽县', '416', '0', '3');
INSERT INTO `shop_area` VALUES ('4493', '宣威市', '416', '0', '3');
INSERT INTO `shop_area` VALUES ('4494', '富源县', '416', '0', '3');
INSERT INTO `shop_area` VALUES ('4495', '师宗县', '416', '0', '3');
INSERT INTO `shop_area` VALUES ('4496', '沾益县', '416', '0', '3');
INSERT INTO `shop_area` VALUES ('4497', '罗平县', '416', '0', '3');
INSERT INTO `shop_area` VALUES ('4498', '陆良县', '416', '0', '3');
INSERT INTO `shop_area` VALUES ('4499', '马龙县', '416', '0', '3');
INSERT INTO `shop_area` VALUES ('4500', '麒麟区', '416', '0', '3');
INSERT INTO `shop_area` VALUES ('4501', '元江哈尼族彝族傣族自治县', '417', '0', '3');
INSERT INTO `shop_area` VALUES ('4502', '华宁县', '417', '0', '3');
INSERT INTO `shop_area` VALUES ('4503', '峨山彝族自治县', '417', '0', '3');
INSERT INTO `shop_area` VALUES ('4504', '新平彝族傣族自治县', '417', '0', '3');
INSERT INTO `shop_area` VALUES ('4505', '易门县', '417', '0', '3');
INSERT INTO `shop_area` VALUES ('4506', '江川县', '417', '0', '3');
INSERT INTO `shop_area` VALUES ('4507', '澄江县', '417', '0', '3');
INSERT INTO `shop_area` VALUES ('4508', '红塔区', '417', '0', '3');
INSERT INTO `shop_area` VALUES ('4509', '通海县', '417', '0', '3');
INSERT INTO `shop_area` VALUES ('4510', '施甸县', '418', '0', '3');
INSERT INTO `shop_area` VALUES ('4511', '昌宁县', '418', '0', '3');
INSERT INTO `shop_area` VALUES ('4512', '腾冲县', '418', '0', '3');
INSERT INTO `shop_area` VALUES ('4513', '隆阳区', '418', '0', '3');
INSERT INTO `shop_area` VALUES ('4514', '龙陵县', '418', '0', '3');
INSERT INTO `shop_area` VALUES ('4515', '大关县', '419', '0', '3');
INSERT INTO `shop_area` VALUES ('4516', '威信县', '419', '0', '3');
INSERT INTO `shop_area` VALUES ('4517', '巧家县', '419', '0', '3');
INSERT INTO `shop_area` VALUES ('4518', '彝良县', '419', '0', '3');
INSERT INTO `shop_area` VALUES ('4519', '昭阳区', '419', '0', '3');
INSERT INTO `shop_area` VALUES ('4520', '水富县', '419', '0', '3');
INSERT INTO `shop_area` VALUES ('4521', '永善县', '419', '0', '3');
INSERT INTO `shop_area` VALUES ('4522', '盐津县', '419', '0', '3');
INSERT INTO `shop_area` VALUES ('4523', '绥江县', '419', '0', '3');
INSERT INTO `shop_area` VALUES ('4524', '镇雄县', '419', '0', '3');
INSERT INTO `shop_area` VALUES ('4525', '鲁甸县', '419', '0', '3');
INSERT INTO `shop_area` VALUES ('4526', '华坪县', '420', '0', '3');
INSERT INTO `shop_area` VALUES ('4527', '古城区', '420', '0', '3');
INSERT INTO `shop_area` VALUES ('4528', '宁蒗彝族自治县', '420', '0', '3');
INSERT INTO `shop_area` VALUES ('4529', '永胜县', '420', '0', '3');
INSERT INTO `shop_area` VALUES ('4530', '玉龙纳西族自治县', '420', '0', '3');
INSERT INTO `shop_area` VALUES ('4531', '临翔区', '422', '0', '3');
INSERT INTO `shop_area` VALUES ('4532', '云县', '422', '0', '3');
INSERT INTO `shop_area` VALUES ('4533', '凤庆县', '422', '0', '3');
INSERT INTO `shop_area` VALUES ('4534', '双江拉祜族佤族布朗族傣族自治县', '422', '0', '3');
INSERT INTO `shop_area` VALUES ('4535', '永德县', '422', '0', '3');
INSERT INTO `shop_area` VALUES ('4536', '沧源佤族自治县', '422', '0', '3');
INSERT INTO `shop_area` VALUES ('4537', '耿马傣族佤族自治县', '422', '0', '3');
INSERT INTO `shop_area` VALUES ('4538', '镇康县', '422', '0', '3');
INSERT INTO `shop_area` VALUES ('4539', '元谋县', '423', '0', '3');
INSERT INTO `shop_area` VALUES ('4540', '南华县', '423', '0', '3');
INSERT INTO `shop_area` VALUES ('4541', '双柏县', '423', '0', '3');
INSERT INTO `shop_area` VALUES ('4542', '大姚县', '423', '0', '3');
INSERT INTO `shop_area` VALUES ('4543', '姚安县', '423', '0', '3');
INSERT INTO `shop_area` VALUES ('4544', '楚雄市', '423', '0', '3');
INSERT INTO `shop_area` VALUES ('4545', '武定县', '423', '0', '3');
INSERT INTO `shop_area` VALUES ('4546', '永仁县', '423', '0', '3');
INSERT INTO `shop_area` VALUES ('4547', '牟定县', '423', '0', '3');
INSERT INTO `shop_area` VALUES ('4548', '禄丰县', '423', '0', '3');
INSERT INTO `shop_area` VALUES ('4549', '个旧市', '424', '0', '3');
INSERT INTO `shop_area` VALUES ('4550', '元阳县', '424', '0', '3');
INSERT INTO `shop_area` VALUES ('4551', '屏边苗族自治县', '424', '0', '3');
INSERT INTO `shop_area` VALUES ('4552', '建水县', '424', '0', '3');
INSERT INTO `shop_area` VALUES ('4553', '开远市', '424', '0', '3');
INSERT INTO `shop_area` VALUES ('4554', '弥勒县', '424', '0', '3');
INSERT INTO `shop_area` VALUES ('4555', '河口瑶族自治县', '424', '0', '3');
INSERT INTO `shop_area` VALUES ('4556', '泸西县', '424', '0', '3');
INSERT INTO `shop_area` VALUES ('4557', '石屏县', '424', '0', '3');
INSERT INTO `shop_area` VALUES ('4558', '红河县', '424', '0', '3');
INSERT INTO `shop_area` VALUES ('4559', '绿春县', '424', '0', '3');
INSERT INTO `shop_area` VALUES ('4560', '蒙自县', '424', '0', '3');
INSERT INTO `shop_area` VALUES ('4561', '金平苗族瑶族傣族自治县', '424', '0', '3');
INSERT INTO `shop_area` VALUES ('4562', '丘北县', '425', '0', '3');
INSERT INTO `shop_area` VALUES ('4563', '富宁县', '425', '0', '3');
INSERT INTO `shop_area` VALUES ('4564', '广南县', '425', '0', '3');
INSERT INTO `shop_area` VALUES ('4565', '文山县', '425', '0', '3');
INSERT INTO `shop_area` VALUES ('4566', '砚山县', '425', '0', '3');
INSERT INTO `shop_area` VALUES ('4567', '西畴县', '425', '0', '3');
INSERT INTO `shop_area` VALUES ('4568', '马关县', '425', '0', '3');
INSERT INTO `shop_area` VALUES ('4569', '麻栗坡县', '425', '0', '3');
INSERT INTO `shop_area` VALUES ('4570', '勐海县', '426', '0', '3');
INSERT INTO `shop_area` VALUES ('4571', '勐腊县', '426', '0', '3');
INSERT INTO `shop_area` VALUES ('4572', '景洪市', '426', '0', '3');
INSERT INTO `shop_area` VALUES ('4573', '云龙县', '427', '0', '3');
INSERT INTO `shop_area` VALUES ('4574', '剑川县', '427', '0', '3');
INSERT INTO `shop_area` VALUES ('4575', '南涧彝族自治县', '427', '0', '3');
INSERT INTO `shop_area` VALUES ('4576', '大理市', '427', '0', '3');
INSERT INTO `shop_area` VALUES ('4577', '宾川县', '427', '0', '3');
INSERT INTO `shop_area` VALUES ('4578', '巍山彝族回族自治县', '427', '0', '3');
INSERT INTO `shop_area` VALUES ('4579', '弥渡县', '427', '0', '3');
INSERT INTO `shop_area` VALUES ('4580', '永平县', '427', '0', '3');
INSERT INTO `shop_area` VALUES ('4581', '洱源县', '427', '0', '3');
INSERT INTO `shop_area` VALUES ('4582', '漾濞彝族自治县', '427', '0', '3');
INSERT INTO `shop_area` VALUES ('4583', '祥云县', '427', '0', '3');
INSERT INTO `shop_area` VALUES ('4584', '鹤庆县', '427', '0', '3');
INSERT INTO `shop_area` VALUES ('4585', '梁河县', '428', '0', '3');
INSERT INTO `shop_area` VALUES ('4586', '潞西市', '428', '0', '3');
INSERT INTO `shop_area` VALUES ('4587', '瑞丽市', '428', '0', '3');
INSERT INTO `shop_area` VALUES ('4588', '盈江县', '428', '0', '3');
INSERT INTO `shop_area` VALUES ('4589', '陇川县', '428', '0', '3');
INSERT INTO `shop_area` VALUES ('4590', '德钦县', '430', '0', '3');
INSERT INTO `shop_area` VALUES ('4591', '维西傈僳族自治县', '430', '0', '3');
INSERT INTO `shop_area` VALUES ('4592', '香格里拉县', '430', '0', '3');
INSERT INTO `shop_area` VALUES ('4593', '城关区', '431', '0', '3');
INSERT INTO `shop_area` VALUES ('4594', '堆龙德庆县', '431', '0', '3');
INSERT INTO `shop_area` VALUES ('4595', '墨竹工卡县', '431', '0', '3');
INSERT INTO `shop_area` VALUES ('4596', '尼木县', '431', '0', '3');
INSERT INTO `shop_area` VALUES ('4597', '当雄县', '431', '0', '3');
INSERT INTO `shop_area` VALUES ('4598', '曲水县', '431', '0', '3');
INSERT INTO `shop_area` VALUES ('4599', '林周县', '431', '0', '3');
INSERT INTO `shop_area` VALUES ('4600', '达孜县', '431', '0', '3');
INSERT INTO `shop_area` VALUES ('4601', '丁青县', '432', '0', '3');
INSERT INTO `shop_area` VALUES ('4602', '八宿县', '432', '0', '3');
INSERT INTO `shop_area` VALUES ('4603', '察雅县', '432', '0', '3');
INSERT INTO `shop_area` VALUES ('4604', '左贡县', '432', '0', '3');
INSERT INTO `shop_area` VALUES ('4605', '昌都县', '432', '0', '3');
INSERT INTO `shop_area` VALUES ('4606', '江达县', '432', '0', '3');
INSERT INTO `shop_area` VALUES ('4607', '洛隆县', '432', '0', '3');
INSERT INTO `shop_area` VALUES ('4608', '类乌齐县', '432', '0', '3');
INSERT INTO `shop_area` VALUES ('4609', '芒康县', '432', '0', '3');
INSERT INTO `shop_area` VALUES ('4610', '贡觉县', '432', '0', '3');
INSERT INTO `shop_area` VALUES ('4611', '边坝县', '432', '0', '3');
INSERT INTO `shop_area` VALUES ('4612', '乃东县', '433', '0', '3');
INSERT INTO `shop_area` VALUES ('4613', '加查县', '433', '0', '3');
INSERT INTO `shop_area` VALUES ('4614', '扎囊县', '433', '0', '3');
INSERT INTO `shop_area` VALUES ('4615', '措美县', '433', '0', '3');
INSERT INTO `shop_area` VALUES ('4616', '曲松县', '433', '0', '3');
INSERT INTO `shop_area` VALUES ('4617', '桑日县', '433', '0', '3');
INSERT INTO `shop_area` VALUES ('4618', '洛扎县', '433', '0', '3');
INSERT INTO `shop_area` VALUES ('4619', '浪卡子县', '433', '0', '3');
INSERT INTO `shop_area` VALUES ('4620', '琼结县', '433', '0', '3');
INSERT INTO `shop_area` VALUES ('4621', '贡嘎县', '433', '0', '3');
INSERT INTO `shop_area` VALUES ('4622', '错那县', '433', '0', '3');
INSERT INTO `shop_area` VALUES ('4623', '隆子县', '433', '0', '3');
INSERT INTO `shop_area` VALUES ('4624', '亚东县', '434', '0', '3');
INSERT INTO `shop_area` VALUES ('4625', '仁布县', '434', '0', '3');
INSERT INTO `shop_area` VALUES ('4626', '仲巴县', '434', '0', '3');
INSERT INTO `shop_area` VALUES ('4627', '南木林县', '434', '0', '3');
INSERT INTO `shop_area` VALUES ('4628', '吉隆县', '434', '0', '3');
INSERT INTO `shop_area` VALUES ('4629', '定日县', '434', '0', '3');
INSERT INTO `shop_area` VALUES ('4630', '定结县', '434', '0', '3');
INSERT INTO `shop_area` VALUES ('4631', '岗巴县', '434', '0', '3');
INSERT INTO `shop_area` VALUES ('4632', '康马县', '434', '0', '3');
INSERT INTO `shop_area` VALUES ('4633', '拉孜县', '434', '0', '3');
INSERT INTO `shop_area` VALUES ('4634', '日喀则市', '434', '0', '3');
INSERT INTO `shop_area` VALUES ('4635', '昂仁县', '434', '0', '3');
INSERT INTO `shop_area` VALUES ('4636', '江孜县', '434', '0', '3');
INSERT INTO `shop_area` VALUES ('4637', '白朗县', '434', '0', '3');
INSERT INTO `shop_area` VALUES ('4638', '聂拉木县', '434', '0', '3');
INSERT INTO `shop_area` VALUES ('4639', '萨嘎县', '434', '0', '3');
INSERT INTO `shop_area` VALUES ('4640', '萨迦县', '434', '0', '3');
INSERT INTO `shop_area` VALUES ('4641', '谢通门县', '434', '0', '3');
INSERT INTO `shop_area` VALUES ('4642', '嘉黎县', '435', '0', '3');
INSERT INTO `shop_area` VALUES ('4643', '安多县', '435', '0', '3');
INSERT INTO `shop_area` VALUES ('4644', '尼玛县', '435', '0', '3');
INSERT INTO `shop_area` VALUES ('4645', '巴青县', '435', '0', '3');
INSERT INTO `shop_area` VALUES ('4646', '比如县', '435', '0', '3');
INSERT INTO `shop_area` VALUES ('4647', '班戈县', '435', '0', '3');
INSERT INTO `shop_area` VALUES ('4648', '申扎县', '435', '0', '3');
INSERT INTO `shop_area` VALUES ('4649', '索县', '435', '0', '3');
INSERT INTO `shop_area` VALUES ('4650', '聂荣县', '435', '0', '3');
INSERT INTO `shop_area` VALUES ('4651', '那曲县', '435', '0', '3');
INSERT INTO `shop_area` VALUES ('4652', '噶尔县', '436', '0', '3');
INSERT INTO `shop_area` VALUES ('4653', '措勤县', '436', '0', '3');
INSERT INTO `shop_area` VALUES ('4654', '改则县', '436', '0', '3');
INSERT INTO `shop_area` VALUES ('4655', '日土县', '436', '0', '3');
INSERT INTO `shop_area` VALUES ('4656', '普兰县', '436', '0', '3');
INSERT INTO `shop_area` VALUES ('4657', '札达县', '436', '0', '3');
INSERT INTO `shop_area` VALUES ('4658', '革吉县', '436', '0', '3');
INSERT INTO `shop_area` VALUES ('4659', '墨脱县', '437', '0', '3');
INSERT INTO `shop_area` VALUES ('4660', '察隅县', '437', '0', '3');
INSERT INTO `shop_area` VALUES ('4661', '工布江达县', '437', '0', '3');
INSERT INTO `shop_area` VALUES ('4662', '朗县', '437', '0', '3');
INSERT INTO `shop_area` VALUES ('4663', '林芝县', '437', '0', '3');
INSERT INTO `shop_area` VALUES ('4664', '波密县', '437', '0', '3');
INSERT INTO `shop_area` VALUES ('4665', '米林县', '437', '0', '3');
INSERT INTO `shop_area` VALUES ('4666', '临潼区', '438', '0', '3');
INSERT INTO `shop_area` VALUES ('4667', '周至县', '438', '0', '3');
INSERT INTO `shop_area` VALUES ('4668', '户县', '438', '0', '3');
INSERT INTO `shop_area` VALUES ('4669', '新城区', '438', '0', '3');
INSERT INTO `shop_area` VALUES ('4670', '未央区', '438', '0', '3');
INSERT INTO `shop_area` VALUES ('4671', '灞桥区', '438', '0', '3');
INSERT INTO `shop_area` VALUES ('4672', '碑林区', '438', '0', '3');
INSERT INTO `shop_area` VALUES ('4673', '莲湖区', '438', '0', '3');
INSERT INTO `shop_area` VALUES ('4674', '蓝田县', '438', '0', '3');
INSERT INTO `shop_area` VALUES ('4675', '长安区', '438', '0', '3');
INSERT INTO `shop_area` VALUES ('4676', '阎良区', '438', '0', '3');
INSERT INTO `shop_area` VALUES ('4677', '雁塔区', '438', '0', '3');
INSERT INTO `shop_area` VALUES ('4678', '高陵县', '438', '0', '3');
INSERT INTO `shop_area` VALUES ('4679', '印台区', '439', '0', '3');
INSERT INTO `shop_area` VALUES ('4680', '宜君县', '439', '0', '3');
INSERT INTO `shop_area` VALUES ('4681', '王益区', '439', '0', '3');
INSERT INTO `shop_area` VALUES ('4682', '耀州区', '439', '0', '3');
INSERT INTO `shop_area` VALUES ('4683', '凤县', '440', '0', '3');
INSERT INTO `shop_area` VALUES ('4684', '凤翔县', '440', '0', '3');
INSERT INTO `shop_area` VALUES ('4685', '千阳县', '440', '0', '3');
INSERT INTO `shop_area` VALUES ('4686', '太白县', '440', '0', '3');
INSERT INTO `shop_area` VALUES ('4687', '岐山县', '440', '0', '3');
INSERT INTO `shop_area` VALUES ('4688', '扶风县', '440', '0', '3');
INSERT INTO `shop_area` VALUES ('4689', '渭滨区', '440', '0', '3');
INSERT INTO `shop_area` VALUES ('4690', '眉县', '440', '0', '3');
INSERT INTO `shop_area` VALUES ('4691', '金台区', '440', '0', '3');
INSERT INTO `shop_area` VALUES ('4692', '陇县', '440', '0', '3');
INSERT INTO `shop_area` VALUES ('4693', '陈仓区', '440', '0', '3');
INSERT INTO `shop_area` VALUES ('4694', '麟游县', '440', '0', '3');
INSERT INTO `shop_area` VALUES ('4695', '三原县', '441', '0', '3');
INSERT INTO `shop_area` VALUES ('4696', '干县', '441', '0', '3');
INSERT INTO `shop_area` VALUES ('4697', '兴平市', '441', '0', '3');
INSERT INTO `shop_area` VALUES ('4698', '彬县', '441', '0', '3');
INSERT INTO `shop_area` VALUES ('4699', '旬邑县', '441', '0', '3');
INSERT INTO `shop_area` VALUES ('4700', '杨陵区', '441', '0', '3');
INSERT INTO `shop_area` VALUES ('4701', '武功县', '441', '0', '3');
INSERT INTO `shop_area` VALUES ('4702', '永寿县', '441', '0', '3');
INSERT INTO `shop_area` VALUES ('4703', '泾阳县', '441', '0', '3');
INSERT INTO `shop_area` VALUES ('4704', '淳化县', '441', '0', '3');
INSERT INTO `shop_area` VALUES ('4705', '渭城区', '441', '0', '3');
INSERT INTO `shop_area` VALUES ('4706', '礼泉县', '441', '0', '3');
INSERT INTO `shop_area` VALUES ('4707', '秦都区', '441', '0', '3');
INSERT INTO `shop_area` VALUES ('4708', '长武县', '441', '0', '3');
INSERT INTO `shop_area` VALUES ('4709', '临渭区', '442', '0', '3');
INSERT INTO `shop_area` VALUES ('4710', '华县', '442', '0', '3');
INSERT INTO `shop_area` VALUES ('4711', '华阴市', '442', '0', '3');
INSERT INTO `shop_area` VALUES ('4712', '合阳县', '442', '0', '3');
INSERT INTO `shop_area` VALUES ('4713', '大荔县', '442', '0', '3');
INSERT INTO `shop_area` VALUES ('4714', '富平县', '442', '0', '3');
INSERT INTO `shop_area` VALUES ('4715', '潼关县', '442', '0', '3');
INSERT INTO `shop_area` VALUES ('4716', '澄城县', '442', '0', '3');
INSERT INTO `shop_area` VALUES ('4717', '白水县', '442', '0', '3');
INSERT INTO `shop_area` VALUES ('4718', '蒲城县', '442', '0', '3');
INSERT INTO `shop_area` VALUES ('4719', '韩城市', '442', '0', '3');
INSERT INTO `shop_area` VALUES ('4720', '吴起县', '443', '0', '3');
INSERT INTO `shop_area` VALUES ('4721', '子长县', '443', '0', '3');
INSERT INTO `shop_area` VALUES ('4722', '安塞县', '443', '0', '3');
INSERT INTO `shop_area` VALUES ('4723', '宜川县', '443', '0', '3');
INSERT INTO `shop_area` VALUES ('4724', '宝塔区', '443', '0', '3');
INSERT INTO `shop_area` VALUES ('4725', '富县', '443', '0', '3');
INSERT INTO `shop_area` VALUES ('4726', '延川县', '443', '0', '3');
INSERT INTO `shop_area` VALUES ('4727', '延长县', '443', '0', '3');
INSERT INTO `shop_area` VALUES ('4728', '志丹县', '443', '0', '3');
INSERT INTO `shop_area` VALUES ('4729', '洛川县', '443', '0', '3');
INSERT INTO `shop_area` VALUES ('4730', '甘泉县', '443', '0', '3');
INSERT INTO `shop_area` VALUES ('4731', '黄陵县', '443', '0', '3');
INSERT INTO `shop_area` VALUES ('4732', '黄龙县', '443', '0', '3');
INSERT INTO `shop_area` VALUES ('4733', '佛坪县', '444', '0', '3');
INSERT INTO `shop_area` VALUES ('4734', '勉县', '444', '0', '3');
INSERT INTO `shop_area` VALUES ('4735', '南郑县', '444', '0', '3');
INSERT INTO `shop_area` VALUES ('4736', '城固县', '444', '0', '3');
INSERT INTO `shop_area` VALUES ('4737', '宁强县', '444', '0', '3');
INSERT INTO `shop_area` VALUES ('4738', '汉台区', '444', '0', '3');
INSERT INTO `shop_area` VALUES ('4739', '洋县', '444', '0', '3');
INSERT INTO `shop_area` VALUES ('4740', '留坝县', '444', '0', '3');
INSERT INTO `shop_area` VALUES ('4741', '略阳县', '444', '0', '3');
INSERT INTO `shop_area` VALUES ('4742', '西乡县', '444', '0', '3');
INSERT INTO `shop_area` VALUES ('4743', '镇巴县', '444', '0', '3');
INSERT INTO `shop_area` VALUES ('4744', '佳县', '445', '0', '3');
INSERT INTO `shop_area` VALUES ('4745', '吴堡县', '445', '0', '3');
INSERT INTO `shop_area` VALUES ('4746', '子洲县', '445', '0', '3');
INSERT INTO `shop_area` VALUES ('4747', '定边县', '445', '0', '3');
INSERT INTO `shop_area` VALUES ('4748', '府谷县', '445', '0', '3');
INSERT INTO `shop_area` VALUES ('4749', '榆林市榆阳区', '445', '0', '3');
INSERT INTO `shop_area` VALUES ('4750', '横山县', '445', '0', '3');
INSERT INTO `shop_area` VALUES ('4751', '清涧县', '445', '0', '3');
INSERT INTO `shop_area` VALUES ('4752', '神木县', '445', '0', '3');
INSERT INTO `shop_area` VALUES ('4753', '米脂县', '445', '0', '3');
INSERT INTO `shop_area` VALUES ('4754', '绥德县', '445', '0', '3');
INSERT INTO `shop_area` VALUES ('4755', '靖边县', '445', '0', '3');
INSERT INTO `shop_area` VALUES ('4756', '宁陕县', '446', '0', '3');
INSERT INTO `shop_area` VALUES ('4757', '岚皋县', '446', '0', '3');
INSERT INTO `shop_area` VALUES ('4758', '平利县', '446', '0', '3');
INSERT INTO `shop_area` VALUES ('4759', '旬阳县', '446', '0', '3');
INSERT INTO `shop_area` VALUES ('4760', '汉滨区', '446', '0', '3');
INSERT INTO `shop_area` VALUES ('4761', '汉阴县', '446', '0', '3');
INSERT INTO `shop_area` VALUES ('4762', '白河县', '446', '0', '3');
INSERT INTO `shop_area` VALUES ('4763', '石泉县', '446', '0', '3');
INSERT INTO `shop_area` VALUES ('4764', '紫阳县', '446', '0', '3');
INSERT INTO `shop_area` VALUES ('4765', '镇坪县', '446', '0', '3');
INSERT INTO `shop_area` VALUES ('4766', '丹凤县', '447', '0', '3');
INSERT INTO `shop_area` VALUES ('4767', '商南县', '447', '0', '3');
INSERT INTO `shop_area` VALUES ('4768', '商州区', '447', '0', '3');
INSERT INTO `shop_area` VALUES ('4769', '山阳县', '447', '0', '3');
INSERT INTO `shop_area` VALUES ('4770', '柞水县', '447', '0', '3');
INSERT INTO `shop_area` VALUES ('4771', '洛南县', '447', '0', '3');
INSERT INTO `shop_area` VALUES ('4772', '镇安县', '447', '0', '3');
INSERT INTO `shop_area` VALUES ('4773', '七里河区', '448', '0', '3');
INSERT INTO `shop_area` VALUES ('4774', '城关区', '448', '0', '3');
INSERT INTO `shop_area` VALUES ('4775', '安宁区', '448', '0', '3');
INSERT INTO `shop_area` VALUES ('4776', '榆中县', '448', '0', '3');
INSERT INTO `shop_area` VALUES ('4777', '永登县', '448', '0', '3');
INSERT INTO `shop_area` VALUES ('4778', '皋兰县', '448', '0', '3');
INSERT INTO `shop_area` VALUES ('4779', '红古区', '448', '0', '3');
INSERT INTO `shop_area` VALUES ('4780', '西固区', '448', '0', '3');
INSERT INTO `shop_area` VALUES ('4781', '嘉峪关市', '449', '0', '3');
INSERT INTO `shop_area` VALUES ('4782', '永昌县', '450', '0', '3');
INSERT INTO `shop_area` VALUES ('4783', '金川区', '450', '0', '3');
INSERT INTO `shop_area` VALUES ('4784', '会宁县', '451', '0', '3');
INSERT INTO `shop_area` VALUES ('4785', '平川区', '451', '0', '3');
INSERT INTO `shop_area` VALUES ('4786', '景泰县', '451', '0', '3');
INSERT INTO `shop_area` VALUES ('4787', '白银区', '451', '0', '3');
INSERT INTO `shop_area` VALUES ('4788', '靖远县', '451', '0', '3');
INSERT INTO `shop_area` VALUES ('4789', '张家川回族自治县', '452', '0', '3');
INSERT INTO `shop_area` VALUES ('4790', '武山县', '452', '0', '3');
INSERT INTO `shop_area` VALUES ('4791', '清水县', '452', '0', '3');
INSERT INTO `shop_area` VALUES ('4792', '甘谷县', '452', '0', '3');
INSERT INTO `shop_area` VALUES ('4793', '秦安县', '452', '0', '3');
INSERT INTO `shop_area` VALUES ('4794', '秦州区', '452', '0', '3');
INSERT INTO `shop_area` VALUES ('4795', '麦积区', '452', '0', '3');
INSERT INTO `shop_area` VALUES ('4796', '凉州区', '453', '0', '3');
INSERT INTO `shop_area` VALUES ('4797', '古浪县', '453', '0', '3');
INSERT INTO `shop_area` VALUES ('4798', '天祝藏族自治县', '453', '0', '3');
INSERT INTO `shop_area` VALUES ('4799', '民勤县', '453', '0', '3');
INSERT INTO `shop_area` VALUES ('4800', '临泽县', '454', '0', '3');
INSERT INTO `shop_area` VALUES ('4801', '山丹县', '454', '0', '3');
INSERT INTO `shop_area` VALUES ('4802', '民乐县', '454', '0', '3');
INSERT INTO `shop_area` VALUES ('4803', '甘州区', '454', '0', '3');
INSERT INTO `shop_area` VALUES ('4804', '肃南裕固族自治县', '454', '0', '3');
INSERT INTO `shop_area` VALUES ('4805', '高台县', '454', '0', '3');
INSERT INTO `shop_area` VALUES ('4806', '华亭县', '455', '0', '3');
INSERT INTO `shop_area` VALUES ('4807', '崆峒区', '455', '0', '3');
INSERT INTO `shop_area` VALUES ('4808', '崇信县', '455', '0', '3');
INSERT INTO `shop_area` VALUES ('4809', '庄浪县', '455', '0', '3');
INSERT INTO `shop_area` VALUES ('4810', '泾川县', '455', '0', '3');
INSERT INTO `shop_area` VALUES ('4811', '灵台县', '455', '0', '3');
INSERT INTO `shop_area` VALUES ('4812', '静宁县', '455', '0', '3');
INSERT INTO `shop_area` VALUES ('4813', '敦煌市', '456', '0', '3');
INSERT INTO `shop_area` VALUES ('4814', '玉门市', '456', '0', '3');
INSERT INTO `shop_area` VALUES ('4815', '瓜州县（原安西县）', '456', '0', '3');
INSERT INTO `shop_area` VALUES ('4816', '肃北蒙古族自治县', '456', '0', '3');
INSERT INTO `shop_area` VALUES ('4817', '肃州区', '456', '0', '3');
INSERT INTO `shop_area` VALUES ('4818', '金塔县', '456', '0', '3');
INSERT INTO `shop_area` VALUES ('4819', '阿克塞哈萨克族自治县', '456', '0', '3');
INSERT INTO `shop_area` VALUES ('4820', '华池县', '457', '0', '3');
INSERT INTO `shop_area` VALUES ('4821', '合水县', '457', '0', '3');
INSERT INTO `shop_area` VALUES ('4822', '宁县', '457', '0', '3');
INSERT INTO `shop_area` VALUES ('4823', '庆城县', '457', '0', '3');
INSERT INTO `shop_area` VALUES ('4824', '正宁县', '457', '0', '3');
INSERT INTO `shop_area` VALUES ('4825', '环县', '457', '0', '3');
INSERT INTO `shop_area` VALUES ('4826', '西峰区', '457', '0', '3');
INSERT INTO `shop_area` VALUES ('4827', '镇原县', '457', '0', '3');
INSERT INTO `shop_area` VALUES ('4828', '临洮县', '458', '0', '3');
INSERT INTO `shop_area` VALUES ('4829', '安定区', '458', '0', '3');
INSERT INTO `shop_area` VALUES ('4830', '岷县', '458', '0', '3');
INSERT INTO `shop_area` VALUES ('4831', '渭源县', '458', '0', '3');
INSERT INTO `shop_area` VALUES ('4832', '漳县', '458', '0', '3');
INSERT INTO `shop_area` VALUES ('4833', '通渭县', '458', '0', '3');
INSERT INTO `shop_area` VALUES ('4834', '陇西县', '458', '0', '3');
INSERT INTO `shop_area` VALUES ('4835', '两当县', '459', '0', '3');
INSERT INTO `shop_area` VALUES ('4836', '宕昌县', '459', '0', '3');
INSERT INTO `shop_area` VALUES ('4837', '康县', '459', '0', '3');
INSERT INTO `shop_area` VALUES ('4838', '徽县', '459', '0', '3');
INSERT INTO `shop_area` VALUES ('4839', '成县', '459', '0', '3');
INSERT INTO `shop_area` VALUES ('4840', '文县', '459', '0', '3');
INSERT INTO `shop_area` VALUES ('4841', '武都区', '459', '0', '3');
INSERT INTO `shop_area` VALUES ('4842', '礼县', '459', '0', '3');
INSERT INTO `shop_area` VALUES ('4843', '西和县', '459', '0', '3');
INSERT INTO `shop_area` VALUES ('4844', '东乡族自治县', '460', '0', '3');
INSERT INTO `shop_area` VALUES ('4845', '临夏县', '460', '0', '3');
INSERT INTO `shop_area` VALUES ('4846', '临夏市', '460', '0', '3');
INSERT INTO `shop_area` VALUES ('4847', '和政县', '460', '0', '3');
INSERT INTO `shop_area` VALUES ('4848', '广河县', '460', '0', '3');
INSERT INTO `shop_area` VALUES ('4849', '康乐县', '460', '0', '3');
INSERT INTO `shop_area` VALUES ('4850', '永靖县', '460', '0', '3');
INSERT INTO `shop_area` VALUES ('4851', '积石山保安族东乡族撒拉族自治县', '460', '0', '3');
INSERT INTO `shop_area` VALUES ('4852', '临潭县', '461', '0', '3');
INSERT INTO `shop_area` VALUES ('4853', '卓尼县', '461', '0', '3');
INSERT INTO `shop_area` VALUES ('4854', '合作市', '461', '0', '3');
INSERT INTO `shop_area` VALUES ('4855', '夏河县', '461', '0', '3');
INSERT INTO `shop_area` VALUES ('4856', '玛曲县', '461', '0', '3');
INSERT INTO `shop_area` VALUES ('4857', '碌曲县', '461', '0', '3');
INSERT INTO `shop_area` VALUES ('4858', '舟曲县', '461', '0', '3');
INSERT INTO `shop_area` VALUES ('4859', '迭部县', '461', '0', '3');
INSERT INTO `shop_area` VALUES ('4860', '城东区', '462', '0', '3');
INSERT INTO `shop_area` VALUES ('4861', '城中区', '462', '0', '3');
INSERT INTO `shop_area` VALUES ('4862', '城北区', '462', '0', '3');
INSERT INTO `shop_area` VALUES ('4863', '城西区', '462', '0', '3');
INSERT INTO `shop_area` VALUES ('4864', '大通回族土族自治县', '462', '0', '3');
INSERT INTO `shop_area` VALUES ('4865', '湟中县', '462', '0', '3');
INSERT INTO `shop_area` VALUES ('4866', '湟源县', '462', '0', '3');
INSERT INTO `shop_area` VALUES ('4867', '乐都县', '463', '0', '3');
INSERT INTO `shop_area` VALUES ('4868', '互助土族自治县', '463', '0', '3');
INSERT INTO `shop_area` VALUES ('4869', '化隆回族自治县', '463', '0', '3');
INSERT INTO `shop_area` VALUES ('4870', '平安县', '463', '0', '3');
INSERT INTO `shop_area` VALUES ('4871', '循化撒拉族自治县', '463', '0', '3');
INSERT INTO `shop_area` VALUES ('4872', '民和回族土族自治县', '463', '0', '3');
INSERT INTO `shop_area` VALUES ('4873', '刚察县', '464', '0', '3');
INSERT INTO `shop_area` VALUES ('4874', '海晏县', '464', '0', '3');
INSERT INTO `shop_area` VALUES ('4875', '祁连县', '464', '0', '3');
INSERT INTO `shop_area` VALUES ('4876', '门源回族自治县', '464', '0', '3');
INSERT INTO `shop_area` VALUES ('4877', '同仁县', '465', '0', '3');
INSERT INTO `shop_area` VALUES ('4878', '尖扎县', '465', '0', '3');
INSERT INTO `shop_area` VALUES ('4879', '河南蒙古族自治县', '465', '0', '3');
INSERT INTO `shop_area` VALUES ('4880', '泽库县', '465', '0', '3');
INSERT INTO `shop_area` VALUES ('4881', '共和县', '466', '0', '3');
INSERT INTO `shop_area` VALUES ('4882', '兴海县', '466', '0', '3');
INSERT INTO `shop_area` VALUES ('4883', '同德县', '466', '0', '3');
INSERT INTO `shop_area` VALUES ('4884', '贵南县', '466', '0', '3');
INSERT INTO `shop_area` VALUES ('4885', '贵德县', '466', '0', '3');
INSERT INTO `shop_area` VALUES ('4886', '久治县', '467', '0', '3');
INSERT INTO `shop_area` VALUES ('4887', '玛多县', '467', '0', '3');
INSERT INTO `shop_area` VALUES ('4888', '玛沁县', '467', '0', '3');
INSERT INTO `shop_area` VALUES ('4889', '班玛县', '467', '0', '3');
INSERT INTO `shop_area` VALUES ('4890', '甘德县', '467', '0', '3');
INSERT INTO `shop_area` VALUES ('4891', '达日县', '467', '0', '3');
INSERT INTO `shop_area` VALUES ('4892', '囊谦县', '468', '0', '3');
INSERT INTO `shop_area` VALUES ('4893', '曲麻莱县', '468', '0', '3');
INSERT INTO `shop_area` VALUES ('4894', '杂多县', '468', '0', '3');
INSERT INTO `shop_area` VALUES ('4895', '治多县', '468', '0', '3');
INSERT INTO `shop_area` VALUES ('4896', '玉树县', '468', '0', '3');
INSERT INTO `shop_area` VALUES ('4897', '称多县', '468', '0', '3');
INSERT INTO `shop_area` VALUES ('4898', '乌兰县', '469', '0', '3');
INSERT INTO `shop_area` VALUES ('4899', '冷湖行委', '469', '0', '3');
INSERT INTO `shop_area` VALUES ('4900', '大柴旦行委', '469', '0', '3');
INSERT INTO `shop_area` VALUES ('4901', '天峻县', '469', '0', '3');
INSERT INTO `shop_area` VALUES ('4902', '德令哈市', '469', '0', '3');
INSERT INTO `shop_area` VALUES ('4903', '格尔木市', '469', '0', '3');
INSERT INTO `shop_area` VALUES ('4904', '茫崖行委', '469', '0', '3');
INSERT INTO `shop_area` VALUES ('4905', '都兰县', '469', '0', '3');
INSERT INTO `shop_area` VALUES ('4906', '兴庆区', '470', '0', '3');
INSERT INTO `shop_area` VALUES ('4907', '永宁县', '470', '0', '3');
INSERT INTO `shop_area` VALUES ('4908', '灵武市', '470', '0', '3');
INSERT INTO `shop_area` VALUES ('4909', '西夏区', '470', '0', '3');
INSERT INTO `shop_area` VALUES ('4910', '贺兰县', '470', '0', '3');
INSERT INTO `shop_area` VALUES ('4911', '金凤区', '470', '0', '3');
INSERT INTO `shop_area` VALUES ('4912', '大武口区', '471', '0', '3');
INSERT INTO `shop_area` VALUES ('4913', '平罗县', '471', '0', '3');
INSERT INTO `shop_area` VALUES ('4914', '惠农区', '471', '0', '3');
INSERT INTO `shop_area` VALUES ('4915', '利通区', '472', '0', '3');
INSERT INTO `shop_area` VALUES ('4916', '同心县', '472', '0', '3');
INSERT INTO `shop_area` VALUES ('4917', '盐池县', '472', '0', '3');
INSERT INTO `shop_area` VALUES ('4918', '青铜峡市', '472', '0', '3');
INSERT INTO `shop_area` VALUES ('4919', '原州区', '473', '0', '3');
INSERT INTO `shop_area` VALUES ('4920', '彭阳县', '473', '0', '3');
INSERT INTO `shop_area` VALUES ('4921', '泾源县', '473', '0', '3');
INSERT INTO `shop_area` VALUES ('4922', '西吉县', '473', '0', '3');
INSERT INTO `shop_area` VALUES ('4923', '隆德县', '473', '0', '3');
INSERT INTO `shop_area` VALUES ('4924', '中宁县', '474', '0', '3');
INSERT INTO `shop_area` VALUES ('4925', '沙坡头区', '474', '0', '3');
INSERT INTO `shop_area` VALUES ('4926', '海原县', '474', '0', '3');
INSERT INTO `shop_area` VALUES ('4927', '东山区', '475', '0', '3');
INSERT INTO `shop_area` VALUES ('4928', '乌鲁木齐县', '475', '0', '3');
INSERT INTO `shop_area` VALUES ('4929', '天山区', '475', '0', '3');
INSERT INTO `shop_area` VALUES ('4930', '头屯河区', '475', '0', '3');
INSERT INTO `shop_area` VALUES ('4931', '新市区', '475', '0', '3');
INSERT INTO `shop_area` VALUES ('4932', '水磨沟区', '475', '0', '3');
INSERT INTO `shop_area` VALUES ('4933', '沙依巴克区', '475', '0', '3');
INSERT INTO `shop_area` VALUES ('4934', '达坂城区', '475', '0', '3');
INSERT INTO `shop_area` VALUES ('4935', '乌尔禾区', '476', '0', '3');
INSERT INTO `shop_area` VALUES ('4936', '克拉玛依区', '476', '0', '3');
INSERT INTO `shop_area` VALUES ('4937', '独山子区', '476', '0', '3');
INSERT INTO `shop_area` VALUES ('4938', '白碱滩区', '476', '0', '3');
INSERT INTO `shop_area` VALUES ('4939', '吐鲁番市', '477', '0', '3');
INSERT INTO `shop_area` VALUES ('4940', '托克逊县', '477', '0', '3');
INSERT INTO `shop_area` VALUES ('4941', '鄯善县', '477', '0', '3');
INSERT INTO `shop_area` VALUES ('4942', '伊吾县', '478', '0', '3');
INSERT INTO `shop_area` VALUES ('4943', '哈密市', '478', '0', '3');
INSERT INTO `shop_area` VALUES ('4944', '巴里坤哈萨克自治县', '478', '0', '3');
INSERT INTO `shop_area` VALUES ('4945', '吉木萨尔县', '479', '0', '3');
INSERT INTO `shop_area` VALUES ('4946', '呼图壁县', '479', '0', '3');
INSERT INTO `shop_area` VALUES ('4947', '奇台县', '479', '0', '3');
INSERT INTO `shop_area` VALUES ('4948', '昌吉市', '479', '0', '3');
INSERT INTO `shop_area` VALUES ('4949', '木垒哈萨克自治县', '479', '0', '3');
INSERT INTO `shop_area` VALUES ('4950', '玛纳斯县', '479', '0', '3');
INSERT INTO `shop_area` VALUES ('4951', '米泉市', '479', '0', '3');
INSERT INTO `shop_area` VALUES ('4952', '阜康市', '479', '0', '3');
INSERT INTO `shop_area` VALUES ('4953', '博乐市', '480', '0', '3');
INSERT INTO `shop_area` VALUES ('4954', '温泉县', '480', '0', '3');
INSERT INTO `shop_area` VALUES ('4955', '精河县', '480', '0', '3');
INSERT INTO `shop_area` VALUES ('4956', '博湖县', '481', '0', '3');
INSERT INTO `shop_area` VALUES ('4957', '和硕县', '481', '0', '3');
INSERT INTO `shop_area` VALUES ('4958', '和静县', '481', '0', '3');
INSERT INTO `shop_area` VALUES ('4959', '尉犁县', '481', '0', '3');
INSERT INTO `shop_area` VALUES ('4960', '库尔勒市', '481', '0', '3');
INSERT INTO `shop_area` VALUES ('4961', '焉耆回族自治县', '481', '0', '3');
INSERT INTO `shop_area` VALUES ('4962', '若羌县', '481', '0', '3');
INSERT INTO `shop_area` VALUES ('4963', '轮台县', '481', '0', '3');
INSERT INTO `shop_area` VALUES ('4964', '乌什县', '482', '0', '3');
INSERT INTO `shop_area` VALUES ('4965', '库车县', '482', '0', '3');
INSERT INTO `shop_area` VALUES ('4966', '拜城县', '482', '0', '3');
INSERT INTO `shop_area` VALUES ('4967', '新和县', '482', '0', '3');
INSERT INTO `shop_area` VALUES ('4968', '柯坪县', '482', '0', '3');
INSERT INTO `shop_area` VALUES ('4969', '沙雅县', '482', '0', '3');
INSERT INTO `shop_area` VALUES ('4970', '温宿县', '482', '0', '3');
INSERT INTO `shop_area` VALUES ('4971', '阿克苏市', '482', '0', '3');
INSERT INTO `shop_area` VALUES ('4972', '阿瓦提县', '482', '0', '3');
INSERT INTO `shop_area` VALUES ('4973', '乌恰县', '483', '0', '3');
INSERT INTO `shop_area` VALUES ('4974', '阿克陶县', '483', '0', '3');
INSERT INTO `shop_area` VALUES ('4975', '阿合奇县', '483', '0', '3');
INSERT INTO `shop_area` VALUES ('4976', '阿图什市', '483', '0', '3');
INSERT INTO `shop_area` VALUES ('4977', '伽师县', '484', '0', '3');
INSERT INTO `shop_area` VALUES ('4978', '叶城县', '484', '0', '3');
INSERT INTO `shop_area` VALUES ('4979', '喀什市', '484', '0', '3');
INSERT INTO `shop_area` VALUES ('4980', '塔什库尔干塔吉克自治县', '484', '0', '3');
INSERT INTO `shop_area` VALUES ('4981', '岳普湖县', '484', '0', '3');
INSERT INTO `shop_area` VALUES ('4982', '巴楚县', '484', '0', '3');
INSERT INTO `shop_area` VALUES ('4983', '泽普县', '484', '0', '3');
INSERT INTO `shop_area` VALUES ('4984', '疏勒县', '484', '0', '3');
INSERT INTO `shop_area` VALUES ('4985', '疏附县', '484', '0', '3');
INSERT INTO `shop_area` VALUES ('4986', '英吉沙县', '484', '0', '3');
INSERT INTO `shop_area` VALUES ('4987', '莎车县', '484', '0', '3');
INSERT INTO `shop_area` VALUES ('4988', '麦盖提县', '484', '0', '3');
INSERT INTO `shop_area` VALUES ('4989', '于田县', '485', '0', '3');
INSERT INTO `shop_area` VALUES ('4990', '和田县', '485', '0', '3');
INSERT INTO `shop_area` VALUES ('4991', '和田市', '485', '0', '3');
INSERT INTO `shop_area` VALUES ('4992', '墨玉县', '485', '0', '3');
INSERT INTO `shop_area` VALUES ('4993', '民丰县', '485', '0', '3');
INSERT INTO `shop_area` VALUES ('4994', '洛浦县', '485', '0', '3');
INSERT INTO `shop_area` VALUES ('4995', '皮山县', '485', '0', '3');
INSERT INTO `shop_area` VALUES ('4996', '策勒县', '485', '0', '3');
INSERT INTO `shop_area` VALUES ('4997', '伊宁县', '486', '0', '3');
INSERT INTO `shop_area` VALUES ('4998', '伊宁市', '486', '0', '3');
INSERT INTO `shop_area` VALUES ('4999', '奎屯市', '486', '0', '3');
INSERT INTO `shop_area` VALUES ('5000', '察布查尔锡伯自治县', '486', '0', '3');
INSERT INTO `shop_area` VALUES ('5001', '尼勒克县', '486', '0', '3');
INSERT INTO `shop_area` VALUES ('5002', '巩留县', '486', '0', '3');
INSERT INTO `shop_area` VALUES ('5003', '新源县', '486', '0', '3');
INSERT INTO `shop_area` VALUES ('5004', '昭苏县', '486', '0', '3');
INSERT INTO `shop_area` VALUES ('5005', '特克斯县', '486', '0', '3');
INSERT INTO `shop_area` VALUES ('5006', '霍城县', '486', '0', '3');
INSERT INTO `shop_area` VALUES ('5007', '乌苏市', '487', '0', '3');
INSERT INTO `shop_area` VALUES ('5008', '和布克赛尔蒙古自治县', '487', '0', '3');
INSERT INTO `shop_area` VALUES ('5009', '塔城市', '487', '0', '3');
INSERT INTO `shop_area` VALUES ('5010', '托里县', '487', '0', '3');
INSERT INTO `shop_area` VALUES ('5011', '沙湾县', '487', '0', '3');
INSERT INTO `shop_area` VALUES ('5012', '裕民县', '487', '0', '3');
INSERT INTO `shop_area` VALUES ('5013', '额敏县', '487', '0', '3');
INSERT INTO `shop_area` VALUES ('5014', '吉木乃县', '488', '0', '3');
INSERT INTO `shop_area` VALUES ('5015', '哈巴河县', '488', '0', '3');
INSERT INTO `shop_area` VALUES ('5016', '富蕴县', '488', '0', '3');
INSERT INTO `shop_area` VALUES ('5017', '布尔津县', '488', '0', '3');
INSERT INTO `shop_area` VALUES ('5018', '福海县', '488', '0', '3');
INSERT INTO `shop_area` VALUES ('5019', '阿勒泰市', '488', '0', '3');
INSERT INTO `shop_area` VALUES ('5020', '青河县', '488', '0', '3');
INSERT INTO `shop_area` VALUES ('5021', '石河子市', '489', '0', '3');
INSERT INTO `shop_area` VALUES ('5022', '阿拉尔市', '490', '0', '3');
INSERT INTO `shop_area` VALUES ('5023', '图木舒克市', '491', '0', '3');
INSERT INTO `shop_area` VALUES ('5024', '五家渠市', '492', '0', '3');
INSERT INTO `shop_area` VALUES ('45055', '海外', '35', '0', '2');

-- ----------------------------
-- Table structure for shop_article
-- ----------------------------
DROP TABLE IF EXISTS `shop_article`;
CREATE TABLE `shop_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `content` text,
  `time` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT '1' COMMENT '1=>显示；0=>不显示',
  `cate` int(1) DEFAULT '1' COMMENT '1=>系统公告；2=>常见问题',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_article
-- ----------------------------
INSERT INTO `shop_article` VALUES ('1', '企业简介', '公司本着“有国才有家，有家和天下”的爱国爱家企业文化，以创新研发产销为一体，生产高端洗涤健康绿色环保产品，通过“互联网F2C”厂销平台，直接服务于广大学生、差旅、职场、母婴、老人等群体，同时公司力求以高品质、低价格的理念服务于广大消费者。', '1568106681', '1', '1');
INSERT INTO `shop_article` VALUES ('2', '如何新增、编辑和删除收货地址？', '通过以下方式进入收货地址页，点击地址旁边的编辑功能可编辑或删除当前地址；点击页面下方的【新增地址】可添加收货地址。1\n        ', '1568106681', '1', '1');
INSERT INTO `shop_article` VALUES ('3', '退款流程', '1)  进入订单详情，点击下方的【申请退款】， 客服审核通过后会通知您\n', '1568106681', '1', '2');
INSERT INTO `shop_article` VALUES ('4', '客服服务时间？', '客服服务时间是9：00-24:00', '1568106681', '1', '2');
INSERT INTO `shop_article` VALUES ('5', '配送时间？', '9：00-次日02：00，晚间营业时间以当前地址的商户营业时间为准。', '1568106681', '1', '2');
INSERT INTO `shop_article` VALUES ('6', '如何新增、编辑和删除收货地址？', '通过以下方式进入收货地址页，点击地址旁边的编辑功能可编辑或删除当前地址；点击页面下方的【新增地址】可添加收货地址。', '1568193159', '1', '2');
INSERT INTO `shop_article` VALUES ('7', '常见问题1', '常见问题5666', '1568193509', '1', '2');

-- ----------------------------
-- Table structure for shop_attribute
-- ----------------------------
DROP TABLE IF EXISTS `shop_attribute`;
CREATE TABLE `shop_attribute` (
  `attribute_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `value` text,
  `update_time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_attribute
-- ----------------------------
INSERT INTO `shop_attribute` VALUES ('1', '颜色', '蓝色,红色', '1561533903');
INSERT INTO `shop_attribute` VALUES ('2', '码数', 'S码,M码,L码,XL码,XXL码', '1562208924');

-- ----------------------------
-- Table structure for shop_attribute_value
-- ----------------------------
DROP TABLE IF EXISTS `shop_attribute_value`;
CREATE TABLE `shop_attribute_value` (
  `attribute_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `attribute_id` int(11) NOT NULL DEFAULT '0',
  `value_name` varchar(128) DEFAULT NULL,
  `value_sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`attribute_value_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='选项值';

-- ----------------------------
-- Records of shop_attribute_value
-- ----------------------------
INSERT INTO `shop_attribute_value` VALUES ('1', '颜色', '1', '蓝色', '1');
INSERT INTO `shop_attribute_value` VALUES ('2', '颜色', '1', '红色', '2');
INSERT INTO `shop_attribute_value` VALUES ('3', '码数', '2', 'S码', '1');
INSERT INTO `shop_attribute_value` VALUES ('4', '码数', '2', 'M码', '2');
INSERT INTO `shop_attribute_value` VALUES ('5', '码数', '2', 'L码', '3');
INSERT INTO `shop_attribute_value` VALUES ('6', '码数', '2', 'XL码', '4');
INSERT INTO `shop_attribute_value` VALUES ('7', '码数', '2', 'XXL码', '5');

-- ----------------------------
-- Table structure for shop_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `shop_auth_group`;
CREATE TABLE `shop_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组id,自增主键',
  `type` varchar(20) DEFAULT NULL,
  `title` char(20) DEFAULT NULL COMMENT '用户组中文名称',
  `description` varchar(80) DEFAULT NULL COMMENT '描述信息',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '用户组状态：为1正常，为0禁用,-1为删除',
  `rules` text COMMENT '用户组拥有的规则id，多个规则 , 隔开',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_auth_group
-- ----------------------------
INSERT INTO `shop_auth_group` VALUES ('2', 'admin', '超级管理员', '后台超级管理员', '1', '1,2,13,19,28,29,30,38,46,48,57,66,67,68,69,70,71,72,73,75,76,77,84,85,86,87,113,120,121,122,123,124,125,126,127,129,130,131,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223');
INSERT INTO `shop_auth_group` VALUES ('3', null, '商品管理员', '管理商品', '1', '19,28,29,30,48,57,66,67,68,69,70,71,72,73,75,76,77,84,85,86,87,134,135,136,140,141,142,143,144,145,146,147,148,149,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,290');

-- ----------------------------
-- Table structure for shop_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `shop_auth_group_access`;
CREATE TABLE `shop_auth_group_access` (
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户组id',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_auth_group_access
-- ----------------------------
INSERT INTO `shop_auth_group_access` VALUES ('1', '2');

-- ----------------------------
-- Table structure for shop_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `shop_auth_rule`;
CREATE TABLE `shop_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `menu_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_auth_rule
-- ----------------------------
INSERT INTO `shop_auth_rule` VALUES ('1', '3', '19', 'admin/category/index');
INSERT INTO `shop_auth_rule` VALUES ('2', '3', '28', 'admin/goods/index');
INSERT INTO `shop_auth_rule` VALUES ('3', '3', '29', 'admin/goods/index');
INSERT INTO `shop_auth_rule` VALUES ('4', '3', '30', 'admin/weight_class/index');
INSERT INTO `shop_auth_rule` VALUES ('5', '3', '48', 'admin/option/index');
INSERT INTO `shop_auth_rule` VALUES ('6', '3', '57', 'admin/index/index');
INSERT INTO `shop_auth_rule` VALUES ('7', '3', '66', 'admin/goods/add');
INSERT INTO `shop_auth_rule` VALUES ('8', '3', '67', 'admin/goods/copy_goods');
INSERT INTO `shop_auth_rule` VALUES ('9', '3', '68', 'admin/goods/edit');
INSERT INTO `shop_auth_rule` VALUES ('10', '3', '69', 'admin/goods/del');
INSERT INTO `shop_auth_rule` VALUES ('11', '3', '70', 'admin/category/add');
INSERT INTO `shop_auth_rule` VALUES ('12', '3', '71', 'admin/category/edit');
INSERT INTO `shop_auth_rule` VALUES ('13', '3', '72', 'admin/category/del');
INSERT INTO `shop_auth_rule` VALUES ('14', '3', '73', 'admin/category/autocomplete');
INSERT INTO `shop_auth_rule` VALUES ('15', '3', '75', 'admin/weight_class/add');
INSERT INTO `shop_auth_rule` VALUES ('16', '3', '76', 'admin/weight_class/edit');
INSERT INTO `shop_auth_rule` VALUES ('17', '3', '77', 'admin/weight_class/del');
INSERT INTO `shop_auth_rule` VALUES ('18', '3', '84', 'admin/option/add');
INSERT INTO `shop_auth_rule` VALUES ('19', '3', '85', 'admin/option/edit');
INSERT INTO `shop_auth_rule` VALUES ('20', '3', '86', 'admin/option/del');
INSERT INTO `shop_auth_rule` VALUES ('21', '3', '87', 'admin/option/autocomplete');
INSERT INTO `shop_auth_rule` VALUES ('22', '3', '134', 'admin/attribute/index');
INSERT INTO `shop_auth_rule` VALUES ('23', '3', '135', 'admin/length_class/index');
INSERT INTO `shop_auth_rule` VALUES ('24', '3', '136', 'admin/brand/index');
INSERT INTO `shop_auth_rule` VALUES ('25', '3', '140', 'admin/goods/set_status');
INSERT INTO `shop_auth_rule` VALUES ('26', '3', '141', 'admin/goods/update_price');
INSERT INTO `shop_auth_rule` VALUES ('27', '3', '142', 'admin/goods/update_quantity');
INSERT INTO `shop_auth_rule` VALUES ('28', '3', '143', 'admin/goods/update_sort');
INSERT INTO `shop_auth_rule` VALUES ('29', '3', '144', 'admin/goods/edit_general');
INSERT INTO `shop_auth_rule` VALUES ('30', '3', '145', 'admin/goods/edit_links');
INSERT INTO `shop_auth_rule` VALUES ('31', '3', '146', 'admin/goods/edit_option');
INSERT INTO `shop_auth_rule` VALUES ('32', '3', '147', 'admin/goods/edit_discount');
INSERT INTO `shop_auth_rule` VALUES ('33', '3', '148', 'admin/goods/edit_image');
INSERT INTO `shop_auth_rule` VALUES ('34', '3', '149', 'admin/goods/edit_mobile');
INSERT INTO `shop_auth_rule` VALUES ('35', '3', '151', 'admin/attribute/autocomplete');
INSERT INTO `shop_auth_rule` VALUES ('36', '3', '152', 'admin/brand/autocomplete');
INSERT INTO `shop_auth_rule` VALUES ('37', '3', '153', 'admin/category/update_sort');
INSERT INTO `shop_auth_rule` VALUES ('38', '3', '154', 'admin/attribute/get_attribute_group');
INSERT INTO `shop_auth_rule` VALUES ('39', '3', '155', 'admin/attribute/add');
INSERT INTO `shop_auth_rule` VALUES ('40', '3', '156', 'admin/attribute/edit');
INSERT INTO `shop_auth_rule` VALUES ('41', '3', '157', 'admin/attribute/del');
INSERT INTO `shop_auth_rule` VALUES ('42', '3', '158', 'admin/attribute/autocomplete');
INSERT INTO `shop_auth_rule` VALUES ('43', '3', '159', 'admin/length_class/add');
INSERT INTO `shop_auth_rule` VALUES ('44', '3', '160', 'admin/length_class/edit');
INSERT INTO `shop_auth_rule` VALUES ('45', '3', '161', 'admin/length_class/del');
INSERT INTO `shop_auth_rule` VALUES ('46', '3', '162', 'admin/brand/add');
INSERT INTO `shop_auth_rule` VALUES ('47', '3', '163', 'admin/brand/edit');
INSERT INTO `shop_auth_rule` VALUES ('48', '3', '164', 'admin/brand/del');
INSERT INTO `shop_auth_rule` VALUES ('49', '3', '165', 'admin/brand/autocomplete');
INSERT INTO `shop_auth_rule` VALUES ('50', '3', '290', 'admin/index/logout');

-- ----------------------------
-- Table structure for shop_brand
-- ----------------------------
DROP TABLE IF EXISTS `shop_brand`;
CREATE TABLE `shop_brand` (
  `brand_id` int(8) NOT NULL AUTO_INCREMENT,
  `image` varchar(40) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `sort` int(10) DEFAULT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='品牌';

-- ----------------------------
-- Records of shop_brand
-- ----------------------------
INSERT INTO `shop_brand` VALUES ('15', 'images/osc1/icon/15151421217019377.jpg', '华为', '2');
INSERT INTO `shop_brand` VALUES ('16', 'images/osc1/icon/15158283677962278.jpg', '苹果', '3');
INSERT INTO `shop_brand` VALUES ('17', 'images/osc1/jingshangpin/logo.jpg', '净尚品', '6');
INSERT INTO `shop_brand` VALUES ('18', 'images/osc1/icon/15151432285720792.jpg', '小米', '5');
INSERT INTO `shop_brand` VALUES ('19', 'images/osc1/icon/15153037753503477.jpg', 'OPPO', '4');

-- ----------------------------
-- Table structure for shop_cart
-- ----------------------------
DROP TABLE IF EXISTS `shop_cart`;
CREATE TABLE `shop_cart` (
  `cart_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL DEFAULT 'money',
  `uid` int(11) NOT NULL DEFAULT '0',
  `goods_id` int(11) NOT NULL DEFAULT '0',
  `goods_option` text,
  `quantity` int(5) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `attribute_value_id` varchar(255) DEFAULT NULL COMMENT '商品属性',
  `num` int(11) NOT NULL DEFAULT '1' COMMENT '商品数量',
  PRIMARY KEY (`cart_id`),
  KEY `cart_id` (`uid`,`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='购物车表';

-- ----------------------------
-- Records of shop_cart
-- ----------------------------
INSERT INTO `shop_cart` VALUES ('4', 'money', '5', '15', null, '0', '1562548228', '1,3,', '1');
INSERT INTO `shop_cart` VALUES ('5', 'money', '5', '13', null, '0', '1562549542', '2,4,', '1');
INSERT INTO `shop_cart` VALUES ('6', 'money', '5', '14', null, '0', '1562549854', '2,', '1');
INSERT INTO `shop_cart` VALUES ('9', 'money', '10', '15', null, '0', '1563009137', '1,3,', '1');
INSERT INTO `shop_cart` VALUES ('10', 'money', '23', '21', null, '0', '1568966213', '1,3,', '1');
INSERT INTO `shop_cart` VALUES ('11', 'money', '37', '22', null, '0', '1569500196', '', '1');
INSERT INTO `shop_cart` VALUES ('12', 'money', '44', '22', null, '0', '1569500988', '', '1');
INSERT INTO `shop_cart` VALUES ('13', 'money', '57', '25', null, '0', '1569847546', '1,5,', '1');
INSERT INTO `shop_cart` VALUES ('16', 'money', '84', '40', null, '0', '1570717256', '', '2');
INSERT INTO `shop_cart` VALUES ('19', 'money', '95', '40', null, '0', '1570762609', '', '1');
INSERT INTO `shop_cart` VALUES ('20', 'money', '95', '44', null, '0', '1570762618', '', '1');
INSERT INTO `shop_cart` VALUES ('21', 'money', '95', '37', null, '0', '1570762626', '', '1');
INSERT INTO `shop_cart` VALUES ('22', 'money', '95', '48', null, '0', '1570762655', '', '1');
INSERT INTO `shop_cart` VALUES ('23', 'money', '95', '29', null, '0', '1570762699', '', '1');
INSERT INTO `shop_cart` VALUES ('24', 'money', '92', '34', null, '0', '1570770861', '', '1');
INSERT INTO `shop_cart` VALUES ('25', 'money', '96', '40', null, '0', '1570877440', '', '1');
INSERT INTO `shop_cart` VALUES ('26', 'money', '96', '37', null, '0', '1570877514', '', '1');
INSERT INTO `shop_cart` VALUES ('28', 'money', '95', '38', null, '0', '1570883289', '', '1');

-- ----------------------------
-- Table structure for shop_category
-- ----------------------------
DROP TABLE IF EXISTS `shop_category`;
CREATE TABLE `shop_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `name` varchar(50) DEFAULT NULL COMMENT '标题',
  `image` varchar(64) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `update_time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='商品分类';

-- ----------------------------
-- Records of shop_category
-- ----------------------------
INSERT INTO `shop_category` VALUES ('1', '0', '衣服', '', '衣服', '衣服', '1', '1469841858');
INSERT INTO `shop_category` VALUES ('2', '0', '鞋子', '', '鞋子', '鞋子', '2', '1469841883');
INSERT INTO `shop_category` VALUES ('3', '0', '陶瓷', '', '陶瓷', '陶瓷', '3', '1469868530');
INSERT INTO `shop_category` VALUES ('4', '0', '家电', '', '家电', '家电', '4', '1469841960');
INSERT INTO `shop_category` VALUES ('5', '0', '数码', '', '数码', '数码', '5', '1469841977');
INSERT INTO `shop_category` VALUES ('6', '0', '手机', '', '手机', '手机', '6', '1469841990');
INSERT INTO `shop_category` VALUES ('7', '0', '美妆', '', '美妆', '美妆', '7', '1469842040');
INSERT INTO `shop_category` VALUES ('8', '0', '洗护/家居清洁', '', '洗护', '洗护', '8', '1570179175');
INSERT INTO `shop_category` VALUES ('9', '0', '保健品', '', '保健品', '保健品', '9', '1469842069');
INSERT INTO `shop_category` VALUES ('10', '0', '美食', '', '美食', '美食', '10', '1469842102');
INSERT INTO `shop_category` VALUES ('11', '0', '生鲜', '', '生鲜', '生鲜', '11', '1469842118');
INSERT INTO `shop_category` VALUES ('12', '0', '零食', '', '零食', '零食', '12', '1469842139');
INSERT INTO `shop_category` VALUES ('13', '0', '鲜花', '', '鲜花', '鲜花', '13', '1469842165');
INSERT INTO `shop_category` VALUES ('14', '0', '宠物', '', '宠物', '宠物', '14', '1469842177');
INSERT INTO `shop_category` VALUES ('15', '0', '汽车', '', '汽车', '汽车', '15', '1469842190');
INSERT INTO `shop_category` VALUES ('16', '0', '二手', '', '二手', '二手', '16', '1469842225');
INSERT INTO `shop_category` VALUES ('18', '0', '建材', '', '建材', '建材', '17', '1469842264');
INSERT INTO `shop_category` VALUES ('19', '1', '女装', '', '女装', '女装', '0', '1469842334');
INSERT INTO `shop_category` VALUES ('20', '1', '男装', '', '男装', '男装', '0', '1469842353');
INSERT INTO `shop_category` VALUES ('21', '1', '内衣', '', '内衣', '内衣', '0', '1469842524');
INSERT INTO `shop_category` VALUES ('22', '2', '女鞋', '', '女鞋', '女鞋', '0', '1469842561');
INSERT INTO `shop_category` VALUES ('23', '2', '男鞋', '', '男鞋', '男鞋', '0', '1469842577');
INSERT INTO `shop_category` VALUES ('24', '3', '茶盘', '', '茶盘', '茶盘', '0', '1469842601');
INSERT INTO `shop_category` VALUES ('25', '3', '茶壶', '', '茶壶', '茶壶', '0', '1469842623');
INSERT INTO `shop_category` VALUES ('26', '3', '茶杯', '', '茶杯', '茶杯', '0', '1469842637');
INSERT INTO `shop_category` VALUES ('27', '6', '智能机', null, '智能机', '智能机', '0', '1469842637');

-- ----------------------------
-- Table structure for shop_category_to_attribute
-- ----------------------------
DROP TABLE IF EXISTS `shop_category_to_attribute`;
CREATE TABLE `shop_category_to_attribute` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) NOT NULL DEFAULT '0',
  `attribute_id` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='分类和属性关联';

-- ----------------------------
-- Records of shop_category_to_attribute
-- ----------------------------
INSERT INTO `shop_category_to_attribute` VALUES ('4', '3', '1');
INSERT INTO `shop_category_to_attribute` VALUES ('5', '3', '2');

-- ----------------------------
-- Table structure for shop_category_to_brand
-- ----------------------------
DROP TABLE IF EXISTS `shop_category_to_brand`;
CREATE TABLE `shop_category_to_brand` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) NOT NULL DEFAULT '0',
  `brand_id` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='分类品牌关联';

-- ----------------------------
-- Records of shop_category_to_brand
-- ----------------------------
INSERT INTO `shop_category_to_brand` VALUES ('3', '3', '2');
INSERT INTO `shop_category_to_brand` VALUES ('4', '3', '3');

-- ----------------------------
-- Table structure for shop_config
-- ----------------------------
DROP TABLE IF EXISTS `shop_config`;
CREATE TABLE `shop_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置ID',
  `name` varchar(100) DEFAULT NULL COMMENT '配置名称',
  `value` longtext COMMENT '配置值',
  `info` varchar(255) DEFAULT NULL COMMENT '描述',
  `module` varchar(40) DEFAULT NULL COMMENT '所属模块',
  `module_name` varchar(40) DEFAULT NULL COMMENT '模块名称',
  `extend_value` varchar(255) DEFAULT NULL COMMENT '扩展值',
  `use_for` varchar(32) DEFAULT NULL COMMENT '用于',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态，1启用，0禁用',
  `sort_order` int(5) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_config
-- ----------------------------
INSERT INTO `shop_config` VALUES ('13', 'SITE_TITLE', '商城', '', 'common', '网站公共配置', '', '', '1', '0');
INSERT INTO `shop_config` VALUES ('14', 'SITE_NAME', '商城', '', 'common', '网站公共配置', '', '', '1', '0');
INSERT INTO `shop_config` VALUES ('15', 'SITE_DESCRIPTION', '商城', '', 'common', '网站公共配置', '', '', '1', '0');
INSERT INTO `shop_config` VALUES ('16', 'SITE_KEYWORDS', '商城', '', 'common', '网站公共配置', '', '', '1', '0');
INSERT INTO `shop_config` VALUES ('17', 'SITE_URL', 'http://xin.demo88.top', '', 'common', '网站公共配置', '', '', '1', '0');
INSERT INTO `shop_config` VALUES ('19', 'SITE_ICP', '粤ICP备12345678号', 'ICP备案号', 'common', '网站公共配置', '', '', '1', '0');
INSERT INTO `shop_config` VALUES ('20', 'EMAIL', 'http://xin.demo88.top/', '', 'common', '网站公共配置', '', '', '1', '0');
INSERT INTO `shop_config` VALUES ('21', 'TELEPHONE', '13800138000', '', 'common', '网站公共配置', '', '', '1', '0');
INSERT INTO `shop_config` VALUES ('22', 'WEB_SITE_CLOSE', '1', '', 'common', '网站公共配置', '', '', '1', '0');
INSERT INTO `shop_config` VALUES ('48', 'SITE_SLOGAN', '商城', '', 'common', '网站公共配置', '', '', '1', '0');
INSERT INTO `shop_config` VALUES ('53', 'SITE_ICON', 'images/osc1/icon/shop.png', '网站图标', 'common', '网站公共配置', '', '', '1', '0');
INSERT INTO `shop_config` VALUES ('61', 'qq', '82944930', '', 'common', '网站公共配置', '', '', '1', '0');
INSERT INTO `shop_config` VALUES ('62', 'administrator', 'admin', '超级管理员账号', 'common', '网站公共配置', '', '', '1', '0');
INSERT INTO `shop_config` VALUES ('70', 'page_num', '10', '', 'common', '网站公共配置', '', '', '1', '0');
INSERT INTO `shop_config` VALUES ('71', 'SHORT_URL', 'www.shop.com', '', 'common', '网站公共配置', '', '', '1', '0');
INSERT INTO `shop_config` VALUES ('73', 'account', '', '支付宝账号', 'member', '会员', 'alipay', 'payment', '1', '1');
INSERT INTO `shop_config` VALUES ('74', 'key', '', '支付宝key', 'member', '会员', 'alipay', 'payment', '1', '2');
INSERT INTO `shop_config` VALUES ('75', 'partner', '', '合作者身份（partner ID）', 'member', '会员', 'alipay', 'payment', '1', '3');
INSERT INTO `shop_config` VALUES ('76', 'appid', '', 'appid', 'member', '会员', 'weixin', 'payment', '1', '1');
INSERT INTO `shop_config` VALUES ('77', 'token', '', 'token', 'member', '会员', 'weixin', 'payment', '1', '2');
INSERT INTO `shop_config` VALUES ('78', 'appsecret', '', 'appsecret', 'member', '会员', 'weixin', 'payment', '1', '3');
INSERT INTO `shop_config` VALUES ('79', 'encodingaeskey', '', 'encodingaeskey', 'member', '会员', 'weixin', 'payment', '1', '4');
INSERT INTO `shop_config` VALUES ('80', 'weixin_partner', '', 'partner（商户号）', 'member', '会员', 'weixin', 'payment', '1', '5');
INSERT INTO `shop_config` VALUES ('81', 'partnerkey', '', 'partnerkey', 'member', '会员', 'weixin', 'payment', '1', '6');
INSERT INTO `shop_config` VALUES ('82', 'storage_user_action', 'true', '保存用户行为', 'common', '网站公共配置', '', '', '1', '0');
INSERT INTO `shop_config` VALUES ('83', 'ck_image_width', '630', 'ck编辑器图片最大宽度', 'common', '网站公共配置', '', '', '1', '0');
INSERT INTO `shop_config` VALUES ('84', 'FRONTEND_USER', '网站会员', '前台用户', 'common', '网站公共配置', '', '', '1', '0');
INSERT INTO `shop_config` VALUES ('85', 'BACKEND_USER', '后台系统用户', '后台用户', 'common', '网站公共配置', '', '', '1', '0');
INSERT INTO `shop_config` VALUES ('86', 'member_login_type', 'cookie', '会员信息记录在(session/cookie)', 'member', '会员', '', '', '1', '0');
INSERT INTO `shop_config` VALUES ('87', 'default_group_id', '2', '默认会员组', 'member', '会员', '', '', '1', '0');
INSERT INTO `shop_config` VALUES ('88', 'reg_check', '0', '注册审核', 'member', '会员', '', '', '1', '0');
INSERT INTO `shop_config` VALUES ('89', 'weight_id', '1', '重量单位', 'member', '会员', '', '', '1', '0');
INSERT INTO `shop_config` VALUES ('90', 'length_id', '1', '长度单位', 'member', '会员', '', '', '1', '0');
INSERT INTO `shop_config` VALUES ('91', 'default_order_status_id', '3', '默认订单状态 ', 'member', '会员', '', '', '1', '0');
INSERT INTO `shop_config` VALUES ('92', 'paid_order_status_id', '1', '订单付款状态', 'member', '会员', '', '', '1', '0');
INSERT INTO `shop_config` VALUES ('93', 'complete_order_status_id', '4', '订单完成状态 ', 'member', '会员', '', '', '1', '0');
INSERT INTO `shop_config` VALUES ('94', 'cancel_order_status_id', '5', '订单取消状态 ', 'member', '会员', '', '', '1', '0');
INSERT INTO `shop_config` VALUES ('105', 'PWD_KEY', 'MF~V45|rI*7L]{SNtA?d:,j1w$<mJ(/f-0g\"83;&', '', '', '', '', '', '1', '0');
INSERT INTO `shop_config` VALUES ('106', 'bank_name', '中国银行', '平台开户银行', 'common', '网站公共配置', null, null, '1', '0');
INSERT INTO `shop_config` VALUES ('107', 'bank_name2', '广州支行1', '平台开户支行', 'common', '网站公共配置', null, null, '1', '0');
INSERT INTO `shop_config` VALUES ('108', 'bank_user', '开发测试', '平台开户姓名', 'common', '网站公共配置', null, null, '1', '0');
INSERT INTO `shop_config` VALUES ('109', 'bank_num', '123456789012345678', '平台银行卡号', 'common', '网站公共配置', null, null, '1', '0');
INSERT INTO `shop_config` VALUES ('110', 'return_day', '1', '会员购物返现时间（天）', 'member', '会员', null, null, '1', '0');
INSERT INTO `shop_config` VALUES ('111', 'upgrade_retail', '30', '升级零售奖', 'common', '网站公共配置', null, null, '1', '0');
INSERT INTO `shop_config` VALUES ('112', 'upgrade_wholesale', '10', '升级批发奖', null, null, null, null, '1', '0');
INSERT INTO `shop_config` VALUES ('113', 'fenxiao_discount', '9.5', '给会员升级分销商折扣', null, null, null, null, '1', '0');
INSERT INTO `shop_config` VALUES ('114', 'pingjia_retail', '10', '平价商品零售奖', null, null, null, null, '1', '0');
INSERT INTO `shop_config` VALUES ('115', 'pingjia_wholesale', '5', '平价商品批发奖', null, null, null, null, '1', '0');
INSERT INTO `shop_config` VALUES ('116', 'tuan_retail', '2', '团购零售奖', null, null, null, null, '1', '0');
INSERT INTO `shop_config` VALUES ('117', 'tuan_wholesale', '1', '团购批发奖', null, null, null, null, '1', '0');
INSERT INTO `shop_config` VALUES ('118', 'qiang_retail', '', '抢购零售奖', null, null, null, null, '1', '0');
INSERT INTO `shop_config` VALUES ('119', 'qiang_wholesale', '', '抢购批发奖', null, null, null, null, '1', '0');
INSERT INTO `shop_config` VALUES ('120', 'tixian_cost', '8', '提现手续费', null, null, null, null, '1', '0');
INSERT INTO `shop_config` VALUES ('121', 'tixian_min', '50', '最低提现', null, null, null, null, '1', '0');
INSERT INTO `shop_config` VALUES ('122', 'jiamengshang', '5', '加盟商名下总销量收益', null, null, null, null, '1', '0');
INSERT INTO `shop_config` VALUES ('123', 'qudaili', '5', '区代理名下总销量收益', null, null, null, null, '1', '0');
INSERT INTO `shop_config` VALUES ('124', 'upgrade_price', '', '升级消耗', null, null, null, null, '1', '0');
INSERT INTO `shop_config` VALUES ('125', 'shouyi_cost', '8', '收益手续费', null, null, null, null, '1', '0');
INSERT INTO `shop_config` VALUES ('126', 'invite_background', 'images/osc1/201910141571032755.png', '邀请好友背景图', null, null, null, null, '1', '0');
INSERT INTO `shop_config` VALUES ('127', 'popular_shop', '/public/uploads/20191004/7fbd84b72d99d31b8c677cef88b143a8.jpg', '爆款商品图', null, null, null, null, '1', '0');
INSERT INTO `shop_config` VALUES ('128', 'new_shop', '/public/uploads/20191004/285929fa2fc1848c7f2811b2c5feab68.jpg', '最新商品图', null, null, null, null, '1', '0');
INSERT INTO `shop_config` VALUES ('129', 'guesslike_shop', '/public/uploads/20191004/0dc4a9b7abff56f8a8c6edf5fee458be.jpg', '特色推荐商品', null, null, null, null, '1', '0');
INSERT INTO `shop_config` VALUES ('130', 'regis_xieyi', '&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;color:#454545;font-family:Helvetica;font-size:18px;&quot;&gt;注册协议&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-family:Helvetica;color:#454545;&quot;&gt;&lt;br /&gt;\r\n&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-family:Helvetica;color:#454545;&quot;&gt;【审慎阅读】您在申请注册流程中点击同意前，应当认真阅读以下协议。请您务必审慎阅读、充分理解协议中相关条款内容，其中包括：&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-family:Helvetica;color:#454545;&quot;&gt;1、与您约定免除或限制责任的条款；&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-family:Helvetica;color:#454545;&quot;&gt;2、与您约定法律适用和管辖的条款；..............&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-family:Helvetica;color:#454545;&quot;&gt;3、其他以粗体下划线标识的重要条款。&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-family:Helvetica;color:#454545;&quot;&gt;如您对协议有任何疑问，可向平台客服咨询。&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-family:Helvetica;color:#454545;&quot;&gt;【特别提示】当您按照注册页面提示填写信息、阅读并同意协议且完成全部注册程序后，即表示您已充分阅读、理解并接受协议的全部内容。如您因平台服务与&lt;/span&gt;&lt;span style=&quot;font-family:宋体;color:#454545;&quot;&gt;家和家天下&lt;/span&gt;&lt;span style=&quot;font-family:Helvetica;color:#454545;&quot;&gt;商城发生争议的，&amp;nbsp;适用《商城平台服务协议》处理。如您在使用平台服务过程中与其他用户发生争议的，依您与其他用户达成的协议处理。&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-family:Helvetica;color:#454545;&quot;&gt;阅读协议的过程中，如果您不同意相关协议或其中任何条款约定，您应立即停止注册程序。&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;font-family:Helvetica;color:#454545;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span&gt;&lt;span style=&quot;font-family:Helvetica;&quot;&gt;《&lt;/span&gt;&lt;/span&gt;&lt;span&gt;&lt;span style=&quot;font-family:宋体;&quot;&gt;家和家天下&lt;/span&gt;&lt;/span&gt;&lt;span&gt;&lt;span style=&quot;font-family:Helvetica;&quot;&gt;商城平台服务协议》&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:Helvetica;color:#454545;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span&gt;&lt;span style=&quot;font-family:Helvetica;&quot;&gt;《法律声明及隐私权政策》&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family:Helvetica;color:#454545;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span&gt;&lt;span style=&quot;font-family:Helvetica;&quot;&gt;《风险&lt;/span&gt;&lt;/span&gt;&lt;span&gt;&lt;span style=&quot;font-family:宋体;&quot;&gt;提示&lt;/span&gt;&lt;/span&gt;&lt;span&gt;&lt;span style=&quot;font-family:Helvetica;&quot;&gt;书》&lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-family:Helvetica;&quot;&gt;&lt;br /&gt;\r\n&lt;/span&gt;&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span&gt;&lt;span style=&quot;font-family:Helvetica;&quot;&gt; &lt;/span&gt;&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;h1 align=&quot;center&quot; style=&quot;text-align:center;&quot;&gt;\r\n	&lt;b&gt;&lt;span style=&quot;font-size:18px;&quot;&gt;家和家天下&lt;/span&gt;&lt;/b&gt;&lt;b&gt;&lt;span style=&quot;font-size:18px;&quot;&gt;商城平台服务协议&lt;/span&gt;&lt;/b&gt;&lt;b&gt;&lt;/b&gt; \r\n&lt;/h1&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	提示条款\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	欢迎您与各家和家天下商城平台经营者（详见定义条款）共同签署本《&lt;span&gt;家和家天下&lt;/span&gt;&lt;span&gt;商城平台服务协议》（下称&lt;/span&gt;“本协议”）并使用商城平台服务！\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	各服务条款前所列索引关键词仅为帮助您理解该条款表达的主旨之用，不影响或限制本协议条款的含义或解释。为维护您自身权益，建议您仔细阅读各条款具体表述。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	【审慎阅读】您在申请注册流程中点击同意本协议之前，应当认真阅读本协议。请您务必审慎阅读、充分理解各条款内容，特别是免除或者限制责任的条款、法律适用和争议解决条款。免除或者限制责任的条款将以粗体下划线标识，您应重点阅读。如您对协议有任何疑问，可向商城平台客服咨询。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	&lt;span&gt;【签约动作】当您按照注册页面提示填写信息、阅读并同意本协议且完成全部注册程序后，即表示您已充分阅读、理解并接受本协议的全部内容，并与分购商城达成一致，成为分购商城平台&lt;/span&gt;“用户”。阅读本协议的过程中，如果您不同意本协议或其中任何条款约定，您应立即停止注册程序。\r\n&lt;/p&gt;\r\n&lt;h1 style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	&lt;b&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;一、&lt;/span&gt; &lt;span style=&quot;font-size:16px;&quot;&gt;定义&lt;/span&gt;&lt;/b&gt;&lt;b&gt;&lt;/b&gt; \r\n&lt;/h1&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	商城平台：指包括家和家天下&lt;span&gt;商城（域名为&lt;/span&gt;www.gdbadi.com）网站及客户端。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	家和家天下：家和家天下商城平台经营者的单称或合称，包括家和家天下商城经营者广州市霸涤贸易有限公司等。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	商城平台服务：家和家天下基于互联网，以包含家和家天下商城平台网站、客户端等在内的各种形态（包括未来技术发展出现的新的服务形态）向您提供的各项服务。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	商城平台规则：包括在所有商城平台规则频道内已经发布及后续发布的全部规则、解读、公告等内容以及各平台在指南、信息披露、下载中心内发布的各类规则、实施细则、产品流程说明、公告等。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	家和家天下商城规则：家和家天下&lt;span&gt;商城规则频道列明的各项规则，具体详见规则频道或公告&lt;/span&gt;/通知。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	支付通道：指提供支付服务的主体。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	同一用户：使用同一身份认证信息或经商城排查认定多个商城账户的实际控制人为同一人的，均视为同一用户。\r\n&lt;/p&gt;\r\n&lt;h1 style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	&lt;b&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;二、&lt;/span&gt; &lt;span style=&quot;font-size:16px;&quot;&gt;协议范围&lt;/span&gt;&lt;/b&gt;&lt;b&gt;&lt;/b&gt; \r\n&lt;/h1&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	2.1 签约主体\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	【平等主体】本协议由您与商城平台经营者共同缔结，本协议对您与商城平台经营者均具有合同效力。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	【主体信息】商城平台经营者是指经营商城平台的各法律主体，您可随时查看商城平台各网站首页底部公示的证照信息以确定与您履约的商城主体。本协议项下，商城平台经营者可能根据商城平台的业务调整而发生变更，变更后的商城平台经营者与您共同履行本协议并向您提供服务，商城平台经营者的变更不会影响您本协议项下的权益。商城平台经营者还有可能因为提供新的商城平台服务而新增，如您使用新增的商城平台服务的，视为您同意新增的商城平台经营者与您共同履行本协议。发生争议时，您可根据您具体使用的服务及对您权益产生影响的具体行为对象确定与您履约的主体及争议相对方。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	2.2补充协议\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	由于互联网高速发展，您与商城签署的本协议列明的条款并不能完整罗列并覆盖您与商城所有权利与义务，现有的约定也不能保证完全符合未来发展的需求。因此，商城平台法律声明及隐私权政策、商城平台规则均为本协议的补充协议，与本协议不可分割且具有同等法律效力。如您使用商城平台服务，视为您同意上述补充协议。\r\n&lt;/p&gt;\r\n&lt;h1 style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	&lt;b&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;三、&lt;/span&gt; &lt;span style=&quot;font-size:16px;&quot;&gt;账户注册与使用&lt;/span&gt;&lt;/b&gt;&lt;b&gt;&lt;/b&gt; \r\n&lt;/h1&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	3.1 用户资格\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	您确认，在您开始注册程序使用商城平台服务前，您应当具备中华人民共和国法律规定的与您行为相适应的民事行为能力。若您不具备前述与您行为相适应的民事行为能力，则您及您的监护人应依照法律规定承担因此而导致的一切后果。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	此外，您还需确保您不是任何国家、国际组织或者地域实施的贸易限制、制裁或其他法律、规则限制的对象，否则您可能无法正常注册及使用商城平台服务。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	3.2 账户说明\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	【账户获得】当您按照注册页面提示填写信息、阅读并同意本协议且完成全部注册程序后，您可获得商城平台账户并成为商城平台用户。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	商城平台只允许每位用户使用一个商城平台账户。如有证据证明或商城根据商城平台规则判断您存在不当注册或不当使用多个商城平台账户的情形，商城平台可采取冻结或关闭账户、取消订单、拒绝提供服务等措施，如给商城平台及相关方造成损失的，您还应承担赔偿责任。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	&lt;span&gt;【账户使用】您有权使用您设置或确认的商城会员名、邮箱、手机号码（以下简称&lt;/span&gt;“账户名称”）及您设置的密码（账户名称及密码合称“账户”）登录商城平台。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	&lt;span&gt;您有权使用您的商城账户登录关联平台而无需另行设置账户，但您的商城账户于&lt;/span&gt;2019年1月1日前注册或者您注册商城账户时所使用的邮箱或手机号码已在关联平台注册或使用过的除外。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	&lt;span&gt;由于您的商城账户关联您的个人信息及商城平台商业信息，您的商城账户仅限您本人使用。未经商城平台同意，您直接或间接授权第三方使用您商城账户或获取您账户项下信息的行为无效。如商城根据商城平台规则中约定的违约认定程序及标准判断您商城账户的使用可能危及您的账户安全及&lt;/span&gt;/或商城平台信息安全的，商城平台可拒绝提供相应服务或终止本协议。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	【账户转让】由于用户账户关联用户信用信息，仅当有法律明文规定、司法裁定或经商城同意，并符合商城平台规则规定的用户账户转让流程的情况下，您可进行账户的转让。您的账户一经转让，该账户项下权利义务一并转移。除此外，您的账户不得以任何方式转让，否则商城平台有权追究您的违约责任，且由此产生的一切责任均由您承担。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	【实名认证】作为商城平台经营者，为使您更好地使用商城平台的各项服务，保障您的账户安全，商城可要求您按支付公司要求及我国法律规定完成实名认证。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	【不活跃账户回收】如您的账户同时符合以下条件，则商城可回收您的账户，您的账户将不能再登录任一关联平台，相应服务同时终止：\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	（一）未绑定通过实名认证的支付账户；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	（二）连续六个月未用于登录商城平台；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	（三）不存在未到期的有效业务。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	3.3 注册信息管理\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	3.3.1 真实合法\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	【信息真实】在使用商城平台服务时，您应当按商城平台页面的提示准确完整地提供您的信息（包括您的姓名及电子邮件地址、联系电话、联系地址等），以便商城或其他用户与您联系。您了解并同意，您有义务保持您提供信息的真实性及有效性。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	【会员名的合法性】您设置的商城会员名不得违反国家法律法规及商城规则关于会员名的管理规定，否则商城可回收您的商城会员名。商城会员名的回收不影响您以邮箱、手机号码登录商城平台并使用商城平台服务。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	3.3.2 更新维护\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	您应当及时更新您提供的信息，在法律有明确规定要求商城作为平台服务提供者必须对部分用户（如平台卖家等）的信息进行核实的情况下，商城将依法不时地对您的信息进行检查核实，您应当配合提供最新、真实、完整、有效的信息。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	如商城按您最后一次提供的信息与您联系未果、您未按商城的要求及时提供信息、您提供的信息存在明显不实或行政司法机关核实您提供的信息无效的，您将承担因此对您自身、他人及商城造成的全部损失与不利后果。商城可向您发出询问或要求整改的通知，并要求您进行重新认证，直至中止、终止对您提供部分或全部商城平台服务，商城对此不承担责任。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	3.4 账户安全规范\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	【账户安全保管义务】您的账户为您自行设置并由您保管，商城任何时候均不会主动要求您提供您的账户密码。因此，建议您务必保管好您的账户，并确保您在每个上网时段结束时退出登录并以正确步骤离开商城平台。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	账户因您主动泄露或因您遭受他人攻击、诈骗等行为导致的损失及后果，商城并不承担责任，您应通过司法、行政等救济途径向侵权行为人追偿。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	【账户行为责任自负】除商城存在过错外，您应对您账户项下的所有行为结果（包括但不限于在线签署各类协议、发布信息、购买商品及服务及披露信息等）负责。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	【日常维护须知】如发现任何未经授权使用您账户登录商城平台或其他可能导致您账户遭窃、遗失的情况，建议您立即通知商城。您理解商城对您的任何请求采取行动均需要合理时间，且商城应您请求而采取的行动可能无法避免或阻止侵害后果的形成或扩大，除商城存在法定过错外，商城不承担责任。\r\n&lt;/p&gt;\r\n&lt;h1 style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	&lt;b&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;四、&lt;/span&gt; &lt;span style=&quot;font-size:16px;&quot;&gt;商城平台服务及规范&lt;/span&gt;&lt;/b&gt;&lt;b&gt;&lt;/b&gt; \r\n&lt;/h1&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	&lt;span&gt;【服务概况】您有权在商城平台上享受店铺管理、商品及&lt;/span&gt;/或服务的销售与推广、商品及/或服务的购买与评价、交易争议处理等服务。商城提供的服务内容众多，具体您可登录商城平台浏览。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	4.1 店铺管理\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	&lt;span&gt;【店铺创建】通过在商城创建店铺，您可发布全新及&lt;/span&gt;/或服务信息并与其他用户达成交易。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	基于商城管理需要，您理解并认可，同一用户在商城仅能开设一家店铺，商城可关闭您在商城同时开设的其他店铺。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	&lt;span&gt;【店铺转让】由于店铺与账户的不可分性，店铺转让实质为店铺经营者账户的转让，店铺转让的相关要求与限制请适用本协议&lt;/span&gt;3.2条账户转让条款。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	【店铺关停】如您通过下架全部商品短暂关停您的店铺，您应当对您店铺关停前已达成的交易继续承担发货、退换货及质保维修、维权投诉处理等交易保障责任。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	在您的店铺连续六周无出售中的商品的情况下，商城也可依据商城规则关停您的店铺。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	依据上述约定关停店铺均不会影响您已经累积的信用。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	4.2商品及/或服务的销售与推广\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	&lt;span&gt;【商品及&lt;/span&gt;/或服务信息发布】通过商城提供的服务，您有权通过文字、图片、视频、音频等形式在商城平台上发布商品及/或服务信息、招揽和物色交易对象、达成交易。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	&lt;span&gt;【禁止销售范围】您应当确保您对您在商城平台上发布的商品及&lt;/span&gt;/或服务享有相应的权利，您不得在商城平台上销售以下商品及/或提供以下服务：\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	（一）国家禁止或限制的；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	（二）侵犯他人知识产权或其它合法权益的；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	&lt;span&gt;（三）商城平台规则、公告、通知或各平台与您单独签署的协议中已明确说明不适合在商城平台上销售及&lt;/span&gt;/或提供的。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	&lt;span&gt;【交易秩序保障】您应当遵守诚实信用原则，确保您所发布的商品及&lt;/span&gt;/或服务信息真实、与您实际所销售的商品及/或提供的服务相符，并在交易过程中切实履行您的交易承诺。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	您应当维护商城平台市场良性竞争秩序，不得贬低、诋毁竞争对手，不得干扰商城平台上进行的任何交易、活动，不得以任何不正当方式提升或试图提升自身的信用度，不得以任何方式干扰或试图干扰商城平台的正常运作。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	&lt;span&gt;【促销及推广】您有权自行决定商品及&lt;/span&gt;/或服务的促销及推广方式，商城亦为您提供了形式丰富的促销推广工具。您的促销推广行为应当符合国家相关法律法规及商城平台的要求。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	&lt;span&gt;【依法纳税】依法纳税是每一个公民、企业应尽的义务，您应对销售额&lt;/span&gt;/营业额超过法定免征额部分及时、足额地向税务主管机关申报纳税。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	4.3商品及/或服务的购买与评价\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	&lt;span&gt;【商品及&lt;/span&gt;/或服务的购买】当您在商城平台购买商品及/或服务时，请您务必仔细确认所购商品的品名、价格、数量、型号、规格、尺寸或服务的时间、内容、限制性要求等重要事项，并在下单时核实您的联系地址、电话、收货人等信息。如您填写的收货人非您本人，则该收货人的行为和意思表示产生的法律后果均由您承担。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	&lt;span&gt;您的购买行为应当基于真实的消费需求，不得存在对商品及&lt;/span&gt;/或服务实施恶意购买、恶意维权等扰乱商城平台正常交易秩序的行为。基于维护商城平台交易秩序及交易安全的需要，商城发现上述情形时可主动执行关闭相关交易订单等操作。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	&lt;span&gt;【评价】您有权在商城平台提供的评价系统中对与您达成交易的其他用户商品及&lt;/span&gt;/或服务进行评价。您应当理解，您在商城平台的评价信息是公开的，如您不愿意在评价信息中向公众披露您的身份信息，您有权选择通过匿名形式发表评价内容。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	您的所有评价行为应遵守商城平台规则的相关规定，评价内容应当客观真实，不应包含任何污言秽语、色情低俗、广告信息及法律法规与本协议列明的其他禁止性信息；您不应以不正当方式帮助他人提升信用或利用评价权利对其他用户实施威胁、敲诈勒索。商城可按照商城平台规则的相关规定对您实施上述行为所产生的评价信息进行删除或屏蔽。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	4.4交易争议处理\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	【交易争议处理途径】您在商城平台交易过程中与其他用户发生争议的，您或其他用户中任何一方均有权选择以下途径解决：\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	（一）与争议相对方自主协商；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	（二）使用商城平台提供的争议调处服务；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	（三）根据与争议相对方达成的仲裁协议（如有）提请仲裁机构仲裁；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	（四）向商城运营方所在地人民法院提起诉讼。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	&lt;span&gt;【平台调处服务】如您依据商城平台规则使用商城平台的争议调处服务，则表示您认可并愿意履行商城平台的客服作为独立的第三方根据其所了解到的争议事实并依据商城平台规则所作出的调处决定（包括调整相关订单的交易状态、判定将争议款项的全部或部分支付给交易一方或双方等）。在商城平台调处决定作出前，您可选择上述途径（下称&lt;/span&gt;“其他争议处理途径”）解决争议以中止商城平台的争议调处服务。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	如您对调处决定不满意，您仍有权采取其他争议处理途径解决争议，但通过其他争议处理途径未取得终局决定前，您仍应先履行调处决定。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	4.5费用\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	商城为向您提供的服务付出了大量的成本，除商城平台明示的收费业务外，商城向您提供的服务目前部分服务是免费的。如商城向您收取合理费用，商城会在您注册时通知您或采取合理途径并以足够合理的期限提前通过法定程序并以本协议第八条约定的方式通知您，确保您有充分选择的权利。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	4.6责任限制\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	【不可抗力及第三方原因】商城依照法律规定履行基础保障义务，但对于下述原因导致的合同履行障碍、履行瑕疵、履行延后或履行内容变更等情形，商城并不承担相应的违约责任：\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	（一）因自然灾害、罢工、暴乱、战争、政府行为、司法行政命令等不可抗力因素；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	（二）因电力供应故障、通讯网络故障等公共服务因素或第三人因素；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	（三）在商城已尽善意管理的情况下，因常规或紧急的设备与系统维护、设备与系统故障、网络信息与数据安全等因素。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	&lt;span&gt;【海量信息】商城仅向您提供商城平台服务，您了解商城平台上的信息系用户自行发布，且可能存在风险和瑕疵。商城将通过依法建立相关检查监控制度尽可能保障您在商城平台上的合法权益及良好体验。同时，鉴于商城平台具备存在海量信息及信息网络环境下信息与实物相分离的特点，商城无法逐一审查商品及&lt;/span&gt;/或服务的信息，无法逐一审查交易所涉及的商品及/或服务的质量、安全以及合法性、真实性、准确性，对此您应谨慎判断。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	【调处决定】您理解并同意，在争议调处服务中，分购平台的客服并非专业人士，仅能以普通人的认知对用户提交的凭证进行判断。因此，除存在故意或重大过失外，调处方对争议调处决定免责。\r\n&lt;/p&gt;\r\n&lt;h1 style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	&lt;b&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;五、&lt;/span&gt; &lt;span style=&quot;font-size:16px;&quot;&gt;用户信息的保护及授权&lt;/span&gt;&lt;/b&gt;&lt;b&gt;&lt;/b&gt; \r\n&lt;/h1&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	5.1个人信息的保护\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	商城非常重视用户个人信息（即能够独立或与其他信息结合后识别用户身份的信息）的保护，在您使用商城提供的服务时，您同意商城按照在商城平台上公布的隐私权政策收集、存储、使用、披露和保护您的个人信息。如商城平台网站或客户端未设独立隐私权政策但使用了商城网账号登陆相应网站或客户端的，为保护您的隐私权，我们将参照适用商城网隐私权政策的要求对您的个人信息进行收集、存储、使用、披露和保护。商城希望通过隐私权政策向您清楚地介绍商城对您个人信息的处理方式，因此商城建议您完整地阅读隐私权政策，以帮助您更好地保护您的隐私权。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	5.2非个人信息的保证与授权\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	【信息的发布】您声明并保证，您对您所发布的信息拥有相应、合法的权利。否则，商城可对您发布的信息依法或依本协议进行删除或屏蔽。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	【禁止性信息】您应当确保您所发布的信息不包含以下内容：\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	（一）违反国家法律法规禁止性规定的；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	（二）政治宣传、封建迷信、淫秽、色情、赌博、暴力、恐怖或者教唆犯罪的；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	（三）欺诈、虚假、不准确或存在误导性的；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	（四）侵犯他人知识产权或涉及第三方商业秘密及其他专有权利的；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	（五）侮辱、诽谤、恐吓、涉及他人隐私等侵害他人合法权益的；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	（六）存在可能破坏、篡改、删除、影响商城平台任何系统正常运行或未经授权秘密获取商城平台及其他用户的数据、个人资料的病毒、木马、爬虫等恶意软件、程序代码的；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	（七）其他违背社会公共利益或公共道德或依据相关商城平台协议、规则的规定不适合在商城平台上发布的。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	【授权使用】对于您提供、发布及在使用商城平台服务中形成的除个人信息外的文字、图片、视频、音频等非个人信息，在法律规定的保护期限内您免费授予商城及其关联公司、支付通道（公司）获得全球排他的许可使用权利及再授权给其他第三方使用并可以自身名义对第三方侵权行为取证及提起诉讼的权利。您同意商城及其关联公司、支付通道（公司）存储、使用、复制、修订、编辑、发布、展示、翻译、分发您的非个人信息或制作其派生作品，并以已知或日后开发的形式、媒体或技术将上述信息纳入其它作品内。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	为方便您使用商城平台、支付通道（公司）等其他相关服务，您授权商城将您在账户注册和使用商城平台服务过程中提供、形成的信息传递给关联平台、支付等其他相关服务提供者，或从关联平台、支付通道（公司）等其他相关服务提供者获取您在注册、使用相关服务期间提供、形成的信息。\r\n&lt;/p&gt;\r\n&lt;h1 style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	&lt;b&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;六、&lt;/span&gt; &lt;span style=&quot;font-size:16px;&quot;&gt;用户的违约及处理&lt;/span&gt;&lt;/b&gt;&lt;b&gt;&lt;/b&gt; \r\n&lt;/h1&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	6.1 违约认定\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	发生如下情形之一的，视为您违约：\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	（一）使用商城平台服务时违反有关法律法规规定的；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	&lt;span&gt;（二）违反本协议或本协议补充协议（即本协议第&lt;/span&gt;2.2条）约定的。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	为适应电子商务发展和满足海量用户对高效优质服务的需求，您理解并同意，商城可在商城平台规则中约定违约认定的程序和标准。如：商城可依据您的用户数据与海量用户数据的关系来认定您是否构成违约；您有义务对您的数据异常现象进行充分举证和合理解释，否则将被认定为违约。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	6.2 违约处理措施\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	【信息处理】您在商城平台上发布的信息构成违约的，商城可根据相应规则立即对相应信息进行删除、屏蔽处理或对您的商品进行下架、监管。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	【行为限制】您在商城平台上实施的行为，或虽未在商城平台上实施但对商城平台及其用户产生影响的行为构成违约的，商城可依据相应规则对您执行账户扣分、限制参加营销活动、中止向您提供部分或全部服务、划扣违约金等处理措施。如您的行为构成根本违约的，商城可查封您的账户，终止向您提供服务。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	【支付账户处理】当您违约的同时存在欺诈、售假、盗用他人账户等特定情形或您存在危及他人交易安全或账户安全风险时，商城会依照您行为的风险程度指示支付通道（公司）对您的支付账户采取取消收款、资金止付等强制措施。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	【处理结果公示】商城可将对您上述违约行为处理措施信息以及其他经国家行政或司法机关生效法律文书确认的违法信息在商城平台上予以公示。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	6.3赔偿责任\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	&lt;span&gt;如您的行为使商城及&lt;/span&gt;/或其关联公司、支付通道（公司）遭受损失（包括自身的直接经济损失、商誉损失及对外支付的赔偿金、和解款、律师费、诉讼费等间接经济损失），您应赔偿商城及/或其关联公司、支付公司的上述全部损失。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	&lt;span&gt;如您的行为使商城及&lt;/span&gt;/或其关联公司、支付公司遭受第三人主张权利，商城及/或其关联公司、支付通道公司可在对第三人承担金钱给付等义务后就全部损失向您追偿。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	&lt;span&gt;如因您的行为使得第三人遭受损失或您怠于履行调处决定、商城及&lt;/span&gt;/或其关联公司出于社会公共利益保护或消费者权益保护目的，可指示支付公司自您的支付账户中划扣相应款项进行支付。如您的支付账户应收货款或保证金不足以支付相应款项的，您同意委托商城使用自有资金代您支付上述款项，您应当返还该部分费用并赔偿因此造成商城的全部损失。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	&lt;span&gt;您同意商城指示支付公司自您的支付账户中划扣相应款项支付上述赔偿款项。如您支付账户中的款项不足以支付上述赔偿款项的，商城及&lt;/span&gt;/或关联公司可直接抵减您在商城及/或其关联公司其它协议项下的权益，并可继续追偿。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	6.4特别约定\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	&lt;span&gt;【商业贿赂】如您向商城及&lt;/span&gt;/或其关联公司的雇员或顾问等提供实物、现金、现金等价物、劳务、旅游等价值明显超出正常商务洽谈范畴的利益，则可视为您存在商业贿赂行为。发生上述情形的，商城可立即终止与您的所有合作并向您收取违约金及/或赔偿金，该等金额以商城因您的贿赂行为而遭受的经济损失和商誉损失作为计算依据。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	&lt;span&gt;【关联处理】如您因严重违约导致商城终止本协议时，出于维护平台秩序及保护消费者权益的目的，商城及&lt;/span&gt;/或其关联公司可对与您在其他协议项下的合作采取中止甚或终止协议的措施，并以本协议第八条约定的方式通知您。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	&lt;span&gt;如商城与您签署的其他协议及商城及&lt;/span&gt;/或其关联公司、支付通道（公司）与您签署的协议中明确约定了对您在本协议项下合作进行关联处理的情形，则商城出于维护平台秩序及保护消费者权益的目的，可在收到指令时中止甚至终止协议，并以本协议第八条约定的方式通知您。\r\n&lt;/p&gt;\r\n&lt;h1 style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	&lt;b&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;七、&lt;/span&gt; &lt;span style=&quot;font-size:16px;&quot;&gt;协议的变更&lt;/span&gt;&lt;/b&gt;&lt;b&gt;&lt;/b&gt; \r\n&lt;/h1&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	&lt;span&gt;商城可根据国家法律法规变化及维护交易秩序、保护消费者权益需要，不时修改本协议、补充协议，变更后的协议、补充协议（下称&lt;/span&gt;“变更事项”）将通过法定程序并以本协议第八条约定的方式通知您。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	如您不同意变更事项，您有权于变更事项确定的生效日前联系商城反馈意见。如反馈意见得以采纳，商城将酌情调整变更事项。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	如您对已生效的变更事项仍不同意的，您应当于变更事项确定的生效之日起停止使用商城平台服务，变更事项对您不产生效力；如您在变更事项生效后仍继续使用商城平台服务，则视为您同意已生效的变更事项。\r\n&lt;/p&gt;\r\n&lt;h1 style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	&lt;b&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;八、&lt;/span&gt; &lt;span style=&quot;font-size:16px;&quot;&gt;通知&lt;/span&gt;&lt;/b&gt;&lt;b&gt;&lt;/b&gt; \r\n&lt;/h1&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	8.1有效联系方式\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	您在注册成为商城平台用户，并接受商城平台服务时，您应该向商城提供真实有效的联系方式（包括您的电子邮件地址、联系电话、联系地址等），对于联系方式发生变更的，您有义务及时更新有关信息，并保持可被联系的状态。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	您在注册商城平台用户时生成的用于登陆商城平台接收站内信、系统消息即时信息的会员账号（包括子账号），也作为您的有效联系方式。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	商城将向您的上述联系方式的其中之一或其中若干向您送达各类通知，而此类通知的内容可能对您的权利义务产生重大的有利或不利影响，请您务必及时关注。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	您有权通过您注册时填写的手机号码或者电子邮箱获取您感兴趣的商品广告信息、促销优惠等商业性信息；您如果不愿意接收此类信息，您有权通过商城提供的相应的退订功能进行退订。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	8.2 通知的送达\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	商城通过上述联系方式向您发出通知，其中以电子的方式发出的书面通知，包括但不限于在商城平台公告，向您提供的联系电话发送手机短信，向您提供的电子邮件地址发送电子邮件，向您的账号发送信息、系统消息以及站内信信息，在发送成功后即视为送达；以纸质载体发出的书面通知，按照提供联系地址交邮后的第五个自然日即视为送达。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	对于在商城平台上因交易活动引起的任何纠纷，您同意司法机关（包括但不限于人民法院）可以通过手机短信、电子邮件等现代通讯方式或邮寄方式向您送达法律文书（包括但不限于诉讼文书）。您指定接收法律文书的手机号码、电子邮箱等联系方式为您在商城平台注册、更新时提供的手机号码、电子邮箱联系方式以及在注册分购用户时生成账号，司法机关向上述联系方式发出法律文书即视为送达。您指定的邮寄地址为您的法定联系地址或您提供的有效联系地址。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	您同意司法机关可采取以上一种或多种送达方式向您达法律文书，司法机关采取多种方式向您送达法律文书，送达时间以上述送达方式中最先送达的为准。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	您同意上述送达方式适用于各个司法程序阶段。如进入诉讼程序的，包括但不限于一审、二审、再审、执行以及督促程序等。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	你应当保证所提供的联系方式是准确、有效的，并进行实时更新。如果因提供的联系方式不确切，或不及时告知变更后的联系方式，使法律文书无法送达或未及时送达，由您自行承担由此可能产生的法律后果。\r\n&lt;/p&gt;\r\n&lt;h1 style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	&lt;b&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;九、&lt;/span&gt; &lt;span style=&quot;font-size:16px;&quot;&gt;协议的终止&lt;/span&gt;&lt;/b&gt;&lt;b&gt;&lt;/b&gt; \r\n&lt;/h1&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	9.1 终止的情形\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	【用户发起的终止】您有权通过以下任一方式终止本协议：\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	（一）在满足商城网公示的账户注销条件时您通过网站自助服务注销您的账户的；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	（二）变更事项生效前您停止使用并明示不愿接受变更事项的；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	（三）您明示不愿继续使用商城平台服务，且符合商城终止条件的。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	【商城发起的终止】出现以下情况时，商城可以本协议第八条的所列的方式通知您终止本协议：\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	（一）您违反本协议约定，商城依据违约条款终止本协议的；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	（二）您盗用他人账户、发布违禁信息、骗取他人财物、售假、扰乱市场秩序、采取不正当手段谋利等行为，商城依据商城平台规则对您的账户予以查封的；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	（三）除上述情形外，因您多次违反商城平台规则相关规定且情节严重，商城依据商城平台规则对您的账户予以查封的；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	（四）您的账户被商城依据本协议回收的；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	&lt;span&gt;（五）您在关联平台有欺诈、发布或销售假冒伪劣&lt;/span&gt;/侵权商品、侵犯他人合法权益或其他严重违法违约行为的；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	（六）其它应当终止服务的情况。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	9.2 协议终止后的处理\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	【用户信息披露】本协议终止后，除法律有明确规定外，商城无义务向您或您指定的第三方披露您账户中的任何信息。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	【商城权利】本协议终止后，商城仍享有下列权利：\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	（一）继续保存您留存于商城平台的本协议第五条所列的各类信息；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	（二）对于您过往的违约行为，商城仍可依据本协议向您追究违约责任。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	【交易处理】本协议终止后，对于您在本协议存续期间产生的交易订单，商城可通知交易相对方并根据交易相对方的意愿决定是否关闭该等交易订单；如交易相对方要求继续履行的，则您应当就该等交易订单继续履行本协议及交易订单的约定，并承担因此产生的任何损失或增加的任何费用。\r\n&lt;/p&gt;\r\n&lt;h1 style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	&lt;b&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;十、&lt;/span&gt; &lt;span style=&quot;font-size:16px;&quot;&gt;法律适用、管辖与其他&lt;/span&gt;&lt;/b&gt;&lt;b&gt;&lt;/b&gt; \r\n&lt;/h1&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	&lt;span&gt;【法律适用】本协议之订立、生效、解释、修订、补充、终止、执行与争议解决均适用中华人民共和国大陆地区法律；如法律无相关规定的，参照商业惯例及&lt;/span&gt;/或行业惯例。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;&quot;&gt;\r\n	【管辖】您因使用商城平台服务所产生及与商城平台服务有关的争议，由商城与您协商解决。协商不成时，任何一方均可向被告所在地有管辖权的人民法院提起诉讼。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&amp;nbsp; 【可分性】本协议任一条款被视为废止、无效或不可执行，该条应视为可分的且并不影响本协议其余条款的有效性及可执行性。\r\n&lt;/p&gt;\r\n&lt;br /&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;h1 align=&quot;center&quot; style=&quot;text-align:center;&quot;&gt;\r\n	&lt;b&gt;&lt;span style=&quot;font-size:18px;&quot;&gt;法律声明及隐私权政策&lt;/span&gt;&lt;/b&gt;&lt;b&gt;&lt;/b&gt; \r\n&lt;/h1&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	提示条款\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	&lt;span&gt;您的信任对我们非常重要，我们深知个人信息对您的重要性，我们将按法律法规要求，采取相应安全保护措施，尽力保护您的个人信息安全可控。鉴此，商城服务提供者（或简称&lt;/span&gt;“我们”）制定本《法律声明及隐私权政策》（下称“本政策 /本隐私权政策”）并提醒您：\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	本政策适用于商城网产品或服务。如我们关联公司（范围详见定义部分）的产品或服务中使用了商城提供的产品或服务（例如直接使用商城账户登录）但未设独立法律声明及隐私权政策的，则本政策同样适用于该部分产品或服务。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-left:0pt;text-indent:0pt;&quot;&gt;\r\n	&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	需要特别说明的是，本政策不适用于其他第三方向您提供的服务，也不适用于商城中已另行独立设置法律声明及隐私权政策的产品或服务。例如商城上的卖家依托商城向您提供服务时，您向卖家提供的个人信息不适用本政策。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	在使用商城各项产品或服务前，请您务必仔细阅读并透彻理解本政策，在确认充分理解并同意后使用相关产品或服务。一旦您开始使用商城各项产品或服务，即表示您已充分理解并同意本政策。如对本政策内容有任何疑问、意见或建议，您可通过商城提供的各种联系方式与我们联系。\r\n&lt;/p&gt;\r\n&lt;h1&gt;\r\n	&lt;b&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;第一部分&lt;/span&gt; &lt;span style=&quot;font-size:16px;&quot;&gt;定义&lt;/span&gt;&lt;/b&gt;&lt;b&gt;&lt;/b&gt; \r\n&lt;/h1&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	商城：指家和家天下&lt;span&gt;商城（域名为&lt;/span&gt;www.gdbadi.com）网站及商城客户端。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	商城服务提供者：指商城的网络及软件技术服务提供者。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	个人信息：指以电子或者其他方式记录的能够单独或者与其他信息结合识别特定自然人身份或者反映特定自然人活动情况的各种信息。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	&lt;span&gt;个人敏感信息：包括身份证件号码、个人生物识别信息、银行账号、财产信息、行踪轨迹、交易信息、&lt;/span&gt;14岁以下（含）儿童的个人信息等。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	个人信息删除：指在实现日常业务功能所涉及的系统中去除个人信息的行为，使其保持不可被检索、访问的状态。\r\n&lt;/p&gt;\r\n&lt;h1&gt;\r\n	&lt;b&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;第二部分&lt;/span&gt; &lt;span style=&quot;font-size:16px;&quot;&gt;法律声明&lt;/span&gt;&lt;/b&gt;&lt;b&gt;&lt;/b&gt; \r\n&lt;/h1&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	权利归属\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	&lt;span&gt;除非商城另行声明，商城内的所有产品、技术、软件、程序、数据及其他信息（包括文字、图标、图片、照片、音频、视频、图表、色彩组合、版面设计等）的所有权利（包括版权、商标权、专利权、商业秘密及其他相关权利）均归商城服务提供者及&lt;/span&gt;/或其关联公司所有。未经商城服务提供者及/或其关联公司许可，任何人不得以包括通过机器人、蜘蛛等程序或设备监视、复制、传播、展示、镜像、上载、下载等方式擅自使用商城内的任何内容。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	&lt;span&gt;商城平台的&lt;/span&gt;“www.gdbadi.com”等文字及/或标识，以及商城的其他标识、徽记、产品和服务名称均为商城服务提供者及/或其关联公司在中国和其他国家的商标，如有宣传、展示等任何使用需要，您必须取得商城服务提供者及/或其关联公司事先书面授权。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	责任限制\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	&lt;span&gt;鉴于商城提供的信息发布服务属于电子公告牌（&lt;/span&gt;BBS）性质，商城上的店铺、商品信息（包括但不限于店铺名称、公司名称、 联系人及联络信息、产品的描述和说明、相关图片、视频等）由用户自行提供并上传，由用户对其提供并上传的信息承担相应法律责任。商城服务提供者对此另有约定的，将在相关的协议或其他法律文本中与您进行明确。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	商城转载的作品（包括论坛内容）出于传递更多信息之目的，并不意味我们赞同其观点或已经证实其内容的真实性。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	知识产权保护\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	我们尊重知识产权，反对并打击侵犯知识产权的行为。知识产权权利人若认为商城内容（包括但不限于商城用户发布的商品信息）侵犯其合法权益的，可以通过客服进行投诉，我们将在收到知识产权权利人合格通知后依据相应的法律法规以及平台规则及时处理。\r\n&lt;/p&gt;\r\n&lt;h1&gt;\r\n	&lt;b&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;第三部分&lt;/span&gt; &lt;span style=&quot;font-size:16px;&quot;&gt;隐私权政策&lt;/span&gt;&lt;/b&gt;&lt;b&gt;&lt;/b&gt; \r\n&lt;/h1&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	本隐私权政策部分将帮助您了解以下内容：\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	1、我们如何收集和使用您的个人信息\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	2、我们如何使用 Cookie 和同类技术\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	3、我们如何共享、转让、公开披露您的个人信息\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	4、我们如何保护您的个人信息\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	5、您如何管理您的个人信息\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	6、我们如何处理未成年人的个人信息\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	7、您的个人信息如何在全球范围转移\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	8、本隐私权政策如何更新\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	9、如何联系我们\r\n&lt;/p&gt;\r\n&lt;h1&gt;\r\n	&lt;b&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;一、我们如何收集和使用您的信息&lt;/span&gt;&lt;/b&gt;&lt;b&gt;&lt;/b&gt; \r\n&lt;/h1&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	我们会出于本政策所述的以下目的，收集和使用您的个人信息：\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	（一）帮助您成为我们的会员\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	为成为我们的会员，以便我们为您提供会员服务，您需要提供手机号码、电子邮箱地址，并创建用户名和密码。如果您仅需使用浏览、搜索等基本服务，您不需要注册成为我们的会员及提供上述信息。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	在注册会员过程中，如果您提供以下额外信息补全个人资料，将有助于我们给您提供如会员生日特权等更个性化的会员服务：您的真实姓名、性别、出生年月日、居住地、您本人的真实头像。但如果您不提供这些信息，将会影响到您使用个性化的会员服务，但不会影响使用商城产品或服务的基本浏览、搜索、购买功能。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	在您主动注销账号时，我们将根据适用法律法规的要求尽快使其匿名或删除您的个人信息。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	（二）为您展示和推送商品或服务\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	为改善我们的产品或服务、向您提供个性化的信息搜索及交易服务，我们会根据您的浏览及搜索记录、设备信息、位置信息、订单信息，提取您的浏览、搜索偏好、行为习惯、位置信息等特征，基于特征标签进行间接人群画像并展示、推送信息。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	如果您不想接受我们给您发送的商业广告，您可随时通过相应产品退订功能取消。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	（三）向您提供商品或服务\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	1、您向我们提供的信息\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	为便于向您交付商品或服务，您需提供收货人姓名、收货地址、邮政编码、收货人联系电话。如果我们委托第三方向您交付时，我们会在征得您同意后将上述信息共享给第三方。如果您拒绝提供此类信息，我们将无法完成相关交付服务。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	为完成交易，您可能需要提供支付账号并选择付款方式，以便我们了解您的支付状态。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	您可以通过商城为其他人订购商品或服务，您需要提供该实际订购人的前述个人信息。向商城提供该实际订购人的前述个人信息之前，您需确保您已经取得其授权同意。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	2、我们在您使用服务过程中收集的信息\r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	为向您提供更契合您需求的页面展示和搜索结果、了解产品适配性、识别账号异常状态，我们会收集关于您使用的服务以及使用方式的信息并将这些信息进行关联，这些信息包括：\r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&amp;nbsp;&amp;nbsp;&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	&lt;span&gt;设备信息：我们会根据您在软件安装及使用中授予的具体权限，接收并记录您所使用的设备相关信息（例如设备型号、操作系统版本、设备设置、唯一设备标识符等软硬件特征信息）、设备所在位置相关信息（例如&lt;/span&gt;IP 地址、GPS位置以及能够提供相关信息的Wi-Fi 接入点、蓝牙和基站等传感器信息）。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	&lt;span&gt;日志信息：当您使用我们的网站或客户端提供的产品或服务时，我们会自动收集您对我们服务的详细使用情况，作为有关网络日志保存。例如您的搜索查询内容、&lt;/span&gt;IP地址、浏览器的类型、电信运营商、使用的语言、访问日期和时间及您访问的网页记录等。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	请注意，单独的设备信息、日志信息等是无法识别特定自然人身份的信息。如果我们将这类非个人信息与其他信息结合用于识别特定自然人身份，或者将其与个人信息结合使用，则在结合使用期间，这类非个人信息将被视为个人信息，除取得您授权或法律法规另有规定外，我们会将该类个人信息做匿名化、去标识化处理。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	为展示您账户的订单信息，我们会收集您在使用我们服务过程中产生的订单信息用于向您展示及便于您对订单进行管理。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	&lt;span&gt;当您与我们联系时，我们可能会保存您的通信&lt;/span&gt;/通话记录和内容或您留下的联系方式等信息，以便与您联系或帮助您解决问题，或记录相关问题的处理方案及结果。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	3、我们通过间接获得方式收集到的您的个人信息\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	为确认交易状态及为您提供售后与争议解决服务，我们会通过您基于交易所选择的交易对象、支付机构、物流公司等收集与交易进度相关的您的交易、支付、物流信息，或将您的交易信息共享给上述服务提供者。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	您可通过分购账号在我们提供的链接入口使用我们关联公司提供的产品或服务，为便于我们基于关联账号共同向您提供一站式服务并便于您统一进行管理，我们在商城集中展示您的信息或推荐您感兴趣的信息。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	当您通过我们产品或服务使用上述服务时，您授权我们根据实际业务及合作需要从我们关联公司处接收、汇总、分析我们确认其来源合法或您授权同意其向我们提供的您的个人信息或交易信息。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	如您拒绝提供上述信息或拒绝授权，可能无法使用我们关联公司的相应产品或服务，或者无法展示相关信息，但不影响使用商城浏览、搜索、交易等核心服务。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	（四）为您提供安全保障\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	请注意，为确保会员身份真实性、向您提供更好的安全保障，您可以向我们提供身份证、居住证等身份信息。如您拒绝提供上述信息，可能无法使用账户管理、创建店铺、出售商品、继续可能存在风险的交易等服务，但不会影响您使用浏览、搜索等服务。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	为提高您使用我们及我们关联公司、合作伙伴提供服务的安全性，保护您或其他用户或公众的人身财产安全免遭侵害，更好地预防钓鱼网站、欺诈、网络漏洞、计算机病毒、网络攻击、网络侵入等安全风险，更准确地识别违反法律法规或商城相关协议规则的情况，我们可能使用或整合您的会员信息、交易信息、设备信息、有关网络日志以及我们关联公司、合作伙伴取得您授权或依据法律共享的信息，来综合判断您账户及交易风险、进行身份验证、检测及防范安全事件，并依法采取必要的记录、审计、分析、处置措施。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	（五）其他用途\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	我们将信息用于本政策未载明的其他用途，或者将基于特定目的收集而来的信息用于其他目的时，会事先征求您的同意。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	（六）征得授权同意的例外\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	根据相关法律法规规定，以下情形中收集您的个人信息无需征得您的授权同意：\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	1、与国家安全、国防安全有关的；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	2、与公共安全、公共卫生、重大公共利益有关的；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	3、与犯罪侦查、起诉、审判和判决执行等有关的；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	4、出于维护个人信息主体或其他个人的生命、财产等重大合法权益但又很难得到您本人同意的；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	5、所收集的个人信息是您自行向社会公众公开的；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	6、从合法公开披露的信息中收集个人信息的，如合法的新闻报道、政府信息公开等渠道；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	7、根据您的要求签订合同所必需的；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	8、用于维护所提供的产品或服务的安全稳定运行所必需的，例如发现、处置产品或服务的故障；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	9、为合法的新闻报道所必需的；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	10、学术研究机构基于公共利益开展统计或学术研究所必要，且对外提供学术研究或描述的结果时，对结果中所包含的个人信息进行去标识化处理的；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	11、法律法规规定的其他情形。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	如我们停止运营商城产品或服务，我们将及时停止继续收集您个人信息的活动，将停止运营的通知以逐一送达或公告的形式通知您，对所持有的个人信息进行删除或匿名化处理。\r\n&lt;/p&gt;\r\n&lt;h1&gt;\r\n	&lt;b&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;二、我们如何使用&lt;/span&gt;&lt;span style=&quot;font-size:16px;&quot;&gt; Cookie 和同类技术&lt;/span&gt;&lt;/b&gt;&lt;b&gt;&lt;/b&gt; \r\n&lt;/h1&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	&lt;span&gt;（一）&lt;/span&gt;Cookie\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	&lt;span&gt;为确保网站正常运转、为您获得更轻松的访问体验、向您推荐您可能感兴趣的内容，我们会在您的计算机或移动设备上存储名为&lt;/span&gt; Cookie 的小数据文件。Cookie 通常包含标识符、站点名称以及一些号码和字符。借助于 Cookie，网站能够存储您的偏好或购物篮内的商品等数据。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	&lt;span&gt;您可根据自己的偏好管理或删除&lt;/span&gt; Cookie。有关详情，请参见 AboutCookies.org。您可以清除计算机上保存的所有 Cookie，大部分网络浏览器都设有阻止 Cookie 的功能。但如果您这么做，则需要在每一次访问我们的网站时更改用户设置。如需详细了解如何更改浏览器设置，请访问您使用的浏览器的相关设置页面。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	（二）网站信标和像素标签\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	&lt;span&gt;除&lt;/span&gt; Cookie 外，我们还会在网站上使用网站信标和像素标签等其他同类技术。例如，我们向您发送的电子邮件可能含有链接至我们网站内容的地址链接，如果您点击该链接，我们则会跟踪此次点击，帮助我们了解您的产品或服务偏好以便于我们主动改善客户服务体验。网站信标通常是一种嵌入到网站或电子邮件中的透明图像。借助于电子邮件中的像素标签，我们能够获知电子邮件是否被打开。如果您不希望自己的活动以这种方式被追踪，则可以随时从我们的寄信名单中退订。\r\n&lt;/p&gt;\r\n&lt;h1&gt;\r\n	&lt;b&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;三、我们如何共享、转让、公开披露您的个人信息&lt;/span&gt;&lt;/b&gt;&lt;b&gt;&lt;/b&gt; \r\n&lt;/h1&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	（一）共享\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	我们不会与商城服务提供者以外的公司、组织和个人共享您的个人信息，但以下情况除外：\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	1、在获取明确同意的情况下共享：获得您的明确同意后，我们会与其他方共享您的个人信息。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	2、在法定情形下的共享：我们可能会根据法律法规规定、诉讼争议解决需要，或按行政、司法机关依法提出的要求，对外共享您的个人信息。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	3、与关联公司间共享：为便于我们基于关联账号共同向您提供服务，推荐您可能感兴趣的信息或保护商城关联公司或其他用户或公众的人身财产安全免遭侵害，您的个人信息可能会与我们的关联公司共享。我们只会共享必要的个人信息（如为便于您使用分购账号使用我们关联公司产品或服务，我们会向关联公司共享您必要的账户信息），如果我们共享您的个人敏感信息或关联公司改变个人信息的使用及处理目的，将再次征求您的授权同意。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	4、与授权合作伙伴共享：仅为实现本隐私权政策中声明的目的，我们的某些服务将由我们和授权合作伙伴共同提供。我们可能会与合作伙伴共享您的某些个人信息，以提供更好的客户服务和用户体验。例如，在您上网购买我们的产品时，我们必须与物流服务提供商共享您的个人信息才能安排送货，或者安排合作伙伴提供服务。我们仅会出于合法、正当、必要、特定、明确的目的共享您的个人信息，并且只会共享提供服务所必要的个人信息。我们的合作伙伴无权将共享的个人信息用于与产品或服务无关的其他用途。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	目前，我们的授权合作伙伴包括以下类型：\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	&lt;span&gt;（&lt;/span&gt;1）广告、分析服务类的授权合作伙伴。除非得到您的许可，否则我们不会将您的个人身份信息（指可以识别您身份的信息，例如姓名或电子邮箱，通过这些信息可以联系到您或识别您的身份）与提供广告、分析服务的合作伙伴共享。我们会向这些合作伙伴提供有关其广告覆盖面和有效性的信息，而不会提供您的个人身份信息，或者我们将这些信息进行汇总，以便它不会识别您个人。例如，只有在广告主同意遵守我们的广告发布准则后，我们才可能会告诉广告主他们广告的效果如何，或者有多少人看了他们广告或在看到广告后安装了应用，或者向这些合作伙伴提供不能识别个人身份的统计信息（例如“男性，25-29岁，位于北京”），帮助他们了解其受众或顾客。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	&lt;span&gt;（&lt;/span&gt;2）供应商、服务提供商和其他合作伙伴。我们将信息发送给支持我们业务的供应商、服务提供商和其他合作伙伴，这些支持包括提供技术基础设施服务、分析我们服务的使用方式、衡量广告和服务的有效性、提供客户服务、支付便利或进行学术研究和调查。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	对我们与之共享个人信息的公司、组织和个人，我们会与其签署严格的数据保护协定，要求他们按照我们的说明、本隐私权政策以及其他任何相关的保密和安全措施来处理个人信息。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	（二）转让\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	我们不会将您的个人信息转让给任何公司、组织和个人，但以下情况除外：\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	在商城服务提供者发生合并、收购或破产清算情形，或其他涉及合并、收购或破产清算情形时，如涉及到个人信息转让，我们会要求新的持有您个人信息的公司、组织继续受本政策的约束，否则我们将要求该公司、组织和个人重新向您征求授权同意。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	（三）公开披露\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	我们仅会在以下情况下，公开披露您的个人信息：\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	如果我们确定您出现违反法律法规或严重违反商城相关协议规则的情况，或为保护商城及其关联公司用户或公众的人身财产安全免遭侵害，我们可能依据法律法规或商城相关协议规则征得您同意的情况下披露关于您的个人信息，包括相关违规行为以及商城已对您采取的措施。例如，若您宣传和销售假货而严重违反规则，我们可能会公开披露您的店铺主体信息与处罚情况。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	（四）共享、转让、公开披露个人信息时事先征得授权同意的例外\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	以下情形中，共享、转让、公开披露您的个人信息无需事先征得您的授权同意：\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	1、与国家安全、国防安全有关的；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	2、与公共安全、公共卫生、重大公共利益有关的；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	3、与犯罪侦查、起诉、审判和判决执行等有关的；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	4、出于维护您或其他个人的生命、财产等重大合法权益但又很难得到本人同意的；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	5、您自行向社会公众公开的个人信息；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	6、从合法公开披露的信息中收集个人信息的，如合法的新闻报道、政府信息公开等渠道。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	根据法律规定，共享、转让经去标识化处理的个人信息，且确保数据接收方无法复原并重新识别个人信息主体的，不属于个人信息的对外共享、转让及公开披露行为，对此类数据的保存及处理将无需另行向您通知并征得您的同意。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;h1&gt;\r\n	&lt;b&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;四、我们如何保护您的个人信息安全&lt;/span&gt;&lt;/b&gt;&lt;b&gt;&lt;/b&gt; \r\n&lt;/h1&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	&lt;span&gt;（一）我们已采取符合业界标准、合理可行的安全防护措施保护您提供的个人信息安全，防止个人信息遭到未经授权访问、公开披露、使用、修改、损坏或丢失。例如，在您的浏览器与服务器之间交换数据（如信用卡信息）时受&lt;/span&gt; SSL（Secure Socket Layer）协议加密保护；我们同时对商城网站提供HTTPS（Hyper Text Transfer Protocol over Secure Socket Layer）协议安全浏览方式；我们会使用加密技术提高个人信息的安全性；我们会使用受信赖的保护机制防止个人信息遭到恶意攻击；我们会部署访问控制机制，尽力确保只有授权人员才可访问个人信息；以及我们会举办安全和隐私保护培训课程，加强员工对于保护个人信息重要性的认识。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	（二）我们有行业先进的以数据为核心，围绕数据生命周期进行的数据安全管理体系，从组织建设、制度设计、人员管理、产品技术等方面多维度提升整个系统的安全性。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	（三）我们会采取合理可行的措施，尽力避免收集无关的个人信息。我们只会在达成本政策所述目的所需的期限内保留您的个人信息，除非需要延长保留期或受到法律的允许。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	（四）互联网并非绝对安全的环境，我们强烈建议您不要使用非商城推荐的通信方式发送个人信息。您可以通过我们的服务建立联系和相互分享。当您通过我们的服务创建交流、交易或分享时，您可以自主选择沟通、交易或分享的对象，作为能够看到您的交易内容、联络方式、交流信息或分享内容等相关信息的第三方。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	在使用商城服务进行网上交易时，您不可避免地要向交易对方或潜在的交易对方披露自己的个人信息，如联络方式或联系地址。请您妥善保护自己的个人信息，仅在必要的情形下向他人提供。如您发现自己的个人信息尤其是您的账户或密码发生泄露，请您立即联络商城客服，以便我们根据您的申请采取相应措施。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	请注意，您在使用我们服务时自愿共享甚至公开分享的信息，可能会涉及您或他人的个人信息甚至个人敏感信息，如您在评价时选择上传包含个人信息的图片。请您更加谨慎地考虑，是否在使用我们的服务时共享甚至公开分享相关信息。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	请使用复杂密码，协助我们保证您的账号安全。我们将尽力保障您发送给我们的任何信息的安全性。如果我们的物理、技术或管理防护设施遭到破坏，导致信息被非授权访问、公开披露、篡改或毁坏，导致您的合法权益受损，我们将承担相应的法律责任。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	（五）我们将不定期更新并公开安全风险、个人信息安全影响评估报告等有关内容，您可通过商城公告方式获得。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	（六）在不幸发生个人信息安全事件后，我们将按照法律法规的要求向您告知：安全事件的基本情况和可能的影响、我们已采取或将要采取的处置措施、您可自主防范和降低风险的建议、对您的补救措施等。事件相关情况我们将以邮件、信函、电话、推送通知等方式告知您，难以逐一告知个人信息主体时，我们会采取合理、有效的方式发布公告。同时，我们还将按照监管部门要求，上报个人信息安全事件的处置情况。\r\n&lt;/p&gt;\r\n&lt;h1&gt;\r\n	&lt;b&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;五、您如何管理您的个人信息&lt;/span&gt;&lt;/b&gt;&lt;b&gt;&lt;/b&gt; \r\n&lt;/h1&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	您可以通过以下方式访问及管理您的个人信息：\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	（一）访问您的个人信息\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	您有权访问您的个人信息，法律法规规定的例外情况除外。您可以通过以下方式自行访问您的个人信息：\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	&lt;span&gt;账户信息&lt;/span&gt;——如果您希望访问或编辑您的账户中的个人基本资料信息和支付信息、更改您的密码、添加安全信息或关闭您的账户等，您可以通过登录账号通过“账号管理”执行此类操作。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	&lt;span&gt;搜索信息&lt;/span&gt;——您可以登录账号通过访问或清除您的搜索历史记录。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	订单信息：您可以在商城中查阅或清除您的订单记录、交易记录等。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	&lt;span&gt;如果您无法通过上述路径访问该等个人信息，您可以随时通过商城客服与我们取得联系。我们将在&lt;/span&gt;15天内回复您的访问请求。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	&lt;span&gt;对于您在使用我们的产品或服务过程中产生的其他个人信息，我们将根据本条&lt;/span&gt;“（七）响应您的上述请求”中的相关安排向您提供。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	（二）更正或补充您的个人信息\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	&lt;span&gt;当您发现我们处理的关于您的个人信息有错误时，您有权要求我们做出更正或补充。您可以通过&lt;/span&gt;“（一）访问您的个人信息”中列明的方式提出更正或补充申请。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	（三）删除您的个人信息\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	&lt;span&gt;您可以通过&lt;/span&gt;“（一）访问您的个人信息”中列明的方式删除您的部分个人信息。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	在以下情形中，您可以向我们提出删除个人信息的请求：\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	1、如果我们处理个人信息的行为违反法律法规；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	2、如果我们收集、使用您的个人信息，却未征得您的明确同意；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	3、如果我们处理个人信息的行为严重违反了与您的约定；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	4、如果您不再使用我们的产品或服务，或您主动注销了账号；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	5、如果我们永久不再为您提供产品或服务。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	若我们决定响应您的删除请求，我们还将同时尽可能通知从我们处获得您的个人信息的主体，要求其及时删除，除非法律法规另有规定，或这些主体获得您的独立授权。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	当您从我们的服务中删除信息后，我们可能不会立即从备份系统中删除相应的信息，但会在备份更新时删除这些信息。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	（四）改变您授权同意的范围\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	&lt;span&gt;每个业务功能需要一些基本的个人信息才能得以完成（见本隐私权政策&lt;/span&gt;“第三部分第一条”）。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	当您收回同意后，我们将不再处理相应的个人信息。但您收回同意的决定，不会影响此前基于您的授权而开展的个人信息处理。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	（五）个人信息主体注销账户\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	&lt;span&gt;您可以自行在&lt;/span&gt;“注销账户”页面提交账户注销申请。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	在您主动注销账户之后，我们将停止为您提供产品或服务，根据适用法律的要求删除您的个人信息，或使其匿名化处理。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	（六）约束信息系统自动决策\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	在某些业务功能中，我们可能仅依据信息系统、算法等在内的非人工自动决策机制做出决定。如果这些决定显著影响您的合法权益，您有权要求我们做出解释，我们也将在不侵害商城商业秘密或其他用户权益、社会公共利益的前提下提供申诉方法。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	（七）响应您的上述请求\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	为保障安全，您可能需要提供书面请求，或以其他方式证明您的身份。我们可能会先要求您验证自己的身份，然后再处理您的请求。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	&lt;span&gt;我们将在&lt;/span&gt;15天内做出答复。如您不满意，还可以通过商城客服发起投诉。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	对于您合理的请求，我们原则上不收取费用，但对多次重复、超出合理限度的请求，我们将视情收取一定成本费用。对于那些无端重复、需要过多技术手段（例如，需要开发新系统或从根本上改变现行惯例）、给他人合法权益带来风险或者非常不切实际的请求，我们可能会予以拒绝。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	在以下情形中，按照法律法规要求，我们将无法响应您的请求：\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	1、与国家安全、国防安全有关的；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	2、与公共安全、公共卫生、重大公共利益有关的；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	3、与犯罪侦查、起诉、审判和执行判决等有关的；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	4、有充分证据表明个人信息主体存在主观恶意或滥用权利的；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	5、响应您的请求将导致您或其他个人、组织的合法权益受到严重损害的；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	6、涉及商业秘密的。\r\n&lt;/p&gt;\r\n&lt;h1&gt;\r\n	&lt;b&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;六、我们如何处理未成年人的个人信息&lt;/span&gt;&lt;/b&gt;&lt;b&gt;&lt;/b&gt; \r\n&lt;/h1&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	如果没有父母或监护人的同意，未成年人不得创建自己的用户账户。如您为未成年人的，建议您请您的父母或监护人仔细阅读本隐私权政策，并在征得您的父母或监护人同意的前提下使用我们的服务或向我们提供信息。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	对于经父母或监护人同意使用我们的产品或服务而收集未成年人个人信息的情况，我们只会在法律法规允许、父母或监护人明确同意或者保护未成年人所必要的情况下使用、共享、转让或披露此信息。\r\n&lt;/p&gt;\r\n&lt;h1&gt;\r\n	&lt;b&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;七、您的个人信息如何在全球范围转移&lt;/span&gt;&lt;/b&gt;&lt;b&gt;&lt;/b&gt; \r\n&lt;/h1&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	我们在中华人民共和国境内运营中收集和产生的个人信息，存储在中国境内，以下情形除外：\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	1、法律法规有明确规定；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	2、获得您的明确授权；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	3、您通过互联网进行跨境交易等个人主动行为。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	针对以上情形，我们会确保依据本隐私权政策对您的个人信息提供足够的保护。\r\n&lt;/p&gt;\r\n&lt;h1&gt;\r\n	&lt;b&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;八、本隐私权政策如何更新&lt;/span&gt;&lt;/b&gt;&lt;b&gt;&lt;/b&gt; \r\n&lt;/h1&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	我们的隐私权政策可能变更。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	未经您明确同意，我们不会限制您按照本隐私权政策所应享有的权利。我们会在专门页面上发布对隐私权政策所做的任何变更。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	对于重大变更，我们还会提供更为显著的通知（包括我们会通过商城公示的方式进行通知甚至向您提供弹窗提示）。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	本政策所指的重大变更包括但不限于：\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	1、我们的服务模式发生重大变化。如处理个人信息的目的、处理的个人信息类型、个人信息的使用方式等；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	2、我们在控制权等方面发生重大变化。如并购重组等引起的所有者变更等；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	3、个人信息共享、转让或公开披露的主要对象发生变化；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	4、您参与个人信息处理方面的权利及其行使方式发生重大变化；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	5、我们负责处理个人信息安全的责任部门、联络方式及投诉渠道发生变化时；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	6、个人信息安全影响评估报告表明存在高风险时。\r\n&lt;/p&gt;\r\n&lt;h1&gt;\r\n	&lt;b&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;九、如何联系我们&lt;/span&gt;&lt;/b&gt;&lt;b&gt;&lt;/b&gt; \r\n&lt;/h1&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	&lt;span&gt;您可以通过以下方式与我们联系，我们将在&lt;/span&gt;15天内回复您的请求：\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	1、如对本政策内容有任何疑问、意见或建议，您可通过商城客服及服务中心与我们联系；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	2、如发现个人信息可能被泄露，您可以通过投诉举报；\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	3、我们还设立了个人信息保护部门，您可以与其联系。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	如果您对我们的回复不满意，特别是您认为我们的个人信息处理行为损害了您的合法权益，您还可以通过向被告住所地有管辖权的法院提起诉讼来寻求解决方案。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;h1 align=&quot;center&quot; style=&quot;text-align:center;&quot;&gt;\r\n	&lt;b&gt;&lt;span style=&quot;font-size:18px;&quot;&gt;风险提示书&lt;/span&gt;&lt;/b&gt;&lt;b&gt;&lt;/b&gt; \r\n&lt;/h1&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;b&gt;&lt;span&gt;尊敬的会员：&lt;/span&gt;&lt;/b&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span&gt;为了使您更好地防范交易活动中的风险，根据&lt;/span&gt;&lt;span&gt;家和家天下&lt;/span&gt;&lt;span&gt;商城（以下简称&lt;/span&gt;“平台”）的有关规定，特提供本风险提示书，请详细阅读。代表您对商城业务的风险认知及了解。&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;b&gt;&lt;span&gt;一、宏观经济风险&lt;/span&gt;&lt;/b&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span&gt;我国宏观经济形势的变化以及价值取向的变化，产业结构的调整变化以及周边国家、地区宏观经济环境变化，都有可能影响国内商品供求关系的平衡，引起商品价格的变化；国际宏观经济形势变化也会对市场产生影响，存在导致商品价格变化的情形。&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;b&gt;&lt;span&gt;二、政策法规&lt;/span&gt;&lt;/b&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span&gt;作为一种创新模式，法律和政策及自身的交易规则还需要在实践中不断完善，国家法律、法规及政策的变化以及影响价格波动的其他因素出现，都可能影响现货发售交易价格；或者由于平台根据国家法律、法规及政策变化等原因而对平台相关规则进行修订，可能影响交易主体资格、交易规则等各个方面的变化，从而可能导致平台的货物价格变动。&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;b&gt;&lt;span&gt;三、市场风险&lt;/span&gt;&lt;/b&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span&gt;产品种类、数额的变化及市场人员和资金的参与程度等市场因素，可能导致平台上商品价格变动。&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;b&gt;&lt;span&gt;四、鉴定评估风险&lt;/span&gt;&lt;/b&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span&gt;由于国内目前尚无权威的鉴定评估机构和统一的鉴定估值程序及完备的鉴定估值方法，鉴定估值会与实际市场价不一致，商品鉴定估值意见书仅供交易商参考，不作为您主张其他权益的依据。&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;b&gt;&lt;span&gt;五、技术风险&lt;/span&gt;&lt;/b&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span&gt;由于交易的进行、信息的显示及资金的划付均运用电子通讯技术并通过互联网传输来实现，其存在被网络黑客和计算机病毒攻击的可能，或者通讯技术或相关软件具有存在缺陷的可能，互联网传输故障也可能造成您的交易指令无法及时传输，这些风险均可导致您的交易申报无法成交或者无法全部成交，或者转账资金不能及时到账、交易延迟、中止甚至无法完成交易等。&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;b&gt;&lt;span&gt;六、交易风险&lt;/span&gt;&amp;nbsp;&lt;/b&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	6.1 您在交易期间，如果因自身原因导致其资产被司法机关采取财产保全或强制执行措施，或者出现丧失民事行为能力、破产、解散等情况时，您将面临提前结清交易的风险，可能会给您造成经济损失。&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	6.2 交易期间，将以约定的通讯地址和通讯方式，向您发送每日交易和结算清单及各种通知。发送行为完成后，即视为平台已经履行对交易商的通知义务，您应及时收取和查阅。您若未在规定的时间内对上述应发送内容和行为提出异意， 则将承担由此可能造成的经济损失和相应后果。&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	6.3 商城及工作人员不会对您做出获利保证，并且不会与您分享收益或共担风险。 您应知晓针对业务的任何获利保证或者不会发生亏损的承诺均不可能且没有根据。&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	6.4 您在本商城进行的任何交易均建立在自己的自主决定之上。商城及员工提供的任何关于市场的分析和信息，仅供您参考，同时也不构成任何要约。由此而造成的交易风险由您自行承担。&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	6.5 在交易的过程中，有可能出现偶然性的明显的错误报价，商城可能事后会对错价及错价产生的差价做出纠正，由此而造成的交易风险由您自行承担。&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	6.6您在商城的系统内，通过网上/客户端所进行的交易，一经成交，即不可撤销；若要撤销，您需承担相应的损失。您必须接受这种方式可能带来的风险。&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	6.7其他可能面临和承担的风险：由于您密码失密、操作不当、投资决策失误等原因可能会使您发生的亏损；委托他人代理交易，且长期不关注账户变化，致使他人恶意操作而造成的损失；因密码管理不当造成的损失；所有这些损失将由您自行承担。&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;b&gt;&lt;span&gt;七、不可抗力风险&lt;/span&gt;&lt;/b&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span&gt;诸如地震、台风、火灾、水灾、战争、瘟疫、社会动乱等不可抗力因素可能导致系统的瘫痪或无法正常交货；商城无法控制和不可预测的系统故障、设备故障、通讯故障、电力故障等也可能导致系统非正常运行甚至瘫痪或导致您无法及时了解相关信息；银行&lt;/span&gt;/支付通道无法控制和不可预测的系统故障、设备故障、通讯故障、电力故障等也可能导致资金转账系统非正常运行甚至瘫痪，这些风险可能导致您的交易申报无法成交或者无法全部成交，或者转账资金不能及时到账等。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;b&gt;&lt;span&gt;八、软硬件系统风险&lt;/span&gt;&lt;/b&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span&gt;电脑设备及软件系统与所提供的系统不相匹配，导致无法下达申报指令或申报失败、延迟等。&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span&gt;在您参与交易时，任何人给予的保证获利承诺都是没有根据的。商城没有授权任何个人或组织进行交易业务，为保护您的合法权益，请不要与任何人签订委托代理协议，否则由此引起的一切后果将由您本人承担。&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span&gt;本《风险提示书》提示事项仅为列举，并不能详细列明从事交易的全部风险和可能影响价格的所有情形，其他不可预见的风险因素也可能会给您带来损失。敬请对此有清醒的认识。您在进行&lt;/span&gt;&lt;span&gt;购物&lt;/span&gt;&lt;span&gt;交易前，应确保自己已经做好足够的风险评估和财务安排，避免因参与交易而遭受难以承受的损失。&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span&gt;（以下无正文）&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	(本页为签署页)\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p&quot; style=&quot;margin-left:6.0000pt;text-indent:0.0000pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;span&gt;客户：&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;\r\n	&lt;span&gt;（签字或盖章）&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:center;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;h1 style=&quot;text-align:center;&quot;&gt;\r\n	&lt;span style=&quot;font-size:18px;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;background:#FFFFFF;font-family:宋体;&quot;&gt; \r\n	&lt;h1 align=&quot;center&quot; style=&quot;text-align:center;&quot;&gt;\r\n	&lt;/h1&gt;\r\n	&lt;p class=&quot;p&quot;&gt;\r\n		&lt;span&gt;&lt;/span&gt; \r\n	&lt;/p&gt;\r\n&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; \r\n&lt;/h1&gt;', '注册协议', null, null, null, null, '1', '0');
INSERT INTO `shop_config` VALUES ('131', 'fenxiao_pic', '/public/uploads/20191009/499e4bbc0944a8afb8cf276295cd0833.jpg', '分销价图', null, null, null, null, '1', '0');
INSERT INTO `shop_config` VALUES ('132', 'qianggou_pic', '/public/uploads/20191012/747114856138bf102c5220ce9b673efd.png', '抢购区图', null, null, null, null, '1', '0');
INSERT INTO `shop_config` VALUES ('133', 'yiyuan_pic', '/public/uploads/20191012/d961793abbfa050047ee0601dd318041.png', '1元区图', null, null, null, null, '1', '0');
INSERT INTO `shop_config` VALUES ('134', 'tuangou_pic', '/public/uploads/20191009/e031f099aaee12527561f7daf20b02a3.jpg', '团购区图', null, null, null, null, '1', '0');
INSERT INTO `shop_config` VALUES ('135', 'upgrade_pic', '/public/uploads/20191009/437967cce3b793b6be55a152fb6c1dd7.jpg', '套餐区图', null, null, null, null, '1', '0');

-- ----------------------------
-- Table structure for shop_coupon
-- ----------------------------
DROP TABLE IF EXISTS `shop_coupon`;
CREATE TABLE `shop_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `conpon_prefix` varchar(255) DEFAULT NULL COMMENT '前缀编号',
  `coupon_name` varchar(255) DEFAULT NULL COMMENT '优惠券名称',
  `coupon_type` int(11) DEFAULT NULL COMMENT '1->满减，2->折扣',
  `coupon_limit` decimal(15,2) DEFAULT NULL COMMENT '使用要求金额',
  `coupon_value` decimal(15,2) DEFAULT NULL COMMENT '值',
  `coupon_num` int(11) DEFAULT '0' COMMENT '数量',
  `coupon_surplus_num` int(11) NOT NULL DEFAULT '0' COMMENT '剩余数量',
  `describe` varchar(255) DEFAULT NULL COMMENT '描述',
  `term` int(11) DEFAULT NULL COMMENT '期限（天）',
  `generate_time` varchar(255) DEFAULT NULL COMMENT '生成时间',
  `expire_time` varchar(255) DEFAULT NULL COMMENT '到期时间',
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_coupon
-- ----------------------------

-- ----------------------------
-- Table structure for shop_evaluate
-- ----------------------------
DROP TABLE IF EXISTS `shop_evaluate`;
CREATE TABLE `shop_evaluate` (
  `evaluate_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL COMMENT '订单id',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品id',
  `uid` int(11) DEFAULT NULL COMMENT '会员id',
  `rate` int(5) DEFAULT NULL COMMENT '1,2,3,4,5星级',
  `content` text COMMENT '评价内容',
  `pj_image` varchar(255) DEFAULT NULL COMMENT '评价图片',
  `pj_state` int(5) DEFAULT NULL COMMENT '1,待评价 2,已评价',
  `generate_time` varchar(255) DEFAULT NULL COMMENT '生成时间',
  `pj_time` varchar(255) DEFAULT NULL COMMENT '评价时间',
  `is_anonymous` int(5) NOT NULL DEFAULT '1' COMMENT '1=>匿名 2=>不匿名',
  PRIMARY KEY (`evaluate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_evaluate
-- ----------------------------
INSERT INTO `shop_evaluate` VALUES ('85', '52', '20', '1', '4', '第一个评价33333333333333333333', 'user/20190917\\16c7ac989377a3570559e2cf51c34dc3.jpg', '2', '1568707833', '1568708019', '1');
INSERT INTO `shop_evaluate` VALUES ('86', '53', '22', '22', null, null, null, '1', '1568708296', null, '1');
INSERT INTO `shop_evaluate` VALUES ('87', '54', '22', '22', null, null, null, '1', '1568708564', null, '1');
INSERT INTO `shop_evaluate` VALUES ('88', '24', '22', '32', null, null, null, '1', '1569505619', null, '1');
INSERT INTO `shop_evaluate` VALUES ('89', '26', '22', '44', null, null, null, '1', '1569649392', null, '1');
INSERT INTO `shop_evaluate` VALUES ('90', '27', '22', '38', null, null, null, '1', '1569649446', null, '1');
INSERT INTO `shop_evaluate` VALUES ('91', '28', '22', '46', null, null, null, '1', '1569649937', null, '1');
INSERT INTO `shop_evaluate` VALUES ('92', '34', '25', '48', null, null, null, '1', '1569661720', null, '1');
INSERT INTO `shop_evaluate` VALUES ('93', '34', '25', '48', null, null, null, '1', '1569661908', null, '1');
INSERT INTO `shop_evaluate` VALUES ('94', '35', '22', '49', null, null, null, '1', '1569662040', null, '1');
INSERT INTO `shop_evaluate` VALUES ('95', '37', '25', '50', null, null, null, '1', '1569663183', null, '1');
INSERT INTO `shop_evaluate` VALUES ('96', '39', '23', '50', null, null, null, '1', '1569663534', null, '1');
INSERT INTO `shop_evaluate` VALUES ('97', '40', '25', '52', null, null, null, '1', '1569663980', null, '1');
INSERT INTO `shop_evaluate` VALUES ('98', '41', '25', '53', null, null, null, '1', '1569664063', null, '1');
INSERT INTO `shop_evaluate` VALUES ('99', '42', '25', '54', null, null, null, '1', '1569664570', null, '1');
INSERT INTO `shop_evaluate` VALUES ('100', '43', '25', '55', null, null, null, '1', '1569664921', null, '1');
INSERT INTO `shop_evaluate` VALUES ('101', '44', '25', '56', null, null, null, '1', '1569665385', null, '1');
INSERT INTO `shop_evaluate` VALUES ('102', '50', '25', '52', null, null, null, '1', '1569816064', null, '1');
INSERT INTO `shop_evaluate` VALUES ('103', '49', '17', '52', null, null, null, '1', '1569816067', null, '1');
INSERT INTO `shop_evaluate` VALUES ('104', '52', '16', '52', null, null, null, '1', '1569823297', null, '1');
INSERT INTO `shop_evaluate` VALUES ('105', '51', '16', '52', null, null, null, '1', '1569823301', null, '1');
INSERT INTO `shop_evaluate` VALUES ('106', '53', '22', '52', null, null, null, '1', '1569824403', null, '1');
INSERT INTO `shop_evaluate` VALUES ('107', '54', '25', '48', null, null, null, '1', '1569831172', null, '1');
INSERT INTO `shop_evaluate` VALUES ('108', '57', '25', '48', null, null, null, '1', '1569832218', null, '1');
INSERT INTO `shop_evaluate` VALUES ('109', '55', '25', '48', null, null, null, '1', '1569832224', null, '1');
INSERT INTO `shop_evaluate` VALUES ('110', '59', '17', '48', null, null, null, '1', '1569832720', null, '1');
INSERT INTO `shop_evaluate` VALUES ('111', '60', '17', '48', null, null, null, '1', '1569832847', null, '1');
INSERT INTO `shop_evaluate` VALUES ('112', '2', '39', '60', null, null, null, '1', '1570197406', null, '1');
INSERT INTO `shop_evaluate` VALUES ('113', '5', '33', '59', null, null, null, '1', '1570199034', null, '1');
INSERT INTO `shop_evaluate` VALUES ('114', '3', '33', '59', null, null, null, '1', '1570199038', null, '1');
INSERT INTO `shop_evaluate` VALUES ('115', '4', '33', '59', null, null, null, '1', '1570199043', null, '1');
INSERT INTO `shop_evaluate` VALUES ('116', '7', '33', '59', null, null, null, '1', '1570199419', null, '1');
INSERT INTO `shop_evaluate` VALUES ('117', '8', '36', '62', null, null, null, '1', '1570199884', null, '1');
INSERT INTO `shop_evaluate` VALUES ('118', '10', '36', '67', null, null, null, '1', '1570348311', null, '1');
INSERT INTO `shop_evaluate` VALUES ('119', '11', '38', '69', null, null, null, '1', '1570351000', null, '1');
INSERT INTO `shop_evaluate` VALUES ('120', '14', '33', '67', null, null, null, '1', '1570357177', null, '1');
INSERT INTO `shop_evaluate` VALUES ('121', '34', '38', '78', null, null, null, '1', '1570452242', null, '1');
INSERT INTO `shop_evaluate` VALUES ('122', '67', '25', '87', null, null, null, '1', '1570721082', null, '1');
INSERT INTO `shop_evaluate` VALUES ('123', '67', '32', '87', null, null, null, '1', '1570721082', null, '1');
INSERT INTO `shop_evaluate` VALUES ('124', '65', '15', '87', null, null, null, '1', '1570721086', null, '1');
INSERT INTO `shop_evaluate` VALUES ('125', '65', '38', '87', null, null, null, '1', '1570721086', null, '1');
INSERT INTO `shop_evaluate` VALUES ('126', '66', '16', '87', null, null, null, '1', '1570721090', null, '1');
INSERT INTO `shop_evaluate` VALUES ('127', '66', '40', '87', null, null, null, '1', '1570721090', null, '1');
INSERT INTO `shop_evaluate` VALUES ('128', '64', '15', '87', null, null, null, '1', '1570721093', null, '1');
INSERT INTO `shop_evaluate` VALUES ('129', '64', '44', '87', null, null, null, '1', '1570721093', null, '1');
INSERT INTO `shop_evaluate` VALUES ('130', '72', '15', '92', null, null, null, '1', '1570724969', null, '1');
INSERT INTO `shop_evaluate` VALUES ('131', '72', '38', '92', null, null, null, '1', '1570724969', null, '1');
INSERT INTO `shop_evaluate` VALUES ('132', '74', '41', '92', null, null, null, '1', '1570771071', null, '1');
INSERT INTO `shop_evaluate` VALUES ('133', '73', '34', '92', null, null, null, '1', '1570771075', null, '1');
INSERT INTO `shop_evaluate` VALUES ('134', '128', '38', '105', null, null, null, '1', '1571034265', null, '1');
INSERT INTO `shop_evaluate` VALUES ('135', '134', '40', '111', null, null, null, '1', '1571036157', null, '1');
INSERT INTO `shop_evaluate` VALUES ('136', '133', '47', '111', null, null, null, '1', '1571036162', null, '1');
INSERT INTO `shop_evaluate` VALUES ('137', '132', '48', '111', null, null, null, '1', '1571036165', null, '1');
INSERT INTO `shop_evaluate` VALUES ('138', '131', '38', '111', null, null, null, '1', '1571036169', null, '1');
INSERT INTO `shop_evaluate` VALUES ('139', '145', '40', '119', null, null, null, '1', '1571062411', null, '1');
INSERT INTO `shop_evaluate` VALUES ('140', '141', '38', '119', null, null, null, '1', '1571062416', null, '1');
INSERT INTO `shop_evaluate` VALUES ('141', '162', '41', '121', null, null, null, '1', '1571144470', null, '1');
INSERT INTO `shop_evaluate` VALUES ('142', '161', '40', '121', null, null, null, '1', '1571144477', null, '1');
INSERT INTO `shop_evaluate` VALUES ('143', '157', '38', '121', null, null, null, '1', '1571144493', null, '1');
INSERT INTO `shop_evaluate` VALUES ('144', '156', '44', '121', null, null, null, '1', '1571144578', null, '1');

-- ----------------------------
-- Table structure for shop_exp_com
-- ----------------------------
DROP TABLE IF EXISTS `shop_exp_com`;
CREATE TABLE `shop_exp_com` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `com` varchar(20) DEFAULT NULL COMMENT '快递公司',
  `no` varchar(20) DEFAULT NULL COMMENT '快递公司编码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_exp_com
-- ----------------------------
INSERT INTO `shop_exp_com` VALUES ('1', '顺丰', 'sf');
INSERT INTO `shop_exp_com` VALUES ('2', '申通', 'sto');
INSERT INTO `shop_exp_com` VALUES ('3', '圆通', 'yt');
INSERT INTO `shop_exp_com` VALUES ('4', '韵达', 'yd');
INSERT INTO `shop_exp_com` VALUES ('5', '天天', 'tt');
INSERT INTO `shop_exp_com` VALUES ('6', 'EMS', 'ems');
INSERT INTO `shop_exp_com` VALUES ('7', '中通', 'zto');
INSERT INTO `shop_exp_com` VALUES ('8', '汇通（百世快递）', 'ht');
INSERT INTO `shop_exp_com` VALUES ('9', '全峰', 'qf');
INSERT INTO `shop_exp_com` VALUES ('10', '德邦', 'db');
INSERT INTO `shop_exp_com` VALUES ('11', '国通', 'gt');
INSERT INTO `shop_exp_com` VALUES ('12', '如风达', 'rfd');
INSERT INTO `shop_exp_com` VALUES ('13', '京东快递', 'jd');
INSERT INTO `shop_exp_com` VALUES ('14', '宅急送', 'zjs');
INSERT INTO `shop_exp_com` VALUES ('15', 'EMS国际', 'emsg');
INSERT INTO `shop_exp_com` VALUES ('16', 'Fedex国际', 'fedex');
INSERT INTO `shop_exp_com` VALUES ('17', '邮政国内（挂号信）', 'yzgn');
INSERT INTO `shop_exp_com` VALUES ('18', 'UPS国际快递', 'ups');
INSERT INTO `shop_exp_com` VALUES ('19', '中铁快运', 'ztky');
INSERT INTO `shop_exp_com` VALUES ('20', '佳吉快运', 'jiaji');
INSERT INTO `shop_exp_com` VALUES ('21', '速尔快递', 'suer');
INSERT INTO `shop_exp_com` VALUES ('22', '信丰物流', 'xfwl');
INSERT INTO `shop_exp_com` VALUES ('23', '优速快递', 'yousu');
INSERT INTO `shop_exp_com` VALUES ('24', '中邮物流', 'zhongyou');
INSERT INTO `shop_exp_com` VALUES ('25', '天地华宇', 'tdhy');
INSERT INTO `shop_exp_com` VALUES ('26', '安信达快递', 'axd');
INSERT INTO `shop_exp_com` VALUES ('27', '快捷速递', 'kuaijie');
INSERT INTO `shop_exp_com` VALUES ('28', 'AAE全球专递', 'aae');
INSERT INTO `shop_exp_com` VALUES ('29', 'DHL', 'dhl');
INSERT INTO `shop_exp_com` VALUES ('30', 'DPEX国际快递', 'dpex');
INSERT INTO `shop_exp_com` VALUES ('31', 'D速物流', 'ds');
INSERT INTO `shop_exp_com` VALUES ('32', 'FEDEX国内快递', 'fedexcn');
INSERT INTO `shop_exp_com` VALUES ('33', 'OCS', 'ocs');
INSERT INTO `shop_exp_com` VALUES ('34', 'TNT', 'tnt');
INSERT INTO `shop_exp_com` VALUES ('35', '东方快递', 'coe');
INSERT INTO `shop_exp_com` VALUES ('36', '传喜物流', 'cxwl');
INSERT INTO `shop_exp_com` VALUES ('37', '城市100', 'cs');
INSERT INTO `shop_exp_com` VALUES ('38', '城市之星物流', 'cszx');
INSERT INTO `shop_exp_com` VALUES ('39', '安捷快递', 'aj');
INSERT INTO `shop_exp_com` VALUES ('40', '百福东方', 'bfdf');
INSERT INTO `shop_exp_com` VALUES ('41', '程光快递', 'chengguang');
INSERT INTO `shop_exp_com` VALUES ('42', '递四方快递', 'dsf');
INSERT INTO `shop_exp_com` VALUES ('43', '长通物流', 'ctwl');
INSERT INTO `shop_exp_com` VALUES ('44', '飞豹快递', 'feibao');
INSERT INTO `shop_exp_com` VALUES ('45', '马来西亚（大包EMS）', 'malaysiaems');
INSERT INTO `shop_exp_com` VALUES ('46', '安能快递', 'ane66');
INSERT INTO `shop_exp_com` VALUES ('47', '中通快运', 'ztoky');
INSERT INTO `shop_exp_com` VALUES ('48', '远成物流', 'ycgky');
INSERT INTO `shop_exp_com` VALUES ('49', '远成快运', 'ycky');
INSERT INTO `shop_exp_com` VALUES ('50', '邮政快递', 'youzheng');
INSERT INTO `shop_exp_com` VALUES ('51', '百世快运', 'bsky');
INSERT INTO `shop_exp_com` VALUES ('52', '苏宁快递', 'suning');
INSERT INTO `shop_exp_com` VALUES ('53', '安能物流', 'anneng');
INSERT INTO `shop_exp_com` VALUES ('54', '九曳', 'jiuye');
INSERT INTO `shop_exp_com` VALUES ('55', '品骏快递', 'pjbest');
INSERT INTO `shop_exp_com` VALUES ('56', '壹米滴答', 'ymdd');

-- ----------------------------
-- Table structure for shop_finance
-- ----------------------------
DROP TABLE IF EXISTS `shop_finance`;
CREATE TABLE `shop_finance` (
  `finance_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '会员id',
  `user_bank_id` int(11) DEFAULT NULL COMMENT '会员银行卡id',
  `type` int(5) DEFAULT NULL COMMENT '1=>充值，2=>提现，3=>购物，4=>退款，5=>返现，6=>邀请，7=>名额支付，8=>积分支付；9=>转出；10=>转入；11=>升级；12=>收益',
  `price` decimal(20,2) DEFAULT NULL COMMENT '金额',
  `creation_time` varchar(255) DEFAULT NULL COMMENT '生成时间',
  `state` int(5) DEFAULT NULL COMMENT '1=>待审核 2=>已完成 3=>已取消',
  `complete_time` varchar(255) DEFAULT NULL COMMENT '完成时间',
  `voucher` varchar(255) DEFAULT NULL COMMENT '充值截图凭证',
  `reward_id` int(11) DEFAULT NULL COMMENT '返现对应奖励数据id',
  `modelis` int(1) DEFAULT NULL COMMENT '所属模块：1=>评价商品；2=>抢购；3=>0元礼品；4=>团购；5=>升级产品',
  `get_type` int(2) DEFAULT NULL COMMENT '1=>零售奖励；2=>批发奖励；3=>区代奖励；4=>加盟奖励；5=>邀请积分收益；6=>邀请名额增加',
  `pay_uid` int(11) DEFAULT NULL COMMENT '支付人uid',
  `shouyi_type` int(1) NOT NULL DEFAULT '1' COMMENT '1=>已结，2=>待结',
  PRIMARY KEY (`finance_id`)
) ENGINE=MyISAM AUTO_INCREMENT=884 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_finance
-- ----------------------------
INSERT INTO `shop_finance` VALUES ('253', '48', null, '3', '405.00', '1569832387', '2', '1569832387', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('254', '48', null, '5', '0.00', '1569832387', '1', null, null, '48', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('255', '48', null, '3', '50.00', '1569832658', '2', '1569832658', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('256', '48', null, '5', '0.00', '1569832658', '1', null, null, '49', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('257', '47', null, '12', '4.14', '1569832720', '2', null, null, null, '2', '1', '48', '1');
INSERT INTO `shop_finance` VALUES ('258', '47', null, '12', '2.30', '1569832720', '2', null, null, null, '2', '4', '48', '1');
INSERT INTO `shop_finance` VALUES ('259', '48', null, '3', '50.00', '1569832795', '2', '1569832795', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('260', '48', null, '5', '0.00', '1569832795', '1', null, null, '50', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('261', '47', null, '12', '4.14', '1569832847', '2', null, null, null, '2', '1', '48', '1');
INSERT INTO `shop_finance` VALUES ('262', '47', null, '12', '2.30', '1569832847', '2', null, null, null, '2', '4', '48', '1');
INSERT INTO `shop_finance` VALUES ('263', '56', null, '12', '20.00', '1569847079', '2', null, null, null, null, '5', '57', '1');
INSERT INTO `shop_finance` VALUES ('264', '56', null, '12', '1.00', '1569847079', '2', null, null, null, null, '6', '57', '1');
INSERT INTO `shop_finance` VALUES ('265', '56', null, '12', '20.00', '1569847181', '2', null, null, null, null, '5', '58', '1');
INSERT INTO `shop_finance` VALUES ('266', '56', null, '12', '1.00', '1569847181', '2', null, null, null, null, '6', '58', '1');
INSERT INTO `shop_finance` VALUES ('267', '56', null, '12', '110.40', '1569874635', '2', null, null, null, '5', '1', '57', '1');
INSERT INTO `shop_finance` VALUES ('268', null, null, '12', '36.80', '1569874635', '2', null, null, null, '5', '2', '57', '1');
INSERT INTO `shop_finance` VALUES ('269', '51', null, '12', '18.40', '1569874635', '2', null, null, null, '5', '3', '57', '1');
INSERT INTO `shop_finance` VALUES ('270', '28', null, '12', '18.40', '1569874635', '2', null, null, null, '5', '4', '57', '1');
INSERT INTO `shop_finance` VALUES ('271', '57', null, '3', '405.00', '1569874678', '2', '1569874678', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('272', '57', null, '5', '0.00', '1569874678', '1', null, null, '51', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('273', '53', null, '12', '110.40', '1569874901', '2', null, null, null, '5', '1', '56', '1');
INSERT INTO `shop_finance` VALUES ('274', null, null, '12', '36.80', '1569874901', '2', null, null, null, '5', '2', '56', '1');
INSERT INTO `shop_finance` VALUES ('275', '51', null, '12', '18.40', '1569874901', '2', null, null, null, '5', '3', '56', '1');
INSERT INTO `shop_finance` VALUES ('276', '28', null, '12', '18.40', '1569874901', '2', null, null, null, '5', '4', '56', '1');
INSERT INTO `shop_finance` VALUES ('277', '56', null, '3', '19.80', '1569875074', '2', '1569875074', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('278', '56', null, '7', '2.00', '1569875074', '2', '1569875074', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('279', '56', null, '5', '0.00', '1569875074', '1', null, null, '52', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('280', '56', null, '3', '30.00', '1569875147', '2', '1569875147', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('281', '56', null, '5', '0.00', '1569875147', '1', null, null, '53', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('282', '53', null, '12', '110.40', '1569875179', '2', null, null, null, '5', '1', '56', '1');
INSERT INTO `shop_finance` VALUES ('283', null, null, '12', '36.80', '1569875179', '2', null, null, null, '5', '2', '56', '1');
INSERT INTO `shop_finance` VALUES ('284', '51', null, '12', '18.40', '1569875179', '2', null, null, null, '5', '3', '56', '1');
INSERT INTO `shop_finance` VALUES ('285', '28', null, '12', '18.40', '1569875179', '2', null, null, null, '5', '4', '56', '1');
INSERT INTO `shop_finance` VALUES ('286', '56', null, '3', '50.00', '1569875244', '2', '1569875244', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('287', '56', null, '5', '1.00', '1569875244', '1', null, null, '54', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('288', '53', null, '12', '110.40', '1569875271', '2', null, null, null, '5', '1', '56', '1');
INSERT INTO `shop_finance` VALUES ('289', null, null, '12', '36.80', '1569875271', '2', null, null, null, '5', '2', '56', '1');
INSERT INTO `shop_finance` VALUES ('290', '51', null, '12', '18.40', '1569875271', '2', null, null, null, '5', '3', '56', '1');
INSERT INTO `shop_finance` VALUES ('291', '28', null, '12', '18.40', '1569875271', '2', null, null, null, '5', '4', '56', '1');
INSERT INTO `shop_finance` VALUES ('292', '59', null, '12', '20.00', '1570194932', '2', null, null, null, null, '5', '60', '1');
INSERT INTO `shop_finance` VALUES ('293', '59', null, '12', '1.00', '1570194932', '2', null, null, null, null, '6', '60', '1');
INSERT INTO `shop_finance` VALUES ('294', '60', null, '12', '20.00', '1570195012', '2', null, null, null, null, '5', '61', '1');
INSERT INTO `shop_finance` VALUES ('295', '60', null, '12', '1.00', '1570195012', '2', null, null, null, null, '6', '61', '1');
INSERT INTO `shop_finance` VALUES ('296', '59', null, '12', '20.00', '1570195083', '2', null, null, null, null, '5', '62', '1');
INSERT INTO `shop_finance` VALUES ('297', '59', null, '12', '1.00', '1570195083', '2', null, null, null, null, '6', '62', '1');
INSERT INTO `shop_finance` VALUES ('298', '59', null, '11', '475.00', '1570195900', '2', null, null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('299', '59', null, '3', '19.80', '1570198700', '2', '1570198700', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('300', '59', null, '7', '2.00', '1570198700', '2', '1570198700', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('301', '59', null, '5', '0.00', '1570198700', '1', null, null, '55', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('302', '59', null, '3', '20.80', '1570198805', '2', '1570198805', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('303', '59', null, '5', '0.00', '1570198805', '1', null, null, '56', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('304', '59', null, '12', '20.00', '1570199289', '2', null, null, null, null, '5', '63', '1');
INSERT INTO `shop_finance` VALUES ('305', '59', null, '12', '1.00', '1570199289', '2', null, null, null, null, '6', '63', '1');
INSERT INTO `shop_finance` VALUES ('306', '59', null, '3', '19.80', '1570199352', '2', '1570199352', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('307', '59', null, '8', '66.00', '1570199352', '2', '1570199352', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('308', '59', null, '5', '0.00', '1570199352', '1', null, null, '57', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('309', '59', null, '11', '570.00', '1570199834', '2', null, null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('310', '59', null, '12', '27.60', '1570199885', '2', null, null, null, '5', '4', '62', '1');
INSERT INTO `shop_finance` VALUES ('311', '64', null, '12', '20.00', '1570343006', '2', null, null, null, null, '5', '65', '1');
INSERT INTO `shop_finance` VALUES ('312', '64', null, '12', '1.00', '1570343006', '2', null, null, null, null, '6', '65', '1');
INSERT INTO `shop_finance` VALUES ('313', '65', null, '12', '20.00', '1570343029', '2', null, null, null, null, '5', '66', '1');
INSERT INTO `shop_finance` VALUES ('314', '65', null, '12', '1.00', '1570343029', '2', null, null, null, null, '6', '66', '1');
INSERT INTO `shop_finance` VALUES ('315', '66', null, '12', '20.00', '1570343053', '2', null, null, null, null, '5', '67', '1');
INSERT INTO `shop_finance` VALUES ('316', '66', null, '12', '1.00', '1570343053', '2', null, null, null, null, '6', '67', '1');
INSERT INTO `shop_finance` VALUES ('317', '67', null, '12', '20.00', '1570343074', '2', null, null, null, null, '5', '68', '1');
INSERT INTO `shop_finance` VALUES ('318', '67', null, '12', '1.00', '1570343074', '2', null, null, null, null, '6', '68', '1');
INSERT INTO `shop_finance` VALUES ('319', '68', null, '12', '20.00', '1570343126', '2', null, null, null, null, '5', '69', '1');
INSERT INTO `shop_finance` VALUES ('320', '68', null, '12', '1.00', '1570343126', '2', null, null, null, null, '6', '69', '1');
INSERT INTO `shop_finance` VALUES ('321', '65', null, '12', '138.00', '1570346355', '2', null, null, null, '5', '1', '66', '1');
INSERT INTO `shop_finance` VALUES ('322', null, null, '12', '46.00', '1570346355', '2', null, null, null, '5', '2', '66', '1');
INSERT INTO `shop_finance` VALUES ('323', '65', null, '12', '23.00', '1570346355', '2', null, null, null, '5', '3', '66', '1');
INSERT INTO `shop_finance` VALUES ('324', '64', null, '12', '23.00', '1570346355', '2', null, null, null, '5', '4', '66', '1');
INSERT INTO `shop_finance` VALUES ('325', '66', null, '3', '500.00', '1570346391', '2', '1570346391', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('326', '66', null, '5', '0.00', '1570346391', '1', null, null, '58', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('327', '65', null, '11', '570.00', '1570346766', '2', null, null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('328', '65', null, '12', '27.60', '1570348311', '2', null, null, null, '5', '3', '67', '1');
INSERT INTO `shop_finance` VALUES ('329', '64', null, '12', '27.60', '1570348311', '2', null, null, null, '5', '4', '67', '1');
INSERT INTO `shop_finance` VALUES ('330', '69', null, '12', '20.00', '1570348595', '2', null, null, null, null, '5', '70', '1');
INSERT INTO `shop_finance` VALUES ('331', '69', null, '12', '1.00', '1570348595', '2', null, null, null, null, '6', '70', '1');
INSERT INTO `shop_finance` VALUES ('332', '69', null, '3', '118.00', '1570348755', '2', '1570348755', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('333', '69', null, '5', '0.00', '1570348755', '1', null, null, '59', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('334', '68', null, '12', '10.86', '1570351000', '2', null, null, null, '1', '1', '69', '1');
INSERT INTO `shop_finance` VALUES ('335', '67', null, '12', '5.43', '1570351000', '2', null, null, null, '1', '2', '69', '1');
INSERT INTO `shop_finance` VALUES ('336', '68', null, '12', '5.43', '1570351000', '2', null, null, null, '1', '3', '69', '1');
INSERT INTO `shop_finance` VALUES ('337', '64', null, '12', '5.43', '1570351000', '2', null, null, null, '1', '4', '69', '1');
INSERT INTO `shop_finance` VALUES ('338', '69', null, '3', '39.60', '1570351143', '2', '1570351143', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('339', '69', null, '5', '0.00', '1570351143', '1', null, null, '60', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('340', '67', null, '3', '19.80', '1570357106', '2', '1570357106', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('341', '67', null, '7', '2.00', '1570357106', '2', '1570357106', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('342', '67', null, '5', '0.00', '1570357106', '1', null, null, '61', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('343', '66', null, '12', '0.02', '1570357177', '2', null, null, null, '3', '1', '67', '1');
INSERT INTO `shop_finance` VALUES ('344', '65', null, '12', '0.01', '1570357177', '2', null, null, null, '3', '2', '67', '1');
INSERT INTO `shop_finance` VALUES ('345', '65', null, '12', '0.05', '1570357177', '2', null, null, null, '3', '3', '67', '1');
INSERT INTO `shop_finance` VALUES ('346', '64', null, '12', '0.05', '1570357177', '2', null, null, null, '3', '4', '67', '1');
INSERT INTO `shop_finance` VALUES ('347', '67', null, '3', '19.80', '1570357293', '2', '1570357293', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('348', '67', null, '8', '66.00', '1570357293', '2', '1570357293', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('349', '67', null, '5', '0.00', '1570357293', '1', null, null, '62', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('350', '67', null, '3', '20.80', '1570357367', '2', '1570357367', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('351', '67', null, '5', '0.00', '1570357367', '1', null, null, '63', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('352', '67', null, '3', '19.80', '1570357695', '2', '1570357695', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('353', '67', null, '8', '66.00', '1570357695', '2', '1570357695', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('354', '67', null, '5', '0.00', '1570357695', '1', null, null, '64', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('355', '67', null, '3', '19.80', '1570358665', '2', '1570358665', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('356', '67', null, '8', '66.00', '1570358665', '2', '1570358665', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('357', '67', null, '5', '0.00', '1570358665', '1', null, null, '65', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('358', '67', null, '3', '0.00', '1570359613', '2', '1570359613', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('359', '67', null, '5', '0.00', '1570359613', '1', null, null, '66', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('360', '68', null, '12', '138.00', '1570437177', '2', null, null, null, '5', '1', '69', '1');
INSERT INTO `shop_finance` VALUES ('361', null, null, '12', '46.00', '1570437177', '2', null, null, null, '5', '2', '69', '1');
INSERT INTO `shop_finance` VALUES ('362', '68', null, '12', '23.00', '1570437177', '2', null, null, null, '5', '3', '69', '1');
INSERT INTO `shop_finance` VALUES ('363', '65', null, '12', '23.00', '1570437177', '2', null, null, null, '5', '3', '69', '1');
INSERT INTO `shop_finance` VALUES ('364', '64', null, '12', '23.00', '1570437177', '2', null, null, null, '5', '4', '69', '1');
INSERT INTO `shop_finance` VALUES ('365', '70', null, '12', '20.00', '1570439461', '2', null, null, null, null, '5', '71', '1');
INSERT INTO `shop_finance` VALUES ('366', '70', null, '12', '1.00', '1570439461', '2', null, null, null, null, '6', '71', '1');
INSERT INTO `shop_finance` VALUES ('367', '71', null, '12', '20.00', '1570439484', '2', null, null, null, null, '5', '72', '1');
INSERT INTO `shop_finance` VALUES ('368', '71', null, '12', '1.00', '1570439484', '2', null, null, null, null, '6', '72', '1');
INSERT INTO `shop_finance` VALUES ('369', '73', null, '12', '20.00', '1570441162', '2', null, null, null, null, '5', '74', '1');
INSERT INTO `shop_finance` VALUES ('370', '73', null, '12', '1.00', '1570441162', '2', null, null, null, null, '6', '74', '1');
INSERT INTO `shop_finance` VALUES ('371', '74', null, '12', '20.00', '1570441633', '2', null, null, null, null, '5', '75', '1');
INSERT INTO `shop_finance` VALUES ('372', '74', null, '12', '1.00', '1570441633', '2', null, null, null, null, '6', '75', '1');
INSERT INTO `shop_finance` VALUES ('373', '75', null, '12', '20.00', '1570441745', '2', null, null, null, null, '5', '76', '1');
INSERT INTO `shop_finance` VALUES ('374', '75', null, '12', '1.00', '1570441745', '2', null, null, null, null, '6', '76', '1');
INSERT INTO `shop_finance` VALUES ('375', '76', null, '12', '20.00', '1570441769', '2', null, null, null, null, '5', '77', '1');
INSERT INTO `shop_finance` VALUES ('376', '76', null, '12', '1.00', '1570441769', '2', null, null, null, null, '6', '77', '1');
INSERT INTO `shop_finance` VALUES ('377', '77', null, '12', '20.00', '1570441782', '2', null, null, null, null, '5', '78', '1');
INSERT INTO `shop_finance` VALUES ('378', '77', null, '12', '1.00', '1570441782', '2', null, null, null, null, '6', '78', '1');
INSERT INTO `shop_finance` VALUES ('379', '78', null, '12', '20.00', '1570441795', '2', null, null, null, null, '5', '79', '1');
INSERT INTO `shop_finance` VALUES ('380', '78', null, '12', '1.00', '1570441795', '2', null, null, null, null, '6', '79', '1');
INSERT INTO `shop_finance` VALUES ('381', '77', null, '12', '138.00', '1570442067', '2', null, null, null, '5', '1', '78', '1');
INSERT INTO `shop_finance` VALUES ('382', null, null, '12', '46.00', '1570442067', '2', null, null, null, '5', '2', '78', '1');
INSERT INTO `shop_finance` VALUES ('383', '77', null, '12', '23.00', '1570442067', '2', null, null, null, '5', '3', '78', '1');
INSERT INTO `shop_finance` VALUES ('384', '74', null, '12', '23.00', '1570442067', '2', null, null, null, '5', '3', '78', '1');
INSERT INTO `shop_finance` VALUES ('385', '73', null, '12', '23.00', '1570442067', '2', null, null, null, '5', '4', '78', '1');
INSERT INTO `shop_finance` VALUES ('386', '78', null, '3', '500.00', '1570442094', '2', '1570442094', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('387', '78', null, '5', '0.00', '1570442094', '1', null, null, '67', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('388', '78', null, '12', '131.10', '1570442832', '2', null, null, null, '5', '1', '79', '1');
INSERT INTO `shop_finance` VALUES ('389', null, null, '12', '43.70', '1570442832', '2', null, null, null, '5', '2', '79', '1');
INSERT INTO `shop_finance` VALUES ('390', '77', null, '12', '21.85', '1570442832', '2', null, null, null, '5', '3', '79', '1');
INSERT INTO `shop_finance` VALUES ('391', '74', null, '12', '21.85', '1570442832', '2', null, null, null, '5', '3', '79', '1');
INSERT INTO `shop_finance` VALUES ('392', '73', null, '12', '21.85', '1570442832', '2', null, null, null, '5', '4', '79', '1');
INSERT INTO `shop_finance` VALUES ('393', '77', null, '11', '475.00', '1570442832', '2', null, null, null, null, null, '79', '1');
INSERT INTO `shop_finance` VALUES ('394', '79', null, '12', '20.00', '1570443079', '2', null, null, null, null, '5', '80', '1');
INSERT INTO `shop_finance` VALUES ('395', '79', null, '12', '1.00', '1570443079', '2', null, null, null, null, '6', '80', '1');
INSERT INTO `shop_finance` VALUES ('396', '78', null, '3', '20.80', '1570443206', '2', '1570443206', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('397', '78', null, '8', '66.00', '1570443206', '2', '1570443206', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('398', '78', null, '5', '0.00', '1570443206', '1', null, null, '68', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('399', '78', null, '3', '59.00', '1570451454', '2', '1570451454', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('400', '78', null, '5', '0.00', '1570451454', '1', null, null, '69', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('401', '77', null, '12', '5.43', '1570451510', '2', null, null, null, '1', '1', '78', '2');
INSERT INTO `shop_finance` VALUES ('402', '76', null, '12', '2.71', '1570451510', '2', null, null, null, '1', '2', '78', '2');
INSERT INTO `shop_finance` VALUES ('403', '77', null, '12', '2.71', '1570451510', '2', null, null, null, '1', '3', '78', '2');
INSERT INTO `shop_finance` VALUES ('404', '74', null, '12', '2.71', '1570451510', '2', null, null, null, '1', '3', '78', '2');
INSERT INTO `shop_finance` VALUES ('405', '73', null, '12', '2.71', '1570451510', '2', null, null, null, '1', '4', '78', '2');
INSERT INTO `shop_finance` VALUES ('406', '77', null, '12', '5.43', '1570452242', '2', null, null, null, '1', '1', '78', '1');
INSERT INTO `shop_finance` VALUES ('407', '76', null, '12', '2.71', '1570452242', '2', null, null, null, '1', '2', '78', '1');
INSERT INTO `shop_finance` VALUES ('408', '77', null, '12', '2.71', '1570452242', '2', null, null, null, '1', '3', '78', '1');
INSERT INTO `shop_finance` VALUES ('409', '74', null, '12', '2.71', '1570452242', '2', null, null, null, '1', '3', '78', '1');
INSERT INTO `shop_finance` VALUES ('410', '73', null, '12', '2.71', '1570452242', '2', null, null, null, '1', '4', '78', '1');
INSERT INTO `shop_finance` VALUES ('411', '78', null, '3', '19.80', '1570452481', '2', '1570452481', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('412', '78', null, '5', '0.00', '1570452481', '1', null, null, '70', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('413', '77', null, '12', '0.91', '1570452498', '2', null, null, null, '4', '3', '78', '2');
INSERT INTO `shop_finance` VALUES ('414', '74', null, '12', '0.91', '1570452498', '2', null, null, null, '4', '3', '78', '2');
INSERT INTO `shop_finance` VALUES ('415', '73', null, '12', '0.91', '1570452498', '2', null, null, null, '4', '4', '78', '2');
INSERT INTO `shop_finance` VALUES ('416', '78', null, '3', '0.00', '1570452774', '2', '1570452774', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('417', '78', null, '5', '0.00', '1570452774', '1', null, null, '71', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('418', '77', null, '12', '0.00', '1570452788', '2', null, null, null, '2', '3', '78', '2');
INSERT INTO `shop_finance` VALUES ('419', '74', null, '12', '0.00', '1570452788', '2', null, null, null, '2', '3', '78', '2');
INSERT INTO `shop_finance` VALUES ('420', '73', null, '12', '0.00', '1570452788', '2', null, null, null, '2', '4', '78', '2');
INSERT INTO `shop_finance` VALUES ('421', '78', null, '3', '19.80', '1570525207', '2', '1570525207', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('422', '78', null, '5', '0.00', '1570525207', '1', null, null, '72', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('423', '77', null, '12', '0.36', '1570525217', '2', null, null, null, '4', '1', '78', '2');
INSERT INTO `shop_finance` VALUES ('424', '76', null, '12', '0.18', '1570525217', '2', null, null, null, '4', '2', '78', '2');
INSERT INTO `shop_finance` VALUES ('425', '77', null, '12', '0.91', '1570525217', '2', null, null, null, '4', '3', '78', '2');
INSERT INTO `shop_finance` VALUES ('426', '74', null, '12', '0.91', '1570525217', '2', null, null, null, '4', '3', '78', '2');
INSERT INTO `shop_finance` VALUES ('427', '73', null, '12', '0.91', '1570525217', '2', null, null, null, '4', '4', '78', '2');
INSERT INTO `shop_finance` VALUES ('428', '79', null, '12', '138.00', '1570525585', '2', null, null, null, '5', '1', '80', '1');
INSERT INTO `shop_finance` VALUES ('429', '78', null, '12', '46.00', '1570525585', '2', null, null, null, '5', '2', '80', '1');
INSERT INTO `shop_finance` VALUES ('430', '77', null, '12', '23.00', '1570525585', '2', null, null, null, '5', '3', '80', '1');
INSERT INTO `shop_finance` VALUES ('431', '74', null, '12', '23.00', '1570525585', '2', null, null, null, '5', '3', '80', '1');
INSERT INTO `shop_finance` VALUES ('432', '73', null, '12', '23.00', '1570525585', '2', null, null, null, '5', '4', '80', '1');
INSERT INTO `shop_finance` VALUES ('433', '80', null, '3', '500.00', '1570525630', '2', '1570525630', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('434', '80', null, '5', '0.00', '1570525630', '1', null, null, '73', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('435', '80', null, '12', '20.00', '1570525768', '2', null, null, null, null, '5', '82', '1');
INSERT INTO `shop_finance` VALUES ('436', '80', null, '12', '1.00', '1570525768', '2', null, null, null, null, '6', '82', '1');
INSERT INTO `shop_finance` VALUES ('437', '80', null, '12', '131.10', '1570525830', '2', null, null, null, '5', '1', '82', '1');
INSERT INTO `shop_finance` VALUES ('438', '79', null, '12', '43.70', '1570525830', '2', null, null, null, '5', '2', '82', '1');
INSERT INTO `shop_finance` VALUES ('439', '77', null, '12', '21.85', '1570525830', '2', null, null, null, '5', '3', '82', '1');
INSERT INTO `shop_finance` VALUES ('440', '74', null, '12', '21.85', '1570525830', '2', null, null, null, '5', '3', '82', '1');
INSERT INTO `shop_finance` VALUES ('441', '73', null, '12', '21.85', '1570525830', '2', null, null, null, '5', '4', '82', '1');
INSERT INTO `shop_finance` VALUES ('442', '74', null, '11', '475.00', '1570525830', '2', null, null, null, null, null, '82', '1');
INSERT INTO `shop_finance` VALUES ('443', '74', null, '12', '131.10', '1570612010', '2', null, null, null, '5', '1', '75', '1');
INSERT INTO `shop_finance` VALUES ('444', '73', null, '12', '43.70', '1570612010', '2', null, null, null, '5', '2', '75', '1');
INSERT INTO `shop_finance` VALUES ('445', '74', null, '12', '21.85', '1570612010', '2', null, null, null, '5', '3', '75', '1');
INSERT INTO `shop_finance` VALUES ('446', '73', null, '12', '21.85', '1570612010', '2', null, null, null, '5', '4', '75', '1');
INSERT INTO `shop_finance` VALUES ('447', '77', null, '11', '475.00', '1570612010', '2', null, null, null, null, null, '75', '1');
INSERT INTO `shop_finance` VALUES ('448', '59', null, '12', '127.24', '1570612538', '2', null, null, null, '5', '1', '62', '1');
INSERT INTO `shop_finance` VALUES ('449', null, null, '12', '42.41', '1570612538', '2', null, null, null, '5', '2', '62', '1');
INSERT INTO `shop_finance` VALUES ('450', '59', null, '12', '21.21', '1570612538', '2', null, null, null, '5', '4', '62', '1');
INSERT INTO `shop_finance` VALUES ('451', '59', null, '12', '20.00', '1570711623', '2', null, null, null, null, '5', '84', '1');
INSERT INTO `shop_finance` VALUES ('452', '59', null, '12', '1.00', '1570711623', '2', null, null, null, null, '6', '84', '1');
INSERT INTO `shop_finance` VALUES ('453', '84', null, '12', '20.00', '1570712438', '2', null, null, null, null, '5', '85', '1');
INSERT INTO `shop_finance` VALUES ('454', '84', null, '12', '1.00', '1570712438', '2', null, null, null, null, '6', '85', '1');
INSERT INTO `shop_finance` VALUES ('455', '84', null, '12', '20.00', '1570712495', '2', null, null, null, null, '5', '86', '1');
INSERT INTO `shop_finance` VALUES ('456', '84', null, '12', '1.00', '1570712495', '2', null, null, null, null, '6', '86', '1');
INSERT INTO `shop_finance` VALUES ('457', '84', null, '12', '20.00', '1570712527', '2', null, null, null, null, '5', '87', '1');
INSERT INTO `shop_finance` VALUES ('458', '84', null, '12', '1.00', '1570712527', '2', null, null, null, null, '6', '87', '1');
INSERT INTO `shop_finance` VALUES ('459', '84', null, '12', '104.36', '1570716228', '2', null, null, null, '5', '1', '85', '1');
INSERT INTO `shop_finance` VALUES ('460', '59', null, '12', '34.79', '1570716228', '2', null, null, null, '5', '2', '85', '1');
INSERT INTO `shop_finance` VALUES ('461', '84', null, '12', '17.39', '1570716228', '2', null, null, null, '5', '4', '85', '1');
INSERT INTO `shop_finance` VALUES ('462', '84', null, '11', '378.10', '1570716228', '2', null, null, null, null, null, '85', '1');
INSERT INTO `shop_finance` VALUES ('463', '84', null, '12', '131.10', '1570716311', '2', null, null, null, '5', '1', '86', '1');
INSERT INTO `shop_finance` VALUES ('464', '59', null, '12', '43.70', '1570716311', '2', null, null, null, '5', '2', '86', '1');
INSERT INTO `shop_finance` VALUES ('465', '84', null, '12', '21.85', '1570716311', '2', null, null, null, '5', '4', '86', '1');
INSERT INTO `shop_finance` VALUES ('466', '84', null, '11', '475.00', '1570716311', '2', null, null, null, null, null, '86', '1');
INSERT INTO `shop_finance` VALUES ('467', '84', null, '9', '2000.00', '1570716670', '2', '1570716670', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('468', '86', null, '10', '2000.00', '1570716670', '2', '1570716670', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('469', '84', null, '3', '20.80', '1570716836', '2', '1570716836', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('470', '84', null, '7', '2.00', '1570716836', '2', '1570716836', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('471', '84', null, '5', '0.00', '1570716836', '1', null, null, '74', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('472', '84', null, '3', '20.80', '1570716867', '2', '1570716867', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('473', '84', null, '8', '90.00', '1570716867', '2', '1570716867', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('474', '84', null, '5', '0.00', '1570716867', '1', null, null, '75', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('475', '84', null, '3', '20.80', '1570716877', '2', '1570716877', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('476', '84', null, '5', '0.00', '1570716877', '1', null, null, '76', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('477', '84', null, '3', '0.00', '1570717157', '2', '1570717157', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('478', '84', null, '5', '0.00', '1570717157', '1', null, null, '77', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('479', '84', null, '3', '39.60', '1570717340', '2', '1570717340', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('480', '84', null, '5', '0.00', '1570717340', '1', null, null, '78', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('481', '84', null, '3', '118.00', '1570717670', '2', '1570717670', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('482', '84', null, '5', '0.00', '1570717670', '1', null, null, '79', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('483', '59', null, '12', '154.84', '1570717709', '2', null, null, null, '5', '1', '84', '1');
INSERT INTO `shop_finance` VALUES ('484', null, null, '12', '51.61', '1570717709', '2', null, null, null, '5', '2', '84', '1');
INSERT INTO `shop_finance` VALUES ('485', '84', null, '3', '500.00', '1570717717', '2', '1570717717', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('486', '84', null, '5', '0.00', '1570717717', '1', null, null, '80', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('487', '86', null, '3', '59.00', '1570718380', '2', '1570718380', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('488', '86', null, '5', '0.00', '1570718380', '1', null, null, '81', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('489', '86', null, '3', '19.80', '1570718446', '2', '1570718446', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('490', '86', null, '5', '0.00', '1570718446', '1', null, null, '82', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('491', '86', null, '3', '39.60', '1570718465', '2', '1570718465', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('492', '86', null, '5', '0.00', '1570718465', '1', null, null, '83', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('493', '84', null, '12', '0.36', '1570718911', '2', null, null, null, '4', '1', '86', '2');
INSERT INTO `shop_finance` VALUES ('494', '59', null, '12', '0.18', '1570718911', '2', null, null, null, '4', '2', '86', '2');
INSERT INTO `shop_finance` VALUES ('495', '84', null, '12', '0.36', '1570718926', '2', null, null, null, '4', '1', '86', '2');
INSERT INTO `shop_finance` VALUES ('496', '59', null, '12', '0.18', '1570718926', '2', null, null, null, '4', '2', '86', '2');
INSERT INTO `shop_finance` VALUES ('497', '84', null, '12', '5.43', '1570718937', '2', null, null, null, '1', '1', '86', '2');
INSERT INTO `shop_finance` VALUES ('498', '59', null, '12', '2.71', '1570718937', '2', null, null, null, '1', '2', '86', '2');
INSERT INTO `shop_finance` VALUES ('499', '84', null, '12', '3.68', '1570718968', '2', null, null, null, '2', '1', '85', '2');
INSERT INTO `shop_finance` VALUES ('500', '59', null, '12', '3.68', '1570718968', '2', null, null, null, '2', '2', '85', '2');
INSERT INTO `shop_finance` VALUES ('501', '84', null, '12', '0.36', '1570718968', '2', null, null, null, '4', '1', '85', '2');
INSERT INTO `shop_finance` VALUES ('502', '59', null, '12', '0.18', '1570718968', '2', null, null, null, '4', '2', '85', '2');
INSERT INTO `shop_finance` VALUES ('503', '84', null, '12', '3.68', '1570718982', '2', null, null, null, '2', '1', '85', '2');
INSERT INTO `shop_finance` VALUES ('504', '59', null, '12', '3.68', '1570718982', '2', null, null, null, '2', '2', '85', '2');
INSERT INTO `shop_finance` VALUES ('505', '84', null, '12', '0.36', '1570718982', '2', null, null, null, '4', '1', '85', '2');
INSERT INTO `shop_finance` VALUES ('506', '59', null, '12', '0.18', '1570718982', '2', null, null, null, '4', '2', '85', '2');
INSERT INTO `shop_finance` VALUES ('507', '84', null, '12', '5.43', '1570719014', '2', null, null, null, '1', '1', '85', '2');
INSERT INTO `shop_finance` VALUES ('508', '59', null, '12', '2.71', '1570719014', '2', null, null, null, '1', '2', '85', '2');
INSERT INTO `shop_finance` VALUES ('509', '86', null, '9', '600.00', '1570719789', '2', '1570719789', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('510', '87', null, '10', '600.00', '1570719789', '2', '1570719789', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('511', '84', null, '12', '122.27', '1570720519', '2', null, null, null, '5', '1', '87', '1');
INSERT INTO `shop_finance` VALUES ('512', '59', null, '12', '40.76', '1570720519', '2', null, null, null, '5', '2', '87', '1');
INSERT INTO `shop_finance` VALUES ('513', '84', null, '12', '20.38', '1570720519', '2', null, null, null, '5', '3', '87', '1');
INSERT INTO `shop_finance` VALUES ('514', '87', null, '3', '398.00', '1570720524', '2', '1570720524', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('515', '87', null, '5', '0.00', '1570720524', '1', null, null, '84', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('516', '87', null, '12', '20.00', '1570720585', '2', null, null, null, null, '5', '88', '1');
INSERT INTO `shop_finance` VALUES ('517', '87', null, '12', '1.00', '1570720585', '2', null, null, null, null, '6', '88', '1');
INSERT INTO `shop_finance` VALUES ('518', '87', null, '3', '59.00', '1570720664', '2', '1570720664', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('519', '87', null, '5', '0.00', '1570720664', '1', null, null, '85', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('520', '87', null, '3', '19.80', '1570720691', '2', '1570720691', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('521', '87', null, '5', '0.00', '1570720691', '1', null, null, '86', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('522', '87', null, '3', '58.00', '1570720946', '2', '1570720946', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('523', '87', null, '5', '0.00', '1570720946', '1', null, null, '87', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('524', '84', null, '12', '0.05', '1570720986', '2', null, null, null, '3', '4', '87', '2');
INSERT INTO `shop_finance` VALUES ('525', '84', null, '12', '20.38', '1570720986', '2', null, null, null, '5', '4', '87', '2');
INSERT INTO `shop_finance` VALUES ('526', '84', null, '12', '5.43', '1570721018', '2', null, null, null, '1', '1', '87', '2');
INSERT INTO `shop_finance` VALUES ('527', '59', null, '12', '2.71', '1570721018', '2', null, null, null, '1', '2', '87', '2');
INSERT INTO `shop_finance` VALUES ('528', '84', null, '12', '0.05', '1570721018', '2', null, null, null, '3', '4', '87', '2');
INSERT INTO `shop_finance` VALUES ('529', '84', null, '12', '2.71', '1570721018', '2', null, null, null, '1', '4', '87', '2');
INSERT INTO `shop_finance` VALUES ('530', '84', null, '12', '0.55', '1570721034', '2', null, null, null, '4', '1', '87', '2');
INSERT INTO `shop_finance` VALUES ('531', '59', null, '12', '0.28', '1570721034', '2', null, null, null, '4', '2', '87', '2');
INSERT INTO `shop_finance` VALUES ('532', '84', null, '12', '0.36', '1570721034', '2', null, null, null, '4', '1', '87', '2');
INSERT INTO `shop_finance` VALUES ('533', '59', null, '12', '0.18', '1570721034', '2', null, null, null, '4', '2', '87', '2');
INSERT INTO `shop_finance` VALUES ('534', '84', null, '12', '1.38', '1570721034', '2', null, null, null, '4', '4', '87', '2');
INSERT INTO `shop_finance` VALUES ('535', '84', null, '12', '0.91', '1570721034', '2', null, null, null, '4', '4', '87', '2');
INSERT INTO `shop_finance` VALUES ('536', '84', null, '12', '5.34', '1570721049', '2', null, null, null, '1', '1', '87', '2');
INSERT INTO `shop_finance` VALUES ('537', '59', null, '12', '2.67', '1570721049', '2', null, null, null, '1', '2', '87', '2');
INSERT INTO `shop_finance` VALUES ('538', '84', null, '12', '18.40', '1570721049', '2', null, null, null, '5', '4', '87', '2');
INSERT INTO `shop_finance` VALUES ('539', '84', null, '12', '2.67', '1570721049', '2', null, null, null, '1', '4', '87', '2');
INSERT INTO `shop_finance` VALUES ('540', '84', null, '12', '5.34', '1570721082', '2', null, null, null, '1', '1', '87', '1');
INSERT INTO `shop_finance` VALUES ('541', '59', null, '12', '2.67', '1570721082', '2', null, null, null, '1', '2', '87', '1');
INSERT INTO `shop_finance` VALUES ('542', '84', null, '12', '18.40', '1570721082', '2', null, null, null, '5', '4', '87', '1');
INSERT INTO `shop_finance` VALUES ('543', '84', null, '12', '2.67', '1570721082', '2', null, null, null, '1', '4', '87', '1');
INSERT INTO `shop_finance` VALUES ('544', '84', null, '12', '5.43', '1570721086', '2', null, null, null, '1', '1', '87', '1');
INSERT INTO `shop_finance` VALUES ('545', '59', null, '12', '2.71', '1570721086', '2', null, null, null, '1', '2', '87', '1');
INSERT INTO `shop_finance` VALUES ('546', '84', null, '12', '0.05', '1570721086', '2', null, null, null, '3', '4', '87', '1');
INSERT INTO `shop_finance` VALUES ('547', '84', null, '12', '2.71', '1570721086', '2', null, null, null, '1', '4', '87', '1');
INSERT INTO `shop_finance` VALUES ('548', '84', null, '12', '0.55', '1570721090', '2', null, null, null, '4', '1', '87', '1');
INSERT INTO `shop_finance` VALUES ('549', '59', null, '12', '0.28', '1570721090', '2', null, null, null, '4', '2', '87', '1');
INSERT INTO `shop_finance` VALUES ('550', '84', null, '12', '0.36', '1570721090', '2', null, null, null, '4', '1', '87', '1');
INSERT INTO `shop_finance` VALUES ('551', '59', null, '12', '0.18', '1570721090', '2', null, null, null, '4', '2', '87', '1');
INSERT INTO `shop_finance` VALUES ('552', '84', null, '12', '1.38', '1570721090', '2', null, null, null, '4', '4', '87', '1');
INSERT INTO `shop_finance` VALUES ('553', '84', null, '12', '0.91', '1570721090', '2', null, null, null, '4', '4', '87', '1');
INSERT INTO `shop_finance` VALUES ('554', '84', null, '12', '0.05', '1570721093', '2', null, null, null, '3', '4', '87', '1');
INSERT INTO `shop_finance` VALUES ('555', '84', null, '12', '20.38', '1570721093', '2', null, null, null, '5', '4', '87', '1');
INSERT INTO `shop_finance` VALUES ('556', '87', null, '12', '104.36', '1570721676', '2', null, null, null, '5', '1', '88', '1');
INSERT INTO `shop_finance` VALUES ('557', '84', null, '12', '34.79', '1570721676', '2', null, null, null, '5', '2', '88', '1');
INSERT INTO `shop_finance` VALUES ('558', '87', null, '12', '17.39', '1570721676', '2', null, null, null, '5', '3', '88', '1');
INSERT INTO `shop_finance` VALUES ('559', '84', null, '12', '17.39', '1570721676', '2', null, null, null, '5', '4', '88', '1');
INSERT INTO `shop_finance` VALUES ('560', '87', null, '11', '378.10', '1570721676', '2', null, null, null, null, null, '88', '1');
INSERT INTO `shop_finance` VALUES ('561', '88', null, '12', '20.00', '1570721815', '2', null, null, null, null, '5', '89', '1');
INSERT INTO `shop_finance` VALUES ('562', '88', null, '12', '1.00', '1570721815', '2', null, null, null, null, '6', '89', '1');
INSERT INTO `shop_finance` VALUES ('563', '88', null, '12', '104.36', '1570721996', '2', null, null, null, '5', '1', '89', '1');
INSERT INTO `shop_finance` VALUES ('564', '87', null, '12', '34.79', '1570721996', '2', null, null, null, '5', '2', '89', '1');
INSERT INTO `shop_finance` VALUES ('565', '87', null, '12', '17.39', '1570721996', '2', null, null, null, '5', '3', '89', '1');
INSERT INTO `shop_finance` VALUES ('566', '84', null, '12', '17.39', '1570721996', '2', null, null, null, '5', '4', '89', '1');
INSERT INTO `shop_finance` VALUES ('567', '87', null, '11', '378.10', '1570721996', '2', null, null, null, null, null, '89', '1');
INSERT INTO `shop_finance` VALUES ('568', '89', null, '12', '20.00', '1570722241', '2', null, null, null, null, '5', '90', '1');
INSERT INTO `shop_finance` VALUES ('569', '89', null, '12', '1.00', '1570722241', '2', null, null, null, null, '6', '90', '1');
INSERT INTO `shop_finance` VALUES ('570', '89', null, '12', '122.27', '1570722362', '2', null, null, null, '5', '1', '90', '1');
INSERT INTO `shop_finance` VALUES ('571', '88', null, '12', '40.76', '1570722362', '2', null, null, null, '5', '2', '90', '1');
INSERT INTO `shop_finance` VALUES ('572', '88', null, '12', '20.38', '1570722362', '2', null, null, null, '5', '3', '90', '1');
INSERT INTO `shop_finance` VALUES ('573', '84', null, '12', '20.38', '1570722362', '2', null, null, null, '5', '4', '90', '1');
INSERT INTO `shop_finance` VALUES ('574', '90', null, '3', '398.00', '1570722368', '2', '1570722368', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('575', '90', null, '5', '0.00', '1570722368', '1', null, null, '88', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('576', '90', null, '12', '20.00', '1570724415', '2', null, null, null, null, '5', '91', '1');
INSERT INTO `shop_finance` VALUES ('577', '90', null, '12', '1.00', '1570724415', '2', null, null, null, null, '6', '91', '1');
INSERT INTO `shop_finance` VALUES ('578', '91', null, '12', '20.00', '1570724445', '2', null, null, null, null, '5', '92', '1');
INSERT INTO `shop_finance` VALUES ('579', '91', null, '12', '1.00', '1570724445', '2', null, null, null, null, '6', '92', '1');
INSERT INTO `shop_finance` VALUES ('580', '91', null, '12', '122.27', '1570724562', '2', null, null, null, '5', '1', '92', '1');
INSERT INTO `shop_finance` VALUES ('581', '90', null, '12', '40.76', '1570724562', '2', null, null, null, '5', '2', '92', '1');
INSERT INTO `shop_finance` VALUES ('582', '88', null, '12', '20.38', '1570724562', '2', null, null, null, '5', '3', '92', '1');
INSERT INTO `shop_finance` VALUES ('583', '84', null, '12', '20.38', '1570724562', '2', null, null, null, '5', '4', '92', '1');
INSERT INTO `shop_finance` VALUES ('584', '92', null, '3', '398.00', '1570724567', '2', '1570724567', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('585', '92', null, '5', '0.00', '1570724567', '1', null, null, '89', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('586', '92', null, '3', '118.00', '1570724588', '2', '1570724588', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('587', '92', null, '5', '0.00', '1570724588', '1', null, null, '90', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('588', '88', null, '12', '0.05', '1570724935', '2', null, null, null, '3', '3', '92', '2');
INSERT INTO `shop_finance` VALUES ('589', '84', null, '12', '0.05', '1570724935', '2', null, null, null, '3', '4', '92', '2');
INSERT INTO `shop_finance` VALUES ('590', '88', null, '12', '2.71', '1570724935', '2', null, null, null, '1', '3', '92', '2');
INSERT INTO `shop_finance` VALUES ('591', '84', null, '12', '2.71', '1570724935', '2', null, null, null, '1', '4', '92', '2');
INSERT INTO `shop_finance` VALUES ('592', '88', null, '12', '0.05', '1570724969', '2', null, null, null, '3', '3', '92', '1');
INSERT INTO `shop_finance` VALUES ('593', '84', null, '12', '0.05', '1570724969', '2', null, null, null, '3', '4', '92', '1');
INSERT INTO `shop_finance` VALUES ('594', '88', null, '12', '2.71', '1570724969', '2', null, null, null, '1', '3', '92', '1');
INSERT INTO `shop_finance` VALUES ('595', '84', null, '12', '2.71', '1570724969', '2', null, null, null, '1', '4', '92', '1');
INSERT INTO `shop_finance` VALUES ('596', '92', null, '12', '20.00', '1570752774', '2', null, null, null, null, '5', '93', '1');
INSERT INTO `shop_finance` VALUES ('597', '92', null, '12', '1.00', '1570752774', '2', null, null, null, null, '6', '93', '1');
INSERT INTO `shop_finance` VALUES ('598', '92', null, '12', '20.00', '1570754973', '2', null, null, null, null, '5', '94', '1');
INSERT INTO `shop_finance` VALUES ('599', '92', null, '12', '1.00', '1570754973', '2', null, null, null, null, '6', '94', '1');
INSERT INTO `shop_finance` VALUES ('600', '92', null, '3', '96.00', '1570770884', '2', '1570770884', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('601', '92', null, '5', '0.00', '1570770884', '1', null, null, '91', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('602', '92', null, '3', '0.00', '1570770929', '2', '1570770929', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('603', '92', null, '5', '0.00', '1570770929', '1', null, null, '92', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('604', '88', null, '12', '0.00', '1570771015', '2', null, null, null, '2', '3', '92', '2');
INSERT INTO `shop_finance` VALUES ('605', '84', null, '12', '0.00', '1570771015', '2', null, null, null, '2', '4', '92', '2');
INSERT INTO `shop_finance` VALUES ('606', '88', null, '12', '4.42', '1570771030', '2', null, null, null, '1', '3', '92', '2');
INSERT INTO `shop_finance` VALUES ('607', '84', null, '12', '4.42', '1570771030', '2', null, null, null, '1', '4', '92', '2');
INSERT INTO `shop_finance` VALUES ('608', '88', null, '12', '4.42', '1570771075', '2', null, null, null, '1', '3', '92', '1');
INSERT INTO `shop_finance` VALUES ('609', '84', null, '12', '4.42', '1570771075', '2', null, null, null, '1', '4', '92', '1');
INSERT INTO `shop_finance` VALUES ('610', '95', null, '12', '20.00', '1570784636', '2', null, null, null, null, '5', '96', '1');
INSERT INTO `shop_finance` VALUES ('611', '95', null, '12', '1.00', '1570784636', '2', null, null, null, null, '6', '96', '1');
INSERT INTO `shop_finance` VALUES ('612', '96', null, '12', '20.00', '1570784677', '2', null, null, null, null, '5', '97', '1');
INSERT INTO `shop_finance` VALUES ('613', '96', null, '12', '1.00', '1570784677', '2', null, null, null, null, '6', '97', '1');
INSERT INTO `shop_finance` VALUES ('614', '95', null, '12', '127.24', '1570784830', '2', null, null, null, '5', '1', '96', '1');
INSERT INTO `shop_finance` VALUES ('615', null, null, '12', '42.41', '1570784830', '2', null, null, null, '5', '2', '96', '1');
INSERT INTO `shop_finance` VALUES ('616', '95', null, '12', '21.21', '1570784830', '2', null, null, null, '5', '4', '96', '1');
INSERT INTO `shop_finance` VALUES ('617', '96', null, '3', '408.00', '1570784834', '2', '1570784834', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('618', '96', null, '5', '0.00', '1570784834', '1', null, null, '93', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('619', '96', null, '12', '127.24', '1570784911', '2', null, null, null, '5', '1', '97', '1');
INSERT INTO `shop_finance` VALUES ('620', '95', null, '12', '42.41', '1570784911', '2', null, null, null, '5', '2', '97', '1');
INSERT INTO `shop_finance` VALUES ('621', '97', null, '3', '408.00', '1570784914', '2', '1570784914', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('622', '97', null, '5', '0.00', '1570784914', '1', null, null, '94', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('623', '97', null, '3', '20.80', '1570879017', '2', '1570879017', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('624', '97', null, '5', '0.00', '1570879017', '1', null, null, '95', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('625', '97', null, '12', '20.00', '1570882833', '2', null, null, null, null, '5', '99', '1');
INSERT INTO `shop_finance` VALUES ('626', '97', null, '12', '1.00', '1570882833', '2', null, null, null, null, '6', '99', '1');
INSERT INTO `shop_finance` VALUES ('627', '97', null, '12', '109.85', '1570883291', '2', null, null, null, '5', '1', '99', '1');
INSERT INTO `shop_finance` VALUES ('628', '96', null, '12', '36.62', '1570883291', '2', null, null, null, '5', '2', '99', '1');
INSERT INTO `shop_finance` VALUES ('629', '99', null, '12', '20.00', '1570884286', '2', null, null, null, null, '5', '100', '1');
INSERT INTO `shop_finance` VALUES ('630', '99', null, '12', '1.00', '1570884286', '2', null, null, null, null, '6', '100', '1');
INSERT INTO `shop_finance` VALUES ('631', '99', null, '12', '109.85', '1570884343', '2', null, null, null, '5', '1', '100', '1');
INSERT INTO `shop_finance` VALUES ('632', '97', null, '12', '36.62', '1570884343', '2', null, null, null, '5', '2', '100', '1');
INSERT INTO `shop_finance` VALUES ('633', '101', null, '3', '408.00', '1570890813', '2', '1570890813', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('634', '101', null, '5', '0.00', '1570890813', '1', null, null, '96', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('635', '101', null, '3', '20.80', '1570891116', '2', '1570891116', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('636', '101', null, '8', '90.00', '1570891116', '2', '1570891116', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('637', '101', null, '5', '0.00', '1570891116', '1', null, null, '97', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('638', '96', null, '3', '19.80', '1570891966', '2', '1570891966', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('639', '96', null, '5', '0.00', '1570891966', '1', null, null, '98', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('640', '96', null, '3', '19.80', '1570891987', '2', '1570891987', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('641', '96', null, '5', '0.00', '1570891987', '1', null, null, '99', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('642', '101', null, '3', '408.00', '1570895060', '2', '1570895060', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('643', '101', null, '5', '0.00', '1570895060', '1', null, null, '100', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('644', '101', null, '3', '118.00', '1570895369', '2', '1570895369', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('645', '101', null, '5', '0.00', '1570895369', '1', null, null, '101', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('646', '97', null, '12', '10.86', '1570895388', '2', null, null, null, '1', '1', '101', '2');
INSERT INTO `shop_finance` VALUES ('647', '96', null, '12', '5.43', '1570895388', '2', null, null, null, '1', '2', '101', '2');
INSERT INTO `shop_finance` VALUES ('648', '97', null, '12', '109.85', '1571018496', '2', null, null, null, '5', '1', '101', '1');
INSERT INTO `shop_finance` VALUES ('649', '96', null, '12', '36.62', '1571018496', '2', null, null, null, '5', '2', '101', '1');
INSERT INTO `shop_finance` VALUES ('650', '97', null, '12', '109.85', '1571018510', '2', null, null, null, '5', '1', '101', '1');
INSERT INTO `shop_finance` VALUES ('651', '96', null, '12', '36.62', '1571018510', '2', null, null, null, '5', '2', '101', '1');
INSERT INTO `shop_finance` VALUES ('652', '101', null, '3', '398.00', '1571018510', '2', '1571018510', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('653', '101', null, '5', '0.00', '1571018510', '1', null, null, '102', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('654', '95', null, '12', '20.00', '1571032452', '2', null, null, null, null, '5', '102', '1');
INSERT INTO `shop_finance` VALUES ('655', '95', null, '12', '1.00', '1571032452', '2', null, null, null, null, '6', '102', '1');
INSERT INTO `shop_finance` VALUES ('656', '102', null, '12', '20.00', '1571032574', '2', null, null, null, null, '5', '103', '1');
INSERT INTO `shop_finance` VALUES ('657', '102', null, '12', '1.00', '1571032574', '2', null, null, null, null, '6', '103', '1');
INSERT INTO `shop_finance` VALUES ('658', '103', null, '3', '398.00', '1571032775', '2', '1571032775', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('659', '103', null, '5', '0.00', '1571032775', '1', null, null, '103', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('660', '103', null, '3', '0.00', '1571032838', '2', '1571032838', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('661', '103', null, '5', '0.00', '1571032838', '1', null, null, '104', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('662', '103', null, '3', '20.80', '1571032890', '2', '1571032890', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('663', '103', null, '7', '2.00', '1571032890', '2', '1571032890', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('664', '103', null, '5', '0.00', '1571032890', '1', null, null, '105', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('665', '103', null, '3', '59.00', '1571032943', '2', '1571032943', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('666', '103', null, '5', '0.00', '1571032943', '1', null, null, '106', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('667', '103', null, '3', '19.80', '1571032964', '2', '1571032964', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('668', '103', null, '5', '0.00', '1571032964', '1', null, null, '107', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('669', '103', null, '12', '20.00', '1571033525', '2', null, null, null, null, '5', '104', '1');
INSERT INTO `shop_finance` VALUES ('670', '103', null, '12', '1.00', '1571033525', '2', null, null, null, null, '6', '104', '1');
INSERT INTO `shop_finance` VALUES ('671', '103', null, '12', '104.36', '1571033615', '2', null, null, null, '5', '1', '104', '1');
INSERT INTO `shop_finance` VALUES ('672', '87', null, '11', '378.10', '1571033615', '2', null, null, null, null, null, '104', '1');
INSERT INTO `shop_finance` VALUES ('673', '104', null, '12', '20.00', '1571033804', '2', null, null, null, null, '5', '105', '1');
INSERT INTO `shop_finance` VALUES ('674', '104', null, '12', '1.00', '1571033804', '2', null, null, null, null, '6', '105', '1');
INSERT INTO `shop_finance` VALUES ('675', '104', null, '12', '109.85', '1571033999', '2', null, null, null, '5', '1', '105', '1');
INSERT INTO `shop_finance` VALUES ('676', '103', null, '12', '36.62', '1571033999', '2', null, null, null, '5', '2', '105', '1');
INSERT INTO `shop_finance` VALUES ('677', '105', null, '3', '398.00', '1571033999', '2', '1571033999', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('678', '105', null, '5', '0.00', '1571033999', '1', null, null, '108', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('679', '105', null, '3', '59.00', '1571034024', '2', '1571034024', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('680', '105', null, '5', '0.00', '1571034024', '1', null, null, '109', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('681', '104', null, '12', '5.43', '1571034245', '2', null, null, null, '1', '1', '105', '2');
INSERT INTO `shop_finance` VALUES ('682', '103', null, '12', '2.71', '1571034245', '2', null, null, null, '1', '2', '105', '2');
INSERT INTO `shop_finance` VALUES ('683', '104', null, '12', '5.43', '1571034265', '2', null, null, null, '1', '1', '105', '1');
INSERT INTO `shop_finance` VALUES ('684', '103', null, '12', '2.71', '1571034265', '2', null, null, null, '1', '2', '105', '1');
INSERT INTO `shop_finance` VALUES ('685', '106', null, '12', '20.00', '1571034933', '2', null, null, null, null, '5', '107', '1');
INSERT INTO `shop_finance` VALUES ('686', '106', null, '12', '1.00', '1571034933', '2', null, null, null, null, '6', '107', '1');
INSERT INTO `shop_finance` VALUES ('687', '107', null, '12', '20.00', '1571034997', '2', null, null, null, null, '5', '108', '1');
INSERT INTO `shop_finance` VALUES ('688', '107', null, '12', '1.00', '1571034997', '2', null, null, null, null, '6', '108', '1');
INSERT INTO `shop_finance` VALUES ('689', '106', null, '12', '46.00', '1571035143', '2', null, null, null, '5', '2', '108', '1');
INSERT INTO `shop_finance` VALUES ('690', '106', null, '12', '23.00', '1571035143', '2', null, null, null, '5', '4', '108', '1');
INSERT INTO `shop_finance` VALUES ('691', '108', null, '3', '500.00', '1571035143', '2', '1571035143', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('692', '108', null, '5', '0.00', '1571035143', '1', null, null, '110', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('693', '108', null, '12', '20.00', '1571035230', '2', null, null, null, null, '5', '109', '1');
INSERT INTO `shop_finance` VALUES ('694', '108', null, '12', '1.00', '1571035230', '2', null, null, null, null, '6', '109', '1');
INSERT INTO `shop_finance` VALUES ('695', '108', null, '12', '20.00', '1571035287', '2', null, null, null, null, '5', '110', '1');
INSERT INTO `shop_finance` VALUES ('696', '108', null, '12', '1.00', '1571035287', '2', null, null, null, null, '6', '110', '1');
INSERT INTO `shop_finance` VALUES ('697', '108', null, '12', '109.85', '1571035358', '2', null, null, null, '5', '1', '110', '1');
INSERT INTO `shop_finance` VALUES ('698', '106', null, '12', '18.31', '1571035358', '2', null, null, null, '5', '4', '110', '1');
INSERT INTO `shop_finance` VALUES ('699', '110', null, '3', '398.00', '1571035358', '2', '1571035358', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('700', '110', null, '5', '0.00', '1571035358', '1', null, null, '111', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('701', '110', null, '12', '20.00', '1571035405', '2', null, null, null, null, '5', '111', '1');
INSERT INTO `shop_finance` VALUES ('702', '110', null, '12', '1.00', '1571035405', '2', null, null, null, null, '6', '111', '1');
INSERT INTO `shop_finance` VALUES ('703', '111', null, '3', '118.00', '1571035496', '2', '1571035496', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('704', '111', null, '5', '0.00', '1571035496', '1', null, null, '112', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('705', '110', null, '12', '10.86', '1571035520', '2', null, null, null, '1', '1', '111', '2');
INSERT INTO `shop_finance` VALUES ('706', '108', null, '12', '5.43', '1571035520', '2', null, null, null, '1', '2', '111', '2');
INSERT INTO `shop_finance` VALUES ('707', '106', null, '12', '5.43', '1571035520', '2', null, null, null, '1', '4', '111', '2');
INSERT INTO `shop_finance` VALUES ('708', '111', null, '3', '20.80', '1571035726', '2', '1571035726', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('709', '111', null, '7', '2.00', '1571035726', '2', '1571035726', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('710', '111', null, '5', '0.00', '1571035726', '1', null, null, '113', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('711', '111', null, '3', '20.80', '1571035788', '2', '1571035788', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('712', '111', null, '8', '82.00', '1571035788', '2', '1571035788', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('713', '111', null, '5', '0.00', '1571035788', '1', null, null, '114', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('714', '111', null, '3', '39.60', '1571035962', '2', '1571035962', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('715', '111', null, '5', '0.00', '1571035962', '1', null, null, '115', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('716', '110', null, '12', '0.73', '1571035999', '2', null, null, null, '4', '1', '111', '2');
INSERT INTO `shop_finance` VALUES ('717', '108', null, '12', '0.36', '1571035999', '2', null, null, null, '4', '2', '111', '2');
INSERT INTO `shop_finance` VALUES ('718', '106', null, '12', '1.82', '1571035999', '2', null, null, null, '4', '4', '111', '2');
INSERT INTO `shop_finance` VALUES ('719', '106', null, '12', '3.77', '1571036011', '2', null, null, null, '3', '4', '111', '2');
INSERT INTO `shop_finance` VALUES ('720', '106', null, '12', '4.12', '1571036020', '2', null, null, null, '3', '4', '111', '2');
INSERT INTO `shop_finance` VALUES ('721', '110', null, '12', '0.73', '1571036157', '2', null, null, null, '4', '1', '111', '1');
INSERT INTO `shop_finance` VALUES ('722', '108', null, '12', '0.36', '1571036157', '2', null, null, null, '4', '2', '111', '1');
INSERT INTO `shop_finance` VALUES ('723', '106', null, '12', '1.82', '1571036157', '2', null, null, null, '4', '4', '111', '1');
INSERT INTO `shop_finance` VALUES ('724', '106', null, '12', '3.77', '1571036162', '2', null, null, null, '3', '4', '111', '1');
INSERT INTO `shop_finance` VALUES ('725', '106', null, '12', '4.12', '1571036165', '2', null, null, null, '3', '4', '111', '1');
INSERT INTO `shop_finance` VALUES ('726', '110', null, '12', '10.86', '1571036169', '2', null, null, null, '1', '1', '111', '1');
INSERT INTO `shop_finance` VALUES ('727', '108', null, '12', '5.43', '1571036169', '2', null, null, null, '1', '2', '111', '1');
INSERT INTO `shop_finance` VALUES ('728', '106', null, '12', '5.43', '1571036169', '2', null, null, null, '1', '4', '111', '1');
INSERT INTO `shop_finance` VALUES ('729', '111', null, '12', '20.00', '1571036770', '2', null, null, null, null, '5', '112', '1');
INSERT INTO `shop_finance` VALUES ('730', '111', null, '12', '1.00', '1571036770', '2', null, null, null, null, '6', '112', '1');
INSERT INTO `shop_finance` VALUES ('731', '112', null, '12', '20.00', '1571036819', '2', null, null, null, null, '5', '113', '1');
INSERT INTO `shop_finance` VALUES ('732', '112', null, '12', '1.00', '1571036819', '2', null, null, null, null, '6', '113', '1');
INSERT INTO `shop_finance` VALUES ('733', '113', null, '12', '20.00', '1571036834', '2', null, null, null, null, '5', '114', '1');
INSERT INTO `shop_finance` VALUES ('734', '113', null, '12', '1.00', '1571036834', '2', null, null, null, null, '6', '114', '1');
INSERT INTO `shop_finance` VALUES ('735', '114', null, '12', '20.00', '1571036844', '2', null, null, null, null, '5', '115', '1');
INSERT INTO `shop_finance` VALUES ('736', '114', null, '12', '1.00', '1571036844', '2', null, null, null, null, '6', '115', '1');
INSERT INTO `shop_finance` VALUES ('737', '112', null, '12', '35.66', '1571036931', '2', null, null, null, '5', '2', '114', '1');
INSERT INTO `shop_finance` VALUES ('738', '112', null, '12', '17.83', '1571036931', '2', null, null, null, '5', '3', '114', '1');
INSERT INTO `shop_finance` VALUES ('739', '106', null, '12', '17.83', '1571036931', '2', null, null, null, '5', '4', '114', '1');
INSERT INTO `shop_finance` VALUES ('740', '112', null, '11', '387.60', '1571036931', '2', null, null, null, null, null, '114', '1');
INSERT INTO `shop_finance` VALUES ('741', '114', null, '12', '131.10', '1571037000', '2', null, null, null, '5', '1', '115', '1');
INSERT INTO `shop_finance` VALUES ('742', '112', null, '12', '21.85', '1571037000', '2', null, null, null, '5', '3', '115', '1');
INSERT INTO `shop_finance` VALUES ('743', '106', null, '12', '21.85', '1571037000', '2', null, null, null, '5', '4', '115', '1');
INSERT INTO `shop_finance` VALUES ('744', '112', null, '11', '475.00', '1571037000', '2', null, null, null, null, null, '115', '1');
INSERT INTO `shop_finance` VALUES ('745', '111', null, '3', '39.60', '1571037325', '2', '1571037325', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('746', '111', null, '5', '0.00', '1571037325', '1', null, null, '116', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('747', '106', null, '12', '1.82', '1571037341', '2', null, null, null, '2', '4', '111', '2');
INSERT INTO `shop_finance` VALUES ('748', '115', null, '12', '20.00', '1571059587', '2', null, null, null, null, '5', '116', '1');
INSERT INTO `shop_finance` VALUES ('749', '115', null, '12', '1.00', '1571059587', '2', null, null, null, null, '6', '116', '1');
INSERT INTO `shop_finance` VALUES ('750', '116', null, '12', '20.00', '1571059636', '2', null, null, null, null, '5', '117', '1');
INSERT INTO `shop_finance` VALUES ('751', '116', null, '12', '1.00', '1571059636', '2', null, null, null, null, '6', '117', '1');
INSERT INTO `shop_finance` VALUES ('752', '117', null, '12', '20.00', '1571059835', '2', null, null, null, null, '5', '118', '1');
INSERT INTO `shop_finance` VALUES ('753', '117', null, '12', '1.00', '1571059835', '2', null, null, null, null, '6', '118', '1');
INSERT INTO `shop_finance` VALUES ('754', '118', null, '12', '20.00', '1571059878', '2', null, null, null, null, '5', '119', '1');
INSERT INTO `shop_finance` VALUES ('755', '118', null, '12', '1.00', '1571059878', '2', null, null, null, null, '6', '119', '1');
INSERT INTO `shop_finance` VALUES ('756', '119', null, '12', '20.00', '1571059938', '2', null, null, null, null, '5', '120', '1');
INSERT INTO `shop_finance` VALUES ('757', '119', null, '12', '1.00', '1571059938', '2', null, null, null, null, '6', '120', '1');
INSERT INTO `shop_finance` VALUES ('758', '120', null, '12', '20.00', '1571059990', '2', null, null, null, null, '5', '121', '1');
INSERT INTO `shop_finance` VALUES ('759', '120', null, '12', '1.00', '1571059991', '2', null, null, null, null, '6', '121', '1');
INSERT INTO `shop_finance` VALUES ('760', '117', null, '12', '20.00', '1571060142', '2', null, null, null, null, '5', '122', '1');
INSERT INTO `shop_finance` VALUES ('761', '117', null, '12', '1.00', '1571060142', '2', null, null, null, null, '6', '122', '1');
INSERT INTO `shop_finance` VALUES ('762', '115', null, '12', '36.62', '1571060363', '2', null, null, null, '5', '2', '117', '1');
INSERT INTO `shop_finance` VALUES ('763', '112', null, '12', '18.31', '1571060363', '2', null, null, null, '5', '3', '117', '1');
INSERT INTO `shop_finance` VALUES ('764', '106', null, '12', '18.31', '1571060363', '2', null, null, null, '5', '4', '117', '1');
INSERT INTO `shop_finance` VALUES ('765', '117', null, '3', '398.00', '1571060363', '2', '1571060363', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('766', '117', null, '5', '0.00', '1571060363', '1', null, null, '117', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('767', '117', null, '12', '104.36', '1571060850', '2', null, null, null, '5', '1', '118', '1');
INSERT INTO `shop_finance` VALUES ('768', '117', null, '12', '17.39', '1571060850', '2', null, null, null, '5', '3', '118', '1');
INSERT INTO `shop_finance` VALUES ('769', '112', null, '12', '17.39', '1571060850', '2', null, null, null, '5', '3', '118', '1');
INSERT INTO `shop_finance` VALUES ('770', '106', null, '12', '17.39', '1571060850', '2', null, null, null, '5', '4', '118', '1');
INSERT INTO `shop_finance` VALUES ('771', '117', null, '11', '378.10', '1571060850', '2', null, null, null, null, null, '118', '1');
INSERT INTO `shop_finance` VALUES ('772', '118', null, '12', '109.85', '1571061446', '2', null, null, null, '5', '1', '119', '1');
INSERT INTO `shop_finance` VALUES ('773', '117', null, '12', '36.62', '1571061446', '2', null, null, null, '5', '2', '119', '1');
INSERT INTO `shop_finance` VALUES ('774', '117', null, '12', '18.31', '1571061446', '2', null, null, null, '5', '3', '119', '1');
INSERT INTO `shop_finance` VALUES ('775', '112', null, '12', '18.31', '1571061446', '2', null, null, null, '5', '3', '119', '1');
INSERT INTO `shop_finance` VALUES ('776', '106', null, '12', '18.31', '1571061446', '2', null, null, null, '5', '4', '119', '1');
INSERT INTO `shop_finance` VALUES ('777', '119', null, '3', '398.00', '1571061446', '2', '1571061446', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('778', '119', null, '5', '0.00', '1571061446', '1', null, null, '118', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('779', '119', null, '3', '59.00', '1571061819', '2', '1571061819', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('780', '119', null, '5', '0.00', '1571061819', '1', null, null, '119', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('781', '119', null, '3', '19.80', '1571062240', '2', '1571062240', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('782', '119', null, '5', '0.00', '1571062240', '1', null, null, '120', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('783', '119', null, '3', '0.00', '1571062274', '2', '1571062274', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('784', '119', null, '5', '0.00', '1571062274', '1', null, null, '121', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('785', '118', null, '12', '5.43', '1571062369', '2', null, null, null, '1', '1', '119', '2');
INSERT INTO `shop_finance` VALUES ('786', '117', null, '12', '2.71', '1571062369', '2', null, null, null, '1', '2', '119', '2');
INSERT INTO `shop_finance` VALUES ('787', '117', null, '12', '2.71', '1571062369', '2', null, null, null, '1', '3', '119', '2');
INSERT INTO `shop_finance` VALUES ('788', '112', null, '12', '2.71', '1571062369', '2', null, null, null, '1', '3', '119', '2');
INSERT INTO `shop_finance` VALUES ('789', '106', null, '12', '2.71', '1571062369', '2', null, null, null, '1', '4', '119', '2');
INSERT INTO `shop_finance` VALUES ('790', '118', null, '12', '0.36', '1571062391', '2', null, null, null, '4', '1', '119', '2');
INSERT INTO `shop_finance` VALUES ('791', '117', null, '12', '0.18', '1571062391', '2', null, null, null, '4', '2', '119', '2');
INSERT INTO `shop_finance` VALUES ('792', '117', null, '12', '0.91', '1571062391', '2', null, null, null, '4', '3', '119', '2');
INSERT INTO `shop_finance` VALUES ('793', '112', null, '12', '0.91', '1571062391', '2', null, null, null, '4', '3', '119', '2');
INSERT INTO `shop_finance` VALUES ('794', '106', null, '12', '0.91', '1571062391', '2', null, null, null, '4', '4', '119', '2');
INSERT INTO `shop_finance` VALUES ('795', '118', null, '12', '0.36', '1571062411', '2', null, null, null, '4', '1', '119', '1');
INSERT INTO `shop_finance` VALUES ('796', '117', null, '12', '0.18', '1571062411', '2', null, null, null, '4', '2', '119', '1');
INSERT INTO `shop_finance` VALUES ('797', '117', null, '12', '0.91', '1571062411', '2', null, null, null, '4', '3', '119', '1');
INSERT INTO `shop_finance` VALUES ('798', '112', null, '12', '0.91', '1571062411', '2', null, null, null, '4', '3', '119', '1');
INSERT INTO `shop_finance` VALUES ('799', '106', null, '12', '0.91', '1571062411', '2', null, null, null, '4', '4', '119', '1');
INSERT INTO `shop_finance` VALUES ('800', '118', null, '12', '5.43', '1571062416', '2', null, null, null, '1', '1', '119', '1');
INSERT INTO `shop_finance` VALUES ('801', '117', null, '12', '2.71', '1571062416', '2', null, null, null, '1', '2', '119', '1');
INSERT INTO `shop_finance` VALUES ('802', '117', null, '12', '2.71', '1571062416', '2', null, null, null, '1', '3', '119', '1');
INSERT INTO `shop_finance` VALUES ('803', '112', null, '12', '2.71', '1571062416', '2', null, null, null, '1', '3', '119', '1');
INSERT INTO `shop_finance` VALUES ('804', '106', null, '12', '2.71', '1571062416', '2', null, null, null, '1', '4', '119', '1');
INSERT INTO `shop_finance` VALUES ('805', '110', null, '12', '109.85', '1571108154', '2', null, null, null, '5', '1', '111', '1');
INSERT INTO `shop_finance` VALUES ('806', '108', null, '12', '36.62', '1571108154', '2', null, null, null, '5', '2', '111', '1');
INSERT INTO `shop_finance` VALUES ('807', '106', null, '12', '18.31', '1571108154', '2', null, null, null, '5', '4', '111', '1');
INSERT INTO `shop_finance` VALUES ('808', '111', null, '3', '398.00', '1571108154', '2', '1571108154', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('809', '111', null, '5', '0.00', '1571108154', '1', null, null, '122', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('810', '110', null, '12', '104.36', '1571108246', '2', null, null, null, '5', '1', '111', '1');
INSERT INTO `shop_finance` VALUES ('811', '108', null, '12', '34.79', '1571108246', '2', null, null, null, '5', '2', '111', '1');
INSERT INTO `shop_finance` VALUES ('812', '106', null, '12', '17.39', '1571108246', '2', null, null, null, '5', '4', '111', '1');
INSERT INTO `shop_finance` VALUES ('813', '106', null, '11', '378.10', '1571108246', '2', null, null, null, null, null, '111', '1');
INSERT INTO `shop_finance` VALUES ('814', '110', null, '12', '109.85', '1571109446', '2', null, null, null, '5', '1', '111', '1');
INSERT INTO `shop_finance` VALUES ('815', '108', null, '12', '36.62', '1571109446', '2', null, null, null, '5', '2', '111', '1');
INSERT INTO `shop_finance` VALUES ('816', '106', null, '12', '18.31', '1571109446', '2', null, null, null, '5', '4', '111', '1');
INSERT INTO `shop_finance` VALUES ('817', '106', null, '11', '378.10', '1571109446', '2', null, null, null, null, null, '111', '1');
INSERT INTO `shop_finance` VALUES ('818', '113', null, '3', '118.00', '1571110666', '2', '1571110666', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('819', '113', null, '5', '0.00', '1571110666', '1', null, null, '123', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('820', '112', null, '12', '10.86', '1571110730', '2', null, null, null, '1', '1', '113', '2');
INSERT INTO `shop_finance` VALUES ('821', '111', null, '12', '5.43', '1571110730', '2', null, null, null, '1', '2', '113', '2');
INSERT INTO `shop_finance` VALUES ('822', '112', null, '12', '5.43', '1571110730', '2', null, null, null, '1', '3', '113', '2');
INSERT INTO `shop_finance` VALUES ('823', '110', null, '12', '5.43', '1571110730', '2', null, null, null, '1', '3', '113', '2');
INSERT INTO `shop_finance` VALUES ('824', '106', null, '12', '5.43', '1571110730', '2', null, null, null, '1', '4', '113', '2');
INSERT INTO `shop_finance` VALUES ('825', '113', null, '3', '118.00', '1571111429', '2', '1571111429', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('826', '113', null, '5', '0.00', '1571111429', '1', null, null, '124', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('827', '112', null, '12', '10.86', '1571111440', '2', null, null, null, '1', '1', '113', '2');
INSERT INTO `shop_finance` VALUES ('828', '111', null, '12', '5.43', '1571111440', '2', null, null, null, '1', '2', '113', '2');
INSERT INTO `shop_finance` VALUES ('829', '112', null, '12', '5.43', '1571111440', '2', null, null, null, '1', '3', '113', '2');
INSERT INTO `shop_finance` VALUES ('830', '106', null, '12', '5.43', '1571111440', '2', null, null, null, '1', '4', '113', '2');
INSERT INTO `shop_finance` VALUES ('831', '113', null, '3', '20.80', '1571111596', '2', '1571111596', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('832', '113', null, '8', '90.00', '1571111596', '2', '1571111596', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('833', '113', null, '5', '0.00', '1571111596', '1', null, null, '125', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('834', '112', null, '12', '4.12', '1571111605', '2', null, null, null, '3', '3', '113', '2');
INSERT INTO `shop_finance` VALUES ('835', '106', null, '12', '4.12', '1571111605', '2', null, null, null, '3', '4', '113', '2');
INSERT INTO `shop_finance` VALUES ('836', '113', null, '3', '20.80', '1571112056', '2', '1571112056', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('837', '113', null, '7', '2.00', '1571112056', '2', '1571112056', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('838', '113', null, '5', '0.00', '1571112056', '1', null, null, '126', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('839', '113', null, '3', '39.60', '1571112225', '2', '1571112225', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('840', '113', null, '5', '0.00', '1571112225', '1', null, null, '127', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('841', '112', null, '12', '0.73', '1571112236', '2', null, null, null, '4', '1', '113', '2');
INSERT INTO `shop_finance` VALUES ('842', '111', null, '12', '0.36', '1571112236', '2', null, null, null, '4', '2', '113', '2');
INSERT INTO `shop_finance` VALUES ('843', '112', null, '12', '1.82', '1571112236', '2', null, null, null, '4', '3', '113', '2');
INSERT INTO `shop_finance` VALUES ('844', '106', null, '12', '1.82', '1571112236', '2', null, null, null, '4', '4', '113', '2');
INSERT INTO `shop_finance` VALUES ('845', '113', null, '3', '39.60', '1571112506', '2', '1571112506', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('846', '113', null, '5', '0.00', '1571112506', '1', null, null, '128', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('847', '112', null, '12', '0.73', '1571112519', '2', null, null, null, '4', '1', '113', '2');
INSERT INTO `shop_finance` VALUES ('848', '111', null, '12', '0.36', '1571112519', '2', null, null, null, '4', '2', '113', '2');
INSERT INTO `shop_finance` VALUES ('849', '112', null, '12', '0.36', '1571112519', '2', null, null, null, '4', '3', '113', '2');
INSERT INTO `shop_finance` VALUES ('850', '106', null, '12', '0.36', '1571112519', '2', null, null, null, '4', '4', '113', '2');
INSERT INTO `shop_finance` VALUES ('851', '117', null, '9', '1000.00', '1571143419', '2', '1571143419', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('852', '121', null, '10', '1000.00', '1571143419', '2', '1571143419', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('853', '119', null, '12', '36.62', '1571143697', '2', null, null, null, '5', '2', '121', '1');
INSERT INTO `shop_finance` VALUES ('854', '117', null, '12', '18.31', '1571143697', '2', null, null, null, '5', '3', '121', '1');
INSERT INTO `shop_finance` VALUES ('855', '106', null, '12', '18.31', '1571143697', '2', null, null, null, '5', '4', '121', '1');
INSERT INTO `shop_finance` VALUES ('856', '121', null, '3', '398.00', '1571143697', '2', '1571143697', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('857', '121', null, '5', '0.00', '1571143697', '1', null, null, '129', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('858', '121', null, '3', '59.00', '1571143747', '2', '1571143747', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('859', '121', null, '5', '0.00', '1571143747', '1', null, null, '130', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('860', '121', null, '3', '19.80', '1571143989', '2', '1571143989', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('861', '121', null, '5', '0.00', '1571143989', '1', null, null, '131', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('862', '121', null, '3', '0.00', '1571144014', '2', '1571144014', null, null, null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('863', '121', null, '5', '0.00', '1571144014', '1', null, null, '132', null, null, null, '1');
INSERT INTO `shop_finance` VALUES ('864', '117', null, '12', '0.18', '1571144176', '2', null, null, null, '4', '3', '121', '2');
INSERT INTO `shop_finance` VALUES ('865', '106', null, '12', '0.18', '1571144176', '2', null, null, null, '4', '4', '121', '2');
INSERT INTO `shop_finance` VALUES ('866', '117', null, '12', '0.00', '1571144192', '2', null, null, null, '2', '3', '121', '2');
INSERT INTO `shop_finance` VALUES ('867', '106', null, '12', '0.00', '1571144192', '2', null, null, null, '2', '4', '121', '2');
INSERT INTO `shop_finance` VALUES ('868', '117', null, '12', '2.71', '1571144409', '2', null, null, null, '1', '3', '121', '2');
INSERT INTO `shop_finance` VALUES ('869', '106', null, '12', '2.71', '1571144409', '2', null, null, null, '1', '4', '121', '2');
INSERT INTO `shop_finance` VALUES ('870', '117', null, '12', '20.38', '1571144422', '2', null, null, null, '5', '3', '121', '2');
INSERT INTO `shop_finance` VALUES ('871', '106', null, '12', '20.38', '1571144422', '2', null, null, null, '5', '4', '121', '2');
INSERT INTO `shop_finance` VALUES ('872', '117', null, '12', '0.18', '1571144478', '2', null, null, null, '4', '3', '121', '1');
INSERT INTO `shop_finance` VALUES ('873', '106', null, '12', '0.18', '1571144478', '2', null, null, null, '4', '4', '121', '1');
INSERT INTO `shop_finance` VALUES ('874', '117', null, '12', '2.71', '1571144493', '2', null, null, null, '1', '3', '121', '1');
INSERT INTO `shop_finance` VALUES ('875', '106', null, '12', '2.71', '1571144493', '2', null, null, null, '1', '4', '121', '1');
INSERT INTO `shop_finance` VALUES ('876', '117', null, '12', '20.38', '1571144578', '2', null, null, null, '5', '3', '121', '1');
INSERT INTO `shop_finance` VALUES ('877', '106', null, '12', '20.38', '1571144578', '2', null, null, null, '5', '4', '121', '1');
INSERT INTO `shop_finance` VALUES ('878', '121', null, '12', '20.00', '1571148358', '2', null, null, null, null, '5', '123', '1');
INSERT INTO `shop_finance` VALUES ('879', '121', null, '12', '1.00', '1571148358', '2', null, null, null, null, '6', '123', '1');
INSERT INTO `shop_finance` VALUES ('880', '121', null, '12', '146.46', '1571148430', '2', null, null, null, '5', '1', '123', '1');
INSERT INTO `shop_finance` VALUES ('881', '117', null, '12', '18.31', '1571148430', '2', null, null, null, '5', '3', '123', '1');
INSERT INTO `shop_finance` VALUES ('882', '106', null, '12', '18.31', '1571148430', '2', null, null, null, '5', '4', '123', '1');
INSERT INTO `shop_finance` VALUES ('883', '117', null, '11', '378.10', '1571148430', '2', null, null, null, null, null, '123', '1');

-- ----------------------------
-- Table structure for shop_frontend_images
-- ----------------------------
DROP TABLE IF EXISTS `shop_frontend_images`;
CREATE TABLE `shop_frontend_images` (
  `frontend_images_id` int(11) NOT NULL AUTO_INCREMENT,
  `frontend_images_image` varchar(255) DEFAULT NULL,
  `frontend_images_weight` int(11) DEFAULT NULL,
  `href` varchar(255) DEFAULT NULL COMMENT '跳转链接',
  PRIMARY KEY (`frontend_images_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_frontend_images
-- ----------------------------
INSERT INTO `shop_frontend_images` VALUES ('1', 'images/osc1/lunbo/201910141571054588.png', '0', 'http://www.baidu.com');
INSERT INTO `shop_frontend_images` VALUES ('2', 'images/osc1/lunbo/lunbo-guoshu-3.jpg', '1', 'http://www.google.com');
INSERT INTO `shop_frontend_images` VALUES ('4', 'images/osc1/lunbo/lunbo-youwujing-3.jpg', '2', '');

-- ----------------------------
-- Table structure for shop_ggao
-- ----------------------------
DROP TABLE IF EXISTS `shop_ggao`;
CREATE TABLE `shop_ggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL COMMENT '广告标题',
  `content` varchar(30) DEFAULT NULL COMMENT '内容',
  `img` varchar(255) DEFAULT NULL COMMENT '图片',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `time` int(11) DEFAULT NULL COMMENT '提交时间',
  `status` int(1) DEFAULT '0' COMMENT '1=>通过；2=>不通过；0=>未处理',
  `end_time` int(11) DEFAULT NULL COMMENT '广告结束时间',
  `uid` int(11) DEFAULT NULL,
  `phone` char(12) NOT NULL,
  `reason` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_ggao
-- ----------------------------
INSERT INTO `shop_ggao` VALUES ('12', '这是一条广告', 'mc002发的广告内容', 'uploads/faadvertising/20190921/304e8676715a9957ab9cddd0a75ff13c.png', '广东省广州市天河区', '1569040745', '1', '1569859199', '29', '', '');
INSERT INTO `shop_ggao` VALUES ('13', '11111111', '11111111111111', 'uploads/faadvertising/20190921/481a39b3f7189dbae62553b2fb78bcb5.jpg', '11111111111111111', '1569044902', '1', '1569859199', '29', '', '');
INSERT INTO `shop_ggao` VALUES ('14', '2222', '22222222222222', 'uploads/faadvertising/20190921/5afdf529cf9714793265e0347877c1ff.jpg', '222222', '1569045191', '2', '86399', '29', '', '');
INSERT INTO `shop_ggao` VALUES ('15', '好阿婆蛋糕店', '欢迎前来品尝', null, '广东省广州市白云区石井石沙路163号', '1570453685', '2', '86399', '81', '13570393608', '图片不合格');
INSERT INTO `shop_ggao` VALUES ('16', '好阿婆蛋糕店', '欢迎前来品尝', null, '广东省广州市白云区石井石沙路163号', '1570453687', '1', '86399', '81', '13570393608', '');
INSERT INTO `shop_ggao` VALUES ('17', '测试', '', null, '广州白云区', '1570455570', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('18', '测试', '', null, '广州白云区', '1570455632', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('19', '测试', '', null, '广州白云区', '1570455652', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('20', '测试', '', null, '广州白云区', '1570455660', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('21', '测试', '', null, '广州白云区', '1570455668', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('22', '测试', '', null, '广州白云区', '1570455683', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('23', '测试', '', 'uploads/faadvertising/20191007/de699c59cbf2c30a585fd6153c875a43.jpg', '广州白云区', '1570455690', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('24', '测试', '', null, '广州白云区', '1570455716', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('25', '测试', '', 'uploads/faadvertising/20191007/63971aca444dbf9ccd6d39d602375abc.jpg', '广州白云区', '1570455730', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('26', '测试', '', null, '广州白云区', '1570455734', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('27', '测试', '', 'uploads/faadvertising/20191007/4fb8d61b8b2e43c06a90b4430a7f63d3.jpg', '广州白云区', '1570455734', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('28', '测试', '', 'uploads/faadvertising/20191007/db04190be2903ca8ac0c2ea972476647.jpg', '广州白云区', '1570455737', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('29', '测试', '', 'uploads/faadvertising/20191007/9743466a4c62caac25da27cec26f3b1e.jpg', '广州白云区', '1570455742', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('30', '测试', '', 'uploads/faadvertising/20191007/910bedb50ae96fa03eb81fa55e1bf644.jpg', '广州白云区', '1570455747', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('31', '测试', '', 'uploads/faadvertising/20191007/a29bb920b1a86302b2bff858b05a57b2.jpg', '广州白云区', '1570455749', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('32', '测试', '', 'uploads/faadvertising/20191007/533297f47aa085ed11b145efb68ab432.jpg', '广州白云区', '1570455752', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('33', '测试', '', 'uploads/faadvertising/20191007/a6dfa47cbf73706ac4bf7fa0862c9703.jpg', '广州白云区', '1570455753', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('34', '测试', '', 'uploads/faadvertising/20191007/5ff0215625a72eab40df89d86c4f611b.jpg', '广州白云区', '1570455755', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('35', '测试', '', 'uploads/faadvertising/20191007/9ad60dbe119983270b73e82a72974668.jpg', '广州白云区', '1570455756', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('36', '测试', '', null, '广州白云区', '1570455761', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('37', '测试', '', 'uploads/faadvertising/20191007/0203b011307b32cbe0402a8b1596091a.jpg', '广州白云区', '1570455763', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('38', '测试', '', null, '广州白云区', '1570455786', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('39', '测试', '', null, '广州白云区', '1570455793', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('40', '测试', '', null, '广州白云区', '1570455825', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('41', '测试', '', null, '广州白云区', '1570455825', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('42', '测试', '', null, '广州白云区', '1570455827', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('43', '测试', '', null, '广州白云区', '1570455836', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('44', '测试', '', null, '广州白云区', '1570455838', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('45', '测试', '', null, '广州白云区', '1570455845', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('46', '测试', '', null, '广州白云区', '1570455851', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('47', '测试', '', null, '广州白云区', '1570455872', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('48', '测试', '', null, '广州白云区', '1570455928', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('49', '测试', '', null, '广州白云区', '1570455936', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('50', '测试', '', null, '广州白云区', '1570455939', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('51', '测试', '', null, '广州白云区', '1570455940', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('52', '测试', '', null, '广州白云区', '1570455942', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('53', '测试', '', null, '广州白云区', '1570455944', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('54', '测试', '', null, '广州白云区', '1570455946', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('55', '测试', '', null, '广州白云区', '1570455947', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('56', '测试', '', null, '广州白云区', '1570455953', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('57', '测试', '', null, '广州白云区', '1570455962', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('58', '测试', '', null, '广州白云区', '1570455966', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('59', '测试', '', null, '广州白云区', '1570455969', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('60', '测试', '', null, '广州白云区', '1570455974', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('61', '测试', '', null, '广州白云区', '1570455993', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('62', '测试', '', null, '广州白云区', '1570455994', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('63', '测试', '', null, '广州白云区', '1570456003', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('64', '测试', '', null, '广州白云区', '1570456009', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('65', '测试', '', null, '广州白云区', '1570456011', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('66', '测试', '', null, '广州白云区', '1570456017', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('67', '测试', '', null, '广州白云区', '1570456025', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('68', '测试', '', null, '广州白云区', '1570456037', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('69', '测试', '', null, '广州白云区', '1570456037', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('70', '测试', '', null, '广州白云区', '1570456037', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('71', '测试', '', null, '广州白云区', '1570456046', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('72', '测试', '', null, '广州白云区', '1570456066', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('73', '测试', '', null, '广州白云区', '1570456075', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('74', '测试', '', null, '广州白云区', '1570456081', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('75', '测试', '', null, '广州白云区', '1570456104', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('76', '测试', '', null, '广州白云区', '1570456121', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('77', '测试', '', null, '广州白云区', '1570456121', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('78', '测试', '测试内容', 'uploads/faadvertising/20191008/5a5690de1cee64565f91d7e66663e736.jpg', '广州白云区', '1570517346', '1', '1570723199', '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('79', '测试', '测试内容', null, '广州白云区', '1570517415', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('80', '测试', '测试内容', null, '广州白云区', '1570517420', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('81', '', '', null, '', '1570517435', '0', null, '77', '', '');
INSERT INTO `shop_ggao` VALUES ('82', '', '', null, '', '1570517445', '0', null, '77', '', '');
INSERT INTO `shop_ggao` VALUES ('83', '测试', '测试内容', null, '广州白云区', '1570520956', '0', null, '77', '13355555555', '');
INSERT INTO `shop_ggao` VALUES ('84', '好阿婆蛋糕店', '进店八折，欢迎品尝！', 'uploads/faadvertising/20191008/400bd3dea4c8432a3fcf40fa0def68c5.jpg', '广东省广州市白云区石井石沙路163号', '1570522117', '1', '1572537599', '81', '13570393608', '');
INSERT INTO `shop_ggao` VALUES ('85', '测试', '测试', 'uploads/faadvertising/20191203/1e49a8589db52d4e201efa48b4c0d14c.png', '发布广告广东省', '1575368672', '0', null, '123', '发布广告123465', '');

-- ----------------------------
-- Table structure for shop_goods
-- ----------------------------
DROP TABLE IF EXISTS `shop_goods`;
CREATE TABLE `shop_goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `model` varchar(40) DEFAULT NULL COMMENT '商品型号',
  `sku` varchar(40) DEFAULT NULL COMMENT '库存单元',
  `location` varchar(20) DEFAULT NULL COMMENT '产品所在地',
  `quantity` int(4) NOT NULL DEFAULT '0' COMMENT '商品数目',
  `sale_count` int(11) NOT NULL DEFAULT '0' COMMENT '销量',
  `stock_status_id` int(11) NOT NULL DEFAULT '0' COMMENT '库存状态编号（关联stock_status主键）',
  `image` varchar(64) DEFAULT NULL,
  `brand_id` int(11) NOT NULL DEFAULT '0' COMMENT '品牌编号（关联brand主键）',
  `shipping` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否需要运送',
  `retail_price` decimal(15,2) DEFAULT '0.00' COMMENT '零售价格',
  `price` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `points` int(8) NOT NULL DEFAULT '0' COMMENT '积分',
  `pay_number` int(11) DEFAULT NULL COMMENT '需要多少名额支付',
  `is_yue_goods` int(1) DEFAULT '1' COMMENT '是否余额支付：0非；1是',
  `pay_points` int(11) NOT NULL DEFAULT '0' COMMENT '兑换所需积分',
  `is_number_goods` int(1) DEFAULT '0' COMMENT '是否可以名额支付1可以',
  `is_points_goods` int(5) NOT NULL DEFAULT '0' COMMENT '是否是积分兑换商品',
  `date_available` int(11) NOT NULL DEFAULT '0' COMMENT '供货日期',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000' COMMENT '重量',
  `weight_class_id` smallint(5) NOT NULL DEFAULT '0' COMMENT '重量编号（关联weight_class主键）',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(5) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否扣除库存',
  `minimum` int(11) NOT NULL DEFAULT '1' COMMENT '最小起订数目',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` varchar(40) DEFAULT NULL COMMENT '加入时间',
  `date_modified` varchar(40) DEFAULT NULL COMMENT '修改的时间',
  `viewed` int(5) NOT NULL DEFAULT '0' COMMENT '点击量',
  `popular` int(11) NOT NULL DEFAULT '0' COMMENT '是否热门 1->是 0->不是',
  `is_coupon` int(1) DEFAULT '0' COMMENT '是否可以使用优惠券',
  `is_tuijian` int(1) DEFAULT '0' COMMENT '1=>推荐',
  `modelis` int(1) DEFAULT NULL COMMENT '所属模块：1=>评价商品；2=>抢购；3=>0元礼品；4=>团购；5=>升级产品',
  `video` varchar(500) NOT NULL DEFAULT '0',
  `qiangg_start_time` varchar(11) DEFAULT NULL COMMENT '抢购开始时间',
  `qiangg_end_time` varchar(11) DEFAULT NULL COMMENT '抢购结束时间',
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='商品信息表';

-- ----------------------------
-- Records of shop_goods
-- ----------------------------
INSERT INTO `shop_goods` VALUES ('26', '香珠氧气自动洗衣颗粒（母婴专用）', '007', '盒', '广东', '999', '0', '0', 'images/osc1/chanpin/chanpin-muying-15.jpg', '0', '1', '59.60', '29.80', '0', '0', '1', '0', '0', '0', '0', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '4', '1', '1', '0', '1', '2019-10-04 17:05:12', null, '0', '1', '0', '1', '4', '', '1', '1');
INSERT INTO `shop_goods` VALUES ('27', '氧气自动洗衣颗粒（懒人洗衣）15包', '008', '盒', '广东', '999', '0', '0', 'images/osc1/chanpin/chanpin-lanrenxi-15.jpg', '0', '1', '29.80', '14.90', '0', '0', '1', '0', '0', '0', '0', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '4', '1', '1', '0', '1', '2019-10-04 17:09:21', null, '0', '1', '0', '1', '1', '', '1', '1');
INSERT INTO `shop_goods` VALUES ('28', '氧气自动洗衣颗粒（懒人洗衣）30包', '009', '盒', '广东', '999', '0', '0', 'images/osc1/chanpin/chanpin-lanrenxi-30.jpg', '0', '1', '59.00', '29.50', '0', '0', '1', '0', '0', '0', '0', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '4', '1', '1', '0', '1', '2019-10-04 17:12:03', null, '0', '1', '0', '1', '1', '', '1', '1');
INSERT INTO `shop_goods` VALUES ('29', 'DIY果蔬餐具净浓缩膏（3支装）', '006', '盒', '广东', '999', '0', '0', 'images/osc1/chanpin/chanpin-guoshu-3.jpg', '0', '1', '92.00', '46.00', '0', '0', '1', '0', '0', '0', '0', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '4', '1', '1', '0', '1', '2019-10-04 17:13:54', null, '0', '1', '0', '1', '1', '', '1', '1');
INSERT INTO `shop_goods` VALUES ('30', '香珠氧气自动洗衣颗粒（9包装）', '012', '盒', '广东', '999', '0', '0', 'images/osc1/chanpin/chanpin-xiangzhuyangpao-15.jpg', '0', '1', '39.60', '19.80', '0', '0', '1', '0', '0', '0', '0', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '4', '1', '1', '0', '1', '2019-10-04 17:15:57', null, '0', '1', '0', '1', '1', '', '1', '1');
INSERT INTO `shop_goods` VALUES ('31', '香珠氧气自动洗衣颗粒（15包装）', '011', '盒', '广东', '999', '0', '0', 'images/osc1/chanpin/chanpin-xiangzhuyangpao-15.jpg', '0', '1', '59.60', '29.80', '0', '0', '1', '0', '0', '0', '0', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '4', '1', '1', '0', '1', '2019-10-04 17:17:14', null, '0', '1', '0', '1', '1', '', '1', '1');
INSERT INTO `shop_goods` VALUES ('32', '香珠氧气自动洗衣颗粒（30包装）', '010', '盒', '广东', '998', '0', '0', 'images/osc1/chanpin/chanpin-xiangzhuyangpao-30.jpg', '0', '1', '116.00', '58.00', '0', '0', '1', '0', '0', '0', '0', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '4', '1', '1', '0', '1', '2019-10-04 17:18:22', null, '0', '1', '0', '1', '1', '', '1', '1');
INSERT INTO `shop_goods` VALUES ('34', 'DIY洗洁精浓缩膏（10支装）', '005', '盒', '广东', '996', '0', '0', 'images/osc1/chanpin/chanpin-xijiejing-10.jpg', '0', '1', '192.00', '96.00', '0', '0', '1', '0', '0', '0', '0', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '4', '1', '1', '0', '1', '2019-10-04 17:23:11', null, '0', '1', '0', '1', '1', '', '1', '1');
INSERT INTO `shop_goods` VALUES ('35', 'DIY油污净浓缩膏（3支装）', '002', '盒', '广东', '999', '0', '0', 'images/osc1/chanpin/chanpin-youwujing-3.jpg', '0', '1', '46.00', '23.00', '0', '0', '1', '0', '0', '0', '0', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '4', '1', '1', '0', '1', '2019-10-04 17:31:05', null, '0', '1', '0', '1', '1', '', '1', '1');
INSERT INTO `shop_goods` VALUES ('37', 'DIY洗洁精浓缩膏（3支装）', '001', '盒', '广东', '999', '0', '0', 'images/osc1/chanpin/chanpin-xijiejing-3.jpg', '0', '1', '66.00', '33.00', '0', '0', '1', '0', '0', '0', '0', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '4', '1', '1', '0', '1', '2019-10-04 21:08:19', null, '0', '1', '0', '1', '1', '', '1', '1');
INSERT INTO `shop_goods` VALUES ('38', 'DIY油污净浓缩膏（8支装）', '003', '盒', '广东', '974', '0', '0', 'images/osc1/chanpin/chanpin-youwujing-8.jpg', '0', '1', '118.00', '59.00', '0', '0', '1', '0', '0', '0', '0', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '4', '1', '1', '0', '1', '2019-10-04 21:11:44', null, '0', '1', '0', '1', '1', '', '1', '1');
INSERT INTO `shop_goods` VALUES ('40', '香珠氧气自动洗衣颗粒（9包装）', '012', '盒', '广东', '975', '0', '0', 'images/osc1/chanpin/chanpin-xiangzhuyangpao-9.jpg', '0', '1', '39.60', '19.80', '0', '0', '1', '0', '0', '0', '0', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '4', '1', '1', '0', '1', '2019-10-04 21:23:59', null, '0', '1', '0', '1', '1', '', '1', '1');
INSERT INTO `shop_goods` VALUES ('41', '香珠氧气自动洗衣颗粒（9包装）', '012', '盒', '广东', '1', '0', '0', 'images/osc1/chanpin/chanpin-xiangzhuyangpao-9.jpg', '0', '1', '39.60', '0.00', '0', '0', '0', '0', '0', '0', '0', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '4', '1', '1', '0', '1', '2019-10-04 21:44:51', null, '0', '0', '0', '0', '2', '', '07:00', '23:00');
INSERT INTO `shop_goods` VALUES ('42', 'C套餐', '027', '套', '广东', '9993', '0', '0', 'images/osc1/chanpin/套餐C.png', '0', '1', '561.00', '500.00', '0', '0', '1', '0', '0', '0', '0', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '4', '1', '1', '0', '1', '2019-10-07 17:55:39', null, '0', '0', '0', '1', '5', '', '1', '1');
INSERT INTO `shop_goods` VALUES ('43', 'B套餐', 'J026', '套', '广东', '992', '0', '0', 'images/osc1/chanpin/套餐B.png', '0', '1', '461.00', '408.00', '0', '0', '1', '0', '0', '0', '0', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '4', '1', '1', '0', '1', '2019-10-09 13:57:42', null, '0', '0', '0', '0', '5', '', '1', '1');
INSERT INTO `shop_goods` VALUES ('44', 'A套餐', 'J025', '套', '广东', '9974', '0', '0', 'images/osc1/chanpin/套餐A.png', '0', '1', '443.00', '398.00', '0', '0', '1', '0', '0', '0', '0', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '4', '1', '1', '0', '1', '2019-10-09 14:00:41', null, '0', '0', '0', '0', '5', '', '1', '1');
INSERT INTO `shop_goods` VALUES ('45', '一元礼品套装', 'J024', '套', '广东', '10', '0', '0', 'images/osc1/chanpin/套装四800.png', '0', '1', '66.00', '1.00', '0', '2', '1', '66', '1', '1', '0', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '5', '1', '1', '0', '1', '2019-10-09 14:22:55', null, '0', '0', '0', '0', '3', '', '1', '1');
INSERT INTO `shop_goods` VALUES ('46', '一元礼品套装', 'J023', '套', '广东', '9', '0', '0', 'images/osc1/chanpin/套装三800.png', '0', '1', '57.00', '1.00', '0', '2', '1', '57', '1', '1', '0', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '5', '1', '1', '0', '1', '2019-10-09 14:27:13', null, '0', '0', '0', '0', '3', '', '1', '1');
INSERT INTO `shop_goods` VALUES ('47', '一元礼品套装', 'J022', '套', '广东', '7', '0', '0', 'images/osc1/chanpin/套装二800.png', '0', '1', '82.00', '1.00', '0', '2', '1', '82', '1', '1', '0', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '5', '1', '1', '0', '1', '2019-10-09 14:41:56', null, '0', '0', '0', '0', '3', '', '1', '1');
INSERT INTO `shop_goods` VALUES ('48', '一元礼品套装', 'J021', '套', '广东', '37', '0', '0', 'images/osc1/chanpin/套装一800.png', '0', '1', '89.60', '1.00', '0', '2', '0', '90', '1', '1', '0', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '5', '1', '1', '0', '1', '2019-10-09 14:44:37', null, '0', '0', '0', '0', '3', '', '1', '1');

-- ----------------------------
-- Table structure for shop_goods_attribute
-- ----------------------------
DROP TABLE IF EXISTS `shop_goods_attribute`;
CREATE TABLE `shop_goods_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL DEFAULT '0',
  `attribute_value_id` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品属性(标签)';

-- ----------------------------
-- Records of shop_goods_attribute
-- ----------------------------

-- ----------------------------
-- Table structure for shop_goods_brand
-- ----------------------------
DROP TABLE IF EXISTS `shop_goods_brand`;
CREATE TABLE `shop_goods_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL DEFAULT '0',
  `brand_id` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='商品品牌';

-- ----------------------------
-- Records of shop_goods_brand
-- ----------------------------
INSERT INTO `shop_goods_brand` VALUES ('16', '26', '10');
INSERT INTO `shop_goods_brand` VALUES ('17', '27', '10');
INSERT INTO `shop_goods_brand` VALUES ('18', '28', '10');
INSERT INTO `shop_goods_brand` VALUES ('19', '29', '10');
INSERT INTO `shop_goods_brand` VALUES ('20', '30', '10');
INSERT INTO `shop_goods_brand` VALUES ('21', '31', '10');
INSERT INTO `shop_goods_brand` VALUES ('22', '32', '10');
INSERT INTO `shop_goods_brand` VALUES ('24', '34', '10');
INSERT INTO `shop_goods_brand` VALUES ('25', '35', '10');
INSERT INTO `shop_goods_brand` VALUES ('27', '37', '10');
INSERT INTO `shop_goods_brand` VALUES ('28', '38', '10');
INSERT INTO `shop_goods_brand` VALUES ('30', '40', '10');
INSERT INTO `shop_goods_brand` VALUES ('31', '41', '10');
INSERT INTO `shop_goods_brand` VALUES ('32', '42', '10');
INSERT INTO `shop_goods_brand` VALUES ('33', '43', '10');
INSERT INTO `shop_goods_brand` VALUES ('34', '44', '10');
INSERT INTO `shop_goods_brand` VALUES ('35', '45', '10');
INSERT INTO `shop_goods_brand` VALUES ('36', '46', '10');
INSERT INTO `shop_goods_brand` VALUES ('37', '47', '10');
INSERT INTO `shop_goods_brand` VALUES ('38', '48', '10');

-- ----------------------------
-- Table structure for shop_goods_description
-- ----------------------------
DROP TABLE IF EXISTS `shop_goods_description`;
CREATE TABLE `shop_goods_description` (
  `goods_description_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL DEFAULT '0',
  `summary` varchar(255) DEFAULT NULL COMMENT '产品简介',
  `description` text COMMENT '商品详情',
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`goods_description_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='产品信息描述表';

-- ----------------------------
-- Records of shop_goods_description
-- ----------------------------
INSERT INTO `shop_goods_description` VALUES ('19', '19', '好吃好吃', '&lt;p&gt;好吃好吃&lt;/p&gt;\r\n', '', '');
INSERT INTO `shop_goods_description` VALUES ('23', '26', '香珠氧气自动洗衣颗粒（母婴专用）', '&lt;p&gt;品牌：家和家天下&lt;/p&gt;&lt;p&gt;品名：香珠氧气自动洗衣颗粒（母婴专用）&lt;/p&gt;&lt;p&gt;净含量：15克/袋*15袋&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20191004/1570179840580197.jpg&quot; title=&quot;1570179840580197.jpg&quot; alt=&quot;lunbo-muying-15.jpg&quot;/&gt;&lt;/p&gt;', null, null);
INSERT INTO `shop_goods_description` VALUES ('24', '27', '氧气自动洗衣颗粒（懒人洗衣）\r\n15袋/盒', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20191004/1570180108487377.jpg&quot; title=&quot;1570180108487377.jpg&quot; alt=&quot;lunbo-lanrenxiyi-15.jpg&quot;/&gt;&lt;/p&gt;', null, null);
INSERT INTO `shop_goods_description` VALUES ('25', '28', '氧气自动洗衣颗粒（懒人洗衣）\r\n30袋/盒', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20191004/1570180307636741.jpg&quot; title=&quot;1570180307636741.jpg&quot; alt=&quot;lunbo-lanrenxiyi-30.jpg&quot;/&gt;&lt;/p&gt;', null, null);
INSERT INTO `shop_goods_description` VALUES ('26', '29', '果蔬餐具净浓缩膏（3支装）', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20191004/1570180417107618.jpg&quot; title=&quot;1570180417107618.jpg&quot; alt=&quot;lunbo-guoshu-3.jpg&quot;/&gt;&lt;/p&gt;', null, null);
INSERT INTO `shop_goods_description` VALUES ('27', '30', '香珠氧气自动洗衣颗粒（9包装）', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20191004/1570180541161154.jpg&quot; title=&quot;1570180541161154.jpg&quot; alt=&quot;lunbo-xiangzhuyangpao-9.jpg&quot;/&gt;&lt;/p&gt;', null, null);
INSERT INTO `shop_goods_description` VALUES ('28', '31', '香珠氧气自动洗衣颗粒（9包装）', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20191004/1570180621123961.jpg&quot; title=&quot;1570180621123961.jpg&quot; alt=&quot;lunbo-xiangzhuyangpao-15.jpg&quot;/&gt;&lt;/p&gt;', null, null);
INSERT INTO `shop_goods_description` VALUES ('29', '32', '香珠氧气自动洗衣颗粒（30包装）', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20191004/1570180688325793.jpg&quot; title=&quot;1570180688325793.jpg&quot; alt=&quot;lunbo-xiangzhuyangpao-30.jpg&quot;/&gt;&lt;/p&gt;', null, null);
INSERT INTO `shop_goods_description` VALUES ('31', '34', '洗洁精浓缩膏（10支装）', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20191004/1570182096124675.jpg&quot; title=&quot;1570182096124675.jpg&quot; alt=&quot;洗洁精10支装.jpg&quot;/&gt;&lt;/p&gt;', null, null);
INSERT INTO `shop_goods_description` VALUES ('32', '35', '油污净浓缩膏（3支装）', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20191004/1570181451445680.jpg&quot; title=&quot;1570181451445680.jpg&quot; alt=&quot;lunbo-youwujing-3.jpg&quot;/&gt;&lt;/p&gt;', null, null);
INSERT INTO `shop_goods_description` VALUES ('34', '37', 'DIY洗洁精浓缩膏（3支装）', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20191004/1570194491744234.jpg&quot; title=&quot;1570194491744234.jpg&quot; alt=&quot;lunbo-xijiejing-3.jpg&quot;/&gt;&lt;/p&gt;', null, null);
INSERT INTO `shop_goods_description` VALUES ('35', '38', 'DIY油污净浓缩膏（8支装）', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20191004/1570194688904915.jpg&quot; title=&quot;1570194688904915.jpg&quot; alt=&quot;lunbo-youwujing-8.jpg&quot;/&gt;&lt;/p&gt;', null, null);
INSERT INTO `shop_goods_description` VALUES ('37', '40', '香珠氧气自动洗衣颗粒（9包装）', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20191004/1570195423117192.jpg&quot; title=&quot;1570195423117192.jpg&quot; alt=&quot;lunbo-xiangzhuyangpao-9.jpg&quot;/&gt;&lt;/p&gt;', null, null);
INSERT INTO `shop_goods_description` VALUES ('38', '41', '香珠氧气自动洗衣颗粒（9包装）', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20191004/1570196673897944.jpg&quot; title=&quot;1570196673897944.jpg&quot; alt=&quot;lunbo-xiangzhuyangpao-9.jpg&quot;/&gt;&lt;/p&gt;', null, null);
INSERT INTO `shop_goods_description` VALUES ('39', '42', '升级C套餐', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20191011/1570787340618926.png&quot; title=&quot;1570787340618926.png&quot; alt=&quot;套餐C.png&quot;/&gt;&lt;/p&gt;', null, null);
INSERT INTO `shop_goods_description` VALUES ('40', '43', '升级B套餐', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20191011/1570787403946397.png&quot; title=&quot;1570787403946397.png&quot; alt=&quot;套餐B.png&quot;/&gt;&lt;/p&gt;', null, null);
INSERT INTO `shop_goods_description` VALUES ('41', '44', '升级A套餐', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20191011/1570787474137766.png&quot; title=&quot;1570787474137766.png&quot; alt=&quot;套餐A.png&quot;/&gt;&lt;/p&gt;', null, null);
INSERT INTO `shop_goods_description` VALUES ('42', '45', '一元礼品—DIY洗洁精（3支装）', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20191011/1570787566114313.png&quot; title=&quot;1570787566114313.png&quot; alt=&quot;套装四800.png&quot;/&gt;&lt;/p&gt;', null, null);
INSERT INTO `shop_goods_description` VALUES ('43', '46', '一元礼品套装', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20191011/1570787618443872.png&quot; title=&quot;1570787618443872.png&quot; alt=&quot;套装三800.png&quot;/&gt;&lt;/p&gt;', null, null);
INSERT INTO `shop_goods_description` VALUES ('44', '47', '一元礼品套装', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20191011/1570787671652749.png&quot; title=&quot;1570787671652749.png&quot; alt=&quot;套装二800.png&quot;/&gt;&lt;/p&gt;', null, null);
INSERT INTO `shop_goods_description` VALUES ('45', '48', '一元套装', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20191011/1570787754278630.png&quot; title=&quot;1570787754278630.png&quot; alt=&quot;套装一800.png&quot;/&gt;&lt;/p&gt;', null, null);

-- ----------------------------
-- Table structure for shop_goods_discount
-- ----------------------------
DROP TABLE IF EXISTS `shop_goods_discount`;
CREATE TABLE `shop_goods_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL DEFAULT '0',
  `quantity` int(4) NOT NULL DEFAULT '0',
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='数量折扣';

-- ----------------------------
-- Records of shop_goods_discount
-- ----------------------------

-- ----------------------------
-- Table structure for shop_goods_image
-- ----------------------------
DROP TABLE IF EXISTS `shop_goods_image`;
CREATE TABLE `shop_goods_image` (
  `goods_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COMMENT='商品图片表';

-- ----------------------------
-- Records of shop_goods_image
-- ----------------------------
INSERT INTO `shop_goods_image` VALUES ('59', '19', 'images/osc1/goods/20190825156669936758310169539.jpg', '0');
INSERT INTO `shop_goods_image` VALUES ('60', '19', 'images/osc1/goods/020023153130.jpg', '1');
INSERT INTO `shop_goods_image` VALUES ('67', '27', 'images/osc1/chanpin/chanpin-lanrenxi-15.jpg', '0');
INSERT INTO `shop_goods_image` VALUES ('68', '28', 'images/osc1/chanpin/chanpin-lanrenxi-30.jpg', '0');
INSERT INTO `shop_goods_image` VALUES ('69', '29', 'images/osc1/chanpin/chanpin-guoshu-3.jpg', '0');
INSERT INTO `shop_goods_image` VALUES ('70', '30', 'images/osc1/chanpin/chanpin-xiangzhuyangpao-9.jpg', '0');
INSERT INTO `shop_goods_image` VALUES ('71', '31', 'images/osc1/chanpin/chanpin-xiangzhuyangpao-15.jpg', '0');
INSERT INTO `shop_goods_image` VALUES ('72', '32', 'images/osc1/chanpin/chanpin-xiangzhuyangpao-30.jpg', '0');
INSERT INTO `shop_goods_image` VALUES ('74', '34', 'images/osc1/chanpin/chanpin-xijiejing-10.jpg', '0');
INSERT INTO `shop_goods_image` VALUES ('75', '35', 'images/osc1/chanpin/chanpin-youwujing-3.jpg', '0');
INSERT INTO `shop_goods_image` VALUES ('77', '38', 'images/osc1/chanpin/chanpin-youwujing-8.jpg', '0');
INSERT INTO `shop_goods_image` VALUES ('79', '40', 'images/osc1/chanpin/chanpin-xiangzhuyangpao-9.jpg', '0');
INSERT INTO `shop_goods_image` VALUES ('80', '37', 'images/osc1/chanpin/chanpin-xijiejing-3.jpg', '0');
INSERT INTO `shop_goods_image` VALUES ('81', '41', 'images/osc1/chanpin/chanpin-xiangzhuyangpao-9.jpg', '0');
INSERT INTO `shop_goods_image` VALUES ('82', '42', 'images/osc1/chanpin/套餐C.png', '0');
INSERT INTO `shop_goods_image` VALUES ('83', '43', 'images/osc1/chanpin/套餐B.png', '0');
INSERT INTO `shop_goods_image` VALUES ('84', '44', 'images/osc1/chanpin/套餐A.png', '0');
INSERT INTO `shop_goods_image` VALUES ('85', '45', 'images/osc1/chanpin/套装四800.png', '0');
INSERT INTO `shop_goods_image` VALUES ('86', '46', 'images/osc1/chanpin/套装三800.png', '0');
INSERT INTO `shop_goods_image` VALUES ('87', '47', 'images/osc1/chanpin/套装二800.png', '0');
INSERT INTO `shop_goods_image` VALUES ('88', '48', 'images/osc1/chanpin/套装一800.png', '0');

-- ----------------------------
-- Table structure for shop_goods_mobile_description_image
-- ----------------------------
DROP TABLE IF EXISTS `shop_goods_mobile_description_image`;
CREATE TABLE `shop_goods_mobile_description_image` (
  `mdi_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) DEFAULT NULL COMMENT '原图',
  `description` varchar(255) DEFAULT NULL,
  `sort_order` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mdi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='手机商品描述图片';

-- ----------------------------
-- Records of shop_goods_mobile_description_image
-- ----------------------------
INSERT INTO `shop_goods_mobile_description_image` VALUES ('1', '19', 'images/osc1/goods/20190825156669936758310169539.jpg', '', '0');

-- ----------------------------
-- Table structure for shop_goods_option
-- ----------------------------
DROP TABLE IF EXISTS `shop_goods_option`;
CREATE TABLE `shop_goods_option` (
  `goods_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL DEFAULT '0',
  `option_id` int(11) NOT NULL DEFAULT '0',
  `option_name` varchar(64) DEFAULT NULL,
  `type` varchar(40) DEFAULT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_goods_option
-- ----------------------------
INSERT INTO `shop_goods_option` VALUES ('1', '4', '2', '款式', 'radio', '1');

-- ----------------------------
-- Table structure for shop_goods_option_value
-- ----------------------------
DROP TABLE IF EXISTS `shop_goods_option_value`;
CREATE TABLE `shop_goods_option_value` (
  `goods_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_option_id` int(11) NOT NULL DEFAULT '0',
  `goods_id` int(11) NOT NULL DEFAULT '0',
  `option_id` int(11) NOT NULL DEFAULT '0',
  `option_value_id` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  `quantity` int(3) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `price_prefix` varchar(1) DEFAULT NULL,
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_prefix` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`goods_option_value_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_goods_option_value
-- ----------------------------
INSERT INTO `shop_goods_option_value` VALUES ('1', '1', '4', '2', '3', 'images/osc1/4/2.jpg', '250', '1', '0.00', '+', '0.00000000', '+');
INSERT INTO `shop_goods_option_value` VALUES ('2', '1', '4', '2', '4', 'images/osc1/4/3.jpg', '250', '1', '0.00', '+', '0.00000000', '+');

-- ----------------------------
-- Table structure for shop_goods_to_category
-- ----------------------------
DROP TABLE IF EXISTS `shop_goods_to_category`;
CREATE TABLE `shop_goods_to_category` (
  `goods_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品对应分类表';

-- ----------------------------
-- Records of shop_goods_to_category
-- ----------------------------
INSERT INTO `shop_goods_to_category` VALUES ('19', '10');
INSERT INTO `shop_goods_to_category` VALUES ('26', '8');
INSERT INTO `shop_goods_to_category` VALUES ('27', '8');
INSERT INTO `shop_goods_to_category` VALUES ('28', '8');
INSERT INTO `shop_goods_to_category` VALUES ('29', '8');
INSERT INTO `shop_goods_to_category` VALUES ('30', '8');
INSERT INTO `shop_goods_to_category` VALUES ('31', '8');
INSERT INTO `shop_goods_to_category` VALUES ('32', '8');
INSERT INTO `shop_goods_to_category` VALUES ('34', '8');
INSERT INTO `shop_goods_to_category` VALUES ('35', '8');
INSERT INTO `shop_goods_to_category` VALUES ('37', '8');
INSERT INTO `shop_goods_to_category` VALUES ('38', '8');
INSERT INTO `shop_goods_to_category` VALUES ('40', '8');
INSERT INTO `shop_goods_to_category` VALUES ('41', '8');
INSERT INTO `shop_goods_to_category` VALUES ('42', '8');
INSERT INTO `shop_goods_to_category` VALUES ('43', '8');
INSERT INTO `shop_goods_to_category` VALUES ('44', '8');
INSERT INTO `shop_goods_to_category` VALUES ('45', '8');
INSERT INTO `shop_goods_to_category` VALUES ('46', '8');
INSERT INTO `shop_goods_to_category` VALUES ('47', '8');
INSERT INTO `shop_goods_to_category` VALUES ('48', '8');

-- ----------------------------
-- Table structure for shop_length_class
-- ----------------------------
DROP TABLE IF EXISTS `shop_length_class`;
CREATE TABLE `shop_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `title` varchar(32) DEFAULT NULL,
  `unit` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='长度单位';

-- ----------------------------
-- Records of shop_length_class
-- ----------------------------
INSERT INTO `shop_length_class` VALUES ('1', '100.00000000', '厘米', 'cm');
INSERT INTO `shop_length_class` VALUES ('2', '1000.00000000', '毫米', 'mm');
INSERT INTO `shop_length_class` VALUES ('3', '0.01100000', '千米', 'km');

-- ----------------------------
-- Table structure for shop_member
-- ----------------------------
DROP TABLE IF EXISTS `shop_member`;
CREATE TABLE `shop_member` (
  `uid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `reg_type` varchar(20) DEFAULT NULL,
  `wechat_openid` varchar(128) DEFAULT NULL,
  `username` char(20) DEFAULT NULL COMMENT '用户名',
  `password` char(128) DEFAULT NULL COMMENT '密码',
  `checked` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否审核',
  `address_id` int(8) NOT NULL DEFAULT '0',
  `nickname` char(20) DEFAULT NULL COMMENT '昵称',
  `sex` tinyint(2) NOT NULL DEFAULT '0',
  `userpic` varchar(255) DEFAULT NULL COMMENT '会员头像',
  `is_agent` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否是代理商',
  `pid` mediumint(8) NOT NULL DEFAULT '0' COMMENT '上级id',
  `agent_level` mediumint(8) NOT NULL DEFAULT '0' COMMENT '代理级别',
  `total_bonus` decimal(9,3) NOT NULL DEFAULT '0.000' COMMENT '代理商奖金',
  `points` mediumint(8) NOT NULL DEFAULT '0' COMMENT '积分',
  `cash_points` mediumint(8) NOT NULL DEFAULT '0' COMMENT '已经兑换积分',
  `wish` smallint(5) NOT NULL DEFAULT '0' COMMENT '收藏的数量',
  `regdate` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `lastdate` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `regip` char(15) DEFAULT NULL COMMENT '注册ip',
  `lastip` char(15) DEFAULT NULL COMMENT '上次登录ip',
  `loginnum` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '登陆次数',
  `email` char(32) DEFAULT NULL COMMENT '电子邮箱',
  `telephone` varchar(20) DEFAULT NULL,
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '用户组id',
  `areaid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '地区id',
  `message` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有短消息',
  `islock` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否锁定',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='会员表';

-- ----------------------------
-- Records of shop_member
-- ----------------------------
INSERT INTO `shop_member` VALUES ('1', 'pc', null, '测试', 'MDAwMDAwMDAwMLO6e6+AebiU', '0', '0', null, '0', null, '0', '0', '0', '0.000', '0', '0', '0', '1561702597', '0', null, null, '0', '123@qq.com', '123', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for shop_member_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `shop_member_auth_group`;
CREATE TABLE `shop_member_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组id,自增主键',
  `type` varchar(20) DEFAULT NULL,
  `title` char(20) DEFAULT NULL COMMENT '用户组中文名称',
  `description` varchar(80) DEFAULT NULL COMMENT '描述信息',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '用户组状态：为1正常，为0禁用,-1为删除',
  `rules` text COMMENT '用户组拥有的规则id，多个规则 , 隔开',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_member_auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for shop_member_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `shop_member_auth_group_access`;
CREATE TABLE `shop_member_auth_group_access` (
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户组id',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_member_auth_group_access
-- ----------------------------
INSERT INTO `shop_member_auth_group_access` VALUES ('1', '0');

-- ----------------------------
-- Table structure for shop_member_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `shop_member_auth_rule`;
CREATE TABLE `shop_member_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `menu_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_member_auth_rule
-- ----------------------------
INSERT INTO `shop_member_auth_rule` VALUES ('1', '2', '13', '');
INSERT INTO `shop_member_auth_rule` VALUES ('2', '2', '14', 'member/account/profile');
INSERT INTO `shop_member_auth_rule` VALUES ('3', '2', '15', 'member/account/password');
INSERT INTO `shop_member_auth_rule` VALUES ('4', '2', '19', '');
INSERT INTO `shop_member_auth_rule` VALUES ('5', '2', '20', 'member/account/address');
INSERT INTO `shop_member_auth_rule` VALUES ('6', '2', '21', 'member/order_member/index');
INSERT INTO `shop_member_auth_rule` VALUES ('7', '2', '22', 'member/order_member/show_order');
INSERT INTO `shop_member_auth_rule` VALUES ('8', '2', '23', 'member/order_member/history');
INSERT INTO `shop_member_auth_rule` VALUES ('9', '2', '25', 'member/account/add_address');
INSERT INTO `shop_member_auth_rule` VALUES ('10', '2', '26', 'member/account/edit_address');
INSERT INTO `shop_member_auth_rule` VALUES ('11', '2', '27', 'member/account/del_address');
INSERT INTO `shop_member_auth_rule` VALUES ('12', '2', '28', 'member/order_member/cancel');

-- ----------------------------
-- Table structure for shop_member_menu
-- ----------------------------
DROP TABLE IF EXISTS `shop_member_menu`;
CREATE TABLE `shop_member_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文档ID',
  `module` varchar(20) DEFAULT NULL,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `url` char(255) DEFAULT NULL COMMENT '链接地址',
  `icon` varchar(64) DEFAULT NULL,
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `type` varchar(40) DEFAULT NULL COMMENT 'nav,auth',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='后台菜单';

-- ----------------------------
-- Records of shop_member_menu
-- ----------------------------

-- ----------------------------
-- Table structure for shop_member_wishlist
-- ----------------------------
DROP TABLE IF EXISTS `shop_member_wishlist`;
CREATE TABLE `shop_member_wishlist` (
  `uid` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL DEFAULT '0',
  `date_added` varchar(40) DEFAULT NULL,
  KEY `uid` (`uid`,`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏的商品';

-- ----------------------------
-- Records of shop_member_wishlist
-- ----------------------------

-- ----------------------------
-- Table structure for shop_menu
-- ----------------------------
DROP TABLE IF EXISTS `shop_menu`;
CREATE TABLE `shop_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文档ID',
  `module` varchar(20) DEFAULT NULL,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `url` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `icon` varchar(64) DEFAULT NULL,
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `type` varchar(40) DEFAULT NULL COMMENT 'nav,auth',
  `status` tinyint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=300 DEFAULT CHARSET=utf8 COMMENT='后台菜单';

-- ----------------------------
-- Records of shop_menu
-- ----------------------------
INSERT INTO `shop_menu` VALUES ('1', 'admin', '0', '系统', 'admin/settings/general', 'fa-cog fa-lg', '7', 'nav', '1');
INSERT INTO `shop_menu` VALUES ('2', 'admin', '1', '后台菜单管理', 'admin/menu/index', '', '10', 'nav', '0');
INSERT INTO `shop_menu` VALUES ('19', 'admin', '28', '商品分类', 'admin/category/index', '', '2', 'nav', '1');
INSERT INTO `shop_menu` VALUES ('28', 'admin', '0', '商品', 'admin/goods/index', 'fa-gift fa-lg', '2', 'nav', '1');
INSERT INTO `shop_menu` VALUES ('29', 'admin', '28', '商品管理', 'admin/goods/index', '', '1', 'nav', '1');
INSERT INTO `shop_menu` VALUES ('30', 'admin', '28', '重量单位', 'admin/weight_class/index', '', '5', 'nav', '1');
INSERT INTO `shop_menu` VALUES ('38', 'admin', '1', '基本信息', 'admin/settings/general', '', '1', 'nav', '1');
INSERT INTO `shop_menu` VALUES ('46', 'admin', '1', '配置管理', 'admin/config/index', '', '5', 'nav', '0');
INSERT INTO `shop_menu` VALUES ('57', 'admin', '0', '首页', 'admin/index/index', '', '8', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('66', 'admin', '29', '新增', 'admin/goods/add', '', '1', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('67', 'admin', '29', '复制', 'admin/goods/copy_goods', '', '2', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('68', 'admin', '29', '编辑', 'admin/goods/edit', '', '3', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('69', 'admin', '29', '删除', 'admin/goods/del', '', '4', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('70', 'admin', '19', '新增', 'admin/category/add', '', '1', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('71', 'admin', '19', '编辑', 'admin/category/edit', '', '2', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('72', 'admin', '19', '删除', 'admin/category/del', '', '3', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('73', 'admin', '19', '自动完成', 'admin/category/autocomplete', '', '4', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('75', 'admin', '30', '新增', 'admin/weight_class/add', '', '1', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('76', 'admin', '30', '编辑', 'admin/weight_class/edit', '', '2', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('77', 'admin', '30', '删除', 'admin/weight_class/del', '', '3', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('113', 'admin', '38', '保存配置', 'admin/settings/save', '', '8', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('120', 'admin', '2', '新增', 'admin/menu/add', '', '1', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('121', 'admin', '2', '编辑', 'admin/menu/edit', '', '2', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('122', 'admin', '2', '删除', 'admin/menu/del', '', '3', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('123', 'admin', '2', '获取信息', 'admin/menu/get_info', '', '4', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('125', 'admin', '1', '权限管理', 'admin/auth_manager/index', '', '2', 'nav', '1');
INSERT INTO `shop_menu` VALUES ('126', 'admin', '1', '用户行为', 'admin/user_action/index', 'admin', '3', 'nav', '1');
INSERT INTO `shop_menu` VALUES ('127', 'admin', '1', '系统用户', 'admin/user/index', '', '4', 'nav', '1');
INSERT INTO `shop_menu` VALUES ('129', 'member', '0', '会员', '', 'fa-users fa-lg', '2', 'nav', '1');
INSERT INTO `shop_menu` VALUES ('133', 'member', '129', '支付接口', 'member/payment/index', '', '8', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('134', 'admin', '28', '商品属性', 'admin/attribute/index', '', '4', 'nav', '1');
INSERT INTO `shop_menu` VALUES ('135', 'admin', '28', '长度单位', 'admin/length_class/index', '', '6', 'nav', '1');
INSERT INTO `shop_menu` VALUES ('136', 'admin', '28', '商品品牌', 'admin/brand/index', '', '7', 'nav', '1');
INSERT INTO `shop_menu` VALUES ('137', 'member', '129', '运费模板', 'member/transport/index', '', '7', 'nav', '1');
INSERT INTO `shop_menu` VALUES ('138', 'member', '129', '会员订单', 'member/order_backend/index', '', '3', 'nav', '1');
INSERT INTO `shop_menu` VALUES ('139', 'member', '129', '会员管理', 'member/member_backend/index', '', '1', 'nav', '1');
INSERT INTO `shop_menu` VALUES ('140', 'admin', '29', '设置商品状态', 'admin/goods/set_status', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('141', 'admin', '29', '修改商品价格', 'admin/goods/update_price', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('142', 'admin', '29', '修改商品数量', 'admin/goods/update_quantity', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('143', 'admin', '29', '修改商品排序', 'admin/goods/update_sort', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('144', 'admin', '29', '编辑基本信息', 'admin/goods/edit_general', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('145', 'admin', '29', '编辑关联', 'admin/goods/edit_links', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('146', 'admin', '29', '编辑选项', 'admin/goods/edit_option', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('147', 'admin', '29', '编辑折扣', 'admin/goods/edit_discount', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('148', 'admin', '29', '编辑相册', 'admin/goods/edit_image', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('149', 'admin', '29', '编辑手机端描述', 'admin/goods/edit_mobile', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('151', 'admin', '29', '取得商品属性', 'admin/attribute/autocomplete', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('152', 'admin', '29', '取得商品品牌', 'admin/brand/autocomplete', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('153', 'admin', '19', '更新排序', 'admin/category/update_sort', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('154', 'admin', '134', '取得关联属性', 'admin/attribute/get_attribute_group', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('155', 'admin', '134', '新增属性', 'admin/attribute/add', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('156', 'admin', '134', '编辑属性', 'admin/attribute/edit', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('157', 'admin', '134', '删除属性', 'admin/attribute/del', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('158', 'admin', '134', '自动完成', 'admin/attribute/autocomplete', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('159', 'admin', '135', '新增', 'admin/length_class/add', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('160', 'admin', '135', '编辑', 'admin/length_class/edit', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('161', 'admin', '135', '删除', 'admin/length_class/del', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('162', 'admin', '136', '新增', 'admin/brand/add', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('163', 'admin', '136', '编辑', 'admin/brand/edit', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('164', 'admin', '136', '删除', 'admin/brand/del', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('165', 'admin', '136', '自动完成', 'admin/brand/autocomplete', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('176', 'member', '138', '查看订单', 'member/order_backend/show_order', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('177', 'member', '138', '打印订单', 'member/order_backend/print_order', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('178', 'member', '138', '订单历史', 'member/order_backend/history', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('179', 'member', '138', '更新订单', 'member/order_backend/update_order', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('180', 'member', '138', '更新运费', 'member/order_backend/update_shipping', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('181', 'member', '139', '新增', 'member/member_backend/add', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('182', 'member', '139', '编辑', 'member/member_backend/edit', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('183', 'member', '133', '编辑支付接口', 'member/payment/edit', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('184', 'member', '133', '设置状态', 'member/payment/set_status', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('187', 'admin', '125', '新增用户组', 'admin/auth_manager/create_group', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('188', 'admin', '125', '编辑用户组', 'admin/auth_manager/edit_group', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('189', 'admin', '125', '删除用户组', 'admin/auth_manager/del_group', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('190', 'admin', '125', '查看权限', 'admin/auth_manager/access', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('191', 'admin', '125', '编辑权限', 'admin/auth_manager/write_group', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('192', 'admin', '125', '设置状态', 'admin/auth_manager/set_status', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('193', 'admin', '127', '新增', 'admin/user/add', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('194', 'admin', '127', '编辑', 'admin/user/edit', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('195', 'admin', '127', '删除', 'admin/user/del', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('196', 'admin', '127', '设置状态', 'admin/user/set_status', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('197', 'admin', '46', '新增', 'admin/config/add', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('198', 'admin', '46', '编辑', 'admin/config/edit', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('199', 'admin', '46', '删除', 'admin/config/del', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('200', 'admin', '137', '新增', 'admin/transport/add', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('201', 'admin', '137', '复制', 'admin/transport/clone_data', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('202', 'admin', '137', '编辑', 'admin/transport/edit', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('203', 'admin', '137', '保存', 'admin/transport/save', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('204', 'admin', '137', '删除', 'admin/transport/del', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('205', 'admin', '137', '获取地区', 'admin/transport/getCity', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('206', 'member', '129', '订单状态', 'member/order_status/index', '', '5', 'nav', '1');
INSERT INTO `shop_menu` VALUES ('207', 'member', '206', '新增', 'member/order_status/add', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('208', 'member', '206', '编辑', 'member/order_status/edit', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('209', 'member', '206', '删除', 'member/order_status/del', '', '0', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('210', 'member', '1', '其他配置', 'admin/settings/other', '', '0', 'nav', '1');
INSERT INTO `shop_menu` VALUES ('290', 'admin', '57', '退出系统', 'admin/index/logout', '', '1', 'auth', '1');
INSERT INTO `shop_menu` VALUES ('292', 'member', '129', '充值提现', 'member/finance/index', '', '2', 'nav', '1');
INSERT INTO `shop_menu` VALUES ('293', 'admin', '28', '优惠券管理', 'admin/coupon/index', '', '8', 'nav', '0');
INSERT INTO `shop_menu` VALUES ('294', 'member', '1', '首页轮播图', 'admin/Settings/frontend', '', '10', 'nav', '1');
INSERT INTO `shop_menu` VALUES ('295', 'admin', '1', '奖励设置', 'admin/Settings/reward', null, '11', 'nav', '1');
INSERT INTO `shop_menu` VALUES ('296', 'member', '129', '广告审核', 'member/ggao/index', null, '10', 'nav', '1');
INSERT INTO `shop_menu` VALUES ('297', 'admin', '1', '公告发布', 'admin/Settings/notice', null, '12', 'nav', '1');
INSERT INTO `shop_menu` VALUES ('298', 'member', '129', '升级订单', 'member/Order/upgrade_order', null, '11', 'nav', '1');
INSERT INTO `shop_menu` VALUES ('299', 'photo', '1', '图片管理', 'admin/photo/index', null, '13', 'nav', '1');

-- ----------------------------
-- Table structure for shop_module
-- ----------------------------
DROP TABLE IF EXISTS `shop_module`;
CREATE TABLE `shop_module` (
  `module` varchar(15) NOT NULL COMMENT '模块',
  `modulename` varchar(20) DEFAULT NULL COMMENT '模块名称',
  `base_module` varchar(64) DEFAULT NULL COMMENT '依赖的模块',
  `sign` varchar(255) DEFAULT NULL COMMENT '签名',
  `iscore` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '内置模块',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否可用',
  `version` varchar(50) DEFAULT NULL COMMENT '版本',
  `author` varchar(40) DEFAULT NULL,
  `setting` mediumtext COMMENT '设置信息',
  `description` varchar(255) DEFAULT NULL COMMENT '模块描述',
  `installtime` varchar(20) DEFAULT NULL COMMENT '安装时间',
  `updatetime` varchar(20) DEFAULT NULL COMMENT '更新时间',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`module`),
  KEY `sign` (`sign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='已安装模块列表';

-- ----------------------------
-- Records of shop_module
-- ----------------------------
INSERT INTO `shop_module` VALUES ('index', '电脑端', '无', '', '0', '1', '1', '李梓钿', '', '包含商品分类，商品展示，商品详情', '2016-08-16', '2016-09-20', '0');
INSERT INTO `shop_module` VALUES ('member', '会员系统', '无', '', '0', '1', '1', '李梓钿', '', '包含会员，会员权限，收货地址，区域表，购物车，运费模板，结算，支付接口，订单系统', '2016-08-16', '2016-09-20', '0');
INSERT INTO `shop_module` VALUES ('mobile', '移动端', 'member', null, '0', '0', '1', '李梓钿', null, '手机微信二合一，包含商品展示，会员系统，支付，订单', '2017-09-13', '2017-09-13', '0');
INSERT INTO `shop_module` VALUES ('payment', '支付模块', 'member', '', '0', '1', '1', '李梓钿', '', '支付接口调用，回调处理', '2016-08-16', '2016-09-20', '0');

-- ----------------------------
-- Table structure for shop_option
-- ----------------------------
DROP TABLE IF EXISTS `shop_option`;
CREATE TABLE `shop_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `value` text,
  `update_time` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='产品选项';

-- ----------------------------
-- Records of shop_option
-- ----------------------------
INSERT INTO `shop_option` VALUES ('1', 'radio', '款式', '长袖款,短袖款', '2019-07-04 10:52:45');

-- ----------------------------
-- Table structure for shop_option_value
-- ----------------------------
DROP TABLE IF EXISTS `shop_option_value`;
CREATE TABLE `shop_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL DEFAULT '0',
  `value_name` varchar(128) DEFAULT NULL,
  `value_sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`option_value_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='选项值';

-- ----------------------------
-- Records of shop_option_value
-- ----------------------------
INSERT INTO `shop_option_value` VALUES ('5', '1', '长袖款', '1');
INSERT INTO `shop_option_value` VALUES ('6', '1', '短袖款', '2');

-- ----------------------------
-- Table structure for shop_order
-- ----------------------------
DROP TABLE IF EXISTS `shop_order`;
CREATE TABLE `shop_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_num_alias` varchar(40) DEFAULT NULL COMMENT '订单编号',
  `pay_subject` varchar(255) DEFAULT NULL,
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '会员id',
  `return_points` int(11) NOT NULL DEFAULT '0' COMMENT '可得积分',
  `pay_points` int(11) NOT NULL DEFAULT '0' COMMENT '兑换需要的积分',
  `points_order` int(11) NOT NULL DEFAULT '0' COMMENT '是否是积分兑换订单',
  `name` varchar(32) DEFAULT NULL COMMENT '购买的会员名字',
  `email` varchar(64) DEFAULT NULL,
  `tel` varchar(64) DEFAULT NULL,
  `shipping_name` varchar(32) DEFAULT NULL COMMENT '收货人姓名',
  `address_id` int(11) NOT NULL DEFAULT '0' COMMENT '收货地址id',
  `shipping_tel` varchar(20) DEFAULT NULL COMMENT '收货人电话',
  `shipping_address` varchar(255) NOT NULL COMMENT '详细地址',
  `shipping_city_id` int(11) NOT NULL DEFAULT '0' COMMENT 'c',
  `shipping_country_id` int(11) NOT NULL DEFAULT '0',
  `shipping_province_id` int(11) NOT NULL DEFAULT '0',
  `shipping_method` varchar(128) DEFAULT NULL COMMENT '货运方式',
  `payment_code` varchar(128) DEFAULT NULL COMMENT '支付方式',
  `comment` text,
  `total` decimal(15,2) NOT NULL DEFAULT '0.00',
  `order_status_id` int(11) NOT NULL DEFAULT '0' COMMENT '订单状态id',
  `ip` varchar(40) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL COMMENT '用户系统信息',
  `date_added` int(11) NOT NULL DEFAULT '0',
  `date_modified` int(11) NOT NULL DEFAULT '0',
  `pay_time` int(11) NOT NULL DEFAULT '0' COMMENT '付款时间',
  `creation_time` int(11) NOT NULL DEFAULT '0' COMMENT '订单创建时间',
  `price` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `freight` decimal(15,2) DEFAULT NULL COMMENT '运费',
  `refund_content` varchar(255) DEFAULT NULL COMMENT '退款理由',
  `refund_image` varchar(255) DEFAULT NULL COMMENT '退款图片',
  `is_number_goods` int(1) DEFAULT '0' COMMENT '是否可以名额支付1可以',
  `number_price` int(10) DEFAULT NULL COMMENT '所需名额',
  `points_price` int(10) DEFAULT NULL COMMENT '所需积分',
  `is_points_goods` int(1) DEFAULT '0' COMMENT '是否是积分兑换商品1可以',
  `pay_type` int(1) DEFAULT NULL COMMENT '支付方式1=>余额支付；2=>积分支付；3=>名额支付',
  `modelis` int(1) DEFAULT NULL COMMENT '所属模块：1=>评价商品；2=>抢购；3=>0元礼品；4=>团购',
  `is_yue_goods` int(1) DEFAULT NULL COMMENT '1=>是余额支付；0=>非',
  `com_exp` varchar(10) DEFAULT NULL COMMENT '快递公司',
  `exp_no` varchar(50) DEFAULT NULL COMMENT '快递单号',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_order
-- ----------------------------
INSERT INTO `shop_order` VALUES ('45', '157071587633922', null, '84', '0', '0', '0', '', null, '13168888836', '陈生', '10', '13168888836', '', '289', '0', '19', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1570715876', '1.00', '19.80', null, null, '1', '2', '90', '1', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('46', '157071591010546', null, '84', '0', '0', '0', '', null, '13168888836', '陈生', '10', '13168888836', '', '289', '0', '19', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1570715910', '1.00', '19.80', null, null, '1', '2', '90', '1', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('47', '157071622870556', null, '85', '0', '0', '0', '', null, '13168888837', '陈', '0', '12', '一', '36', '37', '1', null, null, null, '0.00', '1', null, null, '0', '0', '1570716228', '1570716228', '398.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('48', '157071631137388', null, '86', '0', '0', '0', '', null, '13168888838', '陈', '0', '123', '购', '36', '37', '1', null, null, null, '0.00', '1', null, null, '0', '0', '1570716311', '1570716311', '500.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('49', '157071681858411', null, '84', '0', '0', '0', '', null, '13168888836', '陈生', '10', '13168888836', '', '289', '0', '19', null, null, null, '0.00', '1', null, null, '0', '0', '1570716877', '1570716818', '1.00', '19.80', null, null, '1', '2', '90', '1', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('50', '157071704295407', null, '84', '0', '0', '0', '', null, '13168888836', '陈生', '10', '13168888836', '', '289', '0', '19', null, null, null, '0.00', '4', null, null, '0', '0', '0', '1570717042', '1.00', '19.80', null, null, '1', '2', '90', '1', null, null, '1', 'sf', '123');
INSERT INTO `shop_order` VALUES ('51', '157071714594597', null, '84', '0', '0', '0', '', null, '13168888836', '陈生', '10', '13168888836', '', '289', '0', '19', null, null, null, '0.00', '4', null, null, '0', '0', '1570717157', '1570717145', '0.00', '0.00', null, null, '0', '0', '0', '0', null, null, '0', 'sf', '123');
INSERT INTO `shop_order` VALUES ('52', '157071733227374', null, '84', '0', '0', '0', '', null, '13168888836', '陈生', '10', '13168888836', '', '289', '0', '19', null, null, null, '0.00', '4', null, null, '0', '0', '1570717340', '1570717332', '39.60', '0.00', null, null, '0', '0', '0', '0', null, null, '1', 'sf', '123');
INSERT INTO `shop_order` VALUES ('53', '157071748086670', null, '84', '0', '0', '0', '', null, '13168888836', '陈生', '10', '13168888836', '', '289', '0', '19', null, null, null, '0.00', '4', null, null, '0', '0', '0', '1570717480', '1.00', '19.80', null, null, '1', '2', '90', '1', null, null, '1', 'sf', '123');
INSERT INTO `shop_order` VALUES ('54', '157071753794309', null, '84', '0', '0', '0', '', null, '13168888836', '陈生', '10', '13168888836', '', '289', '0', '19', null, null, null, '0.00', '4', null, null, '0', '0', '0', '1570717537', '1.00', '19.80', null, null, '1', '2', '90', '1', null, null, '1', 'sf', '123');
INSERT INTO `shop_order` VALUES ('55', '157071765939330', null, '84', '0', '0', '0', '', null, '13168888836', '陈生', '10', '13168888836', '', '289', '0', '19', null, null, null, '0.00', '4', null, null, '0', '0', '1570717670', '1570717659', '118.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', 'sf', '123');
INSERT INTO `shop_order` VALUES ('56', '157071770947364', null, '84', '0', '0', '0', '', null, '13168888836', '陈生', '10', '13168888836', '', '289', '0', '19', null, null, null, '0.00', '4', null, null, '0', '0', '1570717717', '1570717709', '500.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', 'sf', '123');
INSERT INTO `shop_order` VALUES ('57', '157071803587346', null, '85', '0', '0', '0', '', null, '13168888837', '陈', '11', '123', '', '36', '38', '1', null, null, null, '0.00', '4', null, null, '0', '0', '0', '1570718035', '59.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', 'sf', '123');
INSERT INTO `shop_order` VALUES ('58', '157071810461012', null, '85', '0', '0', '0', '', null, '13168888837', '陈', '11', '123', '', '36', '38', '1', null, null, null, '0.00', '4', null, null, '0', '0', '0', '1570718104', '1.00', '19.80', null, null, '1', '2', '90', '1', null, null, '1', 'sf', '123');
INSERT INTO `shop_order` VALUES ('59', '157071811917212', null, '85', '0', '0', '0', '', null, '13168888837', '陈', '11', '123', '', '36', '38', '1', null, null, null, '0.00', '4', null, null, '0', '0', '0', '1570718119', '19.80', '0.00', null, null, '0', '0', '0', '0', null, null, '1', 'sf', '123');
INSERT INTO `shop_order` VALUES ('60', '157071821469518', null, '85', '0', '0', '0', '', null, '13168888837', '陈', '11', '123', '', '36', '38', '1', null, null, null, '0.00', '4', null, null, '0', '0', '0', '1570718214', '19.80', '0.00', null, null, '0', '0', '0', '0', null, null, '1', 'sf', '123');
INSERT INTO `shop_order` VALUES ('61', '157071837639759', null, '86', '0', '0', '0', '', null, '13168888838', '陈', '12', '123', '', '36', '37', '1', null, null, null, '0.00', '4', null, null, '0', '0', '1570718380', '1570718376', '59.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', 'sf', '123');
INSERT INTO `shop_order` VALUES ('62', '157071844299692', null, '86', '0', '0', '0', '', null, '13168888838', '陈', '12', '123', '', '36', '37', '1', null, null, null, '0.00', '4', null, null, '0', '0', '1570718446', '1570718442', '19.80', '0.00', null, null, '0', '0', '0', '0', null, null, '1', 'sf', '123');
INSERT INTO `shop_order` VALUES ('63', '157071846177876', null, '86', '0', '0', '0', '', null, '13168888838', '陈', '12', '123', '', '36', '37', '1', null, null, null, '0.00', '4', null, null, '0', '0', '1570718465', '1570718461', '39.60', '0.00', null, null, '0', '0', '0', '0', null, null, '1', 'sf', '123');
INSERT INTO `shop_order` VALUES ('64', '157072051927254', null, '87', '0', '0', '0', '', null, '13168888839', '陈', '13', '123', '', '36', '37', '1', null, null, null, '0.00', '6', null, null, '0', '0', '1570720524', '1570720519', '398.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', 'sf', '123');
INSERT INTO `shop_order` VALUES ('65', '157072066065167', null, '87', '0', '0', '0', '', null, '13168888839', '陈', '13', '123', '', '36', '37', '1', null, null, null, '0.00', '6', null, null, '0', '0', '1570720664', '1570720660', '59.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', 'sf', '123');
INSERT INTO `shop_order` VALUES ('66', '157072068718764', null, '87', '0', '0', '0', '', null, '13168888839', '陈', '13', '123', '', '36', '37', '1', null, null, null, '0.00', '6', null, null, '0', '0', '1570720691', '1570720687', '19.80', '0.00', null, null, '0', '0', '0', '0', null, null, '1', 'sf', '123');
INSERT INTO `shop_order` VALUES ('67', '157072093829459', null, '87', '0', '0', '0', '', null, '13168888839', '陈', '13', '123', '', '36', '37', '1', null, null, null, '0.00', '6', null, null, '0', '0', '1570720946', '1570720938', '58.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', 'sf', '123');
INSERT INTO `shop_order` VALUES ('68', '157072167642964', null, '88', '0', '0', '0', '', null, '13168888840', '陈', '0', '123', '帐', '36', '37', '1', null, null, null, '0.00', '1', null, null, '0', '0', '1570721676', '1570721676', '398.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('69', '157072199623636', null, '89', '0', '0', '0', '', null, '13168888841', '陈', '0', '12', '陈', '36', '37', '1', null, null, null, '0.00', '1', null, null, '0', '0', '1570721996', '1570721996', '398.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('70', '157072236297377', null, '90', '0', '0', '0', '', null, '13168888842', '陈', '15', '12', '', '36', '37', '1', null, null, null, '0.00', '1', null, null, '0', '0', '1570722368', '1570722362', '398.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('71', '157072456232999', null, '92', '0', '0', '0', '', null, '13168888844', '陈', '16', '12', '', '36', '37', '1', null, null, null, '0.00', '1', null, null, '0', '0', '1570724567', '1570724562', '398.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('72', '157072458022455', null, '92', '0', '0', '0', '', null, '13168888844', '陈', '16', '12', '', '36', '37', '1', null, null, null, '0.00', '6', null, null, '0', '0', '1570724588', '1570724580', '118.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', 'sf', '123');
INSERT INTO `shop_order` VALUES ('73', '157077087662110', null, '92', '0', '0', '0', '', null, '13168888844', '陈', '16', '12', '', '36', '37', '1', null, null, null, '0.00', '6', null, null, '0', '0', '1570770884', '1570770876', '96.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', 'sf', '123');
INSERT INTO `shop_order` VALUES ('74', '157077092424463', null, '92', '0', '0', '0', '', null, '13168888844', '陈', '16', '12', '', '36', '37', '1', null, null, null, '0.00', '6', null, null, '0', '0', '1570770929', '1570770924', '0.00', '0.00', null, null, '0', '0', '0', '0', null, null, '0', 'sf', '123');
INSERT INTO `shop_order` VALUES ('75', '157078483088667', null, '96', '0', '0', '0', '', null, '13322222222', '222', '17', '13322222222', '', '36', '37', '1', null, null, null, '0.00', '1', null, null, '0', '0', '1570784834', '1570784830', '408.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('76', '157078491185731', null, '97', '0', '0', '0', '', null, '13333333333', '33', '18', '13333333333', '', '36', '37', '1', null, null, null, '0.00', '1', null, null, '0', '0', '1570784914', '1570784911', '408.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('77', '157084848770707', null, '96', '0', '0', '0', '', null, '13322222222', '222', '17', '13322222222', '', '36', '37', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1570848487', '59.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('78', '157085493579128', null, '93', '0', '0', '0', '', null, '13566701985', '我', '19', '23', '', '36', '38', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1570854935', '82.00', '19.80', null, null, '1', '2', '82', '1', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('79', '157085493524241', null, '93', '0', '0', '0', '', null, '13566701985', '我', '19', '23', '', '36', '38', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1570854935', '82.00', '19.80', null, null, '1', '2', '82', '1', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('80', '157085493531022', null, '93', '0', '0', '0', '', null, '13566701985', '我', '19', '23', '', '36', '38', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1570854935', '82.00', '19.80', null, null, '1', '2', '82', '1', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('81', '157085493522285', null, '93', '0', '0', '0', '', null, '13566701985', '我', '19', '23', '', '36', '38', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1570854935', '82.00', '19.80', null, null, '1', '2', '82', '1', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('82', '157085493699115', null, '93', '0', '0', '0', '', null, '13566701985', '我', '19', '23', '', '36', '38', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1570854936', '82.00', '19.80', null, null, '1', '2', '82', '1', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('83', '157085493644079', null, '93', '0', '0', '0', '', null, '13566701985', '我', '19', '23', '', '36', '38', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1570854936', '82.00', '19.80', null, null, '1', '2', '82', '1', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('84', '157085493817819', null, '93', '0', '0', '0', '', null, '13566701985', '我', '19', '23', '', '36', '38', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1570854938', '82.00', '19.80', null, null, '1', '2', '82', '1', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('85', '157085500951281', null, '93', '0', '0', '0', '', null, '13566701985', '我', '19', '23', '', '36', '38', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1570855009', '89.60', '19.80', null, null, '1', '2', '90', '1', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('86', '157085503135111', null, '93', '0', '0', '0', '', null, '13566701985', '我', '19', '23', '', '36', '38', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1570855031', '89.60', '19.80', null, null, '1', '2', '90', '1', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('87', '157087743694710', null, '96', '0', '0', '0', '', null, '13322222222', '222', '17', '13322222222', '', '36', '37', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1570877436', '19.80', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('88', '157087856144422', null, '97', '0', '0', '0', '', null, '13333333333', '33', '18', '13333333333', '', '36', '37', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1570878561', '59.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('89', '157087868215366', null, '97', '0', '0', '0', '', null, '13333333333', '33', '18', '13333333333', '', '36', '37', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1570878682', '96.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('90', '157087881042722', null, '97', '0', '0', '0', '', null, '13333333333', '33', '18', '13333333333', '', '36', '37', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1570878810', '96.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('91', '157087883219126', null, '97', '0', '0', '0', '', null, '13333333333', '33', '18', '13333333333', '', '36', '37', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1570878832', '59.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('92', '157087887063577', null, '97', '0', '0', '0', '', null, '13333333333', '33', '18', '13333333333', '', '36', '37', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1570878870', '19.80', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('93', '157087901144519', null, '97', '0', '0', '0', '', null, '13333333333', '33', '18', '13333333333', '', '36', '37', '1', null, null, null, '0.00', '1', null, null, '0', '0', '1570879017', '1570879011', '1.00', '19.80', null, null, '1', '2', '57', '1', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('94', '157088299383352', null, '99', '0', '0', '0', '', null, '15989009688', '陈', '20', '132', '', '36', '37', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1570882993', '118.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('95', '157088317016116', null, '99', '0', '0', '0', '', null, '15989009688', '陈', '20', '132', '', '36', '37', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1570883170', '39.60', '0.00', null, null, '0', '0', '0', '0', null, null, '0', null, null);
INSERT INTO `shop_order` VALUES ('96', '157088318487651', null, '99', '0', '0', '0', '', null, '15989009688', '陈', '20', '132', '', '36', '37', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1570883184', '39.60', '0.00', null, null, '0', '0', '0', '0', null, null, '0', null, null);
INSERT INTO `shop_order` VALUES ('97', '157088323711021', null, '99', '0', '0', '0', '', null, '15989009688', '陈', '20', '132', '', '36', '37', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1570883237', '59.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('98', '157088329126127', null, '99', '0', '0', '0', '', null, '15989009688', '陈', '20', '132', '', '36', '37', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1570883291', '398.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('99', '157088374311895', null, '99', '0', '0', '0', '', null, '15989009688', '陈', '20', '132', '', '36', '37', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1570883743', '19.80', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('100', '157088379340800', null, '99', '0', '0', '0', '', null, '15989009688', '陈', '20', '132', '', '36', '37', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1570883793', '1.00', '19.80', null, null, '1', '2', '90', '1', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('101', '157088380528937', null, '99', '0', '0', '0', '', null, '15989009688', '陈', '20', '132', '', '36', '37', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1570883805', '1.00', '19.80', null, null, '1', '2', '90', '1', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('102', '157088387570405', null, '99', '0', '0', '0', '', null, '15989009688', '陈', '20', '132', '', '36', '37', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1570883875', '1.00', '19.80', null, null, '1', '2', '90', '1', null, null, '0', null, null);
INSERT INTO `shop_order` VALUES ('103', '157088434397171', null, '100', '0', '0', '0', '', null, '13570393608', '于', '23', '13570393608', '', '36', '37', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1570884343', '398.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('104', '157088527336586', null, '101', '0', '0', '0', '', null, '13344444444', '44', '24', '13344444444', '', '36', '37', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1570885273', '398.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('105', '157088846822664', null, '95', '0', '0', '0', 'mc001', null, '13311111111', '11', '22', '133111111111', '', '36', '37', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1570888468', '398.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('106', '157088887291095', null, '101', '0', '0', '0', '', null, '13344444444', '44', '24', '13344444444', '', '36', '37', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1570888872', '398.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('107', '157088895358867', null, '101', '0', '0', '0', '', null, '13344444444', '44', '24', '13344444444', '', '36', '37', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1570888953', '408.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('108', '157089016060429', null, '101', '0', '0', '0', '', null, '13344444444', '44', '24', '13344444444', '', '36', '37', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1570890160', '500.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('109', '157089067499887', null, '101', '0', '0', '0', '', null, '13344444444', '44', '24', '13344444444', '', '36', '37', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1570890674', '82.00', '19.80', null, null, '1', '2', '82', '1', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('110', '157089080633038', null, '101', '0', '0', '0', '', null, '13344444444', '44', '24', '13344444444', '', '36', '37', '1', null, null, null, '0.00', '1', null, null, '0', '0', '1570890813', '1570890806', '408.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('111', '157089108717410', null, '101', '0', '0', '0', '', null, '13344444444', '44', '24', '13344444444', '', '36', '37', '1', null, null, null, '0.00', '1', null, null, '0', '0', '1570891116', '1570891087', '89.60', '19.80', null, null, '1', '2', '90', '1', null, null, '0', null, null);
INSERT INTO `shop_order` VALUES ('112', '157089196123818', null, '96', '0', '0', '0', '', null, '13322222222', '222', '17', '13322222222', '', '36', '37', '1', null, null, null, '0.00', '4', null, null, '0', '0', '1570891987', '1570891961', '19.80', '0.00', null, null, '0', '0', '0', '0', null, null, '1', 'sf', '1231');
INSERT INTO `shop_order` VALUES ('113', '157089505036485', null, '101', '0', '0', '0', '', null, '13344444444', '44', '24', '13344444444', '', '36', '37', '1', null, null, null, '0.00', '1', null, null, '0', '0', '1570895060', '1570895050', '408.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('114', '157089534469084', null, '101', '0', '0', '0', '', null, '13344444444', '44', '24', '13344444444', '', '36', '37', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1570895344', '89.60', '19.80', null, null, '1', '2', '90', '1', null, null, '0', null, null);
INSERT INTO `shop_order` VALUES ('115', '157089536582864', null, '101', '0', '0', '0', '', null, '13344444444', '44', '24', '13344444444', '', '36', '37', '1', null, null, null, '0.00', '4', null, null, '0', '0', '1570895369', '1570895365', '118.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', 'sf', '1313');
INSERT INTO `shop_order` VALUES ('116', '157098206447996', null, '101', '0', '0', '0', '', null, '13344444444', '44', '24', '13344444444', '', '36', '37', '1', null, null, null, '0.00', '1', null, null, '0', '0', '1571018510', '1570982064', '398.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('117', '157098213560622', null, '101', '0', '0', '0', '', null, '13344444444', '44', '24', '13344444444', '', '36', '37', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1570982135', '89.60', '19.80', null, null, '1', '2', '90', '1', null, null, '0', null, null);
INSERT INTO `shop_order` VALUES ('118', '157103276713900', null, '103', '0', '0', '0', '', null, '13168888846', '收', '25', '123', '', '36', '37', '1', null, null, null, '0.00', '1', null, null, '0', '0', '1571032775', '1571032767', '398.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('119', '157103282347147', null, '103', '0', '0', '0', '', null, '13168888846', '收', '25', '123', '', '36', '37', '1', null, null, null, '0.00', '1', null, null, '0', '0', '1571032838', '1571032823', '0.00', '0.00', null, null, '0', '0', '0', '0', null, null, '0', null, null);
INSERT INTO `shop_order` VALUES ('120', '157103286511178', null, '103', '0', '0', '0', '', null, '13168888846', '收', '25', '123', '', '36', '37', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1571032865', '1.00', '19.80', null, null, '1', '2', '90', '1', null, null, '0', null, null);
INSERT INTO `shop_order` VALUES ('121', '157103287830308', null, '103', '0', '0', '0', '', null, '13168888846', '收', '25', '123', '', '36', '37', '1', null, null, null, '0.00', '1', null, null, '0', '0', '1571032890', '1571032878', '1.00', '19.80', null, null, '1', '2', '90', '1', null, null, '0', null, null);
INSERT INTO `shop_order` VALUES ('122', '157103293815883', null, '103', '0', '0', '0', '', null, '13168888846', '收', '25', '123', '', '36', '37', '1', null, null, null, '0.00', '1', null, null, '0', '0', '1571032943', '1571032938', '59.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('123', '157103295980485', null, '103', '0', '0', '0', '', null, '13168888846', '收', '25', '123', '', '36', '37', '1', null, null, null, '0.00', '1', null, null, '0', '0', '1571032964', '1571032959', '19.80', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('124', '157103361538836', null, '104', '0', '0', '0', '', null, '13168888847', '收', '0', '123', '图', '36', '37', '1', null, null, null, '0.00', '1', null, null, '0', '0', '1571033615', '1571033615', '398.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('125', '157103392680210', null, '105', '0', '0', '0', '', null, '13168888848', '收', '26', '12', '', '36', '37', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1571033926', '398.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('126', '157103394787673', null, '105', '0', '0', '0', '', null, '13168888848', '收', '26', '12', '', '36', '37', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1571033947', '118.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('127', '157103399361550', null, '105', '0', '0', '0', '', null, '13168888848', '收', '26', '12', '', '36', '37', '1', null, null, null, '0.00', '1', null, null, '0', '0', '1571033999', '1571033993', '398.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('128', '157103402025265', null, '105', '0', '0', '0', '', null, '13168888848', '收', '26', '12', '', '36', '37', '1', null, null, null, '0.00', '6', null, null, '0', '0', '1571034024', '1571034020', '59.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', 'sf', '123');
INSERT INTO `shop_order` VALUES ('129', '157103513056587', null, '108', '0', '0', '0', '', null, '13433333333', '33', '27', '13433333333', '', '36', '37', '1', null, null, null, '0.00', '1', null, null, '0', '0', '1571035143', '1571035130', '500.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('130', '157103535563322', null, '110', '0', '0', '0', '', null, '13444444444', '44', '28', '13444444444', '', '36', '37', '1', null, null, null, '0.00', '1', null, null, '0', '0', '1571035358', '1571035355', '398.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('131', '157103546160668', null, '111', '0', '0', '0', '', null, '13455555555', '55', '29', '13455555555', '', '36', '37', '1', null, null, null, '0.00', '6', null, null, '0', '0', '1571035496', '1571035461', '118.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', 'sf', '657');
INSERT INTO `shop_order` VALUES ('132', '157103570367329', null, '111', '0', '0', '0', '', null, '13455555555', '55', '29', '13455555555', '', '36', '37', '1', null, null, null, '0.00', '6', null, null, '0', '0', '1571035726', '1571035703', '89.60', '19.80', null, null, '1', '2', '90', '1', null, null, '0', 'sf', '55');
INSERT INTO `shop_order` VALUES ('133', '157103578136405', null, '111', '0', '0', '0', '', null, '13455555555', '55', '29', '13455555555', '', '36', '37', '1', null, null, null, '0.00', '6', null, null, '0', '0', '1571035788', '1571035781', '82.00', '19.80', null, null, '1', '2', '82', '1', null, null, '1', 'sf', '55');
INSERT INTO `shop_order` VALUES ('134', '157103595655112', null, '111', '0', '0', '0', '', null, '13455555555', '55', '29', '13455555555', '', '36', '37', '1', null, null, null, '0.00', '6', null, null, '0', '0', '1571035962', '1571035956', '39.60', '0.00', null, null, '0', '0', '0', '0', null, null, '1', 'sf', '131');
INSERT INTO `shop_order` VALUES ('135', '157103693153236', null, '114', '0', '0', '0', '', null, '13488888888', '88', '0', '13488888888', '88', '36', '37', '1', null, null, null, '0.00', '1', null, null, '0', '0', '1571036931', '1571036931', '408.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('136', '157103700065458', null, '115', '0', '0', '0', '', null, '13499999999', '99', '0', '13499999999', '99', '36', '37', '1', null, null, null, '0.00', '1', null, null, '0', '0', '1571037000', '1571037000', '500.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('137', '157103730557018', null, '111', '0', '0', '0', '', null, '13455555555', '55', '29', '13455555555', '', '36', '37', '1', null, null, null, '0.00', '4', null, null, '0', '0', '1571037325', '1571037305', '39.60', '0.00', null, null, '0', '0', '0', '0', null, null, '0', 'sf', '132');
INSERT INTO `shop_order` VALUES ('138', '157106034754321', null, '117', '0', '0', '0', '', null, '13168888861', '不是', '30', '12', '', '36', '37', '1', null, null, null, '0.00', '1', null, null, '0', '0', '1571060363', '1571060347', '398.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('139', '157106085078148', null, '118', '0', '0', '0', '', null, '13168888862', '单', '0', '11', '额', '36', '37', '1', null, null, null, '0.00', '1', null, null, '0', '0', '1571060850', '1571060850', '398.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('140', '157106143854469', null, '119', '0', '0', '0', '', null, '13168888863', '发给', '31', '00', '', '36', '37', '1', null, null, null, '0.00', '1', null, null, '0', '0', '1571061446', '1571061438', '398.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('141', '157106181166282', null, '119', '0', '0', '0', '', null, '13168888863', '发给', '31', '00', '', '36', '37', '1', null, null, null, '0.00', '6', null, null, '0', '0', '1571061819', '1571061811', '59.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', 'sf', '1111');
INSERT INTO `shop_order` VALUES ('145', '157106223439599', null, '119', '0', '0', '0', '', null, '13168888863', '发给', '31', '00', '', '36', '37', '1', null, null, null, '0.00', '6', null, null, '0', '0', '1571062240', '1571062234', '19.80', '0.00', null, null, '0', '0', '0', '0', null, null, '1', 'sf', '11111');
INSERT INTO `shop_order` VALUES ('146', '157106226851390', null, '119', '0', '0', '0', '', null, '13168888863', '发给', '31', '00', '', '36', '37', '1', null, null, null, '0.00', '1', null, null, '0', '0', '1571062274', '1571062268', '0.00', '0.00', null, null, '0', '0', '0', '0', null, null, '0', null, null);
INSERT INTO `shop_order` VALUES ('147', '157110815075184', null, '111', '0', '0', '0', '', null, '13455555555', '55', '29', '13455555555', '', '36', '37', '1', null, null, null, '0.00', '1', null, null, '0', '0', '1571108154', '1571108150', '398.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('148', '157110824654961', null, '111', '0', '0', '0', '', null, '13455555555', '55', '0', '55', '55', '36', '37', '1', null, null, null, '0.00', '1', null, null, '0', '0', '1571108246', '1571108246', '398.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('149', '157110944680837', null, '111', '0', '0', '0', '', null, '13455555555', '55', '0', '55', '55', '36', '37', '1', null, null, null, '0.00', '1', null, null, '0', '0', '1571109446', '1571109446', '398.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('150', '157111064760306', null, '113', '0', '0', '0', '', null, '13477777777', '77', '32', '77', '', '36', '37', '1', null, null, null, '0.00', '4', null, null, '0', '0', '1571110666', '1571110647', '118.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', 'sf', 'ewe');
INSERT INTO `shop_order` VALUES ('151', '157111142565428', null, '113', '0', '0', '0', '', null, '13477777777', '77', '32', '77', '', '36', '37', '1', null, null, null, '0.00', '4', null, null, '0', '0', '1571111429', '1571111425', '118.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', 'sf', '443');
INSERT INTO `shop_order` VALUES ('152', '157111157136902', null, '113', '0', '0', '0', '', null, '13477777777', '77', '32', '77', '', '36', '37', '1', null, null, null, '0.00', '4', null, null, '0', '0', '1571111596', '1571111571', '89.60', '19.80', null, null, '1', '2', '90', '1', null, null, '0', 'sf', '3232');
INSERT INTO `shop_order` VALUES ('153', '157111204937361', null, '113', '0', '0', '0', '', null, '13477777777', '77', '32', '77', '', '36', '37', '1', null, null, null, '0.00', '4', null, null, '0', '0', '1571112056', '1571112049', '89.60', '19.80', null, null, '1', '2', '90', '1', null, null, '0', 'sf', '243');
INSERT INTO `shop_order` VALUES ('154', '157111222119742', null, '113', '0', '0', '0', '', null, '13477777777', '77', '32', '77', '', '36', '37', '1', null, null, null, '0.00', '4', null, null, '0', '0', '1571112225', '1571112221', '39.60', '0.00', null, null, '0', '0', '0', '0', null, null, '1', 'sf', '4243');
INSERT INTO `shop_order` VALUES ('155', '157111250359251', null, '113', '0', '0', '0', '', null, '13477777777', '77', '32', '77', '', '36', '37', '1', null, null, null, '0.00', '4', null, null, '0', '0', '1571112506', '1571112503', '39.60', '0.00', null, null, '0', '0', '0', '0', null, null, '1', 'sf', '133');
INSERT INTO `shop_order` VALUES ('156', '157114368972094', null, '121', '0', '0', '0', '', null, '13168888865', '不错', '33', '11', '', '36', '37', '1', null, null, null, '0.00', '6', null, null, '0', '0', '1571143697', '1571143689', '398.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', 'sf', '111');
INSERT INTO `shop_order` VALUES ('157', '157114374196690', null, '121', '0', '0', '0', '', null, '13168888865', '不错', '33', '11', '', '36', '37', '1', null, null, null, '0.00', '6', null, null, '0', '0', '1571143747', '1571143741', '59.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', 'sf', '111');
INSERT INTO `shop_order` VALUES ('158', '157114377416437', null, '121', '0', '0', '0', '', null, '13168888865', '不错', '33', '11', '', '36', '37', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1571143774', '1.00', '19.80', null, null, '1', '2', '90', '1', null, null, '0', null, null);
INSERT INTO `shop_order` VALUES ('159', '157114381459397', null, '121', '0', '0', '0', '', null, '13168888865', '不错', '33', '11', '', '36', '37', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1571143814', '1.00', '19.80', null, null, '1', '2', '90', '1', null, null, '0', null, null);
INSERT INTO `shop_order` VALUES ('160', '157114393783053', null, '121', '0', '0', '0', '', null, '13168888865', '不错', '33', '11', '', '36', '37', '1', null, null, null, '0.00', '4', null, null, '0', '0', '0', '1571143937', '1.00', '19.80', null, null, '1', '2', '57', '1', null, null, '1', 'sf', '1111');
INSERT INTO `shop_order` VALUES ('161', '157114398310810', null, '121', '0', '0', '0', '', null, '13168888865', '不错', '33', '11', '', '36', '37', '1', null, null, null, '0.00', '6', null, null, '0', '0', '1571143989', '1571143983', '19.80', '0.00', null, null, '0', '0', '0', '0', null, null, '1', 'sf', '12');
INSERT INTO `shop_order` VALUES ('162', '157114400839731', null, '121', '0', '0', '0', '', null, '13168888865', '不错', '33', '11', '', '36', '37', '1', null, null, null, '0.00', '6', null, null, '0', '0', '1571144014', '1571144008', '0.00', '0.00', null, null, '0', '0', '0', '0', null, null, '0', 'sf', '11');
INSERT INTO `shop_order` VALUES ('163', '157114843056189', null, '123', '0', '0', '0', '', null, '13168888866', '尺寸', '0', '111', '宝宝', '36', '37', '1', null, null, null, '0.00', '1', null, null, '0', '0', '1571148430', '1571148430', '398.00', '0.00', null, null, '0', '0', '0', '0', null, null, '1', null, null);
INSERT INTO `shop_order` VALUES ('164', '157121925194070', null, '122', '0', '0', '0', '', null, '13169999901', '陈', '35', '12', '', '36', '37', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1571219251', '89.60', '19.80', null, null, '1', '2', '90', '1', null, null, '0', null, null);
INSERT INTO `shop_order` VALUES ('165', '157121944876843', null, '122', '0', '0', '0', '', null, '13169999901', '陈', '35', '12', '', '36', '37', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1571219448', '89.60', '19.80', null, null, '1', '2', '90', '1', null, null, '0', null, null);
INSERT INTO `shop_order` VALUES ('166', '157148968393614', null, '122', '0', '0', '0', '', null, '13169999901', '陈', '35', '12', '', '36', '37', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1571489683', '89.60', '19.80', null, null, '1', '2', '90', '1', null, null, '0', null, null);
INSERT INTO `shop_order` VALUES ('167', '157173529292886', null, '122', '0', '0', '0', '', null, '13169999901', '陈', '35', '12', '', '36', '37', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1571735292', '89.60', '19.80', null, null, '1', '2', '90', '1', null, null, '0', null, null);
INSERT INTO `shop_order` VALUES ('168', '157211093890414', null, '123', '0', '0', '0', '', null, '13168888866', '了', '36', '23', '', '36', '37', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1572110938', '1.00', '19.80', null, null, '1', '2', '90', '1', null, null, '0', null, null);
INSERT INTO `shop_order` VALUES ('169', '157211095422716', null, '123', '0', '0', '0', '', null, '13168888866', '了', '36', '23', '', '36', '37', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1572110954', '1.00', '19.80', null, null, '1', '2', '90', '1', null, null, '0', null, null);
INSERT INTO `shop_order` VALUES ('170', '157242315633098', null, '122', '0', '0', '0', '', null, '13169999901', '陈', '35', '12', '', '36', '37', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1572423156', '89.60', '19.80', null, null, '1', '2', '90', '1', null, null, '0', null, null);
INSERT INTO `shop_order` VALUES ('171', '157242316727608', null, '122', '0', '0', '0', '', null, '13169999901', '陈', '35', '12', '', '36', '37', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1572423167', '89.60', '19.80', null, null, '1', '2', '90', '1', null, null, '0', null, null);
INSERT INTO `shop_order` VALUES ('172', '157242320746496', null, '122', '0', '0', '0', '', null, '13169999901', '陈', '35', '12', '', '36', '37', '1', null, null, null, '0.00', '3', null, null, '0', '0', '0', '1572423207', '82.00', '19.80', null, null, '1', '2', '82', '1', null, null, '1', null, null);

-- ----------------------------
-- Table structure for shop_order_goods
-- ----------------------------
DROP TABLE IF EXISTS `shop_order_goods`;
CREATE TABLE `shop_order_goods` (
  `order_goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0' COMMENT '订单id',
  `goods_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品id',
  `name` varchar(255) DEFAULT NULL,
  `model` varchar(64) DEFAULT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `price` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '价格',
  `total` decimal(15,2) NOT NULL DEFAULT '0.00',
  `reward` int(8) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '1' COMMENT '商品数量',
  `attribute_value_id` varchar(255) DEFAULT NULL COMMENT '商品属性',
  `modelis` int(2) DEFAULT NULL COMMENT '所属模块：1=>评价商品；2=>抢购；3=>0元礼品；4=>团购',
  PRIMARY KEY (`order_goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_order_goods
-- ----------------------------
INSERT INTO `shop_order_goods` VALUES ('59', '59', '17', null, null, '0', '50.00', '0.00', '0', '1', '1,', '2');
INSERT INTO `shop_order_goods` VALUES ('60', '60', '17', null, null, '0', '50.00', '0.00', '0', '1', '1,', '2');
INSERT INTO `shop_order_goods` VALUES ('61', '61', '25', null, null, '0', '400.00', '0.00', '0', '1', '1,5,', '5');
INSERT INTO `shop_order_goods` VALUES ('62', '62', '25', null, null, '0', '400.00', '0.00', '0', '1', '1,5,', '5');
INSERT INTO `shop_order_goods` VALUES ('63', '63', '15', null, null, '0', '1.00', '0.00', '0', '3', '1,3,', '3');
INSERT INTO `shop_order_goods` VALUES ('64', '64', '15', null, null, '0', '1.00', '0.00', '0', '3', '1,3,', '3');
INSERT INTO `shop_order_goods` VALUES ('65', '65', '15', null, null, '0', '1.00', '0.00', '0', '3', '1,3,', '3');
INSERT INTO `shop_order_goods` VALUES ('66', '66', '16', null, null, '0', '30.00', '0.00', '0', '1', '3,', '4');
INSERT INTO `shop_order_goods` VALUES ('67', '67', '25', null, null, '0', '400.00', '0.00', '0', '1', '1,5,', '5');
INSERT INTO `shop_order_goods` VALUES ('68', '68', '23', null, null, '0', '50.00', '0.00', '0', '1', '', '1');
INSERT INTO `shop_order_goods` VALUES ('69', '69', '25', null, null, '0', '400.00', '0.00', '0', '1', '1,5,', '5');
INSERT INTO `shop_order_goods` VALUES ('70', '70', '15', null, null, '0', '1.00', '0.00', '0', '1', '1,3,', '3');
INSERT INTO `shop_order_goods` VALUES ('71', '71', '15', null, null, '0', '1.00', '0.00', '0', '1', '1,3,', '3');
INSERT INTO `shop_order_goods` VALUES ('72', '72', '15', null, null, '0', '1.00', '0.00', '0', '1', '1,3,', '3');
INSERT INTO `shop_order_goods` VALUES ('73', '1', '33', null, null, '0', '33.00', '0.00', '0', '7', '', '3');
INSERT INTO `shop_order_goods` VALUES ('74', '2', '39', null, null, '0', '500.00', '0.00', '0', '1', null, '5');
INSERT INTO `shop_order_goods` VALUES ('75', '3', '33', null, null, '0', '1.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('76', '4', '33', null, null, '0', '1.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('77', '5', '33', null, null, '0', '1.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('78', '6', '33', null, null, '0', '1.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('79', '7', '33', null, null, '0', '1.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('80', '8', '36', null, null, '0', '600.00', '0.00', '0', '1', null, '5');
INSERT INTO `shop_order_goods` VALUES ('81', '9', '39', null, null, '0', '500.00', '0.00', '0', '1', '', '5');
INSERT INTO `shop_order_goods` VALUES ('82', '10', '36', null, null, '0', '600.00', '0.00', '0', '1', null, '5');
INSERT INTO `shop_order_goods` VALUES ('83', '11', '38', null, null, '0', '118.00', '0.00', '0', '1', '', '1');
INSERT INTO `shop_order_goods` VALUES ('84', '12', '40', null, null, '0', '39.60', '0.00', '0', '1', '', '4');
INSERT INTO `shop_order_goods` VALUES ('85', '13', '40', null, null, '0', '39.60', '0.00', '0', '1', '', '4');
INSERT INTO `shop_order_goods` VALUES ('86', '14', '33', null, null, '0', '1.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('87', '15', '33', null, null, '0', '1.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('88', '16', '33', null, null, '0', '1.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('89', '17', '33', null, null, '0', '1.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('90', '18', '33', null, null, '0', '1.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('91', '19', '33', null, null, '0', '1.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('92', '20', '33', null, null, '0', '66.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('93', '21', '33', null, null, '0', '66.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('94', '22', '33', null, null, '0', '66.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('95', '23', '33', null, null, '0', '66.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('96', '24', '41', null, null, '0', '0.00', '0.00', '0', '1', '', '2');
INSERT INTO `shop_order_goods` VALUES ('97', '25', '39', null, null, '0', '500.00', '0.00', '0', '1', '', '5');
INSERT INTO `shop_order_goods` VALUES ('98', '26', '33', null, null, '0', '66.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('99', '27', '33', null, null, '0', '66.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('100', '28', '33', null, null, '0', '66.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('101', '29', '39', null, null, '0', '500.00', '0.00', '0', '1', '', '5');
INSERT INTO `shop_order_goods` VALUES ('102', '30', '39', null, null, '0', '500.00', '0.00', '0', '1', null, '5');
INSERT INTO `shop_order_goods` VALUES ('103', '31', '33', null, null, '0', '66.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('104', '32', '38', null, null, '0', '59.00', '0.00', '0', '1', '', '1');
INSERT INTO `shop_order_goods` VALUES ('105', '33', '38', null, null, '0', '59.00', '0.00', '0', '1', '', '1');
INSERT INTO `shop_order_goods` VALUES ('106', '34', '38', null, null, '0', '59.00', '0.00', '0', '1', '', '1');
INSERT INTO `shop_order_goods` VALUES ('107', '35', '40', null, null, '0', '19.80', '0.00', '0', '1', '', '4');
INSERT INTO `shop_order_goods` VALUES ('108', '36', '40', null, null, '0', '19.80', '0.00', '0', '1', '', '4');
INSERT INTO `shop_order_goods` VALUES ('109', '37', '41', null, null, '0', '0.00', '0.00', '0', '1', '', '2');
INSERT INTO `shop_order_goods` VALUES ('110', '38', '40', null, null, '0', '19.80', '0.00', '0', '1', '', '4');
INSERT INTO `shop_order_goods` VALUES ('111', '39', '39', null, null, '0', '500.00', '0.00', '0', '1', '', '5');
INSERT INTO `shop_order_goods` VALUES ('112', '40', '39', null, null, '0', '500.00', '0.00', '0', '1', null, '5');
INSERT INTO `shop_order_goods` VALUES ('113', '41', '48', null, null, '0', '89.60', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('114', '42', '42', null, null, '0', '500.00', '0.00', '0', '1', null, '5');
INSERT INTO `shop_order_goods` VALUES ('115', '43', '43', null, null, '0', '461.00', '0.00', '0', '1', '', '5');
INSERT INTO `shop_order_goods` VALUES ('116', '44', '40', null, null, '0', '39.60', '0.00', '0', '1', '', '4');
INSERT INTO `shop_order_goods` VALUES ('117', '45', '48', null, null, '0', '1.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('118', '46', '48', null, null, '0', '1.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('119', '47', '44', null, null, '0', '398.00', '0.00', '0', '1', null, '5');
INSERT INTO `shop_order_goods` VALUES ('120', '48', '42', null, null, '0', '500.00', '0.00', '0', '1', null, '5');
INSERT INTO `shop_order_goods` VALUES ('121', '49', '48', null, null, '0', '1.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('122', '50', '48', null, null, '0', '1.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('123', '51', '41', null, null, '0', '0.00', '0.00', '0', '1', '', '2');
INSERT INTO `shop_order_goods` VALUES ('124', '52', '40', null, null, '0', '19.80', '0.00', '0', '2', '', '4');
INSERT INTO `shop_order_goods` VALUES ('125', '53', '48', null, null, '0', '1.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('126', '54', '48', null, null, '0', '1.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('127', '55', '38', null, null, '0', '59.00', '0.00', '0', '2', '', '1');
INSERT INTO `shop_order_goods` VALUES ('128', '56', '42', null, null, '0', '500.00', '0.00', '0', '1', '', '5');
INSERT INTO `shop_order_goods` VALUES ('129', '57', '38', null, null, '0', '59.00', '0.00', '0', '1', '', '1');
INSERT INTO `shop_order_goods` VALUES ('130', '58', '48', null, null, '0', '1.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('131', '59', '40', null, null, '0', '19.80', '0.00', '0', '1', '', '4');
INSERT INTO `shop_order_goods` VALUES ('132', '60', '40', null, null, '0', '19.80', '0.00', '0', '1', '', '4');
INSERT INTO `shop_order_goods` VALUES ('133', '61', '38', null, null, '0', '59.00', '0.00', '0', '1', '', '1');
INSERT INTO `shop_order_goods` VALUES ('134', '62', '40', null, null, '0', '19.80', '0.00', '0', '1', '', '4');
INSERT INTO `shop_order_goods` VALUES ('135', '63', '40', null, null, '0', '19.80', '0.00', '0', '2', '', '4');
INSERT INTO `shop_order_goods` VALUES ('136', '64', '44', null, null, '0', '443.00', '0.00', '0', '1', '', '5');
INSERT INTO `shop_order_goods` VALUES ('137', '65', '38', null, null, '0', '59.00', '0.00', '0', '1', '', '1');
INSERT INTO `shop_order_goods` VALUES ('138', '66', '40', null, null, '0', '19.80', '0.00', '0', '1', '', '4');
INSERT INTO `shop_order_goods` VALUES ('139', '67', '32', null, null, '0', '58.00', '0.00', '0', '1', '', '1');
INSERT INTO `shop_order_goods` VALUES ('140', '68', '44', null, null, '0', '398.00', '0.00', '0', '1', null, '5');
INSERT INTO `shop_order_goods` VALUES ('141', '69', '44', null, null, '0', '398.00', '0.00', '0', '1', null, '5');
INSERT INTO `shop_order_goods` VALUES ('142', '70', '44', null, null, '0', '443.00', '0.00', '0', '1', '', '5');
INSERT INTO `shop_order_goods` VALUES ('143', '71', '44', null, null, '0', '443.00', '0.00', '0', '1', '', '5');
INSERT INTO `shop_order_goods` VALUES ('144', '72', '38', null, null, '0', '59.00', '0.00', '0', '2', '', '1');
INSERT INTO `shop_order_goods` VALUES ('145', '73', '34', null, null, '0', '96.00', '0.00', '0', '1', '', '1');
INSERT INTO `shop_order_goods` VALUES ('146', '74', '41', null, null, '0', '0.00', '0.00', '0', '1', '', '2');
INSERT INTO `shop_order_goods` VALUES ('147', '75', '43', null, null, '0', '461.00', '0.00', '0', '1', '', '5');
INSERT INTO `shop_order_goods` VALUES ('148', '76', '43', null, null, '0', '461.00', '0.00', '0', '1', '', '5');
INSERT INTO `shop_order_goods` VALUES ('149', '77', '38', null, null, '0', '59.00', '0.00', '0', '1', '', '1');
INSERT INTO `shop_order_goods` VALUES ('150', '78', '47', null, null, '0', '82.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('151', '79', '47', null, null, '0', '82.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('152', '80', '47', null, null, '0', '82.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('153', '81', '47', null, null, '0', '82.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('154', '82', '47', null, null, '0', '82.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('155', '83', '47', null, null, '0', '82.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('156', '84', '47', null, null, '0', '82.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('157', '85', '48', null, null, '0', '89.60', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('158', '86', '48', null, null, '0', '89.60', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('159', '87', '40', null, null, '0', '19.80', '0.00', '0', '1', '', '4');
INSERT INTO `shop_order_goods` VALUES ('160', '88', '38', null, null, '0', '59.00', '0.00', '0', '1', '', '1');
INSERT INTO `shop_order_goods` VALUES ('161', '89', '34', null, null, '0', '96.00', '0.00', '0', '1', '', '1');
INSERT INTO `shop_order_goods` VALUES ('162', '90', '34', null, null, '0', '96.00', '0.00', '0', '1', '', '1');
INSERT INTO `shop_order_goods` VALUES ('163', '91', '38', null, null, '0', '59.00', '0.00', '0', '1', '', '1');
INSERT INTO `shop_order_goods` VALUES ('164', '92', '40', null, null, '0', '19.80', '0.00', '0', '1', '', '4');
INSERT INTO `shop_order_goods` VALUES ('165', '93', '46', null, null, '0', '1.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('166', '94', '38', null, null, '0', '118.00', '0.00', '0', '1', '', '1');
INSERT INTO `shop_order_goods` VALUES ('167', '95', '41', null, null, '0', '39.60', '0.00', '0', '1', '', '2');
INSERT INTO `shop_order_goods` VALUES ('168', '96', '41', null, null, '0', '39.60', '0.00', '0', '1', '', '2');
INSERT INTO `shop_order_goods` VALUES ('169', '97', '38', null, null, '0', '118.00', '0.00', '0', '1', '', '1');
INSERT INTO `shop_order_goods` VALUES ('170', '98', '44', null, null, '0', '443.00', '0.00', '0', '1', '', '5');
INSERT INTO `shop_order_goods` VALUES ('171', '99', '40', null, null, '0', '19.80', '0.00', '0', '1', '', '4');
INSERT INTO `shop_order_goods` VALUES ('172', '100', '48', null, null, '0', '1.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('173', '101', '48', null, null, '0', '1.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('174', '102', '48', null, null, '0', '1.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('175', '103', '44', null, null, '0', '443.00', '0.00', '0', '1', '', '5');
INSERT INTO `shop_order_goods` VALUES ('176', '104', '44', null, null, '0', '443.00', '0.00', '0', '1', '', '5');
INSERT INTO `shop_order_goods` VALUES ('177', '105', '44', null, null, '0', '443.00', '0.00', '0', '1', '', '5');
INSERT INTO `shop_order_goods` VALUES ('178', '106', '44', null, null, '0', '443.00', '0.00', '0', '1', '', '5');
INSERT INTO `shop_order_goods` VALUES ('179', '107', '43', null, null, '0', '461.00', '0.00', '0', '1', '', '5');
INSERT INTO `shop_order_goods` VALUES ('180', '108', '42', null, null, '0', '561.00', '0.00', '0', '1', '', '5');
INSERT INTO `shop_order_goods` VALUES ('181', '109', '47', null, null, '0', '82.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('182', '110', '43', null, null, '0', '461.00', '0.00', '0', '1', '', '5');
INSERT INTO `shop_order_goods` VALUES ('183', '111', '48', null, null, '0', '89.60', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('184', '112', '40', null, null, '0', '19.80', '0.00', '0', '1', '', '4');
INSERT INTO `shop_order_goods` VALUES ('185', '113', '43', null, null, '0', '461.00', '0.00', '0', '1', '', '5');
INSERT INTO `shop_order_goods` VALUES ('186', '114', '48', null, null, '0', '89.60', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('187', '115', '38', null, null, '0', '118.00', '0.00', '0', '1', '', '1');
INSERT INTO `shop_order_goods` VALUES ('188', '116', '44', null, null, '0', '443.00', '0.00', '0', '1', '', '5');
INSERT INTO `shop_order_goods` VALUES ('189', '117', '48', null, null, '0', '89.60', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('190', '118', '44', null, null, '0', '443.00', '0.00', '0', '1', '', '5');
INSERT INTO `shop_order_goods` VALUES ('191', '119', '41', null, null, '0', '0.00', '0.00', '0', '1', '', '2');
INSERT INTO `shop_order_goods` VALUES ('192', '120', '48', null, null, '0', '1.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('193', '121', '48', null, null, '0', '1.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('194', '122', '38', null, null, '0', '59.00', '0.00', '0', '1', '', '1');
INSERT INTO `shop_order_goods` VALUES ('195', '123', '40', null, null, '0', '19.80', '0.00', '0', '1', '', '4');
INSERT INTO `shop_order_goods` VALUES ('196', '124', '44', null, null, '0', '398.00', '0.00', '0', '1', null, '5');
INSERT INTO `shop_order_goods` VALUES ('197', '125', '44', null, null, '0', '443.00', '0.00', '0', '1', '', '5');
INSERT INTO `shop_order_goods` VALUES ('198', '126', '38', null, null, '0', '118.00', '0.00', '0', '1', '', '1');
INSERT INTO `shop_order_goods` VALUES ('199', '127', '44', null, null, '0', '443.00', '0.00', '0', '1', '', '5');
INSERT INTO `shop_order_goods` VALUES ('200', '128', '38', null, null, '0', '59.00', '0.00', '0', '1', '', '1');
INSERT INTO `shop_order_goods` VALUES ('201', '129', '42', null, null, '0', '561.00', '0.00', '0', '1', '', '5');
INSERT INTO `shop_order_goods` VALUES ('202', '130', '44', null, null, '0', '443.00', '0.00', '0', '1', '', '5');
INSERT INTO `shop_order_goods` VALUES ('203', '131', '38', null, null, '0', '118.00', '0.00', '0', '1', '', '1');
INSERT INTO `shop_order_goods` VALUES ('204', '132', '48', null, null, '0', '89.60', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('205', '133', '47', null, null, '0', '82.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('206', '134', '40', null, null, '0', '39.60', '0.00', '0', '1', '', '4');
INSERT INTO `shop_order_goods` VALUES ('207', '135', '43', null, null, '0', '408.00', '0.00', '0', '1', null, '5');
INSERT INTO `shop_order_goods` VALUES ('208', '136', '42', null, null, '0', '500.00', '0.00', '0', '1', null, '5');
INSERT INTO `shop_order_goods` VALUES ('209', '137', '41', null, null, '0', '39.60', '0.00', '0', '1', '', '2');
INSERT INTO `shop_order_goods` VALUES ('210', '138', '44', null, null, '0', '443.00', '0.00', '0', '1', '', '5');
INSERT INTO `shop_order_goods` VALUES ('211', '139', '44', null, null, '0', '398.00', '0.00', '0', '1', null, '5');
INSERT INTO `shop_order_goods` VALUES ('212', '140', '44', null, null, '0', '443.00', '0.00', '0', '1', '', '5');
INSERT INTO `shop_order_goods` VALUES ('213', '141', '38', null, null, '0', '59.00', '0.00', '0', '1', '', '1');
INSERT INTO `shop_order_goods` VALUES ('217', '145', '40', null, null, '0', '19.80', '0.00', '0', '1', '', '4');
INSERT INTO `shop_order_goods` VALUES ('218', '146', '41', null, null, '0', '0.00', '0.00', '0', '1', '', '2');
INSERT INTO `shop_order_goods` VALUES ('219', '147', '44', null, null, '0', '443.00', '0.00', '0', '1', '', '5');
INSERT INTO `shop_order_goods` VALUES ('220', '148', '44', null, null, '0', '398.00', '0.00', '0', '1', null, '5');
INSERT INTO `shop_order_goods` VALUES ('221', '149', '44', null, null, '0', '398.00', '0.00', '0', '1', null, '5');
INSERT INTO `shop_order_goods` VALUES ('222', '150', '38', null, null, '0', '118.00', '0.00', '0', '1', '', '1');
INSERT INTO `shop_order_goods` VALUES ('223', '151', '38', null, null, '0', '118.00', '0.00', '0', '1', '', '1');
INSERT INTO `shop_order_goods` VALUES ('224', '152', '48', null, null, '0', '89.60', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('225', '153', '48', null, null, '0', '89.60', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('226', '154', '40', null, null, '0', '39.60', '0.00', '0', '1', '', '4');
INSERT INTO `shop_order_goods` VALUES ('227', '155', '40', null, null, '0', '39.60', '0.00', '0', '1', '', '4');
INSERT INTO `shop_order_goods` VALUES ('228', '156', '44', null, null, '0', '443.00', '0.00', '0', '1', '', '5');
INSERT INTO `shop_order_goods` VALUES ('229', '157', '38', null, null, '0', '59.00', '0.00', '0', '1', '', '1');
INSERT INTO `shop_order_goods` VALUES ('230', '158', '48', null, null, '0', '1.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('231', '159', '48', null, null, '0', '1.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('232', '160', '46', null, null, '0', '1.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('233', '161', '40', null, null, '0', '19.80', '0.00', '0', '1', '', '4');
INSERT INTO `shop_order_goods` VALUES ('234', '162', '41', null, null, '0', '0.00', '0.00', '0', '1', '', '2');
INSERT INTO `shop_order_goods` VALUES ('235', '163', '44', null, null, '0', '398.00', '0.00', '0', '1', null, '5');
INSERT INTO `shop_order_goods` VALUES ('236', '164', '48', null, null, '0', '89.60', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('237', '165', '48', null, null, '0', '89.60', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('238', '166', '48', null, null, '0', '89.60', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('239', '167', '48', null, null, '0', '89.60', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('240', '168', '48', null, null, '0', '1.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('241', '169', '48', null, null, '0', '1.00', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('242', '170', '48', null, null, '0', '89.60', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('243', '171', '48', null, null, '0', '89.60', '0.00', '0', '1', '', '3');
INSERT INTO `shop_order_goods` VALUES ('244', '172', '47', null, null, '0', '82.00', '0.00', '0', '1', '', '3');

-- ----------------------------
-- Table structure for shop_order_history
-- ----------------------------
DROP TABLE IF EXISTS `shop_order_history`;
CREATE TABLE `shop_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `order_status_id` int(5) NOT NULL DEFAULT '0',
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text,
  `date_added` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_order_history
-- ----------------------------

-- ----------------------------
-- Table structure for shop_order_option
-- ----------------------------
DROP TABLE IF EXISTS `shop_order_option`;
CREATE TABLE `shop_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `goods_id` int(11) NOT NULL DEFAULT '0',
  `order_goods_id` int(11) NOT NULL DEFAULT '0',
  `option_id` int(11) NOT NULL DEFAULT '0',
  `option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `value` text,
  `type` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_order_option
-- ----------------------------

-- ----------------------------
-- Table structure for shop_order_status
-- ----------------------------
DROP TABLE IF EXISTS `shop_order_status`;
CREATE TABLE `shop_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`order_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='订单状态';

-- ----------------------------
-- Records of shop_order_status
-- ----------------------------
INSERT INTO `shop_order_status` VALUES ('1', '待发货一');
INSERT INTO `shop_order_status` VALUES ('3', '待付款');
INSERT INTO `shop_order_status` VALUES ('4', '待收货');
INSERT INTO `shop_order_status` VALUES ('5', '已取消订单');
INSERT INTO `shop_order_status` VALUES ('6', '已完成');
INSERT INTO `shop_order_status` VALUES ('7', '待取消订单');

-- ----------------------------
-- Table structure for shop_order_total
-- ----------------------------
DROP TABLE IF EXISTS `shop_order_total`;
CREATE TABLE `shop_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `value` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_order_total
-- ----------------------------

-- ----------------------------
-- Table structure for shop_points
-- ----------------------------
DROP TABLE IF EXISTS `shop_points`;
CREATE TABLE `shop_points` (
  `points_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `order_num_alias` varchar(64) DEFAULT NULL,
  `points` int(11) NOT NULL DEFAULT '0',
  `description` varchar(64) DEFAULT NULL,
  `prefix` int(5) NOT NULL DEFAULT '0' COMMENT '1增加，2减少',
  `creat_time` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '1.下单2.管理员操作',
  `admin_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`points_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='积分记录';

-- ----------------------------
-- Records of shop_points
-- ----------------------------

-- ----------------------------
-- Table structure for shop_reward
-- ----------------------------
DROP TABLE IF EXISTS `shop_reward`;
CREATE TABLE `shop_reward` (
  `reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '会员id',
  `interest` decimal(15,2) DEFAULT NULL COMMENT '返现积分',
  `generate_time` varchar(255) DEFAULT NULL COMMENT '生成时间',
  `status` int(5) DEFAULT NULL COMMENT '1->有效, 2->无效',
  `order_id` int(11) DEFAULT NULL COMMENT '订单id',
  PRIMARY KEY (`reward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_reward
-- ----------------------------
INSERT INTO `shop_reward` VALUES ('30', '31', '0.00', '1569073717', '2', '13');
INSERT INTO `shop_reward` VALUES ('31', '47', '0.00', '1569660802', '2', '32');
INSERT INTO `shop_reward` VALUES ('32', '50', '0.00', '1569663145', '1', '37');
INSERT INTO `shop_reward` VALUES ('33', '50', '1.00', '1569663514', '1', '39');
INSERT INTO `shop_reward` VALUES ('34', '52', '0.00', '1569663956', '1', '40');
INSERT INTO `shop_reward` VALUES ('35', '53', '0.00', '1569664040', '1', '41');
INSERT INTO `shop_reward` VALUES ('36', '51', '0.00', '1569665967', '2', '45');
INSERT INTO `shop_reward` VALUES ('37', '28', '0.00', '1569747495', '2', '46');
INSERT INTO `shop_reward` VALUES ('38', '28', '0.00', '1569811519', '2', '47');
INSERT INTO `shop_reward` VALUES ('39', '54', '1.00', '1569813428', '2', '48');
INSERT INTO `shop_reward` VALUES ('40', '52', '0.00', '1569815528', '1', '49');
INSERT INTO `shop_reward` VALUES ('41', '52', '0.00', '1569815964', '1', '50');
INSERT INTO `shop_reward` VALUES ('42', '52', '0.00', '1569821831', '1', '51');
INSERT INTO `shop_reward` VALUES ('43', '52', '0.00', '1569822946', '1', '52');
INSERT INTO `shop_reward` VALUES ('44', '52', '0.00', '1569824357', '1', '53');
INSERT INTO `shop_reward` VALUES ('45', '48', '0.00', '1569831082', '1', '54');
INSERT INTO `shop_reward` VALUES ('46', '48', '0.00', '1569831365', '1', '55');
INSERT INTO `shop_reward` VALUES ('47', '48', '0.00', '1569832180', '1', '57');
INSERT INTO `shop_reward` VALUES ('48', '48', '0.00', '1569832387', '2', '58');
INSERT INTO `shop_reward` VALUES ('49', '48', '0.00', '1569832658', '1', '59');
INSERT INTO `shop_reward` VALUES ('50', '48', '0.00', '1569832795', '1', '60');
INSERT INTO `shop_reward` VALUES ('51', '57', '0.00', '1569874678', '2', '61');
INSERT INTO `shop_reward` VALUES ('52', '56', '0.00', '1569875074', '1', '65');
INSERT INTO `shop_reward` VALUES ('53', '56', '0.00', '1569875147', '1', '66');
INSERT INTO `shop_reward` VALUES ('54', '56', '1.00', '1569875244', '2', '68');
INSERT INTO `shop_reward` VALUES ('55', '59', '0.00', '1570198700', '1', '4');
INSERT INTO `shop_reward` VALUES ('56', '59', '0.00', '1570198805', '1', '5');
INSERT INTO `shop_reward` VALUES ('57', '59', '0.00', '1570199352', '1', '7');
INSERT INTO `shop_reward` VALUES ('58', '66', '0.00', '1570346391', '2', '9');
INSERT INTO `shop_reward` VALUES ('59', '69', '0.00', '1570348755', '1', '11');
INSERT INTO `shop_reward` VALUES ('60', '69', '0.00', '1570351143', '2', '13');
INSERT INTO `shop_reward` VALUES ('61', '67', '0.00', '1570357106', '1', '14');
INSERT INTO `shop_reward` VALUES ('62', '67', '0.00', '1570357293', '2', '15');
INSERT INTO `shop_reward` VALUES ('63', '67', '0.00', '1570357367', '2', '16');
INSERT INTO `shop_reward` VALUES ('64', '67', '0.00', '1570357695', '2', '17');
INSERT INTO `shop_reward` VALUES ('65', '67', '0.00', '1570358665', '2', '21');
INSERT INTO `shop_reward` VALUES ('66', '67', '0.00', '1570359613', '2', '24');
INSERT INTO `shop_reward` VALUES ('67', '78', '0.00', '1570442094', '2', '29');
INSERT INTO `shop_reward` VALUES ('68', '78', '0.00', '1570443206', '2', '31');
INSERT INTO `shop_reward` VALUES ('69', '78', '0.00', '1570451454', '1', '34');
INSERT INTO `shop_reward` VALUES ('70', '78', '0.00', '1570452481', '2', '36');
INSERT INTO `shop_reward` VALUES ('71', '78', '0.00', '1570452774', '2', '37');
INSERT INTO `shop_reward` VALUES ('72', '78', '0.00', '1570525207', '2', '38');
INSERT INTO `shop_reward` VALUES ('73', '80', '0.00', '1570525630', '2', '39');
INSERT INTO `shop_reward` VALUES ('74', '84', '0.00', '1570716836', '2', '49');
INSERT INTO `shop_reward` VALUES ('75', '84', '0.00', '1570716867', '2', '49');
INSERT INTO `shop_reward` VALUES ('76', '84', '0.00', '1570716877', '2', '49');
INSERT INTO `shop_reward` VALUES ('77', '84', '0.00', '1570717157', '2', '51');
INSERT INTO `shop_reward` VALUES ('78', '84', '0.00', '1570717340', '2', '52');
INSERT INTO `shop_reward` VALUES ('79', '84', '0.00', '1570717670', '2', '55');
INSERT INTO `shop_reward` VALUES ('80', '84', '0.00', '1570717717', '2', '56');
INSERT INTO `shop_reward` VALUES ('81', '86', '0.00', '1570718380', '2', '61');
INSERT INTO `shop_reward` VALUES ('82', '86', '0.00', '1570718446', '2', '62');
INSERT INTO `shop_reward` VALUES ('83', '86', '0.00', '1570718465', '2', '63');
INSERT INTO `shop_reward` VALUES ('84', '87', '0.00', '1570720524', '1', '64');
INSERT INTO `shop_reward` VALUES ('85', '87', '0.00', '1570720664', '1', '65');
INSERT INTO `shop_reward` VALUES ('86', '87', '0.00', '1570720691', '1', '66');
INSERT INTO `shop_reward` VALUES ('87', '87', '0.00', '1570720946', '1', '67');
INSERT INTO `shop_reward` VALUES ('88', '90', '0.00', '1570722368', '2', '70');
INSERT INTO `shop_reward` VALUES ('89', '92', '0.00', '1570724567', '2', '71');
INSERT INTO `shop_reward` VALUES ('90', '92', '0.00', '1570724588', '1', '72');
INSERT INTO `shop_reward` VALUES ('91', '92', '0.00', '1570770884', '1', '73');
INSERT INTO `shop_reward` VALUES ('92', '92', '0.00', '1570770929', '1', '74');
INSERT INTO `shop_reward` VALUES ('93', '96', '0.00', '1570784834', '2', '75');
INSERT INTO `shop_reward` VALUES ('94', '97', '0.00', '1570784914', '2', '76');
INSERT INTO `shop_reward` VALUES ('95', '97', '0.00', '1570879017', '2', '93');
INSERT INTO `shop_reward` VALUES ('96', '101', '0.00', '1570890813', '2', '110');
INSERT INTO `shop_reward` VALUES ('97', '101', '0.00', '1570891116', '2', '111');
INSERT INTO `shop_reward` VALUES ('98', '96', '0.00', '1570891966', '2', '112');
INSERT INTO `shop_reward` VALUES ('99', '96', '0.00', '1570891987', '2', '112');
INSERT INTO `shop_reward` VALUES ('100', '101', '0.00', '1570895060', '2', '113');
INSERT INTO `shop_reward` VALUES ('101', '101', '0.00', '1570895369', '2', '115');
INSERT INTO `shop_reward` VALUES ('102', '101', '0.00', '1571018510', '2', '116');
INSERT INTO `shop_reward` VALUES ('103', '103', '0.00', '1571032775', '2', '118');
INSERT INTO `shop_reward` VALUES ('104', '103', '0.00', '1571032838', '2', '119');
INSERT INTO `shop_reward` VALUES ('105', '103', '0.00', '1571032890', '2', '121');
INSERT INTO `shop_reward` VALUES ('106', '103', '0.00', '1571032943', '2', '122');
INSERT INTO `shop_reward` VALUES ('107', '103', '0.00', '1571032964', '2', '123');
INSERT INTO `shop_reward` VALUES ('108', '105', '0.00', '1571033999', '2', '127');
INSERT INTO `shop_reward` VALUES ('109', '105', '0.00', '1571034024', '1', '128');
INSERT INTO `shop_reward` VALUES ('110', '108', '0.00', '1571035143', '2', '129');
INSERT INTO `shop_reward` VALUES ('111', '110', '0.00', '1571035358', '2', '130');
INSERT INTO `shop_reward` VALUES ('112', '111', '0.00', '1571035496', '1', '131');
INSERT INTO `shop_reward` VALUES ('113', '111', '0.00', '1571035726', '1', '132');
INSERT INTO `shop_reward` VALUES ('114', '111', '0.00', '1571035788', '1', '133');
INSERT INTO `shop_reward` VALUES ('115', '111', '0.00', '1571035962', '1', '134');
INSERT INTO `shop_reward` VALUES ('116', '111', '0.00', '1571037325', '2', '137');
INSERT INTO `shop_reward` VALUES ('117', '117', '0.00', '1571060363', '2', '138');
INSERT INTO `shop_reward` VALUES ('118', '119', '0.00', '1571061446', '2', '140');
INSERT INTO `shop_reward` VALUES ('119', '119', '0.00', '1571061819', '1', '141');
INSERT INTO `shop_reward` VALUES ('120', '119', '0.00', '1571062240', '1', '145');
INSERT INTO `shop_reward` VALUES ('121', '119', '0.00', '1571062274', '2', '146');
INSERT INTO `shop_reward` VALUES ('122', '111', '0.00', '1571108154', '2', '147');
INSERT INTO `shop_reward` VALUES ('123', '113', '0.00', '1571110666', '2', '150');
INSERT INTO `shop_reward` VALUES ('124', '113', '0.00', '1571111429', '2', '151');
INSERT INTO `shop_reward` VALUES ('125', '113', '0.00', '1571111596', '2', '152');
INSERT INTO `shop_reward` VALUES ('126', '113', '0.00', '1571112056', '2', '153');
INSERT INTO `shop_reward` VALUES ('127', '113', '0.00', '1571112225', '2', '154');
INSERT INTO `shop_reward` VALUES ('128', '113', '0.00', '1571112506', '2', '155');
INSERT INTO `shop_reward` VALUES ('129', '121', '0.00', '1571143697', '1', '156');
INSERT INTO `shop_reward` VALUES ('130', '121', '0.00', '1571143747', '1', '157');
INSERT INTO `shop_reward` VALUES ('131', '121', '0.00', '1571143989', '1', '161');
INSERT INTO `shop_reward` VALUES ('132', '121', '0.00', '1571144014', '1', '162');

-- ----------------------------
-- Table structure for shop_test
-- ----------------------------
DROP TABLE IF EXISTS `shop_test`;
CREATE TABLE `shop_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `info` text,
  `create_time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='调试测试';

-- ----------------------------
-- Records of shop_test
-- ----------------------------

-- ----------------------------
-- Table structure for shop_transport
-- ----------------------------
DROP TABLE IF EXISTS `shop_transport`;
CREATE TABLE `shop_transport` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '运费模板ID',
  `title` varchar(30) DEFAULT NULL COMMENT '运费模板名称',
  `update_time` int(10) unsigned DEFAULT '0' COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='运费模板';

-- ----------------------------
-- Records of shop_transport
-- ----------------------------
INSERT INTO `shop_transport` VALUES ('1', '圆通', '1569652285');
INSERT INTO `shop_transport` VALUES ('3', '韵达', '1568278535');
INSERT INTO `shop_transport` VALUES ('4', '免运费', '1569655034');
INSERT INTO `shop_transport` VALUES ('5', '19.8运费', '1569655087');

-- ----------------------------
-- Table structure for shop_transport_extend
-- ----------------------------
DROP TABLE IF EXISTS `shop_transport_extend`;
CREATE TABLE `shop_transport_extend` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '运费模板扩展ID',
  `area_id` text COMMENT '市级地区ID组成的串，以，隔开，两端也有，',
  `top_area_id` text COMMENT '省级地区ID组成的串，以，隔开，两端也有，',
  `area_name` text COMMENT '地区name组成的串，以，隔开',
  `snum` mediumint(8) unsigned DEFAULT '1' COMMENT '首重',
  `sprice` decimal(10,2) DEFAULT '0.00' COMMENT '首重运费',
  `xnum` mediumint(8) unsigned DEFAULT '1' COMMENT '续重',
  `xprice` decimal(10,2) DEFAULT '0.00' COMMENT '续重运费',
  `is_default` enum('1','2') DEFAULT '2' COMMENT '是否默认运费1是2否',
  `transport_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '运费模板ID',
  `transport_title` varchar(60) DEFAULT NULL COMMENT '运费模板',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='运费模板扩展表';

-- ----------------------------
-- Records of shop_transport_extend
-- ----------------------------
INSERT INTO `shop_transport_extend` VALUES ('15', '', '', '全国', '1', '1.00', '1', '1.00', '1', '3', '韵达');
INSERT INTO `shop_transport_extend` VALUES ('16', ',19,294,308,309,307,306,305,295,296,297,298,299,300,301,302,303,304,289,290,291,292,293,', ',19,', '广东', '1', '10.00', '1', '1.00', '2', '3', '韵达');
INSERT INTO `shop_transport_extend` VALUES ('25', '', '', '全国', '1', '5.00', '1', '3.00', '1', '1', '圆通');
INSERT INTO `shop_transport_extend` VALUES ('26', ',11,180,181,182,183,184,185,179,178,177,175,176,14,212,213,214,215,216,217,218,219,220,221,222,12,186,187,188,189,190,191,202,192,193,194,195,196,197,198,199,200,201,10,162,163,164,165,166,167,168,169,170,171,172,173,174,9,39,15,231,232,233,234,235,236,237,238,239,230,229,228,223,224,225,226,227,5,95,106,96,97,98,99,100,101,102,103,104,105,4,84,85,86,87,88,89,90,91,92,93,94,1,36,3,83,82,81,80,73,74,75,76,77,78,79,2,40,', ',11,14,12,10,9,15,5,4,1,3,2,', '浙江,江西,安徽,江苏,上海,山东,内蒙古,山西,北京,河北,天津', '1', '5.00', '1', '3.00', '2', '1', '圆通');
INSERT INTO `shop_transport_extend` VALUES ('27', ',17,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,16,243,257,256,255,254,244,245,246,247,248,249,250,251,252,253,242,240,241,18,283,284,285,286,287,288,282,281,280,275,276,277,278,279,20,310,311,312,313,314,315,316,317,318,319,320,321,322,323,21,334,335,336,337,338,339,340,341,342,343,333,332,331,324,325,326,327,328,329,330,344,19,294,308,309,307,306,305,295,296,297,298,299,300,301,302,303,304,289,290,291,292,293,13,205,206,207,208,209,210,211,204,203,', ',17,16,18,20,21,19,13,', '湖北,河南,湖南,广西,海南,广东,福建', '1', '5.00', '1', '3.00', '2', '1', '圆通');
INSERT INTO `shop_transport_extend` VALUES ('28', ',30,474,470,471,472,473,31,489,490,491,492,488,477,478,479,480,481,482,483,484,485,486,476,475,487,29,462,463,464,465,466,467,468,469,28,451,452,453,454,455,456,457,458,459,460,450,449,448,461,27,438,439,440,441,442,443,444,445,446,447,24,406,407,408,409,410,411,412,413,414,26,431,432,433,434,435,436,437,25,426,427,428,429,430,425,424,423,415,416,417,418,419,420,421,422,23,399,400,401,402,403,404,405,398,397,386,387,388,389,390,391,392,393,394,395,396,385,22,62,', ',30,31,29,28,27,24,26,25,23,22,', '宁夏,新疆,青海,甘肃,陕西,贵州,西藏,云南,四川,重庆', '1', '8.00', '1', '5.00', '2', '1', '圆通');
INSERT INTO `shop_transport_extend` VALUES ('29', '', '', '全国', '1', '0.00', '1', '0.00', '1', '4', '免运费');
INSERT INTO `shop_transport_extend` VALUES ('30', '', '', '全国', '1', '19.80', '1', '19.80', '1', '5', '19.8运费');

-- ----------------------------
-- Table structure for shop_upgrade_order
-- ----------------------------
DROP TABLE IF EXISTS `shop_upgrade_order`;
CREATE TABLE `shop_upgrade_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '操作者uid',
  `toid` int(11) DEFAULT NULL COMMENT '被升级者id',
  `price` decimal(10,2) DEFAULT NULL COMMENT '扣除金额',
  `time` int(11) DEFAULT NULL COMMENT '提交时间',
  `username` varchar(10) DEFAULT NULL COMMENT '收货人姓名',
  `phone` char(12) DEFAULT NULL COMMENT '手机号码',
  `address` varchar(255) DEFAULT NULL COMMENT '收货地址',
  `city_id` int(11) DEFAULT '0' COMMENT '市',
  `province_id` int(11) DEFAULT '0' COMMENT '省',
  `country_id` int(11) DEFAULT '0' COMMENT '县乡',
  `status` int(2) DEFAULT '1' COMMENT '1=>未处理；2=>已发货',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_upgrade_order
-- ----------------------------
INSERT INTO `shop_upgrade_order` VALUES ('8', '29', '31', '400.00', '1569074199', '测试4', '13244444444', '东城', '36', '1', '37', '1');

-- ----------------------------
-- Table structure for shop_user
-- ----------------------------
DROP TABLE IF EXISTS `shop_user`;
CREATE TABLE `shop_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `uid` varchar(10) NOT NULL COMMENT '用户生成id',
  `user_name` varchar(100) DEFAULT '' COMMENT '用户名',
  `user_phone` varchar(100) NOT NULL COMMENT '手机号',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `pay_password` varchar(255) DEFAULT '' COMMENT '支付密码',
  `user_retime` varchar(255) NOT NULL COMMENT '注册时间',
  `user_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `status` varchar(20) DEFAULT '1' COMMENT '1=>激活，2=>冻结',
  `lastip` varchar(255) DEFAULT NULL COMMENT '登录ip地址',
  `invitation_id` int(11) DEFAULT NULL COMMENT '邀请人id',
  `vip_grade` int(2) DEFAULT '1' COMMENT '用户等级',
  `is_ggao` int(1) NOT NULL DEFAULT '1' COMMENT '1=允许发布; 0=不允许',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_user
-- ----------------------------
INSERT INTO `shop_user` VALUES ('59', 'A12345', '测试01', '13211111111', '96e79218965eb72c92a549dd5a330112', 'e3ceb5881a0a1fdaad01296d7554868d', '1569891285', 'heads/1345c6fe826f74bd753904b2e3db23c2.png', '1', null, null, '2', '1');
INSERT INTO `shop_user` VALUES ('84', '9baa32', '', '13168888836', '96e79218965eb72c92a549dd5a330112', 'e3ceb5881a0a1fdaad01296d7554868d', '1570711623', '', '1', null, '59', '4', '1');
INSERT INTO `shop_user` VALUES ('85', 'e78fdb', '', '13168888837', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', '1570712438', null, '1', null, '84', '2', '1');
INSERT INTO `shop_user` VALUES ('86', '615f14', '', '13168888838', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', '1570712495', null, '1', null, '84', '2', '1');
INSERT INTO `shop_user` VALUES ('87', 'ae1679', '', '13168888839', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', '1570712527', '', '1', null, '84', '3', '1');
INSERT INTO `shop_user` VALUES ('88', 'c64d12', '', '13168888840', 'e10adc3949ba59abbe56e057f20f883e', '', '1570720585', '', '1', null, '87', '3', '1');
INSERT INTO `shop_user` VALUES ('89', 'bf00dc', '', '13168888841', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', '1570721815', null, '1', null, '88', '2', '1');
INSERT INTO `shop_user` VALUES ('90', 'a2eac8', '', '13168888842', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', '1570722241', null, '1', null, '89', '2', '1');
INSERT INTO `shop_user` VALUES ('91', 'b4881d', '', '13168888843', 'e10adc3949ba59abbe56e057f20f883e', '', '1570724415', null, '1', null, '90', '1', '1');
INSERT INTO `shop_user` VALUES ('92', 'e33496', '', '13168888844', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', '1570724445', null, '1', null, '91', '2', '1');
INSERT INTO `shop_user` VALUES ('93', 'bca77a', '', '13566701985', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', '1570752774', null, '1', null, '92', '1', '1');
INSERT INTO `shop_user` VALUES ('94', '00ed4d', '', '13168888845', 'e10adc3949ba59abbe56e057f20f883e', '', '1570754973', null, '1', null, '92', '1', '1');
INSERT INTO `shop_user` VALUES ('95', 'abc123', 'mc001', '13311111111', '96e79218965eb72c92a549dd5a330112', 'e3ceb5881a0a1fdaad01296d7554868d', '1570762505', '', '1', null, null, '1', '1');
INSERT INTO `shop_user` VALUES ('96', 'ca6786', '', '13322222222', 'e10adc3949ba59abbe56e057f20f883e', 'e3ceb5881a0a1fdaad01296d7554868d', '1570784636', '', '1', null, '95', '2', '1');
INSERT INTO `shop_user` VALUES ('97', '78cb63', '', '13333333333', 'e10adc3949ba59abbe56e057f20f883e', 'e3ceb5881a0a1fdaad01296d7554868d', '1570784677', '', '1', null, '96', '2', '1');
INSERT INTO `shop_user` VALUES ('99', 'ffcd95', '', '15989009688', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', '1570882833', null, '1', null, '97', '2', '1');
INSERT INTO `shop_user` VALUES ('100', '4a0fdd', '', '13570393608', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', '1570884286', null, '1', null, '99', '2', '1');
INSERT INTO `shop_user` VALUES ('101', 'abc444', '', '13344444444', '96e79218965eb72c92a549dd5a330112', 'e3ceb5881a0a1fdaad01296d7554868d', '1570885224', '', '1', null, '97', '2', '1');
INSERT INTO `shop_user` VALUES ('102', '9b5998', '', '13355555555', 'e10adc3949ba59abbe56e057f20f883e', '', '1571032452', null, '1', null, '95', '1', '1');
INSERT INTO `shop_user` VALUES ('103', '8f6a1d', '', '13168888846', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', '1571032574', null, '1', null, '102', '2', '1');
INSERT INTO `shop_user` VALUES ('104', '2b6d9f', '', '13168888847', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', '1571033525', null, '1', null, '103', '2', '1');
INSERT INTO `shop_user` VALUES ('105', 'd74851', '', '13168888848', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', '1571033804', null, '1', null, '104', '2', '1');
INSERT INTO `shop_user` VALUES ('106', 'abc345', 'mc345', '13411111111', '96e79218965eb72c92a549dd5a330112', 'e3ceb5881a0a1fdaad01296d7554868d', '1571034653', '', '1', null, null, '4', '1');
INSERT INTO `shop_user` VALUES ('107', 'b033b8', '', '13422222222', 'e10adc3949ba59abbe56e057f20f883e', '', '1571034933', null, '1', null, '106', '1', '1');
INSERT INTO `shop_user` VALUES ('108', '6e93c3', '', '13433333333', 'e10adc3949ba59abbe56e057f20f883e', 'e3ceb5881a0a1fdaad01296d7554868d', '1571034997', '', '1', null, '107', '2', '1');
INSERT INTO `shop_user` VALUES ('110', '10b5b4', '', '13444444444', 'e10adc3949ba59abbe56e057f20f883e', 'e3ceb5881a0a1fdaad01296d7554868d', '1571035287', '', '1', null, '108', '3', '1');
INSERT INTO `shop_user` VALUES ('111', 'd91a57', '', '13455555555', 'e10adc3949ba59abbe56e057f20f883e', 'e3ceb5881a0a1fdaad01296d7554868d', '1571035405', '', '1', null, '110', '2', '1');
INSERT INTO `shop_user` VALUES ('112', 'fece83', '', '13466666666', 'e10adc3949ba59abbe56e057f20f883e', '', '1571036770', '', '1', null, '111', '3', '1');
INSERT INTO `shop_user` VALUES ('113', 'ef085a', '', '13477777777', 'e10adc3949ba59abbe56e057f20f883e', 'e3ceb5881a0a1fdaad01296d7554868d', '1571036819', '', '1', null, '112', '1', '1');
INSERT INTO `shop_user` VALUES ('114', '207ee8', '', '13488888888', 'e10adc3949ba59abbe56e057f20f883e', '', '1571036834', null, '1', null, '113', '2', '1');
INSERT INTO `shop_user` VALUES ('115', 'bebdb3', '', '13499999999', 'e10adc3949ba59abbe56e057f20f883e', '', '1571036844', null, '1', null, '114', '2', '1');
INSERT INTO `shop_user` VALUES ('116', '292e6b', '', '13168888860', 'e10adc3949ba59abbe56e057f20f883e', '96e79218965eb72c92a549dd5a330112', '1571059587', null, '1', null, '115', '1', '1');
INSERT INTO `shop_user` VALUES ('117', '92a6e3', '', '13168888861', 'e10adc3949ba59abbe56e057f20f883e', '96e79218965eb72c92a549dd5a330112', '1571059636', '', '1', null, '116', '3', '1');
INSERT INTO `shop_user` VALUES ('118', '4fcdec', '', '13168888862', 'e10adc3949ba59abbe56e057f20f883e', '96e79218965eb72c92a549dd5a330112', '1571059835', null, '1', null, '117', '2', '1');
INSERT INTO `shop_user` VALUES ('119', 'df0f33', '', '13168888863', 'e10adc3949ba59abbe56e057f20f883e', '96e79218965eb72c92a549dd5a330112', '1571059878', null, '1', null, '118', '2', '1');
INSERT INTO `shop_user` VALUES ('120', 'cf7c1e', '', '13168888864', 'e10adc3949ba59abbe56e057f20f883e', '96e79218965eb72c92a549dd5a330112', '1571059938', null, '1', null, '119', '1', '1');
INSERT INTO `shop_user` VALUES ('121', '739bb6', '', '13168888865', 'e10adc3949ba59abbe56e057f20f883e', '96e79218965eb72c92a549dd5a330112', '1571059990', null, '1', null, '120', '2', '1');
INSERT INTO `shop_user` VALUES ('122', 'bba480', '', '13169999901', 'e10adc3949ba59abbe56e057f20f883e', '96e79218965eb72c92a549dd5a330112', '1571060142', null, '1', null, '117', '1', '1');
INSERT INTO `shop_user` VALUES ('123', '900063', '', '13168888866', 'e10adc3949ba59abbe56e057f20f883e', '96e79218965eb72c92a549dd5a330112', '1571148358', '', '1', null, '121', '3', '1');

-- ----------------------------
-- Table structure for shop_user_action
-- ----------------------------
DROP TABLE IF EXISTS `shop_user_action`;
CREATE TABLE `shop_user_action` (
  `ua_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `uname` varchar(40) DEFAULT NULL COMMENT '用户名',
  `type` varchar(40) DEFAULT NULL COMMENT 'frontend,backend',
  `info` varchar(255) DEFAULT NULL COMMENT '行为描述',
  `add_time` int(10) NOT NULL DEFAULT '0' COMMENT '加入时间',
  PRIMARY KEY (`ua_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1093 DEFAULT CHARSET=utf8 COMMENT='用户行为';

-- ----------------------------
-- Records of shop_user_action
-- ----------------------------
INSERT INTO `shop_user_action` VALUES ('597', '1', 'admin', '后台系统用户', '新增了会员', '1569891285');
INSERT INTO `shop_user_action` VALUES ('598', '1', 'admin', '后台系统用户', '登录了后台系统', '1570177579');
INSERT INTO `shop_user_action` VALUES ('599', '1', 'admin', '后台系统用户', '更新了前台轮播图1', '1570178250');
INSERT INTO `shop_user_action` VALUES ('600', '1', 'admin', '后台系统用户', '更新了前台轮播图2', '1570178259');
INSERT INTO `shop_user_action` VALUES ('601', '1', 'admin', '后台系统用户', '添加了前台轮播图', '1570178313');
INSERT INTO `shop_user_action` VALUES ('602', '1', 'admin', '后台系统用户', '更新了前台轮播图4', '1570178325');
INSERT INTO `shop_user_action` VALUES ('603', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570178369');
INSERT INTO `shop_user_action` VALUES ('604', '1', 'admin', '后台系统用户', '删除商品', '1570179085');
INSERT INTO `shop_user_action` VALUES ('605', '1', 'admin', '后台系统用户', '删除商品', '1570179091');
INSERT INTO `shop_user_action` VALUES ('606', '1', 'admin', '后台系统用户', '删除商品', '1570179094');
INSERT INTO `shop_user_action` VALUES ('607', '1', 'admin', '后台系统用户', '删除商品', '1570179097');
INSERT INTO `shop_user_action` VALUES ('608', '1', 'admin', '后台系统用户', '删除商品', '1570179099');
INSERT INTO `shop_user_action` VALUES ('609', '1', 'admin', '后台系统用户', '删除商品', '1570179101');
INSERT INTO `shop_user_action` VALUES ('610', '1', 'admin', '后台系统用户', '删除商品', '1570179103');
INSERT INTO `shop_user_action` VALUES ('611', '1', 'admin', '后台系统用户', '删除商品', '1570179105');
INSERT INTO `shop_user_action` VALUES ('612', '1', 'admin', '后台系统用户', '修改了商品分类', '1570179156');
INSERT INTO `shop_user_action` VALUES ('613', '1', 'admin', '后台系统用户', '修改了商品分类', '1570179175');
INSERT INTO `shop_user_action` VALUES ('614', '1', 'admin', '后台系统用户', '新增了商品', '1570179912');
INSERT INTO `shop_user_action` VALUES ('615', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570179969');
INSERT INTO `shop_user_action` VALUES ('616', '1', 'admin', '后台系统用户', '新增了商品', '1570180161');
INSERT INTO `shop_user_action` VALUES ('617', '1', 'admin', '后台系统用户', '更新商品67', '1570180175');
INSERT INTO `shop_user_action` VALUES ('618', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570180223');
INSERT INTO `shop_user_action` VALUES ('619', '1', 'admin', '后台系统用户', '新增了商品', '1570180323');
INSERT INTO `shop_user_action` VALUES ('620', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570180335');
INSERT INTO `shop_user_action` VALUES ('621', '1', 'admin', '后台系统用户', '新增了商品', '1570180435');
INSERT INTO `shop_user_action` VALUES ('622', '1', 'admin', '后台系统用户', '新增了商品', '1570180557');
INSERT INTO `shop_user_action` VALUES ('623', '1', 'admin', '后台系统用户', '新增了商品', '1570180634');
INSERT INTO `shop_user_action` VALUES ('624', '1', 'admin', '后台系统用户', '新增了商品', '1570180702');
INSERT INTO `shop_user_action` VALUES ('625', '1', 'admin', '后台系统用户', '新增了商品', '1570180810');
INSERT INTO `shop_user_action` VALUES ('626', '1', 'admin', '后台系统用户', '新增了商品', '1570180991');
INSERT INTO `shop_user_action` VALUES ('627', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570181054');
INSERT INTO `shop_user_action` VALUES ('628', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570181063');
INSERT INTO `shop_user_action` VALUES ('629', '1', 'admin', '后台系统用户', '新增了商品', '1570181465');
INSERT INTO `shop_user_action` VALUES ('630', '1', 'admin', '后台系统用户', '新增了商品', '1570181529');
INSERT INTO `shop_user_action` VALUES ('631', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570181576');
INSERT INTO `shop_user_action` VALUES ('632', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570181584');
INSERT INTO `shop_user_action` VALUES ('633', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570181593');
INSERT INTO `shop_user_action` VALUES ('634', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570181603');
INSERT INTO `shop_user_action` VALUES ('635', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570181610');
INSERT INTO `shop_user_action` VALUES ('636', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570181632');
INSERT INTO `shop_user_action` VALUES ('637', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570181639');
INSERT INTO `shop_user_action` VALUES ('638', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570182082');
INSERT INTO `shop_user_action` VALUES ('639', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570182099');
INSERT INTO `shop_user_action` VALUES ('640', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570182120');
INSERT INTO `shop_user_action` VALUES ('641', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570182135');
INSERT INTO `shop_user_action` VALUES ('642', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570182150');
INSERT INTO `shop_user_action` VALUES ('643', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570182164');
INSERT INTO `shop_user_action` VALUES ('644', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570182175');
INSERT INTO `shop_user_action` VALUES ('645', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570182209');
INSERT INTO `shop_user_action` VALUES ('646', '1', 'admin', '后台系统用户', '登录了后台系统', '1570182708');
INSERT INTO `shop_user_action` VALUES ('647', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570185281');
INSERT INTO `shop_user_action` VALUES ('648', '1', 'admin', '后台系统用户', '登录了后台系统', '1570187848');
INSERT INTO `shop_user_action` VALUES ('649', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570188253');
INSERT INTO `shop_user_action` VALUES ('650', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570188263');
INSERT INTO `shop_user_action` VALUES ('651', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570188272');
INSERT INTO `shop_user_action` VALUES ('652', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570188287');
INSERT INTO `shop_user_action` VALUES ('653', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570188331');
INSERT INTO `shop_user_action` VALUES ('654', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570188340');
INSERT INTO `shop_user_action` VALUES ('655', '1', 'admin', '后台系统用户', '更新商品价格', '1570188352');
INSERT INTO `shop_user_action` VALUES ('656', '1', 'admin', '后台系统用户', '更新商品状态', '1570188352');
INSERT INTO `shop_user_action` VALUES ('657', '1', 'admin', '后台系统用户', '更新商品状态', '1570188354');
INSERT INTO `shop_user_action` VALUES ('658', '1', 'admin', '后台系统用户', '更新商品价格', '1570188372');
INSERT INTO `shop_user_action` VALUES ('659', '1', 'admin', '后台系统用户', '更新商品价格', '1570188378');
INSERT INTO `shop_user_action` VALUES ('660', '1', 'admin', '后台系统用户', '更新商品价格', '1570188388');
INSERT INTO `shop_user_action` VALUES ('661', '1', 'admin', '后台系统用户', '更新商品价格', '1570188394');
INSERT INTO `shop_user_action` VALUES ('662', '1', 'admin', '后台系统用户', '更新商品价格', '1570188402');
INSERT INTO `shop_user_action` VALUES ('663', '1', 'admin', '后台系统用户', '更新商品价格', '1570188406');
INSERT INTO `shop_user_action` VALUES ('664', '1', 'admin', '后台系统用户', '更新商品价格', '1570188410');
INSERT INTO `shop_user_action` VALUES ('665', '1', 'admin', '后台系统用户', '更新商品价格', '1570188421');
INSERT INTO `shop_user_action` VALUES ('666', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570192459');
INSERT INTO `shop_user_action` VALUES ('667', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570192857');
INSERT INTO `shop_user_action` VALUES ('668', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570193327');
INSERT INTO `shop_user_action` VALUES ('669', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570193398');
INSERT INTO `shop_user_action` VALUES ('670', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570193437');
INSERT INTO `shop_user_action` VALUES ('671', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570193502');
INSERT INTO `shop_user_action` VALUES ('672', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570193552');
INSERT INTO `shop_user_action` VALUES ('673', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570194347');
INSERT INTO `shop_user_action` VALUES ('674', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570194394');
INSERT INTO `shop_user_action` VALUES ('675', '1', 'admin', '后台系统用户', '新增了商品', '1570194499');
INSERT INTO `shop_user_action` VALUES ('676', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570194558');
INSERT INTO `shop_user_action` VALUES ('677', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570194623');
INSERT INTO `shop_user_action` VALUES ('678', '1', 'admin', '后台系统用户', '新增了商品', '1570194704');
INSERT INTO `shop_user_action` VALUES ('679', '1', 'admin', '后台系统用户', '登录了后台系统', '1570194738');
INSERT INTO `shop_user_action` VALUES ('680', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570194782');
INSERT INTO `shop_user_action` VALUES ('681', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1570194792');
INSERT INTO `shop_user_action` VALUES ('682', '1', 'admin', '后台系统用户', '编辑了会员', '1570194821');
INSERT INTO `shop_user_action` VALUES ('683', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570194891');
INSERT INTO `shop_user_action` VALUES ('684', '1', 'admin', '后台系统用户', '新增了商品', '1570194958');
INSERT INTO `shop_user_action` VALUES ('685', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570194966');
INSERT INTO `shop_user_action` VALUES ('686', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570195029');
INSERT INTO `shop_user_action` VALUES ('687', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570195102');
INSERT INTO `shop_user_action` VALUES ('688', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570195151');
INSERT INTO `shop_user_action` VALUES ('689', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570195208');
INSERT INTO `shop_user_action` VALUES ('690', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570195255');
INSERT INTO `shop_user_action` VALUES ('691', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570195311');
INSERT INTO `shop_user_action` VALUES ('692', '1', 'admin', '后台系统用户', '新增了商品', '1570195439');
INSERT INTO `shop_user_action` VALUES ('693', '1', 'admin', '后台系统用户', '更新商品价格', '1570195788');
INSERT INTO `shop_user_action` VALUES ('694', '1', 'admin', '后台系统用户', '更新商品价格', '1570195793');
INSERT INTO `shop_user_action` VALUES ('695', '1', 'admin', '后台系统用户', '更新商品价格', '1570195799');
INSERT INTO `shop_user_action` VALUES ('696', '1', 'admin', '后台系统用户', '更新商品价格', '1570195803');
INSERT INTO `shop_user_action` VALUES ('697', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570196045');
INSERT INTO `shop_user_action` VALUES ('698', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570196061');
INSERT INTO `shop_user_action` VALUES ('699', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570196135');
INSERT INTO `shop_user_action` VALUES ('700', '1', 'admin', '后台系统用户', '更新商品37', '1570196154');
INSERT INTO `shop_user_action` VALUES ('701', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570196217');
INSERT INTO `shop_user_action` VALUES ('702', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570196278');
INSERT INTO `shop_user_action` VALUES ('703', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570196308');
INSERT INTO `shop_user_action` VALUES ('704', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570196357');
INSERT INTO `shop_user_action` VALUES ('705', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570196431');
INSERT INTO `shop_user_action` VALUES ('706', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570196444');
INSERT INTO `shop_user_action` VALUES ('707', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570196466');
INSERT INTO `shop_user_action` VALUES ('708', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570196506');
INSERT INTO `shop_user_action` VALUES ('709', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570196528');
INSERT INTO `shop_user_action` VALUES ('710', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570196557');
INSERT INTO `shop_user_action` VALUES ('711', '1', 'admin', '后台系统用户', '新增了商品', '1570196691');
INSERT INTO `shop_user_action` VALUES ('712', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570196705');
INSERT INTO `shop_user_action` VALUES ('713', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570196790');
INSERT INTO `shop_user_action` VALUES ('714', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570196887');
INSERT INTO `shop_user_action` VALUES ('715', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570196921');
INSERT INTO `shop_user_action` VALUES ('716', '1', 'admin', '后台系统用户', '修改了会员订单2的状态', '1570197184');
INSERT INTO `shop_user_action` VALUES ('717', '1', 'admin', '后台系统用户', '修改了会员订单2的状态', '1570197406');
INSERT INTO `shop_user_action` VALUES ('718', '1', 'admin', '后台系统用户', '更新商品价格', '1570198488');
INSERT INTO `shop_user_action` VALUES ('719', '1', 'admin', '后台系统用户', '修改了会员订单4的状态', '1570198941');
INSERT INTO `shop_user_action` VALUES ('720', '1', 'admin', '后台系统用户', '修改了会员订单5的状态', '1570198963');
INSERT INTO `shop_user_action` VALUES ('721', '1', 'admin', '后台系统用户', '修改了会员订单3的状态', '1570198989');
INSERT INTO `shop_user_action` VALUES ('722', '1', 'admin', '后台系统用户', '修改了会员订单7的状态', '1570199397');
INSERT INTO `shop_user_action` VALUES ('723', '1', 'admin', '后台系统用户', '修改了会员订单8的状态', '1570199854');
INSERT INTO `shop_user_action` VALUES ('724', '1', 'admin', '后台系统用户', '登录了后台系统', '1570200020');
INSERT INTO `shop_user_action` VALUES ('725', '1', 'admin', '后台系统用户', '登录了后台系统', '1570271528');
INSERT INTO `shop_user_action` VALUES ('726', '1', 'admin', '后台系统用户', '登录了后台系统', '1570338939');
INSERT INTO `shop_user_action` VALUES ('727', '1', 'admin', '后台系统用户', '新增了会员', '1570342924');
INSERT INTO `shop_user_action` VALUES ('728', '1', 'admin', '后台系统用户', '编辑了会员', '1570342963');
INSERT INTO `shop_user_action` VALUES ('729', '1', 'admin', '后台系统用户', '编辑了会员', '1570342975');
INSERT INTO `shop_user_action` VALUES ('730', '1', 'admin', '后台系统用户', '编辑了会员', '1570343157');
INSERT INTO `shop_user_action` VALUES ('731', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1570343228');
INSERT INTO `shop_user_action` VALUES ('732', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1570346762');
INSERT INTO `shop_user_action` VALUES ('733', '1', 'admin', '后台系统用户', '修改了会员订单10的状态', '1570348281');
INSERT INTO `shop_user_action` VALUES ('734', '1', 'admin', '后台系统用户', '编辑了会员', '1570348526');
INSERT INTO `shop_user_action` VALUES ('735', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1570348562');
INSERT INTO `shop_user_action` VALUES ('736', '1', 'admin', '后台系统用户', '编辑了会员', '1570348654');
INSERT INTO `shop_user_action` VALUES ('737', '1', 'admin', '后台系统用户', '修改了会员订单11的状态', '1570348784');
INSERT INTO `shop_user_action` VALUES ('738', '1', 'admin', '后台系统用户', '修改了会员订单13的状态', '1570351167');
INSERT INTO `shop_user_action` VALUES ('739', '1', 'admin', '后台系统用户', '新增了商品', '1570352472');
INSERT INTO `shop_user_action` VALUES ('740', '1', 'admin', '后台系统用户', '删除商品', '1570352533');
INSERT INTO `shop_user_action` VALUES ('741', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570353422');
INSERT INTO `shop_user_action` VALUES ('742', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570353544');
INSERT INTO `shop_user_action` VALUES ('743', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570353560');
INSERT INTO `shop_user_action` VALUES ('744', '1', 'admin', '后台系统用户', '新增了商品', '1570353920');
INSERT INTO `shop_user_action` VALUES ('745', '1', 'admin', '后台系统用户', '删除商品', '1570353939');
INSERT INTO `shop_user_action` VALUES ('746', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570354086');
INSERT INTO `shop_user_action` VALUES ('747', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570354122');
INSERT INTO `shop_user_action` VALUES ('748', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570354297');
INSERT INTO `shop_user_action` VALUES ('749', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570354702');
INSERT INTO `shop_user_action` VALUES ('750', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570354790');
INSERT INTO `shop_user_action` VALUES ('751', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570354810');
INSERT INTO `shop_user_action` VALUES ('752', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570355033');
INSERT INTO `shop_user_action` VALUES ('753', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570355082');
INSERT INTO `shop_user_action` VALUES ('754', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570355632');
INSERT INTO `shop_user_action` VALUES ('755', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570356152');
INSERT INTO `shop_user_action` VALUES ('756', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570356258');
INSERT INTO `shop_user_action` VALUES ('757', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570356281');
INSERT INTO `shop_user_action` VALUES ('758', '1', 'admin', '后台系统用户', '登录了后台系统', '1570356477');
INSERT INTO `shop_user_action` VALUES ('759', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1570357056');
INSERT INTO `shop_user_action` VALUES ('760', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1570357084');
INSERT INTO `shop_user_action` VALUES ('761', '1', 'admin', '后台系统用户', '修改了会员订单14的状态', '1570357144');
INSERT INTO `shop_user_action` VALUES ('762', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570357620');
INSERT INTO `shop_user_action` VALUES ('763', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1570357674');
INSERT INTO `shop_user_action` VALUES ('764', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570357993');
INSERT INTO `shop_user_action` VALUES ('765', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570358005');
INSERT INTO `shop_user_action` VALUES ('766', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570358534');
INSERT INTO `shop_user_action` VALUES ('767', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570359583');
INSERT INTO `shop_user_action` VALUES ('768', '1', 'admin', '后台系统用户', '登录了后台系统', '1570359663');
INSERT INTO `shop_user_action` VALUES ('769', '1', 'admin', '后台系统用户', '登录了后台系统', '1570435381');
INSERT INTO `shop_user_action` VALUES ('770', '1', 'admin', '后台系统用户', '登录了后台系统', '1570435427');
INSERT INTO `shop_user_action` VALUES ('771', '1', 'admin', '后台系统用户', '登录了后台系统', '1570438715');
INSERT INTO `shop_user_action` VALUES ('772', '1', 'admin', '后台系统用户', '新增了会员', '1570440174');
INSERT INTO `shop_user_action` VALUES ('773', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1570441587');
INSERT INTO `shop_user_action` VALUES ('774', '1', 'admin', '后台系统用户', '编辑了会员', '1570441601');
INSERT INTO `shop_user_action` VALUES ('775', '1', 'admin', '后台系统用户', '编辑了会员', '1570441681');
INSERT INTO `shop_user_action` VALUES ('776', '1', 'admin', '后台系统用户', '编辑了会员', '1570441818');
INSERT INTO `shop_user_action` VALUES ('777', '1', 'admin', '后台系统用户', '编辑了会员', '1570441833');
INSERT INTO `shop_user_action` VALUES ('778', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1570441868');
INSERT INTO `shop_user_action` VALUES ('779', '1', 'admin', '后台系统用户', '编辑了会员', '1570442087');
INSERT INTO `shop_user_action` VALUES ('780', '1', 'admin', '后台系统用户', '新增了商品', '1570442139');
INSERT INTO `shop_user_action` VALUES ('781', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570442200');
INSERT INTO `shop_user_action` VALUES ('782', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1570442828');
INSERT INTO `shop_user_action` VALUES ('783', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1570443190');
INSERT INTO `shop_user_action` VALUES ('784', '1', 'admin', '后台系统用户', '登录了后台系统', '1570451345');
INSERT INTO `shop_user_action` VALUES ('785', '1', 'admin', '后台系统用户', '修改了会员订单34的状态', '1570451510');
INSERT INTO `shop_user_action` VALUES ('786', '1', 'admin', '后台系统用户', '修改了会员订单36的状态', '1570452498');
INSERT INTO `shop_user_action` VALUES ('787', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570452745');
INSERT INTO `shop_user_action` VALUES ('788', '1', 'admin', '后台系统用户', '修改了会员订单37的状态', '1570452788');
INSERT INTO `shop_user_action` VALUES ('789', '1', 'admin', '后台系统用户', '更新奖励参数设置', '1570452938');
INSERT INTO `shop_user_action` VALUES ('790', '1', 'admin', '后台系统用户', '更新奖励参数设置', '1570452981');
INSERT INTO `shop_user_action` VALUES ('791', '1', 'admin', '后台系统用户', '更新奖励参数设置', '1570452989');
INSERT INTO `shop_user_action` VALUES ('792', '1', 'admin', '后台系统用户', '更新奖励参数设置', '1570453003');
INSERT INTO `shop_user_action` VALUES ('793', '1', 'admin', '后台系统用户', '修改了公告状态', '1570453260');
INSERT INTO `shop_user_action` VALUES ('794', '1', 'admin', '后台系统用户', '新增了会员', '1570453425');
INSERT INTO `shop_user_action` VALUES ('795', '1', 'admin', '后台系统用户', '修改了公告状态', '1570453490');
INSERT INTO `shop_user_action` VALUES ('796', '1', 'admin', '后台系统用户', '编辑了会员', '1570453575');
INSERT INTO `shop_user_action` VALUES ('797', '1', 'admin', '后台系统用户', '登录了后台系统', '1570454119');
INSERT INTO `shop_user_action` VALUES ('798', '1', 'admin', '后台系统用户', '登录了后台系统', '1570468212');
INSERT INTO `shop_user_action` VALUES ('799', '1', 'admin', '后台系统用户', '登录了后台系统', '1570498991');
INSERT INTO `shop_user_action` VALUES ('800', '1', 'admin', '后台系统用户', '登录了后台系统', '1570504900');
INSERT INTO `shop_user_action` VALUES ('801', '1', 'admin', '后台系统用户', '修改了公告状态', '1570520641');
INSERT INTO `shop_user_action` VALUES ('802', '1', 'admin', '后台系统用户', '修改了公告状态', '1570520647');
INSERT INTO `shop_user_action` VALUES ('803', '1', 'admin', '后台系统用户', '登录了后台系统', '1570521732');
INSERT INTO `shop_user_action` VALUES ('804', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570523610');
INSERT INTO `shop_user_action` VALUES ('805', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570523658');
INSERT INTO `shop_user_action` VALUES ('806', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570524707');
INSERT INTO `shop_user_action` VALUES ('807', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570524947');
INSERT INTO `shop_user_action` VALUES ('808', '1', 'admin', '后台系统用户', '登录了后台系统', '1570525129');
INSERT INTO `shop_user_action` VALUES ('809', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570525186');
INSERT INTO `shop_user_action` VALUES ('810', '1', 'admin', '后台系统用户', '修改了会员订单38的状态', '1570525217');
INSERT INTO `shop_user_action` VALUES ('811', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1570525540');
INSERT INTO `shop_user_action` VALUES ('812', '1', 'admin', '后台系统用户', '编辑了会员', '1570525601');
INSERT INTO `shop_user_action` VALUES ('813', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1570525626');
INSERT INTO `shop_user_action` VALUES ('814', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1570525804');
INSERT INTO `shop_user_action` VALUES ('815', '1', 'admin', '后台系统用户', '登录了后台系统', '1570527282');
INSERT INTO `shop_user_action` VALUES ('816', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570528975');
INSERT INTO `shop_user_action` VALUES ('817', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570530579');
INSERT INTO `shop_user_action` VALUES ('818', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570530598');
INSERT INTO `shop_user_action` VALUES ('819', '1', 'admin', '后台系统用户', '登录了后台系统', '1570592966');
INSERT INTO `shop_user_action` VALUES ('820', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570593060');
INSERT INTO `shop_user_action` VALUES ('821', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570593168');
INSERT INTO `shop_user_action` VALUES ('822', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570593306');
INSERT INTO `shop_user_action` VALUES ('823', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570593335');
INSERT INTO `shop_user_action` VALUES ('824', '1', 'admin', '后台系统用户', '登录了后台系统', '1570594158');
INSERT INTO `shop_user_action` VALUES ('825', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570594766');
INSERT INTO `shop_user_action` VALUES ('826', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570594791');
INSERT INTO `shop_user_action` VALUES ('827', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570600452');
INSERT INTO `shop_user_action` VALUES ('828', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570600504');
INSERT INTO `shop_user_action` VALUES ('829', '1', 'admin', '后台系统用户', '新增了商品', '1570600662');
INSERT INTO `shop_user_action` VALUES ('830', '1', 'admin', '后台系统用户', '新增了商品', '1570600841');
INSERT INTO `shop_user_action` VALUES ('831', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570600863');
INSERT INTO `shop_user_action` VALUES ('832', '1', 'admin', '后台系统用户', '更新商品82', '1570600876');
INSERT INTO `shop_user_action` VALUES ('833', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570600955');
INSERT INTO `shop_user_action` VALUES ('834', '1', 'admin', '后台系统用户', '删除商品', '1570601072');
INSERT INTO `shop_user_action` VALUES ('835', '1', 'admin', '后台系统用户', '删除商品', '1570601080');
INSERT INTO `shop_user_action` VALUES ('836', '1', 'admin', '后台系统用户', '登录了后台系统', '1570601932');
INSERT INTO `shop_user_action` VALUES ('837', '1', 'admin', '后台系统用户', '新增了商品', '1570602175');
INSERT INTO `shop_user_action` VALUES ('838', '1', 'admin', '后台系统用户', '删除商品', '1570602296');
INSERT INTO `shop_user_action` VALUES ('839', '1', 'admin', '后台系统用户', '新增了商品', '1570602433');
INSERT INTO `shop_user_action` VALUES ('840', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570602483');
INSERT INTO `shop_user_action` VALUES ('841', '1', 'admin', '后台系统用户', '新增了会员', '1570602643');
INSERT INTO `shop_user_action` VALUES ('842', '1', 'admin', '后台系统用户', '登录了后台系统', '1570602690');
INSERT INTO `shop_user_action` VALUES ('843', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570602715');
INSERT INTO `shop_user_action` VALUES ('844', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570602784');
INSERT INTO `shop_user_action` VALUES ('845', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570602805');
INSERT INTO `shop_user_action` VALUES ('846', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570603116');
INSERT INTO `shop_user_action` VALUES ('847', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570603182');
INSERT INTO `shop_user_action` VALUES ('848', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570603270');
INSERT INTO `shop_user_action` VALUES ('849', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570603287');
INSERT INTO `shop_user_action` VALUES ('850', '1', 'admin', '后台系统用户', '新增了商品', '1570603317');
INSERT INTO `shop_user_action` VALUES ('851', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570603327');
INSERT INTO `shop_user_action` VALUES ('852', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570603336');
INSERT INTO `shop_user_action` VALUES ('853', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570603391');
INSERT INTO `shop_user_action` VALUES ('854', '1', 'admin', '后台系统用户', '新增了商品', '1570603477');
INSERT INTO `shop_user_action` VALUES ('855', '1', 'admin', '后台系统用户', '登录了后台系统', '1570608949');
INSERT INTO `shop_user_action` VALUES ('856', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570620001');
INSERT INTO `shop_user_action` VALUES ('857', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570620470');
INSERT INTO `shop_user_action` VALUES ('858', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570620499');
INSERT INTO `shop_user_action` VALUES ('859', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570620622');
INSERT INTO `shop_user_action` VALUES ('860', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570620651');
INSERT INTO `shop_user_action` VALUES ('861', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570620723');
INSERT INTO `shop_user_action` VALUES ('862', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570620819');
INSERT INTO `shop_user_action` VALUES ('863', '1', 'admin', '后台系统用户', '登录了后台系统', '1570691505');
INSERT INTO `shop_user_action` VALUES ('864', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570691633');
INSERT INTO `shop_user_action` VALUES ('865', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570691678');
INSERT INTO `shop_user_action` VALUES ('866', '1', 'admin', '后台系统用户', '登录了后台系统', '1570692021');
INSERT INTO `shop_user_action` VALUES ('867', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570702638');
INSERT INTO `shop_user_action` VALUES ('868', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570702651');
INSERT INTO `shop_user_action` VALUES ('869', '1', 'admin', '后台系统用户', '登录了后台系统', '1570703550');
INSERT INTO `shop_user_action` VALUES ('870', '1', 'admin', '后台系统用户', '登录了后台系统', '1570706280');
INSERT INTO `shop_user_action` VALUES ('871', '1', 'admin', '后台系统用户', '编辑了会员', '1570711683');
INSERT INTO `shop_user_action` VALUES ('872', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1570711748');
INSERT INTO `shop_user_action` VALUES ('873', '1', 'admin', '后台系统用户', '添加了会员的收货地址', '1570711810');
INSERT INTO `shop_user_action` VALUES ('874', '1', 'admin', '后台系统用户', '编辑了会员', '1570711827');
INSERT INTO `shop_user_action` VALUES ('875', '1', 'admin', '后台系统用户', '修改了订单状态', '1570718786');
INSERT INTO `shop_user_action` VALUES ('876', '1', 'admin', '后台系统用户', '修改了会员订单63的状态', '1570718911');
INSERT INTO `shop_user_action` VALUES ('877', '1', 'admin', '后台系统用户', '修改了会员订单62的状态', '1570718926');
INSERT INTO `shop_user_action` VALUES ('878', '1', 'admin', '后台系统用户', '修改了会员订单61的状态', '1570718937');
INSERT INTO `shop_user_action` VALUES ('879', '1', 'admin', '后台系统用户', '修改了会员订单56的状态', '1570718954');
INSERT INTO `shop_user_action` VALUES ('880', '1', 'admin', '后台系统用户', '修改了会员订单60的状态', '1570718968');
INSERT INTO `shop_user_action` VALUES ('881', '1', 'admin', '后台系统用户', '修改了会员订单59的状态', '1570718982');
INSERT INTO `shop_user_action` VALUES ('882', '1', 'admin', '后台系统用户', '修改了会员订单58的状态', '1570719001');
INSERT INTO `shop_user_action` VALUES ('883', '1', 'admin', '后台系统用户', '修改了会员订单57的状态', '1570719014');
INSERT INTO `shop_user_action` VALUES ('884', '1', 'admin', '后台系统用户', '修改了会员订单55的状态', '1570719030');
INSERT INTO `shop_user_action` VALUES ('885', '1', 'admin', '后台系统用户', '修改了会员订单54的状态', '1570719043');
INSERT INTO `shop_user_action` VALUES ('886', '1', 'admin', '后台系统用户', '修改了会员订单53的状态', '1570719061');
INSERT INTO `shop_user_action` VALUES ('887', '1', 'admin', '后台系统用户', '修改了会员订单50的状态', '1570719121');
INSERT INTO `shop_user_action` VALUES ('888', '1', 'admin', '后台系统用户', '修改了会员订单52的状态', '1570719244');
INSERT INTO `shop_user_action` VALUES ('889', '1', 'admin', '后台系统用户', '修改了会员订单51的状态', '1570719274');
INSERT INTO `shop_user_action` VALUES ('890', '1', 'admin', '后台系统用户', '编辑了会员', '1570719626');
INSERT INTO `shop_user_action` VALUES ('891', '1', 'admin', '后台系统用户', '编辑了会员', '1570719651');
INSERT INTO `shop_user_action` VALUES ('892', '1', 'admin', '后台系统用户', '编辑了会员', '1570719686');
INSERT INTO `shop_user_action` VALUES ('893', '1', 'admin', '后台系统用户', '编辑了会员', '1570720881');
INSERT INTO `shop_user_action` VALUES ('894', '1', 'admin', '后台系统用户', '修改了会员订单64的状态', '1570720986');
INSERT INTO `shop_user_action` VALUES ('895', '1', 'admin', '后台系统用户', '修改了会员订单65的状态', '1570721018');
INSERT INTO `shop_user_action` VALUES ('896', '1', 'admin', '后台系统用户', '修改了会员订单66的状态', '1570721034');
INSERT INTO `shop_user_action` VALUES ('897', '1', 'admin', '后台系统用户', '修改了会员订单67的状态', '1570721049');
INSERT INTO `shop_user_action` VALUES ('898', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1570721569');
INSERT INTO `shop_user_action` VALUES ('899', '1', 'admin', '后台系统用户', '编辑了会员', '1570721637');
INSERT INTO `shop_user_action` VALUES ('900', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1570722289');
INSERT INTO `shop_user_action` VALUES ('901', '1', 'admin', '后台系统用户', '编辑了会员', '1570722324');
INSERT INTO `shop_user_action` VALUES ('902', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1570724492');
INSERT INTO `shop_user_action` VALUES ('903', '1', 'admin', '后台系统用户', '修改了会员订单72的状态', '1570724935');
INSERT INTO `shop_user_action` VALUES ('904', '1', 'admin', '后台系统用户', '登录了后台系统', '1570762140');
INSERT INTO `shop_user_action` VALUES ('905', '1', 'admin', '后台系统用户', '新增了会员', '1570762505');
INSERT INTO `shop_user_action` VALUES ('906', '1', 'admin', '后台系统用户', '更新奖励参数设置', '1570770742');
INSERT INTO `shop_user_action` VALUES ('907', '1', 'admin', '后台系统用户', '修改了会员订单74的状态', '1570771015');
INSERT INTO `shop_user_action` VALUES ('908', '1', 'admin', '后台系统用户', '修改了会员订单73的状态', '1570771030');
INSERT INTO `shop_user_action` VALUES ('909', '1', 'admin', '后台系统用户', '登录了后台系统', '1570775703');
INSERT INTO `shop_user_action` VALUES ('910', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570775798');
INSERT INTO `shop_user_action` VALUES ('911', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570775821');
INSERT INTO `shop_user_action` VALUES ('912', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570775840');
INSERT INTO `shop_user_action` VALUES ('913', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570775862');
INSERT INTO `shop_user_action` VALUES ('914', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570775887');
INSERT INTO `shop_user_action` VALUES ('915', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570775910');
INSERT INTO `shop_user_action` VALUES ('916', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570776030');
INSERT INTO `shop_user_action` VALUES ('917', '1', 'admin', '后台系统用户', '编辑了会员', '1570784662');
INSERT INTO `shop_user_action` VALUES ('918', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1570784754');
INSERT INTO `shop_user_action` VALUES ('919', '1', 'admin', '后台系统用户', '编辑了会员', '1570784789');
INSERT INTO `shop_user_action` VALUES ('920', '1', 'admin', '后台系统用户', '编辑了会员', '1570784797');
INSERT INTO `shop_user_action` VALUES ('921', '1', 'admin', '后台系统用户', '编辑了会员', '1570784860');
INSERT INTO `shop_user_action` VALUES ('922', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1570784872');
INSERT INTO `shop_user_action` VALUES ('923', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570787004');
INSERT INTO `shop_user_action` VALUES ('924', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570787017');
INSERT INTO `shop_user_action` VALUES ('925', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570787349');
INSERT INTO `shop_user_action` VALUES ('926', '1', 'admin', '后台系统用户', '更新商品82', '1570787369');
INSERT INTO `shop_user_action` VALUES ('927', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570787409');
INSERT INTO `shop_user_action` VALUES ('928', '1', 'admin', '后台系统用户', '更新商品83', '1570787437');
INSERT INTO `shop_user_action` VALUES ('929', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570787482');
INSERT INTO `shop_user_action` VALUES ('930', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570787570');
INSERT INTO `shop_user_action` VALUES ('931', '1', 'admin', '后台系统用户', '更新商品85', '1570787583');
INSERT INTO `shop_user_action` VALUES ('932', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570787624');
INSERT INTO `shop_user_action` VALUES ('933', '1', 'admin', '后台系统用户', '更新商品86', '1570787637');
INSERT INTO `shop_user_action` VALUES ('934', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570787676');
INSERT INTO `shop_user_action` VALUES ('935', '1', 'admin', '后台系统用户', '更新商品87', '1570787688');
INSERT INTO `shop_user_action` VALUES ('936', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570787760');
INSERT INTO `shop_user_action` VALUES ('937', '1', 'admin', '后台系统用户', '登录了后台系统', '1570802774');
INSERT INTO `shop_user_action` VALUES ('938', '1', 'admin', '后台系统用户', '登录了后台系统', '1570847014');
INSERT INTO `shop_user_action` VALUES ('939', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1570854778');
INSERT INTO `shop_user_action` VALUES ('940', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1570854805');
INSERT INTO `shop_user_action` VALUES ('941', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1570854833');
INSERT INTO `shop_user_action` VALUES ('942', '1', 'admin', '后台系统用户', '登录了后台系统', '1570871947');
INSERT INTO `shop_user_action` VALUES ('943', '1', 'admin', '后台系统用户', '登录了后台系统', '1570871961');
INSERT INTO `shop_user_action` VALUES ('944', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570872031');
INSERT INTO `shop_user_action` VALUES ('945', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570872093');
INSERT INTO `shop_user_action` VALUES ('946', '1', 'admin', '后台系统用户', '退出了系统', '1570872256');
INSERT INTO `shop_user_action` VALUES ('947', '1', 'admin', '后台系统用户', '登录了后台系统', '1570872264');
INSERT INTO `shop_user_action` VALUES ('948', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570872615');
INSERT INTO `shop_user_action` VALUES ('949', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570872694');
INSERT INTO `shop_user_action` VALUES ('950', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570872719');
INSERT INTO `shop_user_action` VALUES ('951', '1', 'admin', '后台系统用户', '登录了后台系统', '1570873187');
INSERT INTO `shop_user_action` VALUES ('952', '1', 'admin', '后台系统用户', '登录了后台系统', '1570874881');
INSERT INTO `shop_user_action` VALUES ('953', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570875471');
INSERT INTO `shop_user_action` VALUES ('954', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570875797');
INSERT INTO `shop_user_action` VALUES ('955', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570875829');
INSERT INTO `shop_user_action` VALUES ('956', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570875851');
INSERT INTO `shop_user_action` VALUES ('957', '1', 'admin', '后台系统用户', '更新系统基本配置', '1570875887');
INSERT INTO `shop_user_action` VALUES ('958', '1', 'admin', '后台系统用户', '登录了后台系统', '1570876890');
INSERT INTO `shop_user_action` VALUES ('959', '1', 'admin', '后台系统用户', '登录了后台系统', '1570880644');
INSERT INTO `shop_user_action` VALUES ('960', '1', 'admin', '后台系统用户', '登录了后台系统', '1570883142');
INSERT INTO `shop_user_action` VALUES ('961', '1', 'admin', '后台系统用户', '登录了后台系统', '1570883450');
INSERT INTO `shop_user_action` VALUES ('962', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570883532');
INSERT INTO `shop_user_action` VALUES ('963', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570883561');
INSERT INTO `shop_user_action` VALUES ('964', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570883583');
INSERT INTO `shop_user_action` VALUES ('965', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570883602');
INSERT INTO `shop_user_action` VALUES ('966', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570883635');
INSERT INTO `shop_user_action` VALUES ('967', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570883688');
INSERT INTO `shop_user_action` VALUES ('968', '1', 'admin', '后台系统用户', '更新商品基本信息', '1570883859');
INSERT INTO `shop_user_action` VALUES ('969', '1', 'admin', '后台系统用户', '登录了后台系统', '1570884022');
INSERT INTO `shop_user_action` VALUES ('970', '1', 'admin', '后台系统用户', '登录了后台系统', '1570885149');
INSERT INTO `shop_user_action` VALUES ('971', '1', 'admin', '后台系统用户', '新增了会员', '1570885224');
INSERT INTO `shop_user_action` VALUES ('972', '1', 'admin', '后台系统用户', '登录了后台系统', '1570886855');
INSERT INTO `shop_user_action` VALUES ('973', '1', 'admin', '后台系统用户', '编辑了会员', '1570888851');
INSERT INTO `shop_user_action` VALUES ('974', '1', 'admin', '后台系统用户', '编辑了会员', '1570888912');
INSERT INTO `shop_user_action` VALUES ('975', '1', 'admin', '后台系统用户', '编辑了会员', '1570888964');
INSERT INTO `shop_user_action` VALUES ('976', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1570890188');
INSERT INTO `shop_user_action` VALUES ('977', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1570891110');
INSERT INTO `shop_user_action` VALUES ('978', '1', 'admin', '后台系统用户', '编辑了会员', '1570891940');
INSERT INTO `shop_user_action` VALUES ('979', '1', 'admin', '后台系统用户', '修改了会员订单112的状态', '1570892077');
INSERT INTO `shop_user_action` VALUES ('980', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1570895040');
INSERT INTO `shop_user_action` VALUES ('981', '1', 'admin', '后台系统用户', '修改了会员订单115的状态', '1570895388');
INSERT INTO `shop_user_action` VALUES ('982', '1', 'admin', '后台系统用户', '登录了后台系统', '1570903403');
INSERT INTO `shop_user_action` VALUES ('983', '1', 'admin', '后台系统用户', '登录了后台系统', '1571018477');
INSERT INTO `shop_user_action` VALUES ('984', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1571018504');
INSERT INTO `shop_user_action` VALUES ('985', '1', 'admin', '后台系统用户', '新增了商品', '1571018758');
INSERT INTO `shop_user_action` VALUES ('986', '1', 'admin', '后台系统用户', '删除商品', '1571018778');
INSERT INTO `shop_user_action` VALUES ('987', '1', 'admin', '后台系统用户', '登录了后台系统', '1571032255');
INSERT INTO `shop_user_action` VALUES ('988', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1571032643');
INSERT INTO `shop_user_action` VALUES ('989', '1', 'admin', '后台系统用户', '登录了后台系统', '1571032735');
INSERT INTO `shop_user_action` VALUES ('990', '1', 'admin', '后台系统用户', '更新系统基本配置', '1571032766');
INSERT INTO `shop_user_action` VALUES ('991', '1', 'admin', '后台系统用户', '更新系统基本配置', '1571032773');
INSERT INTO `shop_user_action` VALUES ('992', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1571033889');
INSERT INTO `shop_user_action` VALUES ('993', '1', 'admin', '后台系统用户', '修改了会员订单128的状态', '1571034245');
INSERT INTO `shop_user_action` VALUES ('994', '1', 'admin', '后台系统用户', '登录了后台系统', '1571034540');
INSERT INTO `shop_user_action` VALUES ('995', '1', 'admin', '后台系统用户', '新增了会员', '1571034653');
INSERT INTO `shop_user_action` VALUES ('996', '1', 'admin', '后台系统用户', '编辑了会员', '1571034968');
INSERT INTO `shop_user_action` VALUES ('997', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1571035041');
INSERT INTO `shop_user_action` VALUES ('998', '1', 'admin', '后台系统用户', '编辑了会员', '1571035139');
INSERT INTO `shop_user_action` VALUES ('999', '1', 'admin', '后台系统用户', '编辑了会员', '1571035312');
INSERT INTO `shop_user_action` VALUES ('1000', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1571035320');
INSERT INTO `shop_user_action` VALUES ('1001', '1', 'admin', '后台系统用户', '编辑了会员', '1571035474');
INSERT INTO `shop_user_action` VALUES ('1002', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1571035488');
INSERT INTO `shop_user_action` VALUES ('1003', '1', 'admin', '后台系统用户', '修改了会员订单131的状态', '1571035520');
INSERT INTO `shop_user_action` VALUES ('1004', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1571035720');
INSERT INTO `shop_user_action` VALUES ('1005', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1571035752');
INSERT INTO `shop_user_action` VALUES ('1006', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1571035761');
INSERT INTO `shop_user_action` VALUES ('1007', '1', 'admin', '后台系统用户', '修改了会员订单134的状态', '1571035999');
INSERT INTO `shop_user_action` VALUES ('1008', '1', 'admin', '后台系统用户', '修改了会员订单133的状态', '1571036011');
INSERT INTO `shop_user_action` VALUES ('1009', '1', 'admin', '后台系统用户', '修改了会员订单132的状态', '1571036020');
INSERT INTO `shop_user_action` VALUES ('1010', '1', 'admin', '后台系统用户', '编辑了会员', '1571036784');
INSERT INTO `shop_user_action` VALUES ('1011', '1', 'admin', '后台系统用户', '编辑了会员', '1571036795');
INSERT INTO `shop_user_action` VALUES ('1012', '1', 'admin', '后台系统用户', '编辑了会员', '1571036803');
INSERT INTO `shop_user_action` VALUES ('1013', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1571036927');
INSERT INTO `shop_user_action` VALUES ('1014', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1571037321');
INSERT INTO `shop_user_action` VALUES ('1015', '1', 'admin', '后台系统用户', '修改了会员订单137的状态', '1571037341');
INSERT INTO `shop_user_action` VALUES ('1016', '1', 'admin', '后台系统用户', '登录了后台系统', '1571054563');
INSERT INTO `shop_user_action` VALUES ('1017', '1', 'admin', '后台系统用户', '更新了前台轮播图1', '1571054614');
INSERT INTO `shop_user_action` VALUES ('1018', '1', 'admin', '后台系统用户', '登录了后台系统', '1571058435');
INSERT INTO `shop_user_action` VALUES ('1019', '1', 'admin', '后台系统用户', '编辑了会员', '1571060080');
INSERT INTO `shop_user_action` VALUES ('1020', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1571060106');
INSERT INTO `shop_user_action` VALUES ('1021', '1', 'admin', '后台系统用户', '编辑了会员', '1571060265');
INSERT INTO `shop_user_action` VALUES ('1022', '1', 'admin', '后台系统用户', '编辑了会员', '1571060431');
INSERT INTO `shop_user_action` VALUES ('1023', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1571061362');
INSERT INTO `shop_user_action` VALUES ('1024', '1', 'admin', '后台系统用户', '更新商品数量', '1571061983');
INSERT INTO `shop_user_action` VALUES ('1025', '1', 'admin', '后台系统用户', '更新商品基本信息', '1571062013');
INSERT INTO `shop_user_action` VALUES ('1026', '1', 'admin', '后台系统用户', '修改了会员订单141的状态', '1571062369');
INSERT INTO `shop_user_action` VALUES ('1027', '1', 'admin', '后台系统用户', '修改了会员订单145的状态', '1571062391');
INSERT INTO `shop_user_action` VALUES ('1028', '1', 'admin', '后台系统用户', '登录了后台系统', '1571103116');
INSERT INTO `shop_user_action` VALUES ('1029', '1', 'admin', '后台系统用户', '编辑了会员', '1571108186');
INSERT INTO `shop_user_action` VALUES ('1030', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1571108221');
INSERT INTO `shop_user_action` VALUES ('1031', '1', 'admin', '后台系统用户', '编辑了会员', '1571109417');
INSERT INTO `shop_user_action` VALUES ('1032', '1', 'admin', '后台系统用户', '编辑了会员', '1571110157');
INSERT INTO `shop_user_action` VALUES ('1033', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1571110220');
INSERT INTO `shop_user_action` VALUES ('1034', '1', 'admin', '后台系统用户', '编辑了会员', '1571110659');
INSERT INTO `shop_user_action` VALUES ('1035', '1', 'admin', '后台系统用户', '修改了会员订单150的状态', '1571110730');
INSERT INTO `shop_user_action` VALUES ('1036', '1', 'admin', '后台系统用户', '修改了会员订单151的状态', '1571111440');
INSERT INTO `shop_user_action` VALUES ('1037', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1571111588');
INSERT INTO `shop_user_action` VALUES ('1038', '1', 'admin', '后台系统用户', '修改了会员订单152的状态', '1571111605');
INSERT INTO `shop_user_action` VALUES ('1039', '1', 'admin', '后台系统用户', '修改了会员订单154的状态', '1571112236');
INSERT INTO `shop_user_action` VALUES ('1040', '1', 'admin', '后台系统用户', '修改了会员订单155的状态', '1571112519');
INSERT INTO `shop_user_action` VALUES ('1041', '1', 'admin', '后台系统用户', '登录了后台系统', '1571124476');
INSERT INTO `shop_user_action` VALUES ('1042', '1', 'admin', '后台系统用户', '登录了后台系统', '1571143214');
INSERT INTO `shop_user_action` VALUES ('1043', '1', 'admin', '后台系统用户', '修改了会员的钱包资产', '1571143356');
INSERT INTO `shop_user_action` VALUES ('1044', '1', 'admin', '后台系统用户', '修改了会员订单161的状态', '1571144176');
INSERT INTO `shop_user_action` VALUES ('1045', '1', 'admin', '后台系统用户', '修改了会员订单162的状态', '1571144192');
INSERT INTO `shop_user_action` VALUES ('1046', '1', 'admin', '后台系统用户', '修改了会员订单157的状态', '1571144409');
INSERT INTO `shop_user_action` VALUES ('1047', '1', 'admin', '后台系统用户', '修改了会员订单156的状态', '1571144422');
INSERT INTO `shop_user_action` VALUES ('1048', '1', 'admin', '后台系统用户', '登录了后台系统', '1571144716');
INSERT INTO `shop_user_action` VALUES ('1049', '1', 'admin', '后台系统用户', '更新商品基本信息', '1571144792');
INSERT INTO `shop_user_action` VALUES ('1050', '1', 'admin', '后台系统用户', '更新商品基本信息', '1571144805');
INSERT INTO `shop_user_action` VALUES ('1051', '1', 'admin', '后台系统用户', '更新商品基本信息', '1571144888');
INSERT INTO `shop_user_action` VALUES ('1052', '1', 'admin', '后台系统用户', '更新商品基本信息', '1571144928');
INSERT INTO `shop_user_action` VALUES ('1053', '1', 'admin', '后台系统用户', '更新奖励参数设置', '1571148270');
INSERT INTO `shop_user_action` VALUES ('1054', '1', 'admin', '后台系统用户', '更新奖励参数设置', '1571148733');
INSERT INTO `shop_user_action` VALUES ('1055', '1', 'admin', '后台系统用户', '登录了后台系统', '1571218619');
INSERT INTO `shop_user_action` VALUES ('1056', '1', 'admin', '后台系统用户', '登录了后台系统', '1571230799');
INSERT INTO `shop_user_action` VALUES ('1057', '1', 'admin', '后台系统用户', '登录了后台系统', '1571282498');
INSERT INTO `shop_user_action` VALUES ('1058', '1', 'admin', '后台系统用户', '登录了后台系统', '1571735214');
INSERT INTO `shop_user_action` VALUES ('1059', '1', 'admin', '后台系统用户', '登录了后台系统', '1571826369');
INSERT INTO `shop_user_action` VALUES ('1060', '1', 'admin', '后台系统用户', '登录了后台系统', '1571826581');
INSERT INTO `shop_user_action` VALUES ('1061', '1', 'admin', '后台系统用户', '登录了后台系统', '1571838445');
INSERT INTO `shop_user_action` VALUES ('1062', '1', 'admin', '后台系统用户', '登录了后台系统', '1571917285');
INSERT INTO `shop_user_action` VALUES ('1063', '1', 'admin', '后台系统用户', '登录了后台系统', '1572933651');
INSERT INTO `shop_user_action` VALUES ('1064', '1', 'admin', '后台系统用户', '登录了后台系统', '1572962177');
INSERT INTO `shop_user_action` VALUES ('1065', '1', 'admin', '后台系统用户', '登录了后台系统', '1573921896');
INSERT INTO `shop_user_action` VALUES ('1066', '1', 'admin', '后台系统用户', '登录了后台系统', '1574847262');
INSERT INTO `shop_user_action` VALUES ('1067', '1', 'admin', '后台系统用户', '登录了后台系统', '1574847421');
INSERT INTO `shop_user_action` VALUES ('1068', '1', 'admin', '后台系统用户', '编辑了会员', '1574848064');
INSERT INTO `shop_user_action` VALUES ('1069', '1', 'admin', '后台系统用户', '编辑了会员', '1574848084');
INSERT INTO `shop_user_action` VALUES ('1070', '1', 'admin', '后台系统用户', '登录了后台系统', '1587174749');
INSERT INTO `shop_user_action` VALUES ('1071', '1', 'admin', '后台系统用户', '更新系统基本配置', '1587174777');
INSERT INTO `shop_user_action` VALUES ('1072', '1', 'admin', '后台系统用户', '删除了品牌', '1587174832');
INSERT INTO `shop_user_action` VALUES ('1073', '1', 'admin', '后台系统用户', '修改了系统用户', '1587174973');
INSERT INTO `shop_user_action` VALUES ('1074', '1', 'admin', '后台系统用户', '退出了系统', '1587174978');
INSERT INTO `shop_user_action` VALUES ('1075', '1', 'admin', '后台系统用户', '登录了后台系统', '1587174997');
INSERT INTO `shop_user_action` VALUES ('1076', '1', 'admin', '后台系统用户', '编辑了会员', '1587175052');
INSERT INTO `shop_user_action` VALUES ('1077', '1', 'admin', '后台系统用户', '编辑了会员', '1587175069');
INSERT INTO `shop_user_action` VALUES ('1078', '1', 'admin', '后台系统用户', '登录了后台系统', '1605930434');
INSERT INTO `shop_user_action` VALUES ('1079', '1', 'admin', '后台系统用户', '编辑了会员', '1605930622');
INSERT INTO `shop_user_action` VALUES ('1080', '1', 'admin', '后台系统用户', '更新系统基本配置', '1605931032');
INSERT INTO `shop_user_action` VALUES ('1081', '1', 'admin', '后台系统用户', '编辑了会员', '1605943323');
INSERT INTO `shop_user_action` VALUES ('1082', '1', 'admin', '后台系统用户', '登录了后台系统', '1606116193');
INSERT INTO `shop_user_action` VALUES ('1083', '1', 'admin', '后台系统用户', '登录了后台系统', '1608041181');
INSERT INTO `shop_user_action` VALUES ('1084', '1', 'admin', '后台系统用户', '更新系统基本配置', '1608041249');
INSERT INTO `shop_user_action` VALUES ('1085', '1', 'admin', '后台系统用户', '登录了后台系统', '1608106027');
INSERT INTO `shop_user_action` VALUES ('1086', '1', 'admin', '后台系统用户', '登录了后台系统', '1608343399');
INSERT INTO `shop_user_action` VALUES ('1087', '1', 'admin', '后台系统用户', '登录了后台系统', '1608354104');
INSERT INTO `shop_user_action` VALUES ('1088', '1', 'admin', '后台系统用户', '编辑了会员', '1608354130');
INSERT INTO `shop_user_action` VALUES ('1089', '1', 'admin', '后台系统用户', '编辑了会员', '1608354144');
INSERT INTO `shop_user_action` VALUES ('1090', '1', 'admin', '后台系统用户', '编辑了会员', '1608360758');
INSERT INTO `shop_user_action` VALUES ('1091', '1', 'admin', '后台系统用户', '登录了后台系统', '1608441059');
INSERT INTO `shop_user_action` VALUES ('1092', '1', 'admin', '后台系统用户', '登录了后台系统', '1608695352');

-- ----------------------------
-- Table structure for shop_user_bank
-- ----------------------------
DROP TABLE IF EXISTS `shop_user_bank`;
CREATE TABLE `shop_user_bank` (
  `user_bank_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '会员id',
  `bank_name` varchar(255) DEFAULT NULL COMMENT '银行名字',
  `bank_name2` varchar(255) DEFAULT NULL COMMENT '银行支行名字',
  `bank_user` varchar(255) DEFAULT NULL COMMENT '开户人',
  `bank_num` varchar(255) DEFAULT NULL COMMENT '银行卡号',
  `default` int(5) DEFAULT NULL COMMENT '0=>不默认，1=>默认',
  PRIMARY KEY (`user_bank_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_user_bank
-- ----------------------------
INSERT INTO `shop_user_bank` VALUES ('4', '84', '农行', '广州白云支行', '陈忠强', '4668482222333668956', '1');

-- ----------------------------
-- Table structure for shop_user_coupon
-- ----------------------------
DROP TABLE IF EXISTS `shop_user_coupon`;
CREATE TABLE `shop_user_coupon` (
  `user_coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `coupon_id` int(11) DEFAULT NULL COMMENT '优惠券id',
  `coupon_number` varchar(255) DEFAULT NULL COMMENT '优惠券编号',
  `state` int(11) DEFAULT NULL COMMENT '1=>未使用，2=>已使用，3=>已过期',
  PRIMARY KEY (`user_coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_user_coupon
-- ----------------------------

-- ----------------------------
-- Table structure for shop_wallet
-- ----------------------------
DROP TABLE IF EXISTS `shop_wallet`;
CREATE TABLE `shop_wallet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '用户id',
  `principal` decimal(65,2) DEFAULT '0.00' COMMENT '可提现',
  `interest` decimal(65,2) DEFAULT '0.00' COMMENT '积分',
  `number` int(11) NOT NULL DEFAULT '0' COMMENT '名额',
  `accumulate` decimal(15,2) DEFAULT '0.00' COMMENT '累计收益',
  `settlement` decimal(15,2) DEFAULT '0.00' COMMENT '待结算收益',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_wallet
-- ----------------------------
INSERT INTO `shop_wallet` VALUES ('57', '59', '1325.35', '34.00', '3', '430.75', '64.10');
INSERT INTO `shop_wallet` VALUES ('58', '60', '0.00', '20.00', '1', '0.00', '0.00');
INSERT INTO `shop_wallet` VALUES ('59', '61', '0.00', '0.00', '0', '0.00', '0.00');
INSERT INTO `shop_wallet` VALUES ('60', '62', '0.00', '0.00', '0', '0.00', '0.00');
INSERT INTO `shop_wallet` VALUES ('61', '63', '0.00', '0.00', '0', '0.00', '0.00');
INSERT INTO `shop_wallet` VALUES ('62', '64', '79.08', '40.00', '2', '79.08', '1.82');
INSERT INTO `shop_wallet` VALUES ('63', '65', '241.66', '20.00', '1', '211.66', '0.00');
INSERT INTO `shop_wallet` VALUES ('64', '66', '0.02', '20.00', '1', '0.02', '0.00');
INSERT INTO `shop_wallet` VALUES ('65', '67', '405.43', '22.00', '2', '5.43', '0.00');
INSERT INTO `shop_wallet` VALUES ('66', '68', '177.29', '20.00', '1', '177.29', '1.82');
INSERT INTO `shop_wallet` VALUES ('67', '69', '842.40', '20.00', '1', '0.00', '0.00');
INSERT INTO `shop_wallet` VALUES ('68', '70', '0.00', '20.00', '1', '0.00', '0.00');
INSERT INTO `shop_wallet` VALUES ('69', '71', '0.00', '20.00', '1', '0.00', '0.00');
INSERT INTO `shop_wallet` VALUES ('70', '72', '0.00', '0.00', '0', '0.00', '0.00');
INSERT INTO `shop_wallet` VALUES ('71', '73', '114.26', '20.00', '1', '114.26', '1.82');
INSERT INTO `shop_wallet` VALUES ('72', '74', '814.06', '20.00', '1', '289.06', '1.82');
INSERT INTO `shop_wallet` VALUES ('73', '75', '0.00', '20.00', '1', '0.00', '0.00');
INSERT INTO `shop_wallet` VALUES ('74', '76', '2.71', '20.00', '1', '2.71', '0.18');
INSERT INTO `shop_wallet` VALUES ('75', '77', '285.84', '20.00', '1', '235.84', '2.18');
INSERT INTO `shop_wallet` VALUES ('76', '78', '511.70', '54.00', '1', '131.10', '0.00');
INSERT INTO `shop_wallet` VALUES ('77', '79', '184.00', '20.00', '1', '184.00', '0.00');
INSERT INTO `shop_wallet` VALUES ('78', '80', '274.80', '20.00', '1', '174.80', '0.00');
INSERT INTO `shop_wallet` VALUES ('79', '81', '0.00', '0.00', '0', '0.00', '0.00');
INSERT INTO `shop_wallet` VALUES ('80', '82', '0.00', '0.00', '0', '0.00', '0.00');
INSERT INTO `shop_wallet` VALUES ('81', '83', '0.00', '0.00', '0', '0.00', '0.00');
INSERT INTO `shop_wallet` VALUES ('82', '84', '7104.45', '470.00', '5', '677.55', '19.66');
INSERT INTO `shop_wallet` VALUES ('83', '85', '0.00', '0.00', '0', '0.00', '0.00');
INSERT INTO `shop_wallet` VALUES ('84', '86', '1281.60', '0.00', '0', '0.00', '0.00');
INSERT INTO `shop_wallet` VALUES ('85', '87', '1039.63', '20.00', '1', '173.93', '0.00');
INSERT INTO `shop_wallet` VALUES ('86', '88', '187.09', '20.00', '1', '187.09', '0.00');
INSERT INTO `shop_wallet` VALUES ('87', '89', '163.03', '20.00', '1', '163.03', '0.00');
INSERT INTO `shop_wallet` VALUES ('88', '90', '602.00', '20.00', '1', '0.00', '0.00');
INSERT INTO `shop_wallet` VALUES ('89', '91', '163.03', '20.00', '1', '163.03', '0.00');
INSERT INTO `shop_wallet` VALUES ('90', '92', '388.00', '40.00', '2', '0.00', '0.00');
INSERT INTO `shop_wallet` VALUES ('91', '93', '0.00', '0.00', '2', '0.00', '0.00');
INSERT INTO `shop_wallet` VALUES ('92', '94', '0.00', '0.00', '0', '0.00', '0.00');
INSERT INTO `shop_wallet` VALUES ('93', '95', '190.86', '40.00', '2', '190.86', '0.00');
INSERT INTO `shop_wallet` VALUES ('94', '96', '331.91', '20.00', '1', '279.51', '5.43');
INSERT INTO `shop_wallet` VALUES ('95', '97', '437.37', '20.00', '1', '366.17', '10.86');
INSERT INTO `shop_wallet` VALUES ('96', '98', '0.00', '0.00', '0', '0.00', '0.00');
INSERT INTO `shop_wallet` VALUES ('97', '99', '109.85', '20.00', '1', '109.85', '0.00');
INSERT INTO `shop_wallet` VALUES ('98', '100', '0.00', '0.00', '0', '0.00', '0.00');
INSERT INTO `shop_wallet` VALUES ('99', '101', '147.20', '0.00', '0', '0.00', '0.00');
INSERT INTO `shop_wallet` VALUES ('100', '102', '0.00', '20.00', '1', '0.00', '0.00');
INSERT INTO `shop_wallet` VALUES ('101', '103', '646.09', '1020.00', '1', '143.69', '0.00');
INSERT INTO `shop_wallet` VALUES ('102', '104', '115.28', '20.00', '1', '115.28', '0.00');
INSERT INTO `shop_wallet` VALUES ('103', '105', '543.00', '1000.00', '2', '0.00', '0.00');
INSERT INTO `shop_wallet` VALUES ('104', '106', '557.46', '20.00', '1', '313.66', '18.98');
INSERT INTO `shop_wallet` VALUES ('105', '107', '0.00', '20.00', '1', '0.00', '0.00');
INSERT INTO `shop_wallet` VALUES ('106', '108', '223.67', '40.00', '2', '223.67', '0.00');
INSERT INTO `shop_wallet` VALUES ('107', '109', '0.00', '0.00', '0', '0.00', '0.00');
INSERT INTO `shop_wallet` VALUES ('108', '110', '437.65', '20.00', '1', '335.65', '5.43');
INSERT INTO `shop_wallet` VALUES ('109', '111', '84.00', '138.00', '1', '0.00', '11.58');
INSERT INTO `shop_wallet` VALUES ('110', '112', '270.37', '20.00', '1', '132.97', '40.34');
INSERT INTO `shop_wallet` VALUES ('111', '113', '143.20', '110.00', '8', '0.00', '0.00');
INSERT INTO `shop_wallet` VALUES ('112', '114', '131.10', '20.00', '1', '131.10', '0.00');
INSERT INTO `shop_wallet` VALUES ('113', '115', '36.62', '20.00', '1', '36.62', '0.00');
INSERT INTO `shop_wallet` VALUES ('114', '116', '0.00', '20.00', '1', '0.00', '0.00');
INSERT INTO `shop_wallet` VALUES ('115', '117', '681.79', '40.00', '2', '243.08', '0.00');
INSERT INTO `shop_wallet` VALUES ('116', '118', '115.64', '20.00', '1', '115.64', '0.00');
INSERT INTO `shop_wallet` VALUES ('117', '119', '559.82', '20.00', '1', '36.62', '0.00');
INSERT INTO `shop_wallet` VALUES ('118', '120', '0.00', '20.00', '1', '0.00', '0.00');
INSERT INTO `shop_wallet` VALUES ('119', '121', '669.66', '20.00', '1', '146.46', '0.00');
INSERT INTO `shop_wallet` VALUES ('120', '122', '0.00', '0.00', '0', '0.00', '0.00');
INSERT INTO `shop_wallet` VALUES ('121', '123', '0.00', '0.00', '0', '0.00', '0.00');

-- ----------------------------
-- Table structure for shop_weight_class
-- ----------------------------
DROP TABLE IF EXISTS `shop_weight_class`;
CREATE TABLE `shop_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `title` varchar(32) DEFAULT NULL,
  `unit` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`weight_class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='重量单位';

-- ----------------------------
-- Records of shop_weight_class
-- ----------------------------
INSERT INTO `shop_weight_class` VALUES ('1', '1.00000000', '千克', 'kg');
INSERT INTO `shop_weight_class` VALUES ('2', '1000.00000000', '克', 'g');
