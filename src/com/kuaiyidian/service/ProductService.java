package com.kuaiyidian.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.kuaiyidian.constants.IConstants;
import com.kuaiyidian.dao.ProductDao;
import com.kuaiyidian.dao.ProductDetailDao;
import com.kuaiyidian.dao.ProductParameterDao;
import com.shove.Convert;
import com.shove.base.BaseService;
import com.shove.data.DataSet;
import com.shove.data.dao.MySQL;
import com.shove.util.BeanMapUtils;
import com.shove.vo.PageBean;

public class ProductService extends BaseService {
	
	public static Log log = LogFactory.getLog(ProductService.class);
	
	private ProductDao productDao;
	private ProductParameterDao productParameterDao;
	private ProductDetailDao productDetailDao;

	public Map<String,Object> addProduct(String name,long categoryId,String image,String url,String wapUrl,String details,int sortIndex,int status,String seoTitle,String seoKeywords,String seoDescription,String parameters,String content,int isShow) throws Exception{
		Connection conn = null;
		
		long returnId = -1;
		String error = "添加失败";
		
		Map<String,Object> map = new HashMap<String, Object>();
		
		//产品参数
		List<Map<String,Object>> productParamenterList = new ArrayList<Map<String,Object>>();
		
		try{
			//boolCis:是否开启校验产品颜色库存信息
			Map<String,Object> returnMap = checkProduct(name, categoryId, image, url, wapUrl, details, sortIndex, status, seoTitle, seoKeywords, seoDescription, parameters, content,isShow,productParamenterList, true);
			
			returnId = ((Long)returnMap.get("returnId")); 
			if(returnId <= 0){
				error = (String)returnMap.get("error");
				
				return map;
				
			}
			
			conn = MySQL.getConnection();
			
			long productId = productDao.addProduct(conn, name, categoryId, image, url, wapUrl, details, sortIndex, status, seoTitle, seoKeywords, seoDescription,content,isShow);
			
			if(productId < 0){
				conn.rollback();
				returnId = -1;
				return map;
			}
			for (Map<String,Object> pcMap : productParamenterList) {
				returnId = productParameterDao.addProductParameter(conn, productId, (Long)pcMap.get("parameterId"), (String)pcMap.get("content"));
				if(returnId < 0){
					conn.rollback();
					returnId = -1;
					return map;
				}
			}
			
			productDetailDao.addProductDetail(conn, "三大智能标准，全面解决学习难点", productId, null, null, null, null, -1L, IConstants.PRODUCT_DETAIL_TYPE_TUWEN, null, IConstants.STATUS_OFF,null);
			productDetailDao.addProductDetail(conn, "智能远程呵护", productId, null, null, null, null, -1L, IConstants.PRODUCT_DETAIL_TYPE_HASPHONE, null, IConstants.STATUS_OFF,null);
			productDetailDao.addProductDetail(conn, "智能防近视", productId, null, null, null, null, -1L, IConstants.PRODUCT_DETAIL_TYPE_IMAGES, null, IConstants.STATUS_OFF,null);
			productDetailDao.addProductDetail(conn, "全新快易学堂，一站式学习，全面解决问题", productId, null, null, null, null, -1L, IConstants.PRODUCT_DETAIL_TYPE_TUWEN, null, IConstants.STATUS_OFF,null);
			productDetailDao.addProductDetail(conn, "学测练", productId, null, null, null, null, -1L, IConstants.PRODUCT_DETAIL_TYPE_VIDEO, null, IConstants.STATUS_OFF,null);
			productDetailDao.addProductDetail(conn, "全面跟踪学习过程、系统诊断掌握情况", productId, null, null, null, null, -1L, IConstants.PRODUCT_DETAIL_TYPE_TUWEN, null, IConstants.STATUS_OFF,null);
			productDetailDao.addProductDetail(conn, "诊断提升", productId, null, null, null, null, -1L, IConstants.PRODUCT_DETAIL_TYPE_HASZHEN, null, IConstants.STATUS_OFF,null);
			productDetailDao.addProductDetail(conn, "补", productId, null, null, null, null, -1L, IConstants.PRODUCT_DETAIL_TYPE_TUWEN, null, IConstants.STATUS_OFF,null);
			productDetailDao.addProductDetail(conn, "真人老师在线，针对解答学习难点、作业难题", productId, null, null, null, null, -1L, IConstants.PRODUCT_DETAIL_TYPE_HASQUESTION, null, IConstants.STATUS_OFF,null);
			productDetailDao.addProductDetail(conn, "学霸排行榜", productId, null, null, null, null, -1L, IConstants.PRODUCT_DETAIL_TYPE_AMPLIFY, null, IConstants.STATUS_OFF,null);
			productDetailDao.addProductDetail(conn, "更多功能，更多提升", productId, null, null, null, null, -1L, IConstants.PRODUCT_DETAIL_TYPE_TUWEN, null, IConstants.STATUS_OFF,null);
			productDetailDao.addProductDetail(conn, "硬件配置", productId, null, null, null, null, -1L, IConstants.PRODUCT_DETAIL_TYPE_HASIMAGESCHILD, null, IConstants.STATUS_OFF,null);
			
			conn.commit();
			error = "添加成功！";
			
		}catch (Exception e) {
			if(conn!=null){
				conn.rollback();
			}
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			if(conn != null){
				conn.close();
			}
			
			map.put("returnId", returnId);
			map.put("error", error);
		}
		
		return map;
	}
	
	private Map<String,Object> checkProduct(String name,long categoryId,String image,String url,String wapUrl,String details,int sortIndex,int status,String seoTitle,String seoKeywords,String seoDescription,String parameters,
			String content,int isShow,List<Map<String,Object>> productParamenterList,boolean boolCis){
		Map<String,Object> map = new HashMap<String, Object>();
		long returnId = -1;
		String error = "验证失败！";
		
		int i = 0;
		String[] cis;
		long parameterId ;
		String parameterContent;
		
		Map<String,Object> parameterMap;
		
		try {
			if(StringUtils.isBlank(name)){
				error = "型号不能为空";
				return map;
			}
			if(categoryId < 0){
				error = "请选择系列";
				return map;
			}
			if(status < 0){
				error = "请选择是否显示";
				return map;
			}
			/*if(StringUtils.isBlank(content)){
				error = "简介不能为空";
				return map;
			}*/
			if (isShow == 1) {
				if (StringUtils.isBlank(url)) {
					error = "购买链接不能为空";
					return map;
				}
				if (StringUtils.isBlank(wapUrl)) {
					error = "手机购买链接不能为空";
					return map;
				}
			}
			if(StringUtils.isBlank(image)){
				error = "请上传型号图片";
				return map;
			}
			if(StringUtils.isBlank(details)){
				error = "请输入详细介绍";
				return map;
			}
			if(boolCis){
				/*
				if(StringUtils.isBlank(parameters)){
					error = "请填写参数内容！";
					return map;
				}*/
				
				String[] parameter = parameters.split("ɑ");
				int parameterLength = parameter.length;
				/*
				if(parameter==null||parameterLength<=0){
					error = "请填写参数内容！";
					return map;
				}*/
				if(parameterLength == 1){
					cis = parameter[0].split("ｒ");
					parameterId = Convert.strToLong(cis[0], -1);
					parameterContent = cis[0];
					parameterMap = new HashMap<String, Object>();
					
					parameterMap.put("parameterId", parameterId);
					parameterMap.put("content", parameterContent);
					
					productParamenterList.add(parameterMap);
					
					cis = null;
				}
				else if(parameterLength > 1){
					for(;i<parameterLength;i++){
						cis = parameter[i].split("ｒ");
						/*
						if(cis.length!=2){
							error = "序号是"+(i+1)+"的参数不正确！";
							return map;
							
						}
						*/
						parameterId = Convert.strToLong(cis[0], -1);
						/*
						if(parameterId<=0){
							error = "数据错误,请刷新页面后再添加！";
							return map;
						}
						*/
						parameterContent = cis[1];
						/*
						if(StringUtils.isBlank(parameterContent)){
							error = "请填写序号是"+(i+1)+"的内容！";
							return map;
							
						}
						*/
						parameterMap = new HashMap<String, Object>();
						
						parameterMap.put("parameterId", parameterId);
						parameterMap.put("content", parameterContent);
						
						productParamenterList.add(parameterMap);
						
						cis = null;
					}
				}
			}
			
			returnId = 1;
			error = "验证通过！";
			
			return map;
		} catch (Exception e) {
			returnId = -1;
			return map;
		}finally{
			map.put("returnId", returnId);
			map.put("error", error);
		}
	}
	
	public Map<String,Object> updateProduct(long id,String name,long categoryId,String image,String url,String wapUrl,String details,int sortIndex,int status,String seoTitle,String seoKeywords,String seoDescription,String content,int isShow) throws Exception{
		Connection conn = null;
		
		long returnId = -1;
		String error = "修改失败";
		
		Map<String,Object> map = new HashMap<String, Object>();
		try{
			//boolCis:是否开启校验产品颜色库存信息
			Map<String,Object> returnMap = checkProduct(name, categoryId, image, url, wapUrl, details, sortIndex, status, seoTitle, seoKeywords, seoDescription,null,content,isShow, null, false);
			
			returnId = ((Long)returnMap.get("returnId")); 
			if(returnId <= 0){
				error = (String)returnMap.get("error");
				
				return map;
				
			}
			
			conn = MySQL.getConnection();
			
			returnId = productDao.updateProduct(conn, id, name, categoryId, image, url, wapUrl, details, sortIndex, status, seoTitle, seoKeywords, seoDescription,content,isShow);
			
			if(returnId < 0){
				conn.rollback();
				return map;
			}
			
			conn.commit();
			error = "修改成功！";
		}catch (Exception e) {
			if(conn!=null){
				conn.rollback();
			}
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			if(conn != null){
				conn.close();
			}
			
			map.put("returnId", returnId);
			map.put("error", error);
		}
		
		return map;
	}
	
	public long deleteProduct(String ids) throws Exception{
		Connection conn = MySQL.getConnection();
		
		long returnId = -1;
		try{
			returnId = productDao.deleteProduct(conn, ids);
			if(returnId < 0){
				conn.rollback();
				return returnId;
			}
			returnId = MySQL.executeNonQuery(conn, "delete from t_product_parameter where productId in("+ids+")");
			
			if(returnId < 0){
				conn.rollback();
				return returnId;
			}
			
			returnId = MySQL.executeNonQuery(conn, "delete from t_product_detail where productId in("+ids+")");
			
			if(returnId < 0){
				conn.rollback();
				return returnId;
			}
			
			conn.commit();
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return returnId;
	}
	
	public Map<String,String> queryProductById(long id) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		Map<String,String> map = new HashMap<String, String>();
		try{
			map = productDao.queryProductById(conn, id);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return map;
	}

	public Map<String,String> queryProductCategoryById(long id) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		Map<String,String> map = new HashMap<String, String>();
		try{
			map = productDao.queryProductCategoryById(conn, id);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return map;
	}
	
	public List<Map<String,Object>> queryProductAll(String fieldList,String condition,String order) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		try{
			list = productDao.queryProductAll(conn, fieldList, condition, order);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return list;
	}
	
	public List<Map<String,Object>> queryProductListFour(Integer status,Long categoryId) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		
		StringBuffer condition = new StringBuffer();
		
		condition.append("where 1=1");
		
		if(status!= null&&status > 0){
			condition.append(" and status="+status);
		}
		
		if(categoryId!= null&&categoryId > 0){
			condition.append(" and categoryId="+categoryId);
		}
		
		
		try{
			DataSet ds = MySQL.executeQuery(conn, "select * from t_product "+condition.toString()+" ORDER BY sortIndex,addTime asc LIMIT 4");
			ds.tables.get(0).rows.genRowsMap();
			
			list =  ds.tables.get(0).rows.rowsMap;
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return list;
	}

	public List<Map<String,Object>> queryProductListMore(Integer status,Long categoryId) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		
		StringBuffer condition = new StringBuffer();
		
		condition.append("where 1=1");
		
		if(status!= null&&status > 0){
			condition.append(" and status="+status);
		}

		if(categoryId!= null&&categoryId > 0){
			condition.append(" and categoryId="+categoryId);
		}
		
		
		try{
			DataSet ds = MySQL.executeQuery(conn, "select count(*) as count from t_product "+condition.toString());
			Long count = Convert.strToLong(BeanMapUtils.dataSetToMap(ds).get("count"), 1);
			ds = MySQL.executeQuery(conn, "select * from t_product "+condition.toString()+" ORDER BY sortIndex,addTime asc LIMIT 4,"+count);
			ds.tables.get(0).rows.genRowsMap();
			
			list =  ds.tables.get(0).rows.rowsMap;
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return list;
	}
	
	/**
	 * 根据系列ID查询产品
	 * @param categoryId
	 * @param status
	 * @return
	 * @throws Exception
	 */
	public void queryProductCompare(PageBean<Map<String,Object>> pageBean,Long categoryId,Integer status) throws Exception{
		Connection conn = connectionManager.getConnection();
		
//		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		
		StringBuffer condition = new StringBuffer();
//		condition.append("1=1");
		if(categoryId != null&& categoryId > 0){
			condition.append(" and categoryId = "+categoryId);
		}
		if(status != null&& status > 0){
			condition.append(" and status = "+status);
		}
		
		try{
			dataPage(conn, pageBean, "v_t_product_category", "id,name,categoryId,image,categoryName,url", "order by sortIndex asc", condition.toString());
			//list = productDao.queryProductList(conn, "id,name,categoryId,image,categoryName,url", condition.toString(), " addTime desc");
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
//		return list;
	}
	
	public void queryProductPage(PageBean<Map<String,Object>> pageBean,String fieldList,StringBuffer condition,String order,String table) throws Exception{
		Connection conn = connectionManager.getConnection();
		try{
			dataPage(conn, pageBean, table, fieldList, order, condition.toString());
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
	}

	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

	public void setProductParameterDao(ProductParameterDao productParameterDao) {
		this.productParameterDao = productParameterDao;
	}

	public void setProductDetailDao(ProductDetailDao productDetailDao) {
		this.productDetailDao = productDetailDao;
	}
	
}
