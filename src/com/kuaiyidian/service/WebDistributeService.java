package com.kuaiyidian.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.kuaiyidian.dao.QuestionDao;
import com.kuaiyidian.dao.WebDistributeDao;
import com.shove.Convert;
import com.shove.base.BaseService;
import com.shove.vo.PageBean;

public class WebDistributeService extends BaseService {

	public static Log log = LogFactory.getLog(WebDistributeService.class);

	private WebDistributeDao webDistributeDao;

	public long addWebDistribute(Long type, int provinceId, int cityId,
			int areaId, String address, String storeName, String phone,
			String longitude,String latitude, int sortIndex, int status) throws Exception {
		Connection conn = connectionManager.getConnection();

		long wdId = -1;
		try {
			wdId = webDistributeDao.addWebDistribute(conn, type, provinceId,
					cityId, areaId, address, storeName, phone,longitude,latitude, sortIndex,
					status);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return wdId;
	}

	public long updateWebDistribute(long id, Long type, int provinceId,
			int cityId, int areaId, String address, String storeName,
			String phone, String longitude,String latitude, int sortIndex, int status)
			throws Exception {
		Connection conn = connectionManager.getConnection();

		long returnId = -1;
		try {
			returnId = webDistributeDao.updateWebDistribute(conn, id, type,
					provinceId, cityId, areaId, address, storeName, phone, longitude,latitude,
					sortIndex, status);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return returnId;
	}
	
	

	public long deleteWebDistribute(String ids) throws Exception {
		Connection conn = connectionManager.getConnection();

		long returnId = -1;
		try {
			returnId = webDistributeDao.deleteWebDistribute(conn, ids);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return returnId;
	}

	public Map<String, String> queryWebDistributeById(long id) throws Exception {
		Connection conn = connectionManager.getConnection();

		Map<String, String> map = new HashMap<String, String>();
		try {
			map = webDistributeDao.queryWebDistributeById(conn, id);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return map;
	}

	public List<Map<String, Object>> queryWebDistributeAll(String fieldList,
			String condition, String order) throws Exception {
		Connection conn = connectionManager.getConnection();

		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		try {
			list = webDistributeDao.queryWebDistributeAll(conn, fieldList,
					condition, order);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return list;
	}
	
	
	/**
	 * 列表2
	 * @param fieldList
	 * @param condition
	 * @param order
	 * @return
	 * @throws Exception
	 */
	public List<Map<String, Object>> queryWebDistributeAll2(String fieldList,
			String condition, String order) throws Exception {
		Connection conn = connectionManager.getConnection();

		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		try {
			list = webDistributeDao.queryWebDistributeAll2(conn, fieldList,
					condition, order);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return list;
	}
	
	
	
	

	public void queryWebDistributePage(Long type, String storeName,
			Long status, PageBean<Map<String, Object>> pageBean)
			throws Exception {
		StringBuffer condition = new StringBuffer();
		if (type != null && type > 0) {
			condition.append(" AND type=" + type);
		}
		if (StringUtils.isNotBlank(storeName)) {
			condition.append(" AND storeName LIKE CONCAT('%','"
					+ storeName.trim() + "','%')");
		}
		if (status != null && status > 0) {
			condition.append(" AND status=" + status);
		}
		Connection conn = connectionManager.getConnection();
		try {
			dataPage(conn, pageBean, " v_t_web_distribute ", " * ", "", condition
					.toString());
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}
	}

	
	
	/**
	 * 前台列表分页
	 * @param provinceId
	 * @param cityId
	 * @param areaId
	 * @param storeName
	 * @param pageBean
	 * @throws Exception
	 */
	public void queryWebDPage(int type,int provinceId,int cityId,int areaId,String storeName,PageBean<Map<String, Object>> pageBean) throws Exception {
		StringBuffer condition = new StringBuffer();
		condition.append(" AND status=1");
		if(type>0){
			condition.append(" and type="+type);
		}
		if (provinceId > 0) {
			condition.append(" AND provinceId=" + provinceId);
		}
		if(cityId>0){
			condition.append(" AND cityId="+cityId);
		}
		if(areaId>0){
			condition.append(" AND areaId="+areaId);
		}
		if (StringUtils.isNotBlank(storeName)) {
			condition.append(" AND storeName LIKE CONCAT('%','"
					+ storeName.trim() + "','%')");
		}
		Connection conn = connectionManager.getConnection();
		try {
			dataPage(conn, pageBean, " v_t_web_distribute ", " * ", " order by addTime desc", condition
					.toString());
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}
	}
	
		
	

	/**
	 * 搜索网点分布列表
	 * @param keywords
	 * @return
	 * @throws Exception
	 */
	public List<Map<String,Object>> queryWebDistributeList(String keywords) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		
		StringBuffer condition = new StringBuffer();
		
		condition.append("1=1 and status = 1");
		
		if(StringUtils.isNotBlank(keywords)){
			condition.append(" and storeName like CONCAT('%','"+keywords+"','%')");
		}
		try{
			list = webDistributeDao.queryWebDistributeAll(conn, "*", condition.toString(), " addTime desc");
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		return list;
	}
	
	
	
	
	
	public void setWebDistributeDao(WebDistributeDao webDistributeDao) {
		this.webDistributeDao = webDistributeDao;
	}

}
