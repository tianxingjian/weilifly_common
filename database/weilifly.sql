/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : weilifly

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2014-12-16 21:27:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bt_config
-- ----------------------------
DROP TABLE IF EXISTS `bt_config`;
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL COMMENT '类型 1，积分设置 3，购物车定时',
  `name` varchar(255) DEFAULT NULL COMMENT '名称（描述）',
  `var` text COMMENT '内容',
  `status` int(11) DEFAULT NULL COMMENT '状态 1，开启 2，关闭',
  `title` varchar(200) DEFAULT NULL COMMENT '标题（备用字段）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bt_config
-- ----------------------------
INSERT INTO `bt_config` VALUES ('1', '1', '在线支持', '<p style=\"font-family:Arial;font-size:medium;\">\n	<span style=\"font-family:微软雅黑;color:#333333;font-size:12px;\"><span style=\"line-height:24px;font-family:微软雅黑;color:#333333;font-size:18px;font-weight:bold;\"><span style=\"line-height:24px;font-family:微软雅黑;color:#333333;font-size:18px;font-weight:bold;\"></span></span></span>\n</p>\n<div style=\"background-color:#ffffff;margin:40px 0px 20px;font-family:微软雅黑;color:#23ac38;font-size:28px;\" class=\"m1\">\n	服务时间\n</div>\n<p>\n	<span style=\"line-height:1.5;font-family:微软雅黑;font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style=\"line-height:2;\">客户服务专员和自动语音服务系统全年365 天提供服务</span></span> \n</p>\n<p>\n	<span style=\"line-height:2;\"><span style=\"line-height:21px;font-family:微软雅黑;font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span>人工服务：<span style=\"color:#23ac38;\">周一至周五8:30 — 20:30</span></span> \n</p>\n<p>\n	<span style=\"line-height:2;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style=\"color:#23ac38;\">周六、周日9:00 — 17:00</span></span> \n</p>\n<p>\n	<span style=\"line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style=\"color:#23ac38;\">法定节假日正常休息</span></span> \n</p>\n<p>\n	<span></span><span style=\"line-height:2;\"><span style=\"line-height:21px;font-family:微软雅黑;font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span>自动录音服务：<span style=\"color:#23ac38;\">24&nbsp;小时</span></span> \n</p>\n<p>\n	<span style=\"line-height:21px;font-family:微软雅黑;font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span> \n	<table style=\"width:100%;\" class=\"ke-zeroborder\" border=\"0\" cellspacing=\"0\" bordercolor=\"#000000\" cellpadding=\"0\">\n		<tbody>\n			<tr>\n				<td>\n					<p>\n						<span style=\"line-height:21px;font-family:微软雅黑;font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><img alt=\"\" src=\"http://java.shovesoft.com/kuaiyidian/attached/image/2014/20140905/201409051802538805.png\" /> \n					</p>\n				</td>\n				<td>\n					<p>\n						<span style=\"color:#23ac38;font-size:18px;\">400 678 0315</span> \n					</p>\n					<p>\n						<span><span style=\"font-size:12px;\">（400未覆盖地区可拨打座机0755-66823211） &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><br />\n</span>\n					</p>\n				</td>\n			</tr>\n			<tr>\n				<td>\n					<span style=\"line-height:21px;font-family:微软雅黑;font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><img alt=\"\" src=\"http://java.shovesoft.com/kuaiyidian/attached/image/2014/20140905/201409051803013280.png\" /><br />\n				</td>\n				<td>\n					<span style=\"color:#23ac38;font-size:18px;\"><a href=\"file://C:/Users/Administrator/Desktop/%E5%BF%AB%E6%98%93%E5%85%B8/%E5%BF%AB%E6%98%93%E5%85%B8%E9%9D%99%E6%80%81%E9%A1%B5%E9%9D%A2/%E5%BF%AB%E6%98%93%E5%85%B8%E9%9D%99%E6%80%81%E9%A1%B5%E9%9D%A2/%E5%9C%A8%E7%BA%BF%E6%94%AF%E6%8C%81.html#\"><span style=\"color:#23ac38;\">hp-service@hwapu22.com</span></a>&nbsp;<span>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span></span><br />\n				</td>\n			</tr>\n		</tbody>\n	</table>\n</p>\n<p>\n	<br />\n</p>', '1', null);
INSERT INTO `bt_config` VALUES ('2', '2', '服务政策', '<p>\n	<span style=\"font-size:14px;color:#23AC38;\">深圳微力科技有限公司</span> \n</p>\n<p>\n	<br />\n</p>\n<br />', '1', null);
INSERT INTO `bt_config` VALUES ('3', '3', '2249385428', 'upload/image/admin/2014/20141210/201412101720333077.jpg', '1', '在线客服2');
INSERT INTO `bt_config` VALUES ('4', '4', '471251398', 'upload/image/admin/2014/20141210/201412101720447672.jpg', '1', '在线客服1');
INSERT INTO `bt_config` VALUES ('5', '5', '284268996', 'upload/image/admin/2014/20141212/201412121202125814.png', '1', null);
INSERT INTO `bt_config` VALUES ('6', '6', '60', 'upload/image/admin/2014/20140919/201409191606431428.jpg', null, '学霸专属智能家教机，智能掌控，学霸不是梦');
INSERT INTO `bt_config` VALUES ('7', '6', '60', 'upload/image/admin/2014/20140919/201409191607019275.jpg', null, '幼儿专属，孩子的成长玩伴、父母的早教顾问');
INSERT INTO `bt_config` VALUES ('8', '6', '58', 'upload/image/admin/2014/20140919/20140919160715520.jpg', null, '中小学生专属智能家教机\n智能防近视，控上网，补学习');
INSERT INTO `bt_config` VALUES ('9', '7', '深圳市微力科技有限公司创立于2002年，是一家集研发、生产、销售为一体的高新技术企业，主要产品为智能家教机，电子书包……ɑupload/image/admin/2014/20140919/201409191623089062.jpg', 'upload/media/admin/2014/20140919/201409191622575335.flv', null, null);
INSERT INTO `bt_config` VALUES ('10', '11', '400-000-0000', 'upload/image/admin/2014/20140911/201409111344236913.png', '1', null);
INSERT INTO `bt_config` VALUES ('11', '8', null, '<p style=\"text-align:center;\">\n	<strong><span style=\"font-size:18px;\">Our Privacy Policy</span></strong>\n</p>\n<p>\n	<br />\n</p>\n<p>\n	Koridy may use tools or third-party analytical software to collect and use data including, but not limited to: (i) device properties, including the IP address, Media Access Control (“MAC”) address and unique device identifier or other persistent or non-persistent device identifier (“Device ID”); (ii) device software platform and firmware; (iii) playing duration, game progress, score and achievements; (iv) other non-personal data as reasonably required by Koridy to enhance our products and services.\n</p>\n<p>\n	<br />\n</p>\n<p>\n	Our website and mobile applications comply with the Children’s Online Privacy Protection Act. We do not knowingly collect any personal information from children under the age of 13. If a user is identified as a child under the age of 13 through a support request, we will not collect, store or use such personal information, and any personal information that has been provided will be deleted.\n</p>\n<p>\n	<br />\n</p>\n<p>\n	Any personal information that you choose provide to us will be used solely for the purpose it was intended, this includes, but is not limited to:\n</p>\n<p>\n	Email List: When you subscribe to our email list, you will be asked to provide your email address. Your email may be provided to a third-party service solely for the purpose of fulfilling your request. This is an opt-in service and you may unsubscribe at any time.\n</p>\n<p>\n	<br />\n</p>\n<p>\n	Technical Support: When you request technical support, we may ask for information relevant to your request, including information about your device, your software, your operating system and your contact information. This information will only be used to assist you with your support request.\n</p>\n<p>\n	<br />\n</p>\n<p>\n	Contests and Promotions: If you participate in a contest, you may be asked to provide personal information, including but not limited to your name, email address and physical mailing address. By providing this information, you agree to receive future promotional materials. You may opt out of these promotions at any time by contacting us.\n</p>\n<p>\n	<br />\n</p>\n<p>\n	When you visit our website, we may send cookies to your computer that uniquely identify your browser. Most browsers allow you to disable cookies or set your browser to alert you when cookies are being sent to your computer.\n</p>\n<p>\n	We may provide links and/or connections to third-party websites or services from our website. We are not responsible for the privacy practices or content of these third-party sites.\n</p>\n<p>\n	<br />\n</p>\n<p>\n	We may amend this Privacy Policy from time to time. Use of the information we collect is subject to the Privacy Policy in effect at the time such information is collected. If you have any questions concerning our Privacy Policy, you may contact us.\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<br />\n</p>', '1', null);
INSERT INTO `bt_config` VALUES ('12', '9', '掌上洪城τhttp://kuaiyidian.tmall.com/メ在线客服τhttp://webchat.b.qq.com/webchat.htm?sid=2249385428’, ’upload/image/admin/2014/20140919/201409191610137230.jpg', 'upload/image/admin/2014/20141210/201412101829158974.pngτupload/image/admin/2014/20141210/201412101827317201.jpg', '1', '1τ1');
INSERT INTO `bt_config` VALUES ('13', '10', null, 'upload/image/admin/2014/20140919/201409191610354984.jpg', '1', null);
INSERT INTO `bt_config` VALUES ('14', '11', '弹出广告图片管理', null, '1', null);

-- ----------------------------
-- Table structure for bt_rights
-- ----------------------------
DROP TABLE IF EXISTS `bt_rights`;
CREATE TABLE `bt_rights` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `summary` varchar(50) DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `isLog` int(11) DEFAULT '1' COMMENT '是否记录日志\r\n1：是\r\n2：否',
  `isIntercept` int(11) DEFAULT '1' COMMENT '是否权限拦截\r\n1：是\r\n2：否',
  `parentId` bigint(20) DEFAULT NULL COMMENT '父编号',
  `isQuery` int(11) DEFAULT NULL COMMENT '是否是查询',
  `indexs` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bt_rights
-- ----------------------------
INSERT INTO `bt_rights` VALUES ('-9', '用户管理', null, '用户管理', '1', '1', null, '1', '9');
INSERT INTO `bt_rights` VALUES ('-8', 'Banner管理', null, 'Banner管理', '1', '1', null, '1', '8');
INSERT INTO `bt_rights` VALUES ('-7', '内容管理', null, '内容管理', '1', '1', null, '1', '7');
INSERT INTO `bt_rights` VALUES ('-6', '底部信息管理', null, '底部信息管理', '1', '1', null, '1', '6');
INSERT INTO `bt_rights` VALUES ('-5', '下载管理', null, '下载管理', '1', '1', null, '1', '5');
INSERT INTO `bt_rights` VALUES ('-4', '代理商专区', null, '代理商专区', '1', '1', null, '1', '4');
INSERT INTO `bt_rights` VALUES ('-3', '产品管理', null, '产品管理', '1', '1', null, '1', '3');
INSERT INTO `bt_rights` VALUES ('-2', '服务管理', null, '服务管理', '1', '1', null, '1', '2');
INSERT INTO `bt_rights` VALUES ('-1', '系统管理', null, '系统管理', '1', '1', null, '1', '1');
INSERT INTO `bt_rights` VALUES ('1', ' 管理员管理', 'queryAdminInit.do', '管理员管理', '1', '1', '-1', '1', '10');
INSERT INTO `bt_rights` VALUES ('2', '添加管理员', 'addAdminInit.do', '添加管理员', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('3', '修改管理员', 'updateAdminInit.do', '修改管理员', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('4', '	角色权限管理', 'queryRoleList.do', '	角色权限管理', '1', '1', '-1', '1', '11');
INSERT INTO `bt_rights` VALUES ('5', '添加角色权限', 'addRoleList.do', '添加角色权限', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('6', '修改角色权限', 'updateRoleList.do', '修改角色权限', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('7', '删除角色权限', 'deleteRoleList.do', '删除角色权限', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('8', '	首页经典视频', 'updateConfigVideoInit.do', '	首页经典视频', '1', '1', '-1', '1', '12');
INSERT INTO `bt_rights` VALUES ('9', '修改首页经典视频', 'updateConfigVideo.do', '修改首页经典视频', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('10', 'SEO设置', 'querySeoPageInit.do', 'SEO设置', '1', '1', '-1', '1', '14');
INSERT INTO `bt_rights` VALUES ('11', '修改SEO设置', 'updateSeoPage.do', '修改SEO设置', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('12', ' 在线支持管理', 'updateConfigOnLineInit.do', '在线支持管理', '1', '1', '-2', '1', '16');
INSERT INTO `bt_rights` VALUES ('13', '修改在线支持管理', 'updateConfig.do', '修改在线支持管理', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('14', '	网点分布管理', 'queryWebDistributeInit.do', '	网点分布管理', '1', '1', '-2', '1', '17');
INSERT INTO `bt_rights` VALUES ('15', '添加网点分布', 'addWebDistributeInit.do', '添加啊网点分布', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('16', '修改网点分布', 'updateWebDistributeInit.do', '修改网点分布', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('17', '删除网点分布', 'deleteWebDistribute.do', '删除网点分布', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('18', ' 常见问题管理', 'queryQuestionListInit.do', '常见问题管理', '1', '1', '-2', '1', '18');
INSERT INTO `bt_rights` VALUES ('19', '添加常见问题', 'addQuestionListInit.do', '添加常见问题', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('20', '修改常见问题', 'updateQuestionListInit.do', '修改常见问题', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('21', '删除常见问题', 'deleteQuestion.do', '删除常见问题', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('22', '服务政策管理', 'updateServicePolicyInit.do', '服务政策管理', '1', '1', '-2', '1', '19');
INSERT INTO `bt_rights` VALUES ('23', '修改服务政策', 'updateService.do', '修改服务政策', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('24', '服务在线客服2管理', 'updatePreSalesConsultingInit.do', '服务在线客服2管理', '1', '1', '-2', '1', '20');
INSERT INTO `bt_rights` VALUES ('25', '修改服务在线客服2', 'updatePreSalesConsulting.do', '修改服务在线客服2', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('26', '服务在线客服1管理', 'updateAfterSalesConsultingInit.do', '服务在线客服1管理', '1', '1', '-2', '1', '21');
INSERT INTO `bt_rights` VALUES ('27', '修改服务在线客服1', 'updateAfterSalesConsulting.do', '修改服务在线客服1', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('28', ' 参数管理', 'queryParameterList.do', '参数管理', '1', '1', '-3', '1', '22');
INSERT INTO `bt_rights` VALUES ('29', '修改参数', 'updateParameterList.do', '修改参数', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('30', '添加参数', 'addParameterList.do', '添加参数', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('31', '删除参数', 'deleteParameterList.do', '删除参数', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('32', '产品系列管理', 'queryProductCategoryInit.do', '产品系列管理', '1', '1', '-3', '1', '23');
INSERT INTO `bt_rights` VALUES ('33', '添加产品系列', 'addProductCategoryInit.do', '添加产品系列', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('34', '修改产品系列', 'updateProductCategoryInit.do', '修改产品系列', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('35', '删除产品系列', 'deleteProductCategory.do', '删除产品系列', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('36', '	产品管理', 'queryProductInit.do', '	产品管理', '1', '1', '-3', '1', '24');
INSERT INTO `bt_rights` VALUES ('37', '添加产品', 'addProductInit.do', '添加产品', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('38', '修改产品', 'updateProductInit.do', '修改产品', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('39', '删除产品', 'deleteProduct.do', '删除产品', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('40', ' 首页产品推荐', 'queryProductConfig.do', '首页产品推荐', '1', '1', '-3', '1', '25');
INSERT INTO `bt_rights` VALUES ('41', '修改首页产品推荐', 'updateProductConfig.do', '修改首页产品推荐', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('42', ' 代理商管理', 'queryUserInit.do', '代理商管理', '1', '1', '-4', '1', '26');
INSERT INTO `bt_rights` VALUES ('43', '添加代理商', 'addUserInit.do', '添加代理商', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('44', '修改代理商', 'updateUserInit.do', '修改代理商', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('45', '删除代理商', 'deleteUserInit.do', '删除代理商', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('46', ' 设计素材分类管理', 'queryDesignCategoryOne.do', '设计素材分类管理', '1', '1', '-4', '1', '27');
INSERT INTO `bt_rights` VALUES ('47', '添加设计素材', 'addDesignCategoryOne.do', '添加设计素材', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('48', '修改设计素材', 'updateDesignCategoryOne.do', '修改设计素材', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('49', '删除设计素材', 'deleteDesignCategoryOne.do', '删除设计素材', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('50', '设计素材管理', 'queryDesignInit.do', '设计素材管理', '1', '1', '-4', '1', '28');
INSERT INTO `bt_rights` VALUES ('51', '添加设计素材', 'addDesignInit.do', '添加设计素材', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('52', '修改设计素材', 'updateDesignInit.do', '修改设计素材', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('53', '删除设计素材', 'deleteDesignInit.do', '删除设计素材', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('54', '质检报告管理', 'queryReportInit.do', '质检报告管理', '1', '1', '-4', '1', '29');
INSERT INTO `bt_rights` VALUES ('55', '添加质检报告', 'addReportInit.do', '添加质检报告', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('56', '修改质检报告', 'updateReportInit.do', '修改质检报告', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('57', '删除质检报告', 'deleteReport.do', '删除质检报告', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('58', '属性管理', 'queryAttributeInit.do', '属性管理', '1', '1', '-5', '1', '31');
INSERT INTO `bt_rights` VALUES ('59', '添加属性', 'addAttributeInit.do', '添加属性', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('60', '修改属性', 'updateAttributeInit.do', '修改属性', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('61', '删除属性', 'deleteAttributeInit.do', '删除属性', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('62', '资料管理', 'queryMaterialsInit.do', '资料管理', '1', '1', '-5', '1', '32');
INSERT INTO `bt_rights` VALUES ('63', '添加资料', 'addMaterialsInit.do', '添加资料', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('64', '修改资料', 'updateMaterialsInit.do', '修改资料', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('65', '删除资料', 'deleteMaterialsInit.do', '删除资料', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('66', '下载资料管理', 'queryDownloadInit.do', '下载资料管理', '1', '1', '-5', '1', '33');
INSERT INTO `bt_rights` VALUES ('67', '添加升级程序', 'addUpdateProgramInit.do', '添加升级程序', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('68', '修改审计程序', 'updateUpdateProgramInit.do', '修改审计程序', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('69', '删除审计程序', 'deleteUpdateProgramInit.do', '删除审计程序', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('70', '下载帮助管理', 'queryDownloadHelpInit.do', '下载帮助管理', '1', '1', '-5', '1', '34');
INSERT INTO `bt_rights` VALUES ('71', '添加下载帮助', 'addDownloadHelpInit.do', '添加下载帮助', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('72', '修改下载帮助', 'updateDownloadHelpInit.do', '修改下载帮助', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('73', '删除下载帮助', 'deleteDownloadHelp.do', '删除下载帮助', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('74', '广告片管理', 'queryAdvertisementInit.do', '	广告片管理', '1', '1', '-5', '1', '35');
INSERT INTO `bt_rights` VALUES ('75', '添加广告片', 'addAdvertisementInit.do', '添加广告片', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('76', '修改广告片', 'updateAdvertisementInit.do', '修改广告片', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('77', '删除广告片', 'deleteAdvertisement.do', '删除广告片', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('78', ' 底部信息类型管理', 'queryInfo.do', '底部信息类型管理', '1', '1', '-6', '1', '36');
INSERT INTO `bt_rights` VALUES ('79', '添加底部信息类型', 'addInfo.do', '添加底部信息类型', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('80', '修改底部信息类型', 'updateInfo.do', '修改底部信息类型', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('81', '删除底部信息类型', 'deleteInfo.do', '删除底部信息类型', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('82', ' 底部信息管理', 'queryInfoContentInit.do', '底部信息管理', '1', '1', '-6', '1', '37');
INSERT INTO `bt_rights` VALUES ('83', '添加底部信息', 'addInfoContentInit.do', '添加底部信息', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('84', '修改底部信息', 'updateInfoContentInit.do', '修改底部信息', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('85', '删除底部信息', 'deleteInfoContentInit.do', '删除底部信息', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('86', ' 人才招聘管理', 'queryRecruitInit.do', '人才招聘管理', '1', '1', '-6', '1', '40');
INSERT INTO `bt_rights` VALUES ('87', '添加人才招聘', 'addRecruitInit', '添加人才招聘', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('88', '修改人才招聘', 'updateRecruitInit', '修改人才招聘', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('89', '删除人才招聘', 'deleteRecruitInit', '删除人才招聘', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('90', '微信图片管理', 'updateWeiXinInit.do', '微信图片管理', '1', '1', '-6', '1', '36');
INSERT INTO `bt_rights` VALUES ('91', '修改微信图片管理', 'updateWeiXinInit.do', '修改微信图片管理', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('92', '微力管理', 'queryBrandInit.do', '微力管理', '1', '1', '-7', '1', '37');
INSERT INTO `bt_rights` VALUES ('94', '添加模块', 'addBrandInit.do', '添加模块', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('95', '修改模块', 'updateBrandInit.do', '修改模块', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('96', '删除模块', 'deleteBrandInit.do', '删除模块', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('105', ' 品牌广告管理', 'queryBrandAdvertiseInit.do', '品牌广告管理', '1', '1', '-7', '1', '38');
INSERT INTO `bt_rights` VALUES ('106', '添加品牌广告', 'addBrandAdvertiseInit.do', '添加品牌广告', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('107', '修改品牌广告', 'updateBrandAdvertiseInit.do', '修改品牌广告', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('108', '删除品牌广告', 'deleteBrandAdvertiseInit.do', '删除品牌广告', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('109', ' 微力研究管理', 'queryDisplayInit.do', '微力研究管理', '1', '1', '-7', '1', '39');
INSERT INTO `bt_rights` VALUES ('110', '添加微力研究', 'addDisplayInit.do', '添加为例研究', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('111', '修改微力研究', 'updateDisplayInit.do', '修改微力研究', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('112', '删除微力研究', 'deleteDisplay.do', '删除微力研究', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('113', '发展历程管理', 'queryDevelopmentInit.do', '发展历程管理', '1', '1', '-7', '1', '40');
INSERT INTO `bt_rights` VALUES ('114', '添加发展历程', 'addDevelopmentInit.do', '添加发展历程', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('115', '修改发展历程', 'updateDevelopmentInit.do', '修改发展历程', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('116', '删除发展历程', 'deleteDevelopment.do', '删除发展历程', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('117', ' Banner管理', 'queryBannerInit.do', 'Banner管理', '1', '1', '-8', '1', '41');
INSERT INTO `bt_rights` VALUES ('118', '添加Banner', 'addBannerInit.do', '添加Banner', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('119', '修改Banner', 'updateBannerInit.do', '修改Banner', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('120', '删除Banner', 'deleteBanner.do', '删除Banner', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('121', '服务类型管理', 'querySericeType.do', '服务类型管理', '1', '1', '-2', '1', '13');
INSERT INTO `bt_rights` VALUES ('122', '添加服务类型', 'addServiceTypeInit.do', '添加服务类型', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('123', '修改服务类型', 'updateServiceTypeInit.do', '修改服务类型', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('124', '删除服务类型', 'deleteSericeType.do', '删除服务类型', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('125', '儿童类应用隐私协议', 'queryHotlineInit.do', '查询儿童类应用隐私协议', '1', '1', '-8', '1', '42');
INSERT INTO `bt_rights` VALUES ('126', '修改儿童类应用隐私协议', 'queryHotlineInit.do', '修改儿童类应用隐私协议', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('127', '右侧浮动块', 'queryShopInit.do', '右侧浮动块网店', '1', '1', '-8', '1', '43');
INSERT INTO `bt_rights` VALUES ('128', '修改右侧浮动块', 'queryShopInit.do', '修改右侧浮动块', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('129', '电话咨询管理', 'updatePhoneInit.do', '电话咨询管理', '1', '1', '-6', '1', '38');
INSERT INTO `bt_rights` VALUES ('130', '修改电话咨询', 'updatePhone.do', '修改电话咨询', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('131', '图片列表管理', 'queryImgListInit.do', '图片列表管理', '1', '1', '-4', '1', '30');
INSERT INTO `bt_rights` VALUES ('132', '添加图片', 'addImgListInit.do', '添加图片', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('133', '修改图片', 'updateImgListInit.do', '修改图片', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('134', '删除图片', 'deleteImgList.do', '删除图片', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('135', '网点分布类型管理', 'queryWebDistributeType.do', '网点分布类型管理', '1', '1', '-2', '1', '15');
INSERT INTO `bt_rights` VALUES ('136', '添加网点分布类型', 'addWebDistributeTypeInit.do', '添加网点分布类型', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('137', '修改网点分布类型', 'updateWebDistributeTypeInit.do', '修改网点分布类型', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('138', '删除网点分布类型', 'deleteWebDistributeType.do', '删除网点分布类型', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('139', '人才招聘类型管理', 'queryRecruitType.do', '人才招聘类型管理', '1', '1', '-6', '1', '39');
INSERT INTO `bt_rights` VALUES ('140', '添加人才招聘类型', 'addRecruitTypeInit.do', '添加人才招聘类型', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('141', '修改人才招聘类型', 'updateRecruitTypeInit.do', '修改人才招聘类型', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('142', '删除人才招聘类型', 'deleteRecruitType.do', '删除人才招聘类型', '1', '1', null, null, null);
INSERT INTO `bt_rights` VALUES ('143', '资料下载搜索管理', 'querySearchInit.do', '资料下载搜索管理', '1', '1', '-8', '1', '44');
INSERT INTO `bt_rights` VALUES ('144', '弹出广图片告管理', 'queryAdvertInit.do', '弹出广图片告管理', '1', '1', '-8', '1', '45');
INSERT INTO `bt_rights` VALUES ('145', '管理用户', 'queryConsumersInit.do', '管理用户', '1', '1', '-9', '1', '46');

-- ----------------------------
-- Table structure for test_c3p0
-- ----------------------------
DROP TABLE IF EXISTS `test_c3p0`;
CREATE TABLE `test_c3p0` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_c3p0
-- ----------------------------

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `enable` int(11) DEFAULT '1' COMMENT '状态 1：启用2：禁用',
  `lastTime` datetime DEFAULT NULL,
  `lastIP` varchar(50) DEFAULT NULL,
  `roleId` bigint(11) DEFAULT NULL COMMENT '角色编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'admin', '4GV5XUIGJwbJe/9PnpHhf7Njd1xJVCBUyCn4Qvuk1xqDVkA5SlQnVw==', '1', '2014-12-16 21:01:42', '127.0.0.1', '-1');

-- ----------------------------
-- Table structure for t_appadv
-- ----------------------------
DROP TABLE IF EXISTS `t_appadv`;
CREATE TABLE `t_appadv` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '广告名称',
  `image` varchar(100) DEFAULT NULL COMMENT '图片',
  `path` varchar(100) DEFAULT NULL COMMENT '下载路径',
  `isRecommended` int(11) DEFAULT NULL COMMENT '是否推荐（1，是 2，否）',
  `addTime` datetime DEFAULT NULL COMMENT '添加时间',
  `sortIndex` int(11) DEFAULT NULL COMMENT '排序',
  `status` int(11) DEFAULT NULL COMMENT '是否显示（1，是 2，否）',
  `seoTitle` varchar(200) DEFAULT NULL,
  `seoKeywords` text,
  `seoDescription` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_appadv
-- ----------------------------
INSERT INTO `t_appadv` VALUES ('1', '家教智能机视频11', 'upload/image/admin/2014/20140801/201408011122047442.jpg', 'upload/file/admin/2014/20140716/201407161811335231.txt', '1', '2014-07-16 18:11:52', '-1', '1', null, null, null);
INSERT INTO `t_appadv` VALUES ('2', '阿斯蒂芬', 'upload/image/admin/2014/20140802/201408020858056927.jpg', 'upload/media/admin/2014/20140802/201408020857303663.flv', '1', '2014-07-21 08:54:41', '-1', '1', null, null, null);

-- ----------------------------
-- Table structure for t_attribute
-- ----------------------------
DROP TABLE IF EXISTS `t_attribute`;
CREATE TABLE `t_attribute` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `parentId` bigint(20) DEFAULT NULL COMMENT '父编号（-1 父类 >0子类）',
  `sortIndex` int(11) DEFAULT NULL COMMENT '排序',
  `status` int(11) DEFAULT NULL COMMENT '是否显示（1，是 2，否）',
  `addTime` datetime DEFAULT NULL COMMENT '添加时间',
  `productIds` varchar(300) DEFAULT NULL COMMENT '关联产品集',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_attribute
-- ----------------------------
INSERT INTO `t_attribute` VALUES ('1', '精品课件', '-1', '1', '1', '2014-12-15 22:59:39', '');
INSERT INTO `t_attribute` VALUES ('2', '精品视频', '-1', '2', '1', '2014-12-15 22:59:59', '');
INSERT INTO `t_attribute` VALUES ('3', '行业报告', '-1', '3', '1', '2014-12-15 23:00:10', '');
INSERT INTO `t_attribute` VALUES ('4', '案例分析', '-1', '4', '1', '2014-12-15 23:00:19', '');

-- ----------------------------
-- Table structure for t_banner
-- ----------------------------
DROP TABLE IF EXISTS `t_banner`;
CREATE TABLE `t_banner` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'banner编号',
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `imgPath` varchar(100) DEFAULT NULL COMMENT '图片路径',
  `url` varchar(100) DEFAULT NULL COMMENT '链接',
  `imgUrl` varchar(255) DEFAULT NULL COMMENT '右边图标路径',
  `imgFont` varchar(100) DEFAULT NULL COMMENT '右下角图片',
  `sortIndex` int(11) DEFAULT NULL COMMENT '排序',
  `type` int(11) DEFAULT NULL COMMENT '类型（1、pc首页 2、手机首页）',
  `status` int(11) DEFAULT NULL COMMENT '是否显示（1、是 2、否）',
  `addTime` datetime DEFAULT NULL COMMENT '添加时间',
  `urlTwo` varchar(100) DEFAULT NULL COMMENT '右下角图片链接',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='导航栏图表';

-- ----------------------------
-- Records of t_banner
-- ----------------------------
INSERT INTO `t_banner` VALUES ('1', '专业市场O2O领先开发商和运营商', 'upload/image/admin/2014/20141215/20141215092008377.png', 'http://www.weilifly.com', 'upload/image/admin/2014/20141215/201412150920252992.png', 'upload/image/admin/2014/20141215/201412150920354877.png', '1', '1', '1', '2014-08-02 09:23:51', 'http://www.baidu.com');
INSERT INTO `t_banner` VALUES ('2', '落地是真功夫，转化是好功夫', 'upload/image/admin/2014/20141215/201412150920506047.png', 'http://www.baidu.com', 'upload/image/admin/2014/20141215/201412150921018547.png', 'upload/image/admin/2014/20141215/201412150921078872.png', '2', '1', '1', '2014-08-02 09:24:26', 'http://www.baidu.com');
INSERT INTO `t_banner` VALUES ('3', '全国O2O标杆案例：掌上洪城', 'upload/image/admin/2014/20141215/201412150921178386.png', 'http://www.baidu.com', 'upload/image/admin/2014/20141215/201412150921277543.png', 'upload/image/admin/2014/20141215/201412150921374049.png', '3', '1', '1', '2014-08-04 10:45:53', 'http://www.baidu.com');
INSERT INTO `t_banner` VALUES ('4', '一站式落地转化解决方案', 'upload/image/admin/2014/20141215/201412150921567423.png', 'http://www.baidu.com', 'upload/image/admin/2014/20141215/201412150922031646.png', 'upload/image/admin/2014/20141215/201412150922132078.png', '4', '1', '1', '2014-08-13 14:12:07', 'http://www.baidu.com');

-- ----------------------------
-- Table structure for t_brand
-- ----------------------------
DROP TABLE IF EXISTS `t_brand`;
CREATE TABLE `t_brand` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `content` text COMMENT '内容',
  `isLevel` int(11) DEFAULT NULL COMMENT '是否有二级（1，是 2，否）',
  `type` int(11) DEFAULT NULL COMMENT '是否有列表（-1，无 1，时间列表 2，资讯列表 3，广告列表 4，华普报列表 5，报道视频）',
  `parentId` bigint(20) DEFAULT NULL COMMENT '父编号（-1，父类 >0二级子类）',
  `addTime` datetime DEFAULT NULL COMMENT '添加时间',
  `sortIndex` int(11) DEFAULT NULL COMMENT '排序',
  `status` int(11) DEFAULT NULL COMMENT '是否显示（1，是 2，否）',
  `seoTitle` varchar(200) DEFAULT NULL COMMENT 'SEO_标题',
  `seoKeywords` text COMMENT 'SEO_关键字',
  `seoDescription` text COMMENT 'SEO_描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='品牌表';

-- ----------------------------
-- Records of t_brand
-- ----------------------------
INSERT INTO `t_brand` VALUES ('1', '微力理念', '<p style=\"text-align:left;\">\n	<span style=\"text-decoration:none;font-family:微软雅黑;font-weight:normal;color:#333333;font-style:normal;\">深圳市快易典教育科技有限公司创立于2002年，是一家集研发、生产、销售为一体的高新技术企业，主要产品为移动智能学习产品，电子书包、学生电脑、幼儿教育产品、电子辞典等电子教育类高科技产品。快易典先后被评为“国家级高新技术企业”、“全国诚信示范企业”、“广东省著名商标”、“广东省名牌产品”、“深圳市重点文化企业”等。</span> \n</p>\n<p style=\"text-align:left;\">\n	<span style=\"text-decoration:none;font-family:微软雅黑;font-weight:normal;color:#333333;font-style:normal;\">　　</span> \n</p>\n<p style=\"text-align:left;\">\n	<span style=\"text-decoration:none;font-family:微软雅黑;font-weight:normal;color:#333333;font-style:normal;\">　快易典自成立以来即以发展中国教育事业为己任，积极倡导由应试教育向素质教育过渡，探索如何让广大青少年轻松快乐学习，实现让兴趣引导学习，主动学习。基于这个教育课题，快易典倡导“让学习更好”的品牌理念，通过创新的教育资源和产品硬件及功能，结合较好的产品互动体验，伴随学生快乐学习，快乐成长。</span> \n</p>\n<p style=\"text-align:left;\">\n	<span style=\"text-decoration:none;font-family:微软雅黑;font-weight:normal;color:#333333;font-style:normal;\">　　</span> \n</p>\n<p style=\"text-align:left;\">\n	<span style=\"text-decoration:none;font-family:微软雅黑;font-weight:normal;color:#333333;font-style:normal;\">　　快易典秉承“以人为本、诚信立业、创新发展、贡献社会”的经营理念。以市场为导向，达到投资方、员工、合作方、社会等多方利益的共赢，为员工持续提供广阔的发展空间、真诚贡献国家和社会，是快易典公司的历史使命。</span> \n</p>', '2', '-1', '4', '2014-07-17 15:42:03', '1', '1', null, null, null);
INSERT INTO `t_brand` VALUES ('2', '微力文化', null, '1', '-1', '4', '2014-07-17 15:42:39', '2', '1', null, null, null);
INSERT INTO `t_brand` VALUES ('3', '微力发展历程', null, '2', '1', '-1', '2014-07-17 15:43:16', '3', '1', null, null, null);
INSERT INTO `t_brand` VALUES ('4', '微力研究院', '', '2', '2', '-1', '2014-07-17 15:43:48', '4', '1', null, null, null);
INSERT INTO `t_brand` VALUES ('5', '标杆案例', null, '2', '3', '-1', '2014-07-17 15:45:09', '5', '1', null, null, null);
INSERT INTO `t_brand` VALUES ('6', '品牌广告', null, '2', '5', '2', '2014-07-17 15:44:16', '6', '1', null, null, null);
INSERT INTO `t_brand` VALUES ('16', '复古风格', '过分过分过分过分过分过分', '2', '-1', '-1', '2014-12-09 11:58:42', '5', '1', '复古风格', '复古风格', '复古风格风格风格风格风格风格');

-- ----------------------------
-- Table structure for t_brand_advertise
-- ----------------------------
DROP TABLE IF EXISTS `t_brand_advertise`;
CREATE TABLE `t_brand_advertise` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `views` bigint(20) DEFAULT '0' COMMENT '浏览次数',
  `image` varchar(100) DEFAULT NULL COMMENT '图片',
  `path` varchar(100) DEFAULT NULL COMMENT '视频路径',
  `addTime` datetime DEFAULT NULL COMMENT '添加时间',
  `status` int(11) DEFAULT NULL COMMENT '是否显示（1，是 2，否）',
  `sortIndex` int(11) DEFAULT NULL COMMENT '排序',
  `seoTitle` varchar(200) DEFAULT NULL COMMENT 'SEO_标题',
  `seoKeywords` text COMMENT 'SEO_关键字',
  `seoDescription` text COMMENT 'SEO_描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='品牌广告';

-- ----------------------------
-- Records of t_brand_advertise
-- ----------------------------
INSERT INTO `t_brand_advertise` VALUES ('4', 'sf', '33', 'upload/image/admin/2014/20140910/201409101450182217.jpg', 'upload/media/admin/2014/20140718/201407181710347835.flv', '2014-07-18 17:11:12', '1', '-1', null, null, null);
INSERT INTO `t_brand_advertise` VALUES ('5', '时代复分十分丰富', '19', 'upload/image/admin/2014/20140910/201409101450018813.jpg', 'upload/media/admin/2014/20140802/20140802092821597.flv', '2014-07-25 14:16:51', '1', '-1', null, null, null);
INSERT INTO `t_brand_advertise` VALUES ('6', 'rere', '2', 'upload/image/admin/2014/20141215/201412151510386080.jpg', 'upload/media/admin/2014/20141215/20141215151025343.flv', '2014-12-15 15:10:42', '1', '-1', null, null, null);

-- ----------------------------
-- Table structure for t_consumers
-- ----------------------------
DROP TABLE IF EXISTS `t_consumers`;
CREATE TABLE `t_consumers` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(300) DEFAULT NULL COMMENT '客户名称/客户公司名称',
  `c_telephone` varchar(20) DEFAULT NULL COMMENT '客户手机号',
  `c_company` varchar(255) DEFAULT NULL COMMENT '公司名字',
  `c_job` varchar(255) DEFAULT NULL COMMENT '职位',
  `c_email` varchar(255) DEFAULT NULL COMMENT 'eMail',
  `c_qq` varchar(20) DEFAULT NULL COMMENT '客户ＱＱ',
  `needs_status` int(4) DEFAULT NULL COMMENT '客户需求： 对应t_needs表中的id值 ',
  `address` varchar(300) DEFAULT NULL,
  `need_content` varchar(255) DEFAULT NULL COMMENT '要求描述',
  `addTime` datetime DEFAULT NULL COMMENT '加入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_consumers
-- ----------------------------
INSERT INTO `t_consumers` VALUES ('13', null, null, null, null, null, null, '-1', null, null, null);
INSERT INTO `t_consumers` VALUES ('14', '热热', '131', null, null, null, null, '1', '冯绍峰', '辅导费', null);
INSERT INTO `t_consumers` VALUES ('15', '邓雄', '13112121212', null, null, null, null, '1', '南昌', '展示型', null);
INSERT INTO `t_consumers` VALUES ('16', '呼呼', '111', null, null, null, null, '2', 'D大调', '水水水水是', null);

-- ----------------------------
-- Table structure for t_design
-- ----------------------------
DROP TABLE IF EXISTS `t_design`;
CREATE TABLE `t_design` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '设计素材编号',
  `categoryId` bigint(20) DEFAULT NULL COMMENT '分类ID',
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `author` varchar(100) DEFAULT NULL COMMENT '作者',
  `imgUrl` text COMMENT '图片路径',
  `addTime` datetime DEFAULT NULL COMMENT '添加时间',
  `status` int(11) DEFAULT NULL COMMENT '是否显示（1、是 2、否）',
  `sortIndex` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_design
-- ----------------------------
INSERT INTO `t_design` VALUES ('1', '1', '智能家教机— 3C证书3', '快易典', 'upload/image/admin/2014/20140805/201408050958538201.jpg,upload/image/admin/2014/20140805/201408050958542190.jpg', '2014-08-02 09:18:18', '1', '1');
INSERT INTO `t_design` VALUES ('2', '2', '智能家教机— 3C证222', '快易典', 'upload/image/admin/2014/20140804/201408041731263338.png,upload/image/admin/2014/20140804/201408041731489082.jpg,upload/image/admin/2014/20140804/201408041731492675.png', '2014-08-02 09:18:43', '1', '2');
INSERT INTO `t_design` VALUES ('3', '3', '智能家教机—PTV1 视障人士电子听书机 3C证书2', '快易典', 'upload/image/admin/2014/20140805/201408051125587062.jpg,upload/image/admin/2014/20140805/201408051125589286.jpg', '2014-08-05 11:26:03', '1', '3');
INSERT INTO `t_design` VALUES ('4', '1', '智能家教机—PTV1 视障人士电子听书机 3C证书2', 'gsdfg', null, '2014-08-20 11:13:36', '1', '4');
INSERT INTO `t_design` VALUES ('5', '1', 'huodngwuliao', '1', null, '2014-08-29 18:23:25', '1', '1');
INSERT INTO `t_design` VALUES ('6', '4', '屌丝男', '屌丝男', null, '2014-09-01 09:56:40', '1', '1');
INSERT INTO `t_design` VALUES ('7', '5', 'cecece测测测', '测测', null, '2014-09-17 16:31:03', '1', '6');

-- ----------------------------
-- Table structure for t_design_category
-- ----------------------------
DROP TABLE IF EXISTS `t_design_category`;
CREATE TABLE `t_design_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '设计素材编号',
  `name` varchar(100) DEFAULT NULL COMMENT '分类名称',
  `addTime` datetime DEFAULT NULL COMMENT '添加时间',
  `status` int(11) DEFAULT NULL COMMENT '是否显示（1、是 2、否）',
  `sortIndex` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_design_category
-- ----------------------------
INSERT INTO `t_design_category` VALUES ('1', '活动物料', '2014-08-02 09:16:59', '1', '1');
INSERT INTO `t_design_category` VALUES ('2', '产品图片', '2014-08-02 09:17:13', '1', '2');
INSERT INTO `t_design_category` VALUES ('3', '产品折页', '2014-08-02 09:17:36', '1', '3');
INSERT INTO `t_design_category` VALUES ('4', '屌丝男', '2014-08-29 15:24:20', '1', '6');
INSERT INTO `t_design_category` VALUES ('5', '测测测vececec', '2014-09-17 16:30:32', '1', '7');

-- ----------------------------
-- Table structure for t_development
-- ----------------------------
DROP TABLE IF EXISTS `t_development`;
CREATE TABLE `t_development` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `content` text COMMENT '内容',
  `status` int(11) DEFAULT NULL COMMENT '是否显示（1，是 2，否）',
  `addTime` datetime DEFAULT NULL COMMENT '添加时间',
  `sortIndex` int(11) DEFAULT NULL COMMENT '排序',
  `seoTitle` varchar(200) DEFAULT NULL COMMENT 'SEO_标题',
  `seoKeywords` text COMMENT 'SEO_关键字',
  `seoDescription` text COMMENT 'SEO_描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_development
-- ----------------------------
INSERT INTO `t_development` VALUES ('1', '2014-至今', '阿德法撒旦法<span>发射点发射得分</span><span>发射点发射得分</span><span>发射点发射得分</span><span>发射点发射得分</span><span>发射点发射得分</span><span>发射点发射得分</span>', '1', '2014-07-19 09:55:03', '-1', null, null, null);
INSERT INTO `t_development` VALUES ('2', '2013-2015', '阿德法撒旦法<span>发射点发射得分</span><span>发射点发射得分</span><span>发射点发射得分</span><span>发射点发射得分</span><span>发射点发射得分</span><span>发射点发射得分</span><span>发射点发射得分</span><span>发射点发射得分</span><span>发射点发射得分</span>', '1', '2014-07-19 09:56:12', '-1', null, null, null);
INSERT INTO `t_development` VALUES ('3', '2011-2012', '<p>\n	发射点发射得分<span>发射点发射得分</span><span>发射点发射得分</span><span>发射点发射得分</span><span>发射点发射得分</span><span>发射点发射得分</span><span>发射点发射得分</span><span>发射点发射得分</span><span>发</span>\n</p>', '1', '2014-07-19 09:57:13', '-1', null, null, null);
INSERT INTO `t_development` VALUES ('5', '2013-2015', '山东分公司的法国队<span>山东分公司的法国队</span><span>山东分公司的法国队</span><span>山东分公司的法国队</span><span>山东分公司的法国队</span><span>山东分公司的法国队</span><span>山东分公司的法国队</span><span>山东分公司的法国队</span><span>山东分公司的法国队</span><span>山东分公司的法国队</span><span>山东分公司的法国队</span><span>山东分公司的法国队</span><span>山东分公司的法国队</span><span>山东分公司的法国队</span><span>山东分公司的法国队</span><span>山东分公司的法国队</span><span>山东分公司的法国队</span><span>山东分公司的法国队</span><span>山东分公司的法国队</span><span>山东分公司的法国队</span><span>山东分公司的法国队</span><span>山东分公司的法国队</span>', '1', '2014-07-29 09:21:04', '-1', null, null, null);

-- ----------------------------
-- Table structure for t_download
-- ----------------------------
DROP TABLE IF EXISTS `t_download`;
CREATE TABLE `t_download` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `categoryId` bigint(20) DEFAULT NULL COMMENT '所属ID',
  `name` varchar(100) DEFAULT NULL COMMENT '名字',
  `image` varchar(200) DEFAULT NULL COMMENT '图片',
  `path` varchar(300) DEFAULT NULL COMMENT '下载路径',
  `isRecommend` int(1) DEFAULT NULL COMMENT '是否推荐：1是   2否',
  `addTime` datetime DEFAULT NULL,
  `sortIndex` int(11) DEFAULT NULL COMMENT '排序',
  `status` int(11) DEFAULT NULL COMMENT '是否显示（1，是 2，否）',
  `seoTitle` varchar(200) DEFAULT NULL COMMENT 'SEO_标题',
  `seoKeywords` text COMMENT 'SEO_关键字',
  `seoDescription` text COMMENT 'SEO_描述',
  `size` double DEFAULT NULL,
  `down_num` int(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_download
-- ----------------------------
INSERT INTO `t_download` VALUES ('1', '1', '数据库插入测试1', 'upload/image/admin/2014/20141215/201412152305154691.jpg', 'upload/file/admin/2014/20141215/201412152305251360.txt', '1', '2014-12-15 23:43:33', '1', '1', '1', '1', '1', null, null);
INSERT INTO `t_download` VALUES ('2', '1', '测试数据1:血字的研究', 'upload/image/admin/2014/20141216/201412161959583712.jpg', 'upload/file/admin/2014/20141216/201412161959465867.txt', null, '2014-12-16 19:59:59', '1', '1', null, null, null, null, null);
INSERT INTO `t_download` VALUES ('3', '3', '测试数据2:行业报告', 'upload/image/admin/2014/20141216/201412162000452823.jpg', 'upload/file/admin/2014/20141216/20141216200113182.txt', null, '2014-12-16 20:01:14', '1', '1', null, null, null, null, null);
INSERT INTO `t_download` VALUES ('4', '2', '曾仕强', 'upload/image/admin/2014/20141216/20141216210242831.jpg', 'upload/all/admin/2014/20141216/201412162102181613.flv', null, '2014-12-16 21:02:43', '1', '1', null, null, null, null, null);

-- ----------------------------
-- Table structure for t_download_category
-- ----------------------------
DROP TABLE IF EXISTS `t_download_category`;
CREATE TABLE `t_download_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(200) DEFAULT NULL COMMENT '下载内容所属类目名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_download_category
-- ----------------------------
INSERT INTO `t_download_category` VALUES ('1', '精品课件');
INSERT INTO `t_download_category` VALUES ('2', '精品视频');
INSERT INTO `t_download_category` VALUES ('3', '行业报告');
INSERT INTO `t_download_category` VALUES ('4', '案例下载');

-- ----------------------------
-- Table structure for t_download_help
-- ----------------------------
DROP TABLE IF EXISTS `t_download_help`;
CREATE TABLE `t_download_help` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `content` text COMMENT '内容',
  `fit` varchar(200) DEFAULT NULL,
  `sortIndex` int(11) DEFAULT NULL COMMENT '排序',
  `status` int(11) DEFAULT NULL COMMENT '是否显示（1，是 2，否）',
  `addTime` datetime DEFAULT NULL COMMENT '发布时间',
  `seoTitle` varchar(200) DEFAULT NULL COMMENT 'SEO_标题',
  `seoKeywords` text COMMENT 'SEO_关键字',
  `seoDescription` text COMMENT 'SEO_描述',
  `image` varchar(200) DEFAULT NULL COMMENT '图片地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_download_help
-- ----------------------------
INSERT INTO `t_download_help` VALUES ('2', '数据线链接电脑', '速读法斯蒂芬斯蒂芬', '点读机V100 / 点读机V200 / 点读机V300 ', '3', '1', '2014-07-16 17:03:11', '', '', '', 'upload/image/admin/2014/20140911/20140911150716908.png');
INSERT INTO `t_download_help` VALUES ('5', '资料下载方法', '阿斯蒂芬斯蒂芬', '阿发速读法斯蒂芬', '1', '1', '2014-07-16 17:07:00', '', '', '', 'upload/image/admin/2014/20140911/201409112105237261.jpg');
INSERT INTO `t_download_help` VALUES ('6', '阿斯蒂芬', '发射点发', '阿发速读法但是', '2', '2', '2014-07-16 17:07:12', '', '', '', 'upload/image/admin/2014/20140911/201409111506526007.jpg');

-- ----------------------------
-- Table structure for t_img_list
-- ----------------------------
DROP TABLE IF EXISTS `t_img_list`;
CREATE TABLE `t_img_list` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '图标编号',
  `tid` int(11) DEFAULT NULL COMMENT '类型编号',
  `imgUrl` varchar(300) DEFAULT NULL COMMENT '图片路径',
  `status` int(11) DEFAULT NULL COMMENT '是否显示（1、是  2、否）',
  `sortIndex` int(11) DEFAULT NULL COMMENT '排序',
  `downUrl` varchar(300) DEFAULT NULL COMMENT '下载地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_img_list
-- ----------------------------
INSERT INTO `t_img_list` VALUES ('1', '2', 'upload/image/admin/2014/20140829/201408291529462992.jpg', '1', '1', '');
INSERT INTO `t_img_list` VALUES ('2', '3', 'upload/image/admin/2014/20140829/2014082915300788.jpg', '1', '2', '');
INSERT INTO `t_img_list` VALUES ('3', '1', 'upload/image/admin/2014/20140830/20140830164250103.png', '1', '1', 'upload/image/admin/2014/20140828/201408281932346995.jpg');
INSERT INTO `t_img_list` VALUES ('4', '4', 'upload/image/admin/2014/20140828/201408281932543890.png', '1', '2', '');
INSERT INTO `t_img_list` VALUES ('5', '4', 'upload/image/admin/2014/20140829/201408291531283997.jpg', '1', '4', '');
INSERT INTO `t_img_list` VALUES ('6', '1', 'upload/image/admin/2014/20140902/20140902142239171.jpg', '1', '1', 'http://www.hwapu.com.cn/softsave2/agentsoftsave/在采访中撒好滴撒谎覅是 的非官方的市场部/2014/林志颖推荐智能家教机.rm');
INSERT INTO `t_img_list` VALUES ('7', '5', 'upload/image/admin/2014/20140902/20140902142950549.jpg', '1', '1', 'http://pd.shopf8.cn/lxy/k/2014.8.25.rar');
INSERT INTO `t_img_list` VALUES ('8', '5', 'upload/image/admin/2014/20140829/201408291825299652.jpg', '1', '2', '');
INSERT INTO `t_img_list` VALUES ('9', '3', 'upload/image/admin/2014/20140901/201409011056461092.jpg', '1', '1', 'upload/file/admin/2014/20140901/201409011051403799.rar');
INSERT INTO `t_img_list` VALUES ('10', '7', 'upload/image/admin/2014/20140917/201409171633223565.jpg', '1', '3', 'upload/file/admin/2014/20140917/201409171633393095.rar');
INSERT INTO `t_img_list` VALUES ('11', '7', 'upload/image/admin/2014/20140917/201409171635367139.jpg', '1', '4', 'upload/file/admin/2014/20140917/201409171635475502.rar');
INSERT INTO `t_img_list` VALUES ('12', '7', 'upload/image/admin/2014/20140917/20140917163616659.jpg', '1', '5', 'upload/file/admin/2014/20140917/201409171636244419.rar');
INSERT INTO `t_img_list` VALUES ('13', '7', 'upload/image/admin/2014/20140917/20140917163655846.jpg', '1', '8', 'upload/file/admin/2014/20140917/201409171637054527.rar');
INSERT INTO `t_img_list` VALUES ('14', '7', 'upload/image/admin/2014/20140918/201409180940016484.jpg', '1', '2', 'upload/file/admin/2014/20140918/201409180939534304.rar');

-- ----------------------------
-- Table structure for t_info
-- ----------------------------
DROP TABLE IF EXISTS `t_info`;
CREATE TABLE `t_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '信息编号',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `sortIndex` int(11) DEFAULT NULL COMMENT '排序',
  `status` int(11) DEFAULT NULL COMMENT '是否在底部显示（1、是 2、否）',
  `addTime` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_info
-- ----------------------------
INSERT INTO `t_info` VALUES ('1', '关于我们', '1', '1', '2014-07-21 11:02:39');
INSERT INTO `t_info` VALUES ('2', 'O2O兵器库', '2', '1', '2014-07-21 11:02:59');
INSERT INTO `t_info` VALUES ('3', '关注我们', '3', '1', '2014-07-21 11:03:11');
INSERT INTO `t_info` VALUES ('5', '联系我们', '5', '1', '2014-07-21 11:03:56');
INSERT INTO `t_info` VALUES ('6', '版权声明', '6', '1', '2014-08-19 10:02:14');

-- ----------------------------
-- Table structure for t_info_content
-- ----------------------------
DROP TABLE IF EXISTS `t_info_content`;
CREATE TABLE `t_info_content` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '信息内容编号',
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `infoId` int(11) DEFAULT NULL COMMENT '类型编号',
  `content` text COMMENT '内容',
  `linkPath` varchar(300) DEFAULT NULL COMMENT '链接地址或图片地址',
  `sortIndex` int(11) DEFAULT NULL COMMENT '排序',
  `status` int(11) DEFAULT NULL COMMENT '是否显示 1、是 2、否',
  `addTime` datetime DEFAULT NULL COMMENT '添加时间',
  `imgUrl` varchar(200) DEFAULT NULL COMMENT '图片路径 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_info_content
-- ----------------------------
INSERT INTO `t_info_content` VALUES ('6', '公司简介', '1', '而特认同', '', '1', '1', '2014-07-21 18:54:22', null);
INSERT INTO `t_info_content` VALUES ('7', 'O2O网站', '2', '', 'http://www.baidu.com', '1', '1', '2014-07-21 18:59:14', null);
INSERT INTO `t_info_content` VALUES ('10', 'O2O商城', '2', '', 'http://www.baidu.com', '2', '1', '2014-07-25 14:11:19', null);
INSERT INTO `t_info_content` VALUES ('11', '联系方式', '5', '欢迎致电快易典客户服务热线&nbsp;<span style=\"color:#23AC38;\" class=\"num\">400 678 0315</span> \n<p>\n	400 号码未覆盖区域的用户和国际漫游用户，请拨+86-755-26703955\n</p>\n<p>\n	用户拨打<span style=\"color:#23AC38;font-weight:bold;\" class=\"num\">&nbsp;400 678 0315</span>&nbsp;热线，免付长途话费。\n</p>\n<p>\n	典客户服务热线是连接用户和快易典的桥梁，是用户和快易典之间直接、快速、高效的沟通渠道。通过客户 服务热线的服务，用户可以了解到所有和快易典产品 相关的信息，包括 服务查询、信息反馈、技术支持等多种类，电话、传真、电子邮件等多形式的服务。\n</p>\n如何获得热线服务？\n<p>\n	电话：<span style=\"color:#23AC38;font-weight:bold;\" class=\"num\">400 678 0315</span> \n</p>\n<p>\n	传真：<span style=\"color:#23AC38;font-weight:bold;\" class=\"num\">0755-26620243</span> \n</p>\n<p>\n	网址：<a href=\"file://C:/Users/Administrator/Desktop/%E5%BF%AB%E6%98%93%E5%85%B8/%E5%BF%AB%E6%98%93%E5%85%B8%E9%9D%99%E6%80%81%E9%A1%B5%E9%9D%A2/%E5%BF%AB%E6%98%93%E5%85%B8%E9%9D%99%E6%80%81%E9%A1%B5%E9%9D%A2/%E8%81%94%E7%B3%BB%E6%96%B9%E5%BC%8F.html#\" class=\"a\">http://www.hwapu.com.cn</a> \n</p>\n<p>\n	邮箱：<a href=\"file://C:/Users/Administrator/Desktop/%E5%BF%AB%E6%98%93%E5%85%B8/%E5%BF%AB%E6%98%93%E5%85%B8%E9%9D%99%E6%80%81%E9%A1%B5%E9%9D%A2/%E5%BF%AB%E6%98%93%E5%85%B8%E9%9D%99%E6%80%81%E9%A1%B5%E9%9D%A2/%E8%81%94%E7%B3%BB%E6%96%B9%E5%BC%8F.html#\" class=\"a\">hp-service@hwapu22.com</a> \n</p>\n<p>\n	信件： 深圳市宝安区石岩街道塘头社区塘头一号路中运泰科技工业园1栋3-4楼\n</p>\n<p>\n	邮编：518055\n</p>\n服务时间:\n<p>\n	客户服务专员和自动语音服务系统全年365 天提供服务\n</p>\n<p>\n	人工服务：<span style=\"color:#23AC38;font-weight:bold;\" class=\"num\">周一至周六8:30 — 17:30</span> \n</p>\n<p>\n	自动录音服务：<span style=\"color:#23AC38;font-weight:bold;\" class=\"num\">24 小时</span> \n</p>', '', '1', '1', '2014-07-25 15:20:21', null);
INSERT INTO `t_info_content` VALUES ('12', 'OA系统', '4', '', 'http://www.baidu.com', '1', '1', '2014-07-25 18:08:46', null);
INSERT INTO `t_info_content` VALUES ('13', '采购系统', '4', '', 'http://www.baidu.com', '2', '1', '2014-07-25 18:09:10', null);
INSERT INTO `t_info_content` VALUES ('14', '笔记系统', '4', '', 'http://www.baidu.com', '3', '1', '2014-07-25 18:09:27', null);
INSERT INTO `t_info_content` VALUES ('15', '安财系统', '4', '', 'http://www.baidu.com', '4', '1', '2014-07-25 18:09:55', null);
INSERT INTO `t_info_content` VALUES ('16', '掌上洪城微信', '3', '', 'www.weilifly.com', '1', '1', '2014-08-13 09:25:11', 'upload/image/admin/2014/20141212/20141212223025647.png');
INSERT INTO `t_info_content` VALUES ('17', '新浪微博', '3', '', 'http://www.sina.com', '2', '1', '2014-08-13 09:26:28', 'upload/image/admin/2014/20141212/201412122230388701.png');
INSERT INTO `t_info_content` VALUES ('19', '官方商城', '5', '<br />', 'http://kuaiyidian.tmall.com/', '2', '1', '2014-08-19 10:06:13', '');
INSERT INTO `t_info_content` VALUES ('20', '隐私权声明', '6', '<p>\n	隐私权声明。。。。。。。。。。\n</p>\n<p>\n	<br />\n</p>\n<p>\n	隐私权声明，隐私权声明，隐私权声明，隐私权声明，隐私权声明，隐私权声明、、、、、、、、、、、、、、、、、、、、、、、、、、、、\n</p>', '', '1', '1', '2014-08-19 10:30:23', '');
INSERT INTO `t_info_content` VALUES ('21', '著作权声明', '6', '著作权声明', '', '2', '1', '2014-08-19 10:31:37', '');
INSERT INTO `t_info_content` VALUES ('22', '免责声明', '6', '免责声明，免责声明，免责声明', '', '3', '1', '2014-08-19 10:32:18', '');

-- ----------------------------
-- Table structure for t_kyd_report
-- ----------------------------
DROP TABLE IF EXISTS `t_kyd_report`;
CREATE TABLE `t_kyd_report` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `source` varchar(100) DEFAULT NULL COMMENT '来源',
  `views` bigint(20) DEFAULT '0' COMMENT '浏览次数',
  `image` varchar(100) DEFAULT NULL COMMENT '图片',
  `path` varchar(100) DEFAULT NULL COMMENT '视频路径',
  `content` longtext COMMENT '详细内容',
  `addTime` datetime DEFAULT NULL COMMENT '添加时间',
  `status` int(11) DEFAULT NULL COMMENT '是否显示（1，是 2，否）',
  `sortIndex` int(11) DEFAULT NULL COMMENT '排序',
  `seoTitle` varchar(200) DEFAULT NULL COMMENT 'SEO_标题',
  `seoKeywords` text COMMENT 'SEO_关键字',
  `seoDescription` text COMMENT 'SEO_描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_kyd_report
-- ----------------------------
INSERT INTO `t_kyd_report` VALUES ('2', '快易典&林志颖深圳见面会召开22', null, '0', 'upload/image/admin/2014/20140725/201407251349502343.jpg', 'upload/media/admin/2014/20140718/201407181547144572.flv', '阿萨德发送到', '2014-07-18 15:48:20', '1', '-1', null, null, null);
INSERT INTO `t_kyd_report` VALUES ('3', '快易典&林志颖深圳见面会召开11', null, '9', 'upload/image/admin/2014/20140725/201407251200247979.jpg', 'upload/media/admin/2014/20140718/201407181547144572.flv', '阿萨德发送到', '2014-07-18 15:48:58', '1', '-1', null, null, null);
INSERT INTO `t_kyd_report` VALUES ('4', '快易典&林志颖深圳见面会召开11', null, '7', 'upload/image/admin/2014/20140725/201407251200247979.jpg', 'upload/media/admin/2014/20140718/201407181547144572.flv', '阿萨德发送到', '2014-07-25 13:51:50', '1', '-1', null, null, null);
INSERT INTO `t_kyd_report` VALUES ('5', '快易典&林志颖深圳见面会召开44', null, '11', 'upload/image/admin/2014/20140725/201407251349502343.jpg', 'upload/media/admin/2014/20140718/201407181547144572.flv', '阿萨德发送到', '2014-07-25 13:51:57', '1', '-1', null, null, null);
INSERT INTO `t_kyd_report` VALUES ('6', '快易典&林志颖深圳见面会召开33', null, '14', 'upload/image/admin/2014/20140725/201407251200247979.jpg', 'upload/media/admin/2014/20140725/201407251511207913.flv', '阿萨德发送到', '2014-07-25 13:52:08', '1', '-1', null, null, null);
INSERT INTO `t_kyd_report` VALUES ('7', '快易典&林志颖深圳见面会召开55快易典&林志颖深圳见面会召开55快易典&林志颖深圳见面会召开55快易典&林志颖深圳见面会召开55快易典&林志颖深圳见面会召开55快易典&林志颖深圳见面会召开55快易典&林志颖深圳见面会召开55快易典&林志颖深圳见面会召开55快易典&林志颖深圳见面会召开55', null, '8', 'upload/image/admin/2014/20140731/201407311001271074.jpg', 'upload/media/admin/2014/20140731/201407311001362482.flv', '&nbsp;&nbsp;&nbsp;&nbsp;阿萨德发送到<span>&nbsp;阿萨德发送到</span><span>&nbsp;阿萨德发送到</span><span>&nbsp;阿萨德发送到</span><span>&nbsp;阿萨德发送到</span><span>&nbsp;阿萨德发送到</span><span>&nbsp;阿萨德发送到</span><span>&nbsp;阿萨德发送到</span><span>&nbsp;阿萨德发送到</span><span>&nbsp;阿萨德发送到</span><span>&nbsp;阿萨德发送到</span><span>&nbsp;阿萨德发送到</span><span>&nbsp;阿萨德发送到</span>', '2014-07-25 13:52:20', '1', '-1', null, null, null);

-- ----------------------------
-- Table structure for t_materials
-- ----------------------------
DROP TABLE IF EXISTS `t_materials`;
CREATE TABLE `t_materials` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `number` varchar(100) DEFAULT NULL COMMENT '条形码',
  `productId` bigint(20) DEFAULT NULL COMMENT '产品型号ID',
  `path` varchar(100) DEFAULT NULL COMMENT '下载路径',
  `size` varchar(50) DEFAULT NULL COMMENT '大小',
  `addTime` datetime DEFAULT NULL COMMENT '发布时间',
  `sortIndex` int(11) DEFAULT NULL COMMENT '排序',
  `status` int(11) DEFAULT NULL COMMENT '是否显示（1，是 2，否）',
  `seoTitle` varchar(200) DEFAULT NULL,
  `seoKeywords` text,
  `seoDescription` text,
  `image` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_materials
-- ----------------------------

-- ----------------------------
-- Table structure for t_materials_attribute
-- ----------------------------
DROP TABLE IF EXISTS `t_materials_attribute`;
CREATE TABLE `t_materials_attribute` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attributeId` bigint(20) DEFAULT NULL COMMENT '属性ID',
  `materialsId` bigint(20) DEFAULT NULL COMMENT '资料ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_materials_attribute
-- ----------------------------

-- ----------------------------
-- Table structure for t_needs
-- ----------------------------
DROP TABLE IF EXISTS `t_needs`;
CREATE TABLE `t_needs` (
  `id` bigint(11) NOT NULL,
  `needs_name` varchar(200) DEFAULT NULL COMMENT '需求名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_needs
-- ----------------------------
INSERT INTO `t_needs` VALUES ('1', 'O2O网站');
INSERT INTO `t_needs` VALUES ('2', 'APP');
INSERT INTO `t_needs` VALUES ('3', 'O2O商城');

-- ----------------------------
-- Table structure for t_newspaper
-- ----------------------------
DROP TABLE IF EXISTS `t_newspaper`;
CREATE TABLE `t_newspaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL COMMENT '华普报名称',
  `image` varchar(100) DEFAULT NULL COMMENT '图片',
  `path` varchar(100) DEFAULT NULL COMMENT '文件路径',
  `addTime` datetime DEFAULT NULL COMMENT '添加时间',
  `status` int(11) DEFAULT NULL COMMENT '是否显示（1，是 2，否）',
  `sortIndex` int(11) DEFAULT NULL COMMENT '排序',
  `seoTitle` varchar(200) DEFAULT NULL COMMENT 'SEO_标题',
  `seoKeywords` text COMMENT 'SEO_关键字',
  `seoDescription` text COMMENT 'SEO_描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_newspaper
-- ----------------------------
INSERT INTO `t_newspaper` VALUES ('2', 'fffffff', 'upload/image/admin/2014/20140724/201407241442169038.jpg', 'upload/file/admin/2014/20140717/201407171749523167.txt', '2014-07-17 17:50:09', '1', '-1', null, null, null);
INSERT INTO `t_newspaper` VALUES ('3', 'sdfsdf', 'upload/image/admin/2014/20140724/201407241451441690.jpg', 'upload/file/admin/2014/20140731/201407311547591905.doc', '2014-07-24 14:51:57', '1', '-1', null, null, null);

-- ----------------------------
-- Table structure for t_parameter
-- ----------------------------
DROP TABLE IF EXISTS `t_parameter`;
CREATE TABLE `t_parameter` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '参数名称',
  `sortIndex` int(11) DEFAULT NULL COMMENT '排序',
  `addTime` datetime DEFAULT NULL COMMENT '添加时间',
  `status` int(11) DEFAULT NULL COMMENT '状态（1、显示 2、不显示）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_parameter
-- ----------------------------
INSERT INTO `t_parameter` VALUES ('1', '22', '1', '2014-07-14 18:21:10', '1');
INSERT INTO `t_parameter` VALUES ('3', 'QQ', '2', '2014-07-14 18:21:58', '1');
INSERT INTO `t_parameter` VALUES ('4', '硬件参数', '1', '2014-07-15 10:50:06', '1');
INSERT INTO `t_parameter` VALUES ('5', '智能模块', '2', '2014-07-15 10:51:31', '1');

-- ----------------------------
-- Table structure for t_product
-- ----------------------------
DROP TABLE IF EXISTS `t_product`;
CREATE TABLE `t_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL COMMENT '型号名称',
  `categoryId` bigint(20) DEFAULT NULL COMMENT '系列ID',
  `image` varchar(100) DEFAULT NULL COMMENT '产品型号图片',
  `url` text COMMENT '购买链接',
  `wapUrl` text COMMENT '手机购买链接',
  `details` longtext COMMENT '详细介绍',
  `sortIndex` int(11) DEFAULT NULL COMMENT '排序',
  `addTime` datetime DEFAULT NULL COMMENT '添加时间',
  `status` int(11) DEFAULT NULL COMMENT '状态（1、显示 2、不显示）',
  `seoTitle` varchar(200) DEFAULT NULL COMMENT 'SEO_标题',
  `seoKeywords` text COMMENT 'SEO_关键字',
  `seoDescription` text COMMENT 'SEO_描述',
  `content` text COMMENT '简介',
  `isShow` int(11) DEFAULT NULL COMMENT '是否显示购买和对比',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_product
-- ----------------------------
INSERT INTO `t_product` VALUES ('43', 'd4', '2', 'upload/image/admin/2014/20140919/201409191608321520.jpg', 'www.baidu.com', 'www.baidu.com', 'sssssss', '1', '2014-09-17 16:54:13', '1', 'www.baidu.com', 'www.baidu.com', 'www.baidu.com', null, '1');
INSERT INTO `t_product` VALUES ('48', 'f3', '2', 'upload/image/admin/2014/20140919/201409191607465509.jpg', '3', '3', '3', '3', '2014-09-18 11:01:49', '1', '3', '3', '3', null, '1');
INSERT INTO `t_product` VALUES ('54', '啊', '1', 'upload/image/admin/2014/20140919/201409191608447481.jpg', '琪琪', '琪琪', '琪琪', '3', '2014-09-18 12:43:35', '1', '琪琪', '琪琪', '琪琪', null, '1');
INSERT INTO `t_product` VALUES ('55', '琪琪', '1', 'upload/image/admin/2014/20140919/201409191608125884.jpg', '琪琪', '琪琪', '琪琪', '-1', '2014-09-18 12:44:09', '1', '琪琪', '琪琪', '琪琪', null, '1');
INSERT INTO `t_product` VALUES ('56', '时', '3', 'upload/image/admin/2014/20140918/201409181245318241.jpg', '时尚', '时尚', '是', '22', '2014-09-18 12:45:44', '1', '时', '2时时时', '水水水水', null, '1');
INSERT INTO `t_product` VALUES ('58', 'k8k', '5', 'upload/image/admin/2014/20140919/201409191607599818.jpg', '8', '8', '88', '-1', '2014-09-18 12:58:58', '1', '8', '8', '88', null, '1');

-- ----------------------------
-- Table structure for t_product_category
-- ----------------------------
DROP TABLE IF EXISTS `t_product_category`;
CREATE TABLE `t_product_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL COMMENT '系列名称',
  `image` varchar(100) DEFAULT NULL COMMENT '系列图片',
  `introduction` text COMMENT '简介',
  `backImage` varchar(100) DEFAULT NULL COMMENT '背景图片',
  `url` varchar(100) DEFAULT NULL COMMENT '产品系列讨论区链接',
  `status` int(11) DEFAULT NULL COMMENT '是否显示（1，显示 2，不显示）',
  `sortIndex` int(11) DEFAULT NULL COMMENT '排序',
  `addTime` datetime DEFAULT NULL COMMENT '添加时间',
  `seoTitle` varchar(200) DEFAULT NULL COMMENT 'SEO_标题',
  `seoKeywords` text COMMENT 'SEO_关键字',
  `seoDescription` text COMMENT 'SEO_描述',
  `isShow` int(11) DEFAULT NULL COMMENT '是否显示在下载',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_product_category
-- ----------------------------
INSERT INTO `t_product_category` VALUES ('1', '智能家教机', 'upload/image/admin/2014/20140725/2014072518070050.png', 'sdsf智能家教机', 'upload/image/admin/2014/20140714/201407141734112644.jpg', 'http://localhost:8080/kuaiyidian/admin/default.do', '1', '2', '2014-07-14 17:34:15', '', '', '', '1');
INSERT INTO `t_product_category` VALUES ('2', '学生电脑', 'upload/image/admin/2014/20141211/201412112210548490.jpg', 'sdsf学生电脑', 'upload/image/admin/2014/20141211/201412112211013970.jpg', 'http://localhost:8080/kuaiyidian/admin/default.do', '1', '1', '2014-07-14 17:40:31', '', '', '', '1');
INSERT INTO `t_product_category` VALUES ('3', '幼教系列', 'upload/image/admin/2014/20140725/201407251709271129.png', 'sdfsd幼教系列', 'upload/image/admin/2014/20140725/201407251709515482.jpg', 'http://localhost:8080/kuaiyidian/admin/default.do', '1', '2', '2014-07-25 17:09:54', '', '', '', '1');
INSERT INTO `t_product_category` VALUES ('4', '其它', 'upload/image/admin/2014/20140802/20140802091926269.png', '撒旦发射点发<span>撒旦发射点发</span><span>撒旦发射点发</span><span>撒旦发射点发</span><span>撒旦发射点发</span><span>撒旦发射点发</span><span>撒旦发射点发</span><span>撒旦发射点发</span><span>撒旦发射点发</span><span>撒旦发射点发</span><span>撒旦发射点发</span><span>撒旦发射点发</span><span>撒旦发射点发</span><span>撒旦发射点发</span><span>撒旦发射点发</span><span>撒旦发射点发</span><span>撒旦发射点发</span><span>撒旦发射点发</span><span>撒旦发射点发</span><span>撒旦发射点发</span><span>撒旦发射点发</span><span>撒旦发射点发</span><span>撒旦发射点发</span>', 'upload/image/admin/2014/20140802/201408020919313074.jpg', 'http://localhost:8080/kuaiyidian/admin/default.do', '1', '4', '2014-08-02 09:19:41', '', '', '', '1');
INSERT INTO `t_product_category` VALUES ('5', '测试成功', 'upload/image/admin/2014/20140820/201408201126346825.jpg', 'wwwww', 'upload/image/admin/2014/20140820/201408201127051046.jpg', 'www', '1', '5', '2014-08-20 11:27:08', 'www', 'www', 'www', null);

-- ----------------------------
-- Table structure for t_product_config
-- ----------------------------
DROP TABLE IF EXISTS `t_product_config`;
CREATE TABLE `t_product_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `productId` bigint(20) DEFAULT NULL COMMENT '产品编号',
  `image` varchar(100) DEFAULT NULL COMMENT '图片',
  `sortIndex` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_product_config
-- ----------------------------

-- ----------------------------
-- Table structure for t_product_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_product_detail`;
CREATE TABLE `t_product_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `productId` bigint(20) DEFAULT NULL COMMENT '产品型号ID',
  `content` text COMMENT '内容',
  `introduction` text COMMENT '简介（视频路径）',
  `image` varchar(200) DEFAULT NULL COMMENT '图片',
  `images` text COMMENT '图片列表',
  `parentId` bigint(20) DEFAULT NULL COMMENT '父编号（-1 ，父类 >0，子类）',
  `type` int(11) DEFAULT NULL COMMENT '1，图文详情 2，有手机滑动图片 3，图片列表 4，视频 5，有诊断提升子类 6，有提问子类 7，有图片子类 8，诊断提升子类 9，提问子类 10，图片子类 11，放大镜 12，手机滑动图片',
  `sortIndex` int(11) DEFAULT NULL COMMENT '排序',
  `status` int(11) DEFAULT '1' COMMENT '是否显示（1，是 2否）',
  `backImage` varchar(200) DEFAULT NULL COMMENT '背景图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=466 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_product_detail
-- ----------------------------
INSERT INTO `t_product_detail` VALUES ('62', '三大智能标准，全面解决学习难点', '13', '<p align=\"left\">\n	&nbsp;\n</p>\n<table style=\"height:98px;width:50.53%;\" bordercolor=\"#000000\" cellspacing=\"0\" cellpadding=\"2\" border=\"1\">\n	<tbody>\n		<tr>\n			<td>\n				<p align=\"left\">\n					&nbsp;\n				</p>\n			</td>\n			<td>\n				<p align=\"left\">\n					&nbsp;是个围观我个人好erhr6trw\n				</p>\n				<p align=\"left\">\n					额当然和我热吻管委会个温柔很温柔很\n				</p>\n				<p align=\"left\">\n					人都今日特价让就如同家人家人热就和人 榕基软件\n				</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n<p style=\"text-indent:2em;\" align=\"right\">\n	&nbsp;\n</p>', null, null, null, '-1', '1', null, '1', 'upload/image/admin/2014/20140827/201408271128127677.jpg');
INSERT INTO `t_product_detail` VALUES ('63', '智能远程呵护：孩子进步、随时掌握', '13', null, null, null, null, '-1', '2', null, '1', 'upload/image/admin/2014/20140826/20140826152624155.jpg');
INSERT INTO `t_product_detail` VALUES ('64', '智能防近视', '13', '<p>\n	智能防近视资料更新中……\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<br />\n</p>', null, null, 'upload/image/admin/2014/20140820/201408200923478281.jpg', '-1', '3', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('65', '全新快易学堂，一站式学习，全面解决问题', '13', '<p>\n	全新快易学堂，一站式学习，全面解决问题资料更新中……\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<br />\n</p>', null, null, null, '-1', '1', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('66', '学测练', '13', '<p>\n	学测练资料更新中……\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<br />\n</p>', 'upload/media/admin/2014/20140820/201408200925261606.flv', null, null, '-1', '4', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('67', '全面跟踪学习过程、系统诊断掌握情况', '13', '<p>\n	全面跟踪学习过程、系统诊断掌握情况资料更新中……\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<br />\n</p>', null, null, null, '-1', '1', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('68', '诊断提升', '13', null, null, null, null, '-1', '5', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('69', '补', '13', '<p>\n	补资料更新中……\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<br />\n</p>', null, null, null, '-1', '1', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('70', '真人老师在线，针对解答学习难点、作业难题', '13', null, null, null, null, '-1', '6', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('71', '学霸排行榜', '13', null, '学霸排行榜资料更新中……', 'upload/image/admin/2014/20140820/20140820092850300.jpg', null, '-1', '11', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('72', '更多功能，更多提升', '13', '<p>\n	更多功能，更多提升资料更新中……\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<br />\n</p>', null, null, null, '-1', '1', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('73', '硬件配置', '13', null, null, null, null, '-1', '7', null, '1', 'upload/image/admin/2014/20140828/201408281412438153.png');
INSERT INTO `t_product_detail` VALUES ('80', '测试数据', '13', null, '测试数据资料更新中……', 'upload/image/admin/2014/20140820/201408200935062219.jpg', '', '63', '12', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('81', '诊断提升1', '13', '<p>\n	诊断提升1资料更新中……\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<br />\n</p>', null, null, '', '68', '8', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('82', '诊断提升2', '13', '<p>\n	诊断提升2资料更新中……\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<br />\n</p>', null, null, '', '68', '8', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('83', '真人老师在线', '13', '<p>\n	真人老师在线，针对解答学习难点、作业难题资料更新中……\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<br />\n</p>', null, null, '', '70', '9', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('84', '', '13', '<p>\n	硬件配置图片资料更新中……\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<br />\n</p>', null, 'upload/image/admin/2014/20140820/201408200933181856.jpg', '', '73', '10', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('85', '三大智能标准，全面解决学习难点', '14', null, null, null, null, '-1', '1', null, null, null);
INSERT INTO `t_product_detail` VALUES ('86', '智能远程呵护', '14', null, null, null, null, '-1', '2', null, null, null);
INSERT INTO `t_product_detail` VALUES ('87', '智能防近视', '14', null, null, null, null, '-1', '3', null, null, null);
INSERT INTO `t_product_detail` VALUES ('88', '全新快易学堂，一站式学习，全面解决问题', '14', null, null, null, null, '-1', '1', null, null, null);
INSERT INTO `t_product_detail` VALUES ('89', '学测练', '14', null, null, null, null, '-1', '4', null, null, null);
INSERT INTO `t_product_detail` VALUES ('90', '全面跟踪学习过程、系统诊断掌握情况', '14', null, null, null, null, '-1', '1', null, null, null);
INSERT INTO `t_product_detail` VALUES ('91', '诊断提升', '14', null, null, null, null, '-1', '5', null, null, null);
INSERT INTO `t_product_detail` VALUES ('92', '补', '14', null, null, null, null, '-1', '1', null, null, null);
INSERT INTO `t_product_detail` VALUES ('93', '真人老师在线，针对解答学习难点、作业难题', '14', null, null, null, null, '-1', '6', null, null, null);
INSERT INTO `t_product_detail` VALUES ('94', '学霸排行榜', '14', null, null, null, null, '-1', '11', null, null, null);
INSERT INTO `t_product_detail` VALUES ('95', '更多功能，更多提升', '14', null, null, null, null, '-1', '1', null, null, null);
INSERT INTO `t_product_detail` VALUES ('96', '硬件配置', '14', null, null, null, null, '-1', '7', null, null, null);
INSERT INTO `t_product_detail` VALUES ('118', '三大智能标准，全面解决学习难点', '15', null, null, null, null, '-1', '1', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('119', '智能远程呵护', '15', null, null, null, null, '-1', '2', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('120', '智能防近视', '15', null, null, null, null, '-1', '3', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('121', '全新快易学堂，一站式学习，全面解决问题', '15', null, null, null, null, '-1', '1', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('122', '学测练', '15', null, null, null, null, '-1', '4', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('123', '全面跟踪学习过程、系统诊断掌握情况', '15', null, null, null, null, '-1', '1', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('124', '诊断提升', '15', null, null, null, null, '-1', '5', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('125', '补', '15', null, null, null, null, '-1', '1', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('126', '真人老师在线，针对解答学习难点、作业难题', '15', null, null, null, null, '-1', '6', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('127', '学霸排行榜', '15', null, null, null, null, '-1', '11', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('128', '更多功能，更多提升', '15', null, null, null, null, '-1', '1', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('129', '硬件配置', '15', null, null, null, null, '-1', '7', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('130', '三大智能标准，全面解决学习难点', '16', null, null, null, null, '-1', '1', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('131', '智能远程呵护', '16', null, null, null, null, '-1', '2', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('132', '智能防近视', '16', null, null, null, null, '-1', '3', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('133', '全新快易学堂，一站式学习，全面解决问题', '16', null, null, null, null, '-1', '1', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('134', '学测练', '16', null, null, null, null, '-1', '4', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('135', '全面跟踪学习过程、系统诊断掌握情况', '16', null, null, null, null, '-1', '1', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('136', '诊断提升', '16', null, null, null, null, '-1', '5', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('137', '补', '16', null, null, null, null, '-1', '1', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('138', '真人老师在线，针对解答学习难点、作业难题', '16', null, null, null, null, '-1', '6', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('139', '学霸排行榜', '16', null, null, null, null, '-1', '11', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('140', '更多功能，更多提升', '16', null, null, null, null, '-1', '1', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('141', '硬件配置', '16', null, null, null, null, '-1', '7', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('142', '三大智能标准，全面解决学习难点', '17', '三大智能标准，全面解决学习难点资料更新中……', null, null, null, '-1', '1', null, '1', 'upload/image/admin/2014/20140828/201408281023219339.jpg');
INSERT INTO `t_product_detail` VALUES ('143', '智能远程呵护', '17', null, null, null, null, '-1', '2', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('144', '智能防近视', '17', '智能防近视资料更新中……', null, null, 'upload/image/admin/2014/20140828/201408281024223677.png', '-1', '3', null, '1', 'upload/image/admin/2014/20140828/201408281024014511.jpg');
INSERT INTO `t_product_detail` VALUES ('145', '全新快易学堂，一站式学习，全面解决问题', '17', null, null, null, null, '-1', '1', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('146', '学测练', '17', null, null, null, null, '-1', '4', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('147', '全面跟踪学习过程、系统诊断掌握情况', '17', null, null, null, null, '-1', '1', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('148', '诊断提升', '17', null, null, null, null, '-1', '5', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('149', '补', '17', null, null, null, null, '-1', '1', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('150', '真人老师在线，针对解答学习难点、作业难题', '17', null, null, null, null, '-1', '6', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('151', '学霸排行榜', '17', null, null, null, null, '-1', '11', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('152', '更多功能，更多提升', '17', null, null, null, null, '-1', '1', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('153', '硬件配置', '17', null, null, null, null, '-1', '7', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('154', '三大智能标准，全面解决学习难点', '18', null, null, null, null, '-1', '1', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('155', '智能远程呵护', '18', null, null, null, null, '-1', '2', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('156', '智能防近视', '18', null, null, null, null, '-1', '3', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('157', '全新快易学堂，一站式学习，全面解决问题', '18', null, null, null, null, '-1', '1', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('158', '学测练', '18', null, null, null, null, '-1', '4', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('159', '全面跟踪学习过程、系统诊断掌握情况', '18', null, null, null, null, '-1', '1', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('160', '诊断提升', '18', null, null, null, null, '-1', '5', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('161', '补', '18', null, null, null, null, '-1', '1', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('162', '真人老师在线，针对解答学习难点、作业难题', '18', null, null, null, null, '-1', '6', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('163', '学霸排行榜', '18', null, null, null, null, '-1', '11', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('164', '更多功能，更多提升', '18', null, null, null, null, '-1', '1', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('165', '硬件配置', '18', null, null, null, null, '-1', '7', null, '1', null);
INSERT INTO `t_product_detail` VALUES ('274', '三大智能标准，全面解决学习难点', '43', null, null, null, null, '-1', '1', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('275', '智能远程呵护', '43', null, null, null, null, '-1', '2', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('276', '智能防近视', '43', null, null, null, null, '-1', '3', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('277', '全新快易学堂，一站式学习，全面解决问题', '43', null, null, null, null, '-1', '1', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('278', '学测练', '43', null, null, null, null, '-1', '4', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('279', '全面跟踪学习过程、系统诊断掌握情况', '43', null, null, null, null, '-1', '1', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('280', '诊断提升', '43', null, null, null, null, '-1', '5', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('281', '补', '43', null, null, null, null, '-1', '1', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('282', '真人老师在线，针对解答学习难点、作业难题', '43', null, null, null, null, '-1', '6', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('283', '学霸排行榜', '43', null, null, null, null, '-1', '11', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('284', '更多功能，更多提升', '43', null, null, null, null, '-1', '1', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('285', '硬件配置', '43', null, null, null, null, '-1', '7', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('334', '三大智能标准，全面解决学习难点', '48', null, null, null, null, '-1', '1', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('335', '智能远程呵护', '48', null, null, null, null, '-1', '2', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('336', '智能防近视', '48', null, null, null, null, '-1', '3', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('337', '全新快易学堂，一站式学习，全面解决问题', '48', null, null, null, null, '-1', '1', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('338', '学测练', '48', null, null, null, null, '-1', '4', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('339', '全面跟踪学习过程、系统诊断掌握情况', '48', null, null, null, null, '-1', '1', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('340', '诊断提升', '48', null, null, null, null, '-1', '5', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('341', '补', '48', null, null, null, null, '-1', '1', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('342', '真人老师在线，针对解答学习难点、作业难题', '48', null, null, null, null, '-1', '6', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('343', '学霸排行榜', '48', null, null, null, null, '-1', '11', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('344', '更多功能，更多提升', '48', null, null, null, null, '-1', '1', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('345', '硬件配置', '48', null, null, null, null, '-1', '7', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('406', '三大智能标准，全面解决学习难点', '54', null, null, null, null, '-1', '1', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('407', '智能远程呵护', '54', null, null, null, null, '-1', '2', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('408', '智能防近视', '54', null, null, null, null, '-1', '3', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('409', '全新快易学堂，一站式学习，全面解决问题', '54', null, null, null, null, '-1', '1', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('410', '学测练', '54', null, null, null, null, '-1', '4', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('411', '全面跟踪学习过程、系统诊断掌握情况', '54', null, null, null, null, '-1', '1', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('412', '诊断提升', '54', null, null, null, null, '-1', '5', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('413', '补', '54', null, null, null, null, '-1', '1', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('414', '真人老师在线，针对解答学习难点、作业难题', '54', null, null, null, null, '-1', '6', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('415', '学霸排行榜', '54', null, null, null, null, '-1', '11', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('416', '更多功能，更多提升', '54', null, null, null, null, '-1', '1', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('417', '硬件配置', '54', null, null, null, null, '-1', '7', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('418', '三大智能标准，全面解决学习难点', '55', null, null, null, null, '-1', '1', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('419', '智能远程呵护', '55', null, null, null, null, '-1', '2', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('420', '智能防近视', '55', null, null, null, null, '-1', '3', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('421', '全新快易学堂，一站式学习，全面解决问题', '55', null, null, null, null, '-1', '1', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('422', '学测练', '55', null, null, null, null, '-1', '4', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('423', '全面跟踪学习过程、系统诊断掌握情况', '55', null, null, null, null, '-1', '1', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('424', '诊断提升', '55', null, null, null, null, '-1', '5', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('425', '补', '55', null, null, null, null, '-1', '1', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('426', '真人老师在线，针对解答学习难点、作业难题', '55', null, null, null, null, '-1', '6', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('427', '学霸排行榜', '55', null, null, null, null, '-1', '11', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('428', '更多功能，更多提升', '55', null, null, null, null, '-1', '1', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('429', '硬件配置', '55', null, null, null, null, '-1', '7', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('430', '三大智能标准，全面解决学习难点', '56', null, null, null, null, '-1', '1', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('431', '智能远程呵护', '56', null, null, null, null, '-1', '2', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('432', '智能防近视', '56', null, null, null, null, '-1', '3', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('433', '全新快易学堂，一站式学习，全面解决问题', '56', null, null, null, null, '-1', '1', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('434', '学测练', '56', null, null, null, null, '-1', '4', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('435', '全面跟踪学习过程、系统诊断掌握情况', '56', null, null, null, null, '-1', '1', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('436', '诊断提升', '56', null, null, null, null, '-1', '5', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('437', '补', '56', null, null, null, null, '-1', '1', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('438', '真人老师在线，针对解答学习难点、作业难题', '56', null, null, null, null, '-1', '6', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('439', '学霸排行榜', '56', null, null, null, null, '-1', '11', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('440', '更多功能，更多提升', '56', null, null, null, null, '-1', '1', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('441', '硬件配置', '56', null, null, null, null, '-1', '7', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('454', '三大智能标准，全面解决学习难点', '58', null, null, null, null, '-1', '1', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('455', '智能远程呵护', '58', null, null, null, null, '-1', '2', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('456', '智能防近视', '58', null, null, null, null, '-1', '3', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('457', '全新快易学堂，一站式学习，全面解决问题', '58', null, null, null, null, '-1', '1', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('458', '学测练', '58', null, null, null, null, '-1', '4', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('459', '全面跟踪学习过程、系统诊断掌握情况', '58', null, null, null, null, '-1', '1', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('460', '诊断提升', '58', null, null, null, null, '-1', '5', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('461', '补', '58', null, null, null, null, '-1', '1', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('462', '真人老师在线，针对解答学习难点、作业难题', '58', null, null, null, null, '-1', '6', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('463', '学霸排行榜', '58', null, null, null, null, '-1', '11', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('464', '更多功能，更多提升', '58', null, null, null, null, '-1', '1', null, '2', null);
INSERT INTO `t_product_detail` VALUES ('465', '硬件配置', '58', null, null, null, null, '-1', '7', null, '2', null);

-- ----------------------------
-- Table structure for t_product_parameter
-- ----------------------------
DROP TABLE IF EXISTS `t_product_parameter`;
CREATE TABLE `t_product_parameter` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `productId` bigint(20) DEFAULT NULL COMMENT '产品ID',
  `parameterId` bigint(20) DEFAULT NULL COMMENT '参数ID',
  `content` text COMMENT '参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_product_parameter
-- ----------------------------
INSERT INTO `t_product_parameter` VALUES ('53', '43', '1', 'sss');
INSERT INTO `t_product_parameter` VALUES ('54', '43', '4', 'ssssss');
INSERT INTO `t_product_parameter` VALUES ('55', '48', '3', '3');
INSERT INTO `t_product_parameter` VALUES ('63', '56', '1', 'sss');
INSERT INTO `t_product_parameter` VALUES ('64', '56', '4', '是');
INSERT INTO `t_product_parameter` VALUES ('65', '56', '3', '是');
INSERT INTO `t_product_parameter` VALUES ('66', '56', '5', '是是');

-- ----------------------------
-- Table structure for t_question_list
-- ----------------------------
DROP TABLE IF EXISTS `t_question_list`;
CREATE TABLE `t_question_list` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '常见问题编号',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `solution` text COMMENT '答案',
  `addTime` datetime DEFAULT NULL COMMENT '添加时间',
  `sortIndex` int(11) DEFAULT NULL COMMENT '排序',
  `status` int(11) DEFAULT NULL COMMENT '是否显示（1、是 2、否）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_question_list
-- ----------------------------
INSERT INTO `t_question_list` VALUES ('1', 'java1', '增删改查', '2014-07-15 10:59:14', '1', '1');
INSERT INTO `t_question_list` VALUES ('2', '测试成功', 'good', '2014-07-15 11:14:51', '2', '1');
INSERT INTO `t_question_list` VALUES ('3', '呼呼呼呼', '66', '2014-08-04 16:18:48', '3', '1');
INSERT INTO `t_question_list` VALUES ('4', '测试2', '淡淡的', '2014-08-06 19:03:38', '4', '1');
INSERT INTO `t_question_list` VALUES ('5', '测试3', '国防观', '2014-08-05 19:04:59', '5', '1');

-- ----------------------------
-- Table structure for t_recruit
-- ----------------------------
DROP TABLE IF EXISTS `t_recruit`;
CREATE TABLE `t_recruit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '招聘编号',
  `name` varchar(300) DEFAULT NULL COMMENT '招聘名称',
  `type` int(11) DEFAULT NULL COMMENT '类型（1、社会招聘  2、校园招聘）',
  `content` text COMMENT '内容',
  `addTime` datetime DEFAULT NULL COMMENT '添加时间',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `status` int(11) DEFAULT NULL COMMENT '是否显示（1、是 2、否）',
  `seoTitle` varchar(200) DEFAULT NULL COMMENT 'SEO标题',
  `seoKeywords` text COMMENT 'SEO关键字',
  `seoDescription` text COMMENT 'SEO描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='招聘英才';

-- ----------------------------
-- Records of t_recruit
-- ----------------------------
INSERT INTO `t_recruit` VALUES ('1', 'Android软件工程师(南山区)', '1', '<table class=\"c1\" style=\"margin:0px;padding:0px 0px 5px;width:730px;color:#000000;font-family:宋体, Arial, Helvetica, sans-serif;font-size:12px;\">\r\n	<tbody>\r\n		<tr>\r\n			<td class=\"name\" style=\"text-align:right;color:#666666;vertical-align:text-top;font-weight:bold;\">\r\n				发布日期：\r\n			</td>\r\n			<td style=\"color:#666666;vertical-align:text-top;\">\r\n				2013-9-17\r\n			</td>\r\n			<td class=\"name\" style=\"text-align:right;color:#666666;vertical-align:text-top;font-weight:bold;\">\r\n				截止日期：\r\n			</td>\r\n			<td style=\"color:#666666;vertical-align:text-top;\">\r\n				2013-10-17\r\n			</td>\r\n			<td class=\"name\" style=\"text-align:right;color:#666666;vertical-align:text-top;font-weight:bold;\">\r\n				招聘部门：\r\n			</td>\r\n			<td style=\"color:#666666;vertical-align:text-top;\">\r\n				让你看电视发货的港口费得很快\r\n			</td>\r\n			<td class=\"name\" style=\"text-align:right;color:#666666;vertical-align:text-top;font-weight:bold;\">\r\n				招聘对象：\r\n			</td>\r\n			<td style=\"color:#666666;vertical-align:text-top;\">\r\n				社会招聘\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"name\" style=\"text-align:right;color:#666666;vertical-align:text-top;font-weight:bold;\">\r\n				学历要求：\r\n			</td>\r\n			<td style=\"color:#666666;vertical-align:text-top;\">\r\n				本科\r\n			</td>\r\n			<td class=\"name\" style=\"text-align:right;color:#666666;vertical-align:text-top;font-weight:bold;\">\r\n				工作经验：\r\n			</td>\r\n			<td style=\"color:#666666;vertical-align:text-top;\">\r\n				不限\r\n			</td>\r\n			<td class=\"name\" style=\"text-align:right;color:#666666;vertical-align:text-top;font-weight:bold;\">\r\n				年龄：\r\n			</td>\r\n			<td style=\"color:#666666;vertical-align:text-top;\">\r\n				30岁\r\n			</td>\r\n			<td class=\"name\" style=\"text-align:right;color:#666666;vertical-align:text-top;font-weight:bold;\">\r\n				性别要求：\r\n			</td>\r\n			<td style=\"color:#666666;vertical-align:text-top;\">\r\n				不限\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"1\" class=\"name\" style=\"text-align:right;color:#666666;vertical-align:text-top;font-weight:bold;\">\r\n				工作地点：\r\n			</td>\r\n			<td colspan=\"3\" style=\"color:#666666;vertical-align:text-top;\">\r\n				深圳宝安区宝源路F518时尚创意园\r\n			</td>\r\n			<td colspan=\"1\" class=\"name\" width=\"70\" style=\"text-align:right;color:#666666;vertical-align:text-top;font-weight:bold;\">\r\n				招聘人数：\r\n			</td>\r\n			<td colspan=\"3\" style=\"color:#666666;vertical-align:text-top;\">\r\n				17人\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<div class=\"c2\" style=\"margin:10px 0px 0px;padding:0px 0px 10px;color:#666666;font-family:宋体, Arial, Helvetica, sans-serif;font-size:12px;\">\r\n	<span style=\"font-weight:bold;\">具体要求</span>\r\n	<p>\r\n		1.大学本科及以上学历，数学或应用数学专业；\r\n	</p>\r\n	<p>\r\n		2.一年以上中学数学教学经验/教材编辑等工作经验者优先。\r\n	</p>\r\n	<p>\r\n		3.热爱教育事业，有志于电子教育事业；\r\n	</p>\r\n	<p>\r\n		4.踏实勤奋、乐观向上、协作能力强，善于沟通；\r\n	</p>\r\n	<p>\r\n		5.熟悉常用office办公软件。\r\n	</p>\r\n	<p>\r\n		公司提供班车沿西乡步行街、南头（劳动大厦）、荔香公园线/白石洲线接送；<br />\r\n公司提供宿舍；<br />\r\n公司交纳五险一金<br />\r\n有意者请将简历发送至:<a href=\"file://C:/Users/Administrator/Desktop/%E5%BF%AB%E6%98%93%E5%85%B8/%E5%BF%AB%E6%98%93%E5%85%B8%E9%9D%99%E6%80%81%E9%A1%B5%E9%9D%A2/%E5%BF%AB%E6%98%93%E5%85%B8%E9%9D%99%E6%80%81%E9%A1%B5%E9%9D%A2/%E4%BA%BA%E6%89%8D%E6%8B%9B%E8%81%98.html#\">tangjia@hwapu22.com</a>或传真至<span class=\"phone\" style=\"font-weight:bold;color:#23AC38;\">0755-26620243</span>（人资部）<br />\r\n感谢您对华普（快易典）的关注！\r\n	</p>\r\n</div>\r\n<div class=\"c3\" style=\"margin:0px;padding:0px;color:#666666;font-family:宋体, Arial, Helvetica, sans-serif;font-size:12px;\">\r\n	<span>任职要求</span>\r\n	<p>\r\n		对小学、初中数学课本知识点进行分析、归纳。（公司产品为：教育类电子数码产品）\r\n	</p>\r\n</div>', '2014-08-02 09:21:26', '1', '1', '', '', '');
INSERT INTO `t_recruit` VALUES ('2', 'java软件工程师', '2', '<table class=\"c1\" style=\"margin:0px;padding:0px 0px 5px;width:730px;color:#000000;font-family:宋体, Arial, Helvetica, sans-serif;font-size:12px;\">\r\n	<tbody>\r\n		<tr>\r\n			<td class=\"name\" style=\"text-align:right;color:#666666;vertical-align:text-top;font-weight:bold;\">\r\n				发布日期：\r\n			</td>\r\n			<td style=\"color:#666666;vertical-align:text-top;\">\r\n				2013-9-17\r\n			</td>\r\n			<td class=\"name\" style=\"text-align:right;color:#666666;vertical-align:text-top;font-weight:bold;\">\r\n				截止日期：\r\n			</td>\r\n			<td style=\"color:#666666;vertical-align:text-top;\">\r\n				2013-10-17\r\n			</td>\r\n			<td class=\"name\" style=\"text-align:right;color:#666666;vertical-align:text-top;font-weight:bold;\">\r\n				招聘部门：\r\n			</td>\r\n			<td style=\"color:#666666;vertical-align:text-top;\">\r\n				让你看电视发货的港口费得很快\r\n			</td>\r\n			<td class=\"name\" style=\"text-align:right;color:#666666;vertical-align:text-top;font-weight:bold;\">\r\n				招聘对象：\r\n			</td>\r\n			<td style=\"color:#666666;vertical-align:text-top;\">\r\n				社会招聘\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"name\" style=\"text-align:right;color:#666666;vertical-align:text-top;font-weight:bold;\">\r\n				学历要求：\r\n			</td>\r\n			<td style=\"color:#666666;vertical-align:text-top;\">\r\n				本科\r\n			</td>\r\n			<td class=\"name\" style=\"text-align:right;color:#666666;vertical-align:text-top;font-weight:bold;\">\r\n				工作经验：\r\n			</td>\r\n			<td style=\"color:#666666;vertical-align:text-top;\">\r\n				不限\r\n			</td>\r\n			<td class=\"name\" style=\"text-align:right;color:#666666;vertical-align:text-top;font-weight:bold;\">\r\n				年龄：\r\n			</td>\r\n			<td style=\"color:#666666;vertical-align:text-top;\">\r\n				30岁\r\n			</td>\r\n			<td class=\"name\" style=\"text-align:right;color:#666666;vertical-align:text-top;font-weight:bold;\">\r\n				性别要求：\r\n			</td>\r\n			<td style=\"color:#666666;vertical-align:text-top;\">\r\n				不限\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"1\" class=\"name\" style=\"text-align:right;color:#666666;vertical-align:text-top;font-weight:bold;\">\r\n				工作地点：\r\n			</td>\r\n			<td colspan=\"3\" style=\"color:#666666;vertical-align:text-top;\">\r\n				深圳宝安区宝源路F518时尚创意园\r\n			</td>\r\n			<td colspan=\"1\" class=\"name\" width=\"70\" style=\"text-align:right;color:#666666;vertical-align:text-top;font-weight:bold;\">\r\n				招聘人数：\r\n			</td>\r\n			<td colspan=\"3\" style=\"color:#666666;vertical-align:text-top;\">\r\n				17人\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<div class=\"c2\" style=\"margin:10px 0px 0px;padding:0px 0px 10px;color:#666666;font-family:宋体, Arial, Helvetica, sans-serif;font-size:12px;\">\r\n	<span style=\"font-weight:bold;\">具体要求</span>\r\n	<p>\r\n		1.大学本科及以上学历，数学或应用数学专业；\r\n	</p>\r\n	<p>\r\n		2.一年以上中学数学教学经验/教材编辑等工作经验者优先。\r\n	</p>\r\n	<p>\r\n		3.热爱教育事业，有志于电子教育事业；\r\n	</p>\r\n	<p>\r\n		4.踏实勤奋、乐观向上、协作能力强，善于沟通；\r\n	</p>\r\n	<p>\r\n		5.熟悉常用office办公软件。\r\n	</p>\r\n	<p>\r\n		公司提供班车沿西乡步行街、南头（劳动大厦）、荔香公园线/白石洲线接送；<br />\r\n公司提供宿舍；<br />\r\n公司交纳五险一金<br />\r\n有意者请将简历发送至:<a href=\"file://C:/Users/Administrator/Desktop/%E5%BF%AB%E6%98%93%E5%85%B8/%E5%BF%AB%E6%98%93%E5%85%B8%E9%9D%99%E6%80%81%E9%A1%B5%E9%9D%A2/%E5%BF%AB%E6%98%93%E5%85%B8%E9%9D%99%E6%80%81%E9%A1%B5%E9%9D%A2/%E4%BA%BA%E6%89%8D%E6%8B%9B%E8%81%98.html#\">tangjia@hwapu22.com</a>或传真至<span class=\"phone\" style=\"font-weight:bold;color:#23AC38;\">0755-26620243</span>（人资部）<br />\r\n感谢您对华普（快易典）的关注！\r\n	</p>\r\n</div>\r\n<div class=\"c3\" style=\"margin:0px;padding:0px;color:#666666;font-family:宋体, Arial, Helvetica, sans-serif;font-size:12px;\">\r\n	<span>任职要求</span>\r\n	<p>\r\n		对小学、初中数学课本知识点进行分析、归纳。（公司产品为：教育类电子数码产品）\r\n	</p>\r\n</div>', '2014-08-02 09:21:59', '2', '1', '', '', '');
INSERT INTO `t_recruit` VALUES ('3', 'c#程序员', '1', '<table class=\"c1\" style=\"margin:0px;padding:0px 0px 5px;width:730px;color:#000000;font-family:宋体, Arial, Helvetica, sans-serif;font-size:12px;\">\r\n	<tbody>\r\n		<tr>\r\n			<td class=\"name\" style=\"text-align:right;color:#666666;vertical-align:text-top;font-weight:bold;\">\r\n				发布日期：\r\n			</td>\r\n			<td style=\"color:#666666;vertical-align:text-top;\">\r\n				2013-9-17\r\n			</td>\r\n			<td class=\"name\" style=\"text-align:right;color:#666666;vertical-align:text-top;font-weight:bold;\">\r\n				截止日期：\r\n			</td>\r\n			<td style=\"color:#666666;vertical-align:text-top;\">\r\n				2013-10-17\r\n			</td>\r\n			<td class=\"name\" style=\"text-align:right;color:#666666;vertical-align:text-top;font-weight:bold;\">\r\n				招聘部门：\r\n			</td>\r\n			<td style=\"color:#666666;vertical-align:text-top;\">\r\n				让你看电视发货的港口费得很快\r\n			</td>\r\n			<td class=\"name\" style=\"text-align:right;color:#666666;vertical-align:text-top;font-weight:bold;\">\r\n				招聘对象：\r\n			</td>\r\n			<td style=\"color:#666666;vertical-align:text-top;\">\r\n				社会招聘\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"name\" style=\"text-align:right;color:#666666;vertical-align:text-top;font-weight:bold;\">\r\n				学历要求：\r\n			</td>\r\n			<td style=\"color:#666666;vertical-align:text-top;\">\r\n				本科\r\n			</td>\r\n			<td class=\"name\" style=\"text-align:right;color:#666666;vertical-align:text-top;font-weight:bold;\">\r\n				工作经验：\r\n			</td>\r\n			<td style=\"color:#666666;vertical-align:text-top;\">\r\n				不限\r\n			</td>\r\n			<td class=\"name\" style=\"text-align:right;color:#666666;vertical-align:text-top;font-weight:bold;\">\r\n				年龄：\r\n			</td>\r\n			<td style=\"color:#666666;vertical-align:text-top;\">\r\n				30岁\r\n			</td>\r\n			<td class=\"name\" style=\"text-align:right;color:#666666;vertical-align:text-top;font-weight:bold;\">\r\n				性别要求：\r\n			</td>\r\n			<td style=\"color:#666666;vertical-align:text-top;\">\r\n				不限\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"1\" class=\"name\" style=\"text-align:right;color:#666666;vertical-align:text-top;font-weight:bold;\">\r\n				工作地点：\r\n			</td>\r\n			<td colspan=\"3\" style=\"color:#666666;vertical-align:text-top;\">\r\n				深圳宝安区宝源路F518时尚创意园\r\n			</td>\r\n			<td colspan=\"1\" class=\"name\" width=\"70\" style=\"text-align:right;color:#666666;vertical-align:text-top;font-weight:bold;\">\r\n				招聘人数：\r\n			</td>\r\n			<td colspan=\"3\" style=\"color:#666666;vertical-align:text-top;\">\r\n				17人\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<div class=\"c2\" style=\"margin:10px 0px 0px;padding:0px 0px 10px;color:#666666;font-family:宋体, Arial, Helvetica, sans-serif;font-size:12px;\">\r\n	<span style=\"font-weight:bold;\">具体要求</span>\r\n	<p>\r\n		1.大学本科及以上学历，数学或应用数学专业；\r\n	</p>\r\n	<p>\r\n		2.一年以上中学数学教学经验/教材编辑等工作经验者优先。\r\n	</p>\r\n	<p>\r\n		3.热爱教育事业，有志于电子教育事业；\r\n	</p>\r\n	<p>\r\n		4.踏实勤奋、乐观向上、协作能力强，善于沟通；\r\n	</p>\r\n	<p>\r\n		5.熟悉常用office办公软件。\r\n	</p>\r\n	<p>\r\n		公司提供班车沿西乡步行街、南头（劳动大厦）、荔香公园线/白石洲线接送；<br />\r\n公司提供宿舍；<br />\r\n公司交纳五险一金<br />\r\n有意者请将简历发送至:<a href=\"file://C:/Users/Administrator/Desktop/%E5%BF%AB%E6%98%93%E5%85%B8/%E5%BF%AB%E6%98%93%E5%85%B8%E9%9D%99%E6%80%81%E9%A1%B5%E9%9D%A2/%E5%BF%AB%E6%98%93%E5%85%B8%E9%9D%99%E6%80%81%E9%A1%B5%E9%9D%A2/%E4%BA%BA%E6%89%8D%E6%8B%9B%E8%81%98.html#\">tangjia@hwapu22.com</a>或传真至<span class=\"phone\" style=\"font-weight:bold;color:#23AC38;\">0755-26620243</span>（人资部）<br />\r\n感谢您对华普（快易典）的关注！\r\n	</p>\r\n</div>\r\n<div class=\"c3\" style=\"margin:0px;padding:0px;color:#666666;font-family:宋体, Arial, Helvetica, sans-serif;font-size:12px;\">\r\n	<span>任职要求</span>\r\n	<p>\r\n		对小学、初中数学课本知识点进行分析、归纳。（公司产品为：教育类电子数码产品）\r\n	</p>\r\n</div>', '2014-08-02 09:22:18', '2', '1', '', '', '');
INSERT INTO `t_recruit` VALUES ('4', '设计师', '2', '<table class=\"c1\" style=\"margin:0px;padding:0px 0px 5px;width:730px;color:#000000;font-family:宋体, Arial, Helvetica, sans-serif;font-size:12px;\">\r\n	<tbody>\r\n		<tr>\r\n			<td class=\"name\" style=\"text-align:right;color:#666666;vertical-align:text-top;font-weight:bold;\">\r\n				发布日期：\r\n			</td>\r\n			<td style=\"color:#666666;vertical-align:text-top;\">\r\n				2013-9-17\r\n			</td>\r\n			<td class=\"name\" style=\"text-align:right;color:#666666;vertical-align:text-top;font-weight:bold;\">\r\n				截止日期：\r\n			</td>\r\n			<td style=\"color:#666666;vertical-align:text-top;\">\r\n				2013-10-17\r\n			</td>\r\n			<td class=\"name\" style=\"text-align:right;color:#666666;vertical-align:text-top;font-weight:bold;\">\r\n				招聘部门：\r\n			</td>\r\n			<td style=\"color:#666666;vertical-align:text-top;\">\r\n				让你看电视发货的港口费得很快\r\n			</td>\r\n			<td class=\"name\" style=\"text-align:right;color:#666666;vertical-align:text-top;font-weight:bold;\">\r\n				招聘对象：\r\n			</td>\r\n			<td style=\"color:#666666;vertical-align:text-top;\">\r\n				社会招聘\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"name\" style=\"text-align:right;color:#666666;vertical-align:text-top;font-weight:bold;\">\r\n				学历要求：\r\n			</td>\r\n			<td style=\"color:#666666;vertical-align:text-top;\">\r\n				本科\r\n			</td>\r\n			<td class=\"name\" style=\"text-align:right;color:#666666;vertical-align:text-top;font-weight:bold;\">\r\n				工作经验：\r\n			</td>\r\n			<td style=\"color:#666666;vertical-align:text-top;\">\r\n				不限\r\n			</td>\r\n			<td class=\"name\" style=\"text-align:right;color:#666666;vertical-align:text-top;font-weight:bold;\">\r\n				年龄：\r\n			</td>\r\n			<td style=\"color:#666666;vertical-align:text-top;\">\r\n				30岁\r\n			</td>\r\n			<td class=\"name\" style=\"text-align:right;color:#666666;vertical-align:text-top;font-weight:bold;\">\r\n				性别要求：\r\n			</td>\r\n			<td style=\"color:#666666;vertical-align:text-top;\">\r\n				不限\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"1\" class=\"name\" style=\"text-align:right;color:#666666;vertical-align:text-top;font-weight:bold;\">\r\n				工作地点：\r\n			</td>\r\n			<td colspan=\"3\" style=\"color:#666666;vertical-align:text-top;\">\r\n				深圳宝安区宝源路F518时尚创意园\r\n			</td>\r\n			<td colspan=\"1\" class=\"name\" width=\"70\" style=\"text-align:right;color:#666666;vertical-align:text-top;font-weight:bold;\">\r\n				招聘人数：\r\n			</td>\r\n			<td colspan=\"3\" style=\"color:#666666;vertical-align:text-top;\">\r\n				17人\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<div class=\"c2\" style=\"margin:10px 0px 0px;padding:0px 0px 10px;color:#666666;font-family:宋体, Arial, Helvetica, sans-serif;font-size:12px;\">\r\n	<span style=\"font-weight:bold;\">具体要求</span> \r\n	<p>\r\n		1.大学本科及以上学历，数学或应用数学专业；\r\n	</p>\r\n	<p>\r\n		2.一年以上中学数学教学经验/教材编辑等工作经验者优先。\r\n	</p>\r\n	<p>\r\n		3.热爱教育事业，有志于电子教育事业；\r\n	</p>\r\n	<p>\r\n		4.踏实勤奋、乐观向上、协作能力强，善于沟通；\r\n	</p>\r\n	<p>\r\n		5.熟悉常用office办公软件。\r\n	</p>\r\n	<p>\r\n		公司提供班车沿西乡步行街、南头（劳动大厦）、荔香公园线/白石洲线接送；<br />\r\n公司提供宿舍；<br />\r\n公司交纳五险一金<br />\r\n有意者请将简历发送至:<a href=\"file://C:/Users/Administrator/Desktop/%E5%BF%AB%E6%98%93%E5%85%B8/%E5%BF%AB%E6%98%93%E5%85%B8%E9%9D%99%E6%80%81%E9%A1%B5%E9%9D%A2/%E5%BF%AB%E6%98%93%E5%85%B8%E9%9D%99%E6%80%81%E9%A1%B5%E9%9D%A2/%E4%BA%BA%E6%89%8D%E6%8B%9B%E8%81%98.html#\">tangjia@hwapu22.com</a>或传真至<span class=\"phone\" style=\"font-weight:bold;color:#23AC38;\">0755-26620243</span>（人资部）<br />\r\n感谢您对华普（快易典）的关注！\r\n	</p>\r\n</div>\r\n<div class=\"c3\" style=\"margin:0px;padding:0px;color:#666666;font-family:宋体, Arial, Helvetica, sans-serif;font-size:12px;\">\r\n	<span>任职要求</span> \r\n	<p>\r\n		对小学、初中数学课本知识点进行分析、归纳。（公司产品为：教育类电子数码产品）\r\n	</p>\r\n</div>', '2014-08-02 09:22:49', '1', '1', '', '', '');
INSERT INTO `t_recruit` VALUES ('5', '用人理念', '3', '用人理念<span>用人理念<span>用人理念<span>用人理念<span>用人理念<span>用人理念<span>用人理念<span>用人理念</span></span></span></span></span></span></span>', '2014-08-27 17:06:30', '1', '1', '', '', '');
INSERT INTO `t_recruit` VALUES ('6', '人才发展', '4', '人才发展人才发展人才发展人才发展人才发展人才发展人才发展人才发展人才发展', '2014-08-27 17:52:01', '4', '1', '', '', '');
INSERT INTO `t_recruit` VALUES ('7', '快乐工作', '5', '快乐工作快乐工作快乐工作快乐工作快乐工作快乐工作快乐工作快乐工作快乐工作快乐工作快乐工作快乐工作快乐工作快乐工作快乐工作快乐工作快乐工作', '2014-08-27 17:53:01', '5', '1', '', '', '');

-- ----------------------------
-- Table structure for t_recruit_type
-- ----------------------------
DROP TABLE IF EXISTS `t_recruit_type`;
CREATE TABLE `t_recruit_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `sortIndex` int(11) DEFAULT NULL COMMENT '排序',
  `addTime` datetime DEFAULT NULL COMMENT '添加时间',
  `status` int(11) DEFAULT NULL COMMENT '是否显示',
  `imgUrl` varchar(200) DEFAULT NULL COMMENT 'banner图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_recruit_type
-- ----------------------------
INSERT INTO `t_recruit_type` VALUES ('1', '社会招聘', '1', '2014-08-27 16:44:25', '1', 'upload/image/admin/2014/20140913/201409131032235736.jpg');
INSERT INTO `t_recruit_type` VALUES ('2', '校园招聘', '2', '2014-08-27 16:45:40', '1', 'upload/image/admin/2014/20140913/201409131032526180.jpg');
INSERT INTO `t_recruit_type` VALUES ('3', '用人理念', '3', '2014-08-27 16:46:10', '1', 'upload/image/admin/2014/20140913/201409131033075640.jpg');
INSERT INTO `t_recruit_type` VALUES ('4', '人才发展', '4', '2014-08-27 16:46:33', '1', 'upload/image/admin/2014/20140913/201409131033205350.jpg');
INSERT INTO `t_recruit_type` VALUES ('5', '快乐工作', '5', '2014-08-27 16:46:47', '1', 'upload/image/admin/2014/20140913/201409131033311697.jpg');

-- ----------------------------
-- Table structure for t_region
-- ----------------------------
DROP TABLE IF EXISTS `t_region`;
CREATE TABLE `t_region` (
  `id` bigint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parentId` bigint(5) unsigned NOT NULL DEFAULT '0',
  `regionName` varchar(120) NOT NULL DEFAULT '',
  `regionType` int(1) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parentId`) USING BTREE,
  KEY `region_type` (`regionType`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3409 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_region
-- ----------------------------
INSERT INTO `t_region` VALUES ('1', '0', '中国', '0');
INSERT INTO `t_region` VALUES ('2', '1', '北京', '1');
INSERT INTO `t_region` VALUES ('3', '1', '安徽', '1');
INSERT INTO `t_region` VALUES ('4', '1', '福建', '1');
INSERT INTO `t_region` VALUES ('5', '1', '甘肃', '1');
INSERT INTO `t_region` VALUES ('6', '1', '广东', '1');
INSERT INTO `t_region` VALUES ('7', '1', '广西', '1');
INSERT INTO `t_region` VALUES ('8', '1', '贵州', '1');
INSERT INTO `t_region` VALUES ('9', '1', '海南', '1');
INSERT INTO `t_region` VALUES ('10', '1', '河北', '1');
INSERT INTO `t_region` VALUES ('11', '1', '河南', '1');
INSERT INTO `t_region` VALUES ('12', '1', '黑龙江', '1');
INSERT INTO `t_region` VALUES ('13', '1', '湖北', '1');
INSERT INTO `t_region` VALUES ('14', '1', '湖南', '1');
INSERT INTO `t_region` VALUES ('15', '1', '吉林', '1');
INSERT INTO `t_region` VALUES ('16', '1', '江苏', '1');
INSERT INTO `t_region` VALUES ('17', '1', '江西', '1');
INSERT INTO `t_region` VALUES ('18', '1', '辽宁', '1');
INSERT INTO `t_region` VALUES ('19', '1', '内蒙古', '1');
INSERT INTO `t_region` VALUES ('20', '1', '宁夏', '1');
INSERT INTO `t_region` VALUES ('21', '1', '青海', '1');
INSERT INTO `t_region` VALUES ('22', '1', '山东', '1');
INSERT INTO `t_region` VALUES ('23', '1', '山西', '1');
INSERT INTO `t_region` VALUES ('24', '1', '陕西', '1');
INSERT INTO `t_region` VALUES ('25', '1', '上海', '1');
INSERT INTO `t_region` VALUES ('26', '1', '四川', '1');
INSERT INTO `t_region` VALUES ('27', '1', '天津', '1');
INSERT INTO `t_region` VALUES ('28', '1', '西藏', '1');
INSERT INTO `t_region` VALUES ('29', '1', '新疆', '1');
INSERT INTO `t_region` VALUES ('30', '1', '云南', '1');
INSERT INTO `t_region` VALUES ('31', '1', '浙江', '1');
INSERT INTO `t_region` VALUES ('32', '1', '重庆', '1');
INSERT INTO `t_region` VALUES ('33', '1', '香港', '1');
INSERT INTO `t_region` VALUES ('34', '1', '澳门', '1');
INSERT INTO `t_region` VALUES ('35', '1', '台湾', '1');
INSERT INTO `t_region` VALUES ('36', '3', '安庆', '2');
INSERT INTO `t_region` VALUES ('37', '3', '蚌埠', '2');
INSERT INTO `t_region` VALUES ('38', '3', '巢湖', '2');
INSERT INTO `t_region` VALUES ('39', '3', '池州', '2');
INSERT INTO `t_region` VALUES ('40', '3', '滁州', '2');
INSERT INTO `t_region` VALUES ('41', '3', '阜阳', '2');
INSERT INTO `t_region` VALUES ('42', '3', '淮北', '2');
INSERT INTO `t_region` VALUES ('43', '3', '淮南', '2');
INSERT INTO `t_region` VALUES ('44', '3', '黄山', '2');
INSERT INTO `t_region` VALUES ('45', '3', '六安', '2');
INSERT INTO `t_region` VALUES ('46', '3', '马鞍山', '2');
INSERT INTO `t_region` VALUES ('47', '3', '宿州', '2');
INSERT INTO `t_region` VALUES ('48', '3', '铜陵', '2');
INSERT INTO `t_region` VALUES ('49', '3', '芜湖', '2');
INSERT INTO `t_region` VALUES ('50', '3', '宣城', '2');
INSERT INTO `t_region` VALUES ('51', '3', '亳州', '2');
INSERT INTO `t_region` VALUES ('52', '2', '北京', '2');
INSERT INTO `t_region` VALUES ('53', '4', '福州', '2');
INSERT INTO `t_region` VALUES ('54', '4', '龙岩', '2');
INSERT INTO `t_region` VALUES ('55', '4', '南平', '2');
INSERT INTO `t_region` VALUES ('56', '4', '宁德', '2');
INSERT INTO `t_region` VALUES ('57', '4', '莆田', '2');
INSERT INTO `t_region` VALUES ('58', '4', '泉州', '2');
INSERT INTO `t_region` VALUES ('59', '4', '三明', '2');
INSERT INTO `t_region` VALUES ('60', '4', '厦门', '2');
INSERT INTO `t_region` VALUES ('61', '4', '漳州', '2');
INSERT INTO `t_region` VALUES ('62', '5', '兰州', '2');
INSERT INTO `t_region` VALUES ('63', '5', '白银', '2');
INSERT INTO `t_region` VALUES ('64', '5', '定西', '2');
INSERT INTO `t_region` VALUES ('65', '5', '甘南', '2');
INSERT INTO `t_region` VALUES ('66', '5', '嘉峪关', '2');
INSERT INTO `t_region` VALUES ('67', '5', '金昌', '2');
INSERT INTO `t_region` VALUES ('68', '5', '酒泉', '2');
INSERT INTO `t_region` VALUES ('69', '5', '临夏', '2');
INSERT INTO `t_region` VALUES ('70', '5', '陇南', '2');
INSERT INTO `t_region` VALUES ('71', '5', '平凉', '2');
INSERT INTO `t_region` VALUES ('72', '5', '庆阳', '2');
INSERT INTO `t_region` VALUES ('73', '5', '天水', '2');
INSERT INTO `t_region` VALUES ('74', '5', '武威', '2');
INSERT INTO `t_region` VALUES ('75', '5', '张掖', '2');
INSERT INTO `t_region` VALUES ('76', '6', '广州', '2');
INSERT INTO `t_region` VALUES ('77', '6', '深圳', '2');
INSERT INTO `t_region` VALUES ('78', '6', '潮州', '2');
INSERT INTO `t_region` VALUES ('79', '6', '东莞', '2');
INSERT INTO `t_region` VALUES ('80', '6', '佛山', '2');
INSERT INTO `t_region` VALUES ('81', '6', '河源', '2');
INSERT INTO `t_region` VALUES ('82', '6', '惠州', '2');
INSERT INTO `t_region` VALUES ('83', '6', '江门', '2');
INSERT INTO `t_region` VALUES ('84', '6', '揭阳', '2');
INSERT INTO `t_region` VALUES ('85', '6', '茂名', '2');
INSERT INTO `t_region` VALUES ('86', '6', '梅州', '2');
INSERT INTO `t_region` VALUES ('87', '6', '清远', '2');
INSERT INTO `t_region` VALUES ('88', '6', '汕头', '2');
INSERT INTO `t_region` VALUES ('89', '6', '汕尾', '2');
INSERT INTO `t_region` VALUES ('90', '6', '韶关', '2');
INSERT INTO `t_region` VALUES ('91', '6', '阳江', '2');
INSERT INTO `t_region` VALUES ('92', '6', '云浮', '2');
INSERT INTO `t_region` VALUES ('93', '6', '湛江', '2');
INSERT INTO `t_region` VALUES ('94', '6', '肇庆', '2');
INSERT INTO `t_region` VALUES ('95', '6', '中山', '2');
INSERT INTO `t_region` VALUES ('96', '6', '珠海', '2');
INSERT INTO `t_region` VALUES ('97', '7', '南宁', '2');
INSERT INTO `t_region` VALUES ('98', '7', '桂林', '2');
INSERT INTO `t_region` VALUES ('99', '7', '百色', '2');
INSERT INTO `t_region` VALUES ('100', '7', '北海', '2');
INSERT INTO `t_region` VALUES ('101', '7', '崇左', '2');
INSERT INTO `t_region` VALUES ('102', '7', '防城港', '2');
INSERT INTO `t_region` VALUES ('103', '7', '贵港', '2');
INSERT INTO `t_region` VALUES ('104', '7', '河池', '2');
INSERT INTO `t_region` VALUES ('105', '7', '贺州', '2');
INSERT INTO `t_region` VALUES ('106', '7', '来宾', '2');
INSERT INTO `t_region` VALUES ('107', '7', '柳州', '2');
INSERT INTO `t_region` VALUES ('108', '7', '钦州', '2');
INSERT INTO `t_region` VALUES ('109', '7', '梧州', '2');
INSERT INTO `t_region` VALUES ('110', '7', '玉林', '2');
INSERT INTO `t_region` VALUES ('111', '8', '贵阳', '2');
INSERT INTO `t_region` VALUES ('112', '8', '安顺', '2');
INSERT INTO `t_region` VALUES ('113', '8', '毕节', '2');
INSERT INTO `t_region` VALUES ('114', '8', '六盘水', '2');
INSERT INTO `t_region` VALUES ('115', '8', '黔东南', '2');
INSERT INTO `t_region` VALUES ('116', '8', '黔南', '2');
INSERT INTO `t_region` VALUES ('117', '8', '黔西南', '2');
INSERT INTO `t_region` VALUES ('118', '8', '铜仁', '2');
INSERT INTO `t_region` VALUES ('119', '8', '遵义', '2');
INSERT INTO `t_region` VALUES ('120', '9', '海口', '2');
INSERT INTO `t_region` VALUES ('121', '9', '三亚', '2');
INSERT INTO `t_region` VALUES ('122', '9', '白沙', '2');
INSERT INTO `t_region` VALUES ('123', '9', '保亭', '2');
INSERT INTO `t_region` VALUES ('124', '9', '昌江', '2');
INSERT INTO `t_region` VALUES ('125', '9', '澄迈县', '2');
INSERT INTO `t_region` VALUES ('126', '9', '定安县', '2');
INSERT INTO `t_region` VALUES ('127', '9', '东方', '2');
INSERT INTO `t_region` VALUES ('128', '9', '乐东', '2');
INSERT INTO `t_region` VALUES ('129', '9', '临高县', '2');
INSERT INTO `t_region` VALUES ('130', '9', '陵水', '2');
INSERT INTO `t_region` VALUES ('131', '9', '琼海', '2');
INSERT INTO `t_region` VALUES ('132', '9', '琼中', '2');
INSERT INTO `t_region` VALUES ('133', '9', '屯昌县', '2');
INSERT INTO `t_region` VALUES ('134', '9', '万宁', '2');
INSERT INTO `t_region` VALUES ('135', '9', '文昌', '2');
INSERT INTO `t_region` VALUES ('136', '9', '五指山', '2');
INSERT INTO `t_region` VALUES ('137', '9', '儋州', '2');
INSERT INTO `t_region` VALUES ('138', '10', '石家庄', '2');
INSERT INTO `t_region` VALUES ('139', '10', '保定', '2');
INSERT INTO `t_region` VALUES ('140', '10', '沧州', '2');
INSERT INTO `t_region` VALUES ('141', '10', '承德', '2');
INSERT INTO `t_region` VALUES ('142', '10', '邯郸', '2');
INSERT INTO `t_region` VALUES ('143', '10', '衡水', '2');
INSERT INTO `t_region` VALUES ('144', '10', '廊坊', '2');
INSERT INTO `t_region` VALUES ('145', '10', '秦皇岛', '2');
INSERT INTO `t_region` VALUES ('146', '10', '唐山', '2');
INSERT INTO `t_region` VALUES ('147', '10', '邢台', '2');
INSERT INTO `t_region` VALUES ('148', '10', '张家口', '2');
INSERT INTO `t_region` VALUES ('149', '11', '郑州', '2');
INSERT INTO `t_region` VALUES ('150', '11', '洛阳', '2');
INSERT INTO `t_region` VALUES ('151', '11', '开封', '2');
INSERT INTO `t_region` VALUES ('152', '11', '安阳', '2');
INSERT INTO `t_region` VALUES ('153', '11', '鹤壁', '2');
INSERT INTO `t_region` VALUES ('154', '11', '济源', '2');
INSERT INTO `t_region` VALUES ('155', '11', '焦作', '2');
INSERT INTO `t_region` VALUES ('156', '11', '南阳', '2');
INSERT INTO `t_region` VALUES ('157', '11', '平顶山', '2');
INSERT INTO `t_region` VALUES ('158', '11', '三门峡', '2');
INSERT INTO `t_region` VALUES ('159', '11', '商丘', '2');
INSERT INTO `t_region` VALUES ('160', '11', '新乡', '2');
INSERT INTO `t_region` VALUES ('161', '11', '信阳', '2');
INSERT INTO `t_region` VALUES ('162', '11', '许昌', '2');
INSERT INTO `t_region` VALUES ('163', '11', '周口', '2');
INSERT INTO `t_region` VALUES ('164', '11', '驻马店', '2');
INSERT INTO `t_region` VALUES ('165', '11', '漯河', '2');
INSERT INTO `t_region` VALUES ('166', '11', '濮阳', '2');
INSERT INTO `t_region` VALUES ('167', '12', '哈尔滨', '2');
INSERT INTO `t_region` VALUES ('168', '12', '大庆', '2');
INSERT INTO `t_region` VALUES ('169', '12', '大兴安岭', '2');
INSERT INTO `t_region` VALUES ('170', '12', '鹤岗', '2');
INSERT INTO `t_region` VALUES ('171', '12', '黑河', '2');
INSERT INTO `t_region` VALUES ('172', '12', '鸡西', '2');
INSERT INTO `t_region` VALUES ('173', '12', '佳木斯', '2');
INSERT INTO `t_region` VALUES ('174', '12', '牡丹江', '2');
INSERT INTO `t_region` VALUES ('175', '12', '七台河', '2');
INSERT INTO `t_region` VALUES ('176', '12', '齐齐哈尔', '2');
INSERT INTO `t_region` VALUES ('177', '12', '双鸭山', '2');
INSERT INTO `t_region` VALUES ('178', '12', '绥化', '2');
INSERT INTO `t_region` VALUES ('179', '12', '伊春', '2');
INSERT INTO `t_region` VALUES ('180', '13', '武汉', '2');
INSERT INTO `t_region` VALUES ('181', '13', '仙桃', '2');
INSERT INTO `t_region` VALUES ('182', '13', '鄂州', '2');
INSERT INTO `t_region` VALUES ('183', '13', '黄冈', '2');
INSERT INTO `t_region` VALUES ('184', '13', '黄石', '2');
INSERT INTO `t_region` VALUES ('185', '13', '荆门', '2');
INSERT INTO `t_region` VALUES ('186', '13', '荆州', '2');
INSERT INTO `t_region` VALUES ('187', '13', '潜江', '2');
INSERT INTO `t_region` VALUES ('188', '13', '神农架林区', '2');
INSERT INTO `t_region` VALUES ('189', '13', '十堰', '2');
INSERT INTO `t_region` VALUES ('190', '13', '随州', '2');
INSERT INTO `t_region` VALUES ('191', '13', '天门', '2');
INSERT INTO `t_region` VALUES ('192', '13', '咸宁', '2');
INSERT INTO `t_region` VALUES ('193', '13', '襄樊', '2');
INSERT INTO `t_region` VALUES ('194', '13', '孝感', '2');
INSERT INTO `t_region` VALUES ('195', '13', '宜昌', '2');
INSERT INTO `t_region` VALUES ('196', '13', '恩施', '2');
INSERT INTO `t_region` VALUES ('197', '14', '长沙', '2');
INSERT INTO `t_region` VALUES ('198', '14', '张家界', '2');
INSERT INTO `t_region` VALUES ('199', '14', '常德', '2');
INSERT INTO `t_region` VALUES ('200', '14', '郴州', '2');
INSERT INTO `t_region` VALUES ('201', '14', '衡阳', '2');
INSERT INTO `t_region` VALUES ('202', '14', '怀化', '2');
INSERT INTO `t_region` VALUES ('203', '14', '娄底', '2');
INSERT INTO `t_region` VALUES ('204', '14', '邵阳', '2');
INSERT INTO `t_region` VALUES ('205', '14', '湘潭', '2');
INSERT INTO `t_region` VALUES ('206', '14', '湘西', '2');
INSERT INTO `t_region` VALUES ('207', '14', '益阳', '2');
INSERT INTO `t_region` VALUES ('208', '14', '永州', '2');
INSERT INTO `t_region` VALUES ('209', '14', '岳阳', '2');
INSERT INTO `t_region` VALUES ('210', '14', '株洲', '2');
INSERT INTO `t_region` VALUES ('211', '15', '长春', '2');
INSERT INTO `t_region` VALUES ('212', '15', '吉林', '2');
INSERT INTO `t_region` VALUES ('213', '15', '白城', '2');
INSERT INTO `t_region` VALUES ('214', '15', '白山', '2');
INSERT INTO `t_region` VALUES ('215', '15', '辽源', '2');
INSERT INTO `t_region` VALUES ('216', '15', '四平', '2');
INSERT INTO `t_region` VALUES ('217', '15', '松原', '2');
INSERT INTO `t_region` VALUES ('218', '15', '通化', '2');
INSERT INTO `t_region` VALUES ('219', '15', '延边', '2');
INSERT INTO `t_region` VALUES ('220', '16', '南京', '2');
INSERT INTO `t_region` VALUES ('221', '16', '苏州', '2');
INSERT INTO `t_region` VALUES ('222', '16', '无锡', '2');
INSERT INTO `t_region` VALUES ('223', '16', '常州', '2');
INSERT INTO `t_region` VALUES ('224', '16', '淮安', '2');
INSERT INTO `t_region` VALUES ('225', '16', '连云港', '2');
INSERT INTO `t_region` VALUES ('226', '16', '南通', '2');
INSERT INTO `t_region` VALUES ('227', '16', '宿迁', '2');
INSERT INTO `t_region` VALUES ('228', '16', '泰州', '2');
INSERT INTO `t_region` VALUES ('229', '16', '徐州', '2');
INSERT INTO `t_region` VALUES ('230', '16', '盐城', '2');
INSERT INTO `t_region` VALUES ('231', '16', '扬州', '2');
INSERT INTO `t_region` VALUES ('232', '16', '镇江', '2');
INSERT INTO `t_region` VALUES ('233', '17', '南昌', '2');
INSERT INTO `t_region` VALUES ('234', '17', '抚州', '2');
INSERT INTO `t_region` VALUES ('235', '17', '赣州', '2');
INSERT INTO `t_region` VALUES ('236', '17', '吉安', '2');
INSERT INTO `t_region` VALUES ('237', '17', '景德镇', '2');
INSERT INTO `t_region` VALUES ('238', '17', '九江', '2');
INSERT INTO `t_region` VALUES ('239', '17', '萍乡', '2');
INSERT INTO `t_region` VALUES ('240', '17', '上饶', '2');
INSERT INTO `t_region` VALUES ('241', '17', '新余', '2');
INSERT INTO `t_region` VALUES ('242', '17', '宜春', '2');
INSERT INTO `t_region` VALUES ('243', '17', '鹰潭', '2');
INSERT INTO `t_region` VALUES ('244', '18', '沈阳', '2');
INSERT INTO `t_region` VALUES ('245', '18', '大连', '2');
INSERT INTO `t_region` VALUES ('246', '18', '鞍山', '2');
INSERT INTO `t_region` VALUES ('247', '18', '本溪', '2');
INSERT INTO `t_region` VALUES ('248', '18', '朝阳', '2');
INSERT INTO `t_region` VALUES ('249', '18', '丹东', '2');
INSERT INTO `t_region` VALUES ('250', '18', '抚顺', '2');
INSERT INTO `t_region` VALUES ('251', '18', '阜新', '2');
INSERT INTO `t_region` VALUES ('252', '18', '葫芦岛', '2');
INSERT INTO `t_region` VALUES ('253', '18', '锦州', '2');
INSERT INTO `t_region` VALUES ('254', '18', '辽阳', '2');
INSERT INTO `t_region` VALUES ('255', '18', '盘锦', '2');
INSERT INTO `t_region` VALUES ('256', '18', '铁岭', '2');
INSERT INTO `t_region` VALUES ('257', '18', '营口', '2');
INSERT INTO `t_region` VALUES ('258', '19', '呼和浩特', '2');
INSERT INTO `t_region` VALUES ('259', '19', '阿拉善盟', '2');
INSERT INTO `t_region` VALUES ('260', '19', '巴彦淖尔盟', '2');
INSERT INTO `t_region` VALUES ('261', '19', '包头', '2');
INSERT INTO `t_region` VALUES ('262', '19', '赤峰', '2');
INSERT INTO `t_region` VALUES ('263', '19', '鄂尔多斯', '2');
INSERT INTO `t_region` VALUES ('264', '19', '呼伦贝尔', '2');
INSERT INTO `t_region` VALUES ('265', '19', '通辽', '2');
INSERT INTO `t_region` VALUES ('266', '19', '乌海', '2');
INSERT INTO `t_region` VALUES ('267', '19', '乌兰察布市', '2');
INSERT INTO `t_region` VALUES ('268', '19', '锡林郭勒盟', '2');
INSERT INTO `t_region` VALUES ('269', '19', '兴安盟', '2');
INSERT INTO `t_region` VALUES ('270', '20', '银川', '2');
INSERT INTO `t_region` VALUES ('271', '20', '固原', '2');
INSERT INTO `t_region` VALUES ('272', '20', '石嘴山', '2');
INSERT INTO `t_region` VALUES ('273', '20', '吴忠', '2');
INSERT INTO `t_region` VALUES ('274', '20', '中卫', '2');
INSERT INTO `t_region` VALUES ('275', '21', '西宁', '2');
INSERT INTO `t_region` VALUES ('276', '21', '果洛', '2');
INSERT INTO `t_region` VALUES ('277', '21', '海北', '2');
INSERT INTO `t_region` VALUES ('278', '21', '海东', '2');
INSERT INTO `t_region` VALUES ('279', '21', '海南', '2');
INSERT INTO `t_region` VALUES ('280', '21', '海西', '2');
INSERT INTO `t_region` VALUES ('281', '21', '黄南', '2');
INSERT INTO `t_region` VALUES ('282', '21', '玉树', '2');
INSERT INTO `t_region` VALUES ('283', '22', '济南', '2');
INSERT INTO `t_region` VALUES ('284', '22', '青岛', '2');
INSERT INTO `t_region` VALUES ('285', '22', '滨州', '2');
INSERT INTO `t_region` VALUES ('286', '22', '德州', '2');
INSERT INTO `t_region` VALUES ('287', '22', '东营', '2');
INSERT INTO `t_region` VALUES ('288', '22', '菏泽', '2');
INSERT INTO `t_region` VALUES ('289', '22', '济宁', '2');
INSERT INTO `t_region` VALUES ('290', '22', '莱芜', '2');
INSERT INTO `t_region` VALUES ('291', '22', '聊城', '2');
INSERT INTO `t_region` VALUES ('292', '22', '临沂', '2');
INSERT INTO `t_region` VALUES ('293', '22', '日照', '2');
INSERT INTO `t_region` VALUES ('294', '22', '泰安', '2');
INSERT INTO `t_region` VALUES ('295', '22', '威海', '2');
INSERT INTO `t_region` VALUES ('296', '22', '潍坊', '2');
INSERT INTO `t_region` VALUES ('297', '22', '烟台', '2');
INSERT INTO `t_region` VALUES ('298', '22', '枣庄', '2');
INSERT INTO `t_region` VALUES ('299', '22', '淄博', '2');
INSERT INTO `t_region` VALUES ('300', '23', '太原', '2');
INSERT INTO `t_region` VALUES ('301', '23', '长治', '2');
INSERT INTO `t_region` VALUES ('302', '23', '大同', '2');
INSERT INTO `t_region` VALUES ('303', '23', '晋城', '2');
INSERT INTO `t_region` VALUES ('304', '23', '晋中', '2');
INSERT INTO `t_region` VALUES ('305', '23', '临汾', '2');
INSERT INTO `t_region` VALUES ('306', '23', '吕梁', '2');
INSERT INTO `t_region` VALUES ('307', '23', '朔州', '2');
INSERT INTO `t_region` VALUES ('308', '23', '忻州', '2');
INSERT INTO `t_region` VALUES ('309', '23', '阳泉', '2');
INSERT INTO `t_region` VALUES ('310', '23', '运城', '2');
INSERT INTO `t_region` VALUES ('311', '24', '西安', '2');
INSERT INTO `t_region` VALUES ('312', '24', '安康', '2');
INSERT INTO `t_region` VALUES ('313', '24', '宝鸡', '2');
INSERT INTO `t_region` VALUES ('314', '24', '汉中', '2');
INSERT INTO `t_region` VALUES ('315', '24', '商洛', '2');
INSERT INTO `t_region` VALUES ('316', '24', '铜川', '2');
INSERT INTO `t_region` VALUES ('317', '24', '渭南', '2');
INSERT INTO `t_region` VALUES ('318', '24', '咸阳', '2');
INSERT INTO `t_region` VALUES ('319', '24', '延安', '2');
INSERT INTO `t_region` VALUES ('320', '24', '榆林', '2');
INSERT INTO `t_region` VALUES ('321', '25', '上海', '2');
INSERT INTO `t_region` VALUES ('322', '26', '成都', '2');
INSERT INTO `t_region` VALUES ('323', '26', '绵阳', '2');
INSERT INTO `t_region` VALUES ('324', '26', '阿坝', '2');
INSERT INTO `t_region` VALUES ('325', '26', '巴中', '2');
INSERT INTO `t_region` VALUES ('326', '26', '达州', '2');
INSERT INTO `t_region` VALUES ('327', '26', '德阳', '2');
INSERT INTO `t_region` VALUES ('328', '26', '甘孜', '2');
INSERT INTO `t_region` VALUES ('329', '26', '广安', '2');
INSERT INTO `t_region` VALUES ('330', '26', '广元', '2');
INSERT INTO `t_region` VALUES ('331', '26', '乐山', '2');
INSERT INTO `t_region` VALUES ('332', '26', '凉山', '2');
INSERT INTO `t_region` VALUES ('333', '26', '眉山', '2');
INSERT INTO `t_region` VALUES ('334', '26', '南充', '2');
INSERT INTO `t_region` VALUES ('335', '26', '内江', '2');
INSERT INTO `t_region` VALUES ('336', '26', '攀枝花', '2');
INSERT INTO `t_region` VALUES ('337', '26', '遂宁', '2');
INSERT INTO `t_region` VALUES ('338', '26', '雅安', '2');
INSERT INTO `t_region` VALUES ('339', '26', '宜宾', '2');
INSERT INTO `t_region` VALUES ('340', '26', '资阳', '2');
INSERT INTO `t_region` VALUES ('341', '26', '自贡', '2');
INSERT INTO `t_region` VALUES ('342', '26', '泸州', '2');
INSERT INTO `t_region` VALUES ('343', '27', '天津', '2');
INSERT INTO `t_region` VALUES ('344', '28', '拉萨', '2');
INSERT INTO `t_region` VALUES ('345', '28', '阿里', '2');
INSERT INTO `t_region` VALUES ('346', '28', '昌都', '2');
INSERT INTO `t_region` VALUES ('347', '28', '林芝', '2');
INSERT INTO `t_region` VALUES ('348', '28', '那曲', '2');
INSERT INTO `t_region` VALUES ('349', '28', '日喀则', '2');
INSERT INTO `t_region` VALUES ('350', '28', '山南', '2');
INSERT INTO `t_region` VALUES ('351', '29', '乌鲁木齐', '2');
INSERT INTO `t_region` VALUES ('352', '29', '阿克苏', '2');
INSERT INTO `t_region` VALUES ('353', '29', '阿拉尔', '2');
INSERT INTO `t_region` VALUES ('354', '29', '巴音郭楞', '2');
INSERT INTO `t_region` VALUES ('355', '29', '博尔塔拉', '2');
INSERT INTO `t_region` VALUES ('356', '29', '昌吉', '2');
INSERT INTO `t_region` VALUES ('357', '29', '哈密', '2');
INSERT INTO `t_region` VALUES ('358', '29', '和田', '2');
INSERT INTO `t_region` VALUES ('359', '29', '喀什', '2');
INSERT INTO `t_region` VALUES ('360', '29', '克拉玛依', '2');
INSERT INTO `t_region` VALUES ('361', '29', '克孜勒苏', '2');
INSERT INTO `t_region` VALUES ('362', '29', '石河子', '2');
INSERT INTO `t_region` VALUES ('363', '29', '图木舒克', '2');
INSERT INTO `t_region` VALUES ('364', '29', '吐鲁番', '2');
INSERT INTO `t_region` VALUES ('365', '29', '五家渠', '2');
INSERT INTO `t_region` VALUES ('366', '29', '伊犁', '2');
INSERT INTO `t_region` VALUES ('367', '30', '昆明', '2');
INSERT INTO `t_region` VALUES ('368', '30', '怒江', '2');
INSERT INTO `t_region` VALUES ('369', '30', '普洱', '2');
INSERT INTO `t_region` VALUES ('370', '30', '丽江', '2');
INSERT INTO `t_region` VALUES ('371', '30', '保山', '2');
INSERT INTO `t_region` VALUES ('372', '30', '楚雄', '2');
INSERT INTO `t_region` VALUES ('373', '30', '大理', '2');
INSERT INTO `t_region` VALUES ('374', '30', '德宏', '2');
INSERT INTO `t_region` VALUES ('375', '30', '迪庆', '2');
INSERT INTO `t_region` VALUES ('376', '30', '红河', '2');
INSERT INTO `t_region` VALUES ('377', '30', '临沧', '2');
INSERT INTO `t_region` VALUES ('378', '30', '曲靖', '2');
INSERT INTO `t_region` VALUES ('379', '30', '文山', '2');
INSERT INTO `t_region` VALUES ('380', '30', '西双版纳', '2');
INSERT INTO `t_region` VALUES ('381', '30', '玉溪', '2');
INSERT INTO `t_region` VALUES ('382', '30', '昭通', '2');
INSERT INTO `t_region` VALUES ('383', '31', '杭州', '2');
INSERT INTO `t_region` VALUES ('384', '31', '湖州', '2');
INSERT INTO `t_region` VALUES ('385', '31', '嘉兴', '2');
INSERT INTO `t_region` VALUES ('386', '31', '金华', '2');
INSERT INTO `t_region` VALUES ('387', '31', '丽水', '2');
INSERT INTO `t_region` VALUES ('388', '31', '宁波', '2');
INSERT INTO `t_region` VALUES ('389', '31', '绍兴', '2');
INSERT INTO `t_region` VALUES ('390', '31', '台州', '2');
INSERT INTO `t_region` VALUES ('391', '31', '温州', '2');
INSERT INTO `t_region` VALUES ('392', '31', '舟山', '2');
INSERT INTO `t_region` VALUES ('393', '31', '衢州', '2');
INSERT INTO `t_region` VALUES ('394', '32', '重庆', '2');
INSERT INTO `t_region` VALUES ('395', '33', '香港', '2');
INSERT INTO `t_region` VALUES ('396', '34', '澳门', '2');
INSERT INTO `t_region` VALUES ('397', '35', '台湾', '2');
INSERT INTO `t_region` VALUES ('398', '36', '迎江区', '3');
INSERT INTO `t_region` VALUES ('399', '36', '大观区', '3');
INSERT INTO `t_region` VALUES ('400', '36', '宜秀区', '3');
INSERT INTO `t_region` VALUES ('401', '36', '桐城市', '3');
INSERT INTO `t_region` VALUES ('402', '36', '怀宁县', '3');
INSERT INTO `t_region` VALUES ('403', '36', '枞阳县', '3');
INSERT INTO `t_region` VALUES ('404', '36', '潜山县', '3');
INSERT INTO `t_region` VALUES ('405', '36', '太湖县', '3');
INSERT INTO `t_region` VALUES ('406', '36', '宿松县', '3');
INSERT INTO `t_region` VALUES ('407', '36', '望江县', '3');
INSERT INTO `t_region` VALUES ('408', '36', '岳西县', '3');
INSERT INTO `t_region` VALUES ('409', '37', '中市区', '3');
INSERT INTO `t_region` VALUES ('410', '37', '东市区', '3');
INSERT INTO `t_region` VALUES ('411', '37', '西市区', '3');
INSERT INTO `t_region` VALUES ('412', '37', '郊区', '3');
INSERT INTO `t_region` VALUES ('413', '37', '怀远县', '3');
INSERT INTO `t_region` VALUES ('414', '37', '五河县', '3');
INSERT INTO `t_region` VALUES ('415', '37', '固镇县', '3');
INSERT INTO `t_region` VALUES ('416', '38', '居巢区', '3');
INSERT INTO `t_region` VALUES ('417', '38', '庐江县', '3');
INSERT INTO `t_region` VALUES ('418', '38', '无为县', '3');
INSERT INTO `t_region` VALUES ('419', '38', '含山县', '3');
INSERT INTO `t_region` VALUES ('420', '38', '和县', '3');
INSERT INTO `t_region` VALUES ('421', '39', '贵池区', '3');
INSERT INTO `t_region` VALUES ('422', '39', '东至县', '3');
INSERT INTO `t_region` VALUES ('423', '39', '石台县', '3');
INSERT INTO `t_region` VALUES ('424', '39', '青阳县', '3');
INSERT INTO `t_region` VALUES ('425', '40', '琅琊区', '3');
INSERT INTO `t_region` VALUES ('426', '40', '南谯区', '3');
INSERT INTO `t_region` VALUES ('427', '40', '天长市', '3');
INSERT INTO `t_region` VALUES ('428', '40', '明光市', '3');
INSERT INTO `t_region` VALUES ('429', '40', '来安县', '3');
INSERT INTO `t_region` VALUES ('430', '40', '全椒县', '3');
INSERT INTO `t_region` VALUES ('431', '40', '定远县', '3');
INSERT INTO `t_region` VALUES ('432', '40', '凤阳县', '3');
INSERT INTO `t_region` VALUES ('433', '41', '蚌山区', '3');
INSERT INTO `t_region` VALUES ('434', '41', '龙子湖区', '3');
INSERT INTO `t_region` VALUES ('435', '41', '禹会区', '3');
INSERT INTO `t_region` VALUES ('436', '41', '淮上区', '3');
INSERT INTO `t_region` VALUES ('437', '41', '颍州区', '3');
INSERT INTO `t_region` VALUES ('438', '41', '颍东区', '3');
INSERT INTO `t_region` VALUES ('439', '41', '颍泉区', '3');
INSERT INTO `t_region` VALUES ('440', '41', '界首市', '3');
INSERT INTO `t_region` VALUES ('441', '41', '临泉县', '3');
INSERT INTO `t_region` VALUES ('442', '41', '太和县', '3');
INSERT INTO `t_region` VALUES ('443', '41', '阜南县', '3');
INSERT INTO `t_region` VALUES ('444', '41', '颖上县', '3');
INSERT INTO `t_region` VALUES ('445', '42', '相山区', '3');
INSERT INTO `t_region` VALUES ('446', '42', '杜集区', '3');
INSERT INTO `t_region` VALUES ('447', '42', '烈山区', '3');
INSERT INTO `t_region` VALUES ('448', '42', '濉溪县', '3');
INSERT INTO `t_region` VALUES ('449', '43', '田家庵区', '3');
INSERT INTO `t_region` VALUES ('450', '43', '大通区', '3');
INSERT INTO `t_region` VALUES ('451', '43', '谢家集区', '3');
INSERT INTO `t_region` VALUES ('452', '43', '八公山区', '3');
INSERT INTO `t_region` VALUES ('453', '43', '潘集区', '3');
INSERT INTO `t_region` VALUES ('454', '43', '凤台县', '3');
INSERT INTO `t_region` VALUES ('455', '44', '屯溪区', '3');
INSERT INTO `t_region` VALUES ('456', '44', '黄山区', '3');
INSERT INTO `t_region` VALUES ('457', '44', '徽州区', '3');
INSERT INTO `t_region` VALUES ('458', '44', '歙县', '3');
INSERT INTO `t_region` VALUES ('459', '44', '休宁县', '3');
INSERT INTO `t_region` VALUES ('460', '44', '黟县', '3');
INSERT INTO `t_region` VALUES ('461', '44', '祁门县', '3');
INSERT INTO `t_region` VALUES ('462', '45', '金安区', '3');
INSERT INTO `t_region` VALUES ('463', '45', '裕安区', '3');
INSERT INTO `t_region` VALUES ('464', '45', '寿县', '3');
INSERT INTO `t_region` VALUES ('465', '45', '霍邱县', '3');
INSERT INTO `t_region` VALUES ('466', '45', '舒城县', '3');
INSERT INTO `t_region` VALUES ('467', '45', '金寨县', '3');
INSERT INTO `t_region` VALUES ('468', '45', '霍山县', '3');
INSERT INTO `t_region` VALUES ('469', '46', '雨山区', '3');
INSERT INTO `t_region` VALUES ('470', '46', '花山区', '3');
INSERT INTO `t_region` VALUES ('471', '46', '金家庄区', '3');
INSERT INTO `t_region` VALUES ('472', '46', '当涂县', '3');
INSERT INTO `t_region` VALUES ('473', '47', '埇桥区', '3');
INSERT INTO `t_region` VALUES ('474', '47', '砀山县', '3');
INSERT INTO `t_region` VALUES ('475', '47', '萧县', '3');
INSERT INTO `t_region` VALUES ('476', '47', '灵璧县', '3');
INSERT INTO `t_region` VALUES ('477', '47', '泗县', '3');
INSERT INTO `t_region` VALUES ('478', '48', '铜官山区', '3');
INSERT INTO `t_region` VALUES ('479', '48', '狮子山区', '3');
INSERT INTO `t_region` VALUES ('480', '48', '郊区', '3');
INSERT INTO `t_region` VALUES ('481', '48', '铜陵县', '3');
INSERT INTO `t_region` VALUES ('482', '49', '镜湖区', '3');
INSERT INTO `t_region` VALUES ('483', '49', '弋江区', '3');
INSERT INTO `t_region` VALUES ('484', '49', '鸠江区', '3');
INSERT INTO `t_region` VALUES ('485', '49', '三山区', '3');
INSERT INTO `t_region` VALUES ('486', '49', '芜湖县', '3');
INSERT INTO `t_region` VALUES ('487', '49', '繁昌县', '3');
INSERT INTO `t_region` VALUES ('488', '49', '南陵县', '3');
INSERT INTO `t_region` VALUES ('489', '50', '宣州区', '3');
INSERT INTO `t_region` VALUES ('490', '50', '宁国市', '3');
INSERT INTO `t_region` VALUES ('491', '50', '郎溪县', '3');
INSERT INTO `t_region` VALUES ('492', '50', '广德县', '3');
INSERT INTO `t_region` VALUES ('493', '50', '泾县', '3');
INSERT INTO `t_region` VALUES ('494', '50', '绩溪县', '3');
INSERT INTO `t_region` VALUES ('495', '50', '旌德县', '3');
INSERT INTO `t_region` VALUES ('496', '51', '涡阳县', '3');
INSERT INTO `t_region` VALUES ('497', '51', '蒙城县', '3');
INSERT INTO `t_region` VALUES ('498', '51', '利辛县', '3');
INSERT INTO `t_region` VALUES ('499', '51', '谯城区', '3');
INSERT INTO `t_region` VALUES ('500', '52', '东城区', '3');
INSERT INTO `t_region` VALUES ('501', '52', '西城区', '3');
INSERT INTO `t_region` VALUES ('502', '52', '海淀区', '3');
INSERT INTO `t_region` VALUES ('503', '52', '朝阳区', '3');
INSERT INTO `t_region` VALUES ('504', '52', '崇文区', '3');
INSERT INTO `t_region` VALUES ('505', '52', '宣武区', '3');
INSERT INTO `t_region` VALUES ('506', '52', '丰台区', '3');
INSERT INTO `t_region` VALUES ('507', '52', '石景山区', '3');
INSERT INTO `t_region` VALUES ('508', '52', '房山区', '3');
INSERT INTO `t_region` VALUES ('509', '52', '门头沟区', '3');
INSERT INTO `t_region` VALUES ('510', '52', '通州区', '3');
INSERT INTO `t_region` VALUES ('511', '52', '顺义区', '3');
INSERT INTO `t_region` VALUES ('512', '52', '昌平区', '3');
INSERT INTO `t_region` VALUES ('513', '52', '怀柔区', '3');
INSERT INTO `t_region` VALUES ('514', '52', '平谷区', '3');
INSERT INTO `t_region` VALUES ('515', '52', '大兴区', '3');
INSERT INTO `t_region` VALUES ('516', '52', '密云县', '3');
INSERT INTO `t_region` VALUES ('517', '52', '延庆县', '3');
INSERT INTO `t_region` VALUES ('518', '53', '鼓楼区', '3');
INSERT INTO `t_region` VALUES ('519', '53', '台江区', '3');
INSERT INTO `t_region` VALUES ('520', '53', '仓山区', '3');
INSERT INTO `t_region` VALUES ('521', '53', '马尾区', '3');
INSERT INTO `t_region` VALUES ('522', '53', '晋安区', '3');
INSERT INTO `t_region` VALUES ('523', '53', '福清市', '3');
INSERT INTO `t_region` VALUES ('524', '53', '长乐市', '3');
INSERT INTO `t_region` VALUES ('525', '53', '闽侯县', '3');
INSERT INTO `t_region` VALUES ('526', '53', '连江县', '3');
INSERT INTO `t_region` VALUES ('527', '53', '罗源县', '3');
INSERT INTO `t_region` VALUES ('528', '53', '闽清县', '3');
INSERT INTO `t_region` VALUES ('529', '53', '永泰县', '3');
INSERT INTO `t_region` VALUES ('530', '53', '平潭县', '3');
INSERT INTO `t_region` VALUES ('531', '54', '新罗区', '3');
INSERT INTO `t_region` VALUES ('532', '54', '漳平市', '3');
INSERT INTO `t_region` VALUES ('533', '54', '长汀县', '3');
INSERT INTO `t_region` VALUES ('534', '54', '永定县', '3');
INSERT INTO `t_region` VALUES ('535', '54', '上杭县', '3');
INSERT INTO `t_region` VALUES ('536', '54', '武平县', '3');
INSERT INTO `t_region` VALUES ('537', '54', '连城县', '3');
INSERT INTO `t_region` VALUES ('538', '55', '延平区', '3');
INSERT INTO `t_region` VALUES ('539', '55', '邵武市', '3');
INSERT INTO `t_region` VALUES ('540', '55', '武夷山市', '3');
INSERT INTO `t_region` VALUES ('541', '55', '建瓯市', '3');
INSERT INTO `t_region` VALUES ('542', '55', '建阳市', '3');
INSERT INTO `t_region` VALUES ('543', '55', '顺昌县', '3');
INSERT INTO `t_region` VALUES ('544', '55', '浦城县', '3');
INSERT INTO `t_region` VALUES ('545', '55', '光泽县', '3');
INSERT INTO `t_region` VALUES ('546', '55', '松溪县', '3');
INSERT INTO `t_region` VALUES ('547', '55', '政和县', '3');
INSERT INTO `t_region` VALUES ('548', '56', '蕉城区', '3');
INSERT INTO `t_region` VALUES ('549', '56', '福安市', '3');
INSERT INTO `t_region` VALUES ('550', '56', '福鼎市', '3');
INSERT INTO `t_region` VALUES ('551', '56', '霞浦县', '3');
INSERT INTO `t_region` VALUES ('552', '56', '古田县', '3');
INSERT INTO `t_region` VALUES ('553', '56', '屏南县', '3');
INSERT INTO `t_region` VALUES ('554', '56', '寿宁县', '3');
INSERT INTO `t_region` VALUES ('555', '56', '周宁县', '3');
INSERT INTO `t_region` VALUES ('556', '56', '柘荣县', '3');
INSERT INTO `t_region` VALUES ('557', '57', '城厢区', '3');
INSERT INTO `t_region` VALUES ('558', '57', '涵江区', '3');
INSERT INTO `t_region` VALUES ('559', '57', '荔城区', '3');
INSERT INTO `t_region` VALUES ('560', '57', '秀屿区', '3');
INSERT INTO `t_region` VALUES ('561', '57', '仙游县', '3');
INSERT INTO `t_region` VALUES ('562', '58', '鲤城区', '3');
INSERT INTO `t_region` VALUES ('563', '58', '丰泽区', '3');
INSERT INTO `t_region` VALUES ('564', '58', '洛江区', '3');
INSERT INTO `t_region` VALUES ('565', '58', '清濛开发区', '3');
INSERT INTO `t_region` VALUES ('566', '58', '泉港区', '3');
INSERT INTO `t_region` VALUES ('567', '58', '石狮市', '3');
INSERT INTO `t_region` VALUES ('568', '58', '晋江市', '3');
INSERT INTO `t_region` VALUES ('569', '58', '南安市', '3');
INSERT INTO `t_region` VALUES ('570', '58', '惠安县', '3');
INSERT INTO `t_region` VALUES ('571', '58', '安溪县', '3');
INSERT INTO `t_region` VALUES ('572', '58', '永春县', '3');
INSERT INTO `t_region` VALUES ('573', '58', '德化县', '3');
INSERT INTO `t_region` VALUES ('574', '58', '金门县', '3');
INSERT INTO `t_region` VALUES ('575', '59', '梅列区', '3');
INSERT INTO `t_region` VALUES ('576', '59', '三元区', '3');
INSERT INTO `t_region` VALUES ('577', '59', '永安市', '3');
INSERT INTO `t_region` VALUES ('578', '59', '明溪县', '3');
INSERT INTO `t_region` VALUES ('579', '59', '清流县', '3');
INSERT INTO `t_region` VALUES ('580', '59', '宁化县', '3');
INSERT INTO `t_region` VALUES ('581', '59', '大田县', '3');
INSERT INTO `t_region` VALUES ('582', '59', '尤溪县', '3');
INSERT INTO `t_region` VALUES ('583', '59', '沙县', '3');
INSERT INTO `t_region` VALUES ('584', '59', '将乐县', '3');
INSERT INTO `t_region` VALUES ('585', '59', '泰宁县', '3');
INSERT INTO `t_region` VALUES ('586', '59', '建宁县', '3');
INSERT INTO `t_region` VALUES ('587', '60', '思明区', '3');
INSERT INTO `t_region` VALUES ('588', '60', '海沧区', '3');
INSERT INTO `t_region` VALUES ('589', '60', '湖里区', '3');
INSERT INTO `t_region` VALUES ('590', '60', '集美区', '3');
INSERT INTO `t_region` VALUES ('591', '60', '同安区', '3');
INSERT INTO `t_region` VALUES ('592', '60', '翔安区', '3');
INSERT INTO `t_region` VALUES ('593', '61', '芗城区', '3');
INSERT INTO `t_region` VALUES ('594', '61', '龙文区', '3');
INSERT INTO `t_region` VALUES ('595', '61', '龙海市', '3');
INSERT INTO `t_region` VALUES ('596', '61', '云霄县', '3');
INSERT INTO `t_region` VALUES ('597', '61', '漳浦县', '3');
INSERT INTO `t_region` VALUES ('598', '61', '诏安县', '3');
INSERT INTO `t_region` VALUES ('599', '61', '长泰县', '3');
INSERT INTO `t_region` VALUES ('600', '61', '东山县', '3');
INSERT INTO `t_region` VALUES ('601', '61', '南靖县', '3');
INSERT INTO `t_region` VALUES ('602', '61', '平和县', '3');
INSERT INTO `t_region` VALUES ('603', '61', '华安县', '3');
INSERT INTO `t_region` VALUES ('604', '62', '皋兰县', '3');
INSERT INTO `t_region` VALUES ('605', '62', '城关区', '3');
INSERT INTO `t_region` VALUES ('606', '62', '七里河区', '3');
INSERT INTO `t_region` VALUES ('607', '62', '西固区', '3');
INSERT INTO `t_region` VALUES ('608', '62', '安宁区', '3');
INSERT INTO `t_region` VALUES ('609', '62', '红古区', '3');
INSERT INTO `t_region` VALUES ('610', '62', '永登县', '3');
INSERT INTO `t_region` VALUES ('611', '62', '榆中县', '3');
INSERT INTO `t_region` VALUES ('612', '63', '白银区', '3');
INSERT INTO `t_region` VALUES ('613', '63', '平川区', '3');
INSERT INTO `t_region` VALUES ('614', '63', '会宁县', '3');
INSERT INTO `t_region` VALUES ('615', '63', '景泰县', '3');
INSERT INTO `t_region` VALUES ('616', '63', '靖远县', '3');
INSERT INTO `t_region` VALUES ('617', '64', '临洮县', '3');
INSERT INTO `t_region` VALUES ('618', '64', '陇西县', '3');
INSERT INTO `t_region` VALUES ('619', '64', '通渭县', '3');
INSERT INTO `t_region` VALUES ('620', '64', '渭源县', '3');
INSERT INTO `t_region` VALUES ('621', '64', '漳县', '3');
INSERT INTO `t_region` VALUES ('622', '64', '岷县', '3');
INSERT INTO `t_region` VALUES ('623', '64', '安定区', '3');
INSERT INTO `t_region` VALUES ('624', '64', '安定区', '3');
INSERT INTO `t_region` VALUES ('625', '65', '合作市', '3');
INSERT INTO `t_region` VALUES ('626', '65', '临潭县', '3');
INSERT INTO `t_region` VALUES ('627', '65', '卓尼县', '3');
INSERT INTO `t_region` VALUES ('628', '65', '舟曲县', '3');
INSERT INTO `t_region` VALUES ('629', '65', '迭部县', '3');
INSERT INTO `t_region` VALUES ('630', '65', '玛曲县', '3');
INSERT INTO `t_region` VALUES ('631', '65', '碌曲县', '3');
INSERT INTO `t_region` VALUES ('632', '65', '夏河县', '3');
INSERT INTO `t_region` VALUES ('633', '66', '嘉峪关市', '3');
INSERT INTO `t_region` VALUES ('634', '67', '金川区', '3');
INSERT INTO `t_region` VALUES ('635', '67', '永昌县', '3');
INSERT INTO `t_region` VALUES ('636', '68', '肃州区', '3');
INSERT INTO `t_region` VALUES ('637', '68', '玉门市', '3');
INSERT INTO `t_region` VALUES ('638', '68', '敦煌市', '3');
INSERT INTO `t_region` VALUES ('639', '68', '金塔县', '3');
INSERT INTO `t_region` VALUES ('640', '68', '瓜州县', '3');
INSERT INTO `t_region` VALUES ('641', '68', '肃北', '3');
INSERT INTO `t_region` VALUES ('642', '68', '阿克塞', '3');
INSERT INTO `t_region` VALUES ('643', '69', '临夏市', '3');
INSERT INTO `t_region` VALUES ('644', '69', '临夏县', '3');
INSERT INTO `t_region` VALUES ('645', '69', '康乐县', '3');
INSERT INTO `t_region` VALUES ('646', '69', '永靖县', '3');
INSERT INTO `t_region` VALUES ('647', '69', '广河县', '3');
INSERT INTO `t_region` VALUES ('648', '69', '和政县', '3');
INSERT INTO `t_region` VALUES ('649', '69', '东乡族自治县', '3');
INSERT INTO `t_region` VALUES ('650', '69', '积石山', '3');
INSERT INTO `t_region` VALUES ('651', '70', '成县', '3');
INSERT INTO `t_region` VALUES ('652', '70', '徽县', '3');
INSERT INTO `t_region` VALUES ('653', '70', '康县', '3');
INSERT INTO `t_region` VALUES ('654', '70', '礼县', '3');
INSERT INTO `t_region` VALUES ('655', '70', '两当县', '3');
INSERT INTO `t_region` VALUES ('656', '70', '文县', '3');
INSERT INTO `t_region` VALUES ('657', '70', '西和县', '3');
INSERT INTO `t_region` VALUES ('658', '70', '宕昌县', '3');
INSERT INTO `t_region` VALUES ('659', '70', '武都区', '3');
INSERT INTO `t_region` VALUES ('660', '71', '崇信县', '3');
INSERT INTO `t_region` VALUES ('661', '71', '华亭县', '3');
INSERT INTO `t_region` VALUES ('662', '71', '静宁县', '3');
INSERT INTO `t_region` VALUES ('663', '71', '灵台县', '3');
INSERT INTO `t_region` VALUES ('664', '71', '崆峒区', '3');
INSERT INTO `t_region` VALUES ('665', '71', '庄浪县', '3');
INSERT INTO `t_region` VALUES ('666', '71', '泾川县', '3');
INSERT INTO `t_region` VALUES ('667', '72', '合水县', '3');
INSERT INTO `t_region` VALUES ('668', '72', '华池县', '3');
INSERT INTO `t_region` VALUES ('669', '72', '环县', '3');
INSERT INTO `t_region` VALUES ('670', '72', '宁县', '3');
INSERT INTO `t_region` VALUES ('671', '72', '庆城县', '3');
INSERT INTO `t_region` VALUES ('672', '72', '西峰区', '3');
INSERT INTO `t_region` VALUES ('673', '72', '镇原县', '3');
INSERT INTO `t_region` VALUES ('674', '72', '正宁县', '3');
INSERT INTO `t_region` VALUES ('675', '73', '甘谷县', '3');
INSERT INTO `t_region` VALUES ('676', '73', '秦安县', '3');
INSERT INTO `t_region` VALUES ('677', '73', '清水县', '3');
INSERT INTO `t_region` VALUES ('678', '73', '秦州区', '3');
INSERT INTO `t_region` VALUES ('679', '73', '麦积区', '3');
INSERT INTO `t_region` VALUES ('680', '73', '武山县', '3');
INSERT INTO `t_region` VALUES ('681', '73', '张家川', '3');
INSERT INTO `t_region` VALUES ('682', '74', '古浪县', '3');
INSERT INTO `t_region` VALUES ('683', '74', '民勤县', '3');
INSERT INTO `t_region` VALUES ('684', '74', '天祝', '3');
INSERT INTO `t_region` VALUES ('685', '74', '凉州区', '3');
INSERT INTO `t_region` VALUES ('686', '75', '高台县', '3');
INSERT INTO `t_region` VALUES ('687', '75', '临泽县', '3');
INSERT INTO `t_region` VALUES ('688', '75', '民乐县', '3');
INSERT INTO `t_region` VALUES ('689', '75', '山丹县', '3');
INSERT INTO `t_region` VALUES ('690', '75', '肃南', '3');
INSERT INTO `t_region` VALUES ('691', '75', '甘州区', '3');
INSERT INTO `t_region` VALUES ('692', '76', '从化市', '3');
INSERT INTO `t_region` VALUES ('693', '76', '天河区', '3');
INSERT INTO `t_region` VALUES ('694', '76', '东山区', '3');
INSERT INTO `t_region` VALUES ('695', '76', '白云区', '3');
INSERT INTO `t_region` VALUES ('696', '76', '海珠区', '3');
INSERT INTO `t_region` VALUES ('697', '76', '荔湾区', '3');
INSERT INTO `t_region` VALUES ('698', '76', '越秀区', '3');
INSERT INTO `t_region` VALUES ('699', '76', '黄埔区', '3');
INSERT INTO `t_region` VALUES ('700', '76', '番禺区', '3');
INSERT INTO `t_region` VALUES ('701', '76', '花都区', '3');
INSERT INTO `t_region` VALUES ('702', '76', '增城区', '3');
INSERT INTO `t_region` VALUES ('703', '76', '从化区', '3');
INSERT INTO `t_region` VALUES ('704', '76', '市郊', '3');
INSERT INTO `t_region` VALUES ('705', '77', '福田区', '3');
INSERT INTO `t_region` VALUES ('706', '77', '罗湖区', '3');
INSERT INTO `t_region` VALUES ('707', '77', '南山区', '3');
INSERT INTO `t_region` VALUES ('708', '77', '宝安区', '3');
INSERT INTO `t_region` VALUES ('709', '77', '龙岗区', '3');
INSERT INTO `t_region` VALUES ('710', '77', '盐田区', '3');
INSERT INTO `t_region` VALUES ('711', '78', '湘桥区', '3');
INSERT INTO `t_region` VALUES ('712', '78', '潮安县', '3');
INSERT INTO `t_region` VALUES ('713', '78', '饶平县', '3');
INSERT INTO `t_region` VALUES ('714', '79', '南城区', '3');
INSERT INTO `t_region` VALUES ('715', '79', '东城区', '3');
INSERT INTO `t_region` VALUES ('716', '79', '万江区', '3');
INSERT INTO `t_region` VALUES ('717', '79', '莞城区', '3');
INSERT INTO `t_region` VALUES ('718', '79', '石龙镇', '3');
INSERT INTO `t_region` VALUES ('719', '79', '虎门镇', '3');
INSERT INTO `t_region` VALUES ('720', '79', '麻涌镇', '3');
INSERT INTO `t_region` VALUES ('721', '79', '道滘镇', '3');
INSERT INTO `t_region` VALUES ('722', '79', '石碣镇', '3');
INSERT INTO `t_region` VALUES ('723', '79', '沙田镇', '3');
INSERT INTO `t_region` VALUES ('724', '79', '望牛墩镇', '3');
INSERT INTO `t_region` VALUES ('725', '79', '洪梅镇', '3');
INSERT INTO `t_region` VALUES ('726', '79', '茶山镇', '3');
INSERT INTO `t_region` VALUES ('727', '79', '寮步镇', '3');
INSERT INTO `t_region` VALUES ('728', '79', '大岭山镇', '3');
INSERT INTO `t_region` VALUES ('729', '79', '大朗镇', '3');
INSERT INTO `t_region` VALUES ('730', '79', '黄江镇', '3');
INSERT INTO `t_region` VALUES ('731', '79', '樟木头', '3');
INSERT INTO `t_region` VALUES ('732', '79', '凤岗镇', '3');
INSERT INTO `t_region` VALUES ('733', '79', '塘厦镇', '3');
INSERT INTO `t_region` VALUES ('734', '79', '谢岗镇', '3');
INSERT INTO `t_region` VALUES ('735', '79', '厚街镇', '3');
INSERT INTO `t_region` VALUES ('736', '79', '清溪镇', '3');
INSERT INTO `t_region` VALUES ('737', '79', '常平镇', '3');
INSERT INTO `t_region` VALUES ('738', '79', '桥头镇', '3');
INSERT INTO `t_region` VALUES ('739', '79', '横沥镇', '3');
INSERT INTO `t_region` VALUES ('740', '79', '东坑镇', '3');
INSERT INTO `t_region` VALUES ('741', '79', '企石镇', '3');
INSERT INTO `t_region` VALUES ('742', '79', '石排镇', '3');
INSERT INTO `t_region` VALUES ('743', '79', '长安镇', '3');
INSERT INTO `t_region` VALUES ('744', '79', '中堂镇', '3');
INSERT INTO `t_region` VALUES ('745', '79', '高埗镇', '3');
INSERT INTO `t_region` VALUES ('746', '80', '禅城区', '3');
INSERT INTO `t_region` VALUES ('747', '80', '南海区', '3');
INSERT INTO `t_region` VALUES ('748', '80', '顺德区', '3');
INSERT INTO `t_region` VALUES ('749', '80', '三水区', '3');
INSERT INTO `t_region` VALUES ('750', '80', '高明区', '3');
INSERT INTO `t_region` VALUES ('751', '81', '东源县', '3');
INSERT INTO `t_region` VALUES ('752', '81', '和平县', '3');
INSERT INTO `t_region` VALUES ('753', '81', '源城区', '3');
INSERT INTO `t_region` VALUES ('754', '81', '连平县', '3');
INSERT INTO `t_region` VALUES ('755', '81', '龙川县', '3');
INSERT INTO `t_region` VALUES ('756', '81', '紫金县', '3');
INSERT INTO `t_region` VALUES ('757', '82', '惠阳区', '3');
INSERT INTO `t_region` VALUES ('758', '82', '惠城区', '3');
INSERT INTO `t_region` VALUES ('759', '82', '大亚湾', '3');
INSERT INTO `t_region` VALUES ('760', '82', '博罗县', '3');
INSERT INTO `t_region` VALUES ('761', '82', '惠东县', '3');
INSERT INTO `t_region` VALUES ('762', '82', '龙门县', '3');
INSERT INTO `t_region` VALUES ('763', '83', '江海区', '3');
INSERT INTO `t_region` VALUES ('764', '83', '蓬江区', '3');
INSERT INTO `t_region` VALUES ('765', '83', '新会区', '3');
INSERT INTO `t_region` VALUES ('766', '83', '台山市', '3');
INSERT INTO `t_region` VALUES ('767', '83', '开平市', '3');
INSERT INTO `t_region` VALUES ('768', '83', '鹤山市', '3');
INSERT INTO `t_region` VALUES ('769', '83', '恩平市', '3');
INSERT INTO `t_region` VALUES ('770', '84', '榕城区', '3');
INSERT INTO `t_region` VALUES ('771', '84', '普宁市', '3');
INSERT INTO `t_region` VALUES ('772', '84', '揭东县', '3');
INSERT INTO `t_region` VALUES ('773', '84', '揭西县', '3');
INSERT INTO `t_region` VALUES ('774', '84', '惠来县', '3');
INSERT INTO `t_region` VALUES ('775', '85', '茂南区', '3');
INSERT INTO `t_region` VALUES ('776', '85', '茂港区', '3');
INSERT INTO `t_region` VALUES ('777', '85', '高州市', '3');
INSERT INTO `t_region` VALUES ('778', '85', '化州市', '3');
INSERT INTO `t_region` VALUES ('779', '85', '信宜市', '3');
INSERT INTO `t_region` VALUES ('780', '85', '电白县', '3');
INSERT INTO `t_region` VALUES ('781', '86', '梅县', '3');
INSERT INTO `t_region` VALUES ('782', '86', '梅江区', '3');
INSERT INTO `t_region` VALUES ('783', '86', '兴宁市', '3');
INSERT INTO `t_region` VALUES ('784', '86', '大埔县', '3');
INSERT INTO `t_region` VALUES ('785', '86', '丰顺县', '3');
INSERT INTO `t_region` VALUES ('786', '86', '五华县', '3');
INSERT INTO `t_region` VALUES ('787', '86', '平远县', '3');
INSERT INTO `t_region` VALUES ('788', '86', '蕉岭县', '3');
INSERT INTO `t_region` VALUES ('789', '87', '清城区', '3');
INSERT INTO `t_region` VALUES ('790', '87', '英德市', '3');
INSERT INTO `t_region` VALUES ('791', '87', '连州市', '3');
INSERT INTO `t_region` VALUES ('792', '87', '佛冈县', '3');
INSERT INTO `t_region` VALUES ('793', '87', '阳山县', '3');
INSERT INTO `t_region` VALUES ('794', '87', '清新县', '3');
INSERT INTO `t_region` VALUES ('795', '87', '连山', '3');
INSERT INTO `t_region` VALUES ('796', '87', '连南', '3');
INSERT INTO `t_region` VALUES ('797', '88', '南澳县', '3');
INSERT INTO `t_region` VALUES ('798', '88', '潮阳区', '3');
INSERT INTO `t_region` VALUES ('799', '88', '澄海区', '3');
INSERT INTO `t_region` VALUES ('800', '88', '龙湖区', '3');
INSERT INTO `t_region` VALUES ('801', '88', '金平区', '3');
INSERT INTO `t_region` VALUES ('802', '88', '濠江区', '3');
INSERT INTO `t_region` VALUES ('803', '88', '潮南区', '3');
INSERT INTO `t_region` VALUES ('804', '89', '城区', '3');
INSERT INTO `t_region` VALUES ('805', '89', '陆丰市', '3');
INSERT INTO `t_region` VALUES ('806', '89', '海丰县', '3');
INSERT INTO `t_region` VALUES ('807', '89', '陆河县', '3');
INSERT INTO `t_region` VALUES ('808', '90', '曲江县', '3');
INSERT INTO `t_region` VALUES ('809', '90', '浈江区', '3');
INSERT INTO `t_region` VALUES ('810', '90', '武江区', '3');
INSERT INTO `t_region` VALUES ('811', '90', '曲江区', '3');
INSERT INTO `t_region` VALUES ('812', '90', '乐昌市', '3');
INSERT INTO `t_region` VALUES ('813', '90', '南雄市', '3');
INSERT INTO `t_region` VALUES ('814', '90', '始兴县', '3');
INSERT INTO `t_region` VALUES ('815', '90', '仁化县', '3');
INSERT INTO `t_region` VALUES ('816', '90', '翁源县', '3');
INSERT INTO `t_region` VALUES ('817', '90', '新丰县', '3');
INSERT INTO `t_region` VALUES ('818', '90', '乳源', '3');
INSERT INTO `t_region` VALUES ('819', '91', '江城区', '3');
INSERT INTO `t_region` VALUES ('820', '91', '阳春市', '3');
INSERT INTO `t_region` VALUES ('821', '91', '阳西县', '3');
INSERT INTO `t_region` VALUES ('822', '91', '阳东县', '3');
INSERT INTO `t_region` VALUES ('823', '92', '云城区', '3');
INSERT INTO `t_region` VALUES ('824', '92', '罗定市', '3');
INSERT INTO `t_region` VALUES ('825', '92', '新兴县', '3');
INSERT INTO `t_region` VALUES ('826', '92', '郁南县', '3');
INSERT INTO `t_region` VALUES ('827', '92', '云安县', '3');
INSERT INTO `t_region` VALUES ('828', '93', '赤坎区', '3');
INSERT INTO `t_region` VALUES ('829', '93', '霞山区', '3');
INSERT INTO `t_region` VALUES ('830', '93', '坡头区', '3');
INSERT INTO `t_region` VALUES ('831', '93', '麻章区', '3');
INSERT INTO `t_region` VALUES ('832', '93', '廉江市', '3');
INSERT INTO `t_region` VALUES ('833', '93', '雷州市', '3');
INSERT INTO `t_region` VALUES ('834', '93', '吴川市', '3');
INSERT INTO `t_region` VALUES ('835', '93', '遂溪县', '3');
INSERT INTO `t_region` VALUES ('836', '93', '徐闻县', '3');
INSERT INTO `t_region` VALUES ('837', '94', '肇庆市', '3');
INSERT INTO `t_region` VALUES ('838', '94', '高要市', '3');
INSERT INTO `t_region` VALUES ('839', '94', '四会市', '3');
INSERT INTO `t_region` VALUES ('840', '94', '广宁县', '3');
INSERT INTO `t_region` VALUES ('841', '94', '怀集县', '3');
INSERT INTO `t_region` VALUES ('842', '94', '封开县', '3');
INSERT INTO `t_region` VALUES ('843', '94', '德庆县', '3');
INSERT INTO `t_region` VALUES ('844', '95', '石岐街道', '3');
INSERT INTO `t_region` VALUES ('845', '95', '东区街道', '3');
INSERT INTO `t_region` VALUES ('846', '95', '西区街道', '3');
INSERT INTO `t_region` VALUES ('847', '95', '环城街道', '3');
INSERT INTO `t_region` VALUES ('848', '95', '中山港街道', '3');
INSERT INTO `t_region` VALUES ('849', '95', '五桂山街道', '3');
INSERT INTO `t_region` VALUES ('850', '96', '香洲区', '3');
INSERT INTO `t_region` VALUES ('851', '96', '斗门区', '3');
INSERT INTO `t_region` VALUES ('852', '96', '金湾区', '3');
INSERT INTO `t_region` VALUES ('853', '97', '邕宁区', '3');
INSERT INTO `t_region` VALUES ('854', '97', '青秀区', '3');
INSERT INTO `t_region` VALUES ('855', '97', '兴宁区', '3');
INSERT INTO `t_region` VALUES ('856', '97', '良庆区', '3');
INSERT INTO `t_region` VALUES ('857', '97', '西乡塘区', '3');
INSERT INTO `t_region` VALUES ('858', '97', '江南区', '3');
INSERT INTO `t_region` VALUES ('859', '97', '武鸣县', '3');
INSERT INTO `t_region` VALUES ('860', '97', '隆安县', '3');
INSERT INTO `t_region` VALUES ('861', '97', '马山县', '3');
INSERT INTO `t_region` VALUES ('862', '97', '上林县', '3');
INSERT INTO `t_region` VALUES ('863', '97', '宾阳县', '3');
INSERT INTO `t_region` VALUES ('864', '97', '横县', '3');
INSERT INTO `t_region` VALUES ('865', '98', '秀峰区', '3');
INSERT INTO `t_region` VALUES ('866', '98', '叠彩区', '3');
INSERT INTO `t_region` VALUES ('867', '98', '象山区', '3');
INSERT INTO `t_region` VALUES ('868', '98', '七星区', '3');
INSERT INTO `t_region` VALUES ('869', '98', '雁山区', '3');
INSERT INTO `t_region` VALUES ('870', '98', '阳朔县', '3');
INSERT INTO `t_region` VALUES ('871', '98', '临桂县', '3');
INSERT INTO `t_region` VALUES ('872', '98', '灵川县', '3');
INSERT INTO `t_region` VALUES ('873', '98', '全州县', '3');
INSERT INTO `t_region` VALUES ('874', '98', '平乐县', '3');
INSERT INTO `t_region` VALUES ('875', '98', '兴安县', '3');
INSERT INTO `t_region` VALUES ('876', '98', '灌阳县', '3');
INSERT INTO `t_region` VALUES ('877', '98', '荔浦县', '3');
INSERT INTO `t_region` VALUES ('878', '98', '资源县', '3');
INSERT INTO `t_region` VALUES ('879', '98', '永福县', '3');
INSERT INTO `t_region` VALUES ('880', '98', '龙胜', '3');
INSERT INTO `t_region` VALUES ('881', '98', '恭城', '3');
INSERT INTO `t_region` VALUES ('882', '99', '右江区', '3');
INSERT INTO `t_region` VALUES ('883', '99', '凌云县', '3');
INSERT INTO `t_region` VALUES ('884', '99', '平果县', '3');
INSERT INTO `t_region` VALUES ('885', '99', '西林县', '3');
INSERT INTO `t_region` VALUES ('886', '99', '乐业县', '3');
INSERT INTO `t_region` VALUES ('887', '99', '德保县', '3');
INSERT INTO `t_region` VALUES ('888', '99', '田林县', '3');
INSERT INTO `t_region` VALUES ('889', '99', '田阳县', '3');
INSERT INTO `t_region` VALUES ('890', '99', '靖西县', '3');
INSERT INTO `t_region` VALUES ('891', '99', '田东县', '3');
INSERT INTO `t_region` VALUES ('892', '99', '那坡县', '3');
INSERT INTO `t_region` VALUES ('893', '99', '隆林', '3');
INSERT INTO `t_region` VALUES ('894', '100', '海城区', '3');
INSERT INTO `t_region` VALUES ('895', '100', '银海区', '3');
INSERT INTO `t_region` VALUES ('896', '100', '铁山港区', '3');
INSERT INTO `t_region` VALUES ('897', '100', '合浦县', '3');
INSERT INTO `t_region` VALUES ('898', '101', '江州区', '3');
INSERT INTO `t_region` VALUES ('899', '101', '凭祥市', '3');
INSERT INTO `t_region` VALUES ('900', '101', '宁明县', '3');
INSERT INTO `t_region` VALUES ('901', '101', '扶绥县', '3');
INSERT INTO `t_region` VALUES ('902', '101', '龙州县', '3');
INSERT INTO `t_region` VALUES ('903', '101', '大新县', '3');
INSERT INTO `t_region` VALUES ('904', '101', '天等县', '3');
INSERT INTO `t_region` VALUES ('905', '102', '港口区', '3');
INSERT INTO `t_region` VALUES ('906', '102', '防城区', '3');
INSERT INTO `t_region` VALUES ('907', '102', '东兴市', '3');
INSERT INTO `t_region` VALUES ('908', '102', '上思县', '3');
INSERT INTO `t_region` VALUES ('909', '103', '港北区', '3');
INSERT INTO `t_region` VALUES ('910', '103', '港南区', '3');
INSERT INTO `t_region` VALUES ('911', '103', '覃塘区', '3');
INSERT INTO `t_region` VALUES ('912', '103', '桂平市', '3');
INSERT INTO `t_region` VALUES ('913', '103', '平南县', '3');
INSERT INTO `t_region` VALUES ('914', '104', '金城江区', '3');
INSERT INTO `t_region` VALUES ('915', '104', '宜州市', '3');
INSERT INTO `t_region` VALUES ('916', '104', '天峨县', '3');
INSERT INTO `t_region` VALUES ('917', '104', '凤山县', '3');
INSERT INTO `t_region` VALUES ('918', '104', '南丹县', '3');
INSERT INTO `t_region` VALUES ('919', '104', '东兰县', '3');
INSERT INTO `t_region` VALUES ('920', '104', '都安', '3');
INSERT INTO `t_region` VALUES ('921', '104', '罗城', '3');
INSERT INTO `t_region` VALUES ('922', '104', '巴马', '3');
INSERT INTO `t_region` VALUES ('923', '104', '环江', '3');
INSERT INTO `t_region` VALUES ('924', '104', '大化', '3');
INSERT INTO `t_region` VALUES ('925', '105', '八步区', '3');
INSERT INTO `t_region` VALUES ('926', '105', '钟山县', '3');
INSERT INTO `t_region` VALUES ('927', '105', '昭平县', '3');
INSERT INTO `t_region` VALUES ('928', '105', '富川', '3');
INSERT INTO `t_region` VALUES ('929', '106', '兴宾区', '3');
INSERT INTO `t_region` VALUES ('930', '106', '合山市', '3');
INSERT INTO `t_region` VALUES ('931', '106', '象州县', '3');
INSERT INTO `t_region` VALUES ('932', '106', '武宣县', '3');
INSERT INTO `t_region` VALUES ('933', '106', '忻城县', '3');
INSERT INTO `t_region` VALUES ('934', '106', '金秀', '3');
INSERT INTO `t_region` VALUES ('935', '107', '城中区', '3');
INSERT INTO `t_region` VALUES ('936', '107', '鱼峰区', '3');
INSERT INTO `t_region` VALUES ('937', '107', '柳北区', '3');
INSERT INTO `t_region` VALUES ('938', '107', '柳南区', '3');
INSERT INTO `t_region` VALUES ('939', '107', '柳江县', '3');
INSERT INTO `t_region` VALUES ('940', '107', '柳城县', '3');
INSERT INTO `t_region` VALUES ('941', '107', '鹿寨县', '3');
INSERT INTO `t_region` VALUES ('942', '107', '融安县', '3');
INSERT INTO `t_region` VALUES ('943', '107', '融水', '3');
INSERT INTO `t_region` VALUES ('944', '107', '三江', '3');
INSERT INTO `t_region` VALUES ('945', '108', '钦南区', '3');
INSERT INTO `t_region` VALUES ('946', '108', '钦北区', '3');
INSERT INTO `t_region` VALUES ('947', '108', '灵山县', '3');
INSERT INTO `t_region` VALUES ('948', '108', '浦北县', '3');
INSERT INTO `t_region` VALUES ('949', '109', '万秀区', '3');
INSERT INTO `t_region` VALUES ('950', '109', '蝶山区', '3');
INSERT INTO `t_region` VALUES ('951', '109', '长洲区', '3');
INSERT INTO `t_region` VALUES ('952', '109', '岑溪市', '3');
INSERT INTO `t_region` VALUES ('953', '109', '苍梧县', '3');
INSERT INTO `t_region` VALUES ('954', '109', '藤县', '3');
INSERT INTO `t_region` VALUES ('955', '109', '蒙山县', '3');
INSERT INTO `t_region` VALUES ('956', '110', '玉州区', '3');
INSERT INTO `t_region` VALUES ('957', '110', '北流市', '3');
INSERT INTO `t_region` VALUES ('958', '110', '容县', '3');
INSERT INTO `t_region` VALUES ('959', '110', '陆川县', '3');
INSERT INTO `t_region` VALUES ('960', '110', '博白县', '3');
INSERT INTO `t_region` VALUES ('961', '110', '兴业县', '3');
INSERT INTO `t_region` VALUES ('962', '111', '南明区', '3');
INSERT INTO `t_region` VALUES ('963', '111', '云岩区', '3');
INSERT INTO `t_region` VALUES ('964', '111', '花溪区', '3');
INSERT INTO `t_region` VALUES ('965', '111', '乌当区', '3');
INSERT INTO `t_region` VALUES ('966', '111', '白云区', '3');
INSERT INTO `t_region` VALUES ('967', '111', '小河区', '3');
INSERT INTO `t_region` VALUES ('968', '111', '金阳新区', '3');
INSERT INTO `t_region` VALUES ('969', '111', '新天园区', '3');
INSERT INTO `t_region` VALUES ('970', '111', '清镇市', '3');
INSERT INTO `t_region` VALUES ('971', '111', '开阳县', '3');
INSERT INTO `t_region` VALUES ('972', '111', '修文县', '3');
INSERT INTO `t_region` VALUES ('973', '111', '息烽县', '3');
INSERT INTO `t_region` VALUES ('974', '112', '西秀区', '3');
INSERT INTO `t_region` VALUES ('975', '112', '关岭', '3');
INSERT INTO `t_region` VALUES ('976', '112', '镇宁', '3');
INSERT INTO `t_region` VALUES ('977', '112', '紫云', '3');
INSERT INTO `t_region` VALUES ('978', '112', '平坝县', '3');
INSERT INTO `t_region` VALUES ('979', '112', '普定县', '3');
INSERT INTO `t_region` VALUES ('980', '113', '毕节市', '3');
INSERT INTO `t_region` VALUES ('981', '113', '大方县', '3');
INSERT INTO `t_region` VALUES ('982', '113', '黔西县', '3');
INSERT INTO `t_region` VALUES ('983', '113', '金沙县', '3');
INSERT INTO `t_region` VALUES ('984', '113', '织金县', '3');
INSERT INTO `t_region` VALUES ('985', '113', '纳雍县', '3');
INSERT INTO `t_region` VALUES ('986', '113', '赫章县', '3');
INSERT INTO `t_region` VALUES ('987', '113', '威宁', '3');
INSERT INTO `t_region` VALUES ('988', '114', '钟山区', '3');
INSERT INTO `t_region` VALUES ('989', '114', '六枝特区', '3');
INSERT INTO `t_region` VALUES ('990', '114', '水城县', '3');
INSERT INTO `t_region` VALUES ('991', '114', '盘县', '3');
INSERT INTO `t_region` VALUES ('992', '115', '凯里市', '3');
INSERT INTO `t_region` VALUES ('993', '115', '黄平县', '3');
INSERT INTO `t_region` VALUES ('994', '115', '施秉县', '3');
INSERT INTO `t_region` VALUES ('995', '115', '三穗县', '3');
INSERT INTO `t_region` VALUES ('996', '115', '镇远县', '3');
INSERT INTO `t_region` VALUES ('997', '115', '岑巩县', '3');
INSERT INTO `t_region` VALUES ('998', '115', '天柱县', '3');
INSERT INTO `t_region` VALUES ('999', '115', '锦屏县', '3');
INSERT INTO `t_region` VALUES ('1000', '115', '剑河县', '3');
INSERT INTO `t_region` VALUES ('1001', '115', '台江县', '3');
INSERT INTO `t_region` VALUES ('1002', '115', '黎平县', '3');
INSERT INTO `t_region` VALUES ('1003', '115', '榕江县', '3');
INSERT INTO `t_region` VALUES ('1004', '115', '从江县', '3');
INSERT INTO `t_region` VALUES ('1005', '115', '雷山县', '3');
INSERT INTO `t_region` VALUES ('1006', '115', '麻江县', '3');
INSERT INTO `t_region` VALUES ('1007', '115', '丹寨县', '3');
INSERT INTO `t_region` VALUES ('1008', '116', '都匀市', '3');
INSERT INTO `t_region` VALUES ('1009', '116', '福泉市', '3');
INSERT INTO `t_region` VALUES ('1010', '116', '荔波县', '3');
INSERT INTO `t_region` VALUES ('1011', '116', '贵定县', '3');
INSERT INTO `t_region` VALUES ('1012', '116', '瓮安县', '3');
INSERT INTO `t_region` VALUES ('1013', '116', '独山县', '3');
INSERT INTO `t_region` VALUES ('1014', '116', '平塘县', '3');
INSERT INTO `t_region` VALUES ('1015', '116', '罗甸县', '3');
INSERT INTO `t_region` VALUES ('1016', '116', '长顺县', '3');
INSERT INTO `t_region` VALUES ('1017', '116', '龙里县', '3');
INSERT INTO `t_region` VALUES ('1018', '116', '惠水县', '3');
INSERT INTO `t_region` VALUES ('1019', '116', '三都', '3');
INSERT INTO `t_region` VALUES ('1020', '117', '兴义市', '3');
INSERT INTO `t_region` VALUES ('1021', '117', '兴仁县', '3');
INSERT INTO `t_region` VALUES ('1022', '117', '普安县', '3');
INSERT INTO `t_region` VALUES ('1023', '117', '晴隆县', '3');
INSERT INTO `t_region` VALUES ('1024', '117', '贞丰县', '3');
INSERT INTO `t_region` VALUES ('1025', '117', '望谟县', '3');
INSERT INTO `t_region` VALUES ('1026', '117', '册亨县', '3');
INSERT INTO `t_region` VALUES ('1027', '117', '安龙县', '3');
INSERT INTO `t_region` VALUES ('1028', '118', '铜仁市', '3');
INSERT INTO `t_region` VALUES ('1029', '118', '江口县', '3');
INSERT INTO `t_region` VALUES ('1030', '118', '石阡县', '3');
INSERT INTO `t_region` VALUES ('1031', '118', '思南县', '3');
INSERT INTO `t_region` VALUES ('1032', '118', '德江县', '3');
INSERT INTO `t_region` VALUES ('1033', '118', '玉屏', '3');
INSERT INTO `t_region` VALUES ('1034', '118', '印江', '3');
INSERT INTO `t_region` VALUES ('1035', '118', '沿河', '3');
INSERT INTO `t_region` VALUES ('1036', '118', '松桃', '3');
INSERT INTO `t_region` VALUES ('1037', '118', '万山特区', '3');
INSERT INTO `t_region` VALUES ('1038', '119', '红花岗区', '3');
INSERT INTO `t_region` VALUES ('1039', '119', '务川县', '3');
INSERT INTO `t_region` VALUES ('1040', '119', '道真县', '3');
INSERT INTO `t_region` VALUES ('1041', '119', '汇川区', '3');
INSERT INTO `t_region` VALUES ('1042', '119', '赤水市', '3');
INSERT INTO `t_region` VALUES ('1043', '119', '仁怀市', '3');
INSERT INTO `t_region` VALUES ('1044', '119', '遵义县', '3');
INSERT INTO `t_region` VALUES ('1045', '119', '桐梓县', '3');
INSERT INTO `t_region` VALUES ('1046', '119', '绥阳县', '3');
INSERT INTO `t_region` VALUES ('1047', '119', '正安县', '3');
INSERT INTO `t_region` VALUES ('1048', '119', '凤冈县', '3');
INSERT INTO `t_region` VALUES ('1049', '119', '湄潭县', '3');
INSERT INTO `t_region` VALUES ('1050', '119', '余庆县', '3');
INSERT INTO `t_region` VALUES ('1051', '119', '习水县', '3');
INSERT INTO `t_region` VALUES ('1052', '119', '道真', '3');
INSERT INTO `t_region` VALUES ('1053', '119', '务川', '3');
INSERT INTO `t_region` VALUES ('1054', '120', '秀英区', '3');
INSERT INTO `t_region` VALUES ('1055', '120', '龙华区', '3');
INSERT INTO `t_region` VALUES ('1056', '120', '琼山区', '3');
INSERT INTO `t_region` VALUES ('1057', '120', '美兰区', '3');
INSERT INTO `t_region` VALUES ('1058', '137', '市区', '3');
INSERT INTO `t_region` VALUES ('1059', '137', '洋浦开发区', '3');
INSERT INTO `t_region` VALUES ('1060', '137', '那大镇', '3');
INSERT INTO `t_region` VALUES ('1061', '137', '王五镇', '3');
INSERT INTO `t_region` VALUES ('1062', '137', '雅星镇', '3');
INSERT INTO `t_region` VALUES ('1063', '137', '大成镇', '3');
INSERT INTO `t_region` VALUES ('1064', '137', '中和镇', '3');
INSERT INTO `t_region` VALUES ('1065', '137', '峨蔓镇', '3');
INSERT INTO `t_region` VALUES ('1066', '137', '南丰镇', '3');
INSERT INTO `t_region` VALUES ('1067', '137', '白马井镇', '3');
INSERT INTO `t_region` VALUES ('1068', '137', '兰洋镇', '3');
INSERT INTO `t_region` VALUES ('1069', '137', '和庆镇', '3');
INSERT INTO `t_region` VALUES ('1070', '137', '海头镇', '3');
INSERT INTO `t_region` VALUES ('1071', '137', '排浦镇', '3');
INSERT INTO `t_region` VALUES ('1072', '137', '东成镇', '3');
INSERT INTO `t_region` VALUES ('1073', '137', '光村镇', '3');
INSERT INTO `t_region` VALUES ('1074', '137', '木棠镇', '3');
INSERT INTO `t_region` VALUES ('1075', '137', '新州镇', '3');
INSERT INTO `t_region` VALUES ('1076', '137', '三都镇', '3');
INSERT INTO `t_region` VALUES ('1077', '137', '其他', '3');
INSERT INTO `t_region` VALUES ('1078', '138', '长安区', '3');
INSERT INTO `t_region` VALUES ('1079', '138', '桥东区', '3');
INSERT INTO `t_region` VALUES ('1080', '138', '桥西区', '3');
INSERT INTO `t_region` VALUES ('1081', '138', '新华区', '3');
INSERT INTO `t_region` VALUES ('1082', '138', '裕华区', '3');
INSERT INTO `t_region` VALUES ('1083', '138', '井陉矿区', '3');
INSERT INTO `t_region` VALUES ('1084', '138', '高新区', '3');
INSERT INTO `t_region` VALUES ('1085', '138', '辛集市', '3');
INSERT INTO `t_region` VALUES ('1086', '138', '藁城市', '3');
INSERT INTO `t_region` VALUES ('1087', '138', '晋州市', '3');
INSERT INTO `t_region` VALUES ('1088', '138', '新乐市', '3');
INSERT INTO `t_region` VALUES ('1089', '138', '鹿泉市', '3');
INSERT INTO `t_region` VALUES ('1090', '138', '井陉县', '3');
INSERT INTO `t_region` VALUES ('1091', '138', '正定县', '3');
INSERT INTO `t_region` VALUES ('1092', '138', '栾城县', '3');
INSERT INTO `t_region` VALUES ('1093', '138', '行唐县', '3');
INSERT INTO `t_region` VALUES ('1094', '138', '灵寿县', '3');
INSERT INTO `t_region` VALUES ('1095', '138', '高邑县', '3');
INSERT INTO `t_region` VALUES ('1096', '138', '深泽县', '3');
INSERT INTO `t_region` VALUES ('1097', '138', '赞皇县', '3');
INSERT INTO `t_region` VALUES ('1098', '138', '无极县', '3');
INSERT INTO `t_region` VALUES ('1099', '138', '平山县', '3');
INSERT INTO `t_region` VALUES ('1100', '138', '元氏县', '3');
INSERT INTO `t_region` VALUES ('1101', '138', '赵县', '3');
INSERT INTO `t_region` VALUES ('1102', '139', '新市区', '3');
INSERT INTO `t_region` VALUES ('1103', '139', '南市区', '3');
INSERT INTO `t_region` VALUES ('1104', '139', '北市区', '3');
INSERT INTO `t_region` VALUES ('1105', '139', '涿州市', '3');
INSERT INTO `t_region` VALUES ('1106', '139', '定州市', '3');
INSERT INTO `t_region` VALUES ('1107', '139', '安国市', '3');
INSERT INTO `t_region` VALUES ('1108', '139', '高碑店市', '3');
INSERT INTO `t_region` VALUES ('1109', '139', '满城县', '3');
INSERT INTO `t_region` VALUES ('1110', '139', '清苑县', '3');
INSERT INTO `t_region` VALUES ('1111', '139', '涞水县', '3');
INSERT INTO `t_region` VALUES ('1112', '139', '阜平县', '3');
INSERT INTO `t_region` VALUES ('1113', '139', '徐水县', '3');
INSERT INTO `t_region` VALUES ('1114', '139', '定兴县', '3');
INSERT INTO `t_region` VALUES ('1115', '139', '唐县', '3');
INSERT INTO `t_region` VALUES ('1116', '139', '高阳县', '3');
INSERT INTO `t_region` VALUES ('1117', '139', '容城县', '3');
INSERT INTO `t_region` VALUES ('1118', '139', '涞源县', '3');
INSERT INTO `t_region` VALUES ('1119', '139', '望都县', '3');
INSERT INTO `t_region` VALUES ('1120', '139', '安新县', '3');
INSERT INTO `t_region` VALUES ('1121', '139', '易县', '3');
INSERT INTO `t_region` VALUES ('1122', '139', '曲阳县', '3');
INSERT INTO `t_region` VALUES ('1123', '139', '蠡县', '3');
INSERT INTO `t_region` VALUES ('1124', '139', '顺平县', '3');
INSERT INTO `t_region` VALUES ('1125', '139', '博野县', '3');
INSERT INTO `t_region` VALUES ('1126', '139', '雄县', '3');
INSERT INTO `t_region` VALUES ('1127', '140', '运河区', '3');
INSERT INTO `t_region` VALUES ('1128', '140', '新华区', '3');
INSERT INTO `t_region` VALUES ('1129', '140', '泊头市', '3');
INSERT INTO `t_region` VALUES ('1130', '140', '任丘市', '3');
INSERT INTO `t_region` VALUES ('1131', '140', '黄骅市', '3');
INSERT INTO `t_region` VALUES ('1132', '140', '河间市', '3');
INSERT INTO `t_region` VALUES ('1133', '140', '沧县', '3');
INSERT INTO `t_region` VALUES ('1134', '140', '青县', '3');
INSERT INTO `t_region` VALUES ('1135', '140', '东光县', '3');
INSERT INTO `t_region` VALUES ('1136', '140', '海兴县', '3');
INSERT INTO `t_region` VALUES ('1137', '140', '盐山县', '3');
INSERT INTO `t_region` VALUES ('1138', '140', '肃宁县', '3');
INSERT INTO `t_region` VALUES ('1139', '140', '南皮县', '3');
INSERT INTO `t_region` VALUES ('1140', '140', '吴桥县', '3');
INSERT INTO `t_region` VALUES ('1141', '140', '献县', '3');
INSERT INTO `t_region` VALUES ('1142', '140', '孟村', '3');
INSERT INTO `t_region` VALUES ('1143', '141', '双桥区', '3');
INSERT INTO `t_region` VALUES ('1144', '141', '双滦区', '3');
INSERT INTO `t_region` VALUES ('1145', '141', '鹰手营子矿区', '3');
INSERT INTO `t_region` VALUES ('1146', '141', '承德县', '3');
INSERT INTO `t_region` VALUES ('1147', '141', '兴隆县', '3');
INSERT INTO `t_region` VALUES ('1148', '141', '平泉县', '3');
INSERT INTO `t_region` VALUES ('1149', '141', '滦平县', '3');
INSERT INTO `t_region` VALUES ('1150', '141', '隆化县', '3');
INSERT INTO `t_region` VALUES ('1151', '141', '丰宁', '3');
INSERT INTO `t_region` VALUES ('1152', '141', '宽城', '3');
INSERT INTO `t_region` VALUES ('1153', '141', '围场', '3');
INSERT INTO `t_region` VALUES ('1154', '142', '从台区', '3');
INSERT INTO `t_region` VALUES ('1155', '142', '复兴区', '3');
INSERT INTO `t_region` VALUES ('1156', '142', '邯山区', '3');
INSERT INTO `t_region` VALUES ('1157', '142', '峰峰矿区', '3');
INSERT INTO `t_region` VALUES ('1158', '142', '武安市', '3');
INSERT INTO `t_region` VALUES ('1159', '142', '邯郸县', '3');
INSERT INTO `t_region` VALUES ('1160', '142', '临漳县', '3');
INSERT INTO `t_region` VALUES ('1161', '142', '成安县', '3');
INSERT INTO `t_region` VALUES ('1162', '142', '大名县', '3');
INSERT INTO `t_region` VALUES ('1163', '142', '涉县', '3');
INSERT INTO `t_region` VALUES ('1164', '142', '磁县', '3');
INSERT INTO `t_region` VALUES ('1165', '142', '肥乡县', '3');
INSERT INTO `t_region` VALUES ('1166', '142', '永年县', '3');
INSERT INTO `t_region` VALUES ('1167', '142', '邱县', '3');
INSERT INTO `t_region` VALUES ('1168', '142', '鸡泽县', '3');
INSERT INTO `t_region` VALUES ('1169', '142', '广平县', '3');
INSERT INTO `t_region` VALUES ('1170', '142', '馆陶县', '3');
INSERT INTO `t_region` VALUES ('1171', '142', '魏县', '3');
INSERT INTO `t_region` VALUES ('1172', '142', '曲周县', '3');
INSERT INTO `t_region` VALUES ('1173', '143', '桃城区', '3');
INSERT INTO `t_region` VALUES ('1174', '143', '冀州市', '3');
INSERT INTO `t_region` VALUES ('1175', '143', '深州市', '3');
INSERT INTO `t_region` VALUES ('1176', '143', '枣强县', '3');
INSERT INTO `t_region` VALUES ('1177', '143', '武邑县', '3');
INSERT INTO `t_region` VALUES ('1178', '143', '武强县', '3');
INSERT INTO `t_region` VALUES ('1179', '143', '饶阳县', '3');
INSERT INTO `t_region` VALUES ('1180', '143', '安平县', '3');
INSERT INTO `t_region` VALUES ('1181', '143', '故城县', '3');
INSERT INTO `t_region` VALUES ('1182', '143', '景县', '3');
INSERT INTO `t_region` VALUES ('1183', '143', '阜城县', '3');
INSERT INTO `t_region` VALUES ('1184', '144', '安次区', '3');
INSERT INTO `t_region` VALUES ('1185', '144', '广阳区', '3');
INSERT INTO `t_region` VALUES ('1186', '144', '霸州市', '3');
INSERT INTO `t_region` VALUES ('1187', '144', '三河市', '3');
INSERT INTO `t_region` VALUES ('1188', '144', '固安县', '3');
INSERT INTO `t_region` VALUES ('1189', '144', '永清县', '3');
INSERT INTO `t_region` VALUES ('1190', '144', '香河县', '3');
INSERT INTO `t_region` VALUES ('1191', '144', '大城县', '3');
INSERT INTO `t_region` VALUES ('1192', '144', '文安县', '3');
INSERT INTO `t_region` VALUES ('1193', '144', '大厂', '3');
INSERT INTO `t_region` VALUES ('1194', '145', '海港区', '3');
INSERT INTO `t_region` VALUES ('1195', '145', '山海关区', '3');
INSERT INTO `t_region` VALUES ('1196', '145', '北戴河区', '3');
INSERT INTO `t_region` VALUES ('1197', '145', '昌黎县', '3');
INSERT INTO `t_region` VALUES ('1198', '145', '抚宁县', '3');
INSERT INTO `t_region` VALUES ('1199', '145', '卢龙县', '3');
INSERT INTO `t_region` VALUES ('1200', '145', '青龙', '3');
INSERT INTO `t_region` VALUES ('1201', '146', '路北区', '3');
INSERT INTO `t_region` VALUES ('1202', '146', '路南区', '3');
INSERT INTO `t_region` VALUES ('1203', '146', '古冶区', '3');
INSERT INTO `t_region` VALUES ('1204', '146', '开平区', '3');
INSERT INTO `t_region` VALUES ('1205', '146', '丰南区', '3');
INSERT INTO `t_region` VALUES ('1206', '146', '丰润区', '3');
INSERT INTO `t_region` VALUES ('1207', '146', '遵化市', '3');
INSERT INTO `t_region` VALUES ('1208', '146', '迁安市', '3');
INSERT INTO `t_region` VALUES ('1209', '146', '滦县', '3');
INSERT INTO `t_region` VALUES ('1210', '146', '滦南县', '3');
INSERT INTO `t_region` VALUES ('1211', '146', '乐亭县', '3');
INSERT INTO `t_region` VALUES ('1212', '146', '迁西县', '3');
INSERT INTO `t_region` VALUES ('1213', '146', '玉田县', '3');
INSERT INTO `t_region` VALUES ('1214', '146', '唐海县', '3');
INSERT INTO `t_region` VALUES ('1215', '147', '桥东区', '3');
INSERT INTO `t_region` VALUES ('1216', '147', '桥西区', '3');
INSERT INTO `t_region` VALUES ('1217', '147', '南宫市', '3');
INSERT INTO `t_region` VALUES ('1218', '147', '沙河市', '3');
INSERT INTO `t_region` VALUES ('1219', '147', '邢台县', '3');
INSERT INTO `t_region` VALUES ('1220', '147', '临城县', '3');
INSERT INTO `t_region` VALUES ('1221', '147', '内丘县', '3');
INSERT INTO `t_region` VALUES ('1222', '147', '柏乡县', '3');
INSERT INTO `t_region` VALUES ('1223', '147', '隆尧县', '3');
INSERT INTO `t_region` VALUES ('1224', '147', '任县', '3');
INSERT INTO `t_region` VALUES ('1225', '147', '南和县', '3');
INSERT INTO `t_region` VALUES ('1226', '147', '宁晋县', '3');
INSERT INTO `t_region` VALUES ('1227', '147', '巨鹿县', '3');
INSERT INTO `t_region` VALUES ('1228', '147', '新河县', '3');
INSERT INTO `t_region` VALUES ('1229', '147', '广宗县', '3');
INSERT INTO `t_region` VALUES ('1230', '147', '平乡县', '3');
INSERT INTO `t_region` VALUES ('1231', '147', '威县', '3');
INSERT INTO `t_region` VALUES ('1232', '147', '清河县', '3');
INSERT INTO `t_region` VALUES ('1233', '147', '临西县', '3');
INSERT INTO `t_region` VALUES ('1234', '148', '桥西区', '3');
INSERT INTO `t_region` VALUES ('1235', '148', '桥东区', '3');
INSERT INTO `t_region` VALUES ('1236', '148', '宣化区', '3');
INSERT INTO `t_region` VALUES ('1237', '148', '下花园区', '3');
INSERT INTO `t_region` VALUES ('1238', '148', '宣化县', '3');
INSERT INTO `t_region` VALUES ('1239', '148', '张北县', '3');
INSERT INTO `t_region` VALUES ('1240', '148', '康保县', '3');
INSERT INTO `t_region` VALUES ('1241', '148', '沽源县', '3');
INSERT INTO `t_region` VALUES ('1242', '148', '尚义县', '3');
INSERT INTO `t_region` VALUES ('1243', '148', '蔚县', '3');
INSERT INTO `t_region` VALUES ('1244', '148', '阳原县', '3');
INSERT INTO `t_region` VALUES ('1245', '148', '怀安县', '3');
INSERT INTO `t_region` VALUES ('1246', '148', '万全县', '3');
INSERT INTO `t_region` VALUES ('1247', '148', '怀来县', '3');
INSERT INTO `t_region` VALUES ('1248', '148', '涿鹿县', '3');
INSERT INTO `t_region` VALUES ('1249', '148', '赤城县', '3');
INSERT INTO `t_region` VALUES ('1250', '148', '崇礼县', '3');
INSERT INTO `t_region` VALUES ('1251', '149', '金水区', '3');
INSERT INTO `t_region` VALUES ('1252', '149', '邙山区', '3');
INSERT INTO `t_region` VALUES ('1253', '149', '二七区', '3');
INSERT INTO `t_region` VALUES ('1254', '149', '管城区', '3');
INSERT INTO `t_region` VALUES ('1255', '149', '中原区', '3');
INSERT INTO `t_region` VALUES ('1256', '149', '上街区', '3');
INSERT INTO `t_region` VALUES ('1257', '149', '惠济区', '3');
INSERT INTO `t_region` VALUES ('1258', '149', '郑东新区', '3');
INSERT INTO `t_region` VALUES ('1259', '149', '经济技术开发区', '3');
INSERT INTO `t_region` VALUES ('1260', '149', '高新开发区', '3');
INSERT INTO `t_region` VALUES ('1261', '149', '出口加工区', '3');
INSERT INTO `t_region` VALUES ('1262', '149', '巩义市', '3');
INSERT INTO `t_region` VALUES ('1263', '149', '荥阳市', '3');
INSERT INTO `t_region` VALUES ('1264', '149', '新密市', '3');
INSERT INTO `t_region` VALUES ('1265', '149', '新郑市', '3');
INSERT INTO `t_region` VALUES ('1266', '149', '登封市', '3');
INSERT INTO `t_region` VALUES ('1267', '149', '中牟县', '3');
INSERT INTO `t_region` VALUES ('1268', '150', '西工区', '3');
INSERT INTO `t_region` VALUES ('1269', '150', '老城区', '3');
INSERT INTO `t_region` VALUES ('1270', '150', '涧西区', '3');
INSERT INTO `t_region` VALUES ('1271', '150', '瀍河回族区', '3');
INSERT INTO `t_region` VALUES ('1272', '150', '洛龙区', '3');
INSERT INTO `t_region` VALUES ('1273', '150', '吉利区', '3');
INSERT INTO `t_region` VALUES ('1274', '150', '偃师市', '3');
INSERT INTO `t_region` VALUES ('1275', '150', '孟津县', '3');
INSERT INTO `t_region` VALUES ('1276', '150', '新安县', '3');
INSERT INTO `t_region` VALUES ('1277', '150', '栾川县', '3');
INSERT INTO `t_region` VALUES ('1278', '150', '嵩县', '3');
INSERT INTO `t_region` VALUES ('1279', '150', '汝阳县', '3');
INSERT INTO `t_region` VALUES ('1280', '150', '宜阳县', '3');
INSERT INTO `t_region` VALUES ('1281', '150', '洛宁县', '3');
INSERT INTO `t_region` VALUES ('1282', '150', '伊川县', '3');
INSERT INTO `t_region` VALUES ('1283', '151', '鼓楼区', '3');
INSERT INTO `t_region` VALUES ('1284', '151', '龙亭区', '3');
INSERT INTO `t_region` VALUES ('1285', '151', '顺河回族区', '3');
INSERT INTO `t_region` VALUES ('1286', '151', '金明区', '3');
INSERT INTO `t_region` VALUES ('1287', '151', '禹王台区', '3');
INSERT INTO `t_region` VALUES ('1288', '151', '杞县', '3');
INSERT INTO `t_region` VALUES ('1289', '151', '通许县', '3');
INSERT INTO `t_region` VALUES ('1290', '151', '尉氏县', '3');
INSERT INTO `t_region` VALUES ('1291', '151', '开封县', '3');
INSERT INTO `t_region` VALUES ('1292', '151', '兰考县', '3');
INSERT INTO `t_region` VALUES ('1293', '152', '北关区', '3');
INSERT INTO `t_region` VALUES ('1294', '152', '文峰区', '3');
INSERT INTO `t_region` VALUES ('1295', '152', '殷都区', '3');
INSERT INTO `t_region` VALUES ('1296', '152', '龙安区', '3');
INSERT INTO `t_region` VALUES ('1297', '152', '林州市', '3');
INSERT INTO `t_region` VALUES ('1298', '152', '安阳县', '3');
INSERT INTO `t_region` VALUES ('1299', '152', '汤阴县', '3');
INSERT INTO `t_region` VALUES ('1300', '152', '滑县', '3');
INSERT INTO `t_region` VALUES ('1301', '152', '内黄县', '3');
INSERT INTO `t_region` VALUES ('1302', '153', '淇滨区', '3');
INSERT INTO `t_region` VALUES ('1303', '153', '山城区', '3');
INSERT INTO `t_region` VALUES ('1304', '153', '鹤山区', '3');
INSERT INTO `t_region` VALUES ('1305', '153', '浚县', '3');
INSERT INTO `t_region` VALUES ('1306', '153', '淇县', '3');
INSERT INTO `t_region` VALUES ('1307', '154', '济源市', '3');
INSERT INTO `t_region` VALUES ('1308', '155', '解放区', '3');
INSERT INTO `t_region` VALUES ('1309', '155', '中站区', '3');
INSERT INTO `t_region` VALUES ('1310', '155', '马村区', '3');
INSERT INTO `t_region` VALUES ('1311', '155', '山阳区', '3');
INSERT INTO `t_region` VALUES ('1312', '155', '沁阳市', '3');
INSERT INTO `t_region` VALUES ('1313', '155', '孟州市', '3');
INSERT INTO `t_region` VALUES ('1314', '155', '修武县', '3');
INSERT INTO `t_region` VALUES ('1315', '155', '博爱县', '3');
INSERT INTO `t_region` VALUES ('1316', '155', '武陟县', '3');
INSERT INTO `t_region` VALUES ('1317', '155', '温县', '3');
INSERT INTO `t_region` VALUES ('1318', '156', '卧龙区', '3');
INSERT INTO `t_region` VALUES ('1319', '156', '宛城区', '3');
INSERT INTO `t_region` VALUES ('1320', '156', '邓州市', '3');
INSERT INTO `t_region` VALUES ('1321', '156', '南召县', '3');
INSERT INTO `t_region` VALUES ('1322', '156', '方城县', '3');
INSERT INTO `t_region` VALUES ('1323', '156', '西峡县', '3');
INSERT INTO `t_region` VALUES ('1324', '156', '镇平县', '3');
INSERT INTO `t_region` VALUES ('1325', '156', '内乡县', '3');
INSERT INTO `t_region` VALUES ('1326', '156', '淅川县', '3');
INSERT INTO `t_region` VALUES ('1327', '156', '社旗县', '3');
INSERT INTO `t_region` VALUES ('1328', '156', '唐河县', '3');
INSERT INTO `t_region` VALUES ('1329', '156', '新野县', '3');
INSERT INTO `t_region` VALUES ('1330', '156', '桐柏县', '3');
INSERT INTO `t_region` VALUES ('1331', '157', '新华区', '3');
INSERT INTO `t_region` VALUES ('1332', '157', '卫东区', '3');
INSERT INTO `t_region` VALUES ('1333', '157', '湛河区', '3');
INSERT INTO `t_region` VALUES ('1334', '157', '石龙区', '3');
INSERT INTO `t_region` VALUES ('1335', '157', '舞钢市', '3');
INSERT INTO `t_region` VALUES ('1336', '157', '汝州市', '3');
INSERT INTO `t_region` VALUES ('1337', '157', '宝丰县', '3');
INSERT INTO `t_region` VALUES ('1338', '157', '叶县', '3');
INSERT INTO `t_region` VALUES ('1339', '157', '鲁山县', '3');
INSERT INTO `t_region` VALUES ('1340', '157', '郏县', '3');
INSERT INTO `t_region` VALUES ('1341', '158', '湖滨区', '3');
INSERT INTO `t_region` VALUES ('1342', '158', '义马市', '3');
INSERT INTO `t_region` VALUES ('1343', '158', '灵宝市', '3');
INSERT INTO `t_region` VALUES ('1344', '158', '渑池县', '3');
INSERT INTO `t_region` VALUES ('1345', '158', '陕县', '3');
INSERT INTO `t_region` VALUES ('1346', '158', '卢氏县', '3');
INSERT INTO `t_region` VALUES ('1347', '159', '梁园区', '3');
INSERT INTO `t_region` VALUES ('1348', '159', '睢阳区', '3');
INSERT INTO `t_region` VALUES ('1349', '159', '永城市', '3');
INSERT INTO `t_region` VALUES ('1350', '159', '民权县', '3');
INSERT INTO `t_region` VALUES ('1351', '159', '睢县', '3');
INSERT INTO `t_region` VALUES ('1352', '159', '宁陵县', '3');
INSERT INTO `t_region` VALUES ('1353', '159', '虞城县', '3');
INSERT INTO `t_region` VALUES ('1354', '159', '柘城县', '3');
INSERT INTO `t_region` VALUES ('1355', '159', '夏邑县', '3');
INSERT INTO `t_region` VALUES ('1356', '160', '卫滨区', '3');
INSERT INTO `t_region` VALUES ('1357', '160', '红旗区', '3');
INSERT INTO `t_region` VALUES ('1358', '160', '凤泉区', '3');
INSERT INTO `t_region` VALUES ('1359', '160', '牧野区', '3');
INSERT INTO `t_region` VALUES ('1360', '160', '卫辉市', '3');
INSERT INTO `t_region` VALUES ('1361', '160', '辉县市', '3');
INSERT INTO `t_region` VALUES ('1362', '160', '新乡县', '3');
INSERT INTO `t_region` VALUES ('1363', '160', '获嘉县', '3');
INSERT INTO `t_region` VALUES ('1364', '160', '原阳县', '3');
INSERT INTO `t_region` VALUES ('1365', '160', '延津县', '3');
INSERT INTO `t_region` VALUES ('1366', '160', '封丘县', '3');
INSERT INTO `t_region` VALUES ('1367', '160', '长垣县', '3');
INSERT INTO `t_region` VALUES ('1368', '161', '浉河区', '3');
INSERT INTO `t_region` VALUES ('1369', '161', '平桥区', '3');
INSERT INTO `t_region` VALUES ('1370', '161', '罗山县', '3');
INSERT INTO `t_region` VALUES ('1371', '161', '光山县', '3');
INSERT INTO `t_region` VALUES ('1372', '161', '新县', '3');
INSERT INTO `t_region` VALUES ('1373', '161', '商城县', '3');
INSERT INTO `t_region` VALUES ('1374', '161', '固始县', '3');
INSERT INTO `t_region` VALUES ('1375', '161', '潢川县', '3');
INSERT INTO `t_region` VALUES ('1376', '161', '淮滨县', '3');
INSERT INTO `t_region` VALUES ('1377', '161', '息县', '3');
INSERT INTO `t_region` VALUES ('1378', '162', '魏都区', '3');
INSERT INTO `t_region` VALUES ('1379', '162', '禹州市', '3');
INSERT INTO `t_region` VALUES ('1380', '162', '长葛市', '3');
INSERT INTO `t_region` VALUES ('1381', '162', '许昌县', '3');
INSERT INTO `t_region` VALUES ('1382', '162', '鄢陵县', '3');
INSERT INTO `t_region` VALUES ('1383', '162', '襄城县', '3');
INSERT INTO `t_region` VALUES ('1384', '163', '川汇区', '3');
INSERT INTO `t_region` VALUES ('1385', '163', '项城市', '3');
INSERT INTO `t_region` VALUES ('1386', '163', '扶沟县', '3');
INSERT INTO `t_region` VALUES ('1387', '163', '西华县', '3');
INSERT INTO `t_region` VALUES ('1388', '163', '商水县', '3');
INSERT INTO `t_region` VALUES ('1389', '163', '沈丘县', '3');
INSERT INTO `t_region` VALUES ('1390', '163', '郸城县', '3');
INSERT INTO `t_region` VALUES ('1391', '163', '淮阳县', '3');
INSERT INTO `t_region` VALUES ('1392', '163', '太康县', '3');
INSERT INTO `t_region` VALUES ('1393', '163', '鹿邑县', '3');
INSERT INTO `t_region` VALUES ('1394', '164', '驿城区', '3');
INSERT INTO `t_region` VALUES ('1395', '164', '西平县', '3');
INSERT INTO `t_region` VALUES ('1396', '164', '上蔡县', '3');
INSERT INTO `t_region` VALUES ('1397', '164', '平舆县', '3');
INSERT INTO `t_region` VALUES ('1398', '164', '正阳县', '3');
INSERT INTO `t_region` VALUES ('1399', '164', '确山县', '3');
INSERT INTO `t_region` VALUES ('1400', '164', '泌阳县', '3');
INSERT INTO `t_region` VALUES ('1401', '164', '汝南县', '3');
INSERT INTO `t_region` VALUES ('1402', '164', '遂平县', '3');
INSERT INTO `t_region` VALUES ('1403', '164', '新蔡县', '3');
INSERT INTO `t_region` VALUES ('1404', '165', '郾城区', '3');
INSERT INTO `t_region` VALUES ('1405', '165', '源汇区', '3');
INSERT INTO `t_region` VALUES ('1406', '165', '召陵区', '3');
INSERT INTO `t_region` VALUES ('1407', '165', '舞阳县', '3');
INSERT INTO `t_region` VALUES ('1408', '165', '临颍县', '3');
INSERT INTO `t_region` VALUES ('1409', '166', '华龙区', '3');
INSERT INTO `t_region` VALUES ('1410', '166', '清丰县', '3');
INSERT INTO `t_region` VALUES ('1411', '166', '南乐县', '3');
INSERT INTO `t_region` VALUES ('1412', '166', '范县', '3');
INSERT INTO `t_region` VALUES ('1413', '166', '台前县', '3');
INSERT INTO `t_region` VALUES ('1414', '166', '濮阳县', '3');
INSERT INTO `t_region` VALUES ('1415', '167', '道里区', '3');
INSERT INTO `t_region` VALUES ('1416', '167', '南岗区', '3');
INSERT INTO `t_region` VALUES ('1417', '167', '动力区', '3');
INSERT INTO `t_region` VALUES ('1418', '167', '平房区', '3');
INSERT INTO `t_region` VALUES ('1419', '167', '香坊区', '3');
INSERT INTO `t_region` VALUES ('1420', '167', '太平区', '3');
INSERT INTO `t_region` VALUES ('1421', '167', '道外区', '3');
INSERT INTO `t_region` VALUES ('1422', '167', '阿城区', '3');
INSERT INTO `t_region` VALUES ('1423', '167', '呼兰区', '3');
INSERT INTO `t_region` VALUES ('1424', '167', '松北区', '3');
INSERT INTO `t_region` VALUES ('1425', '167', '尚志市', '3');
INSERT INTO `t_region` VALUES ('1426', '167', '双城市', '3');
INSERT INTO `t_region` VALUES ('1427', '167', '五常市', '3');
INSERT INTO `t_region` VALUES ('1428', '167', '方正县', '3');
INSERT INTO `t_region` VALUES ('1429', '167', '宾县', '3');
INSERT INTO `t_region` VALUES ('1430', '167', '依兰县', '3');
INSERT INTO `t_region` VALUES ('1431', '167', '巴彦县', '3');
INSERT INTO `t_region` VALUES ('1432', '167', '通河县', '3');
INSERT INTO `t_region` VALUES ('1433', '167', '木兰县', '3');
INSERT INTO `t_region` VALUES ('1434', '167', '延寿县', '3');
INSERT INTO `t_region` VALUES ('1435', '168', '萨尔图区', '3');
INSERT INTO `t_region` VALUES ('1436', '168', '红岗区', '3');
INSERT INTO `t_region` VALUES ('1437', '168', '龙凤区', '3');
INSERT INTO `t_region` VALUES ('1438', '168', '让胡路区', '3');
INSERT INTO `t_region` VALUES ('1439', '168', '大同区', '3');
INSERT INTO `t_region` VALUES ('1440', '168', '肇州县', '3');
INSERT INTO `t_region` VALUES ('1441', '168', '肇源县', '3');
INSERT INTO `t_region` VALUES ('1442', '168', '林甸县', '3');
INSERT INTO `t_region` VALUES ('1443', '168', '杜尔伯特', '3');
INSERT INTO `t_region` VALUES ('1444', '169', '呼玛县', '3');
INSERT INTO `t_region` VALUES ('1445', '169', '漠河县', '3');
INSERT INTO `t_region` VALUES ('1446', '169', '塔河县', '3');
INSERT INTO `t_region` VALUES ('1447', '170', '兴山区', '3');
INSERT INTO `t_region` VALUES ('1448', '170', '工农区', '3');
INSERT INTO `t_region` VALUES ('1449', '170', '南山区', '3');
INSERT INTO `t_region` VALUES ('1450', '170', '兴安区', '3');
INSERT INTO `t_region` VALUES ('1451', '170', '向阳区', '3');
INSERT INTO `t_region` VALUES ('1452', '170', '东山区', '3');
INSERT INTO `t_region` VALUES ('1453', '170', '萝北县', '3');
INSERT INTO `t_region` VALUES ('1454', '170', '绥滨县', '3');
INSERT INTO `t_region` VALUES ('1455', '171', '爱辉区', '3');
INSERT INTO `t_region` VALUES ('1456', '171', '五大连池市', '3');
INSERT INTO `t_region` VALUES ('1457', '171', '北安市', '3');
INSERT INTO `t_region` VALUES ('1458', '171', '嫩江县', '3');
INSERT INTO `t_region` VALUES ('1459', '171', '逊克县', '3');
INSERT INTO `t_region` VALUES ('1460', '171', '孙吴县', '3');
INSERT INTO `t_region` VALUES ('1461', '172', '鸡冠区', '3');
INSERT INTO `t_region` VALUES ('1462', '172', '恒山区', '3');
INSERT INTO `t_region` VALUES ('1463', '172', '城子河区', '3');
INSERT INTO `t_region` VALUES ('1464', '172', '滴道区', '3');
INSERT INTO `t_region` VALUES ('1465', '172', '梨树区', '3');
INSERT INTO `t_region` VALUES ('1466', '172', '虎林市', '3');
INSERT INTO `t_region` VALUES ('1467', '172', '密山市', '3');
INSERT INTO `t_region` VALUES ('1468', '172', '鸡东县', '3');
INSERT INTO `t_region` VALUES ('1469', '173', '前进区', '3');
INSERT INTO `t_region` VALUES ('1470', '173', '郊区', '3');
INSERT INTO `t_region` VALUES ('1471', '173', '向阳区', '3');
INSERT INTO `t_region` VALUES ('1472', '173', '东风区', '3');
INSERT INTO `t_region` VALUES ('1473', '173', '同江市', '3');
INSERT INTO `t_region` VALUES ('1474', '173', '富锦市', '3');
INSERT INTO `t_region` VALUES ('1475', '173', '桦南县', '3');
INSERT INTO `t_region` VALUES ('1476', '173', '桦川县', '3');
INSERT INTO `t_region` VALUES ('1477', '173', '汤原县', '3');
INSERT INTO `t_region` VALUES ('1478', '173', '抚远县', '3');
INSERT INTO `t_region` VALUES ('1479', '174', '爱民区', '3');
INSERT INTO `t_region` VALUES ('1480', '174', '东安区', '3');
INSERT INTO `t_region` VALUES ('1481', '174', '阳明区', '3');
INSERT INTO `t_region` VALUES ('1482', '174', '西安区', '3');
INSERT INTO `t_region` VALUES ('1483', '174', '绥芬河市', '3');
INSERT INTO `t_region` VALUES ('1484', '174', '海林市', '3');
INSERT INTO `t_region` VALUES ('1485', '174', '宁安市', '3');
INSERT INTO `t_region` VALUES ('1486', '174', '穆棱市', '3');
INSERT INTO `t_region` VALUES ('1487', '174', '东宁县', '3');
INSERT INTO `t_region` VALUES ('1488', '174', '林口县', '3');
INSERT INTO `t_region` VALUES ('1489', '175', '桃山区', '3');
INSERT INTO `t_region` VALUES ('1490', '175', '新兴区', '3');
INSERT INTO `t_region` VALUES ('1491', '175', '茄子河区', '3');
INSERT INTO `t_region` VALUES ('1492', '175', '勃利县', '3');
INSERT INTO `t_region` VALUES ('1493', '176', '龙沙区', '3');
INSERT INTO `t_region` VALUES ('1494', '176', '昂昂溪区', '3');
INSERT INTO `t_region` VALUES ('1495', '176', '铁峰区', '3');
INSERT INTO `t_region` VALUES ('1496', '176', '建华区', '3');
INSERT INTO `t_region` VALUES ('1497', '176', '富拉尔基区', '3');
INSERT INTO `t_region` VALUES ('1498', '176', '碾子山区', '3');
INSERT INTO `t_region` VALUES ('1499', '176', '梅里斯达斡尔区', '3');
INSERT INTO `t_region` VALUES ('1500', '176', '讷河市', '3');
INSERT INTO `t_region` VALUES ('1501', '176', '龙江县', '3');
INSERT INTO `t_region` VALUES ('1502', '176', '依安县', '3');
INSERT INTO `t_region` VALUES ('1503', '176', '泰来县', '3');
INSERT INTO `t_region` VALUES ('1504', '176', '甘南县', '3');
INSERT INTO `t_region` VALUES ('1505', '176', '富裕县', '3');
INSERT INTO `t_region` VALUES ('1506', '176', '克山县', '3');
INSERT INTO `t_region` VALUES ('1507', '176', '克东县', '3');
INSERT INTO `t_region` VALUES ('1508', '176', '拜泉县', '3');
INSERT INTO `t_region` VALUES ('1509', '177', '尖山区', '3');
INSERT INTO `t_region` VALUES ('1510', '177', '岭东区', '3');
INSERT INTO `t_region` VALUES ('1511', '177', '四方台区', '3');
INSERT INTO `t_region` VALUES ('1512', '177', '宝山区', '3');
INSERT INTO `t_region` VALUES ('1513', '177', '集贤县', '3');
INSERT INTO `t_region` VALUES ('1514', '177', '友谊县', '3');
INSERT INTO `t_region` VALUES ('1515', '177', '宝清县', '3');
INSERT INTO `t_region` VALUES ('1516', '177', '饶河县', '3');
INSERT INTO `t_region` VALUES ('1517', '178', '北林区', '3');
INSERT INTO `t_region` VALUES ('1518', '178', '安达市', '3');
INSERT INTO `t_region` VALUES ('1519', '178', '肇东市', '3');
INSERT INTO `t_region` VALUES ('1520', '178', '海伦市', '3');
INSERT INTO `t_region` VALUES ('1521', '178', '望奎县', '3');
INSERT INTO `t_region` VALUES ('1522', '178', '兰西县', '3');
INSERT INTO `t_region` VALUES ('1523', '178', '青冈县', '3');
INSERT INTO `t_region` VALUES ('1524', '178', '庆安县', '3');
INSERT INTO `t_region` VALUES ('1525', '178', '明水县', '3');
INSERT INTO `t_region` VALUES ('1526', '178', '绥棱县', '3');
INSERT INTO `t_region` VALUES ('1527', '179', '伊春区', '3');
INSERT INTO `t_region` VALUES ('1528', '179', '带岭区', '3');
INSERT INTO `t_region` VALUES ('1529', '179', '南岔区', '3');
INSERT INTO `t_region` VALUES ('1530', '179', '金山屯区', '3');
INSERT INTO `t_region` VALUES ('1531', '179', '西林区', '3');
INSERT INTO `t_region` VALUES ('1532', '179', '美溪区', '3');
INSERT INTO `t_region` VALUES ('1533', '179', '乌马河区', '3');
INSERT INTO `t_region` VALUES ('1534', '179', '翠峦区', '3');
INSERT INTO `t_region` VALUES ('1535', '179', '友好区', '3');
INSERT INTO `t_region` VALUES ('1536', '179', '上甘岭区', '3');
INSERT INTO `t_region` VALUES ('1537', '179', '五营区', '3');
INSERT INTO `t_region` VALUES ('1538', '179', '红星区', '3');
INSERT INTO `t_region` VALUES ('1539', '179', '新青区', '3');
INSERT INTO `t_region` VALUES ('1540', '179', '汤旺河区', '3');
INSERT INTO `t_region` VALUES ('1541', '179', '乌伊岭区', '3');
INSERT INTO `t_region` VALUES ('1542', '179', '铁力市', '3');
INSERT INTO `t_region` VALUES ('1543', '179', '嘉荫县', '3');
INSERT INTO `t_region` VALUES ('1544', '180', '江岸区', '3');
INSERT INTO `t_region` VALUES ('1545', '180', '武昌区', '3');
INSERT INTO `t_region` VALUES ('1546', '180', '江汉区', '3');
INSERT INTO `t_region` VALUES ('1547', '180', '硚口区', '3');
INSERT INTO `t_region` VALUES ('1548', '180', '汉阳区', '3');
INSERT INTO `t_region` VALUES ('1549', '180', '青山区', '3');
INSERT INTO `t_region` VALUES ('1550', '180', '洪山区', '3');
INSERT INTO `t_region` VALUES ('1551', '180', '东西湖区', '3');
INSERT INTO `t_region` VALUES ('1552', '180', '汉南区', '3');
INSERT INTO `t_region` VALUES ('1553', '180', '蔡甸区', '3');
INSERT INTO `t_region` VALUES ('1554', '180', '江夏区', '3');
INSERT INTO `t_region` VALUES ('1555', '180', '黄陂区', '3');
INSERT INTO `t_region` VALUES ('1556', '180', '新洲区', '3');
INSERT INTO `t_region` VALUES ('1557', '180', '经济开发区', '3');
INSERT INTO `t_region` VALUES ('1558', '181', '仙桃市', '3');
INSERT INTO `t_region` VALUES ('1559', '182', '鄂城区', '3');
INSERT INTO `t_region` VALUES ('1560', '182', '华容区', '3');
INSERT INTO `t_region` VALUES ('1561', '182', '梁子湖区', '3');
INSERT INTO `t_region` VALUES ('1562', '183', '黄州区', '3');
INSERT INTO `t_region` VALUES ('1563', '183', '麻城市', '3');
INSERT INTO `t_region` VALUES ('1564', '183', '武穴市', '3');
INSERT INTO `t_region` VALUES ('1565', '183', '团风县', '3');
INSERT INTO `t_region` VALUES ('1566', '183', '红安县', '3');
INSERT INTO `t_region` VALUES ('1567', '183', '罗田县', '3');
INSERT INTO `t_region` VALUES ('1568', '183', '英山县', '3');
INSERT INTO `t_region` VALUES ('1569', '183', '浠水县', '3');
INSERT INTO `t_region` VALUES ('1570', '183', '蕲春县', '3');
INSERT INTO `t_region` VALUES ('1571', '183', '黄梅县', '3');
INSERT INTO `t_region` VALUES ('1572', '184', '黄石港区', '3');
INSERT INTO `t_region` VALUES ('1573', '184', '西塞山区', '3');
INSERT INTO `t_region` VALUES ('1574', '184', '下陆区', '3');
INSERT INTO `t_region` VALUES ('1575', '184', '铁山区', '3');
INSERT INTO `t_region` VALUES ('1576', '184', '大冶市', '3');
INSERT INTO `t_region` VALUES ('1577', '184', '阳新县', '3');
INSERT INTO `t_region` VALUES ('1578', '185', '东宝区', '3');
INSERT INTO `t_region` VALUES ('1579', '185', '掇刀区', '3');
INSERT INTO `t_region` VALUES ('1580', '185', '钟祥市', '3');
INSERT INTO `t_region` VALUES ('1581', '185', '京山县', '3');
INSERT INTO `t_region` VALUES ('1582', '185', '沙洋县', '3');
INSERT INTO `t_region` VALUES ('1583', '186', '沙市区', '3');
INSERT INTO `t_region` VALUES ('1584', '186', '荆州区', '3');
INSERT INTO `t_region` VALUES ('1585', '186', '石首市', '3');
INSERT INTO `t_region` VALUES ('1586', '186', '洪湖市', '3');
INSERT INTO `t_region` VALUES ('1587', '186', '松滋市', '3');
INSERT INTO `t_region` VALUES ('1588', '186', '公安县', '3');
INSERT INTO `t_region` VALUES ('1589', '186', '监利县', '3');
INSERT INTO `t_region` VALUES ('1590', '186', '江陵县', '3');
INSERT INTO `t_region` VALUES ('1591', '187', '潜江市', '3');
INSERT INTO `t_region` VALUES ('1592', '188', '神农架林区', '3');
INSERT INTO `t_region` VALUES ('1593', '189', '张湾区', '3');
INSERT INTO `t_region` VALUES ('1594', '189', '茅箭区', '3');
INSERT INTO `t_region` VALUES ('1595', '189', '丹江口市', '3');
INSERT INTO `t_region` VALUES ('1596', '189', '郧县', '3');
INSERT INTO `t_region` VALUES ('1597', '189', '郧西县', '3');
INSERT INTO `t_region` VALUES ('1598', '189', '竹山县', '3');
INSERT INTO `t_region` VALUES ('1599', '189', '竹溪县', '3');
INSERT INTO `t_region` VALUES ('1600', '189', '房县', '3');
INSERT INTO `t_region` VALUES ('1601', '190', '曾都区', '3');
INSERT INTO `t_region` VALUES ('1602', '190', '广水市', '3');
INSERT INTO `t_region` VALUES ('1603', '191', '天门市', '3');
INSERT INTO `t_region` VALUES ('1604', '192', '咸安区', '3');
INSERT INTO `t_region` VALUES ('1605', '192', '赤壁市', '3');
INSERT INTO `t_region` VALUES ('1606', '192', '嘉鱼县', '3');
INSERT INTO `t_region` VALUES ('1607', '192', '通城县', '3');
INSERT INTO `t_region` VALUES ('1608', '192', '崇阳县', '3');
INSERT INTO `t_region` VALUES ('1609', '192', '通山县', '3');
INSERT INTO `t_region` VALUES ('1610', '193', '襄城区', '3');
INSERT INTO `t_region` VALUES ('1611', '193', '樊城区', '3');
INSERT INTO `t_region` VALUES ('1612', '193', '襄阳区', '3');
INSERT INTO `t_region` VALUES ('1613', '193', '老河口市', '3');
INSERT INTO `t_region` VALUES ('1614', '193', '枣阳市', '3');
INSERT INTO `t_region` VALUES ('1615', '193', '宜城市', '3');
INSERT INTO `t_region` VALUES ('1616', '193', '南漳县', '3');
INSERT INTO `t_region` VALUES ('1617', '193', '谷城县', '3');
INSERT INTO `t_region` VALUES ('1618', '193', '保康县', '3');
INSERT INTO `t_region` VALUES ('1619', '194', '孝南区', '3');
INSERT INTO `t_region` VALUES ('1620', '194', '应城市', '3');
INSERT INTO `t_region` VALUES ('1621', '194', '安陆市', '3');
INSERT INTO `t_region` VALUES ('1622', '194', '汉川市', '3');
INSERT INTO `t_region` VALUES ('1623', '194', '孝昌县', '3');
INSERT INTO `t_region` VALUES ('1624', '194', '大悟县', '3');
INSERT INTO `t_region` VALUES ('1625', '194', '云梦县', '3');
INSERT INTO `t_region` VALUES ('1626', '195', '长阳', '3');
INSERT INTO `t_region` VALUES ('1627', '195', '五峰', '3');
INSERT INTO `t_region` VALUES ('1628', '195', '西陵区', '3');
INSERT INTO `t_region` VALUES ('1629', '195', '伍家岗区', '3');
INSERT INTO `t_region` VALUES ('1630', '195', '点军区', '3');
INSERT INTO `t_region` VALUES ('1631', '195', '猇亭区', '3');
INSERT INTO `t_region` VALUES ('1632', '195', '夷陵区', '3');
INSERT INTO `t_region` VALUES ('1633', '195', '宜都市', '3');
INSERT INTO `t_region` VALUES ('1634', '195', '当阳市', '3');
INSERT INTO `t_region` VALUES ('1635', '195', '枝江市', '3');
INSERT INTO `t_region` VALUES ('1636', '195', '远安县', '3');
INSERT INTO `t_region` VALUES ('1637', '195', '兴山县', '3');
INSERT INTO `t_region` VALUES ('1638', '195', '秭归县', '3');
INSERT INTO `t_region` VALUES ('1639', '196', '恩施市', '3');
INSERT INTO `t_region` VALUES ('1640', '196', '利川市', '3');
INSERT INTO `t_region` VALUES ('1641', '196', '建始县', '3');
INSERT INTO `t_region` VALUES ('1642', '196', '巴东县', '3');
INSERT INTO `t_region` VALUES ('1643', '196', '宣恩县', '3');
INSERT INTO `t_region` VALUES ('1644', '196', '咸丰县', '3');
INSERT INTO `t_region` VALUES ('1645', '196', '来凤县', '3');
INSERT INTO `t_region` VALUES ('1646', '196', '鹤峰县', '3');
INSERT INTO `t_region` VALUES ('1647', '197', '岳麓区', '3');
INSERT INTO `t_region` VALUES ('1648', '197', '芙蓉区', '3');
INSERT INTO `t_region` VALUES ('1649', '197', '天心区', '3');
INSERT INTO `t_region` VALUES ('1650', '197', '开福区', '3');
INSERT INTO `t_region` VALUES ('1651', '197', '雨花区', '3');
INSERT INTO `t_region` VALUES ('1652', '197', '开发区', '3');
INSERT INTO `t_region` VALUES ('1653', '197', '浏阳市', '3');
INSERT INTO `t_region` VALUES ('1654', '197', '长沙县', '3');
INSERT INTO `t_region` VALUES ('1655', '197', '望城县', '3');
INSERT INTO `t_region` VALUES ('1656', '197', '宁乡县', '3');
INSERT INTO `t_region` VALUES ('1657', '198', '永定区', '3');
INSERT INTO `t_region` VALUES ('1658', '198', '武陵源区', '3');
INSERT INTO `t_region` VALUES ('1659', '198', '慈利县', '3');
INSERT INTO `t_region` VALUES ('1660', '198', '桑植县', '3');
INSERT INTO `t_region` VALUES ('1661', '199', '武陵区', '3');
INSERT INTO `t_region` VALUES ('1662', '199', '鼎城区', '3');
INSERT INTO `t_region` VALUES ('1663', '199', '津市市', '3');
INSERT INTO `t_region` VALUES ('1664', '199', '安乡县', '3');
INSERT INTO `t_region` VALUES ('1665', '199', '汉寿县', '3');
INSERT INTO `t_region` VALUES ('1666', '199', '澧县', '3');
INSERT INTO `t_region` VALUES ('1667', '199', '临澧县', '3');
INSERT INTO `t_region` VALUES ('1668', '199', '桃源县', '3');
INSERT INTO `t_region` VALUES ('1669', '199', '石门县', '3');
INSERT INTO `t_region` VALUES ('1670', '200', '北湖区', '3');
INSERT INTO `t_region` VALUES ('1671', '200', '苏仙区', '3');
INSERT INTO `t_region` VALUES ('1672', '200', '资兴市', '3');
INSERT INTO `t_region` VALUES ('1673', '200', '桂阳县', '3');
INSERT INTO `t_region` VALUES ('1674', '200', '宜章县', '3');
INSERT INTO `t_region` VALUES ('1675', '200', '永兴县', '3');
INSERT INTO `t_region` VALUES ('1676', '200', '嘉禾县', '3');
INSERT INTO `t_region` VALUES ('1677', '200', '临武县', '3');
INSERT INTO `t_region` VALUES ('1678', '200', '汝城县', '3');
INSERT INTO `t_region` VALUES ('1679', '200', '桂东县', '3');
INSERT INTO `t_region` VALUES ('1680', '200', '安仁县', '3');
INSERT INTO `t_region` VALUES ('1681', '201', '雁峰区', '3');
INSERT INTO `t_region` VALUES ('1682', '201', '珠晖区', '3');
INSERT INTO `t_region` VALUES ('1683', '201', '石鼓区', '3');
INSERT INTO `t_region` VALUES ('1684', '201', '蒸湘区', '3');
INSERT INTO `t_region` VALUES ('1685', '201', '南岳区', '3');
INSERT INTO `t_region` VALUES ('1686', '201', '耒阳市', '3');
INSERT INTO `t_region` VALUES ('1687', '201', '常宁市', '3');
INSERT INTO `t_region` VALUES ('1688', '201', '衡阳县', '3');
INSERT INTO `t_region` VALUES ('1689', '201', '衡南县', '3');
INSERT INTO `t_region` VALUES ('1690', '201', '衡山县', '3');
INSERT INTO `t_region` VALUES ('1691', '201', '衡东县', '3');
INSERT INTO `t_region` VALUES ('1692', '201', '祁东县', '3');
INSERT INTO `t_region` VALUES ('1693', '202', '鹤城区', '3');
INSERT INTO `t_region` VALUES ('1694', '202', '靖州', '3');
INSERT INTO `t_region` VALUES ('1695', '202', '麻阳', '3');
INSERT INTO `t_region` VALUES ('1696', '202', '通道', '3');
INSERT INTO `t_region` VALUES ('1697', '202', '新晃', '3');
INSERT INTO `t_region` VALUES ('1698', '202', '芷江', '3');
INSERT INTO `t_region` VALUES ('1699', '202', '沅陵县', '3');
INSERT INTO `t_region` VALUES ('1700', '202', '辰溪县', '3');
INSERT INTO `t_region` VALUES ('1701', '202', '溆浦县', '3');
INSERT INTO `t_region` VALUES ('1702', '202', '中方县', '3');
INSERT INTO `t_region` VALUES ('1703', '202', '会同县', '3');
INSERT INTO `t_region` VALUES ('1704', '202', '洪江市', '3');
INSERT INTO `t_region` VALUES ('1705', '203', '娄星区', '3');
INSERT INTO `t_region` VALUES ('1706', '203', '冷水江市', '3');
INSERT INTO `t_region` VALUES ('1707', '203', '涟源市', '3');
INSERT INTO `t_region` VALUES ('1708', '203', '双峰县', '3');
INSERT INTO `t_region` VALUES ('1709', '203', '新化县', '3');
INSERT INTO `t_region` VALUES ('1710', '204', '城步', '3');
INSERT INTO `t_region` VALUES ('1711', '204', '双清区', '3');
INSERT INTO `t_region` VALUES ('1712', '204', '大祥区', '3');
INSERT INTO `t_region` VALUES ('1713', '204', '北塔区', '3');
INSERT INTO `t_region` VALUES ('1714', '204', '武冈市', '3');
INSERT INTO `t_region` VALUES ('1715', '204', '邵东县', '3');
INSERT INTO `t_region` VALUES ('1716', '204', '新邵县', '3');
INSERT INTO `t_region` VALUES ('1717', '204', '邵阳县', '3');
INSERT INTO `t_region` VALUES ('1718', '204', '隆回县', '3');
INSERT INTO `t_region` VALUES ('1719', '204', '洞口县', '3');
INSERT INTO `t_region` VALUES ('1720', '204', '绥宁县', '3');
INSERT INTO `t_region` VALUES ('1721', '204', '新宁县', '3');
INSERT INTO `t_region` VALUES ('1722', '205', '岳塘区', '3');
INSERT INTO `t_region` VALUES ('1723', '205', '雨湖区', '3');
INSERT INTO `t_region` VALUES ('1724', '205', '湘乡市', '3');
INSERT INTO `t_region` VALUES ('1725', '205', '韶山市', '3');
INSERT INTO `t_region` VALUES ('1726', '205', '湘潭县', '3');
INSERT INTO `t_region` VALUES ('1727', '206', '吉首市', '3');
INSERT INTO `t_region` VALUES ('1728', '206', '泸溪县', '3');
INSERT INTO `t_region` VALUES ('1729', '206', '凤凰县', '3');
INSERT INTO `t_region` VALUES ('1730', '206', '花垣县', '3');
INSERT INTO `t_region` VALUES ('1731', '206', '保靖县', '3');
INSERT INTO `t_region` VALUES ('1732', '206', '古丈县', '3');
INSERT INTO `t_region` VALUES ('1733', '206', '永顺县', '3');
INSERT INTO `t_region` VALUES ('1734', '206', '龙山县', '3');
INSERT INTO `t_region` VALUES ('1735', '207', '赫山区', '3');
INSERT INTO `t_region` VALUES ('1736', '207', '资阳区', '3');
INSERT INTO `t_region` VALUES ('1737', '207', '沅江市', '3');
INSERT INTO `t_region` VALUES ('1738', '207', '南县', '3');
INSERT INTO `t_region` VALUES ('1739', '207', '桃江县', '3');
INSERT INTO `t_region` VALUES ('1740', '207', '安化县', '3');
INSERT INTO `t_region` VALUES ('1741', '208', '江华', '3');
INSERT INTO `t_region` VALUES ('1742', '208', '冷水滩区', '3');
INSERT INTO `t_region` VALUES ('1743', '208', '零陵区', '3');
INSERT INTO `t_region` VALUES ('1744', '208', '祁阳县', '3');
INSERT INTO `t_region` VALUES ('1745', '208', '东安县', '3');
INSERT INTO `t_region` VALUES ('1746', '208', '双牌县', '3');
INSERT INTO `t_region` VALUES ('1747', '208', '道县', '3');
INSERT INTO `t_region` VALUES ('1748', '208', '江永县', '3');
INSERT INTO `t_region` VALUES ('1749', '208', '宁远县', '3');
INSERT INTO `t_region` VALUES ('1750', '208', '蓝山县', '3');
INSERT INTO `t_region` VALUES ('1751', '208', '新田县', '3');
INSERT INTO `t_region` VALUES ('1752', '209', '岳阳楼区', '3');
INSERT INTO `t_region` VALUES ('1753', '209', '君山区', '3');
INSERT INTO `t_region` VALUES ('1754', '209', '云溪区', '3');
INSERT INTO `t_region` VALUES ('1755', '209', '汨罗市', '3');
INSERT INTO `t_region` VALUES ('1756', '209', '临湘市', '3');
INSERT INTO `t_region` VALUES ('1757', '209', '岳阳县', '3');
INSERT INTO `t_region` VALUES ('1758', '209', '华容县', '3');
INSERT INTO `t_region` VALUES ('1759', '209', '湘阴县', '3');
INSERT INTO `t_region` VALUES ('1760', '209', '平江县', '3');
INSERT INTO `t_region` VALUES ('1761', '210', '天元区', '3');
INSERT INTO `t_region` VALUES ('1762', '210', '荷塘区', '3');
INSERT INTO `t_region` VALUES ('1763', '210', '芦淞区', '3');
INSERT INTO `t_region` VALUES ('1764', '210', '石峰区', '3');
INSERT INTO `t_region` VALUES ('1765', '210', '醴陵市', '3');
INSERT INTO `t_region` VALUES ('1766', '210', '株洲县', '3');
INSERT INTO `t_region` VALUES ('1767', '210', '攸县', '3');
INSERT INTO `t_region` VALUES ('1768', '210', '茶陵县', '3');
INSERT INTO `t_region` VALUES ('1769', '210', '炎陵县', '3');
INSERT INTO `t_region` VALUES ('1770', '211', '朝阳区', '3');
INSERT INTO `t_region` VALUES ('1771', '211', '宽城区', '3');
INSERT INTO `t_region` VALUES ('1772', '211', '二道区', '3');
INSERT INTO `t_region` VALUES ('1773', '211', '南关区', '3');
INSERT INTO `t_region` VALUES ('1774', '211', '绿园区', '3');
INSERT INTO `t_region` VALUES ('1775', '211', '双阳区', '3');
INSERT INTO `t_region` VALUES ('1776', '211', '净月潭开发区', '3');
INSERT INTO `t_region` VALUES ('1777', '211', '高新技术开发区', '3');
INSERT INTO `t_region` VALUES ('1778', '211', '经济技术开发区', '3');
INSERT INTO `t_region` VALUES ('1779', '211', '汽车产业开发区', '3');
INSERT INTO `t_region` VALUES ('1780', '211', '德惠市', '3');
INSERT INTO `t_region` VALUES ('1781', '211', '九台市', '3');
INSERT INTO `t_region` VALUES ('1782', '211', '榆树市', '3');
INSERT INTO `t_region` VALUES ('1783', '211', '农安县', '3');
INSERT INTO `t_region` VALUES ('1784', '212', '船营区', '3');
INSERT INTO `t_region` VALUES ('1785', '212', '昌邑区', '3');
INSERT INTO `t_region` VALUES ('1786', '212', '龙潭区', '3');
INSERT INTO `t_region` VALUES ('1787', '212', '丰满区', '3');
INSERT INTO `t_region` VALUES ('1788', '212', '蛟河市', '3');
INSERT INTO `t_region` VALUES ('1789', '212', '桦甸市', '3');
INSERT INTO `t_region` VALUES ('1790', '212', '舒兰市', '3');
INSERT INTO `t_region` VALUES ('1791', '212', '磐石市', '3');
INSERT INTO `t_region` VALUES ('1792', '212', '永吉县', '3');
INSERT INTO `t_region` VALUES ('1793', '213', '洮北区', '3');
INSERT INTO `t_region` VALUES ('1794', '213', '洮南市', '3');
INSERT INTO `t_region` VALUES ('1795', '213', '大安市', '3');
INSERT INTO `t_region` VALUES ('1796', '213', '镇赉县', '3');
INSERT INTO `t_region` VALUES ('1797', '213', '通榆县', '3');
INSERT INTO `t_region` VALUES ('1798', '214', '江源区', '3');
INSERT INTO `t_region` VALUES ('1799', '214', '八道江区', '3');
INSERT INTO `t_region` VALUES ('1800', '214', '长白', '3');
INSERT INTO `t_region` VALUES ('1801', '214', '临江市', '3');
INSERT INTO `t_region` VALUES ('1802', '214', '抚松县', '3');
INSERT INTO `t_region` VALUES ('1803', '214', '靖宇县', '3');
INSERT INTO `t_region` VALUES ('1804', '215', '龙山区', '3');
INSERT INTO `t_region` VALUES ('1805', '215', '西安区', '3');
INSERT INTO `t_region` VALUES ('1806', '215', '东丰县', '3');
INSERT INTO `t_region` VALUES ('1807', '215', '东辽县', '3');
INSERT INTO `t_region` VALUES ('1808', '216', '铁西区', '3');
INSERT INTO `t_region` VALUES ('1809', '216', '铁东区', '3');
INSERT INTO `t_region` VALUES ('1810', '216', '伊通', '3');
INSERT INTO `t_region` VALUES ('1811', '216', '公主岭市', '3');
INSERT INTO `t_region` VALUES ('1812', '216', '双辽市', '3');
INSERT INTO `t_region` VALUES ('1813', '216', '梨树县', '3');
INSERT INTO `t_region` VALUES ('1814', '217', '前郭尔罗斯', '3');
INSERT INTO `t_region` VALUES ('1815', '217', '宁江区', '3');
INSERT INTO `t_region` VALUES ('1816', '217', '长岭县', '3');
INSERT INTO `t_region` VALUES ('1817', '217', '乾安县', '3');
INSERT INTO `t_region` VALUES ('1818', '217', '扶余县', '3');
INSERT INTO `t_region` VALUES ('1819', '218', '东昌区', '3');
INSERT INTO `t_region` VALUES ('1820', '218', '二道江区', '3');
INSERT INTO `t_region` VALUES ('1821', '218', '梅河口市', '3');
INSERT INTO `t_region` VALUES ('1822', '218', '集安市', '3');
INSERT INTO `t_region` VALUES ('1823', '218', '通化县', '3');
INSERT INTO `t_region` VALUES ('1824', '218', '辉南县', '3');
INSERT INTO `t_region` VALUES ('1825', '218', '柳河县', '3');
INSERT INTO `t_region` VALUES ('1826', '219', '延吉市', '3');
INSERT INTO `t_region` VALUES ('1827', '219', '图们市', '3');
INSERT INTO `t_region` VALUES ('1828', '219', '敦化市', '3');
INSERT INTO `t_region` VALUES ('1829', '219', '珲春市', '3');
INSERT INTO `t_region` VALUES ('1830', '219', '龙井市', '3');
INSERT INTO `t_region` VALUES ('1831', '219', '和龙市', '3');
INSERT INTO `t_region` VALUES ('1832', '219', '安图县', '3');
INSERT INTO `t_region` VALUES ('1833', '219', '汪清县', '3');
INSERT INTO `t_region` VALUES ('1834', '220', '玄武区', '3');
INSERT INTO `t_region` VALUES ('1835', '220', '鼓楼区', '3');
INSERT INTO `t_region` VALUES ('1836', '220', '白下区', '3');
INSERT INTO `t_region` VALUES ('1837', '220', '建邺区', '3');
INSERT INTO `t_region` VALUES ('1838', '220', '秦淮区', '3');
INSERT INTO `t_region` VALUES ('1839', '220', '雨花台区', '3');
INSERT INTO `t_region` VALUES ('1840', '220', '下关区', '3');
INSERT INTO `t_region` VALUES ('1841', '220', '栖霞区', '3');
INSERT INTO `t_region` VALUES ('1842', '220', '浦口区', '3');
INSERT INTO `t_region` VALUES ('1843', '220', '江宁区', '3');
INSERT INTO `t_region` VALUES ('1844', '220', '六合区', '3');
INSERT INTO `t_region` VALUES ('1845', '220', '溧水县', '3');
INSERT INTO `t_region` VALUES ('1846', '220', '高淳县', '3');
INSERT INTO `t_region` VALUES ('1847', '221', '沧浪区', '3');
INSERT INTO `t_region` VALUES ('1848', '221', '金阊区', '3');
INSERT INTO `t_region` VALUES ('1849', '221', '平江区', '3');
INSERT INTO `t_region` VALUES ('1850', '221', '虎丘区', '3');
INSERT INTO `t_region` VALUES ('1851', '221', '吴中区', '3');
INSERT INTO `t_region` VALUES ('1852', '221', '相城区', '3');
INSERT INTO `t_region` VALUES ('1853', '221', '园区', '3');
INSERT INTO `t_region` VALUES ('1854', '221', '新区', '3');
INSERT INTO `t_region` VALUES ('1855', '221', '常熟市', '3');
INSERT INTO `t_region` VALUES ('1856', '221', '张家港市', '3');
INSERT INTO `t_region` VALUES ('1857', '221', '玉山镇', '3');
INSERT INTO `t_region` VALUES ('1858', '221', '巴城镇', '3');
INSERT INTO `t_region` VALUES ('1859', '221', '周市镇', '3');
INSERT INTO `t_region` VALUES ('1860', '221', '陆家镇', '3');
INSERT INTO `t_region` VALUES ('1861', '221', '花桥镇', '3');
INSERT INTO `t_region` VALUES ('1862', '221', '淀山湖镇', '3');
INSERT INTO `t_region` VALUES ('1863', '221', '张浦镇', '3');
INSERT INTO `t_region` VALUES ('1864', '221', '周庄镇', '3');
INSERT INTO `t_region` VALUES ('1865', '221', '千灯镇', '3');
INSERT INTO `t_region` VALUES ('1866', '221', '锦溪镇', '3');
INSERT INTO `t_region` VALUES ('1867', '221', '开发区', '3');
INSERT INTO `t_region` VALUES ('1868', '221', '吴江市', '3');
INSERT INTO `t_region` VALUES ('1869', '221', '太仓市', '3');
INSERT INTO `t_region` VALUES ('1870', '222', '崇安区', '3');
INSERT INTO `t_region` VALUES ('1871', '222', '北塘区', '3');
INSERT INTO `t_region` VALUES ('1872', '222', '南长区', '3');
INSERT INTO `t_region` VALUES ('1873', '222', '锡山区', '3');
INSERT INTO `t_region` VALUES ('1874', '222', '惠山区', '3');
INSERT INTO `t_region` VALUES ('1875', '222', '滨湖区', '3');
INSERT INTO `t_region` VALUES ('1876', '222', '新区', '3');
INSERT INTO `t_region` VALUES ('1877', '222', '江阴市', '3');
INSERT INTO `t_region` VALUES ('1878', '222', '宜兴市', '3');
INSERT INTO `t_region` VALUES ('1879', '223', '天宁区', '3');
INSERT INTO `t_region` VALUES ('1880', '223', '钟楼区', '3');
INSERT INTO `t_region` VALUES ('1881', '223', '戚墅堰区', '3');
INSERT INTO `t_region` VALUES ('1882', '223', '郊区', '3');
INSERT INTO `t_region` VALUES ('1883', '223', '新北区', '3');
INSERT INTO `t_region` VALUES ('1884', '223', '武进区', '3');
INSERT INTO `t_region` VALUES ('1885', '223', '溧阳市', '3');
INSERT INTO `t_region` VALUES ('1886', '223', '金坛市', '3');
INSERT INTO `t_region` VALUES ('1887', '224', '清河区', '3');
INSERT INTO `t_region` VALUES ('1888', '224', '清浦区', '3');
INSERT INTO `t_region` VALUES ('1889', '224', '楚州区', '3');
INSERT INTO `t_region` VALUES ('1890', '224', '淮阴区', '3');
INSERT INTO `t_region` VALUES ('1891', '224', '涟水县', '3');
INSERT INTO `t_region` VALUES ('1892', '224', '洪泽县', '3');
INSERT INTO `t_region` VALUES ('1893', '224', '盱眙县', '3');
INSERT INTO `t_region` VALUES ('1894', '224', '金湖县', '3');
INSERT INTO `t_region` VALUES ('1895', '225', '新浦区', '3');
INSERT INTO `t_region` VALUES ('1896', '225', '连云区', '3');
INSERT INTO `t_region` VALUES ('1897', '225', '海州区', '3');
INSERT INTO `t_region` VALUES ('1898', '225', '赣榆县', '3');
INSERT INTO `t_region` VALUES ('1899', '225', '东海县', '3');
INSERT INTO `t_region` VALUES ('1900', '225', '灌云县', '3');
INSERT INTO `t_region` VALUES ('1901', '225', '灌南县', '3');
INSERT INTO `t_region` VALUES ('1902', '226', '崇川区', '3');
INSERT INTO `t_region` VALUES ('1903', '226', '港闸区', '3');
INSERT INTO `t_region` VALUES ('1904', '226', '经济开发区', '3');
INSERT INTO `t_region` VALUES ('1905', '226', '启东市', '3');
INSERT INTO `t_region` VALUES ('1906', '226', '如皋市', '3');
INSERT INTO `t_region` VALUES ('1907', '226', '通州市', '3');
INSERT INTO `t_region` VALUES ('1908', '226', '海门市', '3');
INSERT INTO `t_region` VALUES ('1909', '226', '海安县', '3');
INSERT INTO `t_region` VALUES ('1910', '226', '如东县', '3');
INSERT INTO `t_region` VALUES ('1911', '227', '宿城区', '3');
INSERT INTO `t_region` VALUES ('1912', '227', '宿豫区', '3');
INSERT INTO `t_region` VALUES ('1913', '227', '宿豫县', '3');
INSERT INTO `t_region` VALUES ('1914', '227', '沭阳县', '3');
INSERT INTO `t_region` VALUES ('1915', '227', '泗阳县', '3');
INSERT INTO `t_region` VALUES ('1916', '227', '泗洪县', '3');
INSERT INTO `t_region` VALUES ('1917', '228', '海陵区', '3');
INSERT INTO `t_region` VALUES ('1918', '228', '高港区', '3');
INSERT INTO `t_region` VALUES ('1919', '228', '兴化市', '3');
INSERT INTO `t_region` VALUES ('1920', '228', '靖江市', '3');
INSERT INTO `t_region` VALUES ('1921', '228', '泰兴市', '3');
INSERT INTO `t_region` VALUES ('1922', '228', '姜堰市', '3');
INSERT INTO `t_region` VALUES ('1923', '229', '云龙区', '3');
INSERT INTO `t_region` VALUES ('1924', '229', '鼓楼区', '3');
INSERT INTO `t_region` VALUES ('1925', '229', '九里区', '3');
INSERT INTO `t_region` VALUES ('1926', '229', '贾汪区', '3');
INSERT INTO `t_region` VALUES ('1927', '229', '泉山区', '3');
INSERT INTO `t_region` VALUES ('1928', '229', '新沂市', '3');
INSERT INTO `t_region` VALUES ('1929', '229', '邳州市', '3');
INSERT INTO `t_region` VALUES ('1930', '229', '丰县', '3');
INSERT INTO `t_region` VALUES ('1931', '229', '沛县', '3');
INSERT INTO `t_region` VALUES ('1932', '229', '铜山县', '3');
INSERT INTO `t_region` VALUES ('1933', '229', '睢宁县', '3');
INSERT INTO `t_region` VALUES ('1934', '230', '城区', '3');
INSERT INTO `t_region` VALUES ('1935', '230', '亭湖区', '3');
INSERT INTO `t_region` VALUES ('1936', '230', '盐都区', '3');
INSERT INTO `t_region` VALUES ('1937', '230', '盐都县', '3');
INSERT INTO `t_region` VALUES ('1938', '230', '东台市', '3');
INSERT INTO `t_region` VALUES ('1939', '230', '大丰市', '3');
INSERT INTO `t_region` VALUES ('1940', '230', '响水县', '3');
INSERT INTO `t_region` VALUES ('1941', '230', '滨海县', '3');
INSERT INTO `t_region` VALUES ('1942', '230', '阜宁县', '3');
INSERT INTO `t_region` VALUES ('1943', '230', '射阳县', '3');
INSERT INTO `t_region` VALUES ('1944', '230', '建湖县', '3');
INSERT INTO `t_region` VALUES ('1945', '231', '广陵区', '3');
INSERT INTO `t_region` VALUES ('1946', '231', '维扬区', '3');
INSERT INTO `t_region` VALUES ('1947', '231', '邗江区', '3');
INSERT INTO `t_region` VALUES ('1948', '231', '仪征市', '3');
INSERT INTO `t_region` VALUES ('1949', '231', '高邮市', '3');
INSERT INTO `t_region` VALUES ('1950', '231', '江都市', '3');
INSERT INTO `t_region` VALUES ('1951', '231', '宝应县', '3');
INSERT INTO `t_region` VALUES ('1952', '232', '京口区', '3');
INSERT INTO `t_region` VALUES ('1953', '232', '润州区', '3');
INSERT INTO `t_region` VALUES ('1954', '232', '丹徒区', '3');
INSERT INTO `t_region` VALUES ('1955', '232', '丹阳市', '3');
INSERT INTO `t_region` VALUES ('1956', '232', '扬中市', '3');
INSERT INTO `t_region` VALUES ('1957', '232', '句容市', '3');
INSERT INTO `t_region` VALUES ('1958', '233', '东湖区', '3');
INSERT INTO `t_region` VALUES ('1959', '233', '西湖区', '3');
INSERT INTO `t_region` VALUES ('1960', '233', '青云谱区', '3');
INSERT INTO `t_region` VALUES ('1961', '233', '湾里区', '3');
INSERT INTO `t_region` VALUES ('1962', '233', '青山湖区', '3');
INSERT INTO `t_region` VALUES ('1963', '233', '红谷滩新区', '3');
INSERT INTO `t_region` VALUES ('1964', '233', '昌北区', '3');
INSERT INTO `t_region` VALUES ('1965', '233', '高新区', '3');
INSERT INTO `t_region` VALUES ('1966', '233', '南昌县', '3');
INSERT INTO `t_region` VALUES ('1967', '233', '新建县', '3');
INSERT INTO `t_region` VALUES ('1968', '233', '安义县', '3');
INSERT INTO `t_region` VALUES ('1969', '233', '进贤县', '3');
INSERT INTO `t_region` VALUES ('1970', '234', '临川区', '3');
INSERT INTO `t_region` VALUES ('1971', '234', '南城县', '3');
INSERT INTO `t_region` VALUES ('1972', '234', '黎川县', '3');
INSERT INTO `t_region` VALUES ('1973', '234', '南丰县', '3');
INSERT INTO `t_region` VALUES ('1974', '234', '崇仁县', '3');
INSERT INTO `t_region` VALUES ('1975', '234', '乐安县', '3');
INSERT INTO `t_region` VALUES ('1976', '234', '宜黄县', '3');
INSERT INTO `t_region` VALUES ('1977', '234', '金溪县', '3');
INSERT INTO `t_region` VALUES ('1978', '234', '资溪县', '3');
INSERT INTO `t_region` VALUES ('1979', '234', '东乡县', '3');
INSERT INTO `t_region` VALUES ('1980', '234', '广昌县', '3');
INSERT INTO `t_region` VALUES ('1981', '235', '章贡区', '3');
INSERT INTO `t_region` VALUES ('1982', '235', '于都县', '3');
INSERT INTO `t_region` VALUES ('1983', '235', '瑞金市', '3');
INSERT INTO `t_region` VALUES ('1984', '235', '南康市', '3');
INSERT INTO `t_region` VALUES ('1985', '235', '赣县', '3');
INSERT INTO `t_region` VALUES ('1986', '235', '信丰县', '3');
INSERT INTO `t_region` VALUES ('1987', '235', '大余县', '3');
INSERT INTO `t_region` VALUES ('1988', '235', '上犹县', '3');
INSERT INTO `t_region` VALUES ('1989', '235', '崇义县', '3');
INSERT INTO `t_region` VALUES ('1990', '235', '安远县', '3');
INSERT INTO `t_region` VALUES ('1991', '235', '龙南县', '3');
INSERT INTO `t_region` VALUES ('1992', '235', '定南县', '3');
INSERT INTO `t_region` VALUES ('1993', '235', '全南县', '3');
INSERT INTO `t_region` VALUES ('1994', '235', '宁都县', '3');
INSERT INTO `t_region` VALUES ('1995', '235', '兴国县', '3');
INSERT INTO `t_region` VALUES ('1996', '235', '会昌县', '3');
INSERT INTO `t_region` VALUES ('1997', '235', '寻乌县', '3');
INSERT INTO `t_region` VALUES ('1998', '235', '石城县', '3');
INSERT INTO `t_region` VALUES ('1999', '236', '安福县', '3');
INSERT INTO `t_region` VALUES ('2000', '236', '吉州区', '3');
INSERT INTO `t_region` VALUES ('2001', '236', '青原区', '3');
INSERT INTO `t_region` VALUES ('2002', '236', '井冈山市', '3');
INSERT INTO `t_region` VALUES ('2003', '236', '吉安县', '3');
INSERT INTO `t_region` VALUES ('2004', '236', '吉水县', '3');
INSERT INTO `t_region` VALUES ('2005', '236', '峡江县', '3');
INSERT INTO `t_region` VALUES ('2006', '236', '新干县', '3');
INSERT INTO `t_region` VALUES ('2007', '236', '永丰县', '3');
INSERT INTO `t_region` VALUES ('2008', '236', '泰和县', '3');
INSERT INTO `t_region` VALUES ('2009', '236', '遂川县', '3');
INSERT INTO `t_region` VALUES ('2010', '236', '万安县', '3');
INSERT INTO `t_region` VALUES ('2011', '236', '永新县', '3');
INSERT INTO `t_region` VALUES ('2012', '237', '珠山区', '3');
INSERT INTO `t_region` VALUES ('2013', '237', '昌江区', '3');
INSERT INTO `t_region` VALUES ('2014', '237', '乐平市', '3');
INSERT INTO `t_region` VALUES ('2015', '237', '浮梁县', '3');
INSERT INTO `t_region` VALUES ('2016', '238', '浔阳区', '3');
INSERT INTO `t_region` VALUES ('2017', '238', '庐山区', '3');
INSERT INTO `t_region` VALUES ('2018', '238', '瑞昌市', '3');
INSERT INTO `t_region` VALUES ('2019', '238', '九江县', '3');
INSERT INTO `t_region` VALUES ('2020', '238', '武宁县', '3');
INSERT INTO `t_region` VALUES ('2021', '238', '修水县', '3');
INSERT INTO `t_region` VALUES ('2022', '238', '永修县', '3');
INSERT INTO `t_region` VALUES ('2023', '238', '德安县', '3');
INSERT INTO `t_region` VALUES ('2024', '238', '星子县', '3');
INSERT INTO `t_region` VALUES ('2025', '238', '都昌县', '3');
INSERT INTO `t_region` VALUES ('2026', '238', '湖口县', '3');
INSERT INTO `t_region` VALUES ('2027', '238', '彭泽县', '3');
INSERT INTO `t_region` VALUES ('2028', '239', '安源区', '3');
INSERT INTO `t_region` VALUES ('2029', '239', '湘东区', '3');
INSERT INTO `t_region` VALUES ('2030', '239', '莲花县', '3');
INSERT INTO `t_region` VALUES ('2031', '239', '芦溪县', '3');
INSERT INTO `t_region` VALUES ('2032', '239', '上栗县', '3');
INSERT INTO `t_region` VALUES ('2033', '240', '信州区', '3');
INSERT INTO `t_region` VALUES ('2034', '240', '德兴市', '3');
INSERT INTO `t_region` VALUES ('2035', '240', '上饶县', '3');
INSERT INTO `t_region` VALUES ('2036', '240', '广丰县', '3');
INSERT INTO `t_region` VALUES ('2037', '240', '玉山县', '3');
INSERT INTO `t_region` VALUES ('2038', '240', '铅山县', '3');
INSERT INTO `t_region` VALUES ('2039', '240', '横峰县', '3');
INSERT INTO `t_region` VALUES ('2040', '240', '弋阳县', '3');
INSERT INTO `t_region` VALUES ('2041', '240', '余干县', '3');
INSERT INTO `t_region` VALUES ('2042', '240', '波阳县', '3');
INSERT INTO `t_region` VALUES ('2043', '240', '万年县', '3');
INSERT INTO `t_region` VALUES ('2044', '240', '婺源县', '3');
INSERT INTO `t_region` VALUES ('2045', '241', '渝水区', '3');
INSERT INTO `t_region` VALUES ('2046', '241', '分宜县', '3');
INSERT INTO `t_region` VALUES ('2047', '242', '袁州区', '3');
INSERT INTO `t_region` VALUES ('2048', '242', '丰城市', '3');
INSERT INTO `t_region` VALUES ('2049', '242', '樟树市', '3');
INSERT INTO `t_region` VALUES ('2050', '242', '高安市', '3');
INSERT INTO `t_region` VALUES ('2051', '242', '奉新县', '3');
INSERT INTO `t_region` VALUES ('2052', '242', '万载县', '3');
INSERT INTO `t_region` VALUES ('2053', '242', '上高县', '3');
INSERT INTO `t_region` VALUES ('2054', '242', '宜丰县', '3');
INSERT INTO `t_region` VALUES ('2055', '242', '靖安县', '3');
INSERT INTO `t_region` VALUES ('2056', '242', '铜鼓县', '3');
INSERT INTO `t_region` VALUES ('2057', '243', '月湖区', '3');
INSERT INTO `t_region` VALUES ('2058', '243', '贵溪市', '3');
INSERT INTO `t_region` VALUES ('2059', '243', '余江县', '3');
INSERT INTO `t_region` VALUES ('2060', '244', '沈河区', '3');
INSERT INTO `t_region` VALUES ('2061', '244', '皇姑区', '3');
INSERT INTO `t_region` VALUES ('2062', '244', '和平区', '3');
INSERT INTO `t_region` VALUES ('2063', '244', '大东区', '3');
INSERT INTO `t_region` VALUES ('2064', '244', '铁西区', '3');
INSERT INTO `t_region` VALUES ('2065', '244', '苏家屯区', '3');
INSERT INTO `t_region` VALUES ('2066', '244', '东陵区', '3');
INSERT INTO `t_region` VALUES ('2067', '244', '沈北新区', '3');
INSERT INTO `t_region` VALUES ('2068', '244', '于洪区', '3');
INSERT INTO `t_region` VALUES ('2069', '244', '浑南新区', '3');
INSERT INTO `t_region` VALUES ('2070', '244', '新民市', '3');
INSERT INTO `t_region` VALUES ('2071', '244', '辽中县', '3');
INSERT INTO `t_region` VALUES ('2072', '244', '康平县', '3');
INSERT INTO `t_region` VALUES ('2073', '244', '法库县', '3');
INSERT INTO `t_region` VALUES ('2074', '245', '西岗区', '3');
INSERT INTO `t_region` VALUES ('2075', '245', '中山区', '3');
INSERT INTO `t_region` VALUES ('2076', '245', '沙河口区', '3');
INSERT INTO `t_region` VALUES ('2077', '245', '甘井子区', '3');
INSERT INTO `t_region` VALUES ('2078', '245', '旅顺口区', '3');
INSERT INTO `t_region` VALUES ('2079', '245', '金州区', '3');
INSERT INTO `t_region` VALUES ('2080', '245', '开发区', '3');
INSERT INTO `t_region` VALUES ('2081', '245', '瓦房店市', '3');
INSERT INTO `t_region` VALUES ('2082', '245', '普兰店市', '3');
INSERT INTO `t_region` VALUES ('2083', '245', '庄河市', '3');
INSERT INTO `t_region` VALUES ('2084', '245', '长海县', '3');
INSERT INTO `t_region` VALUES ('2085', '246', '铁东区', '3');
INSERT INTO `t_region` VALUES ('2086', '246', '铁西区', '3');
INSERT INTO `t_region` VALUES ('2087', '246', '立山区', '3');
INSERT INTO `t_region` VALUES ('2088', '246', '千山区', '3');
INSERT INTO `t_region` VALUES ('2089', '246', '岫岩', '3');
INSERT INTO `t_region` VALUES ('2090', '246', '海城市', '3');
INSERT INTO `t_region` VALUES ('2091', '246', '台安县', '3');
INSERT INTO `t_region` VALUES ('2092', '247', '本溪', '3');
INSERT INTO `t_region` VALUES ('2093', '247', '平山区', '3');
INSERT INTO `t_region` VALUES ('2094', '247', '明山区', '3');
INSERT INTO `t_region` VALUES ('2095', '247', '溪湖区', '3');
INSERT INTO `t_region` VALUES ('2096', '247', '南芬区', '3');
INSERT INTO `t_region` VALUES ('2097', '247', '桓仁', '3');
INSERT INTO `t_region` VALUES ('2098', '248', '双塔区', '3');
INSERT INTO `t_region` VALUES ('2099', '248', '龙城区', '3');
INSERT INTO `t_region` VALUES ('2100', '248', '喀喇沁左翼蒙古族自治县', '3');
INSERT INTO `t_region` VALUES ('2101', '248', '北票市', '3');
INSERT INTO `t_region` VALUES ('2102', '248', '凌源市', '3');
INSERT INTO `t_region` VALUES ('2103', '248', '朝阳县', '3');
INSERT INTO `t_region` VALUES ('2104', '248', '建平县', '3');
INSERT INTO `t_region` VALUES ('2105', '249', '振兴区', '3');
INSERT INTO `t_region` VALUES ('2106', '249', '元宝区', '3');
INSERT INTO `t_region` VALUES ('2107', '249', '振安区', '3');
INSERT INTO `t_region` VALUES ('2108', '249', '宽甸', '3');
INSERT INTO `t_region` VALUES ('2109', '249', '东港市', '3');
INSERT INTO `t_region` VALUES ('2110', '249', '凤城市', '3');
INSERT INTO `t_region` VALUES ('2111', '250', '顺城区', '3');
INSERT INTO `t_region` VALUES ('2112', '250', '新抚区', '3');
INSERT INTO `t_region` VALUES ('2113', '250', '东洲区', '3');
INSERT INTO `t_region` VALUES ('2114', '250', '望花区', '3');
INSERT INTO `t_region` VALUES ('2115', '250', '清原', '3');
INSERT INTO `t_region` VALUES ('2116', '250', '新宾', '3');
INSERT INTO `t_region` VALUES ('2117', '250', '抚顺县', '3');
INSERT INTO `t_region` VALUES ('2118', '251', '阜新', '3');
INSERT INTO `t_region` VALUES ('2119', '251', '海州区', '3');
INSERT INTO `t_region` VALUES ('2120', '251', '新邱区', '3');
INSERT INTO `t_region` VALUES ('2121', '251', '太平区', '3');
INSERT INTO `t_region` VALUES ('2122', '251', '清河门区', '3');
INSERT INTO `t_region` VALUES ('2123', '251', '细河区', '3');
INSERT INTO `t_region` VALUES ('2124', '251', '彰武县', '3');
INSERT INTO `t_region` VALUES ('2125', '252', '龙港区', '3');
INSERT INTO `t_region` VALUES ('2126', '252', '南票区', '3');
INSERT INTO `t_region` VALUES ('2127', '252', '连山区', '3');
INSERT INTO `t_region` VALUES ('2128', '252', '兴城市', '3');
INSERT INTO `t_region` VALUES ('2129', '252', '绥中县', '3');
INSERT INTO `t_region` VALUES ('2130', '252', '建昌县', '3');
INSERT INTO `t_region` VALUES ('2131', '253', '太和区', '3');
INSERT INTO `t_region` VALUES ('2132', '253', '古塔区', '3');
INSERT INTO `t_region` VALUES ('2133', '253', '凌河区', '3');
INSERT INTO `t_region` VALUES ('2134', '253', '凌海市', '3');
INSERT INTO `t_region` VALUES ('2135', '253', '北镇市', '3');
INSERT INTO `t_region` VALUES ('2136', '253', '黑山县', '3');
INSERT INTO `t_region` VALUES ('2137', '253', '义县', '3');
INSERT INTO `t_region` VALUES ('2138', '254', '白塔区', '3');
INSERT INTO `t_region` VALUES ('2139', '254', '文圣区', '3');
INSERT INTO `t_region` VALUES ('2140', '254', '宏伟区', '3');
INSERT INTO `t_region` VALUES ('2141', '254', '太子河区', '3');
INSERT INTO `t_region` VALUES ('2142', '254', '弓长岭区', '3');
INSERT INTO `t_region` VALUES ('2143', '254', '灯塔市', '3');
INSERT INTO `t_region` VALUES ('2144', '254', '辽阳县', '3');
INSERT INTO `t_region` VALUES ('2145', '255', '双台子区', '3');
INSERT INTO `t_region` VALUES ('2146', '255', '兴隆台区', '3');
INSERT INTO `t_region` VALUES ('2147', '255', '大洼县', '3');
INSERT INTO `t_region` VALUES ('2148', '255', '盘山县', '3');
INSERT INTO `t_region` VALUES ('2149', '256', '银州区', '3');
INSERT INTO `t_region` VALUES ('2150', '256', '清河区', '3');
INSERT INTO `t_region` VALUES ('2151', '256', '调兵山市', '3');
INSERT INTO `t_region` VALUES ('2152', '256', '开原市', '3');
INSERT INTO `t_region` VALUES ('2153', '256', '铁岭县', '3');
INSERT INTO `t_region` VALUES ('2154', '256', '西丰县', '3');
INSERT INTO `t_region` VALUES ('2155', '256', '昌图县', '3');
INSERT INTO `t_region` VALUES ('2156', '257', '站前区', '3');
INSERT INTO `t_region` VALUES ('2157', '257', '西市区', '3');
INSERT INTO `t_region` VALUES ('2158', '257', '鲅鱼圈区', '3');
INSERT INTO `t_region` VALUES ('2159', '257', '老边区', '3');
INSERT INTO `t_region` VALUES ('2160', '257', '盖州市', '3');
INSERT INTO `t_region` VALUES ('2161', '257', '大石桥市', '3');
INSERT INTO `t_region` VALUES ('2162', '258', '回民区', '3');
INSERT INTO `t_region` VALUES ('2163', '258', '玉泉区', '3');
INSERT INTO `t_region` VALUES ('2164', '258', '新城区', '3');
INSERT INTO `t_region` VALUES ('2165', '258', '赛罕区', '3');
INSERT INTO `t_region` VALUES ('2166', '258', '清水河县', '3');
INSERT INTO `t_region` VALUES ('2167', '258', '土默特左旗', '3');
INSERT INTO `t_region` VALUES ('2168', '258', '托克托县', '3');
INSERT INTO `t_region` VALUES ('2169', '258', '和林格尔县', '3');
INSERT INTO `t_region` VALUES ('2170', '258', '武川县', '3');
INSERT INTO `t_region` VALUES ('2171', '259', '阿拉善左旗', '3');
INSERT INTO `t_region` VALUES ('2172', '259', '阿拉善右旗', '3');
INSERT INTO `t_region` VALUES ('2173', '259', '额济纳旗', '3');
INSERT INTO `t_region` VALUES ('2174', '260', '临河区', '3');
INSERT INTO `t_region` VALUES ('2175', '260', '五原县', '3');
INSERT INTO `t_region` VALUES ('2176', '260', '磴口县', '3');
INSERT INTO `t_region` VALUES ('2177', '260', '乌拉特前旗', '3');
INSERT INTO `t_region` VALUES ('2178', '260', '乌拉特中旗', '3');
INSERT INTO `t_region` VALUES ('2179', '260', '乌拉特后旗', '3');
INSERT INTO `t_region` VALUES ('2180', '260', '杭锦后旗', '3');
INSERT INTO `t_region` VALUES ('2181', '261', '昆都仑区', '3');
INSERT INTO `t_region` VALUES ('2182', '261', '青山区', '3');
INSERT INTO `t_region` VALUES ('2183', '261', '东河区', '3');
INSERT INTO `t_region` VALUES ('2184', '261', '九原区', '3');
INSERT INTO `t_region` VALUES ('2185', '261', '石拐区', '3');
INSERT INTO `t_region` VALUES ('2186', '261', '白云矿区', '3');
INSERT INTO `t_region` VALUES ('2187', '261', '土默特右旗', '3');
INSERT INTO `t_region` VALUES ('2188', '261', '固阳县', '3');
INSERT INTO `t_region` VALUES ('2189', '261', '达尔罕茂明安联合旗', '3');
INSERT INTO `t_region` VALUES ('2190', '262', '红山区', '3');
INSERT INTO `t_region` VALUES ('2191', '262', '元宝山区', '3');
INSERT INTO `t_region` VALUES ('2192', '262', '松山区', '3');
INSERT INTO `t_region` VALUES ('2193', '262', '阿鲁科尔沁旗', '3');
INSERT INTO `t_region` VALUES ('2194', '262', '巴林左旗', '3');
INSERT INTO `t_region` VALUES ('2195', '262', '巴林右旗', '3');
INSERT INTO `t_region` VALUES ('2196', '262', '林西县', '3');
INSERT INTO `t_region` VALUES ('2197', '262', '克什克腾旗', '3');
INSERT INTO `t_region` VALUES ('2198', '262', '翁牛特旗', '3');
INSERT INTO `t_region` VALUES ('2199', '262', '喀喇沁旗', '3');
INSERT INTO `t_region` VALUES ('2200', '262', '宁城县', '3');
INSERT INTO `t_region` VALUES ('2201', '262', '敖汉旗', '3');
INSERT INTO `t_region` VALUES ('2202', '263', '东胜区', '3');
INSERT INTO `t_region` VALUES ('2203', '263', '达拉特旗', '3');
INSERT INTO `t_region` VALUES ('2204', '263', '准格尔旗', '3');
INSERT INTO `t_region` VALUES ('2205', '263', '鄂托克前旗', '3');
INSERT INTO `t_region` VALUES ('2206', '263', '鄂托克旗', '3');
INSERT INTO `t_region` VALUES ('2207', '263', '杭锦旗', '3');
INSERT INTO `t_region` VALUES ('2208', '263', '乌审旗', '3');
INSERT INTO `t_region` VALUES ('2209', '263', '伊金霍洛旗', '3');
INSERT INTO `t_region` VALUES ('2210', '264', '海拉尔区', '3');
INSERT INTO `t_region` VALUES ('2211', '264', '莫力达瓦', '3');
INSERT INTO `t_region` VALUES ('2212', '264', '满洲里市', '3');
INSERT INTO `t_region` VALUES ('2213', '264', '牙克石市', '3');
INSERT INTO `t_region` VALUES ('2214', '264', '扎兰屯市', '3');
INSERT INTO `t_region` VALUES ('2215', '264', '额尔古纳市', '3');
INSERT INTO `t_region` VALUES ('2216', '264', '根河市', '3');
INSERT INTO `t_region` VALUES ('2217', '264', '阿荣旗', '3');
INSERT INTO `t_region` VALUES ('2218', '264', '鄂伦春自治旗', '3');
INSERT INTO `t_region` VALUES ('2219', '264', '鄂温克族自治旗', '3');
INSERT INTO `t_region` VALUES ('2220', '264', '陈巴尔虎旗', '3');
INSERT INTO `t_region` VALUES ('2221', '264', '新巴尔虎左旗', '3');
INSERT INTO `t_region` VALUES ('2222', '264', '新巴尔虎右旗', '3');
INSERT INTO `t_region` VALUES ('2223', '265', '科尔沁区', '3');
INSERT INTO `t_region` VALUES ('2224', '265', '霍林郭勒市', '3');
INSERT INTO `t_region` VALUES ('2225', '265', '科尔沁左翼中旗', '3');
INSERT INTO `t_region` VALUES ('2226', '265', '科尔沁左翼后旗', '3');
INSERT INTO `t_region` VALUES ('2227', '265', '开鲁县', '3');
INSERT INTO `t_region` VALUES ('2228', '265', '库伦旗', '3');
INSERT INTO `t_region` VALUES ('2229', '265', '奈曼旗', '3');
INSERT INTO `t_region` VALUES ('2230', '265', '扎鲁特旗', '3');
INSERT INTO `t_region` VALUES ('2231', '266', '海勃湾区', '3');
INSERT INTO `t_region` VALUES ('2232', '266', '乌达区', '3');
INSERT INTO `t_region` VALUES ('2233', '266', '海南区', '3');
INSERT INTO `t_region` VALUES ('2234', '267', '化德县', '3');
INSERT INTO `t_region` VALUES ('2235', '267', '集宁区', '3');
INSERT INTO `t_region` VALUES ('2236', '267', '丰镇市', '3');
INSERT INTO `t_region` VALUES ('2237', '267', '卓资县', '3');
INSERT INTO `t_region` VALUES ('2238', '267', '商都县', '3');
INSERT INTO `t_region` VALUES ('2239', '267', '兴和县', '3');
INSERT INTO `t_region` VALUES ('2240', '267', '凉城县', '3');
INSERT INTO `t_region` VALUES ('2241', '267', '察哈尔右翼前旗', '3');
INSERT INTO `t_region` VALUES ('2242', '267', '察哈尔右翼中旗', '3');
INSERT INTO `t_region` VALUES ('2243', '267', '察哈尔右翼后旗', '3');
INSERT INTO `t_region` VALUES ('2244', '267', '四子王旗', '3');
INSERT INTO `t_region` VALUES ('2245', '268', '二连浩特市', '3');
INSERT INTO `t_region` VALUES ('2246', '268', '锡林浩特市', '3');
INSERT INTO `t_region` VALUES ('2247', '268', '阿巴嘎旗', '3');
INSERT INTO `t_region` VALUES ('2248', '268', '苏尼特左旗', '3');
INSERT INTO `t_region` VALUES ('2249', '268', '苏尼特右旗', '3');
INSERT INTO `t_region` VALUES ('2250', '268', '东乌珠穆沁旗', '3');
INSERT INTO `t_region` VALUES ('2251', '268', '西乌珠穆沁旗', '3');
INSERT INTO `t_region` VALUES ('2252', '268', '太仆寺旗', '3');
INSERT INTO `t_region` VALUES ('2253', '268', '镶黄旗', '3');
INSERT INTO `t_region` VALUES ('2254', '268', '正镶白旗', '3');
INSERT INTO `t_region` VALUES ('2255', '268', '正蓝旗', '3');
INSERT INTO `t_region` VALUES ('2256', '268', '多伦县', '3');
INSERT INTO `t_region` VALUES ('2257', '269', '乌兰浩特市', '3');
INSERT INTO `t_region` VALUES ('2258', '269', '阿尔山市', '3');
INSERT INTO `t_region` VALUES ('2259', '269', '科尔沁右翼前旗', '3');
INSERT INTO `t_region` VALUES ('2260', '269', '科尔沁右翼中旗', '3');
INSERT INTO `t_region` VALUES ('2261', '269', '扎赉特旗', '3');
INSERT INTO `t_region` VALUES ('2262', '269', '突泉县', '3');
INSERT INTO `t_region` VALUES ('2263', '270', '西夏区', '3');
INSERT INTO `t_region` VALUES ('2264', '270', '金凤区', '3');
INSERT INTO `t_region` VALUES ('2265', '270', '兴庆区', '3');
INSERT INTO `t_region` VALUES ('2266', '270', '灵武市', '3');
INSERT INTO `t_region` VALUES ('2267', '270', '永宁县', '3');
INSERT INTO `t_region` VALUES ('2268', '270', '贺兰县', '3');
INSERT INTO `t_region` VALUES ('2269', '271', '原州区', '3');
INSERT INTO `t_region` VALUES ('2270', '271', '海原县', '3');
INSERT INTO `t_region` VALUES ('2271', '271', '西吉县', '3');
INSERT INTO `t_region` VALUES ('2272', '271', '隆德县', '3');
INSERT INTO `t_region` VALUES ('2273', '271', '泾源县', '3');
INSERT INTO `t_region` VALUES ('2274', '271', '彭阳县', '3');
INSERT INTO `t_region` VALUES ('2275', '272', '惠农县', '3');
INSERT INTO `t_region` VALUES ('2276', '272', '大武口区', '3');
INSERT INTO `t_region` VALUES ('2277', '272', '惠农区', '3');
INSERT INTO `t_region` VALUES ('2278', '272', '陶乐县', '3');
INSERT INTO `t_region` VALUES ('2279', '272', '平罗县', '3');
INSERT INTO `t_region` VALUES ('2280', '273', '利通区', '3');
INSERT INTO `t_region` VALUES ('2281', '273', '中卫县', '3');
INSERT INTO `t_region` VALUES ('2282', '273', '青铜峡市', '3');
INSERT INTO `t_region` VALUES ('2283', '273', '中宁县', '3');
INSERT INTO `t_region` VALUES ('2284', '273', '盐池县', '3');
INSERT INTO `t_region` VALUES ('2285', '273', '同心县', '3');
INSERT INTO `t_region` VALUES ('2286', '274', '沙坡头区', '3');
INSERT INTO `t_region` VALUES ('2287', '274', '海原县', '3');
INSERT INTO `t_region` VALUES ('2288', '274', '中宁县', '3');
INSERT INTO `t_region` VALUES ('2289', '275', '城中区', '3');
INSERT INTO `t_region` VALUES ('2290', '275', '城东区', '3');
INSERT INTO `t_region` VALUES ('2291', '275', '城西区', '3');
INSERT INTO `t_region` VALUES ('2292', '275', '城北区', '3');
INSERT INTO `t_region` VALUES ('2293', '275', '湟中县', '3');
INSERT INTO `t_region` VALUES ('2294', '275', '湟源县', '3');
INSERT INTO `t_region` VALUES ('2295', '275', '大通', '3');
INSERT INTO `t_region` VALUES ('2296', '276', '玛沁县', '3');
INSERT INTO `t_region` VALUES ('2297', '276', '班玛县', '3');
INSERT INTO `t_region` VALUES ('2298', '276', '甘德县', '3');
INSERT INTO `t_region` VALUES ('2299', '276', '达日县', '3');
INSERT INTO `t_region` VALUES ('2300', '276', '久治县', '3');
INSERT INTO `t_region` VALUES ('2301', '276', '玛多县', '3');
INSERT INTO `t_region` VALUES ('2302', '277', '海晏县', '3');
INSERT INTO `t_region` VALUES ('2303', '277', '祁连县', '3');
INSERT INTO `t_region` VALUES ('2304', '277', '刚察县', '3');
INSERT INTO `t_region` VALUES ('2305', '277', '门源', '3');
INSERT INTO `t_region` VALUES ('2306', '278', '平安县', '3');
INSERT INTO `t_region` VALUES ('2307', '278', '乐都县', '3');
INSERT INTO `t_region` VALUES ('2308', '278', '民和', '3');
INSERT INTO `t_region` VALUES ('2309', '278', '互助', '3');
INSERT INTO `t_region` VALUES ('2310', '278', '化隆', '3');
INSERT INTO `t_region` VALUES ('2311', '278', '循化', '3');
INSERT INTO `t_region` VALUES ('2312', '279', '共和县', '3');
INSERT INTO `t_region` VALUES ('2313', '279', '同德县', '3');
INSERT INTO `t_region` VALUES ('2314', '279', '贵德县', '3');
INSERT INTO `t_region` VALUES ('2315', '279', '兴海县', '3');
INSERT INTO `t_region` VALUES ('2316', '279', '贵南县', '3');
INSERT INTO `t_region` VALUES ('2317', '280', '德令哈市', '3');
INSERT INTO `t_region` VALUES ('2318', '280', '格尔木市', '3');
INSERT INTO `t_region` VALUES ('2319', '280', '乌兰县', '3');
INSERT INTO `t_region` VALUES ('2320', '280', '都兰县', '3');
INSERT INTO `t_region` VALUES ('2321', '280', '天峻县', '3');
INSERT INTO `t_region` VALUES ('2322', '281', '同仁县', '3');
INSERT INTO `t_region` VALUES ('2323', '281', '尖扎县', '3');
INSERT INTO `t_region` VALUES ('2324', '281', '泽库县', '3');
INSERT INTO `t_region` VALUES ('2325', '281', '河南蒙古族自治县', '3');
INSERT INTO `t_region` VALUES ('2326', '282', '玉树县', '3');
INSERT INTO `t_region` VALUES ('2327', '282', '杂多县', '3');
INSERT INTO `t_region` VALUES ('2328', '282', '称多县', '3');
INSERT INTO `t_region` VALUES ('2329', '282', '治多县', '3');
INSERT INTO `t_region` VALUES ('2330', '282', '囊谦县', '3');
INSERT INTO `t_region` VALUES ('2331', '282', '曲麻莱县', '3');
INSERT INTO `t_region` VALUES ('2332', '283', '市中区', '3');
INSERT INTO `t_region` VALUES ('2333', '283', '历下区', '3');
INSERT INTO `t_region` VALUES ('2334', '283', '天桥区', '3');
INSERT INTO `t_region` VALUES ('2335', '283', '槐荫区', '3');
INSERT INTO `t_region` VALUES ('2336', '283', '历城区', '3');
INSERT INTO `t_region` VALUES ('2337', '283', '长清区', '3');
INSERT INTO `t_region` VALUES ('2338', '283', '章丘市', '3');
INSERT INTO `t_region` VALUES ('2339', '283', '平阴县', '3');
INSERT INTO `t_region` VALUES ('2340', '283', '济阳县', '3');
INSERT INTO `t_region` VALUES ('2341', '283', '商河县', '3');
INSERT INTO `t_region` VALUES ('2342', '284', '市南区', '3');
INSERT INTO `t_region` VALUES ('2343', '284', '市北区', '3');
INSERT INTO `t_region` VALUES ('2344', '284', '城阳区', '3');
INSERT INTO `t_region` VALUES ('2345', '284', '四方区', '3');
INSERT INTO `t_region` VALUES ('2346', '284', '李沧区', '3');
INSERT INTO `t_region` VALUES ('2347', '284', '黄岛区', '3');
INSERT INTO `t_region` VALUES ('2348', '284', '崂山区', '3');
INSERT INTO `t_region` VALUES ('2349', '284', '胶州市', '3');
INSERT INTO `t_region` VALUES ('2350', '284', '即墨市', '3');
INSERT INTO `t_region` VALUES ('2351', '284', '平度市', '3');
INSERT INTO `t_region` VALUES ('2352', '284', '胶南市', '3');
INSERT INTO `t_region` VALUES ('2353', '284', '莱西市', '3');
INSERT INTO `t_region` VALUES ('2354', '285', '滨城区', '3');
INSERT INTO `t_region` VALUES ('2355', '285', '惠民县', '3');
INSERT INTO `t_region` VALUES ('2356', '285', '阳信县', '3');
INSERT INTO `t_region` VALUES ('2357', '285', '无棣县', '3');
INSERT INTO `t_region` VALUES ('2358', '285', '沾化县', '3');
INSERT INTO `t_region` VALUES ('2359', '285', '博兴县', '3');
INSERT INTO `t_region` VALUES ('2360', '285', '邹平县', '3');
INSERT INTO `t_region` VALUES ('2361', '286', '德城区', '3');
INSERT INTO `t_region` VALUES ('2362', '286', '陵县', '3');
INSERT INTO `t_region` VALUES ('2363', '286', '乐陵市', '3');
INSERT INTO `t_region` VALUES ('2364', '286', '禹城市', '3');
INSERT INTO `t_region` VALUES ('2365', '286', '宁津县', '3');
INSERT INTO `t_region` VALUES ('2366', '286', '庆云县', '3');
INSERT INTO `t_region` VALUES ('2367', '286', '临邑县', '3');
INSERT INTO `t_region` VALUES ('2368', '286', '齐河县', '3');
INSERT INTO `t_region` VALUES ('2369', '286', '平原县', '3');
INSERT INTO `t_region` VALUES ('2370', '286', '夏津县', '3');
INSERT INTO `t_region` VALUES ('2371', '286', '武城县', '3');
INSERT INTO `t_region` VALUES ('2372', '287', '东营区', '3');
INSERT INTO `t_region` VALUES ('2373', '287', '河口区', '3');
INSERT INTO `t_region` VALUES ('2374', '287', '垦利县', '3');
INSERT INTO `t_region` VALUES ('2375', '287', '利津县', '3');
INSERT INTO `t_region` VALUES ('2376', '287', '广饶县', '3');
INSERT INTO `t_region` VALUES ('2377', '288', '牡丹区', '3');
INSERT INTO `t_region` VALUES ('2378', '288', '曹县', '3');
INSERT INTO `t_region` VALUES ('2379', '288', '单县', '3');
INSERT INTO `t_region` VALUES ('2380', '288', '成武县', '3');
INSERT INTO `t_region` VALUES ('2381', '288', '巨野县', '3');
INSERT INTO `t_region` VALUES ('2382', '288', '郓城县', '3');
INSERT INTO `t_region` VALUES ('2383', '288', '鄄城县', '3');
INSERT INTO `t_region` VALUES ('2384', '288', '定陶县', '3');
INSERT INTO `t_region` VALUES ('2385', '288', '东明县', '3');
INSERT INTO `t_region` VALUES ('2386', '289', '市中区', '3');
INSERT INTO `t_region` VALUES ('2387', '289', '任城区', '3');
INSERT INTO `t_region` VALUES ('2388', '289', '曲阜市', '3');
INSERT INTO `t_region` VALUES ('2389', '289', '兖州市', '3');
INSERT INTO `t_region` VALUES ('2390', '289', '邹城市', '3');
INSERT INTO `t_region` VALUES ('2391', '289', '微山县', '3');
INSERT INTO `t_region` VALUES ('2392', '289', '鱼台县', '3');
INSERT INTO `t_region` VALUES ('2393', '289', '金乡县', '3');
INSERT INTO `t_region` VALUES ('2394', '289', '嘉祥县', '3');
INSERT INTO `t_region` VALUES ('2395', '289', '汶上县', '3');
INSERT INTO `t_region` VALUES ('2396', '289', '泗水县', '3');
INSERT INTO `t_region` VALUES ('2397', '289', '梁山县', '3');
INSERT INTO `t_region` VALUES ('2398', '290', '莱城区', '3');
INSERT INTO `t_region` VALUES ('2399', '290', '钢城区', '3');
INSERT INTO `t_region` VALUES ('2400', '291', '东昌府区', '3');
INSERT INTO `t_region` VALUES ('2401', '291', '临清市', '3');
INSERT INTO `t_region` VALUES ('2402', '291', '阳谷县', '3');
INSERT INTO `t_region` VALUES ('2403', '291', '莘县', '3');
INSERT INTO `t_region` VALUES ('2404', '291', '茌平县', '3');
INSERT INTO `t_region` VALUES ('2405', '291', '东阿县', '3');
INSERT INTO `t_region` VALUES ('2406', '291', '冠县', '3');
INSERT INTO `t_region` VALUES ('2407', '291', '高唐县', '3');
INSERT INTO `t_region` VALUES ('2408', '292', '兰山区', '3');
INSERT INTO `t_region` VALUES ('2409', '292', '罗庄区', '3');
INSERT INTO `t_region` VALUES ('2410', '292', '河东区', '3');
INSERT INTO `t_region` VALUES ('2411', '292', '沂南县', '3');
INSERT INTO `t_region` VALUES ('2412', '292', '郯城县', '3');
INSERT INTO `t_region` VALUES ('2413', '292', '沂水县', '3');
INSERT INTO `t_region` VALUES ('2414', '292', '苍山县', '3');
INSERT INTO `t_region` VALUES ('2415', '292', '费县', '3');
INSERT INTO `t_region` VALUES ('2416', '292', '平邑县', '3');
INSERT INTO `t_region` VALUES ('2417', '292', '莒南县', '3');
INSERT INTO `t_region` VALUES ('2418', '292', '蒙阴县', '3');
INSERT INTO `t_region` VALUES ('2419', '292', '临沭县', '3');
INSERT INTO `t_region` VALUES ('2420', '293', '东港区', '3');
INSERT INTO `t_region` VALUES ('2421', '293', '岚山区', '3');
INSERT INTO `t_region` VALUES ('2422', '293', '五莲县', '3');
INSERT INTO `t_region` VALUES ('2423', '293', '莒县', '3');
INSERT INTO `t_region` VALUES ('2424', '294', '泰山区', '3');
INSERT INTO `t_region` VALUES ('2425', '294', '岱岳区', '3');
INSERT INTO `t_region` VALUES ('2426', '294', '新泰市', '3');
INSERT INTO `t_region` VALUES ('2427', '294', '肥城市', '3');
INSERT INTO `t_region` VALUES ('2428', '294', '宁阳县', '3');
INSERT INTO `t_region` VALUES ('2429', '294', '东平县', '3');
INSERT INTO `t_region` VALUES ('2430', '295', '荣成市', '3');
INSERT INTO `t_region` VALUES ('2431', '295', '乳山市', '3');
INSERT INTO `t_region` VALUES ('2432', '295', '环翠区', '3');
INSERT INTO `t_region` VALUES ('2433', '295', '文登市', '3');
INSERT INTO `t_region` VALUES ('2434', '296', '潍城区', '3');
INSERT INTO `t_region` VALUES ('2435', '296', '寒亭区', '3');
INSERT INTO `t_region` VALUES ('2436', '296', '坊子区', '3');
INSERT INTO `t_region` VALUES ('2437', '296', '奎文区', '3');
INSERT INTO `t_region` VALUES ('2438', '296', '青州市', '3');
INSERT INTO `t_region` VALUES ('2439', '296', '诸城市', '3');
INSERT INTO `t_region` VALUES ('2440', '296', '寿光市', '3');
INSERT INTO `t_region` VALUES ('2441', '296', '安丘市', '3');
INSERT INTO `t_region` VALUES ('2442', '296', '高密市', '3');
INSERT INTO `t_region` VALUES ('2443', '296', '昌邑市', '3');
INSERT INTO `t_region` VALUES ('2444', '296', '临朐县', '3');
INSERT INTO `t_region` VALUES ('2445', '296', '昌乐县', '3');
INSERT INTO `t_region` VALUES ('2446', '297', '芝罘区', '3');
INSERT INTO `t_region` VALUES ('2447', '297', '福山区', '3');
INSERT INTO `t_region` VALUES ('2448', '297', '牟平区', '3');
INSERT INTO `t_region` VALUES ('2449', '297', '莱山区', '3');
INSERT INTO `t_region` VALUES ('2450', '297', '开发区', '3');
INSERT INTO `t_region` VALUES ('2451', '297', '龙口市', '3');
INSERT INTO `t_region` VALUES ('2452', '297', '莱阳市', '3');
INSERT INTO `t_region` VALUES ('2453', '297', '莱州市', '3');
INSERT INTO `t_region` VALUES ('2454', '297', '蓬莱市', '3');
INSERT INTO `t_region` VALUES ('2455', '297', '招远市', '3');
INSERT INTO `t_region` VALUES ('2456', '297', '栖霞市', '3');
INSERT INTO `t_region` VALUES ('2457', '297', '海阳市', '3');
INSERT INTO `t_region` VALUES ('2458', '297', '长岛县', '3');
INSERT INTO `t_region` VALUES ('2459', '298', '市中区', '3');
INSERT INTO `t_region` VALUES ('2460', '298', '山亭区', '3');
INSERT INTO `t_region` VALUES ('2461', '298', '峄城区', '3');
INSERT INTO `t_region` VALUES ('2462', '298', '台儿庄区', '3');
INSERT INTO `t_region` VALUES ('2463', '298', '薛城区', '3');
INSERT INTO `t_region` VALUES ('2464', '298', '滕州市', '3');
INSERT INTO `t_region` VALUES ('2465', '299', '张店区', '3');
INSERT INTO `t_region` VALUES ('2466', '299', '临淄区', '3');
INSERT INTO `t_region` VALUES ('2467', '299', '淄川区', '3');
INSERT INTO `t_region` VALUES ('2468', '299', '博山区', '3');
INSERT INTO `t_region` VALUES ('2469', '299', '周村区', '3');
INSERT INTO `t_region` VALUES ('2470', '299', '桓台县', '3');
INSERT INTO `t_region` VALUES ('2471', '299', '高青县', '3');
INSERT INTO `t_region` VALUES ('2472', '299', '沂源县', '3');
INSERT INTO `t_region` VALUES ('2473', '300', '杏花岭区', '3');
INSERT INTO `t_region` VALUES ('2474', '300', '小店区', '3');
INSERT INTO `t_region` VALUES ('2475', '300', '迎泽区', '3');
INSERT INTO `t_region` VALUES ('2476', '300', '尖草坪区', '3');
INSERT INTO `t_region` VALUES ('2477', '300', '万柏林区', '3');
INSERT INTO `t_region` VALUES ('2478', '300', '晋源区', '3');
INSERT INTO `t_region` VALUES ('2479', '300', '高新开发区', '3');
INSERT INTO `t_region` VALUES ('2480', '300', '民营经济开发区', '3');
INSERT INTO `t_region` VALUES ('2481', '300', '经济技术开发区', '3');
INSERT INTO `t_region` VALUES ('2482', '300', '清徐县', '3');
INSERT INTO `t_region` VALUES ('2483', '300', '阳曲县', '3');
INSERT INTO `t_region` VALUES ('2484', '300', '娄烦县', '3');
INSERT INTO `t_region` VALUES ('2485', '300', '古交市', '3');
INSERT INTO `t_region` VALUES ('2486', '301', '城区', '3');
INSERT INTO `t_region` VALUES ('2487', '301', '郊区', '3');
INSERT INTO `t_region` VALUES ('2488', '301', '沁县', '3');
INSERT INTO `t_region` VALUES ('2489', '301', '潞城市', '3');
INSERT INTO `t_region` VALUES ('2490', '301', '长治县', '3');
INSERT INTO `t_region` VALUES ('2491', '301', '襄垣县', '3');
INSERT INTO `t_region` VALUES ('2492', '301', '屯留县', '3');
INSERT INTO `t_region` VALUES ('2493', '301', '平顺县', '3');
INSERT INTO `t_region` VALUES ('2494', '301', '黎城县', '3');
INSERT INTO `t_region` VALUES ('2495', '301', '壶关县', '3');
INSERT INTO `t_region` VALUES ('2496', '301', '长子县', '3');
INSERT INTO `t_region` VALUES ('2497', '301', '武乡县', '3');
INSERT INTO `t_region` VALUES ('2498', '301', '沁源县', '3');
INSERT INTO `t_region` VALUES ('2499', '302', '城区', '3');
INSERT INTO `t_region` VALUES ('2500', '302', '矿区', '3');
INSERT INTO `t_region` VALUES ('2501', '302', '南郊区', '3');
INSERT INTO `t_region` VALUES ('2502', '302', '新荣区', '3');
INSERT INTO `t_region` VALUES ('2503', '302', '阳高县', '3');
INSERT INTO `t_region` VALUES ('2504', '302', '天镇县', '3');
INSERT INTO `t_region` VALUES ('2505', '302', '广灵县', '3');
INSERT INTO `t_region` VALUES ('2506', '302', '灵丘县', '3');
INSERT INTO `t_region` VALUES ('2507', '302', '浑源县', '3');
INSERT INTO `t_region` VALUES ('2508', '302', '左云县', '3');
INSERT INTO `t_region` VALUES ('2509', '302', '大同县', '3');
INSERT INTO `t_region` VALUES ('2510', '303', '城区', '3');
INSERT INTO `t_region` VALUES ('2511', '303', '高平市', '3');
INSERT INTO `t_region` VALUES ('2512', '303', '沁水县', '3');
INSERT INTO `t_region` VALUES ('2513', '303', '阳城县', '3');
INSERT INTO `t_region` VALUES ('2514', '303', '陵川县', '3');
INSERT INTO `t_region` VALUES ('2515', '303', '泽州县', '3');
INSERT INTO `t_region` VALUES ('2516', '304', '榆次区', '3');
INSERT INTO `t_region` VALUES ('2517', '304', '介休市', '3');
INSERT INTO `t_region` VALUES ('2518', '304', '榆社县', '3');
INSERT INTO `t_region` VALUES ('2519', '304', '左权县', '3');
INSERT INTO `t_region` VALUES ('2520', '304', '和顺县', '3');
INSERT INTO `t_region` VALUES ('2521', '304', '昔阳县', '3');
INSERT INTO `t_region` VALUES ('2522', '304', '寿阳县', '3');
INSERT INTO `t_region` VALUES ('2523', '304', '太谷县', '3');
INSERT INTO `t_region` VALUES ('2524', '304', '祁县', '3');
INSERT INTO `t_region` VALUES ('2525', '304', '平遥县', '3');
INSERT INTO `t_region` VALUES ('2526', '304', '灵石县', '3');
INSERT INTO `t_region` VALUES ('2527', '305', '尧都区', '3');
INSERT INTO `t_region` VALUES ('2528', '305', '侯马市', '3');
INSERT INTO `t_region` VALUES ('2529', '305', '霍州市', '3');
INSERT INTO `t_region` VALUES ('2530', '305', '曲沃县', '3');
INSERT INTO `t_region` VALUES ('2531', '305', '翼城县', '3');
INSERT INTO `t_region` VALUES ('2532', '305', '襄汾县', '3');
INSERT INTO `t_region` VALUES ('2533', '305', '洪洞县', '3');
INSERT INTO `t_region` VALUES ('2534', '305', '吉县', '3');
INSERT INTO `t_region` VALUES ('2535', '305', '安泽县', '3');
INSERT INTO `t_region` VALUES ('2536', '305', '浮山县', '3');
INSERT INTO `t_region` VALUES ('2537', '305', '古县', '3');
INSERT INTO `t_region` VALUES ('2538', '305', '乡宁县', '3');
INSERT INTO `t_region` VALUES ('2539', '305', '大宁县', '3');
INSERT INTO `t_region` VALUES ('2540', '305', '隰县', '3');
INSERT INTO `t_region` VALUES ('2541', '305', '永和县', '3');
INSERT INTO `t_region` VALUES ('2542', '305', '蒲县', '3');
INSERT INTO `t_region` VALUES ('2543', '305', '汾西县', '3');
INSERT INTO `t_region` VALUES ('2544', '306', '离石市', '3');
INSERT INTO `t_region` VALUES ('2545', '306', '离石区', '3');
INSERT INTO `t_region` VALUES ('2546', '306', '孝义市', '3');
INSERT INTO `t_region` VALUES ('2547', '306', '汾阳市', '3');
INSERT INTO `t_region` VALUES ('2548', '306', '文水县', '3');
INSERT INTO `t_region` VALUES ('2549', '306', '交城县', '3');
INSERT INTO `t_region` VALUES ('2550', '306', '兴县', '3');
INSERT INTO `t_region` VALUES ('2551', '306', '临县', '3');
INSERT INTO `t_region` VALUES ('2552', '306', '柳林县', '3');
INSERT INTO `t_region` VALUES ('2553', '306', '石楼县', '3');
INSERT INTO `t_region` VALUES ('2554', '306', '岚县', '3');
INSERT INTO `t_region` VALUES ('2555', '306', '方山县', '3');
INSERT INTO `t_region` VALUES ('2556', '306', '中阳县', '3');
INSERT INTO `t_region` VALUES ('2557', '306', '交口县', '3');
INSERT INTO `t_region` VALUES ('2558', '307', '朔城区', '3');
INSERT INTO `t_region` VALUES ('2559', '307', '平鲁区', '3');
INSERT INTO `t_region` VALUES ('2560', '307', '山阴县', '3');
INSERT INTO `t_region` VALUES ('2561', '307', '应县', '3');
INSERT INTO `t_region` VALUES ('2562', '307', '右玉县', '3');
INSERT INTO `t_region` VALUES ('2563', '307', '怀仁县', '3');
INSERT INTO `t_region` VALUES ('2564', '308', '忻府区', '3');
INSERT INTO `t_region` VALUES ('2565', '308', '原平市', '3');
INSERT INTO `t_region` VALUES ('2566', '308', '定襄县', '3');
INSERT INTO `t_region` VALUES ('2567', '308', '五台县', '3');
INSERT INTO `t_region` VALUES ('2568', '308', '代县', '3');
INSERT INTO `t_region` VALUES ('2569', '308', '繁峙县', '3');
INSERT INTO `t_region` VALUES ('2570', '308', '宁武县', '3');
INSERT INTO `t_region` VALUES ('2571', '308', '静乐县', '3');
INSERT INTO `t_region` VALUES ('2572', '308', '神池县', '3');
INSERT INTO `t_region` VALUES ('2573', '308', '五寨县', '3');
INSERT INTO `t_region` VALUES ('2574', '308', '岢岚县', '3');
INSERT INTO `t_region` VALUES ('2575', '308', '河曲县', '3');
INSERT INTO `t_region` VALUES ('2576', '308', '保德县', '3');
INSERT INTO `t_region` VALUES ('2577', '308', '偏关县', '3');
INSERT INTO `t_region` VALUES ('2578', '309', '城区', '3');
INSERT INTO `t_region` VALUES ('2579', '309', '矿区', '3');
INSERT INTO `t_region` VALUES ('2580', '309', '郊区', '3');
INSERT INTO `t_region` VALUES ('2581', '309', '平定县', '3');
INSERT INTO `t_region` VALUES ('2582', '309', '盂县', '3');
INSERT INTO `t_region` VALUES ('2583', '310', '盐湖区', '3');
INSERT INTO `t_region` VALUES ('2584', '310', '永济市', '3');
INSERT INTO `t_region` VALUES ('2585', '310', '河津市', '3');
INSERT INTO `t_region` VALUES ('2586', '310', '临猗县', '3');
INSERT INTO `t_region` VALUES ('2587', '310', '万荣县', '3');
INSERT INTO `t_region` VALUES ('2588', '310', '闻喜县', '3');
INSERT INTO `t_region` VALUES ('2589', '310', '稷山县', '3');
INSERT INTO `t_region` VALUES ('2590', '310', '新绛县', '3');
INSERT INTO `t_region` VALUES ('2591', '310', '绛县', '3');
INSERT INTO `t_region` VALUES ('2592', '310', '垣曲县', '3');
INSERT INTO `t_region` VALUES ('2593', '310', '夏县', '3');
INSERT INTO `t_region` VALUES ('2594', '310', '平陆县', '3');
INSERT INTO `t_region` VALUES ('2595', '310', '芮城县', '3');
INSERT INTO `t_region` VALUES ('2596', '311', '莲湖区', '3');
INSERT INTO `t_region` VALUES ('2597', '311', '新城区', '3');
INSERT INTO `t_region` VALUES ('2598', '311', '碑林区', '3');
INSERT INTO `t_region` VALUES ('2599', '311', '雁塔区', '3');
INSERT INTO `t_region` VALUES ('2600', '311', '灞桥区', '3');
INSERT INTO `t_region` VALUES ('2601', '311', '未央区', '3');
INSERT INTO `t_region` VALUES ('2602', '311', '阎良区', '3');
INSERT INTO `t_region` VALUES ('2603', '311', '临潼区', '3');
INSERT INTO `t_region` VALUES ('2604', '311', '长安区', '3');
INSERT INTO `t_region` VALUES ('2605', '311', '蓝田县', '3');
INSERT INTO `t_region` VALUES ('2606', '311', '周至县', '3');
INSERT INTO `t_region` VALUES ('2607', '311', '户县', '3');
INSERT INTO `t_region` VALUES ('2608', '311', '高陵县', '3');
INSERT INTO `t_region` VALUES ('2609', '312', '汉滨区', '3');
INSERT INTO `t_region` VALUES ('2610', '312', '汉阴县', '3');
INSERT INTO `t_region` VALUES ('2611', '312', '石泉县', '3');
INSERT INTO `t_region` VALUES ('2612', '312', '宁陕县', '3');
INSERT INTO `t_region` VALUES ('2613', '312', '紫阳县', '3');
INSERT INTO `t_region` VALUES ('2614', '312', '岚皋县', '3');
INSERT INTO `t_region` VALUES ('2615', '312', '平利县', '3');
INSERT INTO `t_region` VALUES ('2616', '312', '镇坪县', '3');
INSERT INTO `t_region` VALUES ('2617', '312', '旬阳县', '3');
INSERT INTO `t_region` VALUES ('2618', '312', '白河县', '3');
INSERT INTO `t_region` VALUES ('2619', '313', '陈仓区', '3');
INSERT INTO `t_region` VALUES ('2620', '313', '渭滨区', '3');
INSERT INTO `t_region` VALUES ('2621', '313', '金台区', '3');
INSERT INTO `t_region` VALUES ('2622', '313', '凤翔县', '3');
INSERT INTO `t_region` VALUES ('2623', '313', '岐山县', '3');
INSERT INTO `t_region` VALUES ('2624', '313', '扶风县', '3');
INSERT INTO `t_region` VALUES ('2625', '313', '眉县', '3');
INSERT INTO `t_region` VALUES ('2626', '313', '陇县', '3');
INSERT INTO `t_region` VALUES ('2627', '313', '千阳县', '3');
INSERT INTO `t_region` VALUES ('2628', '313', '麟游县', '3');
INSERT INTO `t_region` VALUES ('2629', '313', '凤县', '3');
INSERT INTO `t_region` VALUES ('2630', '313', '太白县', '3');
INSERT INTO `t_region` VALUES ('2631', '314', '汉台区', '3');
INSERT INTO `t_region` VALUES ('2632', '314', '南郑县', '3');
INSERT INTO `t_region` VALUES ('2633', '314', '城固县', '3');
INSERT INTO `t_region` VALUES ('2634', '314', '洋县', '3');
INSERT INTO `t_region` VALUES ('2635', '314', '西乡县', '3');
INSERT INTO `t_region` VALUES ('2636', '314', '勉县', '3');
INSERT INTO `t_region` VALUES ('2637', '314', '宁强县', '3');
INSERT INTO `t_region` VALUES ('2638', '314', '略阳县', '3');
INSERT INTO `t_region` VALUES ('2639', '314', '镇巴县', '3');
INSERT INTO `t_region` VALUES ('2640', '314', '留坝县', '3');
INSERT INTO `t_region` VALUES ('2641', '314', '佛坪县', '3');
INSERT INTO `t_region` VALUES ('2642', '315', '商州区', '3');
INSERT INTO `t_region` VALUES ('2643', '315', '洛南县', '3');
INSERT INTO `t_region` VALUES ('2644', '315', '丹凤县', '3');
INSERT INTO `t_region` VALUES ('2645', '315', '商南县', '3');
INSERT INTO `t_region` VALUES ('2646', '315', '山阳县', '3');
INSERT INTO `t_region` VALUES ('2647', '315', '镇安县', '3');
INSERT INTO `t_region` VALUES ('2648', '315', '柞水县', '3');
INSERT INTO `t_region` VALUES ('2649', '316', '耀州区', '3');
INSERT INTO `t_region` VALUES ('2650', '316', '王益区', '3');
INSERT INTO `t_region` VALUES ('2651', '316', '印台区', '3');
INSERT INTO `t_region` VALUES ('2652', '316', '宜君县', '3');
INSERT INTO `t_region` VALUES ('2653', '317', '临渭区', '3');
INSERT INTO `t_region` VALUES ('2654', '317', '韩城市', '3');
INSERT INTO `t_region` VALUES ('2655', '317', '华阴市', '3');
INSERT INTO `t_region` VALUES ('2656', '317', '华县', '3');
INSERT INTO `t_region` VALUES ('2657', '317', '潼关县', '3');
INSERT INTO `t_region` VALUES ('2658', '317', '大荔县', '3');
INSERT INTO `t_region` VALUES ('2659', '317', '合阳县', '3');
INSERT INTO `t_region` VALUES ('2660', '317', '澄城县', '3');
INSERT INTO `t_region` VALUES ('2661', '317', '蒲城县', '3');
INSERT INTO `t_region` VALUES ('2662', '317', '白水县', '3');
INSERT INTO `t_region` VALUES ('2663', '317', '富平县', '3');
INSERT INTO `t_region` VALUES ('2664', '318', '秦都区', '3');
INSERT INTO `t_region` VALUES ('2665', '318', '渭城区', '3');
INSERT INTO `t_region` VALUES ('2666', '318', '杨陵区', '3');
INSERT INTO `t_region` VALUES ('2667', '318', '兴平市', '3');
INSERT INTO `t_region` VALUES ('2668', '318', '三原县', '3');
INSERT INTO `t_region` VALUES ('2669', '318', '泾阳县', '3');
INSERT INTO `t_region` VALUES ('2670', '318', '乾县', '3');
INSERT INTO `t_region` VALUES ('2671', '318', '礼泉县', '3');
INSERT INTO `t_region` VALUES ('2672', '318', '永寿县', '3');
INSERT INTO `t_region` VALUES ('2673', '318', '彬县', '3');
INSERT INTO `t_region` VALUES ('2674', '318', '长武县', '3');
INSERT INTO `t_region` VALUES ('2675', '318', '旬邑县', '3');
INSERT INTO `t_region` VALUES ('2676', '318', '淳化县', '3');
INSERT INTO `t_region` VALUES ('2677', '318', '武功县', '3');
INSERT INTO `t_region` VALUES ('2678', '319', '吴起县', '3');
INSERT INTO `t_region` VALUES ('2679', '319', '宝塔区', '3');
INSERT INTO `t_region` VALUES ('2680', '319', '延长县', '3');
INSERT INTO `t_region` VALUES ('2681', '319', '延川县', '3');
INSERT INTO `t_region` VALUES ('2682', '319', '子长县', '3');
INSERT INTO `t_region` VALUES ('2683', '319', '安塞县', '3');
INSERT INTO `t_region` VALUES ('2684', '319', '志丹县', '3');
INSERT INTO `t_region` VALUES ('2685', '319', '甘泉县', '3');
INSERT INTO `t_region` VALUES ('2686', '319', '富县', '3');
INSERT INTO `t_region` VALUES ('2687', '319', '洛川县', '3');
INSERT INTO `t_region` VALUES ('2688', '319', '宜川县', '3');
INSERT INTO `t_region` VALUES ('2689', '319', '黄龙县', '3');
INSERT INTO `t_region` VALUES ('2690', '319', '黄陵县', '3');
INSERT INTO `t_region` VALUES ('2691', '320', '榆阳区', '3');
INSERT INTO `t_region` VALUES ('2692', '320', '神木县', '3');
INSERT INTO `t_region` VALUES ('2693', '320', '府谷县', '3');
INSERT INTO `t_region` VALUES ('2694', '320', '横山县', '3');
INSERT INTO `t_region` VALUES ('2695', '320', '靖边县', '3');
INSERT INTO `t_region` VALUES ('2696', '320', '定边县', '3');
INSERT INTO `t_region` VALUES ('2697', '320', '绥德县', '3');
INSERT INTO `t_region` VALUES ('2698', '320', '米脂县', '3');
INSERT INTO `t_region` VALUES ('2699', '320', '佳县', '3');
INSERT INTO `t_region` VALUES ('2700', '320', '吴堡县', '3');
INSERT INTO `t_region` VALUES ('2701', '320', '清涧县', '3');
INSERT INTO `t_region` VALUES ('2702', '320', '子洲县', '3');
INSERT INTO `t_region` VALUES ('2703', '321', '长宁区', '3');
INSERT INTO `t_region` VALUES ('2704', '321', '闸北区', '3');
INSERT INTO `t_region` VALUES ('2705', '321', '闵行区', '3');
INSERT INTO `t_region` VALUES ('2706', '321', '徐汇区', '3');
INSERT INTO `t_region` VALUES ('2707', '321', '浦东新区', '3');
INSERT INTO `t_region` VALUES ('2708', '321', '杨浦区', '3');
INSERT INTO `t_region` VALUES ('2709', '321', '普陀区', '3');
INSERT INTO `t_region` VALUES ('2710', '321', '静安区', '3');
INSERT INTO `t_region` VALUES ('2711', '321', '卢湾区', '3');
INSERT INTO `t_region` VALUES ('2712', '321', '虹口区', '3');
INSERT INTO `t_region` VALUES ('2713', '321', '黄浦区', '3');
INSERT INTO `t_region` VALUES ('2714', '321', '南汇区', '3');
INSERT INTO `t_region` VALUES ('2715', '321', '松江区', '3');
INSERT INTO `t_region` VALUES ('2716', '321', '嘉定区', '3');
INSERT INTO `t_region` VALUES ('2717', '321', '宝山区', '3');
INSERT INTO `t_region` VALUES ('2718', '321', '青浦区', '3');
INSERT INTO `t_region` VALUES ('2719', '321', '金山区', '3');
INSERT INTO `t_region` VALUES ('2720', '321', '奉贤区', '3');
INSERT INTO `t_region` VALUES ('2721', '321', '崇明县', '3');
INSERT INTO `t_region` VALUES ('2722', '322', '青羊区', '3');
INSERT INTO `t_region` VALUES ('2723', '322', '锦江区', '3');
INSERT INTO `t_region` VALUES ('2724', '322', '金牛区', '3');
INSERT INTO `t_region` VALUES ('2725', '322', '武侯区', '3');
INSERT INTO `t_region` VALUES ('2726', '322', '成华区', '3');
INSERT INTO `t_region` VALUES ('2727', '322', '龙泉驿区', '3');
INSERT INTO `t_region` VALUES ('2728', '322', '青白江区', '3');
INSERT INTO `t_region` VALUES ('2729', '322', '新都区', '3');
INSERT INTO `t_region` VALUES ('2730', '322', '温江区', '3');
INSERT INTO `t_region` VALUES ('2731', '322', '高新区', '3');
INSERT INTO `t_region` VALUES ('2732', '322', '高新西区', '3');
INSERT INTO `t_region` VALUES ('2733', '322', '都江堰市', '3');
INSERT INTO `t_region` VALUES ('2734', '322', '彭州市', '3');
INSERT INTO `t_region` VALUES ('2735', '322', '邛崃市', '3');
INSERT INTO `t_region` VALUES ('2736', '322', '崇州市', '3');
INSERT INTO `t_region` VALUES ('2737', '322', '金堂县', '3');
INSERT INTO `t_region` VALUES ('2738', '322', '双流县', '3');
INSERT INTO `t_region` VALUES ('2739', '322', '郫县', '3');
INSERT INTO `t_region` VALUES ('2740', '322', '大邑县', '3');
INSERT INTO `t_region` VALUES ('2741', '322', '蒲江县', '3');
INSERT INTO `t_region` VALUES ('2742', '322', '新津县', '3');
INSERT INTO `t_region` VALUES ('2743', '322', '都江堰市', '3');
INSERT INTO `t_region` VALUES ('2744', '322', '彭州市', '3');
INSERT INTO `t_region` VALUES ('2745', '322', '邛崃市', '3');
INSERT INTO `t_region` VALUES ('2746', '322', '崇州市', '3');
INSERT INTO `t_region` VALUES ('2747', '322', '金堂县', '3');
INSERT INTO `t_region` VALUES ('2748', '322', '双流县', '3');
INSERT INTO `t_region` VALUES ('2749', '322', '郫县', '3');
INSERT INTO `t_region` VALUES ('2750', '322', '大邑县', '3');
INSERT INTO `t_region` VALUES ('2751', '322', '蒲江县', '3');
INSERT INTO `t_region` VALUES ('2752', '322', '新津县', '3');
INSERT INTO `t_region` VALUES ('2753', '323', '涪城区', '3');
INSERT INTO `t_region` VALUES ('2754', '323', '游仙区', '3');
INSERT INTO `t_region` VALUES ('2755', '323', '江油市', '3');
INSERT INTO `t_region` VALUES ('2756', '323', '盐亭县', '3');
INSERT INTO `t_region` VALUES ('2757', '323', '三台县', '3');
INSERT INTO `t_region` VALUES ('2758', '323', '平武县', '3');
INSERT INTO `t_region` VALUES ('2759', '323', '安县', '3');
INSERT INTO `t_region` VALUES ('2760', '323', '梓潼县', '3');
INSERT INTO `t_region` VALUES ('2761', '323', '北川县', '3');
INSERT INTO `t_region` VALUES ('2762', '324', '马尔康县', '3');
INSERT INTO `t_region` VALUES ('2763', '324', '汶川县', '3');
INSERT INTO `t_region` VALUES ('2764', '324', '理县', '3');
INSERT INTO `t_region` VALUES ('2765', '324', '茂县', '3');
INSERT INTO `t_region` VALUES ('2766', '324', '松潘县', '3');
INSERT INTO `t_region` VALUES ('2767', '324', '九寨沟县', '3');
INSERT INTO `t_region` VALUES ('2768', '324', '金川县', '3');
INSERT INTO `t_region` VALUES ('2769', '324', '小金县', '3');
INSERT INTO `t_region` VALUES ('2770', '324', '黑水县', '3');
INSERT INTO `t_region` VALUES ('2771', '324', '壤塘县', '3');
INSERT INTO `t_region` VALUES ('2772', '324', '阿坝县', '3');
INSERT INTO `t_region` VALUES ('2773', '324', '若尔盖县', '3');
INSERT INTO `t_region` VALUES ('2774', '324', '红原县', '3');
INSERT INTO `t_region` VALUES ('2775', '325', '巴州区', '3');
INSERT INTO `t_region` VALUES ('2776', '325', '通江县', '3');
INSERT INTO `t_region` VALUES ('2777', '325', '南江县', '3');
INSERT INTO `t_region` VALUES ('2778', '325', '平昌县', '3');
INSERT INTO `t_region` VALUES ('2779', '326', '通川区', '3');
INSERT INTO `t_region` VALUES ('2780', '326', '万源市', '3');
INSERT INTO `t_region` VALUES ('2781', '326', '达县', '3');
INSERT INTO `t_region` VALUES ('2782', '326', '宣汉县', '3');
INSERT INTO `t_region` VALUES ('2783', '326', '开江县', '3');
INSERT INTO `t_region` VALUES ('2784', '326', '大竹县', '3');
INSERT INTO `t_region` VALUES ('2785', '326', '渠县', '3');
INSERT INTO `t_region` VALUES ('2786', '327', '旌阳区', '3');
INSERT INTO `t_region` VALUES ('2787', '327', '广汉市', '3');
INSERT INTO `t_region` VALUES ('2788', '327', '什邡市', '3');
INSERT INTO `t_region` VALUES ('2789', '327', '绵竹市', '3');
INSERT INTO `t_region` VALUES ('2790', '327', '罗江县', '3');
INSERT INTO `t_region` VALUES ('2791', '327', '中江县', '3');
INSERT INTO `t_region` VALUES ('2792', '328', '康定县', '3');
INSERT INTO `t_region` VALUES ('2793', '328', '丹巴县', '3');
INSERT INTO `t_region` VALUES ('2794', '328', '泸定县', '3');
INSERT INTO `t_region` VALUES ('2795', '328', '炉霍县', '3');
INSERT INTO `t_region` VALUES ('2796', '328', '九龙县', '3');
INSERT INTO `t_region` VALUES ('2797', '328', '甘孜县', '3');
INSERT INTO `t_region` VALUES ('2798', '328', '雅江县', '3');
INSERT INTO `t_region` VALUES ('2799', '328', '新龙县', '3');
INSERT INTO `t_region` VALUES ('2800', '328', '道孚县', '3');
INSERT INTO `t_region` VALUES ('2801', '328', '白玉县', '3');
INSERT INTO `t_region` VALUES ('2802', '328', '理塘县', '3');
INSERT INTO `t_region` VALUES ('2803', '328', '德格县', '3');
INSERT INTO `t_region` VALUES ('2804', '328', '乡城县', '3');
INSERT INTO `t_region` VALUES ('2805', '328', '石渠县', '3');
INSERT INTO `t_region` VALUES ('2806', '328', '稻城县', '3');
INSERT INTO `t_region` VALUES ('2807', '328', '色达县', '3');
INSERT INTO `t_region` VALUES ('2808', '328', '巴塘县', '3');
INSERT INTO `t_region` VALUES ('2809', '328', '得荣县', '3');
INSERT INTO `t_region` VALUES ('2810', '329', '广安区', '3');
INSERT INTO `t_region` VALUES ('2811', '329', '华蓥市', '3');
INSERT INTO `t_region` VALUES ('2812', '329', '岳池县', '3');
INSERT INTO `t_region` VALUES ('2813', '329', '武胜县', '3');
INSERT INTO `t_region` VALUES ('2814', '329', '邻水县', '3');
INSERT INTO `t_region` VALUES ('2815', '330', '利州区', '3');
INSERT INTO `t_region` VALUES ('2816', '330', '元坝区', '3');
INSERT INTO `t_region` VALUES ('2817', '330', '朝天区', '3');
INSERT INTO `t_region` VALUES ('2818', '330', '旺苍县', '3');
INSERT INTO `t_region` VALUES ('2819', '330', '青川县', '3');
INSERT INTO `t_region` VALUES ('2820', '330', '剑阁县', '3');
INSERT INTO `t_region` VALUES ('2821', '330', '苍溪县', '3');
INSERT INTO `t_region` VALUES ('2822', '331', '峨眉山市', '3');
INSERT INTO `t_region` VALUES ('2823', '331', '乐山市', '3');
INSERT INTO `t_region` VALUES ('2824', '331', '犍为县', '3');
INSERT INTO `t_region` VALUES ('2825', '331', '井研县', '3');
INSERT INTO `t_region` VALUES ('2826', '331', '夹江县', '3');
INSERT INTO `t_region` VALUES ('2827', '331', '沐川县', '3');
INSERT INTO `t_region` VALUES ('2828', '331', '峨边', '3');
INSERT INTO `t_region` VALUES ('2829', '331', '马边', '3');
INSERT INTO `t_region` VALUES ('2830', '332', '西昌市', '3');
INSERT INTO `t_region` VALUES ('2831', '332', '盐源县', '3');
INSERT INTO `t_region` VALUES ('2832', '332', '德昌县', '3');
INSERT INTO `t_region` VALUES ('2833', '332', '会理县', '3');
INSERT INTO `t_region` VALUES ('2834', '332', '会东县', '3');
INSERT INTO `t_region` VALUES ('2835', '332', '宁南县', '3');
INSERT INTO `t_region` VALUES ('2836', '332', '普格县', '3');
INSERT INTO `t_region` VALUES ('2837', '332', '布拖县', '3');
INSERT INTO `t_region` VALUES ('2838', '332', '金阳县', '3');
INSERT INTO `t_region` VALUES ('2839', '332', '昭觉县', '3');
INSERT INTO `t_region` VALUES ('2840', '332', '喜德县', '3');
INSERT INTO `t_region` VALUES ('2841', '332', '冕宁县', '3');
INSERT INTO `t_region` VALUES ('2842', '332', '越西县', '3');
INSERT INTO `t_region` VALUES ('2843', '332', '甘洛县', '3');
INSERT INTO `t_region` VALUES ('2844', '332', '美姑县', '3');
INSERT INTO `t_region` VALUES ('2845', '332', '雷波县', '3');
INSERT INTO `t_region` VALUES ('2846', '332', '木里', '3');
INSERT INTO `t_region` VALUES ('2847', '333', '东坡区', '3');
INSERT INTO `t_region` VALUES ('2848', '333', '仁寿县', '3');
INSERT INTO `t_region` VALUES ('2849', '333', '彭山县', '3');
INSERT INTO `t_region` VALUES ('2850', '333', '洪雅县', '3');
INSERT INTO `t_region` VALUES ('2851', '333', '丹棱县', '3');
INSERT INTO `t_region` VALUES ('2852', '333', '青神县', '3');
INSERT INTO `t_region` VALUES ('2853', '334', '阆中市', '3');
INSERT INTO `t_region` VALUES ('2854', '334', '南部县', '3');
INSERT INTO `t_region` VALUES ('2855', '334', '营山县', '3');
INSERT INTO `t_region` VALUES ('2856', '334', '蓬安县', '3');
INSERT INTO `t_region` VALUES ('2857', '334', '仪陇县', '3');
INSERT INTO `t_region` VALUES ('2858', '334', '顺庆区', '3');
INSERT INTO `t_region` VALUES ('2859', '334', '高坪区', '3');
INSERT INTO `t_region` VALUES ('2860', '334', '嘉陵区', '3');
INSERT INTO `t_region` VALUES ('2861', '334', '西充县', '3');
INSERT INTO `t_region` VALUES ('2862', '335', '市中区', '3');
INSERT INTO `t_region` VALUES ('2863', '335', '东兴区', '3');
INSERT INTO `t_region` VALUES ('2864', '335', '威远县', '3');
INSERT INTO `t_region` VALUES ('2865', '335', '资中县', '3');
INSERT INTO `t_region` VALUES ('2866', '335', '隆昌县', '3');
INSERT INTO `t_region` VALUES ('2867', '336', '东  区', '3');
INSERT INTO `t_region` VALUES ('2868', '336', '西  区', '3');
INSERT INTO `t_region` VALUES ('2869', '336', '仁和区', '3');
INSERT INTO `t_region` VALUES ('2870', '336', '米易县', '3');
INSERT INTO `t_region` VALUES ('2871', '336', '盐边县', '3');
INSERT INTO `t_region` VALUES ('2872', '337', '船山区', '3');
INSERT INTO `t_region` VALUES ('2873', '337', '安居区', '3');
INSERT INTO `t_region` VALUES ('2874', '337', '蓬溪县', '3');
INSERT INTO `t_region` VALUES ('2875', '337', '射洪县', '3');
INSERT INTO `t_region` VALUES ('2876', '337', '大英县', '3');
INSERT INTO `t_region` VALUES ('2877', '338', '雨城区', '3');
INSERT INTO `t_region` VALUES ('2878', '338', '名山县', '3');
INSERT INTO `t_region` VALUES ('2879', '338', '荥经县', '3');
INSERT INTO `t_region` VALUES ('2880', '338', '汉源县', '3');
INSERT INTO `t_region` VALUES ('2881', '338', '石棉县', '3');
INSERT INTO `t_region` VALUES ('2882', '338', '天全县', '3');
INSERT INTO `t_region` VALUES ('2883', '338', '芦山县', '3');
INSERT INTO `t_region` VALUES ('2884', '338', '宝兴县', '3');
INSERT INTO `t_region` VALUES ('2885', '339', '翠屏区', '3');
INSERT INTO `t_region` VALUES ('2886', '339', '宜宾县', '3');
INSERT INTO `t_region` VALUES ('2887', '339', '南溪县', '3');
INSERT INTO `t_region` VALUES ('2888', '339', '江安县', '3');
INSERT INTO `t_region` VALUES ('2889', '339', '长宁县', '3');
INSERT INTO `t_region` VALUES ('2890', '339', '高县', '3');
INSERT INTO `t_region` VALUES ('2891', '339', '珙县', '3');
INSERT INTO `t_region` VALUES ('2892', '339', '筠连县', '3');
INSERT INTO `t_region` VALUES ('2893', '339', '兴文县', '3');
INSERT INTO `t_region` VALUES ('2894', '339', '屏山县', '3');
INSERT INTO `t_region` VALUES ('2895', '340', '雁江区', '3');
INSERT INTO `t_region` VALUES ('2896', '340', '简阳市', '3');
INSERT INTO `t_region` VALUES ('2897', '340', '安岳县', '3');
INSERT INTO `t_region` VALUES ('2898', '340', '乐至县', '3');
INSERT INTO `t_region` VALUES ('2899', '341', '大安区', '3');
INSERT INTO `t_region` VALUES ('2900', '341', '自流井区', '3');
INSERT INTO `t_region` VALUES ('2901', '341', '贡井区', '3');
INSERT INTO `t_region` VALUES ('2902', '341', '沿滩区', '3');
INSERT INTO `t_region` VALUES ('2903', '341', '荣县', '3');
INSERT INTO `t_region` VALUES ('2904', '341', '富顺县', '3');
INSERT INTO `t_region` VALUES ('2905', '342', '江阳区', '3');
INSERT INTO `t_region` VALUES ('2906', '342', '纳溪区', '3');
INSERT INTO `t_region` VALUES ('2907', '342', '龙马潭区', '3');
INSERT INTO `t_region` VALUES ('2908', '342', '泸县', '3');
INSERT INTO `t_region` VALUES ('2909', '342', '合江县', '3');
INSERT INTO `t_region` VALUES ('2910', '342', '叙永县', '3');
INSERT INTO `t_region` VALUES ('2911', '342', '古蔺县', '3');
INSERT INTO `t_region` VALUES ('2912', '343', '和平区', '3');
INSERT INTO `t_region` VALUES ('2913', '343', '河西区', '3');
INSERT INTO `t_region` VALUES ('2914', '343', '南开区', '3');
INSERT INTO `t_region` VALUES ('2915', '343', '河北区', '3');
INSERT INTO `t_region` VALUES ('2916', '343', '河东区', '3');
INSERT INTO `t_region` VALUES ('2917', '343', '红桥区', '3');
INSERT INTO `t_region` VALUES ('2918', '343', '东丽区', '3');
INSERT INTO `t_region` VALUES ('2919', '343', '津南区', '3');
INSERT INTO `t_region` VALUES ('2920', '343', '西青区', '3');
INSERT INTO `t_region` VALUES ('2921', '343', '北辰区', '3');
INSERT INTO `t_region` VALUES ('2922', '343', '塘沽区', '3');
INSERT INTO `t_region` VALUES ('2923', '343', '汉沽区', '3');
INSERT INTO `t_region` VALUES ('2924', '343', '大港区', '3');
INSERT INTO `t_region` VALUES ('2925', '343', '武清区', '3');
INSERT INTO `t_region` VALUES ('2926', '343', '宝坻区', '3');
INSERT INTO `t_region` VALUES ('2927', '343', '经济开发区', '3');
INSERT INTO `t_region` VALUES ('2928', '343', '宁河县', '3');
INSERT INTO `t_region` VALUES ('2929', '343', '静海县', '3');
INSERT INTO `t_region` VALUES ('2930', '343', '蓟县', '3');
INSERT INTO `t_region` VALUES ('2931', '344', '城关区', '3');
INSERT INTO `t_region` VALUES ('2932', '344', '林周县', '3');
INSERT INTO `t_region` VALUES ('2933', '344', '当雄县', '3');
INSERT INTO `t_region` VALUES ('2934', '344', '尼木县', '3');
INSERT INTO `t_region` VALUES ('2935', '344', '曲水县', '3');
INSERT INTO `t_region` VALUES ('2936', '344', '堆龙德庆县', '3');
INSERT INTO `t_region` VALUES ('2937', '344', '达孜县', '3');
INSERT INTO `t_region` VALUES ('2938', '344', '墨竹工卡县', '3');
INSERT INTO `t_region` VALUES ('2939', '345', '噶尔县', '3');
INSERT INTO `t_region` VALUES ('2940', '345', '普兰县', '3');
INSERT INTO `t_region` VALUES ('2941', '345', '札达县', '3');
INSERT INTO `t_region` VALUES ('2942', '345', '日土县', '3');
INSERT INTO `t_region` VALUES ('2943', '345', '革吉县', '3');
INSERT INTO `t_region` VALUES ('2944', '345', '改则县', '3');
INSERT INTO `t_region` VALUES ('2945', '345', '措勤县', '3');
INSERT INTO `t_region` VALUES ('2946', '346', '昌都县', '3');
INSERT INTO `t_region` VALUES ('2947', '346', '江达县', '3');
INSERT INTO `t_region` VALUES ('2948', '346', '贡觉县', '3');
INSERT INTO `t_region` VALUES ('2949', '346', '类乌齐县', '3');
INSERT INTO `t_region` VALUES ('2950', '346', '丁青县', '3');
INSERT INTO `t_region` VALUES ('2951', '346', '察雅县', '3');
INSERT INTO `t_region` VALUES ('2952', '346', '八宿县', '3');
INSERT INTO `t_region` VALUES ('2953', '346', '左贡县', '3');
INSERT INTO `t_region` VALUES ('2954', '346', '芒康县', '3');
INSERT INTO `t_region` VALUES ('2955', '346', '洛隆县', '3');
INSERT INTO `t_region` VALUES ('2956', '346', '边坝县', '3');
INSERT INTO `t_region` VALUES ('2957', '347', '林芝县', '3');
INSERT INTO `t_region` VALUES ('2958', '347', '工布江达县', '3');
INSERT INTO `t_region` VALUES ('2959', '347', '米林县', '3');
INSERT INTO `t_region` VALUES ('2960', '347', '墨脱县', '3');
INSERT INTO `t_region` VALUES ('2961', '347', '波密县', '3');
INSERT INTO `t_region` VALUES ('2962', '347', '察隅县', '3');
INSERT INTO `t_region` VALUES ('2963', '347', '朗县', '3');
INSERT INTO `t_region` VALUES ('2964', '348', '那曲县', '3');
INSERT INTO `t_region` VALUES ('2965', '348', '嘉黎县', '3');
INSERT INTO `t_region` VALUES ('2966', '348', '比如县', '3');
INSERT INTO `t_region` VALUES ('2967', '348', '聂荣县', '3');
INSERT INTO `t_region` VALUES ('2968', '348', '安多县', '3');
INSERT INTO `t_region` VALUES ('2969', '348', '申扎县', '3');
INSERT INTO `t_region` VALUES ('2970', '348', '索县', '3');
INSERT INTO `t_region` VALUES ('2971', '348', '班戈县', '3');
INSERT INTO `t_region` VALUES ('2972', '348', '巴青县', '3');
INSERT INTO `t_region` VALUES ('2973', '348', '尼玛县', '3');
INSERT INTO `t_region` VALUES ('2974', '349', '日喀则市', '3');
INSERT INTO `t_region` VALUES ('2975', '349', '南木林县', '3');
INSERT INTO `t_region` VALUES ('2976', '349', '江孜县', '3');
INSERT INTO `t_region` VALUES ('2977', '349', '定日县', '3');
INSERT INTO `t_region` VALUES ('2978', '349', '萨迦县', '3');
INSERT INTO `t_region` VALUES ('2979', '349', '拉孜县', '3');
INSERT INTO `t_region` VALUES ('2980', '349', '昂仁县', '3');
INSERT INTO `t_region` VALUES ('2981', '349', '谢通门县', '3');
INSERT INTO `t_region` VALUES ('2982', '349', '白朗县', '3');
INSERT INTO `t_region` VALUES ('2983', '349', '仁布县', '3');
INSERT INTO `t_region` VALUES ('2984', '349', '康马县', '3');
INSERT INTO `t_region` VALUES ('2985', '349', '定结县', '3');
INSERT INTO `t_region` VALUES ('2986', '349', '仲巴县', '3');
INSERT INTO `t_region` VALUES ('2987', '349', '亚东县', '3');
INSERT INTO `t_region` VALUES ('2988', '349', '吉隆县', '3');
INSERT INTO `t_region` VALUES ('2989', '349', '聂拉木县', '3');
INSERT INTO `t_region` VALUES ('2990', '349', '萨嘎县', '3');
INSERT INTO `t_region` VALUES ('2991', '349', '岗巴县', '3');
INSERT INTO `t_region` VALUES ('2992', '350', '乃东县', '3');
INSERT INTO `t_region` VALUES ('2993', '350', '扎囊县', '3');
INSERT INTO `t_region` VALUES ('2994', '350', '贡嘎县', '3');
INSERT INTO `t_region` VALUES ('2995', '350', '桑日县', '3');
INSERT INTO `t_region` VALUES ('2996', '350', '琼结县', '3');
INSERT INTO `t_region` VALUES ('2997', '350', '曲松县', '3');
INSERT INTO `t_region` VALUES ('2998', '350', '措美县', '3');
INSERT INTO `t_region` VALUES ('2999', '350', '洛扎县', '3');
INSERT INTO `t_region` VALUES ('3000', '350', '加查县', '3');
INSERT INTO `t_region` VALUES ('3001', '350', '隆子县', '3');
INSERT INTO `t_region` VALUES ('3002', '350', '错那县', '3');
INSERT INTO `t_region` VALUES ('3003', '350', '浪卡子县', '3');
INSERT INTO `t_region` VALUES ('3004', '351', '天山区', '3');
INSERT INTO `t_region` VALUES ('3005', '351', '沙依巴克区', '3');
INSERT INTO `t_region` VALUES ('3006', '351', '新市区', '3');
INSERT INTO `t_region` VALUES ('3007', '351', '水磨沟区', '3');
INSERT INTO `t_region` VALUES ('3008', '351', '头屯河区', '3');
INSERT INTO `t_region` VALUES ('3009', '351', '达坂城区', '3');
INSERT INTO `t_region` VALUES ('3010', '351', '米东区', '3');
INSERT INTO `t_region` VALUES ('3011', '351', '乌鲁木齐县', '3');
INSERT INTO `t_region` VALUES ('3012', '352', '阿克苏市', '3');
INSERT INTO `t_region` VALUES ('3013', '352', '温宿县', '3');
INSERT INTO `t_region` VALUES ('3014', '352', '库车县', '3');
INSERT INTO `t_region` VALUES ('3015', '352', '沙雅县', '3');
INSERT INTO `t_region` VALUES ('3016', '352', '新和县', '3');
INSERT INTO `t_region` VALUES ('3017', '352', '拜城县', '3');
INSERT INTO `t_region` VALUES ('3018', '352', '乌什县', '3');
INSERT INTO `t_region` VALUES ('3019', '352', '阿瓦提县', '3');
INSERT INTO `t_region` VALUES ('3020', '352', '柯坪县', '3');
INSERT INTO `t_region` VALUES ('3021', '353', '阿拉尔市', '3');
INSERT INTO `t_region` VALUES ('3022', '354', '库尔勒市', '3');
INSERT INTO `t_region` VALUES ('3023', '354', '轮台县', '3');
INSERT INTO `t_region` VALUES ('3024', '354', '尉犁县', '3');
INSERT INTO `t_region` VALUES ('3025', '354', '若羌县', '3');
INSERT INTO `t_region` VALUES ('3026', '354', '且末县', '3');
INSERT INTO `t_region` VALUES ('3027', '354', '焉耆', '3');
INSERT INTO `t_region` VALUES ('3028', '354', '和静县', '3');
INSERT INTO `t_region` VALUES ('3029', '354', '和硕县', '3');
INSERT INTO `t_region` VALUES ('3030', '354', '博湖县', '3');
INSERT INTO `t_region` VALUES ('3031', '355', '博乐市', '3');
INSERT INTO `t_region` VALUES ('3032', '355', '精河县', '3');
INSERT INTO `t_region` VALUES ('3033', '355', '温泉县', '3');
INSERT INTO `t_region` VALUES ('3034', '356', '呼图壁县', '3');
INSERT INTO `t_region` VALUES ('3035', '356', '米泉市', '3');
INSERT INTO `t_region` VALUES ('3036', '356', '昌吉市', '3');
INSERT INTO `t_region` VALUES ('3037', '356', '阜康市', '3');
INSERT INTO `t_region` VALUES ('3038', '356', '玛纳斯县', '3');
INSERT INTO `t_region` VALUES ('3039', '356', '奇台县', '3');
INSERT INTO `t_region` VALUES ('3040', '356', '吉木萨尔县', '3');
INSERT INTO `t_region` VALUES ('3041', '356', '木垒', '3');
INSERT INTO `t_region` VALUES ('3042', '357', '哈密市', '3');
INSERT INTO `t_region` VALUES ('3043', '357', '伊吾县', '3');
INSERT INTO `t_region` VALUES ('3044', '357', '巴里坤', '3');
INSERT INTO `t_region` VALUES ('3045', '358', '和田市', '3');
INSERT INTO `t_region` VALUES ('3046', '358', '和田县', '3');
INSERT INTO `t_region` VALUES ('3047', '358', '墨玉县', '3');
INSERT INTO `t_region` VALUES ('3048', '358', '皮山县', '3');
INSERT INTO `t_region` VALUES ('3049', '358', '洛浦县', '3');
INSERT INTO `t_region` VALUES ('3050', '358', '策勒县', '3');
INSERT INTO `t_region` VALUES ('3051', '358', '于田县', '3');
INSERT INTO `t_region` VALUES ('3052', '358', '民丰县', '3');
INSERT INTO `t_region` VALUES ('3053', '359', '喀什市', '3');
INSERT INTO `t_region` VALUES ('3054', '359', '疏附县', '3');
INSERT INTO `t_region` VALUES ('3055', '359', '疏勒县', '3');
INSERT INTO `t_region` VALUES ('3056', '359', '英吉沙县', '3');
INSERT INTO `t_region` VALUES ('3057', '359', '泽普县', '3');
INSERT INTO `t_region` VALUES ('3058', '359', '莎车县', '3');
INSERT INTO `t_region` VALUES ('3059', '359', '叶城县', '3');
INSERT INTO `t_region` VALUES ('3060', '359', '麦盖提县', '3');
INSERT INTO `t_region` VALUES ('3061', '359', '岳普湖县', '3');
INSERT INTO `t_region` VALUES ('3062', '359', '伽师县', '3');
INSERT INTO `t_region` VALUES ('3063', '359', '巴楚县', '3');
INSERT INTO `t_region` VALUES ('3064', '359', '塔什库尔干', '3');
INSERT INTO `t_region` VALUES ('3065', '360', '克拉玛依市', '3');
INSERT INTO `t_region` VALUES ('3066', '361', '阿图什市', '3');
INSERT INTO `t_region` VALUES ('3067', '361', '阿克陶县', '3');
INSERT INTO `t_region` VALUES ('3068', '361', '阿合奇县', '3');
INSERT INTO `t_region` VALUES ('3069', '361', '乌恰县', '3');
INSERT INTO `t_region` VALUES ('3070', '362', '石河子市', '3');
INSERT INTO `t_region` VALUES ('3071', '363', '图木舒克市', '3');
INSERT INTO `t_region` VALUES ('3072', '364', '吐鲁番市', '3');
INSERT INTO `t_region` VALUES ('3073', '364', '鄯善县', '3');
INSERT INTO `t_region` VALUES ('3074', '364', '托克逊县', '3');
INSERT INTO `t_region` VALUES ('3075', '365', '五家渠市', '3');
INSERT INTO `t_region` VALUES ('3076', '366', '阿勒泰市', '3');
INSERT INTO `t_region` VALUES ('3077', '366', '布克赛尔', '3');
INSERT INTO `t_region` VALUES ('3078', '366', '伊宁市', '3');
INSERT INTO `t_region` VALUES ('3079', '366', '布尔津县', '3');
INSERT INTO `t_region` VALUES ('3080', '366', '奎屯市', '3');
INSERT INTO `t_region` VALUES ('3081', '366', '乌苏市', '3');
INSERT INTO `t_region` VALUES ('3082', '366', '额敏县', '3');
INSERT INTO `t_region` VALUES ('3083', '366', '富蕴县', '3');
INSERT INTO `t_region` VALUES ('3084', '366', '伊宁县', '3');
INSERT INTO `t_region` VALUES ('3085', '366', '福海县', '3');
INSERT INTO `t_region` VALUES ('3086', '366', '霍城县', '3');
INSERT INTO `t_region` VALUES ('3087', '366', '沙湾县', '3');
INSERT INTO `t_region` VALUES ('3088', '366', '巩留县', '3');
INSERT INTO `t_region` VALUES ('3089', '366', '哈巴河县', '3');
INSERT INTO `t_region` VALUES ('3090', '366', '托里县', '3');
INSERT INTO `t_region` VALUES ('3091', '366', '青河县', '3');
INSERT INTO `t_region` VALUES ('3092', '366', '新源县', '3');
INSERT INTO `t_region` VALUES ('3093', '366', '裕民县', '3');
INSERT INTO `t_region` VALUES ('3094', '366', '和布克赛尔', '3');
INSERT INTO `t_region` VALUES ('3095', '366', '吉木乃县', '3');
INSERT INTO `t_region` VALUES ('3096', '366', '昭苏县', '3');
INSERT INTO `t_region` VALUES ('3097', '366', '特克斯县', '3');
INSERT INTO `t_region` VALUES ('3098', '366', '尼勒克县', '3');
INSERT INTO `t_region` VALUES ('3099', '366', '察布查尔', '3');
INSERT INTO `t_region` VALUES ('3100', '367', '盘龙区', '3');
INSERT INTO `t_region` VALUES ('3101', '367', '五华区', '3');
INSERT INTO `t_region` VALUES ('3102', '367', '官渡区', '3');
INSERT INTO `t_region` VALUES ('3103', '367', '西山区', '3');
INSERT INTO `t_region` VALUES ('3104', '367', '东川区', '3');
INSERT INTO `t_region` VALUES ('3105', '367', '安宁市', '3');
INSERT INTO `t_region` VALUES ('3106', '367', '呈贡县', '3');
INSERT INTO `t_region` VALUES ('3107', '367', '晋宁县', '3');
INSERT INTO `t_region` VALUES ('3108', '367', '富民县', '3');
INSERT INTO `t_region` VALUES ('3109', '367', '宜良县', '3');
INSERT INTO `t_region` VALUES ('3110', '367', '嵩明县', '3');
INSERT INTO `t_region` VALUES ('3111', '367', '石林县', '3');
INSERT INTO `t_region` VALUES ('3112', '367', '禄劝', '3');
INSERT INTO `t_region` VALUES ('3113', '367', '寻甸', '3');
INSERT INTO `t_region` VALUES ('3114', '368', '兰坪', '3');
INSERT INTO `t_region` VALUES ('3115', '368', '泸水县', '3');
INSERT INTO `t_region` VALUES ('3116', '368', '福贡县', '3');
INSERT INTO `t_region` VALUES ('3117', '368', '贡山', '3');
INSERT INTO `t_region` VALUES ('3118', '369', '宁洱', '3');
INSERT INTO `t_region` VALUES ('3119', '369', '思茅区', '3');
INSERT INTO `t_region` VALUES ('3120', '369', '墨江', '3');
INSERT INTO `t_region` VALUES ('3121', '369', '景东', '3');
INSERT INTO `t_region` VALUES ('3122', '369', '景谷', '3');
INSERT INTO `t_region` VALUES ('3123', '369', '镇沅', '3');
INSERT INTO `t_region` VALUES ('3124', '369', '江城', '3');
INSERT INTO `t_region` VALUES ('3125', '369', '孟连', '3');
INSERT INTO `t_region` VALUES ('3126', '369', '澜沧', '3');
INSERT INTO `t_region` VALUES ('3127', '369', '西盟', '3');
INSERT INTO `t_region` VALUES ('3128', '370', '古城区', '3');
INSERT INTO `t_region` VALUES ('3129', '370', '宁蒗', '3');
INSERT INTO `t_region` VALUES ('3130', '370', '玉龙', '3');
INSERT INTO `t_region` VALUES ('3131', '370', '永胜县', '3');
INSERT INTO `t_region` VALUES ('3132', '370', '华坪县', '3');
INSERT INTO `t_region` VALUES ('3133', '371', '隆阳区', '3');
INSERT INTO `t_region` VALUES ('3134', '371', '施甸县', '3');
INSERT INTO `t_region` VALUES ('3135', '371', '腾冲县', '3');
INSERT INTO `t_region` VALUES ('3136', '371', '龙陵县', '3');
INSERT INTO `t_region` VALUES ('3137', '371', '昌宁县', '3');
INSERT INTO `t_region` VALUES ('3138', '372', '楚雄市', '3');
INSERT INTO `t_region` VALUES ('3139', '372', '双柏县', '3');
INSERT INTO `t_region` VALUES ('3140', '372', '牟定县', '3');
INSERT INTO `t_region` VALUES ('3141', '372', '南华县', '3');
INSERT INTO `t_region` VALUES ('3142', '372', '姚安县', '3');
INSERT INTO `t_region` VALUES ('3143', '372', '大姚县', '3');
INSERT INTO `t_region` VALUES ('3144', '372', '永仁县', '3');
INSERT INTO `t_region` VALUES ('3145', '372', '元谋县', '3');
INSERT INTO `t_region` VALUES ('3146', '372', '武定县', '3');
INSERT INTO `t_region` VALUES ('3147', '372', '禄丰县', '3');
INSERT INTO `t_region` VALUES ('3148', '373', '大理市', '3');
INSERT INTO `t_region` VALUES ('3149', '373', '祥云县', '3');
INSERT INTO `t_region` VALUES ('3150', '373', '宾川县', '3');
INSERT INTO `t_region` VALUES ('3151', '373', '弥渡县', '3');
INSERT INTO `t_region` VALUES ('3152', '373', '永平县', '3');
INSERT INTO `t_region` VALUES ('3153', '373', '云龙县', '3');
INSERT INTO `t_region` VALUES ('3154', '373', '洱源县', '3');
INSERT INTO `t_region` VALUES ('3155', '373', '剑川县', '3');
INSERT INTO `t_region` VALUES ('3156', '373', '鹤庆县', '3');
INSERT INTO `t_region` VALUES ('3157', '373', '漾濞', '3');
INSERT INTO `t_region` VALUES ('3158', '373', '南涧', '3');
INSERT INTO `t_region` VALUES ('3159', '373', '巍山', '3');
INSERT INTO `t_region` VALUES ('3160', '374', '潞西市', '3');
INSERT INTO `t_region` VALUES ('3161', '374', '瑞丽市', '3');
INSERT INTO `t_region` VALUES ('3162', '374', '梁河县', '3');
INSERT INTO `t_region` VALUES ('3163', '374', '盈江县', '3');
INSERT INTO `t_region` VALUES ('3164', '374', '陇川县', '3');
INSERT INTO `t_region` VALUES ('3165', '375', '香格里拉县', '3');
INSERT INTO `t_region` VALUES ('3166', '375', '德钦县', '3');
INSERT INTO `t_region` VALUES ('3167', '375', '维西', '3');
INSERT INTO `t_region` VALUES ('3168', '376', '泸西县', '3');
INSERT INTO `t_region` VALUES ('3169', '376', '蒙自县', '3');
INSERT INTO `t_region` VALUES ('3170', '376', '个旧市', '3');
INSERT INTO `t_region` VALUES ('3171', '376', '开远市', '3');
INSERT INTO `t_region` VALUES ('3172', '376', '绿春县', '3');
INSERT INTO `t_region` VALUES ('3173', '376', '建水县', '3');
INSERT INTO `t_region` VALUES ('3174', '376', '石屏县', '3');
INSERT INTO `t_region` VALUES ('3175', '376', '弥勒县', '3');
INSERT INTO `t_region` VALUES ('3176', '376', '元阳县', '3');
INSERT INTO `t_region` VALUES ('3177', '376', '红河县', '3');
INSERT INTO `t_region` VALUES ('3178', '376', '金平', '3');
INSERT INTO `t_region` VALUES ('3179', '376', '河口', '3');
INSERT INTO `t_region` VALUES ('3180', '376', '屏边', '3');
INSERT INTO `t_region` VALUES ('3181', '377', '临翔区', '3');
INSERT INTO `t_region` VALUES ('3182', '377', '凤庆县', '3');
INSERT INTO `t_region` VALUES ('3183', '377', '云县', '3');
INSERT INTO `t_region` VALUES ('3184', '377', '永德县', '3');
INSERT INTO `t_region` VALUES ('3185', '377', '镇康县', '3');
INSERT INTO `t_region` VALUES ('3186', '377', '双江', '3');
INSERT INTO `t_region` VALUES ('3187', '377', '耿马', '3');
INSERT INTO `t_region` VALUES ('3188', '377', '沧源', '3');
INSERT INTO `t_region` VALUES ('3189', '378', '麒麟区', '3');
INSERT INTO `t_region` VALUES ('3190', '378', '宣威市', '3');
INSERT INTO `t_region` VALUES ('3191', '378', '马龙县', '3');
INSERT INTO `t_region` VALUES ('3192', '378', '陆良县', '3');
INSERT INTO `t_region` VALUES ('3193', '378', '师宗县', '3');
INSERT INTO `t_region` VALUES ('3194', '378', '罗平县', '3');
INSERT INTO `t_region` VALUES ('3195', '378', '富源县', '3');
INSERT INTO `t_region` VALUES ('3196', '378', '会泽县', '3');
INSERT INTO `t_region` VALUES ('3197', '378', '沾益县', '3');
INSERT INTO `t_region` VALUES ('3198', '379', '文山县', '3');
INSERT INTO `t_region` VALUES ('3199', '379', '砚山县', '3');
INSERT INTO `t_region` VALUES ('3200', '379', '西畴县', '3');
INSERT INTO `t_region` VALUES ('3201', '379', '麻栗坡县', '3');
INSERT INTO `t_region` VALUES ('3202', '379', '马关县', '3');
INSERT INTO `t_region` VALUES ('3203', '379', '丘北县', '3');
INSERT INTO `t_region` VALUES ('3204', '379', '广南县', '3');
INSERT INTO `t_region` VALUES ('3205', '379', '富宁县', '3');
INSERT INTO `t_region` VALUES ('3206', '380', '景洪市', '3');
INSERT INTO `t_region` VALUES ('3207', '380', '勐海县', '3');
INSERT INTO `t_region` VALUES ('3208', '380', '勐腊县', '3');
INSERT INTO `t_region` VALUES ('3209', '381', '红塔区', '3');
INSERT INTO `t_region` VALUES ('3210', '381', '江川县', '3');
INSERT INTO `t_region` VALUES ('3211', '381', '澄江县', '3');
INSERT INTO `t_region` VALUES ('3212', '381', '通海县', '3');
INSERT INTO `t_region` VALUES ('3213', '381', '华宁县', '3');
INSERT INTO `t_region` VALUES ('3214', '381', '易门县', '3');
INSERT INTO `t_region` VALUES ('3215', '381', '峨山', '3');
INSERT INTO `t_region` VALUES ('3216', '381', '新平', '3');
INSERT INTO `t_region` VALUES ('3217', '381', '元江', '3');
INSERT INTO `t_region` VALUES ('3218', '382', '昭阳区', '3');
INSERT INTO `t_region` VALUES ('3219', '382', '鲁甸县', '3');
INSERT INTO `t_region` VALUES ('3220', '382', '巧家县', '3');
INSERT INTO `t_region` VALUES ('3221', '382', '盐津县', '3');
INSERT INTO `t_region` VALUES ('3222', '382', '大关县', '3');
INSERT INTO `t_region` VALUES ('3223', '382', '永善县', '3');
INSERT INTO `t_region` VALUES ('3224', '382', '绥江县', '3');
INSERT INTO `t_region` VALUES ('3225', '382', '镇雄县', '3');
INSERT INTO `t_region` VALUES ('3226', '382', '彝良县', '3');
INSERT INTO `t_region` VALUES ('3227', '382', '威信县', '3');
INSERT INTO `t_region` VALUES ('3228', '382', '水富县', '3');
INSERT INTO `t_region` VALUES ('3229', '383', '西湖区', '3');
INSERT INTO `t_region` VALUES ('3230', '383', '上城区', '3');
INSERT INTO `t_region` VALUES ('3231', '383', '下城区', '3');
INSERT INTO `t_region` VALUES ('3232', '383', '拱墅区', '3');
INSERT INTO `t_region` VALUES ('3233', '383', '滨江区', '3');
INSERT INTO `t_region` VALUES ('3234', '383', '江干区', '3');
INSERT INTO `t_region` VALUES ('3235', '383', '萧山区', '3');
INSERT INTO `t_region` VALUES ('3236', '383', '余杭区', '3');
INSERT INTO `t_region` VALUES ('3237', '383', '市郊', '3');
INSERT INTO `t_region` VALUES ('3238', '383', '建德市', '3');
INSERT INTO `t_region` VALUES ('3239', '383', '富阳市', '3');
INSERT INTO `t_region` VALUES ('3240', '383', '临安市', '3');
INSERT INTO `t_region` VALUES ('3241', '383', '桐庐县', '3');
INSERT INTO `t_region` VALUES ('3242', '383', '淳安县', '3');
INSERT INTO `t_region` VALUES ('3243', '384', '吴兴区', '3');
INSERT INTO `t_region` VALUES ('3244', '384', '南浔区', '3');
INSERT INTO `t_region` VALUES ('3245', '384', '德清县', '3');
INSERT INTO `t_region` VALUES ('3246', '384', '长兴县', '3');
INSERT INTO `t_region` VALUES ('3247', '384', '安吉县', '3');
INSERT INTO `t_region` VALUES ('3248', '385', '南湖区', '3');
INSERT INTO `t_region` VALUES ('3249', '385', '秀洲区', '3');
INSERT INTO `t_region` VALUES ('3250', '385', '海宁市', '3');
INSERT INTO `t_region` VALUES ('3251', '385', '嘉善县', '3');
INSERT INTO `t_region` VALUES ('3252', '385', '平湖市', '3');
INSERT INTO `t_region` VALUES ('3253', '385', '桐乡市', '3');
INSERT INTO `t_region` VALUES ('3254', '385', '海盐县', '3');
INSERT INTO `t_region` VALUES ('3255', '386', '婺城区', '3');
INSERT INTO `t_region` VALUES ('3256', '386', '金东区', '3');
INSERT INTO `t_region` VALUES ('3257', '386', '兰溪市', '3');
INSERT INTO `t_region` VALUES ('3258', '386', '市区', '3');
INSERT INTO `t_region` VALUES ('3259', '386', '佛堂镇', '3');
INSERT INTO `t_region` VALUES ('3260', '386', '上溪镇', '3');
INSERT INTO `t_region` VALUES ('3261', '386', '义亭镇', '3');
INSERT INTO `t_region` VALUES ('3262', '386', '大陈镇', '3');
INSERT INTO `t_region` VALUES ('3263', '386', '苏溪镇', '3');
INSERT INTO `t_region` VALUES ('3264', '386', '赤岸镇', '3');
INSERT INTO `t_region` VALUES ('3265', '386', '东阳市', '3');
INSERT INTO `t_region` VALUES ('3266', '386', '永康市', '3');
INSERT INTO `t_region` VALUES ('3267', '386', '武义县', '3');
INSERT INTO `t_region` VALUES ('3268', '386', '浦江县', '3');
INSERT INTO `t_region` VALUES ('3269', '386', '磐安县', '3');
INSERT INTO `t_region` VALUES ('3270', '387', '莲都区', '3');
INSERT INTO `t_region` VALUES ('3271', '387', '龙泉市', '3');
INSERT INTO `t_region` VALUES ('3272', '387', '青田县', '3');
INSERT INTO `t_region` VALUES ('3273', '387', '缙云县', '3');
INSERT INTO `t_region` VALUES ('3274', '387', '遂昌县', '3');
INSERT INTO `t_region` VALUES ('3275', '387', '松阳县', '3');
INSERT INTO `t_region` VALUES ('3276', '387', '云和县', '3');
INSERT INTO `t_region` VALUES ('3277', '387', '庆元县', '3');
INSERT INTO `t_region` VALUES ('3278', '387', '景宁', '3');
INSERT INTO `t_region` VALUES ('3279', '388', '海曙区', '3');
INSERT INTO `t_region` VALUES ('3280', '388', '江东区', '3');
INSERT INTO `t_region` VALUES ('3281', '388', '江北区', '3');
INSERT INTO `t_region` VALUES ('3282', '388', '镇海区', '3');
INSERT INTO `t_region` VALUES ('3283', '388', '北仑区', '3');
INSERT INTO `t_region` VALUES ('3284', '388', '鄞州区', '3');
INSERT INTO `t_region` VALUES ('3285', '388', '余姚市', '3');
INSERT INTO `t_region` VALUES ('3286', '388', '慈溪市', '3');
INSERT INTO `t_region` VALUES ('3287', '388', '奉化市', '3');
INSERT INTO `t_region` VALUES ('3288', '388', '象山县', '3');
INSERT INTO `t_region` VALUES ('3289', '388', '宁海县', '3');
INSERT INTO `t_region` VALUES ('3290', '389', '越城区', '3');
INSERT INTO `t_region` VALUES ('3291', '389', '上虞市', '3');
INSERT INTO `t_region` VALUES ('3292', '389', '嵊州市', '3');
INSERT INTO `t_region` VALUES ('3293', '389', '绍兴县', '3');
INSERT INTO `t_region` VALUES ('3294', '389', '新昌县', '3');
INSERT INTO `t_region` VALUES ('3295', '389', '诸暨市', '3');
INSERT INTO `t_region` VALUES ('3296', '390', '椒江区', '3');
INSERT INTO `t_region` VALUES ('3297', '390', '黄岩区', '3');
INSERT INTO `t_region` VALUES ('3298', '390', '路桥区', '3');
INSERT INTO `t_region` VALUES ('3299', '390', '温岭市', '3');
INSERT INTO `t_region` VALUES ('3300', '390', '临海市', '3');
INSERT INTO `t_region` VALUES ('3301', '390', '玉环县', '3');
INSERT INTO `t_region` VALUES ('3302', '390', '三门县', '3');
INSERT INTO `t_region` VALUES ('3303', '390', '天台县', '3');
INSERT INTO `t_region` VALUES ('3304', '390', '仙居县', '3');
INSERT INTO `t_region` VALUES ('3305', '391', '鹿城区', '3');
INSERT INTO `t_region` VALUES ('3306', '391', '龙湾区', '3');
INSERT INTO `t_region` VALUES ('3307', '391', '瓯海区', '3');
INSERT INTO `t_region` VALUES ('3308', '391', '瑞安市', '3');
INSERT INTO `t_region` VALUES ('3309', '391', '乐清市', '3');
INSERT INTO `t_region` VALUES ('3310', '391', '洞头县', '3');
INSERT INTO `t_region` VALUES ('3311', '391', '永嘉县', '3');
INSERT INTO `t_region` VALUES ('3312', '391', '平阳县', '3');
INSERT INTO `t_region` VALUES ('3313', '391', '苍南县', '3');
INSERT INTO `t_region` VALUES ('3314', '391', '文成县', '3');
INSERT INTO `t_region` VALUES ('3315', '391', '泰顺县', '3');
INSERT INTO `t_region` VALUES ('3316', '392', '定海区', '3');
INSERT INTO `t_region` VALUES ('3317', '392', '普陀区', '3');
INSERT INTO `t_region` VALUES ('3318', '392', '岱山县', '3');
INSERT INTO `t_region` VALUES ('3319', '392', '嵊泗县', '3');
INSERT INTO `t_region` VALUES ('3320', '393', '衢州市', '3');
INSERT INTO `t_region` VALUES ('3321', '393', '江山市', '3');
INSERT INTO `t_region` VALUES ('3322', '393', '常山县', '3');
INSERT INTO `t_region` VALUES ('3323', '393', '开化县', '3');
INSERT INTO `t_region` VALUES ('3324', '393', '龙游县', '3');
INSERT INTO `t_region` VALUES ('3325', '394', '合川区', '3');
INSERT INTO `t_region` VALUES ('3326', '394', '江津区', '3');
INSERT INTO `t_region` VALUES ('3327', '394', '南川区', '3');
INSERT INTO `t_region` VALUES ('3328', '394', '永川区', '3');
INSERT INTO `t_region` VALUES ('3329', '394', '南岸区', '3');
INSERT INTO `t_region` VALUES ('3330', '394', '渝北区', '3');
INSERT INTO `t_region` VALUES ('3331', '394', '万盛区', '3');
INSERT INTO `t_region` VALUES ('3332', '394', '大渡口区', '3');
INSERT INTO `t_region` VALUES ('3333', '394', '万州区', '3');
INSERT INTO `t_region` VALUES ('3334', '394', '北碚区', '3');
INSERT INTO `t_region` VALUES ('3335', '394', '沙坪坝区', '3');
INSERT INTO `t_region` VALUES ('3336', '394', '巴南区', '3');
INSERT INTO `t_region` VALUES ('3337', '394', '涪陵区', '3');
INSERT INTO `t_region` VALUES ('3338', '394', '江北区', '3');
INSERT INTO `t_region` VALUES ('3339', '394', '九龙坡区', '3');
INSERT INTO `t_region` VALUES ('3340', '394', '渝中区', '3');
INSERT INTO `t_region` VALUES ('3341', '394', '黔江开发区', '3');
INSERT INTO `t_region` VALUES ('3342', '394', '长寿区', '3');
INSERT INTO `t_region` VALUES ('3343', '394', '双桥区', '3');
INSERT INTO `t_region` VALUES ('3344', '394', '綦江县', '3');
INSERT INTO `t_region` VALUES ('3345', '394', '潼南县', '3');
INSERT INTO `t_region` VALUES ('3346', '394', '铜梁县', '3');
INSERT INTO `t_region` VALUES ('3347', '394', '大足县', '3');
INSERT INTO `t_region` VALUES ('3348', '394', '荣昌县', '3');
INSERT INTO `t_region` VALUES ('3349', '394', '璧山县', '3');
INSERT INTO `t_region` VALUES ('3350', '394', '垫江县', '3');
INSERT INTO `t_region` VALUES ('3351', '394', '武隆县', '3');
INSERT INTO `t_region` VALUES ('3352', '394', '丰都县', '3');
INSERT INTO `t_region` VALUES ('3353', '394', '城口县', '3');
INSERT INTO `t_region` VALUES ('3354', '394', '梁平县', '3');
INSERT INTO `t_region` VALUES ('3355', '394', '开县', '3');
INSERT INTO `t_region` VALUES ('3356', '394', '巫溪县', '3');
INSERT INTO `t_region` VALUES ('3357', '394', '巫山县', '3');
INSERT INTO `t_region` VALUES ('3358', '394', '奉节县', '3');
INSERT INTO `t_region` VALUES ('3359', '394', '云阳县', '3');
INSERT INTO `t_region` VALUES ('3360', '394', '忠县', '3');
INSERT INTO `t_region` VALUES ('3361', '394', '石柱', '3');
INSERT INTO `t_region` VALUES ('3362', '394', '彭水', '3');
INSERT INTO `t_region` VALUES ('3363', '394', '酉阳', '3');
INSERT INTO `t_region` VALUES ('3364', '394', '秀山', '3');
INSERT INTO `t_region` VALUES ('3365', '395', '沙田区', '3');
INSERT INTO `t_region` VALUES ('3366', '395', '东区', '3');
INSERT INTO `t_region` VALUES ('3367', '395', '观塘区', '3');
INSERT INTO `t_region` VALUES ('3368', '395', '黄大仙区', '3');
INSERT INTO `t_region` VALUES ('3369', '395', '九龙城区', '3');
INSERT INTO `t_region` VALUES ('3370', '395', '屯门区', '3');
INSERT INTO `t_region` VALUES ('3371', '395', '葵青区', '3');
INSERT INTO `t_region` VALUES ('3372', '395', '元朗区', '3');
INSERT INTO `t_region` VALUES ('3373', '395', '深水埗区', '3');
INSERT INTO `t_region` VALUES ('3374', '395', '西贡区', '3');
INSERT INTO `t_region` VALUES ('3375', '395', '大埔区', '3');
INSERT INTO `t_region` VALUES ('3376', '395', '湾仔区', '3');
INSERT INTO `t_region` VALUES ('3377', '395', '油尖旺区', '3');
INSERT INTO `t_region` VALUES ('3378', '395', '北区', '3');
INSERT INTO `t_region` VALUES ('3379', '395', '南区', '3');
INSERT INTO `t_region` VALUES ('3380', '395', '荃湾区', '3');
INSERT INTO `t_region` VALUES ('3381', '395', '中西区', '3');
INSERT INTO `t_region` VALUES ('3382', '395', '离岛区', '3');
INSERT INTO `t_region` VALUES ('3383', '396', '澳门', '3');
INSERT INTO `t_region` VALUES ('3384', '397', '台北', '3');
INSERT INTO `t_region` VALUES ('3385', '397', '高雄', '3');
INSERT INTO `t_region` VALUES ('3386', '397', '基隆', '3');
INSERT INTO `t_region` VALUES ('3387', '397', '台中', '3');
INSERT INTO `t_region` VALUES ('3388', '397', '台南', '3');
INSERT INTO `t_region` VALUES ('3389', '397', '新竹', '3');
INSERT INTO `t_region` VALUES ('3390', '397', '嘉义', '3');
INSERT INTO `t_region` VALUES ('3391', '397', '宜兰县', '3');
INSERT INTO `t_region` VALUES ('3392', '397', '桃园县', '3');
INSERT INTO `t_region` VALUES ('3393', '397', '苗栗县', '3');
INSERT INTO `t_region` VALUES ('3394', '397', '彰化县', '3');
INSERT INTO `t_region` VALUES ('3395', '397', '南投县', '3');
INSERT INTO `t_region` VALUES ('3396', '397', '云林县', '3');
INSERT INTO `t_region` VALUES ('3397', '397', '屏东县', '3');
INSERT INTO `t_region` VALUES ('3398', '397', '台东县', '3');
INSERT INTO `t_region` VALUES ('3399', '397', '花莲县', '3');
INSERT INTO `t_region` VALUES ('3400', '397', '澎湖县', '3');
INSERT INTO `t_region` VALUES ('3401', '3', '合肥', '2');
INSERT INTO `t_region` VALUES ('3402', '3401', '庐阳区', '3');
INSERT INTO `t_region` VALUES ('3403', '3401', '瑶海区', '3');
INSERT INTO `t_region` VALUES ('3404', '3401', '蜀山区', '3');
INSERT INTO `t_region` VALUES ('3405', '3401', '包河区', '3');
INSERT INTO `t_region` VALUES ('3406', '3401', '长丰县', '3');
INSERT INTO `t_region` VALUES ('3407', '3401', '肥东县', '3');
INSERT INTO `t_region` VALUES ('3408', '3401', '肥西县', '3');

-- ----------------------------
-- Table structure for t_report
-- ----------------------------
DROP TABLE IF EXISTS `t_report`;
CREATE TABLE `t_report` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '质检报告编号',
  `categoryId` bigint(20) DEFAULT NULL COMMENT '系列编号',
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `author` varchar(200) DEFAULT NULL COMMENT '作者',
  `image` varchar(100) DEFAULT NULL COMMENT '图片',
  `addTime` datetime DEFAULT NULL COMMENT '添加时间',
  `path` varchar(100) DEFAULT NULL COMMENT '下载路径',
  `status` int(11) DEFAULT NULL COMMENT '是否显示（1、是 2、否）',
  `sortIndex` int(11) DEFAULT NULL COMMENT '排序',
  `seoTitle` varchar(200) DEFAULT NULL COMMENT 'seo标题',
  `seoKeywords` text COMMENT 'seo关键字',
  `seoDescription` text COMMENT 'seo描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_report
-- ----------------------------
INSERT INTO `t_report` VALUES ('1', '2', 'K88质检报告', '快易典', 'upload/image/admin/2014/20140901/201409011712151578.jpg', '2014-08-02 09:19:36', 'http://pd.shopf8.cn/lxy/k/2014.8.25.rar', '1', '1', '', '', '');
INSERT INTO `t_report` VALUES ('2', '3', '质检报告2', '快易典', 'upload/image/admin/2014/20140901/201409011621303870.png', '2014-08-04 11:21:30', 'upload/file/admin/2014/20140901/201409011622241914.txt', '1', '2', '', '', '');
INSERT INTO `t_report` VALUES ('3', '2', '1', 'gsdfg', 'upload/image/admin/2014/20140901/201409010957576440.png', '2014-08-26 11:29:42', 'http://pd.shopf8.cn/lxy/k/2014.8.25.rar', '1', '1', '', '', '');

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '角色名称',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('-1', '超级管理员', '超级管理员角色具备所有权限');

-- ----------------------------
-- Table structure for t_role_rights
-- ----------------------------
DROP TABLE IF EXISTS `t_role_rights`;
CREATE TABLE `t_role_rights` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `roleId` bigint(20) DEFAULT NULL COMMENT '角色编号',
  `rightsId` bigint(20) DEFAULT NULL COMMENT '权限编号',
  PRIMARY KEY (`id`),
  KEY `roleId` (`roleId`) USING BTREE,
  KEY `rightsId` (`rightsId`) USING BTREE,
  CONSTRAINT `t_role_rights_ibfk_1` FOREIGN KEY (`rightsId`) REFERENCES `bt_rights` (`id`) ON DELETE CASCADE,
  CONSTRAINT `t_role_rights_ibfk_2` FOREIGN KEY (`roleId`) REFERENCES `t_role` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role_rights
-- ----------------------------
INSERT INTO `t_role_rights` VALUES ('1', '-1', '-1');
INSERT INTO `t_role_rights` VALUES ('2', '-1', '-2');
INSERT INTO `t_role_rights` VALUES ('6', '-1', '-3');
INSERT INTO `t_role_rights` VALUES ('7', '-1', '-4');
INSERT INTO `t_role_rights` VALUES ('8', '-1', '-5');
INSERT INTO `t_role_rights` VALUES ('9', '-1', '-6');
INSERT INTO `t_role_rights` VALUES ('10', '-1', '-7');
INSERT INTO `t_role_rights` VALUES ('11', '-1', '-8');
INSERT INTO `t_role_rights` VALUES ('12', '-1', '1');
INSERT INTO `t_role_rights` VALUES ('13', '-1', '4');
INSERT INTO `t_role_rights` VALUES ('14', '-1', '8');
INSERT INTO `t_role_rights` VALUES ('15', '-1', '10');
INSERT INTO `t_role_rights` VALUES ('16', '-1', '12');
INSERT INTO `t_role_rights` VALUES ('17', '-1', '14');
INSERT INTO `t_role_rights` VALUES ('18', '-1', '18');
INSERT INTO `t_role_rights` VALUES ('19', '-1', '22');
INSERT INTO `t_role_rights` VALUES ('20', '-1', '24');
INSERT INTO `t_role_rights` VALUES ('21', '-1', '26');
INSERT INTO `t_role_rights` VALUES ('22', '-1', '28');
INSERT INTO `t_role_rights` VALUES ('23', '-1', '32');
INSERT INTO `t_role_rights` VALUES ('24', '-1', '36');
INSERT INTO `t_role_rights` VALUES ('25', '-1', '40');
INSERT INTO `t_role_rights` VALUES ('26', '-1', '42');
INSERT INTO `t_role_rights` VALUES ('27', '-1', '46');
INSERT INTO `t_role_rights` VALUES ('28', '-1', '50');
INSERT INTO `t_role_rights` VALUES ('29', '-1', '54');
INSERT INTO `t_role_rights` VALUES ('30', '-1', '58');
INSERT INTO `t_role_rights` VALUES ('31', '-1', '62');
INSERT INTO `t_role_rights` VALUES ('32', '-1', '66');
INSERT INTO `t_role_rights` VALUES ('33', '-1', '70');
INSERT INTO `t_role_rights` VALUES ('34', '-1', '74');
INSERT INTO `t_role_rights` VALUES ('35', '-1', '78');
INSERT INTO `t_role_rights` VALUES ('36', '-1', '82');
INSERT INTO `t_role_rights` VALUES ('37', '-1', '86');
INSERT INTO `t_role_rights` VALUES ('38', '-1', '90');
INSERT INTO `t_role_rights` VALUES ('39', '-1', '92');
INSERT INTO `t_role_rights` VALUES ('42', '-1', '105');
INSERT INTO `t_role_rights` VALUES ('43', '-1', '109');
INSERT INTO `t_role_rights` VALUES ('44', '-1', '113');
INSERT INTO `t_role_rights` VALUES ('45', '-1', '117');
INSERT INTO `t_role_rights` VALUES ('46', '-1', '125');
INSERT INTO `t_role_rights` VALUES ('47', '-1', '127');
INSERT INTO `t_role_rights` VALUES ('48', '-1', '121');
INSERT INTO `t_role_rights` VALUES ('49', '-1', '129');
INSERT INTO `t_role_rights` VALUES ('50', '-1', '131');
INSERT INTO `t_role_rights` VALUES ('51', '-1', '135');
INSERT INTO `t_role_rights` VALUES ('52', '-1', '139');
INSERT INTO `t_role_rights` VALUES ('53', '-1', '143');
INSERT INTO `t_role_rights` VALUES ('54', '-1', '144');
INSERT INTO `t_role_rights` VALUES ('55', '-1', '-9');
INSERT INTO `t_role_rights` VALUES ('56', '-1', '145');

-- ----------------------------
-- Table structure for t_seo_page
-- ----------------------------
DROP TABLE IF EXISTS `t_seo_page`;
CREATE TABLE `t_seo_page` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `pageUrl` varchar(200) DEFAULT NULL COMMENT '页面路径',
  `columId` int(11) DEFAULT NULL COMMENT '栏目类型(1当前页，2列表页，3详情页)',
  `seoTitle` varchar(500) DEFAULT NULL COMMENT 'SEO标题',
  `seoKeyWord` varchar(500) DEFAULT NULL COMMENT 'SEO关键字',
  `seoDescription` varchar(500) DEFAULT NULL COMMENT 'SEO描述',
  `mTitle` varchar(500) DEFAULT NULL,
  `mKeyWord` varchar(500) DEFAULT NULL,
  `mDescription` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_seo_page
-- ----------------------------
INSERT INTO `t_seo_page` VALUES ('1', 'loginInit.do', null, '深圳微力科技有限公司', '代理商登录', '代理商登录', null, null, null);
INSERT INTO `t_seo_page` VALUES ('2', 'index.do', null, '深圳微力科技有限公司', '深圳，微力，科技，微力科技，品牌，o2o,O2O,app，App,商城，掌上洪城，洪城大市场，洪城', '深圳微力科技有限公司是一家专业市场O2O领先开发商和运营商 ，主导和运营了一个全国O2O标杆案例：掌上洪城，提供一站式落地转化解决方案。', null, null, null);
INSERT INTO `t_seo_page` VALUES ('3', 'mapInit.do?a=3a', null, '深圳微力科技有限公司', null, null, null, null, null);
INSERT INTO `t_seo_page` VALUES ('4', 'queryOnline.do', null, '深圳微力科技有限公司', null, null, null, null, null);
INSERT INTO `t_seo_page` VALUES ('5', 'downloadIndex.do', null, '深圳微力科技有限公司', null, null, null, null, null);
INSERT INTO `t_seo_page` VALUES ('6', 'updateProgramIndex.do', null, '深圳微力科技有限公司', null, null, null, null, null);
INSERT INTO `t_seo_page` VALUES ('7', 'advertiseIndex.do', null, '深圳微力科技有限公司', null, null, null, null, null);
INSERT INTO `t_seo_page` VALUES ('8', 'queryRecruitInit.do?a=2a', null, '深圳微力科技有限公司', null, null, null, null, null);
INSERT INTO `t_seo_page` VALUES ('9', 'queryWebDistributeListInit.do', null, '深圳微力科技有限公司', null, null, null, null, null);
INSERT INTO `t_seo_page` VALUES ('10', 'queryServicePolicy.do', null, '深圳微力科技有限公司', null, null, null, null, null);
INSERT INTO `t_seo_page` VALUES ('11', 'queryQuestionListInit.do', null, '深圳微力科技有限公司', null, null, null, null, null);
INSERT INTO `t_seo_page` VALUES ('12', 'queryInfoContent.do', null, '深圳微力科技有限公司', null, null, null, null, null);
INSERT INTO `t_seo_page` VALUES ('13', 'frontDesignCategoryInit.do', null, '深圳微力科技有限公司', null, null, null, null, null);
INSERT INTO `t_seo_page` VALUES ('14', 'productIndex.do', null, '深圳微力科技有限公司', null, null, null, null, null);
INSERT INTO `t_seo_page` VALUES ('15', 'queryDownloadHelpInit.do', null, '深圳微力科技有限公司', null, null, null, null, null);
INSERT INTO `t_seo_page` VALUES ('16', 'materialsIndex.do', null, '深圳微力科技有限公司', null, null, null, null, null);
INSERT INTO `t_seo_page` VALUES ('17', 'queryRecruitInit.do', null, '深圳微力科技有限公司', null, null, null, null, null);
INSERT INTO `t_seo_page` VALUES ('18', 'productCompare.do', null, '深圳微力科技有限公司', null, null, null, null, null);
INSERT INTO `t_seo_page` VALUES ('19', 'querySearch.do', null, '深圳微力科技有限公司', null, null, null, null, null);
INSERT INTO `t_seo_page` VALUES ('20', 'coursewareIndex.do', null, '微力科技', null, null, null, null, null);
INSERT INTO `t_seo_page` VALUES ('21', 'preDownloadIndex.do', null, '微力科技', null, null, null, null, null);

-- ----------------------------
-- Table structure for t_service_type
-- ----------------------------
DROP TABLE IF EXISTS `t_service_type`;
CREATE TABLE `t_service_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '服务编号',
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `linkPath` varchar(200) DEFAULT NULL COMMENT '链接地址',
  `sortIndex` int(11) DEFAULT NULL COMMENT '排序',
  `addTime` datetime DEFAULT NULL COMMENT '添加时间',
  `status` int(11) DEFAULT NULL COMMENT '是否显示',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_service_type
-- ----------------------------
INSERT INTO `t_service_type` VALUES ('1', '服务政策', 'queryServicePolicy.do', '1', '2014-08-13 17:29:40', '1');
INSERT INTO `t_service_type` VALUES ('2', '网点分布', 'queryWebDistributeListInit.do', '2', '2014-08-13 17:30:15', '1');
INSERT INTO `t_service_type` VALUES ('3', '在线支持', 'queryOnline.do', '3', '2014-08-13 17:30:45', '1');
INSERT INTO `t_service_type` VALUES ('4', '常见问题', 'queryQuestionListInit.do', '4', '2014-08-13 17:31:14', '1');
INSERT INTO `t_service_type` VALUES ('5', '在线方法', 'downloadIndex.do', '5', '2014-08-13 17:31:53', '1');

-- ----------------------------
-- Table structure for t_update_program
-- ----------------------------
DROP TABLE IF EXISTS `t_update_program`;
CREATE TABLE `t_update_program` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL COMMENT '升级程序名称',
  `image` varchar(100) DEFAULT NULL COMMENT '图片',
  `path` varchar(100) DEFAULT NULL COMMENT '下载路径',
  `categoryId` bigint(20) DEFAULT NULL COMMENT '系列ID',
  `productId` bigint(20) DEFAULT NULL COMMENT '产品型号ID',
  `addTime` datetime DEFAULT NULL COMMENT '添加时间',
  `sortIndex` int(11) DEFAULT NULL COMMENT '排序',
  `status` int(11) DEFAULT NULL COMMENT '是否显示（1，是 2，否）',
  `seoTitle` varchar(200) DEFAULT NULL COMMENT 'SEO_标题',
  `seoKeywords` text COMMENT 'SEO_关键字',
  `seoDescription` text COMMENT 'SEO_描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_update_program
-- ----------------------------
INSERT INTO `t_update_program` VALUES ('1', '智能家教机 H23 下载', 'upload/image/admin/2014/20141215/201412152305154691.jpg', 'upload/file/admin/2014/20141215/201412152305251360.txt', '1', null, '2014-07-16 15:29:50', null, '1', null, null, null);
INSERT INTO `t_update_program` VALUES ('2', '学生电脑 G12 下载程序', 'upload/image/admin/2014/20141215/201412152304252697.jpg', 'upload/file/admin/2014/20141215/201412152304366208.pdf', '2', null, '2014-07-16 15:39:24', null, '1', null, null, null);
INSERT INTO `t_update_program` VALUES ('3', '11', 'upload/image/admin/2014/20141215/201412152304099336.jpg', 'upload/file/admin/2014/20141215/201412152303545303.txt', '2', null, '2014-07-28 17:48:56', null, '1', null, null, null);
INSERT INTO `t_update_program` VALUES ('4', '22222', 'upload/image/admin/2014/20141215/201412152305588261.jpg', 'upload/file/admin/2014/20141215/201412152305421544.pdf', '5', null, '2014-12-15 23:05:59', null, '1', null, null, null);

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '代理商编号',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `realName` varchar(50) DEFAULT NULL COMMENT '真实姓名',
  `phone` varchar(100) DEFAULT NULL COMMENT '联系方式',
  `isDisable` int(11) DEFAULT NULL COMMENT '是否禁用（1、否 2、禁用）',
  `sortIndex` int(11) DEFAULT NULL COMMENT '排序',
  `addTime` datetime DEFAULT NULL COMMENT '添加时间',
  `loginEndTime` datetime DEFAULT NULL COMMENT '最后登录时间',
  `loginEndIP` varchar(200) DEFAULT NULL COMMENT '最后登录IP',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'aa', '4GV5XUIGJwbJe/9PnpHhf7Njd1xJVCBUyCn4Qvuk1xqDVkA5SlQnVw==', 'aa', '15870818372', '1', '1', '2014-08-02 09:15:36', '2014-08-30 09:41:08', '127.0.0.1');
INSERT INTO `t_user` VALUES ('2', 'bb', '4GV5XUIGJwbJe/9PnpHhf7Njd1xJVCBUyCn4Qvuk1xqDVkA5SlQnVw==', 'bb', '13655255487', '1', '2', '2014-08-02 09:16:14', '2014-08-05 09:47:59', '127.0.0.1');

-- ----------------------------
-- Table structure for t_web_distribute
-- ----------------------------
DROP TABLE IF EXISTS `t_web_distribute`;
CREATE TABLE `t_web_distribute` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '网点分布编号',
  `type` int(11) DEFAULT NULL COMMENT '类型（1、销售网点 2、售后网点）',
  `provinceId` bigint(20) DEFAULT NULL COMMENT '省份编号',
  `cityId` bigint(20) DEFAULT NULL COMMENT '城市编号',
  `areaId` bigint(20) DEFAULT NULL COMMENT '县区编号',
  `address` varchar(300) DEFAULT NULL COMMENT '详细地址',
  `storeName` varchar(300) DEFAULT NULL COMMENT '销售店铺',
  `phone` varchar(200) DEFAULT NULL COMMENT '服务电话',
  `longitude` varchar(200) DEFAULT NULL COMMENT '经度',
  `latitude` varchar(200) DEFAULT NULL COMMENT '纬度',
  `addTime` datetime DEFAULT NULL COMMENT '添加时间',
  `sortIndex` int(11) DEFAULT NULL COMMENT '排序',
  `status` int(11) DEFAULT NULL COMMENT '是否显示（1、是  2、否）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=546 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_web_distribute
-- ----------------------------
INSERT INTO `t_web_distribute` VALUES ('1', '1', '6', '77', '708', '宝源路F518时尚创意园', '红峰数码电教', '13599665459', '113.870515', '22.57477', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('2', '2', '2', '52', '500', '四合院', '时代超市宝应专营店', '15870818372', '116.419397', '39.938128', '2014-08-02 09:10:42', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('3', '1', '6', '77', '705', '宝应县安宜东路8号', '宝应苏宁电器有限公司', '13588996633', '114.060192', '22.543787', '2014-08-02 09:12:44', '3', '1');
INSERT INTO `t_web_distribute` VALUES ('4', '2', '6', '76', '693', '增城市挂绿广场四楼', '红峰数码电教2', '13599665459', '113.34892', '23.136688', '2014-08-02 09:14:31', '2', '1');
INSERT INTO `t_web_distribute` VALUES ('5', '1', '2', '52', '-1', '大街218号', '北京王府井书店', '010-65251946', '116.418343', '39.916517', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('6', '1', '2', '52', '502', '北四环西路68号', '北京中关村图书大厦', '010-82676651', '116.311537', '39.990203', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('7', '1', '2', '52', '503', '朝阳门外大街99号', '北京百脑汇', '010-58761166', '116.452076', '39.929545', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('8', '1', '2', '52', '504', '永定门外大街101号木樨园环岛西北角', '北京百荣世贸商城', '13691236151', '116.405239', '39.867267', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('9', '1', '2', '52', '505', '西长安街18号', '北京西单图书大厦', '010-66070090', '116.383393', '39.913888', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('10', '1', '2', '52', '503', '东四环慈云寺桥东200米', '北京苏宁朝阳店', '13910821512', '116.502803', '39.922023', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('11', '1', '2', '52', '503', '西大望路15号院外企大厦A座苏宁电器', '北京苏宁西大望店', '13521300350', '116.482962', '39.899463', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('12', '1', '2', '52', '510', '梨园镇云景东路8号园景阁东区', '北京苏宁通州梨园店', '13552627840', '116.673674', '39.888606', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('13', '1', '2', '52', '-1', '西四环四季青桥西南角金四季购物中心二楼', '北京苏宁四季青店', '18801187950', '116.277936', '39.949844', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('14', '1', '2', '52', '508', '良乡镇拱辰大街47号拱辰大厦1-3层', '北京苏宁良乡店', '13126556706', '116.148166', '39.741641', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('15', '1', '2', '52', '508', '房山东大街2号商业大楼一层', '北京苏宁房山店', '13691533822', '115.991512', '39.708399', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('16', '1', '2', '52', '506', '南三环中路小铁匠营10号苏宁电器刘家窑店', '北京苏宁刘家窑店', '13520635978', '116.425557', '39.863737', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('17', '1', '2', '52', '502', '北三环大钟寺出口联想桥向北50米', '北京苏宁联想桥店', '18210090530', '116.341508', '39.975262', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('18', '1', '2', '52', '505', '广安门外大街248号', '北京苏宁广外店', '13683258728', '116.333649', '39.894799', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('19', '1', '2', '52', '507', '银河大街3号', '北京苏宁石景山店', '15001188041', '116.227432', '39.910879', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('20', '1', '2', '52', '-1', '广顺北大街望京花园116号', '北京苏宁望京店', '15201505173', '116.474523', '40.013762', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('21', '1', '2', '52', '503', '安定路20号', '北京苏宁安贞店', '18600107812', '116.414325', '39.978849', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('22', '1', '2', '52', '503', '东三环华威桥向东50米（首图东侧）', '北京苏宁汉华店', '18611927832', '116.474729', '39.878855', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('23', '1', '2', '52', '503', '朝阳路高井财满街68号', '北京苏宁财满街店', '18618404285', '116.540951', '39.923275', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('24', '1', '2', '52', '506', '南三环马家堡店西路嘉园一里26号楼', '北京苏宁马家堡店', '18801267714', '116.377609', '39.858337', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('25', '1', '2', '52', '503', '酒仙桥路12号乐天玛特超市三层', '北京苏宁酒仙桥店', '18810686390', '116.497485', '39.982456', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('26', '1', '2', '52', '503', '北三环东路曙光西里甲10号', '北京苏宁三元西桥店', '15801210166', '116.454993', '39.968032', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('27', '1', '2', '52', '502', '学院路甲9号', '北京苏宁学院路店', '13552294673', '116.359018', '40.00407', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('28', '1', '2', '52', '502', '西翠路5号', '北京苏宁西翠店', '15210655857', '116.28871', '39.906873', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('29', '1', '2', '52', '503', '北四环北苑路168号', '北京苏宁亚运村店', '18611494045', '116.424002', '40.002529', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('30', '1', '2', '52', '506', '青塔西路11号', '北京苏宁青塔西路店', '15726657248', '116.270759', '39.896308', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('31', '1', '2', '52', '502', '北太平庄路18号', '北京苏宁北太平庄店', '18618349008', '116.377612', '39.974654', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('32', '1', '2', '52', '-1', '回龙观西大街北店时代购物广场', '北京苏宁回龙观店', '13520785943', '116.343653', '40.08581', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('33', '1', '2', '52', '503', '北四环东路108号', '北京华堂商场亚运村店', '13691352361', '116.42722', '39.994438', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('34', '1', '2', '52', '508', '房山南关大街', '房山国盛电器', '13366993668', '115.99065', '39.705443', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('35', '1', '2', '52', '514', '旧城街14号', '平谷新华书店', '13366993668', '117.132095', '40.145953', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('36', '1', '2', '52', '516', '鼓楼东大街和鼓楼南大街交叉口', '密云新华书店', '13366993668', '116.85261', '40.38166', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('37', '1', '2', '52', '512', '府学路29号', '昌平阳光商场', '13366993668', '116.25068', '40.227116', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('38', '1', '2', '52', '511', '新顺南大街4号', '顺义隆华商场', '13366993668', '116.656928', '40.132274', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('39', '1', '2', '52', '-1', '迎风街9号百合大厦', '燕山新华书店', '13366993668', '115.962637', '39.736363', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('40', '1', '2', '52', '515', '黄村镇清街62号帝园商城4楼', '大兴京南卫星图书音像城', '13366993668', '116.34683', '39.737674', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('41', '1', '2', '52', '510', '通州西门路口东', '通县沃丰达电脑城', '', '116.652741', '39.913473', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('42', '1', '2', '52', '510', '新华西街61', '通县世纪华联', '', '116.650149', '39.914061', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('43', '1', '2', '52', '510', '新华东街260号', '通县新华书店', '13366993668', '116.66826', '39.914054', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('44', '1', '2', '52', '511', '太平小区8-7号', '顺义新华书店', '13366993668', '116.65698', '40.143609', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('45', '1', '2', '52', '513', '府前街14号京北大世界4楼', '怀柔新华书店', '13366993668', '116.638913', '40.321171', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('46', '1', '2', '52', '503', '民族园路2号唐人街购物广场', '北京大润发', '13366993668', '116.396911', '39.98643', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('47', '1', '2', '52', '511', '新顺南大街4号鑫海运通电器城', '顺义鑫海运通', '', '116.658058', '40.135232', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('48', '1', '2', '52', '502', '中关村大街鼎好电子大厦2层2318号', '中关村鼎好2层2318', ' 010-62684621', '116.321197', '39.990548', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('49', '1', '2', '52', '502', '中关村大街鼎好电子大厦2层2020号', '中关村鼎好2层2020', ' 010-62684621', '116.321197', '39.990548', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('50', '1', '2', '52', '502', '中关村大街鼎好电子大厦2层2039号', '中关村鼎好2层2039', ' 010-62684622', '116.321197', '39.990548', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('51', '1', '2', '52', '502', '中关村海龙电子城', '中关村海龙电子城', ' 010-62684621', '116.322143', '39.989291', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('52', '1', '2', '52', '502', '中关村大街11号E世界2076', '中关村E世界2076', ' 010-62684621', '116.321163', '39.988012', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('53', '1', '6', '77', '707', '南海大道2748号南山书城2楼快易典专柜', '南山书城', '15818763892', '113.93583', '22.525212', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('54', '1', '6', '77', '705', '深南东路5033号金山大厦一楼快易典专柜', '罗湖书城一楼', '15818763893', '114.115676', '22.547286', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('55', '1', '6', '77', '705', '深南东路5033号金山大厦四楼快易典专柜', '罗湖书城四楼', '15818763894', '114.115676', '22.547286', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('56', '1', '6', '77', '705', '福中一路2014号中心书城负一楼快易典专柜', '中心书城', '15818763895', '114.066035', '22.552459', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('57', '1', '6', '77', '708', '沙井益华电子城三楼快易典专柜', '益华电子城', '13760253918', '113.832448', '22.751993', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('58', '1', '6', '77', '708', '沙井岗厦路62号亿康文体书城二楼快易典专柜', '亿康文体书城', '13434740440', '113.828358', '22.734319', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('59', '1', '6', '77', '708', '石岩镇浪心社区石岩亿康文体书城快易典专柜', '石岩亿康文体', '13824354787', '113.937497', '22.682952', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('60', '1', '6', '77', '709', '龙翔大道文化艺术中心C区一楼快易典专柜', '龙岗书城', ' 075528939994', '114.256778', '22.725894', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('61', '1', '6', '77', '708', '福永大道11号文化艺术中心一楼新华书店', '福永新华书店', ' 15820771332', '113.83127', '22.6771', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('62', '1', '6', '77', '708', '沙井东塘街29号一楼新华书店', '沙井新华书店', ' 15019452182', '113.815063', '22.738786', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('63', '1', '6', '77', '708', '松岗东方路23号新华书店', '松岗新华书店', ' 15915440694', '113.850302', '22.771297', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('64', '1', '6', '77', '-1', '坪山新区深汕路246号友谊书城一楼快易典专柜', '友谊书城坪山店', '13530139067', '114.352863', '22.702066', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('65', '1', '6', '77', '708', '宝安八区前进一路97号友谊书城一楼快易典专柜', '友谊书城宝安店', '15817464454', '113.914788', '22.570482', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('66', '1', '6', '77', '-1', '光明新区公明街道宝安路10号友谊书城三楼快易典专柜', '友谊书城公明店', ' 13534018776', '113.895954', '22.788365', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('67', '1', '6', '77', '708', '龙华镇人民北路338号友谊书城二楼快易典专柜', '友谊书城龙华店', ' 13420996734', '114.028102', '22.661501', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('68', '1', '6', '77', '708', '石岩街道影剧院一楼快易典专柜', '友谊书城石岩店', ' 15989489641', '113.945444', '22.685178', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('69', '1', '6', '77', '709', '布吉街道金鹏路18号附近国都大厦三楼书城快易典专柜', '布吉沁禾书城', ' 18682493808', '114.124316', '22.61185', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('70', '1', '6', '77', '708', '建安一路78号新华书店二楼', '宝安新华书店', '13823138630', '113.913654', '22.566902', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('71', '1', '6', '77', '709', '葵涌街道葵新南路181号', '葵涌新华书店', '13530139067', '114.428827', '22.636227', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('72', '1', '6', '77', '709', '布吉街道新一佳二楼', '布吉新一佳', '13420928454', '114.130423', '22.603867', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('73', '1', '6', '77', '708', '创业路与翻身路交汇处创业天虹商场二楼快易典专柜', '创业天虹', '13798235291', '113.90045', '22.566235', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('74', '1', '6', '77', '708', '光明新区公明镇公明街道振明路122号天虹商场四楼快易典专柜', '公明天虹', '13798235292', '113.89938', '22.787932', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('75', '1', '6', '77', '708', '沙井镇中心路与创新路交汇处（沙井市民广场南侧）天虹商场六楼快易典专柜', '沙井天虹', '13798235293', '113.8354', '22.727111', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('76', '1', '6', '77', '707', '桃园路86号政府旁南山天虹商场五楼快易典专柜', '天虹南山', '13798235294', '113.928439', '22.538565', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('77', '1', '6', '77', '707', '白石路168号京基百纳广场西沙河天虹商场附一楼快易典专柜', '天虹商场(沙河店)', '13798235295', '113.975499', '22.536337', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('78', '1', '6', '77', '708', '松岗宝利来广场松见风使舵天虹商场三楼快易典专柜', '天虹商场(松岗店)', '13798235296', '113.858241', '22.769372', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('79', '1', '6', '77', '708', '龙华观澜格澜郡群楼观澜天虹商场三楼快易典专柜', '天虹观澜', '13798235297', '114.05583', '22.700524', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('80', '1', '6', '77', '709', '龙翔大道世贸中心华润万家三楼快易典专柜', '华润万家龙岗店', '15112614640', '114.252744', '22.723644', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('81', '1', '6', '77', '708', '宝安五区新安商业城1层二楼快易典专柜', '华润万家宝安店', '15112614641', '114.048416', '22.717627', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('82', '1', '6', '77', '709', '平湖镇双拥街113号星宇广场2-3楼平湖国美快易典专柜', '平湖国美', '15112614642', '114.141203', '22.706333', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('83', '1', '6', '77', '708', '西丽镇留仙大道南国丽城一楼西丽国美快易典专柜', '西丽国美', '15112614643', '113.962804', '22.586934', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('84', '1', '6', '77', '709', '布吉镇布吉街89号国美电器一楼快易典专柜', '布吉国美', '15112614645', '114.123706', '22.606928', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('85', '1', '6', '77', '705', '华强北路上步工业区港澳城国美二楼快易典', '国美(港澳城店)', '15112614646', '114.092718', '22.55286', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('86', '1', '6', '77', '707', '工业七路蛇口沃尔玛二楼快易典专柜', '蛇口沃尔玛', '13923405019', '113.929524', '22.509099', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('87', '1', '6', '77', '706', '布吉大芬沃尔玛二楼快易典专柜', '大芬沃尔玛', '13923405020', '114.143277', '22.61798', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('88', '1', '6', '77', '-1', '新园路7号半岛大厦东门苏宁电器一楼快易典专柜', '苏宁(东门店)', '13480901960', '114.123793', '22.552334', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('89', '1', '6', '77', '-1', '华强北路新华强电子世界二楼快易典专柜', '苏宁(华强二店)', '13480901960', '114.092278', '22.547352', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('90', '1', '6', '77', '707', '学府路康乐大厦1-3楼苏宁二楼快易典专柜', '苏宁南山店', '13480901960', '113.931039', '22.532924', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('91', '1', '6', '77', '705', '华强北群星广场群星店苏宁电器一楼快易典专柜', '苏宁电器（华强北群星广场店）', '13480901960', '114.093348', '22.554195', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('92', '1', '11', '152', '-1', '解放路北关拱辰广场赛博负一楼', '金豪数码广场', '0372-5128131', '114.360726', '36.115533', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('93', '1', '11', '152', '1301', '朝阳路与南大街交叉路口', '赛博数码广场(拱辰店)', '18737286362', '114.36252', '36.110357', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('94', '1', '11', '152', '1299', '第一实验小学对面', '内黄新华书店', '0372-7792758', '114.911368', '35.951919', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('95', '1', '11', '152', '-1', '第一实验小学对面', '汤阴快易典专卖店', '18790787699', '114.364719', '35.927614', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('96', '1', '11', '152', '1297', '太行路万德隆超市入口', '林州快易典专卖店', '0372-6288956', '113.830536', '36.065295', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('97', '1', '11', '152', '1297', '滑县解放路南段老抗大初中楼下', '林州万德隆超市', '0372-6819789', '113.833777', '36.069336', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('98', '1', '11', '152', '1299', '任固镇育才学校西侧', '滑县冰雪电教店', '13937283085', '114.523306', '35.576597', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('99', '1', '11', '152', '-1', '浚县黄河路老一中北20米路东', '任固方正科技电脑', '0372-6288956', '114.648468', '35.968447', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('100', '1', '11', '153', '-1', '浚县建业广场一楼', '鹤壁浚县校友百文', '15939226258', '114.560967', '35.673679', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('101', '1', '11', '153', '-1', '帝王广场银座负一楼', '鹤壁浚县建业广场', '15514050631', '114.540851', '35.67977', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('102', '1', '11', '153', '-1', '新亚商场六楼', '鹤壁帝王广场', '15539234146', '114.192059', '35.905004', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('103', '1', '11', '155', '-1', '塔南路155图书大厦一楼', '焦作新亚商厦', '13703893848', '113.235771', '35.248027', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('104', '1', '11', '155', '1315', '新世纪广场三楼快易典专柜', '焦作新华书店', '13782704089', '113.250942', '35.248543', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('105', '1', '11', '155', '1314', '七贤大道工商银行附近', '博爱快易典专卖', '15978752218', '113.078059', '35.176991', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('106', '1', '11', '155', '-1', '温县新建街8号实验中学楼下', '修武快易典专卖店', '13939169359', '113.450786', '35.232152', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('107', '1', '11', '155', '-1', '新华路步行街贸易中心南大门对面好记星专卖店', '温县思科学习桌', '18939161130', '113.081966', '34.944787', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('108', '1', '11', '156', '1324', '文化路与建设路交叉口城关三小对面好记星专卖店', '镇平记星专卖店', '0377—65928018', '112.244298', '33.037641', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('109', '1', '11', '156', '1322', '县衙路人民商场西头极典音像', '方城好记星专卖店', '0377-67233558\n', '113.014049', '33.265289', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('110', '1', '11', '156', '1325', '南召县云阳镇汽车站斜对面天天超市', '内乡极典音像', '13700773251', '111.854586', '33.052788', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('111', '1', '11', '156', '-1', '赊店镇中兴隆街西侧世纪广场读书郎专卖', '云阳天天超市', '15517723689', '108.606331', '31.062915', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('112', '1', '11', '156', '1327', '建设路与工业路交叉口往北100米家电大世界', '社旗读书郎专卖', '13103678667', '112.949512', '33.06288', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('113', '1', '11', '156', '-1', '中州中路新华书店三楼', '家电大世界', '18538956225', '112.534138', '33.012228', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('114', '1', '11', '150', '-1', '景华路与长春路交叉口京华书店', '新华书店', '15637960727', '112.452411', '34.679589', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('115', '1', '11', '150', '1281', '兴宁中路荟萃书店', '京华书店', '15896645434', '112.404', '34.662', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('116', '1', '11', '150', '1350', '火车站对面', '荟萃书店', '13014783772', '111.658967', '34.394425', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('117', '1', '11', '159', '1354', '第一实验小学对面', '民权新华商店', '0370-8520716', '115.148555', '34.6522', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('118', '1', '11', '159', '1354', '第二实验小学对面', '柘城一实小快易典专卖店', '0370-7232550', '115.309783', '34.079555', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('119', '1', '11', '159', '1355', '公疗医院斜对面', '柘城二实小快易典专卖店', '0370-7261633', '115.327687', '34.085318', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('120', '1', '11', '159', '1352', '永乐北路39号老石马往北100米路东', '夏邑快易典专卖店', '15617000680', '116.150281', '34.240891', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('121', '1', '11', '159', '-1', '芒山路与开源路交叉口 先帅百货二楼', '宁陵东辰数码', '0370-7215678', '115.31931', '34.453555', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('122', '1', '11', '159', '1349', '凯旋中路实验中学搂下快易典专卖店', '永城新城先帅百货快易典专柜', '0370-2947059', '116.44635', '33.932189', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('123', '1', '11', '159', '-1', '凯旋路与八一路交叉口天鸿城', '商丘快易典专卖点', '13323708935', '115.648381', '34.434137', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('124', '1', '11', '159', '-1', '凯旋路地下道道南路西', '商丘苏宁电器（天鸿城店）', '13323708935', '115.651383', '34.438082', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('125', '1', '11', '159', '-1', '凯旋路商品大世界东门', '商丘百盛电器', '13323708935', '115.657351', '34.451493', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('126', '1', '11', '159', '-1', '老城大隅口老百货楼苏美电器', '商丘商品大世界', '13323708935', '115.639855', '34.426542', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('127', '1', '11', '159', '1349', '人民路丹尼斯对面省新华书店一楼', '永城老城苏美电器', '15637072656', '116.376672', '33.944835', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('128', '1', '11', '149', '-1', '二七区西太康路19号购书中心一楼', '省新华书店', '0371-56787193', '113.679609', '34.763184', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('129', '1', '11', '149', '-1', '二七广场五星亚细亚店', '购书中心', '0371-56787193', '113.671167', '34.763095', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('130', '1', '11', '149', '-1', '碧沙岗西门对面五星电器一楼', '五星电器(亚细亚店)', '0371-56787193', '113.673502', '34.757697', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('131', '1', '11', '149', '-1', '北环家乐福一楼五星电器', '五星电器', '0371-56787193', '113.607174', '34.76331', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('132', '1', '11', '149', '-1', '中原路万达广场二楼', '五星电器(文化路店)', '0371-56787193', '113.672596', '34.816722', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('133', '1', '11', '149', '-1', '紫荆山路与陇海路交汇处东北角 大润发二楼超市入口处', '永乐电器', '0371-56787193', '113.607132', '34.752804', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('134', '1', '11', '149', '-1', '大学路与政通路交汇处西北角大润发负一楼超市入口处', '大润发(陇海店)', '0371-56787193', '113.689014', '34.745589', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('135', '1', '11', '149', '1405', '马路街新华书店快易典专柜', '大润发(大学路店)', '0371-56787193', '113.64801', '34.7323', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('136', '1', '11', '165', '-1', '大商新玛特三楼快易典柜台', '新华书店', '13303959717', '114.045758', '33.577653', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('137', '1', '11', '165', '1380', '东转盘奥斯帆购物广场快易典专柜', '大商新玛特', '18903951789', '114.04526', '33.58312', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('138', '1', '11', '162', '1383', '迎宾路惠民城电器快易典柜台', '奥斯帆快易典专柜', '18237478450', '113.801324', '34.230259', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('139', '1', '11', '162', '-1', '胖东来生活广场负一楼快易典专柜', '惠民城电器', '13782278800', '113.496406', '33.851615', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('140', '1', '11', '162', '-1', '大润发二楼快易典专柜', '胖东来快易典专柜', '15603887105', '113.83161', '34.023278', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('141', '1', '11', '151', '1292', '堌阳镇新世纪商贸中心快易典柜台', '大润发', '18939561718', '114.36644', '34.794656', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('142', '1', '11', '151', '-1', '新华书店四楼', '新世纪商贸中心', '15137816822', '114.969975', '34.962442', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('143', '1', '11', '-1', '-1', '新乡辉冀源路青年路交叉口西120米万德隆商场快易典专柜', '新华书店', '0373-6263679', '113.81016', '35.465345', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('144', '1', '11', '160', '1362', '郸城县世纪广场50米才源书店', '万德隆商场', '15090408109', '113.793875', '35.196881', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('145', '1', '11', '163', '1389', '新华北街北关粮店清华同方（快易典专卖）', '才源书店', '15994161239', '115.185781', '33.650118', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('146', '1', '11', '163', '1389', '颖河大道南段北侧万家乐购物广场闸南店', '清华同方（快易典专卖）', '15838607895', '115.080376', '33.402782', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('147', '1', '11', '163', '1389', '恒瑞步行商业街万家乐生活广场沈丘店', '万家乐生活广场', '18272806278', '115.086118', '33.389256', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('148', '1', '11', '163', '1391', '龙湖旁万家乐生活广场快易典专卖', '万家乐生活广场', '18739791942', '115.082859', '33.402789', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('149', '1', '11', '163', '1391', '齐老乡二中大门北理想书店快易典专卖', '万家乐生活广场', '18939419961', '114.884793', '33.736543', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('150', '1', '11', '163', '1393', '唐润百货东门快易典专柜', '理想书店快易典专卖', '13703942003', '112.972068', '39.075889', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('151', '1', '11', '163', '1393', '玄武镇新华书店', '唐润百货', '18625560866', '115.495351', '33.865772', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('152', '1', '11', '163', '-1', '市标500米路南青年路新华书店', '新华书店(玄武镇)', '13513874516', '115.278374', '33.982569', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('153', '1', '11', '163', '1385', '西华县人民商场楼下快易典专卖', '青年路新华书店', '18903876697', '114.891442', '33.458778', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('154', '1', '11', '163', '-1', '健康路与东环路交叉口（商水二小）北150米路西快易典专卖', '快易典专卖', '15039942168', '114.537923', '33.793934', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('155', '1', '11', '163', '1388', '万顺达百货5楼', '快易典专卖', '18003871890', '114.624587', '33.550586', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('156', '1', '11', '163', '-1', '爱家百货一楼快易典柜台', '万顺达百货', '18348382522', '114.655138', '33.62333', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('157', '1', '11', '164', '1395', '新华书店快易典柜台', '爱家百货', '18272993222', '114.03113', '32.992328', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('158', '1', '11', '164', '-1', '火车站对面百脑汇一楼快易典专卖', '新华书店', '13839912068', '114.024281', '33.380114', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('159', '1', '11', '161', '-1', '大商新玛特三楼快易典专卖', '百脑汇电脑商城', '13839742606', '114.087279', '32.13347', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('160', '1', '11', '161', '-1', '大商新玛特三楼快易典专卖', '大商新玛特', '13839742606', '114.081877', '32.128149', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('161', '1', '19', '258', '-1', '中山西路94号国美电器（中山店）1层', '国美电器（中山店）', '15904871526', '111.671883', '40.817891', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('162', '1', '19', '258', '-1', '新华东街万达广场1层', '国美电器（万达店）', '13451314053', '111.741663', '40.842756', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('163', '1', '19', '258', '-1', '鼓楼立交桥东鸽电器', '东鸽电器总店', '15326096551', '111.697073', '40.832215', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('164', '1', '19', '258', '-1', '锡林郭勒北路58大天东鸽2楼', '东鸽电器(大天店)', '13684716527', '111.67717', '40.823057', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('165', '1', '19', '258', '-1', '东鸽电器文化宫路店', '东鸽二店', '13644818543', '111.670371', '40.81714', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('166', '1', '19', '258', '-1', '润宇家具兴安店二楼', '东鸽润宇店', '15049108106', '111.701713', '40.845724', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('167', '1', '19', '258', '-1', '中山东路7诚信数码大厦3楼', '诚信数码', '13847130064', '111.681095', '40.82606', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('168', '1', '19', '263', '2202', '新华书城3楼', '东胜书城', '13384775233', '110.010684', '39.825484', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('169', '1', '19', '260', '2174', '胜利路农管街快易典专卖店，巨盛数码楼下', '临河快易典', '13015285608', '107.427035', '40.760134', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('170', '1', '19', '263', '-1', '达拉特旗快易典专卖店、达拉特一中对面', '达拉特快易典专卖', '15134861360', '110.044002', '40.408097', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('171', '1', '19', '260', '2176', '东风街汇源商厦1楼', '汇源商厦快易典专卖', '15044889098', '107.017086', '40.335781', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('172', '1', '19', '266', '2231', '新华大街乌海书城1楼快易典专柜', '乌海书城', '18847304999', '106.834951', '39.675669', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('173', '1', '19', '262', '2597', '新惠路步行街路口附近嘉业书店', '嘉业书城', '13947675667', '118.885865', '42.261808', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('174', '1', '19', '258', '2170', '青山路新世界商场九州电子', '九州电子', '/', '111.466563', '41.101035', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('175', '1', '19', '258', '2166', '大平运酒店二光数码家电', '二光数码', '13847181773', '111.686022', '39.916966', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('176', '1', '19', '258', '-1', '托克托县东胜中路附近亨达利眼镜店内', '亨达利眼镜', '13384889718', '111.198982', '40.283128', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('177', '1', '19', '258', '-1', '和林格尔县新华街附近千禧书城', '千禧图书城', '13947130160', '111.836224', '40.387884', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('178', '1', '19', '258', '-1', '土默特左旗诺亚舟电子', '诺亚舟电子', '13847123092', '111.138789', '40.725992', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('179', '1', '19', '263', '-1', '准葛尔旗新华书店', '薛家湾新华书店', '13514872555', '111.243529', '39.869746', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('180', '1', '19', '-1', '2171', '驼旺购物中心', '驼旺购物中心', '13804732701', '105.684555', '38.840368', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('181', '1', '4', '58', '562', '温陵南路257号', '泉州新华书店', '0595-22282089', '118.601883', '24.903582', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('182', '1', '4', '58', '563', '宝洲路689号浦西万达广场', '国美浦西万达店', '0595-22282089', '118.605047', '24.888808', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('183', '1', '4', '58', '-1', '温陵南路远太大厦4楼', '苏宁远太店', '0595-22282089', '118.600028', '24.901419', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('184', '1', '4', '58', '-1', '北门街中山公园地下文化广场', '泉州书城', '0595-22282089', '118.598473', '24.92159', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('185', '1', '4', '568', '-1', '湖光西路与小区支路交界处青阳湖光西路翠山苑一栋一楼', '大润发晋江店', '0595-22282089', '118.590478', '24.82221', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('186', '1', '4', '567', '-1', '德辉广场', '国美德辉店', '0595-22282089', '118.657457', '24.736452', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('187', '1', '4', '569', '-1', '新华路55—61号', '南安新华书店', '0595-22282089', '118.394387', '24.964633', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('188', '1', '4', '569', '-1', '水头镇新街212号', '新华书店（水头镇）', '0595-22282089', '118.440434', '24.709423', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('189', '1', '4', '58', '563', '安田路丰泽广场华都百货', '新华都丰泽店', '0595-22282089', '118.613148', '24.910022', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('190', '1', '4', '58', '-1', '益华电脑城一楼117号', '新盈电子', '13599221687', '118.601561', '24.911079', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('191', '1', '4', '58', '-1', '益华电脑城一楼160号', '易丰数码', '13506095616', '118.601561', '24.911079', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('192', '1', '4', '58', '-1', '万祥数码广场二楼2031/2052', '唯美数码', '15377997260', '118.607547', '24.899534', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('193', '1', '4', '567', '-1', '德辉广场捷龙超市', '联信贸易商行', '13959740708', '118.65632', '24.735648', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('194', '1', '4', '568', '-1', '青阳镇塘岸街福隆一期108幢401室', '易读宝福建分公司', '0595-82031789', '118.590296', '24.816438', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('195', '1', '4', '567', '-1', '九二东路7号', '育人书店', '13275075191', '118.658406', '24.741457', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('196', '1', '4', '567', '-1', '东港路世府名门2楼', '雅儒图书', '0595-88872858', '118.655168', '24.739266', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('197', '1', '4', '58', '570', '泉港区山腰金山街8号楼112-113店', '华艺教育书店', '0595-87971578', '118.91527', '25.132906', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('198', '1', '4', '58', '570', '洛阳镇屿头村昭扬街', '洛阳新华书店', '0595-87480371', '118.703667', '24.959408', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('199', '1', '4', '58', '572', '桃城路步行街11号', '福春百货', '0595-23855504', '118.303254', '25.326659', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('200', '1', '4', '53', '1283', '古田路22号五一广场正对面', '越洋书城', '0591-83309395', '119.31343', '26.082688', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('201', '1', '4', '53', '-1', '津泰路安泰中心B座新华书店', '安泰书城', '0591-83309395', '119.30771', '26.087807', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('202', '1', '4', '523', '-1', '高山联想电脑专卖店', '福清高山联想电脑店', '13763881196', '119.570932', '25.474147', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('203', '1', '4', '523', '-1', '玉屏街道后埔街美乐电子城一楼', '福清美乐电子', '0591-85235080', '119.390246', '25.728091', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('204', '1', '4', '530', '-1', '海坛中路盐务局一楼', '平潭俤仔电器', '13685001111', '119.792705', '25.511123', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('205', '1', '4', '524', '-1', '十洋商场永辉超市一楼', '长乐十洋永辉', '13950355499', '119.521158', '25.964363', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('206', '1', '4', '59', '581', '城关二小对面', '59大田联华书店', '13860598961', '117.853252', '25.691175', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('207', '1', '4', '55', '-1', '解放路新华书店一楼', '解放路新华书店', '13905098078', '118.18627', '26.646521', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('208', '1', '4', '55', '539', '五一九路新华书店', '邵武新华书店', '0599-8267733', '117.494198', '27.346913', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('209', '1', '4', '541', '-1', '城关新华书店', '建鸥新华书店', '13960611939', '118.33071', '27.04142', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('210', '1', '4', '57', '558', '新涵街230号新华书店', '新华书店涵江店', '0594-5533123', '119.124602', '25.465992', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('211', '1', '4', '57', '-1', '文献西路428号新华书店', '文献路新华书店', '0594-5533123', '119.014919', '25.438187', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('212', '1', '4', '57', '-1', '梅园西路三信花园三信电子城二楼C63号快易典专卖店', '三信电子城快易典专卖店', '0594-5533123', '119.014168', '25.444419', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('213', '1', '4', '60', '-1', 'SM城市广场四楼赛博', 'SM赛博数码广场专卖店', '0592-2383526，2383527', '118.13336', '24.506672', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('214', '1', '4', '60', '-1', '湖滨南路莲坂外图书城二楼', '莲坂外图厦门书城一店', '0592-2383526，2383527', '118.124629', '24.482446', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('215', '1', '4', '60', '-1', '湖滨南路莲坂外图书城二楼', '莲坂外图厦门书城旗舰店', '0592-2383526，2383527', '118.124629', '24.482446', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('216', '1', '4', '60', '-1', '湖滨南路百脑汇科技大厦3楼', '百脑汇三楼快易典专柜', '0592-2383526，2383527', '118.095483', '24.474125', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('217', '1', '4', '60', '-1', '嘉禾路388号永同昌大夏1楼新华书店', '新华书店嘉禾店', '0592-2383526，2383527', '118.133712', '24.50197', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('218', '1', '4', '60', '-1', '中山路新华书店二楼', '新华书店中山路店', '0592-2383526，2383527', '118.08635', '24.460418', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('219', '1', '4', '60', '-1', '杏林东路11号-111新华书店', '新华书店杏东路店', '0592-2383526，2383527', '118.050997', '24.57027', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('220', '1', '4', '60', '591', '城西路1号金安大厦1-2楼永乐思文一楼', '永乐思文同安店', '0592-2383526，2383527', '118.155795', '24.735558', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('221', '1', '4', '54', '535', '上杭江滨路118号', '上杭新华书店', '0592-2383526，2383527', '116.427035', '25.054118', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('222', '1', '4', '60', '589', '体育路95号文化艺术中心B1楼', '大润发厦门店', '0592-2383526，2383527', '118.118055', '24.497367', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('223', '1', '4', '54', '531', '西陂路', '大润发龙岩店 ', '0592-2383526，2383527', '117.024942', '25.09133', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('224', '1', '4', '523', '-1', '龙田镇龙辉街融鼎新天地', '福清龙田融鼎新天地', '13110786199', '119.454696', '25.61141', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('225', '1', '4', '55', '2661', '延安街西段68号新华书店一楼', '蒲城新华书店', '15159462618', '109.594286', '34.96094', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('226', '1', '4', '542', '-1', '中山路53号步行街贝贝佳一店', '建阳贝贝佳', '18960630266', '118.130103', '27.337912', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('227', '1', '4', '61', '-1', '胜利西路11号新华书店1楼', '漳州新华书店', '', '117.66145', '24.518073', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('228', '1', '4', '61', '-1', '新华北路与腾飞路交叉路口', '大润发漳州店', '', '117.666242', '24.521837', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('229', '1', '4', '57', '561', '城东镇坝垄村八二五大\n街179号', '新华书店仙游店', '', '118.701162', '25.366154', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('230', '1', '23', '300', '2475', '解放路111号新华书店(海子边东街)', '太原书城', '0351-4048859', '112.576434', '37.873785', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('231', '1', '23', '300', '2474', '南内环街130号青龙电脑城二层', '青龙电脑城', '0351-8710703', '112.564126', '37.844833', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('232', '1', '23', '300', '2484', '城南大街鸿业酒楼1层', '娄烦数码教育', '0351-5323630', '111.806385', '38.068633', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('233', '1', '23', '300', '2482', '城美锦北大街28号', '清徐鹏飞电子', '0351-5736301', '112.363353', '37.610905', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('234', '1', '23', '300', '2485', '金牛大街31号', '太原古交翰林文苑', '13903416011', '112.177644', '37.916214', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('235', '1', '23', '300', '2483', '星宇广场对面', '阳曲星宇商城', '13834135575', '112.681735', '38.065643', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('236', '1', '23', '1439', '-1', '鼓楼电脑电器城一楼电梯后', '大同鼓楼电器', '0352-2061968', '113.308351', '40.097374', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('237', '1', '23', '1439', '-1', '华联新天地四楼快易典专柜', '大同华林新天地', '13935210268', '113.295285', '40.100285', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('238', '1', '23', '1439', '-1', '北方电器城', '大同北方电器城', '13935210268', '113.180197', '40.040999', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('239', '1', '23', '1439', '2504', '北街一中门口东', '天镇学友电子', '0352-6824202', '114.098254', '40.428743', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('240', '1', '23', '1439', '2509', '西坪南街联通隔壁', '2509兴茂商城', '0352-8016015', '113.617548', '40.044169', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('241', '1', '23', '1439', '2503', '佳家玛广场东排美的专卖', '2503海洋数码', '0352-6623339', '113.754286', '40.370214', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('242', '1', '23', '1439', '2505', '新建东路一中西50米', '广灵华联电教', '0352-8823258', '114.292801', '39.772072', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('243', '1', '23', '1439', '2506', '政府广场对面', '灵丘时代数码', '0352-3386660', '114.242578', '39.446147', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('244', '1', '23', '307', '-1', '朔州新华书店旁', '朔州华兴文化广场总店', '0349-2036642', '112.440195', '39.32069', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('245', '1', '23', '307', '2563', '新华北路138号 附近 万宝电器', '怀仁万宝电器', '5608106', '113.110695', '39.832168', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('246', '1', '23', '308', '-1', '长征西街六中东侧', '诺亚舟专卖', '0350-2022448', '112.738039', '38.42258', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('247', '1', '23', '308', '2565', '前进西街市医院门东侧', '诺亚舟专卖', '0350-8234918', '112.713161', '38.736745', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('248', '1', '23', '308', '2565', '东大电器2楼', '东大电器', '0350-8234918', '112.729112', '38.735662', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('249', '1', '23', '308', '-1', '代县城东关小学西50米', '东海数码', '13835065234', '112.972068', '39.075889', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('250', '1', '23', '308', '2574', '钟楼北街十字路口西侧', '星月数码', '13994063305', '111.577381', '38.709651', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('251', '1', '23', '308', '2573', '新建路派出所隔壁', '正大数码', '0350-4338430', '111.84987', '38.916949', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('252', '1', '23', '308', '2575', '黄河大街中段国家电网对面', '步步高专卖', '18636023464', '111.155794', '39.389059', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('253', '1', '23', '308', '2577', '县医院对面', '学文数码', '13935022340', '111.5077', '39.448467', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('254', '1', '23', '309', '-1', '桃南东路68号(近天桥) 新华书店负一层楼梯右侧', '新华书店', '13935363417', '113.59162', '37.864805', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('255', '1', '23', '301', '-1', '西大街昌盛电脑城1层', '昌盛电脑城', '0355-2065205', '113.111959', '36.191237', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('256', '1', '23', '301', '-1', '城区英雄中路八一百货大楼旁边50米', '赛博电子', '0355-2111325', '113.125526', '36.207977', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('257', '1', '23', '301', '-1', '八一广场新华书店', '长治新华书店', '0355-2111325', '113.125044', '36.210939', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('258', '1', '23', '301', '-1', '八一百货大楼一层', '八一百货大楼', '0355-2111325', '113.125989', '36.20802', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('259', '1', '23', '301', '2496', '东大街77号', '英才电子专卖', '13835569115', '112.890989', '36.124308', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('260', '1', '23', '301', '2491', '襄垣三中对面', '小小数码', '0355-7224113', '113.050021', '36.537221', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('261', '1', '23', '303', '-1', '区泽州路风台小区口', '晋城教育书店', '0356-3039119', '112.861386', '35.504677', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('262', '1', '23', '303', '-1', '建设路省运汽车站斜对面', '晋城万卷书店', '0356-6966100', '112.856394', '35.503648', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('263', '1', '23', '303', '2511', '长平西街绿晶宾馆东50米', '步步高专卖', '0356-6918189', '112.933417', '35.80402', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('264', '1', '23', '303', '2514', '东关广播电视网络公司楼下', '恒大数码', '0356-6203676', '113.287248', '35.781038', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('265', '1', '23', '304', '2526', '翠峰街供销大楼旁', '四通科技通讯广场', '0354-7622599', '111.781526', '36.852894', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('266', '1', '23', '304', '2517', '体育路文苑书行三部', '文苑书行3部', '0354-7214758', '111.922408', '37.035656', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('267', '1', '23', '304', '-1', '祁县新建南路凤凰台往南20米', '好记星电教数码广场', '15525130635', '112.336391', '37.360803', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('268', '1', '23', '304', '2523', '新华书店旁', '五星数码', '0354-6226655', '112.563383', '37.426816', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('269', '1', '23', '304', '-1', '榆次君豪国际负一层快易典专卖', '君豪国际', '13546119520', '112.755704', '37.690339', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('270', '1', '23', '304', '2521', '新西街建设局西侧3米（昔阳中学路口）', '教育电子产品专卖', '13835492288', '113.700623', '37.61257', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('271', '1', '23', '304', '-1', '左权购物中心一层', '购物中心', '18634293123', '113.383885', '37.083188', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('272', '1', '23', '306', '2546', '大众北路长春酒店对面', '华北电教', '0358-7625002', '111.787225', '37.151619', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('273', '1', '23', '306', '2547', '汾阳高中旁', '纽曼专卖店', '0358-2109971', '111.802421', '37.266038', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('274', '1', '23', '306', '-1', '临县宾馆旁', '长虹书店', '0358-4423978', '111.000243', '37.962914', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('275', '1', '23', '306', '-1', '兴县广场对面', '利民数码电子', '0358-6326537', '111.132102', '38.470282', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('276', '1', '23', '306', '2555', '高中门口', '虫虫数码', '0358-6023869', '111.25167', '37.903481', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('277', '1', '23', '305', '-1', '傻二电脑城118号', '傻二电脑城', '0337-2166101', '111.51958', '36.087428', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('278', '1', '23', '305', '-1', '新华书店2层', '新华书店', '13653575356', '111.534852', '36.088136', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('279', '1', '23', '305', '2529', '鼓楼动人民银行门口', '音美数码电教', '0357-8993178', '111.731315', '36.576147', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('280', '1', '23', '305', '2533', '苏三监狱北50米（烟草公司对面）', '红海发达数码', '18613573900', '111.681549', '36.259504', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('281', '1', '23', '310', '2590', '龙兴街新华书店对面', '裕兴电子数码城', '0359-7521876', '111.232571', '35.619233', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('282', '1', '23', '310', '-1', '绛县振兴街商业宾馆楼下', '好记星专卖', '0359-6523011', '111.581364', '35.496199', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('283', '1', '23', '310', '2588', '太风路天泽宾馆对面', '洪辉数码港', '0359-7890552', '111.225091', '35.359972', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('284', '1', '23', '310', '2595', '永乐中街供销商场楼下', '好记星专卖', '0359-3023783', '110.696158', '34.70202', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('285', '1', '23', '310', '2585', '龙门广场新耿北街137号', '新华书店', '13935962024', '110.717686', '35.600343', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('286', '1', '23', '310', '2594', '西街中学大门西侧', '百家惠超市', '13934097314', '111.224397', '34.842575', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('287', '1', '31', '388', '-1', '江东北路221号', '宁波书城', '15557412405', '121.57177', '29.882618', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('288', '1', '31', '388', '-1', '中山东路567号', '中山路新华书店', '13123827360', '121.558631', '29.878892', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('289', '1', '31', '388', '3282', '南大街119号新华书店1楼', '镇海新华书店', '057486280598', '121.72597', '29.95618', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('290', '1', '31', '388', '3286', '浒山新城大道89号慈溪书城', '慈溪新华书店', '057463397228', '121.270389', '30.175614', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('291', '1', '31', '388', '3283', '新矸街道明州路114-118号', '北仑新华书店', '057486830978', '121.843149', '29.919617', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('292', '1', '31', '388', '3287', '惠政西路26号', '奉化新华书店', '15957869602', '121.419536', '29.664617', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('293', '1', '31', '388', '3289', '人民路46号', '宁海天一书店', '15088496149', '121.435251', '29.30266', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('294', '1', '31', '388', '3285', '阳明西路110号新华书店1楼', '余姚新华书店', '13456107841', '121.156358', '30.05587', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('295', '1', '31', '388', '3282', '骆驼镇骆驼街道荣骆路141号', '骆驼新华书店', '13777126297', '121.594796', '29.988037', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('296', '1', '31', '388', '-1', '中山东路301号新江厦商城4层', '新江厦书店', '13165907270', '121.569702', '29.876433', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('297', '1', '31', '390', '3298', '西路桥大道201号', '路桥新华书店', '057682439681', '121.37265', '28.590658', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('298', '1', '31', '390', '3296', '市府大道128号', '椒江新华书店', '13586940060', '121.446414', '28.657336', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('299', '1', '31', '390', '3298', '腾达路与会展西路交汇处', '台州电子城', '13357629955', '121.376364', '28.595891', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('300', '1', '31', '390', '3300', '城关巾山西路74号', '临海新华书店', '057685381062', '121.124765', '28.84891', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('301', '1', '31', '390', '3300', '杜桥镇杜川路81号', '杜桥新华书店', '057685661108', '121.503176', '28.771482', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('302', '1', '31', '-1', '-1', '太平镇人民中路313号', '温岭新华书店', '057686019090', '121.375445', '28.371306', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('303', '1', '31', '393', '3320', '新桥街16-3号', '衢州快易典专卖店', '05703058568', '118.880199', '28.965074', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('304', '1', '31', '393', '3320', '裱褙巷6号', '衢州新华书店', '05703058568', '118.878468', '28.964395', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('305', '1', '31', '393', '3320', '新桥街上街80号', '衢州教育书店', '05703058568', '118.880197', '28.959963', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('306', '1', '31', '393', '3320', '常山县文峰西路64号', '衢州常山新华书店', '05705021121', '118.524295', '28.904871', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('307', '1', '31', '393', '3321', '解放路10号', '衢州江山新华书店', '05704018725', '118.633369', '28.741756', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('308', '1', '31', '393', '3323', '解放路79号', '衢州开化新华书店', '05706014246', '118.422357', '29.147072', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('309', '1', '31', '393', '3320', '西区', '衢州西区新华书店', '05703058568', '118.856766', '28.975091', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('310', '1', '31', '391', '3305', '公园路宏德大楼一层', '温州书城', '057788861239', '120.668331', '28.018744', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('311', '1', '31', '391', '3309', '幸福东路虹桥时代广场二楼', '虹桥书城', '13736731831', '121.04291', '28.221692', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('312', '1', '31', '391', '3305', '飞霞南路南站天桥旁', '温州电脑市场', '057788861239', '120.675672', '28.017548', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('313', '1', '31', '391', '-1', '黎明西路数码广场', '温州数码广场', '13732044077', '120.683601', '28.01766', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('314', '1', '31', '386', '3266', '胜利街151号新华书店一楼', '永康新华书店', '057983292403', '120.035', '28.90299', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('315', '1', '31', '389', '-1', '中兴中路215号', '绍兴颐高数码', '13626880061', '120.594169', '30.007242', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('316', '1', '31', '389', '-1', '胜利东路113号图书发行大楼1-4层', '绍兴新华书店', '13655854024', '120.593036', '30.010385', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('317', '1', '31', '387', '3270', '紫金路636号', '丽水书城', '13586940060', '119.93767', '28.449336', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('318', '1', '31', '387', '3272', '新大街6号', '青田新华书店', '13586940060', '120.29534', '28.145627', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('319', '1', '31', '383', '3231', '庆春路217号一楼和三楼', '杭州购书中心', '18607031937', '120.169809', '30.263922', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('320', '1', '31', '383', '-1', '解放路225号新华书店一楼', '杭州新华书店', '15158865132', '120.174764', '30.256085', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('321', '1', '31', '383', '-1', '九堡金海城内新华书店一楼', '九堡新华书店', '13757119604', '120.273487', '30.314707', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('322', '1', '31', '383', '3239', '桂花路28号新华书店二楼', '富阳新华书店', '15924140477', '119.967093', '30.054987', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('323', '1', '31', '383', '3239', '桂花西路281号购书中心一楼', '富阳购书中心', '13958189713', '119.965509', '30.057746', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('324', '1', '31', '383', '3235', '心中路465号二楼', '萧山新华书店', '15068796619', '120.28396', '30.17115', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('325', '1', '31', '385', '-1', '中山西路1001号', '大润发嘉兴店', '', '120.720957', '30.765106', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('326', '1', '31', '388', '3283', '新大路与通途交叉口', '大润发北仑店', '', '121.823318', '29.900912', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('327', '1', '31', '391', '3308', '罗阳大道时代大厦', '大润发瑞安店', '', '120.667522', '27.778356', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('328', '1', '31', '385', '3252', '新华中路519号', '大润发平湖店', '', '121.022893', '30.708994', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('329', '1', '31', '388', '3287', '南山路8号', '大润发奉化店', '', '121.421587', '29.659556', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('330', '1', '31', '388', '3286', '北二环中路550号', '大润发慈溪店', '', '121.250206', '30.187431', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('331', '1', '31', '385', '3254', '新桥北路与文昌东路交接西南侧', '大润发海盐店', '', '120.95589', '30.523256', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('332', '1', '31', '385', '3251', '罗星街道施家南路318号', '大润发嘉善店', '', '120.941059', '30.843484', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('333', '1', '31', '388', '3288', '天安路与丹南路交汇处东南角', '大润发象山店', '', '121.892997', '29.468473', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('334', '1', '31', '390', '3297', '洞天路288号', '大润发黄岩店', '', '121.26699', '28.637175', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('335', '1', '31', '389', '3291', '百官街道城北新区', '大润发上虞店', '', '120.885081', '30.039325', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('336', '1', '31', '384', '-1', '滨河路666号', '大润发湖州店', '', '120.100006', '30.880084', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('337', '1', '31', '393', '3320', '三衢路238号', '大润发衢州店', '', '118.885507', '28.950039', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('338', '1', '31', '383', '3235', '育才北路518号', '大润发萧山店', '', '120.284539', '30.186073', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('339', '1', '31', '383', '3239', '孙权路209号', '大润发富阳店', '', '119.946703', '30.057628', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('340', '1', '31', '389', '3295', '苎萝东路195号', '大润发诸暨店', '', '120.260894', '29.708058', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('341', '1', '31', '383', '3241', '桐君街道迎春南路359号', '大润发桐庐店', '', '119.696108', '29.799451', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('342', '1', '31', '384', '3246', '古城街道长海路288号', '大润发长兴店', '', '119.916517', '31.004131', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('343', '1', '31', '383', '3238', '严州大道988号', '大润发建德店', '', '119.305049', '29.490773', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('344', '1', '31', '383', '3231', '石桥路532号', '大润发石桥店', '', '120.197691', '30.348302', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('345', '1', '31', '386', '3266', '东城街九铃东路3117号', '大润发永康店', '', '120.04304', '28.902705', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('346', '1', '31', '387', '3270', '宇雷北路185号', '大润发丽水店', '', '119.931259', '28.469176', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('347', '1', '10', '140', '1136', '海信路  南 556 米', '1136红星书店', '0551-6623289', '117.5', '38.14', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('348', '1', '10', '140', '1137', '北大街', '盐山千童购物中心', '0551-8816273', '117.23', '38.06', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('349', '1', '10', '140', '1135', '东光镇东武千路径南侧', '盐山百货', '13303375318', '116.54', '37.89', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('350', '1', '10', '140', '-1', '孟村回族自治县团结路中段', '孟村盐百商厦', '0551-6829020', '117.23', '38.05', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('351', '1', '10', '140', '1127', '光荣路', '沧州盐百购物中心', '0551-3058182', '116.86', '38.31', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('352', '1', '10', '140', '1127', '南北大街信誉楼商厦', '沧州信誉楼商厦', '0551-3168817', '116.81', '38.33', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('353', '1', '10', '140', '1127', '解放西路颐和广场', '沧州同天购物中心', '0551-2092197', '116.83', '38.31', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('354', '1', '10', '140', '1127', '金街步行街', '沧州金街电子城', '13363666680', '116.86', '38.31', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('355', '1', '10', '140', '1139', '北环路北侧', '南皮信合商厦', '0551-8862175', '116.7', '38.05', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('356', '1', '10', '140', '-1', '泊头解放西路', '泊头信誉楼商厦', '0551-8312096', '116.56', '38.07', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('357', '1', '10', '140', '1135', '东光镇北城区（二建公司）', '东光信和商厦', '0551-7738000', '116.56', '38.07', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('358', '1', '10', '140', '1135', '东兴路', '东光东祥商厦', '0551-7891313', '116.55', '37.88', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('359', '1', '10', '140', '1140', '桑园镇长江路南侧', '吴桥信发商厦', '0551-7273507', '116.39', '37.63', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('360', '1', '10', '140', '1132', '城垣西路', '河间信誉楼商厦', '0551-7685871', '116.08', '38.44', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('361', '1', '10', '140', '1138', '青园街', '肃宁耀华商厦', '0551-6128888', '116.08', '38.44', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('362', '1', '10', '140', '-1', '献县南北大街', '献县三味书屋', '0551-4628681', '116.12', '38.19', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('363', '1', '10', '140', '1131', '信誉楼大街', '黄骅信誉楼商厦', '0551-5319727', '117.35', '38.37', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('364', '1', '10', '140', '1131', '信誉楼大街', '黄骅耀华商厦', '0551-5320420', '117.35', '38.37', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('365', '1', '10', '140', '1131', '新海西路', '黄骅顺意', '0551-5235067', '117.33', '38.38', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('366', '1', '10', '140', '-1', '青县新华中路', '青县信誉楼商厦', '0551-4320481', '116.82', '38.58', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('367', '1', '10', '140', '1140', '长江路', '青县信发商厦', '13363666680', '116.4', '37.63', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('368', '1', '10', '139', '-1', '朝阳南大街57号', '图书大厦', '18632280888', '115.47', '38.87', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('369', '1', '10', '139', '-1', '裕华路保百对过', '裕华路新华书店', '18632280888', '115.49', '38.86', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('370', '1', '10', '139', '-1', '区明华前', '博大电子', '13111697978', '115.5', '38.86', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('371', '1', '10', '139', '1103', '裕华西路276号', '颐高数码广场', '', '115.5', '38.86', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('372', '1', '10', '139', '-1', '明华一楼南门右转步步高', '明华电脑城', '13011926700', '115.5', '38.86', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('373', '1', '10', '139', '-1', '朝阳南大街36', '时代商厦', '13663329282', '115.47', '38.88', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('374', '1', '10', '139', '1116', '朝阳路', '高阳大世界', '13363667700', '115.48', '38.69', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('375', '1', '10', '139', '1107', '天空手机城旁边', '安国天琪数码', '15831546482', '115.32', '38.45', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('376', '1', '10', '139', '1109', '广电大厦对面', '满城科讯数码', '13503127732', '115.32', '38.95', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('377', '1', '10', '139', '1122', '惠友购物广场二楼', '曲阳惠友购物广场', '15128967322', '115.15', '38.73', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('378', '1', '10', '139', '-1', '蠡县1+1电子城二楼', '蠡县画音数码', '15233740222', '115.58', '38.5', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('379', '1', '10', '139', '1124', '林江商厦1楼', '顺平林江商厦', '15100254132', '115.13', '38.87', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('380', '1', '10', '139', '1113', '新华书店', '徐水新华书店', '13582388095', '115.67', '39.01', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('381', '1', '10', '139', '1113', '双隆2楼', '徐水双隆商厦', '15133258610', '115.64', '39.03', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('382', '1', '10', '139', '-1', '蓉城双隆商厦一楼', '蓉城双隆商厦', '15133258629', '115.64', '39.03', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('383', '1', '10', '139', '-1', '涞源百货一楼', '涞源百货', '15231968765', '114.99', '38.78', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('384', '1', '10', '139', '-1', '唐县新幸福树对过', '风采音响', '13933249709', '114.67', '39.3', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('385', '1', '10', '139', '1114', '惠友购物广场二楼', '定兴惠友购物广场', '13463443833', '115.81', '39.28', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('386', '1', '10', '140', '-1', '任丘燕春楼一楼快易典专柜', '任丘燕春楼一楼', '18332280888', '116.11', '38.71', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('387', '1', '10', '140', '-1', '任丘燕春楼六楼快易典专柜', '任丘燕春楼六楼', '18332280888', '116.11', '38.71', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('388', '1', '10', '140', '1130', '步行街', '卓达文体用品店', '18603280888', '116.1', '38.69', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('389', '1', '10', '148', null, '庄桥西新华书店二楼快易典专柜', '张家口桥西书店', '03138535076', '114.88', '40.82', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('390', '1', '10', '148', '1236', '步行街新华书店二楼', '1236新华书店', '13333133572', '115.06', '40.61', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('391', '1', '10', '148', '1239', '亿达商场二楼', '张北亿达商场', '03138535076', '114.72', '41.16', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('392', '1', '10', '148', '1245', '柴沟堡十字街胜利商厦一楼好记星', '柴沟堡胜利商厦', '15832359180', '114.42', '40.67', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('393', '1', '10', '148', '-1', '康保步步高电子城', '康保步步高电子城', '18631364528', '114.61', '41.85', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('394', '1', '10', '148', '-1', '蔚县电视塔新华书店', '蔚县新华书店', '03137186189', '114.59', '39.85', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('395', '1', '10', '148', '1247', '沙城汽车站对过壹圆书市', '沙城壹圆书店', '15324072427', '115.52', '40.41', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('396', '1', '10', '148', '1247', '1247沙城步行街北头翰林学苑书店', '沙城翰林学苑书店', '13831397528', '115.53', '40.41', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('397', '1', '10', '148', '-1', '春来电器新店一楼', '琢鹿春来电器', '18903131585', '115.22', '40.37', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('398', '1', '10', '148', '1241', '老车站对面爱人悦音像', '沽源爱人悦音像店', '13582984242', '115.69', '41.67', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('399', '1', '10', '148', '1242', '十字街西行100米路南学而乐快易典专卖店', '尚义学而乐', '03138535076', '113.97', '41.13', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('400', '1', '10', '148', '-1', '赤城汽车站西行100米新月书店', '赤城新月书店', '13633133049', '115.84', '40.91', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('401', '1', '10', '141', '-1', '蓝岛大厦五楼', '蓝岛大厦', '15803242988', '117.94', '40.97', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('402', '1', '10', '141', '1150', '存瑞中学对面孙国栋', '隆化蓬勃书店', '/', '117.73', '41.32', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('403', '1', '10', '141', '-1', '雪亮广场快易典专柜李展琴', '宽城雪亮广场', '/', '118.49', '40.61', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('404', '1', '10', '141', '-1', '平泉一中门口南行行20米', '平泉大拇指文百店', '13084595688', '118.69', '41.01', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('405', '1', '10', '141', '-1', '平泉华晨购物广场一楼', '华晨购物广场', '13084595688', '118.7', '41.01', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('406', '1', '10', '141', '-1', '丰宁承德商厦', '丰宁承德商厦', '/', '116.65', '41.21', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('407', '1', '10', '141', '1147', '文静书店', '文静书店', '13603346813', '117.51', '40.42', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('408', '1', '10', '138', '-1', '民族路太和IT商场', '138太和一楼A区11号', '13932170267', '114.48', '38.05', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('409', '1', '10', '138', '-1', '民族路太和IT商场', '138太和二楼D区26号', '13932170267', '114.48', '38.05', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('410', '1', '10', '138', '-1', '民族路太和IT商场', '138太和二楼F区70-2', '13932170267', '114.48', '38.05', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('411', '1', '10', '138', '-1', '民族路颐高数码广场', '颐高电子城二楼2144号', '13833396110', '114.48', '38.05', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('412', '1', '10', '138', '1078', '中山东路199号', '138图书大厦3楼', '13331380731', '114.51', '38.04', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('413', '1', '10', '138', '-1', '站前街26号', '138汇文书店', '13831190885', '114.49', '38.04', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('414', '1', '10', '138', '1082', '谈固东街', '138北国超市谈固东街店', '18633018573', '114.57', '38.02', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('415', '1', '10', '138', '-1', '红旗大街与裕华西路交口', '益友北国超市', '13231194518', '114.45', '38.03', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('416', '1', '10', '138', '-1', '老百货商场对面', '栾城商博瑞购物广场', '13930177591', '114.65', '37.92', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('417', '1', '10', '138', '-1', '栾城小霸王电器', '栾城小霸王电器', '13930177591', '114.65', '37.92', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('418', '1', '10', '138', '-1', '高邑县正东路金海岸电子城', '高邑金海岸电子城', '13831152314', '114.61', '37.62', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('419', '1', '10', '138', '1101', '自强路', '1101信誉楼', '15632105121', '114.78', '37.76', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('420', '1', '10', '138', '1101', '石塔路与柏林大街西行200米', '1101旭日书店', '13081010520', '114.78', '37.75', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('421', '1', '10', '138', '1101', '北王里镇', '1101北王里乡源泉书店', '13780516906', '114.65', '37.76', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('422', '1', '10', '138', '1097', '快易典专卖', '赞皇快易典专卖', '13931845425', '114.39', '37.67', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('423', '1', '10', '138', '-1', '1100槐阳大街 附近', '元氏燕赵书店一店', '13803364560', '114.54', '37.76', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('424', '1', '10', '138', '1100', '燕赵书店', '元氏燕赵书店二店', '13803364560', '114.54', '37.76', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('425', '1', '10', '138', '1099', '1', '兴山商场', '15003319698', '114.18', '38.26', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('426', '1', '10', '138', '1087', '1', '红日数码家电', '13383318316', '115.03', '38.02', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('427', '1', '10', '138', '1087', '中兴路', '晋州信誉楼', '/', '115.04', '38.03', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('428', '1', '10', '138', '-1', '藁城信誉楼工业路昌盛街交叉口', '藁城信誉楼', '15130090553', '114.86', '38.03', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('429', '1', '10', '138', '1094', '北环路中段国税局对过', '灵寿中天商场', '/', '114.38', '38.32', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('430', '1', '10', '138', '1094', '工商银行对过快易典专卖', '灵寿快易典专卖', '13400118506', '114.39', '38.31', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('431', '1', '10', '138', '-1', '无极实验小学', '学苑书店', '13073124939', '114.97', '38.21', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('432', '1', '10', '138', '1099', '妇幼保健院旁边', '平山容大商场二楼', '18632799932', '114.21', '38.27', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('433', '1', '10', '138', '1099', '柏东路', '柏东购物乐乐数码', '18332364318', '114.21', '38.26', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('434', '1', '10', '142', '-1', '康德商场一楼东门', '康德一楼', '0310-2036158', '114.48', '36.61', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('435', '1', '10', '142', '1157', '滏临南大街新世纪购物广场', '峰峰新世纪1楼', '0310-5019304', '114.21', '36.42', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('436', '1', '10', '142', '1157', '滨河东路', '峰峰美食林超市1楼', '0310-5019304', '114.24', '36.45', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('437', '1', '10', '142', '-1', '馆陶商场对面', '超艺电子城', '13703309058', '115.3', '36.54', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('438', '1', '10', '142', '1160', '电视台广场南行50米路东', '文化书店快易典专卖', '13103101210', '114.6', '36.35', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('439', '1', '10', '142', '-1', '涉县汇丰商城', '汇丰商城', '15033058265', '113.67', '36.56', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('440', '1', '10', '142', '-1', '黄粱梦永康路', '晨光文具店', '15188899220', '114.49', '36.68', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('441', '1', '10', '142', '1162', '大名府路冠兴商厦（妇幼保健院东侧）', '冠兴商厦', '15003109377', '115.16', '36.28', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('442', '1', '10', '147', '-1', '郭守敬北路', '邢台新华书店', '13171853628', '114.48', '37.06', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('443', '1', '10', '147', '-1', '郭守敬路256科技大厦三楼', '邢台科技大厦', '13171853628', '114.48', '37.07', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('444', '1', '10', '147', '1226', '一小对面', '宁晋快易典专卖店', '18603276187', '114.92', '37.65', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('445', '1', '10', '147', '1227', '步行街', '一分利数码家电', '15930063228', '115.04', '37.25', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('446', '1', '10', '147', '1223', '公安局北行100米路东知音音像\n', '邢台隆尧知音数码', '15030988883', '114.78', '37.35', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('447', '1', '10', '147', '-1', '东庞镇', '益智书店', '13933704176', '114.49', '37.23', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('448', '1', '10', '147', '1229', '九州书店', '九州书店', '18233962658', '115.14', '37.1', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('449', '1', '10', '147', '1229', '1', '玩具车音箱小家电', '18231979814', '115.14', '37.1', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('450', '1', '10', '147', '1233', '运河路', '宏展电子超市', '13933734778', '115.5', '36.87', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('451', '1', '10', '147', '-1', '威县东环城路中段', '威县信和商厦', '18733984388', '115.27', '37', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('452', '1', '10', '147', '1228', '1', '新河快易典专卖', '13400192185', '115.24', '37.54', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('453', '1', '10', '147', '1222', '1', '英杰数码', '15354195772', '114.69', '37.5', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('454', '1', '22', '287', '2372', '西四路641号百货大楼4楼', '东营鲁百百货大楼', '0546-7786189', '118.48565', '37.473248', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('455', '1', '22', '287', '2372', '济南路54号一楼', '东营明珠书店快易典专柜', '0546-8271786', '118.51372', '37.467799', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('456', '1', '22', '287', '2374', '黄河广场东侧信誉楼二楼', '东营信誉楼百货有限公司', '13562261883', '118.556474', '37.591077', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('457', '1', '22', '299', '2465', '中心路125号淄博商厦五楼', '淄博商厦', '0533-2151981', '118.064557', '36.80799', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('458', '1', '22', '299', '2470', '张北路1373号信誉楼二楼', '信誉楼桓台商厦', '0533-2629217', '118.104884', '36.952701', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('459', '1', '22', '299', '2469', '中和街周村新华书店一楼', '淄博周村新华书店', '13475564588', '117.857051', '36.80414', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('460', '1', '22', '299', '-1', '东泰商厦一楼', '淄博东泰商厦', '0533-7314118', '118.303075', '36.825672', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('461', '1', '22', '299', '2472', '健康路北首成和商厦二楼', '沂源成和商厦', '15153379691', '118.177294', '36.198438', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('462', '1', '22', '299', '2469', '东街183号利群超市一楼', '山东奥德隆利群超市', '0533-6159395', '117.858583', '36.811277', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('463', '1', '22', '285', '-1', '黄河五路渤海七路三中西邻', '滨州快易典专卖店', '0543-6993586', '118.02465', '37.387523', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('464', '1', '22', '285', '2360', '魏桥镇家佳乐超市一楼', '滨州魏桥家佳乐超市', '15315333933', '117.50698', '37.035461', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('465', '1', '22', '285', '2360', '黄山二路圣豪百货', '滨州邹平商厦', '0531-4354178', '117.743736', '36.888831', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('466', '1', '22', '291', '-1', '莘县教育局楼下', '聊城老九书店', '0635-7328305', '115.675317', '36.244508', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('467', '1', '22', '283', '2336', '洪家楼西路新华书店二楼快易典专柜', '洪家楼新华书店', '18766177951', '117.071029', '36.689429', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('468', '1', '22', '283', '2335', '经二路628号新华书店二楼', '槐荫新华书店', '18764060125', '116.979999', '36.66665', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('469', '1', '22', '283', '2333', '解放路43号赛博数码广场', '赛博电脑城', '18678395636', '117.062621', '36.672172', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('470', '1', '22', '283', '2338', '双山大街鲁宏大道交界口银座超市负一层快易典专柜', '章丘银座', '15866642244', '117.538139', '36.706227', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('471', '1', '22', '283', '2338', '华联超市四楼快易典专柜', '章丘华联', '13964072553', '117.54609', '36.72002', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('472', '1', '22', '283', '2340', '纬二路好又多超市一楼电梯口', '济阳好又多', '0531-81171919', '117.19643', '36.981038', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('473', '1', '22', '283', '-1', '平阴实验小学旁边', '平阴兴华书店', '15339960126', '116.467537', '36.2966', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('474', '1', '22', '286', '-1', '湖滨中大道118号', '德百大楼', '14769870897', '116.316073', '37.450691', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('475', '1', '22', '286', '-1', '东风东路1899号', '澳德乐购物广场', '15165993134', '116.371656', '37.435348', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('476', '1', '22', '286', '-1', '德兴中大道676号', '天衢购物中心', '18263072633', '116.328188', '37.462371', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('477', '1', '22', '286', '2371', '滨湖丽都对面', '武城盐百', '15053418685', '116.064099', '37.220648', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('478', '1', '22', '286', '2363', '兴隆大街中段', '乐陵联华超市', '15954771666', '116.393082', '37.425431', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('479', '1', '22', '286', '2367', '迎宾路信业大楼1楼', '临邑信业商厦', '15315880810', '116.876495', '37.198359', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('480', '1', '22', '286', '2366', '开元大街888号', '庆云信誉商厦', '15853429812', '117.398038', '37.782494', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('481', '1', '22', '286', '2369', '信誉楼二楼成和商厦', '平原信誉楼', '15965201542', '116.448412', '37.170126', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('482', '1', '22', '291', '-1', '东昌路与柳园路路口西南角百大三联二楼', '百大三联', '13475891951', '115.994632', '36.462777', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('483', '1', '22', '291', '-1', '东昌府区柳园南路科技市场', '闸口科技市场', '15964791647', '115.995001', '36.450774', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('484', '1', '22', '291', '-1', '东昌东路139号', '聊城金鼎百货', '18863527007', '115.996815', '36.463329', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('485', '1', '22', '291', '2402', '宝福邻1一楼', '阳谷宝福邻', '6336187', '115.797506', '36.123864', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('486', '1', '22', '291', '2402', '城谷山路88号', '阳谷华联', '13508936543', '115.795199', '36.114746', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('487', '1', '22', '291', '2404', '中心街229号', '茌平宝福邻', '13863517613', '116.263452', '36.596911', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('488', '1', '22', '291', '-1', '临清大众路', '临清金鼎百货', '15863541530', '115.712422', '36.851183', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('489', '1', '22', '291', '2405', '商业街', '东阿恒源购物广场', '15653159716', '116.25793', '36.337946', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('490', '1', '22', '296', '2443', '城里东街九天音像教育电子', '昌邑九天音像教育电子', '1378082007', '119.40744', '36.859824', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('491', '1', '22', '296', '2442', '蔡站镇快易典专卖店', '蔡站快易典', '15866189088', '119.171811', '36.70813', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('492', '1', '22', '296', '2438', '金天地购物广场一楼快易典专柜', '青州金天地购物广场', '13361569697', '118.471306', '36.707102', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('493', '1', '22', '296', '2442', '人民路新华书店系20米', '高密科美数码', '13953672757', '119.765854', '36.388922', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('494', '1', '22', '296', '2445', '利民街东首217号新华书店2楼', '昌乐新华书店', '13355361567', '118.835341', '36.712664', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('495', '1', '22', '296', '2439', '人民路与和平街交叉路口向东100米路北', '诸城新华书店', '13402268288', '119.41451', '36.00196', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('496', '1', '22', '296', '2441', '新华书店2楼', '安丘新华书店', '15053674010', '119.210088', '36.439539', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('497', '1', '22', '296', '2435', '民主街302号2楼', '寒亭新华书店', '18754413068', '119.220084', '36.779863', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('498', '1', '22', '296', '2436', '朝凤路新华书店2楼', '坊子新华书店', '13563668966', '119.17565', '36.658588', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('499', '1', '22', '296', '2444', '亿百家商场地下中百超市入口数码港', '临朐中百超市数码港', '13780896550', '118.549094', '36.520509', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('500', '1', '22', '296', '2444', '兴隆路全福元商场负一楼超市', '临朐全福元商场', '15953682906', '118.551112', '36.525019', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('501', '1', '22', '296', '2440', '迎宾路教育书店', '寿光教育书店', '13793693169', '118.748317', '36.873935', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('502', '1', '22', '297', '2446', '百盛商厦负一层', '烟台大润发', '13053512325', '121.386028', '37.550005', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('503', '1', '22', '297', '2451', '西大街127号一层', '龙口新华书店', '13780912733', '120.538403', '37.653365', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('504', '1', '22', '297', '-1', '烟台科技市场众诚数码一层', '众诚数码广场', '0535-6678102', '121.381138', '37.555913', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('505', '1', '22', '297', '-1', '威海环翠区和平路6号苏宁电器一楼', '威海苏宁电器', '18660318088', '122.125927', '37.508187', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('506', '1', '22', '297', '2446', '南大街126号银座商城负一楼', '烟台银座商城', '13884661611', '121.383332', '37.547123', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('507', '1', '22', '297', '2448', '振华商厦二楼', '牟平希望数码', '18853571777', '121.604843', '37.401987', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('508', '1', '22', '293', '-1', '北京路中段银座二楼', '日照银座商场', '0633-2282788', '119.528386', '35.419309', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('509', '1', '22', '293', '-1', '正阳路46号百货大楼二楼', '日照百货大楼', '0633-2282788', '119.46686', '35.432067', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('510', '1', '22', '293', '-1', '兴海路109号凌云家店二楼', '日照凌云家电连锁', '0633-2282788', '119.487084', '35.420912', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('511', '1', '22', '293', '2421', '圣览路与观海路交汇处银座三楼', '岚山银座商场', '0633-2282788', '119.324049', '35.124021', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('512', '1', '22', '293', '2422', '解放路建设路交汇新玛特一楼', '五莲新玛特', '0633-2282788', '119.21194', '35.757939', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('513', '1', '22', '293', '-1', '海曲东路35号大润发二楼', '日照大润发', '0633-2282788', '119.500095', '35.42367', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('514', '1', '22', '292', '2408', '解放路新华书店二楼', '临沂新华书店', '18653936260', '118.351395', '35.07084', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('515', '1', '22', '292', '-1', '人民广场大润发负一楼', '临沂大润发', '18953963188', '118.34356', '35.067738', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('516', '1', '22', '292', '2418', '新城路166号', '蒙阴新华书店', '18653981099', '117.949383', '35.716256', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('517', '1', '22', '288', '-1', '牡丹北路金霸家电一楼', '菏泽金霸家电', '18953963188', '115.46922', '35.252169', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('518', '1', '22', '288', '-1', '牡丹北路三联家电一楼', '菏泽三联家电', '15550125575', '115.46403', '35.24864', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('519', '1', '22', '289', '-1', '运河城商场五楼', '济宁运河城商场快易典专柜', '0537-2583866', '116.596722', '35.413279', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('520', '1', '22', '289', '-1', '大润发负一楼', '济宁大润发快易典专柜', '0537-2583866', '116.61259', '35.416478', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('521', '1', '22', '289', '2388', '百意商城一楼', '曲阜百意商城', '0537-2583866', '117.005576', '35.59415', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('522', '1', '22', '289', '2390', '百货大楼一楼', '邹城百货大楼', '0537-2583866', '116.97603', '35.409977', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('523', '1', '22', '289', '2395', '联民广场二楼', '汶上联民广场', '0537-2583866', '116.50072', '35.72638', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('524', '1', '22', '289', '2397', '水泊商场一楼', '梁山水泊商场', '0537-2583866', '116.105731', '35.821838', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('525', '1', '22', '289', '2396', '联民商场一楼', '泗水联民商场', '0537-2583866', '117.27958', '35.650068', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('526', '1', '22', '289', '2394', '联民商场一楼', '嘉祥联民广场', '0537-2583866', '117.27958', '35.650068', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('527', '1', '22', '284', '2342', '香港中路72号2F', '青岛佳世客', '13791987333', '120.403495', '36.069627', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('528', '1', '22', '284', '2080', '长江中路419号2F', '黄岛佳世客', '0532-86996353', '120.196208', '35.961304', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('529', '1', '22', '284', '2343', '辽宁路228号', '青岛电子信息城', '0532-83809169', '120.33971', '36.088427', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('530', '1', '22', '284', '2343', '辽宁路167号2楼A2006', '青岛颐高数码广场', '0532-80912231', '120.338849', '36.088267', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('531', '1', '22', '284', '2343', '台东三路77号6F', '台东利群', '18854299565', '120.362725', '36.088493', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('532', '1', '22', '284', '2080', '香江路78号3F', '长江商厦', '13963994948', '120.187139', '35.974471', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('533', '1', '22', '284', '2344', '正阳陆155号5F', '城阳利群', '15092425199', '120.42376', '36.311776', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('534', '1', '22', '284', '2080', '长江中路198号2F', '黄岛书城', '15969854070', '120.200864', '35.962378', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('535', '1', '22', '284', '2351', '扬州路58号', '平度新华书店', '13156268006', '119.960077', '36.789546', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('536', '1', '22', '284', '2349', '广州南路62号', '胶州新华书店', '0532-82277839', '120.01451', '36.287939', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('537', '1', '22', '284', '2351', '扬州路39号', '平度维客', '15020020237', '119.960146', '36.79141', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('538', '1', '22', '284', '2344', '华城路26号1F', '城阳新华书店', '13791906989', '120.390383', '36.30838', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('539', '1', '22', '284', '2353', '上海路23号', '莱西新华书店', '', '120.528651', '36.88461', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('540', '1', '22', '284', '2353', '威海中路2号', '莱西老新华书店', '15666683115', '120.528834', '36.867627', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('541', '1', '22', '284', '2346', '书院路13号2F', '李村新华书店', '', '120.430284', '36.163429', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('542', '1', '22', '284', '2351', '苏州路61-6甲二楼', '平度大润发', '13864297801', '119.968079', '36.787075', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('543', '1', '22', '284', '-1', '香港中路书城二楼', '青岛书城', '13255561317', '120.408297', '36.071356', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('544', '1', '22', '284', '2349', '广州北路向阳市场旁大润发1F', '胶州大润发', '15853225126', '120.015929', '36.297168', '2014-08-02 09:09:24', '1', '1');
INSERT INTO `t_web_distribute` VALUES ('545', '1', '22', '284', '2350', '蓝村镇青沙路98号', '书林漫步书店', '', '120.189148', '36.416264', '2014-08-02 09:09:24', '1', '1');

-- ----------------------------
-- Table structure for t_web_distribute_type
-- ----------------------------
DROP TABLE IF EXISTS `t_web_distribute_type`;
CREATE TABLE `t_web_distribute_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `sortIndex` int(11) DEFAULT NULL COMMENT '排序',
  `addTime` datetime DEFAULT NULL COMMENT '添加时间',
  `status` int(11) DEFAULT NULL COMMENT '是否显示',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_web_distribute_type
-- ----------------------------
INSERT INTO `t_web_distribute_type` VALUES ('1', '销售网点', '1', '2014-08-21 14:10:41', '1');
INSERT INTO `t_web_distribute_type` VALUES ('2', '售后网点', '2', '2014-08-21 14:10:52', '1');

-- ----------------------------
-- Table structure for t_weili_display
-- ----------------------------
DROP TABLE IF EXISTS `t_weili_display`;
CREATE TABLE `t_weili_display` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `source` varchar(100) DEFAULT NULL COMMENT '来源',
  `views` bigint(20) DEFAULT '0' COMMENT '浏览次数',
  `image` varchar(100) DEFAULT NULL COMMENT '图片',
  `content` longtext COMMENT '详细内容',
  `addTime` datetime DEFAULT NULL COMMENT '添加时间',
  `status` int(11) DEFAULT NULL COMMENT '是否显示（1，是 2，否）',
  `isRecommended` int(11) DEFAULT NULL COMMENT '是否推荐（1，是 2，否）',
  `isIndex` int(11) DEFAULT NULL COMMENT '是否首页推荐（1，是 2，否）',
  `sortIndex` int(11) DEFAULT NULL COMMENT '排序',
  `seoTitle` varchar(200) DEFAULT NULL COMMENT 'SEO_标题',
  `seoKeywords` text COMMENT 'SEO_关键字',
  `seoDescription` text COMMENT 'SEO_描述',
  `type` int(11) DEFAULT NULL COMMENT '1、方法论 2、最连续沙龙 3、必读书籍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='原品牌新闻表---->微力研究内容表\r\n weili_research';

-- ----------------------------
-- Records of t_weili_display
-- ----------------------------
INSERT INTO `t_weili_display` VALUES ('5', '传统行业老板投资涉足互联网/O2O/电子商务的3点浅见', 'www.weilifly.com', '13', 'upload/image/admin/2014/20141208/201412081503154565.jpg', '<span style=\"font-size:16px;line-height:25.6000003814697px;color:#444444;font-family:punctuation, 微软雅黑, Tohoma;\">如题，不多啰嗦，直接谈几点个人浅见。<br />\n&nbsp;&nbsp;&nbsp;&nbsp;互联网到处都是坑，跳下去都可能冒不出几个泡，声音都没听到，可能就退场了，如果真的想赌一把，抓住以下几点个人认为的关键：<br />\n1、投资一个既懂业务又懂技术的团队；<br />\n2、投资终端配送，哪怕是区域的；<br />\n3、投资钱的行业，买股票；<br />\n<br />\n&nbsp;&nbsp;&nbsp;&nbsp;如果传统行业老板涉足互联网/O2O/电子商务也去想模式，想创新，想细节，那是要命的。<br />\n</span>\n<p>\n	<span style=\"font-size:16px;line-height:25.6000003814697px;color:#444444;font-family:punctuation, 微软雅黑, Tohoma;\"> 我的经验是，碰到谈这样的传统老板，基本不要考虑半毛钱的合作，谈下去了也是浪费时间。</span>\n</p>\n<p>\n	<br />\n<span style=\"font-size:16px;line-height:25.6000003814697px;color:#444444;font-family:punctuation, 微软雅黑, Tohoma;\"></span>\n</p>\n<span style=\"font-size:16px;line-height:25.6000003814697px;color:#444444;font-family:punctuation, 微软雅黑, Tohoma;\"> &nbsp;&nbsp;&nbsp; 科技主导新商业的今天，任何技术任何模式几乎都是短命的，再好的模式都不值一提，随时会发生各种变化，琢磨细节也是毫无意义的，因为细节是在不断的试错和\n实践总结出来的，纸上谈兵的时候纠结细节毫无意义。排了再整齐的队形，立正稍息再规范，上了战场毫无意义，除非你只是上操场。迷恋模式，认真细节，也基本\n不要考虑半毛钱的合作，合作下去了也是输。<br />\n<br />\n&nbsp;&nbsp;&nbsp;&nbsp;移动互联网的今天，传销更甚，尤其是变异传销更加让人眼花缭乱，似乎到处都是成为下一个马云的机会，其实都是浮云和假象，稍有点常识也能够辨别得出来。另\n外，互联网的失败更加惨烈，赢者通吃，但赢者在千万人中只有几个而已，别幻想自己的那百万级资金能砸出下一个阿里巴巴出来。<br />\n<br />\n&nbsp;&nbsp;&nbsp;&nbsp;不可否认，关于新商业的未来，越来越多的人似乎看得到，看得懂，但与做得到完全是两码事。所以，也奉劝各位热衷学习的传统老板，不要以为你看得到看得懂就以为有多大胜算了一样，远着呢。<br />\n<br />\n&nbsp;&nbsp;&nbsp;&nbsp;洪城大市场明摆着的市场，几万商户几百亿的传统专业市场，还有十几个专业市场聚集的商圈规模，电子商务几乎空白，机遇就在眼前，但看不到资金政策真正落地去实施，这个几百亿的电商能否抢到蛋糕，关键就看两个因素：有没有人会做能做、有没有钱做。<br />\n<br />\n&nbsp;&nbsp;&nbsp;&nbsp;更多废话也不罗嗦了，简短发表下个人浅见，供各位传统老板参考，希望慎入互联网/O2O/电子商务的投资，到处都是坑，不忍心你们的积蓄打水漂。<br />\n<br />\n<span style=\"font-weight:bold;color:#FF0000;\">关注公众号：微力研究，留下“姓名、区域、邮箱”，赠送干货O2O干货课件一份。</span></span>', '2014-12-08 15:01:11', '1', '1', '1', '-1', '传统行业老板投资涉足互联网/O2O/电子商务的3点浅见', '互联网 O2O 电子商务 ', '传统行业互联网化过程', null);
INSERT INTO `t_weili_display` VALUES ('6', '【全文】“微信公开课”第二季广州站—Ta们这样解决行业痛点', 'www.weilifly.com', '49', 'upload/image/admin/2014/20141208/201412081507072292.jpg', '<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	7月30日，广州小蛮腰，微信团队的主场，微信公开课第二季开讲了。这一次，微信讲师团晒出了微信小店和广告自助投放平台的成绩单，现场开聊最近火热的阅读数显示功能，并解读了更多最新接口和第三方开发生态政策。\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	本场代表第三方开发者的车商通、外卖361讲述他们如何通过微信的基础设施，将他们对汽车行业、外卖行业的理解创造出“止痛”的行业解决方案，泰康人寿则\n讲述了一张保单在微信上的精彩之旅，广东省妇幼保健院又如何将医院开到微信上。没有口水话，只有关键词。一起来看看吧。\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<strong><span style=\"color:#00B0F0;\">“开放不仅是一种态度，更是一种能力”</span></strong>\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<strong>微信事业群开放平台基础部助理总经理 曾鸣</strong>\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<img src=\"http://mmbiz.qpic.cn/mmbiz/ib3nLDnR1dIibjxR8hu93ozJ6bm5lNGKEWxruITKclyOIAnkribOJVQPu9WQEX0A1tbXYhMRvzwo1AzpgnMrXTzdw/0\" style=\"height:auto !important;width:auto !important;\" alt=\"图片关键词\" />\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<strong>1.最新数据：</strong>截至7月底， 微信月活跃用户数已接近4亿；微信公众帐号总数580万个，且每日新增1.5万个；接入APP总量达67000个，日均创建移动APP达400个；微信广告自助投放平台上已拥有超过10000家广告主，超过1000家流量主。\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<img src=\"http://mmbiz.qpic.cn/mmbiz/ib3nLDnR1dIibjxR8hu93ozJ6bm5lNGKEWOD6ENrzLz67bfQmZwu7VccWc75OQVApp4xojm5fUlZic9eaB8DIj4qg/0\" style=\"height:auto !important;width:auto !important;\" alt=\"图片关键词\" />\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<strong>2.目前已有95%符合资质的商家接入微信小店，未来微信自定义菜单将发布新版本，通过菜单直接调动扫一扫、地理位置等功能，还将陆续开放图像识别、语音识别等更多接口</strong>。\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<strong>3.我们更希望看到更多小个体在微信上成长为大品牌</strong><strong>。</strong>以微信连接一切的能力，小西家作等个体和企业积沙成塔地为老客户搭建一个更便捷、高效、优质的服务平台，尚品宅配等企业大幅降低运营成本投入，7天等企业则提升营收能力，带给企业更广阔的增值空间。\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<strong>4.微信平台聚集开发者（包括个人开发者及公司开发者）突破10万，与开发者共建开放生态是微信的态度。</strong>\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<img src=\"http://mmbiz.qpic.cn/mmbiz/ib3nLDnR1dIibjxR8hu93ozJ6bm5lNGKEWiaZr59sLlnUia4x39GIrEnvlD24jPB3T1NmKWBkZIGNht5QQk9LyCOCw/0\" style=\"height:auto !important;width:auto !important;\" alt=\"图片关键词\" />\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<strong><span style=\"color:#00B0F0;\">“把医院开到微信上”</span></strong>\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<strong>广东省妇幼保健院院长助理、医学遗传中心主任尹爱华</strong>\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<img src=\"http://mmbiz.qpic.cn/mmbiz/ib3nLDnR1dIibjxR8hu93ozJ6bm5lNGKEWJAaWaXXiarKk5z6JpYQRIdQfXj2z0AeRRJedDjNDOKx68eXpbgD0f7w/0\" style=\"height:auto !important;width:auto !important;\" alt=\"图片关键词\" />\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<strong>1.传统医疗行业面临“难、烦、迷、疑、挤、急”六大痛点，把医院开在微信上成为广东省妇幼的破局之路。</strong>通过智能化、便捷化、个性化和透明化的功能设置，自6月30日运营至今，省妇幼保健院的粉丝数突破7000人，微信支付约2000笔，支付总金额达到8万元。\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<img src=\"http://mmbiz.qpic.cn/mmbiz/ib3nLDnR1dIibjxR8hu93ozJ6bm5lNGKEWpvQGKHibMo6Tbyibibic8UIFy8QHlUYVde2rGcg8foSX3yff4Rk1KoZtTA/0\" style=\"height:auto !important;width:auto !important;\" alt=\"图片关键词\" />\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<strong>2.广东省妇幼目前已实现远程挂号、微信取号、报告查询等功能，未来，广东省妇幼将整合多渠道、多功能，深耕患者服务。</strong>广东省妇幼的微信公众号二期将开通医保支付功能；充分利用微信消息推送的特性，为患者提供全流程向导式服务；利用微信进行个性化健康教育和特色妇幼知识普及工作；打造具备妇幼系统特色的小工具。\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<span style=\"color:#00B0F0;\"><strong>“微信让外卖更快一点、更好一点”</strong></span>\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<strong>广东立创软件开发有限公司联合创始人 邓立东</strong>\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<img src=\"http://mmbiz.qpic.cn/mmbiz/ib3nLDnR1dIibjxR8hu93ozJ6bm5lNGKEW8ZHLVuV7smLxgK9RvbH8MkhykJErnURCBDqTcghzOxTl0ia4skQolKA/0\" style=\"height:auto !important;width:auto !important;\" alt=\"图片关键词\" />\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<strong>1.利用微信让快餐服务全面革新，以“连锁快餐整体解决方案”实现了微信线上线下一体化管理，真正突破了外卖服务的困扰。</strong>从门店管理、微信外卖、微信支付到中央仓库集中配送，总店管理，微信贯穿了全过程。目前，外卖361的微信公众号粉丝数超过13000，日均外卖单数1500张，每月外卖金额约100万，实现单店外卖收入增长51%，单店外卖利润增长107%。\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<img src=\"http://mmbiz.qpic.cn/mmbiz/ib3nLDnR1dIibjxR8hu93ozJ6bm5lNGKEWibPHJydnfeqQXJA9ag7knY1ETpArFibKKNCXXQ0GsR66wk9IcSy3TvtQ/0\" style=\"height:auto !important;width:auto !important;\" alt=\"图片关键词\" />\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<img src=\"http://mmbiz.qpic.cn/mmbiz/ib3nLDnR1dIibjxR8hu93ozJ6bm5lNGKEWWt2QsdAoicscDAf4MC3DZJpSJgSuOBBeHsnBH6rrOQedXWL0n4tibLzQ/0\" style=\"height:auto !important;width:auto !important;\" alt=\"图片关键词\" />\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<strong>2.微信支付已成为餐饮首选的支付方式。</strong>未来，外卖361将加快在快餐食堂中的应用，并在现有的几百家中餐酒楼中引入微信支付，进一步完善020解决方案。\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<span style=\"color:#00B0F0;\"><strong>“一张保单的微信之旅”</strong></span>\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<strong>泰康人寿保险股份有限公司助理总裁兼CIO、数据信息中心总经理 刘大为</strong>\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<img src=\"http://mmbiz.qpic.cn/mmbiz/ib3nLDnR1dIibjxR8hu93ozJ6bm5lNGKEWDWfCEvVNBcLiaYqCfYK51VDtjdwyXnAIuARrPST7RZCURTMtkvxQMlg/0\" style=\"height:auto !important;width:auto !important;\" alt=\"图片关键词\" />\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<br />\n<strong>1.泰康建立了三级（泰康人寿+泰康家园—泰康在线等——分公司）微信平台布局，并解决了APP多屏问题。</strong>泰康人寿35家分公司微信帐号，总共三级41个认证企业帐号。一二级微信帐号的关注用户74万，绑定用户32万。截止7月21日，飞常保客户数突破600万。\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<img src=\"http://mmbiz.qpic.cn/mmbiz/ib3nLDnR1dIibjxR8hu93ozJ6bm5lNGKEWkDoeXQCV76Wr6CaF7fJfFBHib7nSoPZ3A2SEp1CFaLZl6S2ibWc9oSRA/0\" style=\"height:auto !important;width:auto !important;\" alt=\"图片关键词\" />\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<strong>2.作为第一家接入微信的保险公司，泰康人寿通过微信开放的多接口，创新了传统保险业务，开始了“一张保单的微信精彩之旅”。</strong>泰康人寿结合微信开放的微信支付等接口，在微信上推出了多项明星产品。目前微信支付总次数突破70万。\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<img src=\"http://mmbiz.qpic.cn/mmbiz/ib3nLDnR1dIibjxR8hu93ozJ6bm5lNGKEWo4HyaZx7c4leoJ1ct9ZPymjBAgUsVsPhVdnAJJVVZul32Z0iamYRC0Q/0\" style=\"height:auto !important;width:auto !important;\" alt=\"图片关键词\" />\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<strong>3.泰康人寿通过“微OA”实现了内部产品、运营、办公全流程微信化。</strong>“泰康家园”每日点击量4000次，员工利用分分秒秒碎片化的时间在移动互联端就能完成任务，办公更加便利化、快捷化。\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<span style=\"color:#00B0F0;\"><strong>“微信让个体户可以讲很多故事”</strong></span>\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<strong>小西家作蛋糕店创办人 吴旭军</strong>\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<img src=\"http://mmbiz.qpic.cn/mmbiz/ib3nLDnR1dIibjxR8hu93ozJ6bm5lNGKEWOQP3758WEjnYO6ESZEKQTx71veLaGBhrvo1jMgZR1M0tHyLkTSLsOQ/0\" style=\"height:auto !important;width:auto !important;\" alt=\"图片关键词\" />\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<strong>1.微信优化了小西家作的管理流程，最终实现了传统蛋糕店与网络电商的融合。</strong>从加关注→选款式→付款→确认信息→到店提货，小西家作实现了微信内下单的O20闭环。从人工登记、PC官网、手机网站到微信支付，随着支付方式的进一步便捷，随性的订单也更多，目前小西家作微信支付带来的手机端支付占比6成。\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<img src=\"http://mmbiz.qpic.cn/mmbiz/ib3nLDnR1dIibjxR8hu93ozJ6bm5lNGKEWl9EvRqgDoGQ4YnDaPbM9MceZYCWtslkaKL7NbcV8qIohfw6KabBEvw/0\" style=\"height:auto !important;width:auto !important;\" alt=\"图片关键词\" />\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<strong>2.讲故事带来的口碑效应，让传说中广州最“大牌”的蛋糕店拥有更多新客户。</strong>通过微信群发功能接口，小西家作讲述每一款蛋糕背后的故事；通过朋友圈用户自发的讲故事，小西家作让蛋糕成为生日庆典中的主角，也更容易被传播。\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<img src=\"http://mmbiz.qpic.cn/mmbiz/ib3nLDnR1dIibjxR8hu93ozJ6bm5lNGKEWg6MDVdwfOibiaZ0YVjnYHtNiaSsicCglwzfkCRdygTySxBS5aY2CU87eDA/0\" style=\"height:auto !important;width:auto !important;\" alt=\"图片关键词\" />\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<span style=\"color:#00B0F0;\"><strong>“微信重构汽车服务新场景”</strong></span>\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<strong>车商通CEO 李明友</strong>\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<img src=\"http://mmbiz.qpic.cn/mmbiz/ib3nLDnR1dIibjxR8hu93ozJ6bm5lNGKEW3BJSbQCkDzT5icgY7b7pcfMriaA1jibo9icme6cmzyYXIqkMXnIWTGcogA/0\" style=\"height:auto !important;width:auto !important;\" alt=\"图片关键词\" />\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<strong>1.车商通基于微信构建SCRM的解决方案，让车主和4S店的痛点“不痛”。</strong>该解决方案实现了需求与服务的连接。方便车主的同时，也为4S店实现了7*24小时的智能化客户服务和管理。\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<img src=\"http://mmbiz.qpic.cn/mmbiz/ib3nLDnR1dIibjxR8hu93ozJ6bm5lNGKEW9XG0PmKrKb3L5hibCaFS8mUoIDic6GnWj1fuG27fiaXvxCBGmSkean9ZQ/0\" style=\"height:auto !important;width:auto !important;\" alt=\"图片关键词\" />\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<strong>2.车商通善用微信提供的高级接口，实现了基于微信的SCRM解决方案的“五化”：</strong>帐号产品化、产品服务化、服务个性化、个性数据化、数据智能化。\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<strong>3.进入4.0版本的车商通已集商城、微信支付、救援等综合功能为一体，未来则希望通过微信接入OBD硬件等，重构汽车服务新场景。</strong>截止目前，车商通系统已覆盖92个汽车品牌，1286家4S店，用户90万，累计产生19万次购车询价，21万次服务预约，13万次保险询价，96万条服务点评。\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<img src=\"http://mmbiz.qpic.cn/mmbiz/ib3nLDnR1dIibjxR8hu93ozJ6bm5lNGKEWeicGHxUQPKJ0fUgHm3bicvlGez2RzvuiaQQx7smEc7ibic5NCUogtS1ib65Q/0\" style=\"height:auto !important;width:auto !important;\" alt=\"图片关键词\" />\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	——————————\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<img src=\"http://mmbiz.qpic.cn/mmbiz/6U5dn3zPWrYU2rAk0uY9UIkiaKJq5FXjCYI3eIUG0CKzibIwV6eU1yY7TyDiccbdu6CSPUhpju81Ny0j9zlrPWNvw/0\" style=\"height:auto !important;width:auto !important;\" alt=\"图片关键词\" />\n</p>', '2014-12-08 15:06:06', '1', '1', '1', '-1', '【全文】“微信公开课”第二季广州站—Ta们这样解决行业痛点', '行业痛点 微信公开课 广州站', '微信公开课第二季开讲了。这一次，微信讲师团晒出了微信小店和广告自助投放平台的成绩单...', null);
INSERT INTO `t_weili_display` VALUES ('7', '中国微营销最连续沙龙活动', '深圳微力科技有限公司微力研究院', '47', 'upload/image/admin/2014/20141209/201412091013474381.jpg', '<p style=\"color:#3E3E3E;font-size:16px;font-family:sans-serif;text-indent:32px;\">\n	<span>中国微营销最连续沙龙是付费沙龙，是深圳微力科技有限公司精心打造的分享及经验交流平台，沙龙活动全程采用“</span><strong><span style=\"color:red;font-weight:normal;\">主题演讲、互动交流</span></strong><span>”相结合的方式，汇聚互联网业界专家学者、知名的</span><span style=\"font-family:Verdana, sans-serif;\">IT</span><span>厂商、应用方案供应商、咨询服务商、企业用户等相关人士于一堂，融合互联网技术、企业问题、创新与发展为一体，并由深圳微力科技有限公司实战操盘手全程主讲，是定位于“</span><strong><span style=\"color:red;font-weight:normal;\">小范围、半封闭</span></strong><span>”的移动互联网战略落地经验交流会。</span>\n</p>\n<p style=\"color:#3E3E3E;font-size:16px;font-family:sans-serif;text-indent:32px;\">\n	<span>面对信息化时代的日新月异、瞬息万变，互联网、移动互联网的新技术与新理念不断涌现，</span><strong><span style=\"color:red;font-weight:normal;\">微力研究院</span></strong><span>作为深圳微力科技有限公司下设的一个研究部门，秉承“</span><strong><span style=\"color:red;font-weight:normal;\">让老板不再被概念弄晕</span></strong><span>”\n的使命，其主办的中国微营销最连续沙龙依靠互联网上最丰富的内容资源与分析报告，实战派的咨询、落地转化专业人才，以及国内最大ERP软件厂商用友软件所\n冠名的江西财经大学用友软件学院的专家、学者，就互联网发展脉络、技术潮流、移动营销、信息化企业的发展战略等方面献计献策，现场为您分享“</span><span style=\"color:red;\">前沿、系统、干货</span><span>”为特色的最新、最深度的研究成果及实操案例，共同启迪思维、发现商业机会、创新商业价值。</span>\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<span style=\"font-family:宋体;line-height:32px;\"><span>&nbsp;&nbsp;&nbsp;&nbsp;由深圳微力科技有限公司主办的中国微营销最连续沙龙在2014年将举办50期。每期的主题都不一样，每一季度都是不同的系列。</span></span>\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\" align=\"center\">\n	<img src=\"http://mmbiz.qpic.cn/mmbiz/6U5dn3zPWrZYRwicJcmfnPkNGibibbH7f9Ovf1QWEet8y8MKNutZqcVFm32NYzjjQfxHdpvLWyibiao3G0Epkp5R8Uw/0\" style=\"height:auto !important;width:auto !important;\" alt=\"图片关键词\" />\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\" align=\"center\">\n	<img src=\"http://mmbiz.qpic.cn/mmbiz/6U5dn3zPWrZYRwicJcmfnPkNGibibbH7f9OHK7T8Ul58N9cia6LRrwygf29gwQScQEbP0q7nU5EKLz2TKNJ2OJFAEg/0\" style=\"height:auto !important;width:auto !important;\" alt=\"图片关键词\" />\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\" align=\"center\">\n	<img src=\"http://mmbiz.qpic.cn/mmbiz/6U5dn3zPWrZYRwicJcmfnPkNGibibbH7f9OWPmo87lia1c1KrxHxTvpbPS2jibtqiaXXmxw6AicjY9UyuJojXyRciaNiaeA/0\" style=\"height:auto !important;width:auto !important;\" alt=\"图片关键词\" />\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\" align=\"center\">\n	<img src=\"http://mmbiz.qpic.cn/mmbiz/6U5dn3zPWrZYRwicJcmfnPkNGibibbH7f9O7ibaFcTf7u3b70FhDwG5rKnN5fiaicM3YFrDhvxzI5nC7DzFgCbO3Xkhw/0\" style=\"height:auto !important;width:auto !important;\" alt=\"图片关键词\" />\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	<span style=\"font-family:宋体;line-height:32px;font-weight:bold;color:#FF0000;\">最早第一期</span><span style=\"font-family:宋体;line-height:32px;\">，还是在2013年3月份开始的，那个时候的沙龙是分享个人微信的功能玩法。</span><span style=\"font-family:宋体;line-height:32px;font-weight:bold;color:#FF0000;\">接着第2期</span><span style=\"font-family:宋体;line-height:32px;\">，是分享微信增粉的玩法。</span><span style=\"font-family:宋体;line-height:32px;font-weight:bold;color:#FF0000;\">接着第3期</span><span style=\"font-family:宋体;line-height:32px;\">是分享微信公众号申请注册的实操。</span><span style=\"font-family:宋体;line-height:32px;font-weight:bold;color:#FF0000;\">接着第4期</span><span style=\"font-family:宋体;line-height:32px;\">是分享微信公众号后台开发的实操。</span><span style=\"font-family:宋体;line-height:32px;font-weight:bold;color:#FF0000;\">接着第5期</span><span style=\"font-family:宋体;line-height:32px;\">，是在隔了半年之后，在江西饭店举办的中国微营销最连续沙龙首次亮相，并且全面介绍了当今中国微营销现状，趋势，内容也是非常的丰富，包含了微信营销、二维码营销、企业APP营销、WiFI营销，包括介绍了相关的案例，相关的其他案例。</span><span style=\"font-family:宋体;line-height:32px;font-weight:bold;color:#FF0000;\">接着第6期</span><span style=\"font-family:宋体;line-height:32px;\">，是在深圳微力科技有限公司南昌办事处举办，主要分享了微信公众后台开发的实操，以及部分免费的技术，</span><span style=\"font-family:宋体;line-height:32px;font-weight:bold;color:#FF0000;\">接着第7期与第8期</span><span style=\"font-family:宋体;line-height:32px;\">合并举办，主要是分享了当今微营销的赚钱利器。</span><span style=\"font-family:宋体;line-height:32px;font-weight:bold;color:#FF0000;\">接着是第9期与第10期</span><span style=\"font-family:宋体;line-height:32px;\">合并举办的微信营销，最后一次扫盲培训。接着是<strong><span style=\"color:#FF0000;\">第11期</span></strong>多维度全面剖析落地转化微信营销案例……</span>\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	中国微营销<span style=\"color:#FF0000;\"><strong>最连续</strong></span>沙龙为您分享最<strong><span style=\"color:#FF0000;\">前沿、系统、干货</span></strong>的移动互联网最新研究成果和案例实操。您来了，准不会后悔！\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	&nbsp;\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	如果将本文分享到朋友圈，并截图发给我们，您可以免费参加中国微营销最连续沙龙任意一期活动，具体详情只需关注公众号：微力研究。\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\" align=\"center\">\n	<img src=\"http://mmbiz.qpic.cn/mmbiz/6U5dn3zPWrZYRwicJcmfnPkNGibibbH7f9OtOCbaibianprD8S4xycO0BjY2soWMRkl79YWNTiaSJxRvT9wwo29atInw/0\" style=\"height:auto !important;width:auto !important;\" alt=\"图片关键词\" />\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\" align=\"center\">\n	<img src=\"http://mmbiz.qpic.cn/mmbiz/6U5dn3zPWrZYRwicJcmfnPkNGibibbH7f9OBeoibLAcUzuEa0PLicRXBB6iaQdhtPv784O45moS1jryTkUb7B2E8Qkfg/0\" style=\"height:auto !important;width:auto !important;\" alt=\"图片关键词\" />\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	@落地转化郭辉雄个人微信号是：jxufe_huixiong。\n</p>\n<p style=\"color:#3E3E3E;font-family:’Helvetica Neue’, Helvetica, ’Hiragino Sans GB’, ’Microsoft YaHei’, 微软雅黑, Arial, sans-serif;font-size:16px;\">\n	如果你的好友数超过1000，欢迎加我为微信好友，让我们一起来<span style=\"color:#444444;font-family:微软雅黑, Tohoma;line-height:25.6000003814697px;\">建立江西“</span><span style=\"font-family:微软雅黑, Tohoma;line-height:25.6000003814697px;color:#FF0000;font-weight:bold;\">互粉、互捧、互转、互评</span><span style=\"color:#444444;font-family:微软雅黑, Tohoma;line-height:25.6000003814697px;\">”微电商圈子！</span>\n</p>', '2014-12-09 10:11:19', '1', '1', '1', '-1', '中国微营销最连续沙龙', '微营销，最连续，沙龙', '中国微营销最连续沙龙是付费沙龙，是深圳微力科技有限公司精心打造的分享及经验交流平台......', '2');
INSERT INTO `t_weili_display` VALUES ('8', '中国微营销最连续沙龙【第34-38期】总结', '深圳微力科技有限公司微力研究院', '2', 'upload/image/admin/2014/20141209/20141209111632646.jpg', '<p>\n	<span style=\"font-size:16px;line-height:25.6000003814697px;color:#444444;font-family:punctuation, 微软雅黑, Tohoma;\">沙龙如约举行，按照流程分享，干货多多。<br />\n能像<span style=\"font-weight:bold;\">落地转化郭辉雄</span>这样，不管一人参加，还是两人报名，不管是百人参加，还是自己出钱到酒店举办，都是干货如数分享的，在今天已经浮躁得不能再浮的当下，相信已不算太多。<br />\n没错，中国微营销<span style=\"font-weight:bold;color:#FF0000;\">最连续</span>沙龙已经连续举办了近40期了，或许你会说，你们有这么多期是合并举办的啊，其实，真正精华的干货，其实就是那么点，如果把那点干货分期来讲，无非是各种扫盲铺垫，各种为什么解释，啰嗦多些，互动多些，废话多些。<br />\n时间过得很快，已经下半年了，已经快9月了，快年尾了，没有太多时间来啰嗦和废话，所以倾我所能在非常有限的时间里把干货托盘而出，不再像之前那样解释各\n种为什么，不再像以前那样不断扫盲常识，我相信落地转化的永远只有极少数，所以我也已经不再期望太多交流和互动了，我只管落地，只管行动，只管总结，只管\n干货分享，你能听多少，看你的功课，看你的知识储备，看你的学习能力。<br />\n如果你真的意识到移动电商，O2O，微营销势在必行，必须去行，真正想为未来做储备的，需要从零开始学起的，9月份起我也会推出一个套餐“15天快速启动\n微营销”的服务，囊括一个完整的微营销落地转化的全部流程及环节，从“理论层面、工具层面、生意层面“三个维度全面落地，包括“个人微信号零基础扫盲-公\n众号实操进阶-二维码营销策划及落地执行”。<br />\n今天的分享最干的地方在于<span style=\"font-weight:bold;color:#FF0000;\">三点</span>：<br />\n<span style=\"font-weight:bold;color:#FF0000;\">1、</span>针对参加沙龙的朋友的具体问题具体把脉给出意见参考；<br />\n<span style=\"font-weight:bold;color:#FF0000;\">2、</span>结合掌上洪城分享落地策展的实操经验和逻辑依据；<br />\n3<span style=\"font-weight:bold;color:#FF0000;\">、</span>建立互捧、互粉、互转、互评圈子；<br />\n<br />\n另外，非常多的<span style=\"font-weight:bold;color:#FF0000;\">淘宝商家</span>羡慕今天的微商，我的意见还是非常简洁，如下：<br />\n把你在淘宝的所有下单客户和咨询客户引导加你为<span style=\"font-weight:bold;color:#FF0000;\">“微信好友”</span>；<br />\n<br />\n把这一步做好，积累到了1000个微信好友的时候，你自然知道下一步要怎么做了！<br />\n下面附几张沙龙图，没错你看到的都是非常屌丝的环境，但是这里都是非常接地气的实干家，实干创业者！<br />\n拒绝虚的！<br />\n参加沙龙的朋友都是实干家，有几百家加盟店的店长，有每月烧几十万到百度的操盘手，有每月电商几十万的淘宝创业者，有烧钱近百万移动电商的创业者。<br />\n还是老话：<span style=\"font-weight:bold;color:#FF0000;\">不用急，慢慢来，但是要快！</span></span><br />\n<span style=\"font-size:16px;line-height:25.6000003814697px;color:#444444;font-family:punctuation, 微软雅黑, Tohoma;\">85后创业帮的兄弟们，加油，<span style=\"font-weight:bold;color:#FF0000;\">来日方长！苦练内功3年！</span></span><br />\n<span style=\"font-size:16px;line-height:25.6000003814697px;color:#444444;font-family:punctuation, 微软雅黑, Tohoma;\"><br />\n<br />\n<img src=\"http://r.photo.store.qq.com/psb?/V11NPfwg4dftwO/kv4LDMmuqaMu63F7tC6FkNnnGe28GOGg2mAW2yzvHNY%21/o/dOd7FcoMAwAA&bo=XwOAAsADyAIFAPQ%21\" style=\"height:auto !important;width:870px !important;\" alt=\"图片关键词\" /></span> \n</p>', '2014-12-09 11:15:32', '1', '1', '2', '-1', '中国微营销最连续沙龙【第34-38期】', '微营销,最连续沙龙', '能像落地转化郭辉雄这样，不管一人参加，还是两人报名，不管是百人参加......', '2');

-- ----------------------------
-- Table structure for t_weili_display_type
-- ----------------------------
DROP TABLE IF EXISTS `t_weili_display_type`;
CREATE TABLE `t_weili_display_type` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '属类Id',
  `type_name` varchar(100) DEFAULT NULL COMMENT '微力研究内容属类名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='O2Oweapons -O2O兵器库';

-- ----------------------------
-- Records of t_weili_display_type
-- ----------------------------
INSERT INTO `t_weili_display_type` VALUES ('1', '方法论');
INSERT INTO `t_weili_display_type` VALUES ('2', '最连续沙龙');
INSERT INTO `t_weili_display_type` VALUES ('3', '必读书籍');

-- ----------------------------
-- View structure for v_t_admin
-- ----------------------------
DROP VIEW IF EXISTS `v_t_admin`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `v_t_admin` AS select `ta`.`id` AS `id`,`ta`.`enable` AS `enable`,`ta`.`lastIP` AS `lastIP`,`ta`.`lastTime` AS `lastTime`,`ta`.`password` AS `password`,`ta`.`roleId` AS `roleId`,`ta`.`userName` AS `userName`,`tr`.`name` AS `roleName` from (`t_admin` `ta` left join `t_role` `tr` on((`ta`.`roleId` = `tr`.`id`))) ; ;

-- ----------------------------
-- View structure for v_t_attribute_materials
-- ----------------------------
DROP VIEW IF EXISTS `v_t_attribute_materials`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `v_t_attribute_materials` AS select `t1`.`id` AS `id`,`t1`.`attributeId` AS `attributeId`,`t1`.`materialsId` AS `materialsId`,`t2`.`name` AS `childName`,`t2`.`id` AS `childId`,`t2`.`parentId` AS `parentId`,`t2`.`status` AS `childStatus`,`t2`.`sortIndex` AS `childIndex`,`t3`.`id` AS `apId`,`t3`.`name` AS `parentName`,`t3`.`status` AS `parentStatus`,`t3`.`sortIndex` AS `parentIndex` from ((`t_materials_attribute` `t1` left join `t_attribute` `t2` on((`t2`.`id` = `t1`.`attributeId`))) left join `t_attribute` `t3` on((`t3`.`id` = `t2`.`parentId`))) ; ;

-- ----------------------------
-- View structure for v_t_consumers_needs
-- ----------------------------
DROP VIEW IF EXISTS `v_t_consumers_needs`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `v_t_consumers_needs` AS SELECT
tc.id AS cId,
tc.c_name AS cName,
tc.c_telephone AS cTelephone,
tc.c_company AS cCompany,
tc.c_job AS cJob,
tc.c_email AS cEmail,
tc.c_qq AS cQQ,
tc.needs_status AS needStatus,
tn.needs_name AS needsName,
tc.address AS address,
tc.need_content AS needContent,
tc.addTime AS addTime
FROM
t_consumers AS tc
INNER JOIN t_needs AS tn ON tc.needs_status = tn.id ;

-- ----------------------------
-- View structure for v_t_design_category
-- ----------------------------
DROP VIEW IF EXISTS `v_t_design_category`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `v_t_design_category` AS select `t1`.`id` AS `id`,`t1`.`title` AS `title`,`t1`.`author` AS `author`,`t1`.`categoryId` AS `categoryId`,`t1`.`addTime` AS `addTime`,`t1`.`imgUrl` AS `imgUrl`,`t1`.`sortIndex` AS `sortIndex`,`t1`.`status` AS `status`,`t2`.`name` AS `name` from (`t_design` `t1` join `t_design_category` `t2` on((`t1`.`categoryId` = `t2`.`id`))) ; ;

-- ----------------------------
-- View structure for v_t_download
-- ----------------------------
DROP VIEW IF EXISTS `v_t_download`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `v_t_download` AS SELECT
td.id AS id,
td.categoryId AS categoryId,
tdc.category_name AS categoryName,
td.`name` AS `name`,
td.image AS image,
td.path AS path,
td.isRecommend AS isRecommend,
td.addTime AS addTime,
td.sortIndex AS sortIndex,
td.`status` AS `status`,
td.seoTitle AS seoTitle,
td.seoKeywords AS seoKeywords,
td.seoDescription AS seoDescription
FROM
t_download AS td
INNER JOIN t_download_category AS tdc ON td.categoryId = tdc.id ;

-- ----------------------------
-- View structure for v_t_img_design
-- ----------------------------
DROP VIEW IF EXISTS `v_t_img_design`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `v_t_img_design` AS select `t1`.`id` AS `id`,`t1`.`imgUrl` AS `imgUrl`,`t1`.`tid` AS `tid`,`t1`.`downUrl` AS `downUrl`,`t1`.`sortIndex` AS `sortIndex`,`t1`.`status` AS `status`,`t2`.`title` AS `title` from (`t_img_list` `t1` left join `t_design` `t2` on((`t1`.`tid` = `t2`.`id`))) ; ;

-- ----------------------------
-- View structure for v_t_info_content
-- ----------------------------
DROP VIEW IF EXISTS `v_t_info_content`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `v_t_info_content` AS select `t1`.`name` AS `name`,`t1`.`id` AS `iid`,`t1`.`sortIndex` AS `infoSortIndex`,`t1`.`status` AS `infoStatus`,`t2`.`id` AS `id`,`t2`.`title` AS `title`,`t2`.`infoId` AS `infoId`,`t2`.`content` AS `content`,`t2`.`linkPath` AS `linkPath`,`t2`.`sortIndex` AS `sortIndex`,`t2`.`status` AS `status`,`t2`.`addTime` AS `addTime` from (`t_info` `t1` join `t_info_content` `t2` on((`t1`.`id` = `t2`.`infoId`))) ; ;

-- ----------------------------
-- View structure for v_t_materials_attribute
-- ----------------------------
DROP VIEW IF EXISTS `v_t_materials_attribute`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `v_t_materials_attribute` AS select `t1`.`id` AS `id`,`t1`.`attributeId` AS `attributeId`,`t1`.`materialsId` AS `materialsId`,`t2`.`name` AS `materialsName`,`t3`.`name` AS `attributeName`,`t3`.`parentId` AS `parentId` from ((`t_materials_attribute` `t1` left join `t_materials` `t2` on((`t2`.`id` = `t1`.`materialsId`))) left join `t_attribute` `t3` on((`t3`.`id` = `t1`.`attributeId`))) ; ;

-- ----------------------------
-- View structure for v_t_materials_product
-- ----------------------------
DROP VIEW IF EXISTS `v_t_materials_product`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `v_t_materials_product` AS select `t1`.`id` AS `id`,`t1`.`name` AS `name`,`t1`.`number` AS `number`,`t1`.`productId` AS `productId`,`t1`.`path` AS `path`,`t1`.`size` AS `size`,`t1`.`addTime` AS `addTime`,`t1`.`sortIndex` AS `sortIndex`,`t1`.`status` AS `status`,`t1`.`seoTitle` AS `seoTitle`,`t1`.`seoKeywords` AS `seoKeywords`,`t1`.`seoDescription` AS `seoDescription`,`t2`.`name` AS `productName`,`t4`.`id` AS `attributeId`,`t4`.`name` AS `attributeName` from (((`t_materials` `t1` left join `t_product` `t2` on((`t2`.`id` = `t1`.`productId`))) left join `t_materials_attribute` `t3` on((`t1`.`id` = `t3`.`materialsId`))) left join `t_attribute` `t4` on((`t3`.`attributeId` = `t4`.`id`))) ; ;

-- ----------------------------
-- View structure for v_t_product_category
-- ----------------------------
DROP VIEW IF EXISTS `v_t_product_category`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `v_t_product_category` AS SELECT
	`t1`.`id` AS `id`,
	`t1`.`name` AS `name`,
	`t1`.`image` AS `image`,
	`t1`.`categoryId` AS `categoryId`,
	`t2`.`name` AS `categoryName`,
	`t2`.`url` AS `url`,
	`t1`.`status` AS `status`,
	`t1`.`addTime` AS `addTime`,
	`t2`.`sortIndex` AS `sortIndex`
FROM
	(
		`t_product` `t1`
		LEFT JOIN `t_product_category` `t2` ON (
			(
				`t2`.`id` = `t1`.`categoryId`
			)
		)
	) ; ;

-- ----------------------------
-- View structure for v_t_product_config
-- ----------------------------
DROP VIEW IF EXISTS `v_t_product_config`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `v_t_product_config` AS select `t1`.`id` AS `id`,`t1`.`name` AS `name`,`t1`.`type` AS `type`,`t1`.`var` AS `productConfigImage`,`t1`.`status` AS `status`,`t2`.`id` AS `productId`,`t2`.`name` AS `productName`,`t3`.`name` AS `productCategoryName`,`t1`.`title` AS `title` from ((`bt_config` `t1` left join `t_product` `t2` on((`t2`.`id` = `t1`.`name`))) left join `t_product_category` `t3` on((`t3`.`id` = `t2`.`categoryId`))) ; ;

-- ----------------------------
-- View structure for v_t_product_info
-- ----------------------------
DROP VIEW IF EXISTS `v_t_product_info`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `v_t_product_info` AS select `t1`.`id` AS `id`,`t1`.`name` AS `name`,`t1`.`categoryId` AS `categoryId`,`t1`.`image` AS `image`,`t1`.`url` AS `url`,`t1`.`wapUrl` AS `wapUrl`,`t1`.`details` AS `details`,`t1`.`sortIndex` AS `sortIndex`,`t1`.`addTime` AS `addTime`,`t1`.`status` AS `status`,`t1`.`seoDescription` AS `seoDescription`,`t1`.`seoKeywords` AS `seoKeywords`,`t1`.`seoTitle` AS `seoTitle`,`t2`.`name` AS `categoryName` from (`t_product` `t1` left join `t_product_category` `t2` on((`t2`.`id` = `t1`.`categoryId`))) ; ;

-- ----------------------------
-- View structure for v_t_product_parameter
-- ----------------------------
DROP VIEW IF EXISTS `v_t_product_parameter`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `v_t_product_parameter` AS select `t1`.`id` AS `id`,`t1`.`productId` AS `productId`,`t1`.`parameterId` AS `parameterId`,`t1`.`content` AS `content`,`t2`.`name` AS `productName`,`t3`.`name` AS `parameterName` from ((`t_product_parameter` `t1` left join `t_product` `t2` on((`t2`.`id` = `t1`.`productId`))) left join `t_parameter` `t3` on((`t3`.`id` = `t1`.`parameterId`))) ; ;

-- ----------------------------
-- View structure for v_t_recruit_type
-- ----------------------------
DROP VIEW IF EXISTS `v_t_recruit_type`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `v_t_recruit_type` AS select `t1`.`id` AS `id`,`t1`.`name` AS `name`,`t1`.`type` AS `type`,`t1`.`content` AS `content`,`t1`.`addTime` AS `addTime`,`t1`.`sort` AS `sort`,`t1`.`status` AS `status`,`t2`.`title` AS `title` from (`t_recruit` `t1` join `t_recruit_type` `t2` on((`t1`.`type` = `t2`.`id`))) ; ;

-- ----------------------------
-- View structure for v_t_report_category
-- ----------------------------
DROP VIEW IF EXISTS `v_t_report_category`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `v_t_report_category` AS select `t1`.`id` AS `id`,`t1`.`title` AS `title`,`t1`.`author` AS `author`,`t1`.`addTime` AS `addTime`,`t1`.`categoryId` AS `categoryId`,`t1`.`image` AS `image`,`t1`.`path` AS `path`,`t1`.`seoDescription` AS `seoDescription`,`t1`.`seoKeywords` AS `seoKeywords`,`t1`.`seoTitle` AS `seoTitle`,`t1`.`sortIndex` AS `sortIndex`,`t1`.`status` AS `status`,`t2`.`name` AS `name` from (`t_report` `t1` join `t_product_category` `t2` on((`t1`.`categoryId` = `t2`.`id`))) ; ;

-- ----------------------------
-- View structure for v_t_report_detail
-- ----------------------------
DROP VIEW IF EXISTS `v_t_report_detail`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `v_t_report_detail` AS select `t1`.`id` AS `id`,`t1`.`title` AS `title`,`t1`.`author` AS `author`,`t1`.`addTime` AS `addTime`,`t1`.`status` AS `status`,`t1`.`categoryId` AS `categoryId`,`t2`.`image` AS `ca_image`,`t2`.`name` AS `name` from (`t_report` `t1` join `t_product_category` `t2` on((`t1`.`categoryId` = `t2`.`id`))) ; ;

-- ----------------------------
-- View structure for v_t_role_rights_menu
-- ----------------------------
DROP VIEW IF EXISTS `v_t_role_rights_menu`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `v_t_role_rights_menu` AS select `trr`.`id` AS `id`,`trr`.`roleId` AS `roleId`,`trr`.`rightsId` AS `rightsId`,`btr`.`action` AS `action`,`btr`.`parentId` AS `parentId`,`btr`.`summary` AS `summary`,`btr`.`isQuery` AS `isQuery`,`btr`.`indexs` AS `indexs` from (`t_role_rights` `trr` left join `bt_rights` `btr` on((`trr`.`rightsId` = `btr`.`id`))) ; ;

-- ----------------------------
-- View structure for v_t_update_program
-- ----------------------------
DROP VIEW IF EXISTS `v_t_update_program`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `v_t_update_program` AS select `t1`.`id` AS `id`,`t1`.`name` AS `name`,`t1`.`image` AS `image`,`t1`.`path` AS `path`,`t1`.`categoryId` AS `categoryId`,`t1`.`productId` AS `productId`,`t1`.`addTime` AS `addTime`,`t1`.`sortIndex` AS `sortIndex`,`t1`.`status` AS `status`,`t1`.`seoDescription` AS `seoDescription`,`t1`.`seoKeywords` AS `seoKeywords`,`t1`.`seoTitle` AS `seoTitle`,`t2`.`name` AS `categoryName` from (`t_update_program` `t1` left join `t_product_category` `t2` on((`t2`.`id` = `t1`.`categoryId`))) ; ;

-- ----------------------------
-- View structure for v_t_web_distribute
-- ----------------------------
DROP VIEW IF EXISTS `v_t_web_distribute`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `v_t_web_distribute` AS select `t1`.`id` AS `id`,`t2`.`regionName` AS `provinceName`,`t3`.`regionName` AS `cityName`,`t4`.`regionName` AS `areaName`,`t1`.`address` AS `address`,`t1`.`addTime` AS `addTime`,`t1`.`provinceId` AS `provinceId`,`t1`.`cityId` AS `cityId`,`t1`.`areaId` AS `areaId`,`t1`.`longitude` AS `longitude`,`t1`.`latitude` AS `latitude`,`t1`.`phone` AS `phone`,`t1`.`sortIndex` AS `sortIndex`,`t1`.`status` AS `status`,`t1`.`storeName` AS `storeName`,`t1`.`type` AS `type`,`t5`.`title` AS `title` from ((((`t_web_distribute` `t1` left join `t_region` `t2` on((`t2`.`id` = `t1`.`provinceId`))) left join `t_region` `t3` on((`t3`.`id` = `t1`.`cityId`))) left join `t_region` `t4` on((`t4`.`id` = `t1`.`areaId`))) left join `t_web_distribute_type` `t5` on((`t1`.`type` = `t5`.`id`))) ;

-- ----------------------------
-- Procedure structure for pr_pager
-- ----------------------------
DROP PROCEDURE IF EXISTS `pr_pager`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pr_pager`(in p_table_name text,in p_fields varchar(1024),in p_page_size bigint , in p_page_now bigint, in P_order_string varchar(128),in p_where_string varchar(3000),out p_out_rows bigint)
BEGIN
		 /*定义变量*/
	    DECLARE m_begin_row INT DEFAULT 0;
	    DECLARE m_limit_string CHAR(64);
		  DECLARE m_sqlwhere VARCHAR(3000);
			DECLARE m_fields VARCHAR(3000);
	      
	    /*构造语句*/     
	    SET m_begin_row = (p_page_now - 1) * p_page_size;
	    SET m_limit_string = CONCAT(' LIMIT ', m_begin_row, ', ', p_page_size);
			SET m_sqlwhere=replace(replace(p_where_string,'|',''''),'$w$','where');  
			SET m_fields=replace(replace(p_fields,'|',''''),'$w$','where');  
	    SET @COUNT_STRING = CONCAT('SELECT COUNT(*) INTO @ROWS_TOTAL FROM ', p_table_name, ' where 1=1 ', m_sqlwhere);
	    SET @MAIN_STRING = CONCAT('SELECT ', m_fields, ' FROM ', p_table_name,' where 1=1 ' , m_sqlwhere ,' ', P_order_string , m_limit_string);
			PREPARE count_stmt FROM @COUNT_STRING;
	    EXECUTE count_stmt;
	    DEALLOCATE PREPARE count_stmt;
	    SET p_out_rows = @ROWS_TOTAL;
			
	    PREPARE main_stmt FROM @MAIN_STRING;
	    EXECUTE main_stmt;
	    DEALLOCATE PREPARE main_stmt;  
	  #call pr_pager("v_news","InfoId",10,1, "order by InfoId desc"," ParentParentPartId=4",@result);
	END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_region
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_region`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_region`(IN `regnId` bigint)
BEGIN
	#Routine body goes here...
		SELECT T2.id, T2.regionName
		FROM (
				SELECT
						@r AS _id,
						(SELECT @r := parentId FROM t_region WHERE id = _id) AS parentId,
						@l := @l + 1 AS lvl
				FROM
						(SELECT @r := regnId, @l := 0) vars,
						t_region h
				WHERE @r <> 0) T1
		JOIN t_region T2
		ON T1._id = T2.id
		ORDER BY T1.lvl DESC;

END
;;
DELIMITER ;
