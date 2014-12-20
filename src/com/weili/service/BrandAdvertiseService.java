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
import com.shove.data.dao.MySQL;
import com.shove.vo.PageBean;
import com.weili.dao.BrandAdvertiseDao;

public class BrandAdvertiseService extends BaseService {
	
	public static Log log = LogFactory.getLog(BrandAdvertiseService.class);
	
	private BrandAdvertiseDao brandAdvertiseDao;

	public Map<String,Object> addBrandAdvertise(String title,Long views,String image,String path,Integer status,Integer sortIndex,String seoTitle,String seoKeywords,String seoDescription) throws Exception{
		Connection conn = null;
		
		long returnId = -1;
		String error = "添加失败";
		
		Map<String,Object> map = new HashMap<String, Object>();
		try{
			Map<String,Object> returnMap = checkBrandAdvertise(title, views, image,path, status, sortIndex, seoTitle, seoKeywords, seoDescription);
			returnId = ((Long)returnMap.get("returnId")); 
			if(returnId <= 0){
				error = (String)returnMap.get("error");
				
				return map;
				
			}
			conn = MySQL.getConnection();
			returnId = brandAdvertiseDao.addBrandAdvertise(conn, title, views,image, path, status, sortIndex, seoTitle, seoKeywords, seoDescription);
			if(returnId <= 0){
				conn.rollback();
				return map;
			}
			
			conn.commit();
			error = "添加成功";
		}catch (Exception e) {
			if(conn != null){
				conn.close();
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
	
	private Map<String,Object> checkBrandAdvertise(String title,Long views,String image,String path,Integer status,Integer sortIndex,String seoTitle,String seoKeywords,String seoDescription){
		Map<String,Object> map = new HashMap<String, Object>();
		long returnId = -1;
		String error = "验证失败！";
		
		try {
			if(StringUtils.isBlank(title)){
				error = "标题不能为空";
				return map;
			}
			if(status == null||status < 0){
				error = "请选择是否显示";
				return map;
			}
			if(StringUtils.isBlank(path)){
				error = "请上传视频";
				return map;
			}
			if(StringUtils.isBlank(image)){
				error = "请上传图片";
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
	
	public Map<String,Object> updateBrandAdvertise(long id,String title,Long views,String image,String path,Integer status,Integer sortIndex,String seoTitle,String seoKeywords,String seoDescription) throws Exception{
		Connection conn = null;
		
		long returnId = -1;
		String error = "修改失败";
		
		Map<String,Object> map = new HashMap<String, Object>();
		try{
			Map<String,Object> returnMap = checkBrandAdvertise(title, views,image, path, status, sortIndex, seoTitle, seoKeywords, seoDescription);
			returnId = ((Long)returnMap.get("returnId")); 
			if(returnId <= 0){
				error = (String)returnMap.get("error");
				
				return map;
				
			}
			conn = MySQL.getConnection();
			returnId = brandAdvertiseDao.updateBrandAdvertise(conn, id, title, views,image, path, status, sortIndex, seoTitle, seoKeywords, seoDescription);
			if(returnId <= 0){
				conn.rollback();
				return map;
			}
			
			conn.commit();
			error = "修改成功";
		}catch (Exception e) {
			if(conn != null){
				conn.close();
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
	
	public long deleteBrandAdvertise(String ids) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		long returnId = -1;
		try{
			returnId = brandAdvertiseDao.deleteBrandAdvertise(conn, ids);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return returnId;
	}
	
	public Map<String,String> queryBrandAdvertiseById(long id) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		Map<String,String> map = new HashMap<String, String>();
		try{
			map = brandAdvertiseDao.queryBrandAdvertiseById(conn, id);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return map;
	}
	
	public long addAdvertiseViews(Long id) throws Exception{
		Connection conn = MySQL.getConnection();
		long returnId = -1;
		try {
			returnId = MySQL.executeNonQuery(conn, "update t_brand_advertise set views = views+1 where id = "+id);
			if(returnId < 0){
				conn.rollback();
				return returnId;
			}
			
			conn.commit();
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return returnId;
	}
	
	public List<Map<String,Object>> queryBrandAdvertiseAll(String fieldList,String condition,String order) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		try{
			list = brandAdvertiseDao.queryBrandAdvertiseAll(conn, fieldList, condition, order);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return list;
	}
	
	public void queryBrandAdvertisePage(PageBean<Map<String,Object>> pageBean,String fieldList,StringBuffer condition,String order,String table) throws Exception{
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

	public void setBrandAdvertiseDao(BrandAdvertiseDao brandAdvertiseDao) {
		this.brandAdvertiseDao = brandAdvertiseDao;
	}

}
