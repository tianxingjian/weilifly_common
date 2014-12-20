package com.weili.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import com.shove.base.BaseService;
import com.shove.vo.PageBean;
import com.weili.dao.WebDistributeTypeDao;

public class WebDistributeTypeService extends BaseService {

public static Log log = LogFactory.getLog(WebDistributeTypeService.class);
	
	private WebDistributeTypeDao webDistributeTypeDao;

	public long addWebDistributeType(String title,int sortIndex,int status) throws Exception{
		Connection conn = connectionManager.getConnection();
		long webDistributeTypeId = -1;
		try{
			webDistributeTypeId = webDistributeTypeDao.addWebDistributeType(conn, title, sortIndex, status);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return webDistributeTypeId;
	}
	
	public long updateWebDistributeType(long id,String title,int sortIndex,int status) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		long returnId = -1;
		try{
			returnId = webDistributeTypeDao.updateWebDistributeType(conn, id, title, sortIndex, status);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return returnId;
	}
	
	public long deleteWebDistributeType(String ids) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		long returnId = -1;
		try{
			returnId = webDistributeTypeDao.deleteWebDistributeType(conn, ids);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return returnId;
	}
	
	public Map<String,String> queryWebDistributeTypeById(long id) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		Map<String,String> map = new HashMap<String, String>();
		try{
			map = webDistributeTypeDao.queryWebDistributeTypeById(conn, id);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return map;
	}
	
	public List<Map<String,Object>> queryWebDistributeTypeAll(String fieldList,String condition,String order) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		try{
			list = webDistributeTypeDao.queryWebDistributeTypeAll(conn, fieldList, condition, order);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return list;
	}
	
	public void queryWebDistributeTypePage(PageBean<Map<String,Object>> pageBean,String fieldList,String condition,String order,String table) throws Exception{
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

	public void setWebDistributeTypeDao(WebDistributeTypeDao webDistributeTypeDao) {
		this.webDistributeTypeDao = webDistributeTypeDao;
	}
	
}
