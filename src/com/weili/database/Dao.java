package com.weili.database;


import java.util.*;
import java.sql.*;
import java.math.*;

import com.shove.data.*;
import com.shove.data.dao.*;


public class Dao {

		public class Tables {

			public class bt_config extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field type = new Field(this, "`type`", Types.INTEGER, false);
				public Field _name = new Field(this, "`name`", Types.VARCHAR, false);
				public Field var = new Field(this, "`var`", Types.VARCHAR, false);
				public Field status = new Field(this, "`status`", Types.INTEGER, false);
				public Field title = new Field(this, "`title`", Types.VARCHAR, false);

				public bt_config() {
					name = "`bt_config`";
				}
			}

			public class bt_rights extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field summary = new Field(this, "`summary`", Types.VARCHAR, false);
				public Field action = new Field(this, "`action`", Types.VARCHAR, false);
				public Field description = new Field(this, "`description`", Types.VARCHAR, false);
				public Field isLog = new Field(this, "`isLog`", Types.INTEGER, false);
				public Field isIntercept = new Field(this, "`isIntercept`", Types.INTEGER, false);
				public Field parentId = new Field(this, "`parentId`", Types.BIGINT, false);
				public Field isQuery = new Field(this, "`isQuery`", Types.INTEGER, false);
				public Field indexs = new Field(this, "`indexs`", Types.INTEGER, false);

				public bt_rights() {
					name = "`bt_rights`";
				}
			}

			public class test_c3p0 extends Table {
				public Field a = new Field(this, "`a`", Types.CHAR, false);

				public test_c3p0() {
					name = "`test_c3p0`";
				}
			}

			public class t_admin extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field userName = new Field(this, "`userName`", Types.VARCHAR, false);
				public Field password = new Field(this, "`password`", Types.VARCHAR, false);
				public Field enable = new Field(this, "`enable`", Types.INTEGER, false);
				public Field lastTime = new Field(this, "`lastTime`", Types.TIMESTAMP, false);
				public Field lastIP = new Field(this, "`lastIP`", Types.VARCHAR, false);
				public Field roleId = new Field(this, "`roleId`", Types.BIGINT, false);

				public t_admin() {
					name = "`t_admin`";
				}
			}

			public class t_appadv extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field _name = new Field(this, "`name`", Types.VARCHAR, false);
				public Field image = new Field(this, "`image`", Types.VARCHAR, false);
				public Field apkImage = new Field(this, "`apkImage`", Types.VARCHAR, false);
				public Field isoImage = new Field(this, "`isoImage`", Types.VARCHAR, false);
				public Field pathApk = new Field(this, "`pathApk`", Types.VARCHAR, false);
				public Field pathIso = new Field(this, "`pathIso`", Types.VARCHAR, false);
				public Field isRecommended = new Field(this, "`isRecommended`", Types.INTEGER, false);
				public Field sortIndex = new Field(this, "`sortIndex`", Types.INTEGER, false);
				public Field status = new Field(this, "`status`", Types.INTEGER, false);
				public Field addTime = new Field(this, "`addTime`", Types.TIMESTAMP, false);
				public Field seoTitle = new Field(this, "`seoTitle`", Types.VARCHAR, false);
				public Field seoKeywords = new Field(this, "`seoKeywords`", Types.VARCHAR, false);
				public Field seoDescription = new Field(this, "`seoDescription`", Types.VARCHAR, false);

				public t_appadv() {
					name = "`t_appadv`";
				}
			}

			public class t_attribute extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field _name = new Field(this, "`name`", Types.VARCHAR, false);
				public Field parentId = new Field(this, "`parentId`", Types.BIGINT, false);
				public Field sortIndex = new Field(this, "`sortIndex`", Types.INTEGER, false);
				public Field status = new Field(this, "`status`", Types.INTEGER, false);
				public Field addTime = new Field(this, "`addTime`", Types.TIMESTAMP, false);
				public Field productIds = new Field(this, "`productIds`", Types.VARCHAR, false);

				public t_attribute() {
					name = "`t_attribute`";
				}
			}

			public class t_banner extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field title = new Field(this, "`title`", Types.VARCHAR, false);
				public Field imgPath = new Field(this, "`imgPath`", Types.VARCHAR, false);
				public Field url = new Field(this, "`url`", Types.VARCHAR, false);
				public Field imgUrl = new Field(this, "`imgUrl`", Types.VARCHAR, false);
				public Field imgFont = new Field(this, "`imgFont`", Types.VARCHAR, false);
				public Field sortIndex = new Field(this, "`sortIndex`", Types.INTEGER, false);
				public Field type = new Field(this, "`type`", Types.INTEGER, false);
				public Field status = new Field(this, "`status`", Types.INTEGER, false);
				public Field addTime = new Field(this, "`addTime`", Types.TIMESTAMP, false);
				public Field urlTwo = new Field(this, "`urlTwo`", Types.VARCHAR, false);

				public t_banner() {
					name = "`t_banner`";
				}
			}

			public class t_brand extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field _name = new Field(this, "`name`", Types.VARCHAR, false);
				public Field content = new Field(this, "`content`", Types.VARCHAR, false);
				public Field isLevel = new Field(this, "`isLevel`", Types.INTEGER, false);
				public Field type = new Field(this, "`type`", Types.INTEGER, false);
				public Field parentId = new Field(this, "`parentId`", Types.BIGINT, false);
				public Field addTime = new Field(this, "`addTime`", Types.TIMESTAMP, false);
				public Field sortIndex = new Field(this, "`sortIndex`", Types.INTEGER, false);
				public Field status = new Field(this, "`status`", Types.INTEGER, false);
				public Field seoTitle = new Field(this, "`seoTitle`", Types.VARCHAR, false);
				public Field seoKeywords = new Field(this, "`seoKeywords`", Types.VARCHAR, false);
				public Field seoDescription = new Field(this, "`seoDescription`", Types.VARCHAR, false);

				public t_brand() {
					name = "`t_brand`";
				}
			}

			public class t_brand_advertise extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field title = new Field(this, "`title`", Types.VARCHAR, false);
				public Field views = new Field(this, "`views`", Types.BIGINT, false);
				public Field image = new Field(this, "`image`", Types.VARCHAR, false);
				public Field path = new Field(this, "`path`", Types.VARCHAR, false);
				public Field addTime = new Field(this, "`addTime`", Types.TIMESTAMP, false);
				public Field status = new Field(this, "`status`", Types.INTEGER, false);
				public Field sortIndex = new Field(this, "`sortIndex`", Types.INTEGER, false);
				public Field seoTitle = new Field(this, "`seoTitle`", Types.VARCHAR, false);
				public Field seoKeywords = new Field(this, "`seoKeywords`", Types.VARCHAR, false);
				public Field seoDescription = new Field(this, "`seoDescription`", Types.VARCHAR, false);

				public t_brand_advertise() {
					name = "`t_brand_advertise`";
				}
			}

			public class t_consumers extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field c_name = new Field(this, "`c_name`", Types.VARCHAR, false);
				public Field c_telephone = new Field(this, "`c_telephone`", Types.VARCHAR, false);
				public Field c_company = new Field(this, "`c_company`", Types.VARCHAR, false);
				public Field c_job = new Field(this, "`c_job`", Types.VARCHAR, false);
				public Field c_email = new Field(this, "`c_email`", Types.VARCHAR, false);
				public Field c_qq = new Field(this, "`c_qq`", Types.VARCHAR, false);
				public Field needs_status = new Field(this, "`needs_status`", Types.INTEGER, false);
				public Field address = new Field(this, "`address`", Types.VARCHAR, false);
				public Field need_content = new Field(this, "`need_content`", Types.VARCHAR, false);
				public Field addTime = new Field(this, "`addTime`", Types.TIMESTAMP, false);
				public Field remark = new Field(this, "`remark`", Types.VARCHAR, false);

				public t_consumers() {
					name = "`t_consumers`";
				}
			}

			public class t_design extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field categoryId = new Field(this, "`categoryId`", Types.BIGINT, false);
				public Field title = new Field(this, "`title`", Types.VARCHAR, false);
				public Field author = new Field(this, "`author`", Types.VARCHAR, false);
				public Field imgUrl = new Field(this, "`imgUrl`", Types.VARCHAR, false);
				public Field addTime = new Field(this, "`addTime`", Types.TIMESTAMP, false);
				public Field status = new Field(this, "`status`", Types.INTEGER, false);
				public Field sortIndex = new Field(this, "`sortIndex`", Types.INTEGER, false);

				public t_design() {
					name = "`t_design`";
				}
			}

			public class t_design_category extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field _name = new Field(this, "`name`", Types.VARCHAR, false);
				public Field addTime = new Field(this, "`addTime`", Types.TIMESTAMP, false);
				public Field status = new Field(this, "`status`", Types.INTEGER, false);
				public Field sortIndex = new Field(this, "`sortIndex`", Types.INTEGER, false);

				public t_design_category() {
					name = "`t_design_category`";
				}
			}

			public class t_development extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field title = new Field(this, "`title`", Types.VARCHAR, false);
				public Field content = new Field(this, "`content`", Types.VARCHAR, false);
				public Field status = new Field(this, "`status`", Types.INTEGER, false);
				public Field addTime = new Field(this, "`addTime`", Types.TIMESTAMP, false);
				public Field sortIndex = new Field(this, "`sortIndex`", Types.INTEGER, false);
				public Field seoTitle = new Field(this, "`seoTitle`", Types.VARCHAR, false);
				public Field seoKeywords = new Field(this, "`seoKeywords`", Types.VARCHAR, false);
				public Field seoDescription = new Field(this, "`seoDescription`", Types.VARCHAR, false);

				public t_development() {
					name = "`t_development`";
				}
			}

			public class t_download extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, false);
				public Field categoryId = new Field(this, "`categoryId`", Types.BIGINT, false);
				public Field _name = new Field(this, "`name`", Types.VARCHAR, false);
				public Field image = new Field(this, "`image`", Types.VARCHAR, false);
				public Field path = new Field(this, "`path`", Types.VARCHAR, false);
				public Field isRecommend = new Field(this, "`isRecommend`", Types.INTEGER, false);
				public Field addTime = new Field(this, "`addTime`", Types.TIMESTAMP, false);
				public Field sortIndex = new Field(this, "`sortIndex`", Types.INTEGER, false);
				public Field status = new Field(this, "`status`", Types.INTEGER, false);
				public Field seoTitle = new Field(this, "`seoTitle`", Types.VARCHAR, false);
				public Field seoKeywords = new Field(this, "`seoKeywords`", Types.VARCHAR, false);
				public Field seoDescription = new Field(this, "`seoDescription`", Types.VARCHAR, false);
				public Field down_num = new Field(this, "`down_num`", Types.INTEGER, false);
				public Field size = new Field(this, "`size`", Types.DOUBLE, false);

				public t_download() {
					name = "`t_download`";
				}
			}

			public class t_download_category extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field category_name = new Field(this, "`category_name`", Types.VARCHAR, false);

				public t_download_category() {
					name = "`t_download_category`";
				}
			}

			public class t_download_help extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field title = new Field(this, "`title`", Types.VARCHAR, false);
				public Field content = new Field(this, "`content`", Types.VARCHAR, false);
				public Field fit = new Field(this, "`fit`", Types.VARCHAR, false);
				public Field sortIndex = new Field(this, "`sortIndex`", Types.INTEGER, false);
				public Field status = new Field(this, "`status`", Types.INTEGER, false);
				public Field addTime = new Field(this, "`addTime`", Types.TIMESTAMP, false);
				public Field seoTitle = new Field(this, "`seoTitle`", Types.VARCHAR, false);
				public Field seoKeywords = new Field(this, "`seoKeywords`", Types.VARCHAR, false);
				public Field seoDescription = new Field(this, "`seoDescription`", Types.VARCHAR, false);
				public Field image = new Field(this, "`image`", Types.VARCHAR, false);

				public t_download_help() {
					name = "`t_download_help`";
				}
			}

			public class t_img_list extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field tid = new Field(this, "`tid`", Types.INTEGER, false);
				public Field imgUrl = new Field(this, "`imgUrl`", Types.VARCHAR, false);
				public Field status = new Field(this, "`status`", Types.INTEGER, false);
				public Field sortIndex = new Field(this, "`sortIndex`", Types.INTEGER, false);
				public Field downUrl = new Field(this, "`downUrl`", Types.VARCHAR, false);

				public t_img_list() {
					name = "`t_img_list`";
				}
			}

			public class t_info extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field _name = new Field(this, "`name`", Types.VARCHAR, false);
				public Field sortIndex = new Field(this, "`sortIndex`", Types.INTEGER, false);
				public Field status = new Field(this, "`status`", Types.INTEGER, false);
				public Field addTime = new Field(this, "`addTime`", Types.TIMESTAMP, false);

				public t_info() {
					name = "`t_info`";
				}
			}

			public class t_info_content extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field title = new Field(this, "`title`", Types.VARCHAR, false);
				public Field infoId = new Field(this, "`infoId`", Types.INTEGER, false);
				public Field content = new Field(this, "`content`", Types.VARCHAR, false);
				public Field linkPath = new Field(this, "`linkPath`", Types.VARCHAR, false);
				public Field sortIndex = new Field(this, "`sortIndex`", Types.INTEGER, false);
				public Field status = new Field(this, "`status`", Types.INTEGER, false);
				public Field addTime = new Field(this, "`addTime`", Types.TIMESTAMP, false);
				public Field imgUrl = new Field(this, "`imgUrl`", Types.VARCHAR, false);

				public t_info_content() {
					name = "`t_info_content`";
				}
			}

			public class t_kyd_report extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field title = new Field(this, "`title`", Types.VARCHAR, false);
				public Field source = new Field(this, "`source`", Types.VARCHAR, false);
				public Field views = new Field(this, "`views`", Types.BIGINT, false);
				public Field image = new Field(this, "`image`", Types.VARCHAR, false);
				public Field path = new Field(this, "`path`", Types.VARCHAR, false);
				public Field content = new Field(this, "`content`", Types.LONGVARCHAR, false);
				public Field addTime = new Field(this, "`addTime`", Types.TIMESTAMP, false);
				public Field status = new Field(this, "`status`", Types.INTEGER, false);
				public Field sortIndex = new Field(this, "`sortIndex`", Types.INTEGER, false);
				public Field seoTitle = new Field(this, "`seoTitle`", Types.VARCHAR, false);
				public Field seoKeywords = new Field(this, "`seoKeywords`", Types.VARCHAR, false);
				public Field seoDescription = new Field(this, "`seoDescription`", Types.VARCHAR, false);

				public t_kyd_report() {
					name = "`t_kyd_report`";
				}
			}

			public class t_materials extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field _name = new Field(this, "`name`", Types.VARCHAR, false);
				public Field number = new Field(this, "`number`", Types.VARCHAR, false);
				public Field productId = new Field(this, "`productId`", Types.BIGINT, false);
				public Field path = new Field(this, "`path`", Types.VARCHAR, false);
				public Field size = new Field(this, "`size`", Types.VARCHAR, false);
				public Field addTime = new Field(this, "`addTime`", Types.TIMESTAMP, false);
				public Field sortIndex = new Field(this, "`sortIndex`", Types.INTEGER, false);
				public Field status = new Field(this, "`status`", Types.INTEGER, false);
				public Field seoTitle = new Field(this, "`seoTitle`", Types.VARCHAR, false);
				public Field seoKeywords = new Field(this, "`seoKeywords`", Types.VARCHAR, false);
				public Field seoDescription = new Field(this, "`seoDescription`", Types.VARCHAR, false);
				public Field image = new Field(this, "`image`", Types.VARCHAR, false);

				public t_materials() {
					name = "`t_materials`";
				}
			}

			public class t_materials_attribute extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field attributeId = new Field(this, "`attributeId`", Types.BIGINT, false);
				public Field materialsId = new Field(this, "`materialsId`", Types.BIGINT, false);

				public t_materials_attribute() {
					name = "`t_materials_attribute`";
				}
			}

			public class t_needs extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, false);
				public Field needs_name = new Field(this, "`needs_name`", Types.VARCHAR, false);

				public t_needs() {
					name = "`t_needs`";
				}
			}

			public class t_newspaper extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field _name = new Field(this, "`name`", Types.VARCHAR, false);
				public Field image = new Field(this, "`image`", Types.VARCHAR, false);
				public Field path = new Field(this, "`path`", Types.VARCHAR, false);
				public Field addTime = new Field(this, "`addTime`", Types.TIMESTAMP, false);
				public Field status = new Field(this, "`status`", Types.INTEGER, false);
				public Field sortIndex = new Field(this, "`sortIndex`", Types.INTEGER, false);
				public Field seoTitle = new Field(this, "`seoTitle`", Types.VARCHAR, false);
				public Field seoKeywords = new Field(this, "`seoKeywords`", Types.VARCHAR, false);
				public Field seoDescription = new Field(this, "`seoDescription`", Types.VARCHAR, false);

				public t_newspaper() {
					name = "`t_newspaper`";
				}
			}

			public class t_parameter extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field _name = new Field(this, "`name`", Types.VARCHAR, false);
				public Field sortIndex = new Field(this, "`sortIndex`", Types.INTEGER, false);
				public Field addTime = new Field(this, "`addTime`", Types.TIMESTAMP, false);
				public Field status = new Field(this, "`status`", Types.INTEGER, false);

				public t_parameter() {
					name = "`t_parameter`";
				}
			}

			public class t_product extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field _name = new Field(this, "`name`", Types.VARCHAR, false);
				public Field categoryId = new Field(this, "`categoryId`", Types.BIGINT, false);
				public Field image = new Field(this, "`image`", Types.VARCHAR, false);
				public Field url = new Field(this, "`url`", Types.VARCHAR, false);
				public Field wapUrl = new Field(this, "`wapUrl`", Types.VARCHAR, false);
				public Field details = new Field(this, "`details`", Types.LONGVARCHAR, false);
				public Field sortIndex = new Field(this, "`sortIndex`", Types.INTEGER, false);
				public Field addTime = new Field(this, "`addTime`", Types.TIMESTAMP, false);
				public Field status = new Field(this, "`status`", Types.INTEGER, false);
				public Field seoTitle = new Field(this, "`seoTitle`", Types.VARCHAR, false);
				public Field seoKeywords = new Field(this, "`seoKeywords`", Types.VARCHAR, false);
				public Field seoDescription = new Field(this, "`seoDescription`", Types.VARCHAR, false);
				public Field content = new Field(this, "`content`", Types.VARCHAR, false);
				public Field isShow = new Field(this, "`isShow`", Types.INTEGER, false);

				public t_product() {
					name = "`t_product`";
				}
			}

			public class t_product_category extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field _name = new Field(this, "`name`", Types.VARCHAR, false);
				public Field image = new Field(this, "`image`", Types.VARCHAR, false);
				public Field introduction = new Field(this, "`introduction`", Types.VARCHAR, false);
				public Field backImage = new Field(this, "`backImage`", Types.VARCHAR, false);
				public Field url = new Field(this, "`url`", Types.VARCHAR, false);
				public Field status = new Field(this, "`status`", Types.INTEGER, false);
				public Field sortIndex = new Field(this, "`sortIndex`", Types.INTEGER, false);
				public Field addTime = new Field(this, "`addTime`", Types.TIMESTAMP, false);
				public Field seoTitle = new Field(this, "`seoTitle`", Types.VARCHAR, false);
				public Field seoKeywords = new Field(this, "`seoKeywords`", Types.VARCHAR, false);
				public Field seoDescription = new Field(this, "`seoDescription`", Types.VARCHAR, false);
				public Field isShow = new Field(this, "`isShow`", Types.INTEGER, false);

				public t_product_category() {
					name = "`t_product_category`";
				}
			}

			public class t_product_config extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field productId = new Field(this, "`productId`", Types.BIGINT, false);
				public Field image = new Field(this, "`image`", Types.VARCHAR, false);
				public Field sortIndex = new Field(this, "`sortIndex`", Types.INTEGER, false);

				public t_product_config() {
					name = "`t_product_config`";
				}
			}

			public class t_product_detail extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field _name = new Field(this, "`name`", Types.VARCHAR, false);
				public Field productId = new Field(this, "`productId`", Types.BIGINT, false);
				public Field content = new Field(this, "`content`", Types.VARCHAR, false);
				public Field introduction = new Field(this, "`introduction`", Types.VARCHAR, false);
				public Field image = new Field(this, "`image`", Types.VARCHAR, false);
				public Field images = new Field(this, "`images`", Types.VARCHAR, false);
				public Field parentId = new Field(this, "`parentId`", Types.BIGINT, false);
				public Field type = new Field(this, "`type`", Types.INTEGER, false);
				public Field sortIndex = new Field(this, "`sortIndex`", Types.INTEGER, false);
				public Field status = new Field(this, "`status`", Types.INTEGER, false);
				public Field backImage = new Field(this, "`backImage`", Types.VARCHAR, false);

				public t_product_detail() {
					name = "`t_product_detail`";
				}
			}

			public class t_product_parameter extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field productId = new Field(this, "`productId`", Types.BIGINT, false);
				public Field parameterId = new Field(this, "`parameterId`", Types.BIGINT, false);
				public Field content = new Field(this, "`content`", Types.VARCHAR, false);

				public t_product_parameter() {
					name = "`t_product_parameter`";
				}
			}

			public class t_question_list extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field _name = new Field(this, "`name`", Types.VARCHAR, false);
				public Field solution = new Field(this, "`solution`", Types.VARCHAR, false);
				public Field addTime = new Field(this, "`addTime`", Types.TIMESTAMP, false);
				public Field sortIndex = new Field(this, "`sortIndex`", Types.INTEGER, false);
				public Field status = new Field(this, "`status`", Types.INTEGER, false);

				public t_question_list() {
					name = "`t_question_list`";
				}
			}

			public class t_recruit extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field _name = new Field(this, "`name`", Types.VARCHAR, false);
				public Field type = new Field(this, "`type`", Types.INTEGER, false);
				public Field content = new Field(this, "`content`", Types.VARCHAR, false);
				public Field addTime = new Field(this, "`addTime`", Types.TIMESTAMP, false);
				public Field sort = new Field(this, "`sort`", Types.INTEGER, false);
				public Field status = new Field(this, "`status`", Types.INTEGER, false);
				public Field seoTitle = new Field(this, "`seoTitle`", Types.VARCHAR, false);
				public Field seoKeywords = new Field(this, "`seoKeywords`", Types.VARCHAR, false);
				public Field seoDescription = new Field(this, "`seoDescription`", Types.VARCHAR, false);

				public t_recruit() {
					name = "`t_recruit`";
				}
			}

			public class t_recruit_type extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field title = new Field(this, "`title`", Types.VARCHAR, false);
				public Field sortIndex = new Field(this, "`sortIndex`", Types.INTEGER, false);
				public Field addTime = new Field(this, "`addTime`", Types.TIMESTAMP, false);
				public Field status = new Field(this, "`status`", Types.INTEGER, false);
				public Field imgUrl = new Field(this, "`imgUrl`", Types.VARCHAR, false);

				public t_recruit_type() {
					name = "`t_recruit_type`";
				}
			}

			public class t_region extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field parentId = new Field(this, "`parentId`", Types.BIGINT, false);
				public Field regionName = new Field(this, "`regionName`", Types.VARCHAR, false);
				public Field regionType = new Field(this, "`regionType`", Types.INTEGER, false);

				public t_region() {
					name = "`t_region`";
				}
			}

			public class t_report extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field categoryId = new Field(this, "`categoryId`", Types.BIGINT, false);
				public Field title = new Field(this, "`title`", Types.VARCHAR, false);
				public Field author = new Field(this, "`author`", Types.VARCHAR, false);
				public Field image = new Field(this, "`image`", Types.VARCHAR, false);
				public Field addTime = new Field(this, "`addTime`", Types.TIMESTAMP, false);
				public Field path = new Field(this, "`path`", Types.VARCHAR, false);
				public Field status = new Field(this, "`status`", Types.INTEGER, false);
				public Field sortIndex = new Field(this, "`sortIndex`", Types.INTEGER, false);
				public Field seoTitle = new Field(this, "`seoTitle`", Types.VARCHAR, false);
				public Field seoKeywords = new Field(this, "`seoKeywords`", Types.VARCHAR, false);
				public Field seoDescription = new Field(this, "`seoDescription`", Types.VARCHAR, false);

				public t_report() {
					name = "`t_report`";
				}
			}

			public class t_role extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field _name = new Field(this, "`name`", Types.VARCHAR, false);
				public Field description = new Field(this, "`description`", Types.VARCHAR, false);

				public t_role() {
					name = "`t_role`";
				}
			}

			public class t_role_rights extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field roleId = new Field(this, "`roleId`", Types.BIGINT, false);
				public Field rightsId = new Field(this, "`rightsId`", Types.BIGINT, false);

				public t_role_rights() {
					name = "`t_role_rights`";
				}
			}

			public class t_seo_page extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field pageUrl = new Field(this, "`pageUrl`", Types.VARCHAR, false);
				public Field columId = new Field(this, "`columId`", Types.INTEGER, false);
				public Field seoTitle = new Field(this, "`seoTitle`", Types.VARCHAR, false);
				public Field seoKeyWord = new Field(this, "`seoKeyWord`", Types.VARCHAR, false);
				public Field seoDescription = new Field(this, "`seoDescription`", Types.VARCHAR, false);
				public Field mTitle = new Field(this, "`mTitle`", Types.VARCHAR, false);
				public Field mKeyWord = new Field(this, "`mKeyWord`", Types.VARCHAR, false);
				public Field mDescription = new Field(this, "`mDescription`", Types.VARCHAR, false);

				public t_seo_page() {
					name = "`t_seo_page`";
				}
			}

			public class t_service_type extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field title = new Field(this, "`title`", Types.VARCHAR, false);
				public Field linkPath = new Field(this, "`linkPath`", Types.VARCHAR, false);
				public Field sortIndex = new Field(this, "`sortIndex`", Types.INTEGER, false);
				public Field addTime = new Field(this, "`addTime`", Types.TIMESTAMP, false);
				public Field status = new Field(this, "`status`", Types.INTEGER, false);

				public t_service_type() {
					name = "`t_service_type`";
				}
			}

			public class t_update_program extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field _name = new Field(this, "`name`", Types.VARCHAR, false);
				public Field image = new Field(this, "`image`", Types.VARCHAR, false);
				public Field path = new Field(this, "`path`", Types.VARCHAR, false);
				public Field categoryId = new Field(this, "`categoryId`", Types.BIGINT, false);
				public Field productId = new Field(this, "`productId`", Types.BIGINT, false);
				public Field addTime = new Field(this, "`addTime`", Types.TIMESTAMP, false);
				public Field sortIndex = new Field(this, "`sortIndex`", Types.INTEGER, false);
				public Field status = new Field(this, "`status`", Types.INTEGER, false);
				public Field seoTitle = new Field(this, "`seoTitle`", Types.VARCHAR, false);
				public Field seoKeywords = new Field(this, "`seoKeywords`", Types.VARCHAR, false);
				public Field seoDescription = new Field(this, "`seoDescription`", Types.VARCHAR, false);

				public t_update_program() {
					name = "`t_update_program`";
				}
			}

			public class t_user extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field username = new Field(this, "`username`", Types.VARCHAR, false);
				public Field password = new Field(this, "`password`", Types.VARCHAR, false);
				public Field realName = new Field(this, "`realName`", Types.VARCHAR, false);
				public Field phone = new Field(this, "`phone`", Types.VARCHAR, false);
				public Field isDisable = new Field(this, "`isDisable`", Types.INTEGER, false);
				public Field sortIndex = new Field(this, "`sortIndex`", Types.INTEGER, false);
				public Field addTime = new Field(this, "`addTime`", Types.TIMESTAMP, false);
				public Field loginEndTime = new Field(this, "`loginEndTime`", Types.TIMESTAMP, false);
				public Field loginEndIP = new Field(this, "`loginEndIP`", Types.VARCHAR, false);

				public t_user() {
					name = "`t_user`";
				}
			}

			public class t_web_distribute extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field type = new Field(this, "`type`", Types.INTEGER, false);
				public Field provinceId = new Field(this, "`provinceId`", Types.BIGINT, false);
				public Field cityId = new Field(this, "`cityId`", Types.BIGINT, false);
				public Field areaId = new Field(this, "`areaId`", Types.BIGINT, false);
				public Field address = new Field(this, "`address`", Types.VARCHAR, false);
				public Field storeName = new Field(this, "`storeName`", Types.VARCHAR, false);
				public Field phone = new Field(this, "`phone`", Types.VARCHAR, false);
				public Field longitude = new Field(this, "`longitude`", Types.VARCHAR, false);
				public Field latitude = new Field(this, "`latitude`", Types.VARCHAR, false);
				public Field addTime = new Field(this, "`addTime`", Types.TIMESTAMP, false);
				public Field sortIndex = new Field(this, "`sortIndex`", Types.INTEGER, false);
				public Field status = new Field(this, "`status`", Types.INTEGER, false);

				public t_web_distribute() {
					name = "`t_web_distribute`";
				}
			}

			public class t_web_distribute_type extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field title = new Field(this, "`title`", Types.VARCHAR, false);
				public Field sortIndex = new Field(this, "`sortIndex`", Types.INTEGER, false);
				public Field addTime = new Field(this, "`addTime`", Types.TIMESTAMP, false);
				public Field status = new Field(this, "`status`", Types.INTEGER, false);

				public t_web_distribute_type() {
					name = "`t_web_distribute_type`";
				}
			}

			public class t_weili_display extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field title = new Field(this, "`title`", Types.VARCHAR, false);
				public Field source = new Field(this, "`source`", Types.VARCHAR, false);
				public Field views = new Field(this, "`views`", Types.BIGINT, false);
				public Field image = new Field(this, "`image`", Types.VARCHAR, false);
				public Field content = new Field(this, "`content`", Types.LONGVARCHAR, false);
				public Field addTime = new Field(this, "`addTime`", Types.TIMESTAMP, false);
				public Field status = new Field(this, "`status`", Types.INTEGER, false);
				public Field isRecommended = new Field(this, "`isRecommended`", Types.INTEGER, false);
				public Field isIndex = new Field(this, "`isIndex`", Types.INTEGER, false);
				public Field sortIndex = new Field(this, "`sortIndex`", Types.INTEGER, false);
				public Field seoTitle = new Field(this, "`seoTitle`", Types.VARCHAR, false);
				public Field seoKeywords = new Field(this, "`seoKeywords`", Types.VARCHAR, false);
				public Field seoDescription = new Field(this, "`seoDescription`", Types.VARCHAR, false);
				public Field typeId = new Field(this, "`typeId`", Types.INTEGER, false);

				public t_weili_display() {
					name = "`t_weili_display`";
				}
			}

			public class t_weili_display_type extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field type_name = new Field(this, "`type_name`", Types.VARCHAR, false);

				public t_weili_display_type() {
					name = "`t_weili_display_type`";
				}
			}
			
			
			public class t_newest extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field title = new Field(this, "`title`", Types.VARCHAR, false);
				public Field source = new Field(this, "`source`", Types.VARCHAR, false);
				public Field views = new Field(this, "`views`", Types.BIGINT, false);
				public Field image = new Field(this, "`image`", Types.VARCHAR, false);
				public Field content = new Field(this, "`content`", Types.LONGVARCHAR, false);
				public Field addTime = new Field(this, "`addTime`", Types.TIMESTAMP, false);
				public Field status = new Field(this, "`status`", Types.INTEGER, false);
				public Field isRecommended = new Field(this, "`isRecommended`", Types.INTEGER, false);
				public Field isIndex = new Field(this, "`isIndex`", Types.INTEGER, false);
				public Field sortIndex = new Field(this, "`sortIndex`", Types.INTEGER, false);
				public Field seoTitle = new Field(this, "`seoTitle`", Types.VARCHAR, false);
				public Field seoKeywords = new Field(this, "`seoKeywords`", Types.VARCHAR, false);
				public Field seoDescription = new Field(this, "`seoDescription`", Types.VARCHAR, false);

				public t_newest() {
					name = "`t_newest`";
				}
			}
			//导航菜单栏
			public class t_navigationbar extends Table {
				public Field id = new Field(this, "`id`", Types.BIGINT, true);
				public Field _name = new Field(this, "`name`", Types.VARCHAR, false);
				public Field orderName = new Field(this, "`orderName`", Types.VARCHAR, false);
				public Field parentId = new Field(this, "`parentId`", Types.BIGINT, false);
				public Field enable = new Field(this, "`enable`", Types.INTEGER, false);
				public Field url = new Field(this, "`url`", Types.VARCHAR, false);
				public Field type = new Field(this, "`type`", Types.INTEGER, false);
				public Field sortIndex = new Field(this, "`sortIndex`", Types.INTEGER, false);
				public Field addTime = new Field(this, "`addTime`", Types.TIMESTAMP, false);
				public Field mark = new Field(this, "`mark`", Types.VARCHAR, false);

				public t_navigationbar() {
					name = "`t_navigationbar`";
				}
			}
		}

		public class Views {

			public class v_t_admin extends View {
				public v_t_admin() {
					name = "`v_t_admin`";
				}
			}
			public class v_t_navigationbar extends View {
				public v_t_navigationbar() {
					name = "`v_t_navigationbar`";
				}
			}
			public class v_bt_rights extends View {
				public v_bt_rights() {
					name = "`v_bt_rights`";
				}
			}
			public class v_t_attribute_materials extends View {
				public v_t_attribute_materials() {
					name = "`v_t_attribute_materials`";
				}
			}

			public class v_t_consumers_needs extends View {
				public v_t_consumers_needs() {
					name = "`v_t_consumers_needs`";
				}
			}

			public class v_t_design_category extends View {
				public v_t_design_category() {
					name = "`v_t_design_category`";
				}
			}

			public class v_t_download extends View {
				public v_t_download() {
					name = "`v_t_download`";
				}
			}

			public class v_t_img_design extends View {
				public v_t_img_design() {
					name = "`v_t_img_design`";
				}
			}

			public class v_t_info_content extends View {
				public v_t_info_content() {
					name = "`v_t_info_content`";
				}
			}

			public class v_t_materials_attribute extends View {
				public v_t_materials_attribute() {
					name = "`v_t_materials_attribute`";
				}
			}

			public class v_t_materials_product extends View {
				public v_t_materials_product() {
					name = "`v_t_materials_product`";
				}
			}

			public class v_t_product_category extends View {
				public v_t_product_category() {
					name = "`v_t_product_category`";
				}
			}

			public class v_t_product_config extends View {
				public v_t_product_config() {
					name = "`v_t_product_config`";
				}
			}

			public class v_t_product_info extends View {
				public v_t_product_info() {
					name = "`v_t_product_info`";
				}
			}

			public class v_t_product_parameter extends View {
				public v_t_product_parameter() {
					name = "`v_t_product_parameter`";
				}
			}

			public class v_t_recruit_type extends View {
				public v_t_recruit_type() {
					name = "`v_t_recruit_type`";
				}
			}

			public class v_t_report_category extends View {
				public v_t_report_category() {
					name = "`v_t_report_category`";
				}
			}

			public class v_t_report_detail extends View {
				public v_t_report_detail() {
					name = "`v_t_report_detail`";
				}
			}

			public class v_t_role_rights_menu extends View {
				public v_t_role_rights_menu() {
					name = "`v_t_role_rights_menu`";
				}
			}

			public class v_t_update_program extends View {
				public v_t_update_program() {
					name = "`v_t_update_program`";
				}
			}

			public class v_t_web_distribute extends View {
				public v_t_web_distribute() {
					name = "`v_t_web_distribute`";
				}
			}
			
			public class v_t_weili_type_display extends View {
				public v_t_weili_type_display() {
					name = "`v_t_weili_type_display`";
				}
			}
		}

		public static class Functions {

		}

		public static class Procedures {

			public static int pr_pager(Connection conn, DataSet ds, List<Object> outParameterValues, String p_table_name, String p_fields, long p_page_size, long p_page_now, String P_order_string, String p_where_string, long p_out_rows) throws SQLException, DataException {
				int result = MySQL.executeProcedure(conn, "`pr_pager`", ds, outParameterValues,
					new Parameter(Types.VARCHAR, ParameterDirection.IN, p_table_name),
					new Parameter(Types.VARCHAR, ParameterDirection.IN, p_fields),
					new Parameter(Types.BIGINT, ParameterDirection.IN, p_page_size),
					new Parameter(Types.BIGINT, ParameterDirection.IN, p_page_now),
					new Parameter(Types.VARCHAR, ParameterDirection.IN, P_order_string),
					new Parameter(Types.VARCHAR, ParameterDirection.IN, p_where_string),
					new Parameter(Types.BIGINT, ParameterDirection.OUT, p_out_rows));

				return result;
			}

			public static int p_region(Connection conn, DataSet ds, List<Object> outParameterValues, long regnId) throws SQLException, DataException {
				int result = MySQL.executeProcedure(conn, "`p_region`", ds, outParameterValues,
					new Parameter(Types.BIGINT, ParameterDirection.IN, regnId));

				return result;
			}
		}
}
