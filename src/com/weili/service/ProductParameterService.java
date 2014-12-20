package com.weili.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

//import com.weili.dao.DemoDao;
import com.shove.base.BaseService;
import com.shove.vo.PageBean;
import com.weili.dao.ParameterDao;
import com.weili.dao.ProductParameterDao;

public class ProductParameterService extends BaseService {
	
	public static Log log = LogFactory.getLog(ProductParameterService.class);
	
	private ProductParameterDao productParameterDao;
	private ParameterDao parameterDao;

	public long addProductParameter(Long productId,Long parameterId,String content) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		long returnId = -1;
		try{
			returnId = productParameterDao.addProductParameter(conn,productId, parameterId, content);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return returnId;
	}
	
	public long updateProductParameter(long id,Long productId,Long parameterId,String content) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		long returnId = -1;
		try{
			returnId = productParameterDao.updateProductParameter(conn, id, productId, parameterId, content);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return returnId;
	}
	
	public long deleteProductParameter(String ids) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		long returnId = -1;
		try{
			returnId = productParameterDao.deleteProductParameter(conn, ids);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return returnId;
	}
	
	public Map<String,String> queryProductParameterById(long id) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		Map<String,String> map = new HashMap<String, String>();
		try{
			map = productParameterDao.queryProductParameterById(conn, id);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return map;
	}
	
	public List<Map<String,Object>> queryProductParameterAll(Long productId) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		try{
			list = productParameterDao.queryProductParameterAll(conn,productId);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return list;
	}
	
	public List<Map<String,Object>> queryProductParameterList() throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		try{
			list = productParameterDao.queryProductParameterList(conn);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return list;
	}

	public List<Map<String,Object>> queryProductParameters(String ids) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		try{
			list = parameterDao.queryProductParameters(conn,ids);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return list;
	}
	
	public void setProductParameterDao(ProductParameterDao productParameterDao) {
		this.productParameterDao = productParameterDao;
	}

	public void setParameterDao(ParameterDao parameterDao) {
		this.parameterDao = parameterDao;
	}
	
}
