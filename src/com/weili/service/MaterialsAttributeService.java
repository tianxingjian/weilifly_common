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
import com.weili.dao.AttributeDao;
import com.weili.dao.MaterialsAttributeDao;

public class MaterialsAttributeService extends BaseService {
	
	public static Log log = LogFactory.getLog(MaterialsAttributeService.class);
	
	private MaterialsAttributeDao materialsAttributeDao;
	private AttributeDao attributeDao;

	public long addMaterialsAttribute(List<Map<String,Object>> materialsAttitudeList,Long materialsId) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		long returnId = -1;
		try{
			for(Map<String,Object> mMap:materialsAttitudeList){
				returnId = materialsAttributeDao.addMaterialsAttribute(conn, (Long)mMap.get("attributeId"), materialsId);
				if(returnId < 0){
					conn.rollback();
					return returnId;
				}
			}
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return returnId;
	}
	
	public long updateMaterialsAttribute(long id,Long attributeId,Long materialsId) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		long returnId = -1;
		try{
			returnId = materialsAttributeDao.updateMaterialsAttribute(conn, id,attributeId, materialsId);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return returnId;
	}
	
	public long deleteMaterialsAttribute(String ids) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		long returnId = -1;
		try{
			returnId = materialsAttributeDao.deleteMaterialsAttribute(conn, ids);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return returnId;
	}
	
	public Map<String,String> queryMaterialsAttributeById(long id) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		Map<String,String> map = new HashMap<String, String>();
		try{
			map = materialsAttributeDao.queryMaterialsAttributeById(conn, id);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return map;
	}
	
	public List<Map<String,Object>> queryMaterialsAttributeAll(Long materialsId) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		try{
			list = materialsAttributeDao.queryMaterialsAttributeAll(conn,materialsId);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return list;
	}

	public List<Map<String,Object>> queryMaterialsAttributes(String ids) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		try{
			List<Map<String,Object>> attributeList = new ArrayList<Map<String,Object>>();
			if(StringUtils.isNotBlank(ids)){
				attributeList = attributeDao.queryAttributes(conn, ids);
			}
			
			StringBuffer buffer = new StringBuffer();
			for(Map<String,Object> map:attributeList){
				buffer.append(map.get("parentId")+",");
			}
			String idStr = buffer.toString();
			if(StringUtils.isNotBlank(idStr)){
				idStr = idStr.substring(0, idStr.length()-1);
			}
			
			if(StringUtils.isNotBlank(idStr)){
				list = attributeDao.queryMaterialsAttributes(conn,idStr);
			}else{
				list = attributeDao.queryAttributeAll(conn, "*", "", "sortIndex asc");
			}
			
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return list;
	}
	
	public List<Map<String,Object>> queryAttributesByParentId(String ids) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		try{
			list = attributeDao.queryAttributesByParentId(conn,ids);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return list;
	}

	public List<Map<String,Object>> queryAttributeChild(String materialsIds,Integer status) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		
		try{
			list = attributeDao.queryAttributeChild(conn, materialsIds, status);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return list;
	}

	public List<Map<String,Object>> queryAttributeParent(String materialsIds,Integer status) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		
		try{
			list = attributeDao.queryAttributeParent(conn, materialsIds, status);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return list;
	}
	
	public void setMaterialsAttributeDao(MaterialsAttributeDao materialsAttributeDao) {
		this.materialsAttributeDao = materialsAttributeDao;
	}

	public void setAttributeDao(AttributeDao attributeDao) {
		this.attributeDao = attributeDao;
	}
	
}
