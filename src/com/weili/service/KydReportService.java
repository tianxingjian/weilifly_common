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
import com.weili.dao.KydReportDao;

public class KydReportService extends BaseService {
	
	public static Log log = LogFactory.getLog(KydReportService.class);
	
	private KydReportDao kydReportDao;

	public Map<String,Object> addKydReport(String title,String source,Long views,String image,String path,String content,Integer status,Integer sortIndex,String seoTitle,String seoKeywords,String seoDescription,String addTime) throws Exception{
		Connection conn = null;
		
		long returnId = -1;
		String error = "添加失败";
		
		Map<String,Object> map = new HashMap<String, Object>();
		try{
			Map<String,Object> returnMap = checkKydReport(title, source, views, image,path, content, status, sortIndex, seoTitle, seoKeywords, seoDescription,addTime);
			returnId = ((Long)returnMap.get("returnId")); 
			if(returnId <= 0){
				error = (String)returnMap.get("error");
				
				return map;
				
			}
			conn = MySQL.getConnection();
			returnId = kydReportDao.addKydReport(conn, title, source, views,image, path, content, status, sortIndex, seoTitle, seoKeywords, seoDescription,addTime);
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
	
	private Map<String,Object> checkKydReport(String title,String source,Long views,String image,String path,String content,Integer status,Integer sortIndex,String seoTitle,String seoKeywords,String seoDescription,String addTime){
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
			if(StringUtils.isBlank(content)){
				error = "请输入内容";
				return map;
			}
			if(StringUtils.isBlank(addTime)){
				error = "添加时间不能为空";
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
	
	public Map<String,Object> updateKydReport(long id,String title,String source,Long views,String image,String path,String content,Integer status,Integer sortIndex,String seoTitle,String seoKeywords,String seoDescription,String addTime) throws Exception{
		Connection conn = null;
		
		long returnId = -1;
		String error = "修改失败";
		
		Map<String,Object> map = new HashMap<String, Object>();
		try{
			Map<String,Object> returnMap = checkKydReport(title, source, views,image, path, content, status, sortIndex, seoTitle, seoKeywords, seoDescription,addTime);
			returnId = ((Long)returnMap.get("returnId")); 
			if(returnId <= 0){
				error = (String)returnMap.get("error");
				
				return map;
				
			}
			conn = MySQL.getConnection();
			returnId = kydReportDao.updateKydReport(conn, id, title, source, views,image, path, content, status, sortIndex, seoTitle, seoKeywords, seoDescription,addTime);
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
	
	public long deleteKydReport(String ids) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		long returnId = -1;
		try{
			returnId = kydReportDao.deleteKydReport(conn, ids);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return returnId;
	}
	
	public Map<String,String> queryKydReportById(long id) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		Map<String,String> map = new HashMap<String, String>();
		try{
			map = kydReportDao.queryKydReportById(conn, id);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return map;
	}
	
	public long addReportViews(Long id) throws Exception{
		Connection conn = MySQL.getConnection();
		long returnId = -1;
		try {
			returnId = MySQL.executeNonQuery(conn, "update t_kyd_report set views = views+1 where id = "+id);
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
	
	public List<Map<String,Object>> queryKydReportAll(String fieldList,String condition,String order) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		try{
			list = kydReportDao.queryKydReportAll(conn, fieldList, condition, order);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return list;
	}
	
	public void queryKydReportPage(PageBean<Map<String,Object>> pageBean,String fieldList,StringBuffer condition,String order,String table) throws Exception{
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
	
	

	/**
	 * 搜索微力科技报道列表
	 * @param keywords
	 * @return
	 * @throws Exception
	 */
	public List<Map<String,Object>> queryKydReportList(String keywords) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		
		StringBuffer condition = new StringBuffer();
		
		condition.append("1=1 and status=1");
		
		if(StringUtils.isNotBlank(keywords)){
			condition.append(" and title like CONCAT('%','"+keywords+"','%')");
		}
		try{
			list = kydReportDao.queryKydReportAll(conn, "*", condition.toString(), " addTime desc");
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		return list;
	}
	
	
	
	

	public void setKydReportDao(KydReportDao kydReportDao) {
		this.kydReportDao = kydReportDao;
	}

}
