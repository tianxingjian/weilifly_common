package com.kuaiyidian.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.kuaiyidian.dao.UpdateProgramDao;
import com.shove.base.BaseService;
import com.shove.data.dao.MySQL;
import com.shove.vo.PageBean;

public class UpdateProgramService extends BaseService {
	
	public static Log log = LogFactory.getLog(UpdateProgramService.class);
	
	private UpdateProgramDao updateProgramDao;

	public Map<String,Object> addUpdateProgram(String name,String image,String path,Long categoryId,Long productId,Integer sortIndex,Integer status,String seoTitle,String seoKeywords,String seoDescription) throws Exception{
		Connection conn = null;
		
		long returnId = -1;
		String error = "添加失败";
		
		Map<String,Object> map = new HashMap<String, Object>();
		try{
			Map<String,Object> returnMap = checkUpdateProgram(name, image, path, categoryId, productId, sortIndex, status, seoTitle, seoKeywords, seoDescription);
			returnId = ((Long)returnMap.get("returnId")); 
			if(returnId <= 0){
				error = (String)returnMap.get("error");
				
				return map;
				
			}
			conn = MySQL.getConnection();
			returnId = updateProgramDao.addUpdateProgram(conn, name, image, path, categoryId, productId, sortIndex, status, seoTitle, seoKeywords, seoDescription);
			if(returnId < 0){
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
	
	private Map<String,Object> checkUpdateProgram(String name,String image,String path,Long categoryId,Long productId,Integer sortIndex,Integer status,String seoTitle,String seoKeywords,String seoDescription){
		Map<String,Object> map = new HashMap<String, Object>();
		long returnId = -1;
		String error = "验证失败！";
		
		try {
			if(StringUtils.isBlank(name)){
				error = "名称不能为空";
				return map;
			}
			if(categoryId == null||categoryId < 0){
				error = "请选择系列";
				return map;
			}
			if(status == null||status < 0){
				error = "请选择是否显示";
				return map;
			}
			if(StringUtils.isBlank(path)){
				error = "请上传资料";
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
	
	public Map<String,Object> updateUpdateProgram(long id,String name,String image,String path,Long categoryId,Long productId,Integer sortIndex,Integer status,String seoTitle,String seoKeywords,String seoDescription) throws Exception{
		Connection conn = null;
		
		long returnId = -1;
		String error = "修改失败";
		
		Map<String,Object> map = new HashMap<String, Object>();
		try{
			Map<String,Object> returnMap = checkUpdateProgram(name, image, path, categoryId, productId, sortIndex, status, seoTitle, seoKeywords, seoDescription);
			returnId = ((Long)returnMap.get("returnId")); 
			if(returnId <= 0){
				error = (String)returnMap.get("error");
				
				return map;
				
			}
			conn = MySQL.getConnection();
			returnId = updateProgramDao.updateUpdateProgram(conn,id, name, image, path, categoryId, productId, sortIndex, status, seoTitle, seoKeywords, seoDescription);
			if(returnId < 0){
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
	
	public long deleteUpdateProgram(String ids) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		long returnId = -1;
		try{
			returnId = updateProgramDao.deleteUpdateProgram(conn, ids);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return returnId;
	}
	
	public Map<String,String> queryUpdateProgramById(long id) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		Map<String,String> map = new HashMap<String, String>();
		try{
			map = updateProgramDao.queryUpdateProgramById(conn, id);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return map;
	}
	
	public List<Map<String,Object>> queryUpdateProgramAll(String fieldList,String condition,String order) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		try{
			list = updateProgramDao.queryUpdateProgramAll(conn, fieldList, condition, order);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return list;
	}
	
	public void queryUpdateProgramPage(PageBean<Map<String,Object>> pageBean,String fieldList,StringBuffer condition,String order,String table) throws Exception{
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

	public void queryUpdateProgram(PageBean<Map<String,Object>> pageBean,Integer status,Long categoryId) throws Exception{
		Connection conn = connectionManager.getConnection();
		StringBuffer condition = new StringBuffer();
		if(status != null&&status > 0){
			condition.append(" and `status` = "+status);
		}
		if(categoryId != null&&categoryId > 0){
			condition.append(" and `categoryId` = "+categoryId);
		}
		try{
			dataPage(conn, pageBean, "t_update_program", "*", "order by addTime desc", condition.toString());
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
	}

	/**
	 * 搜索升级程序列表
	 * @param keywords
	 * @return
	 * @throws Exception
	 */
	public List<Map<String,Object>> queryUpdateProgramList(String keywords) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		
		StringBuffer condition = new StringBuffer();
		
		condition.append("1=1 and status = 1");
		
		if(StringUtils.isNotBlank(keywords)){
			condition.append(" and name like CONCAT('%','"+keywords+"','%')");
		}
		try{
			list = updateProgramDao.queryUpdateProgramAll(conn, "*", condition.toString(), " addTime desc");
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		return list;
	}
	
	
	
	public void setUpdateProgramDao(UpdateProgramDao updateProgramDao) {
		this.updateProgramDao = updateProgramDao;
	}
	
}
