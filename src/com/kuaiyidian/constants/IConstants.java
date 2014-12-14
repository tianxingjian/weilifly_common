package com.kuaiyidian.constants;

import java.util.HashMap;
import java.util.Map;

/**
 * @author 杨程
 * @version Oct 19, 2011 1:55:18 PM
 * @declaration
 */
public class IConstants {
	
	/**
	 * 排序方式：倒序
	 */
	public static final String SORT_TYPE_DESC = " DESC ";
	/**
	 * session内容：admin管理员
	 */
	public static final String SESSION_ADMIN="admin";
	
	/**
	 * session内容：user用户
	 */
	public static final String SESSION_USER="user";

	/**
	 * session内容：app user用户
	 */
	public static final String SESSION_APP_USER="user";
	
	/**
	 * 是否开启用户请求过滤，true：开启false：关闭
	 */
	public static final boolean USER_SESSION_SWITCH = true;
	
	/**
	 * session内容：shoppingCart 购物车
	 */
	public static final String SESSION_SHOPPING_CART="shoppingCart";
	
	/**
	 * 存放注册信息
	 */
	public static final String SESSION_REGISTER_INFO = "register";
	
	public static final String MD5_KEY = "cvz12bbn231hj13d";
	
	/**
	 * 邮件信息
	 */
	public static String MAIL_HOST="";
	public static String MAIL_USERNAME="";
	public static String MAIL_PASSWORD="";
	public static String MAIL_FROM="";
	
	/**
	 * 链接地址前缀
	 */
	public static String SERVICE_HOST="";
	
	/**
	 * 发送短信
	 */
	public static String SEND_PHONE_MESSAGE_URL ="";
	
	/**
	 * 管理员登录验证开关
	 */
	public static final boolean ADMIN_SESSION_SWITCH = true;
	
	/**
	 * 管理员登录返回
	 */
	public static final String ADMIN_AJAX_LOGIN="noLogin";
	
	/**
	 * 上传文件地址
	 */
	public static final String USER_FILE_URL = "upload";
	
	/**
	 * 页面跳转拦截
	 */
	public static final String FRONTPAGEJUMP = "frontpagejump";
	
	/**
	 * 推荐
	 */
	public static final int RECOMMEND_ON = 1;

	/**
	 * 一级导航
	 */
	public static final int PARENT_BAR = -1;
	/**
	 * 导航栏启用
	 */
	public static final int ENABEL_ON = 1;
	/**
	 * 显示
	 */
	public static final int STATUS_ON = 1;

	/**
	 * 不显示
	 */
	public static final int STATUS_OFF = 2;
	
	/**
	 * pc端首页
	 */
	public static final int BANNER_TYPE_INDEX_PC = 1;

	/**
	 * wap端首页
	 */
	public static final int BANNER_TYPE_INDEX_WAP = 2;
	
	/**
	 * 没有二级
	 */
	public static final int ISLEVEL_OFF = 2;

	/**
	 * 有二级
	 */
	public static final int ISLEVEL_ON = 1;
	
	/**
	 * 发展历程列表
	 */
	public static final int BRAND_TYPE_TIME = 1;
	
	/**
	 * 资讯列表
	 */
	public static final int BRAND_TYPE_NEWS = 2;
	
	/**
	 * 广告列表
	 */
	public static final int BRAND_TYPE_ADVERTISE = 3;
	
	/**
	 * 华普报列表
	 */
	public static final int BRAND_TYPE_NEWSPAPER = 4;

	/**
	 * 报道列表
	 */
	public static final int BRAND_TYPE_REPORT = 5;

	/**
	 * 品牌文化ID
	 */
	public static final long BRAND_ID_CULTURE = 2;
	
	/**
	 * 华普报ID
	 */
	public static final long BRAND_ID_NEWSPAPER = 6;

	/**
	 * 品牌资讯ID
	 */
	public static final long BRAND_ID_NEWS = 4;
	
	/**
	 * 快易典报道ID
	 */
	public static final long BRAND_ID_REPORT = 7;

	/**
	 * 品牌广告ID
	 */
	public static final long BRAND_ID_ADVERTISE = 5;
	
	public static final int CONFIG_STATUS_ON = 1;
	
	/**
	 * 配置表 在线支持
	 */
	public static final long CONFIG_ID_ONLINE = 1;
	
	/**
	 * 配置表 服务政策
	 */
	public static final long CONFIG_ID_SERVICE_POLICY = 2;
	
	
	/**
	 * 配置表  在线客服1
	 */
	public static final long CONFIG_ID_PRESALES_CONSULTING=3;
	
	/**
	 * 配置表  在线客服2
	 */
	public static final long CONFIG_ID_AFTERSALES_CONSULTING=4;	
	
	/**
	 * 配置表  微信图片
	 */
	public static final long CONFIG_ID_WEIXIN=5;

	/**
	 * 配置表   首页经典视频
	 */
	public static final long CONFIG_ID_ONLINE_VIDEO = 9;

	/**
	 * 配置表   产品
	 */
	public static final int CONFIG_TYPE_PRODUCT=6;
	
	/**
	 * 配置表  电话号码
	 */
	public static final  long CONFIG_ID_PHONE=10;
	
	/**
	 * 图文详情
	 */
	public static final int PRODUCT_DETAIL_TYPE_TUWEN = 1;
	
	/**
	 * 有手机滑动图片
	 */
	public static final int PRODUCT_DETAIL_TYPE_HASPHONE = 2;
	
	
	/**
	 * 属性表  模块
	 */
	public static final int ATTRIBUTE_ID_MODULE=4; 
	
	
	
	/**
	 * 图片列表
	 */
	public static final int PRODUCT_DETAIL_TYPE_IMAGES = 3;
	
	/**
	 * 视频
	 */
	public static final int PRODUCT_DETAIL_TYPE_VIDEO = 4;
	
	/**
	 * 有诊断提升子类
	 */
	public static final int PRODUCT_DETAIL_TYPE_HASZHEN = 5;
	
	/**
	 * 有提问子类 
	 */
	public static final int PRODUCT_DETAIL_TYPE_HASQUESTION = 6;
	
	/**
	 * 有图片子类
	 */
	public static final int PRODUCT_DETAIL_TYPE_HASIMAGESCHILD = 7;
	
	/**
	 * 诊断提升子类
	 */
	public static final int PRODUCT_DETAIL_TYPE_ZHEN = 8;
	
	/**
	 * 提问子类
	 */
	public static final int PRODUCT_DETAIL_TYPE_QUESTION = 9;
	
	/**
	 * 图片子类
	 */
	public static final int PRODUCT_DETAIL_TYPE_IMAGESCHILD = 10;

	/**
	 * 放大镜
	 */
	public static final int PRODUCT_DETAIL_TYPE_AMPLIFY = 11;

	/**
	 * 手机滑动图片
	 */
	public static final int PRODUCT_DETAIL_TYPE_PHONE = 12;
	

	//定义文件上传格式
	public static final Map<Integer, String> EXTMAP = new HashMap<Integer, String>();
	
	//定义文件类型名称,与上面格式相对应
	public static final Map<Integer,String> NAMEMAP = new HashMap<Integer, String>();
	
	//定义文件大小规范
	public static final Map<Integer, Long> SIZEMAP = new HashMap<Integer, Long>();
	
	/**
	 * 支付宝wap版
	 */
	public static String ALIPAY_WAP_PARTNER = "";
    public static String ALIPAY_WAP_SELLER = "";
    public static String ALIPAY_WAP_KEY="";
    public static String ALIPAY_WAP_SEC_ID="";
    public static String ALIPAY_WAP_REQURL="";
    public static String ALIPAY_WAP_CALLBACK="";
    public static String ALIPAY_WAP_NOTIFYRECEIVER="";
	
	//----------------------------app 端 end---------------------------------------------------------------------------------------------

	static{
		
		com.shove.io.file.PropertyFile pf = new com.shove.io.file.PropertyFile();
		
		//定义文件上传格式
		EXTMAP.put(0, "gif,jpg,jpeg,png,bmp");//默认格式
    	EXTMAP.put(1, "swf,flv");//flash
    	EXTMAP.put(2, "swf,flv,mp3,wav,wma,wmv,mid,avi,mpg,asf,rm,rmvb");//media
    	EXTMAP.put(3, "doc,docx,xls,xlsx,ppt,htm,html,txt,zip,rar,gz,bz2,pdf,apk");//file
    	
    	//定义文件类型名称
    	NAMEMAP.put(0, "image");
    	NAMEMAP.put(1, "flash");
    	NAMEMAP.put(2, "media");
    	NAMEMAP.put(3, "file");
    	
    	//定义文件大小类型 单位b
    	SIZEMAP.put(0, 200*1024L);//200KB
    	SIZEMAP.put(1, 500*1024L);//
    	SIZEMAP.put(2, 1024*1024L);//
    	SIZEMAP.put(3, 1*1024*1024L);//1MB
    	SIZEMAP.put(4, 2*1024*1024L);//
    	SIZEMAP.put(5, 5*1024*1024L);//
    	SIZEMAP.put(6, 10*1024*1024L);//
    	SIZEMAP.put(7, 500*1024*1024L);//
    	SIZEMAP.put(8, 1024*1024*1024L);//1G
    	
    	MAIL_HOST =  pf.read("mail_host");
    	
    	//支付宝
    	ALIPAY_WAP_SEC_ID=pf.read("sign_type");
		ALIPAY_WAP_PARTNER = pf.read("partnerID");
		ALIPAY_WAP_SELLER = pf.read("seller_email");
		ALIPAY_WAP_KEY = pf.read("key");
		ALIPAY_WAP_REQURL = pf.read("alipay_wap_reqUrl");
		ALIPAY_WAP_CALLBACK = pf.read("alipay_wap_callBack");
		ALIPAY_WAP_NOTIFYRECEIVER = pf.read("alipay_wap_notifyReceiver");
    	
    	MAIL_USERNAME =  pf.read("mail_username");
    	MAIL_PASSWORD =  pf.read("mail_password");
    	MAIL_FROM =  pf.read("mail_from");
    	SERVICE_HOST = pf.read("service_host");
    	
    	SEND_PHONE_MESSAGE_URL =  pf.read("send_phone_message_url");
    	
	}
	
}
