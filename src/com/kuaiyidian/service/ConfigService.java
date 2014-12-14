package com.kuaiyidian.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.kuaiyidian.constants.IConstants;
import com.kuaiyidian.dao.ConfigDao;
import com.shove.base.BaseService;
import com.shove.data.DataException;

public class ConfigService extends BaseService {

	public static Log log = LogFactory.getLog(ConfigService.class);
	private ConfigDao configDao;

	/**
	 * 根据类型查询配置信息
	 * 
	 * @param type
	 * @return
	 * @throws SQLException
	 * @throws DataException
	 */
	public List<Map<String, Object>> queryConfigByType(int type)
			throws SQLException, DataException {
		Connection conn = connectionManager.getConnection();
		List<Map<String, Object>> list;
		try {
			list = configDao.queryConfigByType(conn, type);
		} catch (SQLException e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} catch (DataException e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}
		return list;
	}

	public List<Map<String, Object>> queryProductConfigByType(int type)
			throws SQLException, DataException {
		Connection conn = connectionManager.getConnection();
		List<Map<String, Object>> list;
		try {
			list = configDao.queryProductConfigByType(conn, type);
		} catch (SQLException e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} catch (DataException e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}
		return list;
	}

	public List<Map<String, Object>> queryConfigInfo(int type)
			throws SQLException, DataException {
		Connection conn = connectionManager.getConnection();
		List<Map<String, Object>> list;
		try {
			list = configDao.queryConfigInfo(conn, type,
					IConstants.CONFIG_STATUS_ON);
		} catch (SQLException e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} catch (DataException e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}
		return list;
	}

	/**
	 * 根据编号查询配置信息
	 * 
	 * @param id
	 * @return
	 * @throws SQLException
	 * @throws DataException
	 */
	public Map<String, String> queryConfigById(Long id) throws SQLException,
			DataException {
		Connection conn = connectionManager.getConnection();
		Map<String, String> map;
		try {
			map = configDao.queryConfigById(conn, id);
		} catch (SQLException e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} catch (DataException e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return map;
	}

	public Map<String, String> queryProductConfigById(Long id)
			throws SQLException, DataException {
		Connection conn = connectionManager.getConnection();
		Map<String, String> map;
		try {
			map = configDao.queryProductConfigById(conn, id);
		} catch (SQLException e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} catch (DataException e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return map;
	}

	/**
	 * 修改配置信息
	 * 
	 * @param id编号
	 * @param type类型
	 * @param name名称
	 * @param var值
	 * @return long
	 * @throws SQLException
	 */
	public long updateConfig(Long id, Integer type, String name, Object var,
			String title, Integer status) throws SQLException {
		Connection conn = connectionManager.getConnection();
		Long result = -1L;
		try {
			result = configDao.updateConfigById(conn, id, type, name, var,
					title, status);
		} catch (SQLException e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}
		return result;
	}

	public void setConfigDao(ConfigDao configDao) {
		this.configDao = configDao;
	}
	/**
	 * 儿童类应用隐私协议
	 * 
	 * @param type
	 * @return
	 * @throws SQLException
	 * @throws DataException
	 */
	public Map<String, String> queryContentMap(Integer type)
			throws SQLException, DataException {
		Connection conn = connectionManager.getConnection();
		Map<String, String> list;

		try {
			list = configDao.queryConfigById(conn, type);
		} catch (SQLException e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} catch (DataException e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return list;
	}
	
	/**
	 * 根据id配置信息
	 * @param id
	 * @param description
	 * @param content
	 * @return
	 * @throws SQLException
	 * @throws DataException
	 */
	public long updateConfigInfoById(long id, String name, String vars,String title,Integer status) throws SQLException, DataException {
		Connection conn = connectionManager.getConnection();
		Long num=(long) 0;
		try {
			num = configDao.updateConfigInfoById(conn, id,name,vars,title,status);
		} finally {
			conn.close();
		}

		return num;
	}

}
