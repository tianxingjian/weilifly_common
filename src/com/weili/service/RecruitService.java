package com.weili.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.ObjectUtils.Null;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.shove.base.BaseService;
import com.shove.vo.PageBean;
import com.weili.dao.RecruitDao;

public class RecruitService extends BaseService {
	
public static Log log = LogFactory.getLog(RecruitService.class);
	
	private RecruitDao recruitDao;

	public long addRecruit(String name,int type,String content,int sort,int status,String seoTitle,String seoKeywords,String seoDescription) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		long recruitId = -1;
		try{
			recruitId = recruitDao.addRecruit(conn, name, type, content, sort, status, seoTitle, seoKeywords, seoDescription);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return recruitId;
	}
	
	public long updateRecruit(long id,String name,int type,String content,int sort,int status,String seoTitle,String seoKeywords,String seoDescription) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		long returnId = -1;
		try{
			returnId = recruitDao.updateRecruit(conn, id, name, type, content, sort, status, seoTitle, seoKeywords, seoDescription);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return returnId;
	}
	
	public long deleteRecruit(String ids) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		long returnId = -1;
		try{
			returnId = recruitDao.deleteRecruit(conn, ids);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return returnId;
	}
	
	public Map<String,String> queryRecruitById(long id) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		Map<String,String> map = new HashMap<String, String>();
		try{
			map = recruitDao.queryRecruitById(conn, id);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return map;
	}
	
	
	public Map<String,String> queryRecruitByType(int type) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		Map<String,String> map = new HashMap<String, String>();
		try{
			map = recruitDao.queryRecruitByType(conn, type);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return map;
	}
	
	
	
	
	public List<Map<String,Object>> queryRecruitAll(String fieldList,String condition,String order) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		try{
			list = recruitDao.queryRecruitAll(conn, fieldList, condition, order);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		return list;
	}
	
	public void queryRecruitPage(PageBean<Map<String,Object>> pageBean,String fieldList,StringBuffer condition,String order,String table) throws Exception{
		Connection conn = connectionManager.getConnection();
		try{
			dataPage(conn, pageBean, table, fieldList, order, condition.toString());
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			if(conn!=null){
				conn.close();
			}
			
		}		
	}
	
	

	/**
	 * 搜索人才招聘列表
	 * @param keywords
	 * @return
	 * @throws Exception
	 */
	public List<Map<String,Object>> queryRecruitList(String keywords) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		
		StringBuffer condition = new StringBuffer();
		
		condition.append("1=1 and status = 1");
		
		if(StringUtils.isNotBlank(keywords)){
			condition.append(" and name like CONCAT('%','"+keywords+"','%') or content like CONCAT('%','"+keywords+"','%')");
		}
		try{
			list = recruitDao.queryRecruitAll(conn, "*", condition.toString(), " addTime desc");
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		return list;
	}
	
	

	public void setRecruitDao(RecruitDao recruitDao) {
		this.recruitDao = recruitDao;
	}
	
	
}
