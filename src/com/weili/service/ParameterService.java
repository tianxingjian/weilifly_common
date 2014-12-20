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
import com.weili.dao.ParameterDao;

public class ParameterService extends BaseService {
	
	public static Log log = LogFactory.getLog(ParameterService.class);
	
	private ParameterDao parameterDao;

	public long addParameter(String name,int sortIndex,int status) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		long colorId = -1;
		try{
			colorId = parameterDao.addParameter(conn, name, sortIndex,status);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return colorId;
	}
	
	public long updateParameter(long id,String name,Integer sortIndex,Integer status) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		long returnId = -1;
		try{
			returnId = parameterDao.updateParameter(conn, id, name, sortIndex,status);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return returnId;
	}
	
	public long deleteParameter(String ids) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		long returnId = -1;
		try{
			returnId = parameterDao.deleteParameter(conn, ids);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return returnId;
	}
	
	public Map<String,String> queryParameterById(long id) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		Map<String,String> map = new HashMap<String, String>();
		try{
			map = parameterDao.queryParameterById(conn, id);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return map;
	}
	
	public List<Map<String,Object>> queryParameterAll(String fieldList,String condition,String order) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		try{
			list = parameterDao.queryParameterAll(conn, fieldList, condition, order);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return list;
	}

	public List<Map<String,Object>> queryParameterList(Integer status) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		
		StringBuffer condition = new StringBuffer();
		condition.append("1=1");
		if(status != null&&status > 0){
			condition.append(" and status = "+status);
		}
		
		try{
			list = parameterDao.queryParameterAll(conn, "*", condition.toString(), "sortIndex asc");
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return list;
	}
	
	public void queryParameterPage(PageBean<Map<String,Object>> pageBean) throws Exception{
		StringBuffer condition = new StringBuffer();
		
		Connection conn = connectionManager.getConnection();
		try{
			dataPage(conn, pageBean, "t_parameter ", " * ", "", condition.toString());
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
	}

	public void setParameterDao(ParameterDao parameterDao) {
		this.parameterDao = parameterDao;
	}

}
