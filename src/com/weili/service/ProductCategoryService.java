package com.weili.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.shove.base.BaseService;
import com.shove.vo.PageBean;
import com.weili.dao.ProductCategoryDao;

public class ProductCategoryService extends BaseService {
	
	public static Log log = LogFactory.getLog(ProductCategoryService.class);
	
	private ProductCategoryDao productCategoryDao;

	public Map<String,Object> addProductCategory(String name,String image,String introduction,String backImage,String url,int status,int sortIndex,int isShow, String seoTitle,String seoKeywords,String seoDescription) throws Exception{
		Connection conn = null;
		
		long returnId = -1;
		String error = "添加失败";
		
		Map<String,Object> map = new HashMap<String, Object>();
		
		try{
			Map<String,Object> returnMap = checkProductCategory(name, image, introduction, backImage, url, status, sortIndex,isShow, seoTitle, seoKeywords, seoDescription);
			returnId = ((Long)returnMap.get("returnId")); 
			if(returnId <= 0){
				error = (String)returnMap.get("error");
				
				return map;
				
			}
			conn = connectionManager.getConnection();
			returnId = productCategoryDao.addProductCategory(conn, name, image, introduction, backImage, url, status, sortIndex,isShow, seoTitle, seoKeywords, seoDescription);
			
			error = "添加成功";
		}catch (Exception e) {
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
	
	private Map<String,Object> checkProductCategory(String name,String image,String introduction,String backImage,String url,int status,int sortIndex,int isShow,String seoTitle,String seoKeywords,String seoDescription){
		Map<String,Object> map = new HashMap<String, Object>();
		long returnId = -1;
		String error = "验证失败！";
		
		try {
			if(StringUtils.isBlank(name)){
				error = "系列名称不能为空";
				return map;
			}
			if(sortIndex < 0){
				error = "排序格式不正确";
				return map;
			}
			if(status < 0){
				error = "请选择是否显示";
				return map;
			}
			if(StringUtils.isBlank(url)){
				error = "讨论区链接不能为空";
				return map;
			}
			if(StringUtils.isBlank(image)){
				error = "请上传系列图片";
				return map;
			}
			if(StringUtils.isBlank(backImage)){
				error = "请上传背景图片";
				return map;
			}
			if(StringUtils.isBlank(introduction)){
				error = "简介不能为空";
				return map;
			}
			if(isShow < 0){
				error="请选择是否在下载页面显示";
				return map;
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
	
	public Map<String,Object> updateProductCategory(long id,String name,String image,String introduction,String backImage,String url,int status,int sortIndex,int isShow,String seoTitle,String seoKeywords,String seoDescription) throws Exception{
		Connection conn = null;
		
		long returnId = -1;
		String error = "修改失败";
		
		Map<String,Object> map = new HashMap<String, Object>();
		try{
			Map<String,Object> returnMap = checkProductCategory(name, image, introduction, backImage, url, status, sortIndex,isShow, seoTitle, seoKeywords, seoDescription);
			returnId = ((Long)returnMap.get("returnId")); 
			if(returnId <= 0){
				error = (String)returnMap.get("error");
				
				return map;
				
			}
			conn = connectionManager.getConnection();
			returnId = productCategoryDao.updateProductCategory(conn, id, name, image, introduction, backImage, url, status, sortIndex,isShow, seoTitle, seoKeywords, seoDescription);
			error = "修改成功";
		}catch (Exception e) {
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
	
	public long deleteProductCategory(String ids) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		long returnId = -1;
		try{
			returnId = productCategoryDao.deleteProductCategory(conn, ids);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return returnId;
	}
	
	public Map<String,String> queryProductCategoryById(long id) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		Map<String,String> map = new HashMap<String, String>();
		try{
			map = productCategoryDao.queryProductCategoryById(conn, id);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return map;
	}
	
	public List<Map<String,Object>> queryProductCategoryAll(String fieldList,String condition,String order) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		try{
			list = productCategoryDao.queryProductCategoryAll(conn, fieldList, condition, order);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return list;
	}
	
	public void queryProductCategoryPage(PageBean<Map<String,Object>> pageBean) throws Exception{
		StringBuffer condition = new StringBuffer();
		
		Connection conn = connectionManager.getConnection();
		try{
			dataPage(conn, pageBean, " t_product_category", " * ", "", condition.toString());
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
	}

	
	/**
	 * 搜索产品类型列表
	 * @param keywords
	 * @return
	 * @throws Exception
	 */
	public List<Map<String,Object>> queryProductCategoryList(String keywords) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		
		StringBuffer condition = new StringBuffer();
		
		condition.append("1=1 and status = 1");
		
		if(StringUtils.isNotBlank(keywords)){
			condition.append(" and name like CONCAT('%','"+keywords+"','%') or introduction like CONCAT('%','"+keywords+"','%')");
		}
		try{
			list = productCategoryDao.queryProductCategoryAll(conn, "*", condition.toString(), " addTime desc");
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		return list;
	}
	
	
	
	public void setProductCategoryDao(ProductCategoryDao productCategoryDao) {
		this.productCategoryDao = productCategoryDao;
	}
	
}
