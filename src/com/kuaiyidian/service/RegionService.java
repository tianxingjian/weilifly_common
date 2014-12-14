package com.kuaiyidian.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.kuaiyidian.dao.RegionDao;
import com.shove.base.BaseService;
import com.shove.data.DataException;

public class RegionService extends BaseService {
	public static Log log = LogFactory.getLog(RegionService.class);
	private RegionDao regionDao;
	
	/**
	 * 查询省市区信息
	* @Title: queryRegionList
	* @Description: TODO
	* @param regionId  地区ID
	* @param parentId  地区父ID
	* @param regionType  地区类型
	* @return
	* @throws Exception
	* @return List<Map<String,Object>>
	* @throws
	 */
	public List<Map<String, Object>> queryRegionList(Long regionId, Long parentId, Integer regionType) throws Exception{
		Connection conn = connectionManager.getConnection();
		List<Map<String, Object>> listMap = null;
		try {
			listMap = regionDao.queryRegionList(conn, regionId, parentId, regionType);
		} catch (SQLException e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} catch (DataException e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} catch(Exception e){
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally {
			conn.close();
		}
		return listMap;
	}

	/**
	 * 根据条件查找
	 * @param name 地区名
	 * @param regionType  地区类型
	 * @return
	 * @throws Exception 
	 */
	public Map<String,String> queryName(String name,Long parentId,Integer regionType) throws Exception{
		Connection conn = connectionManager.getConnection();
		Map<String,String> map = null;
		try {
			map = regionDao.queryMap(conn, name,parentId, regionType);
		} catch (SQLException e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} catch (DataException e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}catch(Exception e){
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		return map;
	}
	
	
	
	
	/**
	 * 查询
	 * @param name 名称
	 * @return
	 * @throws Exception
	 */
	public Map<String, String> queryAddId(String name) throws Exception {
		Connection conn = connectionManager.getConnection();
		Map<String,String> map = null;
		try {
			map = regionDao.queryAddId(conn, name);
		}catch (DataException e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}catch(Exception e){
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		return map;
	}
	
	
	/**
	 * 根据条件查找
	 * @param name 地区名
	 * @param regionType  地区类型
	 * @return
	 * @throws Exception 
	 */
	public Map<String,String> queryRegionById(long id ) throws Exception{
		Connection conn = connectionManager.getConnection();
		Map<String,String> map = null;
		try {
			map = regionDao.queryRegionById(conn, id);
		}catch(Exception e){
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		return map;
	}
	
	public void setRegionDao(RegionDao regionDao) {
		this.regionDao = regionDao;
	}
	
}
