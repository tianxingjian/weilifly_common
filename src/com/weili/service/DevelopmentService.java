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
import com.weili.dao.DevelopmentDao;

public class DevelopmentService extends BaseService {
	
	public static Log log = LogFactory.getLog(DevelopmentService.class);
	
	private DevelopmentDao developmentDao;

	public Map<String,Object> addDevelopment(String title,String content,Integer status,Integer sortIndex,String seoTitle,String seoKeywords,String seoDescription) throws Exception{
		Connection conn = null;
		
		long returnId = -1;
		String error = "添加失败";
		
		Map<String,Object> map = new HashMap<String, Object>();
		try{
			Map<String,Object> returnMap = checkDevelopment(title, content, status, sortIndex, seoTitle, seoKeywords, seoDescription);
			returnId = ((Long)returnMap.get("returnId")); 
			if(returnId <= 0){
				error = (String)returnMap.get("error");
				
				return map;
				
			}
			conn = MySQL.getConnection();
			returnId = developmentDao.addDevelopment(conn, title, content, status, sortIndex, seoTitle, seoKeywords, seoDescription);
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
	
	private Map<String,Object> checkDevelopment(String title,String content,Integer status,Integer sortIndex,String seoTitle,String seoKeywords,String seoDescription){
		Map<String,Object> map = new HashMap<String, Object>();
		long returnId = -1;
		String error = "验证失败！";
		
		try {
			if(StringUtils.isBlank(title)){
				error = "标题不能为空";
				return map;
			}
			if(sortIndex < 0){
				error = "排序格式错误";
				return map;
			}
			if(status == null||status < 0){
				error = "请选择是否显示";
				return map;
			}
			if(StringUtils.isBlank(content)){
				error = "请输入内容";
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
	
	public Map<String,Object> updateDevelopment(long id,String title,String content,Integer status,Integer sortIndex,String seoTitle,String seoKeywords,String seoDescription) throws Exception{
		Connection conn = null;
		
		long returnId = -1;
		String error = "修改失败";
		
		Map<String,Object> map = new HashMap<String, Object>();
		try{
			Map<String,Object> returnMap = checkDevelopment(title, content, status, sortIndex, seoTitle, seoKeywords, seoDescription);
			returnId = ((Long)returnMap.get("returnId")); 
			if(returnId <= 0){
				error = (String)returnMap.get("error");
				
				return map;
				
			}
			conn = MySQL.getConnection();
			returnId = developmentDao.updateDevelopment(conn, id, title, content, status, sortIndex, seoTitle, seoKeywords, seoDescription);
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
	
	public long deleteDevelopment(String ids) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		long returnId = -1;
		try{
			returnId = developmentDao.deleteDevelopment(conn, ids);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return returnId;
	}
	
	public Map<String,String> queryDevelopmentById(long id) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		Map<String,String> map = new HashMap<String, String>();
		try{
			map = developmentDao.queryDevelopmentById(conn, id);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return map;
	}
	
	public List<Map<String,Object>> queryDevelopmentAll(String fieldList,String condition,String order) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		try{
			list = developmentDao.queryDevelopmentAll(conn, fieldList, condition, order);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return list;
	}
	
	public void queryDevelopmentPage(PageBean<Map<String,Object>> pageBean,String fieldList,StringBuffer condition,String order,String table) throws Exception{
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

	public void setDevelopmentDao(DevelopmentDao developmentDao) {
		this.developmentDao = developmentDao;
	}
	
}
