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
import com.kuaiyidian.dao.AttributeDao;
import com.kuaiyidian.database.Dao;
import com.kuaiyidian.database.Dao.Views;
import com.kuaiyidian.database.Dao.Views.v_t_attribute_materials;
import com.shove.base.BaseService;
import com.shove.data.DataSet;
import com.shove.vo.PageBean;

public class AttributeService extends BaseService {
	
	public static Log log = LogFactory.getLog(AttributeService.class);
	
	private AttributeDao attributeDao;

	public long addAttribute(String name,Long parentId,Integer sortIndex,Integer status,String productIds) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		long returnId = -1;
		try{
			returnId = attributeDao.addAttribute(conn, name, parentId, sortIndex, status,productIds);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return returnId;
	}
	
	public long updateAttribute(long id,String name,Long parentId,Integer sortIndex,Integer status,String productIds) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		long returnId = -1;
		try{
			returnId = attributeDao.updateAttribute(conn, id, name, parentId, sortIndex, status,productIds);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return returnId;
	}
	
	public long deleteAttribute(String ids) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		long returnId = -1;
		try{
			returnId = attributeDao.deleteAttribute(conn, ids);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return returnId;
	}
	
	public Map<String,String> queryAttributeById(long id) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		Map<String,String> map = new HashMap<String, String>();
		try{
			map = attributeDao.queryAttributeById(conn, id);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return map;
	}
	
	public List<Map<String,Object>> queryAttributeAll(String fieldList,String condition,String order) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		try{
			list = attributeDao.queryAttributeAll(conn, fieldList, condition, order);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return list;
	}

	public List<Map<String,Object>> queryAttributes(Integer status) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		
		StringBuffer condition = new StringBuffer();
		
		condition.append(" 1 = 1");
		
		condition.append(" and status = "+status);
		
		try{
			list = attributeDao.queryAttributeAll(conn, "*", condition.toString(), "sortIndex asc");
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return list;
	}
	
	public void queryAttributePage(PageBean<Map<String,Object>> pageBean,String fieldList,String condition,String order,String table) throws Exception{
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
	 * 查询资料父属性
	 * @param conn
	 * @param materialsIds
	 * @param status
	 * @return
	 * @throws Exception
	 */
	public List<Map<String,Object>> queryAttributeChild(String materialsIds,Integer status) throws Exception{
		
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		try{
			list = attributeDao.queryAttributeParent(conn,materialsIds, status);//查询父属性
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
	 * 查询资料子属性
	 * @param conn
	 * @param materialsIds
	 * @param status
	 * @return
	 * @throws Exception
	 */
	public List<Map<String,Object>> queryAttributeParent(String materialsIds,Integer status) throws Exception{
		
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		try{
			list = attributeDao.queryAttributeChild(conn,materialsIds, status);//查询父属性
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return list;
	}

	public void setAttributeDao(AttributeDao attributeDao) {
		this.attributeDao = attributeDao;
	}
	
}
