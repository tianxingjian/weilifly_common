package com.kuaiyidian.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.kuaiyidian.dao.NavigationBarDao;
import com.shove.base.BaseService;
import com.shove.vo.PageBean;

public class NavigationBarService extends BaseService {
	public static Log log = LogFactory.getLog(BannerService.class);

	private NavigationBarDao navigationBarDao;
	
	/**
	 * 添加导航菜单项
	 * @param name
	 * @param parentId
	 * @param enable
	 * @param url
	 * @param type
	 * @param sortIndex
	 * @param mark
	 * @return
	 * @throws Exception
	 */
	public long addNavigationBar(String name, long parentId,int enable,String url,
			int type,int sortIndex,String mark) throws Exception {
		Connection conn = connectionManager.getConnection();

		long navigationBarId = -1;
		try {
			navigationBarId = navigationBarDao.addNavigationBar(conn, name, parentId, enable,
					url, type, sortIndex, mark);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}
		return navigationBarId;
	}
	/**
	 * 检查信息完整程度
	 * @param name
	 * @param enable
	 * @param type
	 * @param sortIndex
	 * @return
	 */
	private Map<String, Object> checkNavigationBarMap(String name,int enable,
			int type,int sortIndex) {
		Map<String, Object> map = new HashMap<String, Object>();
		long returnId = -1;
		String error = "验证失败！";

		try {

			if (sortIndex < 0) {
				error = "排序格式不正确";
				return map;
			}
			if (StringUtils.isBlank(name)) {
				error = "导航项名称不能为空";
				return map;
			}
			if (type < 0) {
				error = "请选择模板类型";
				return map;
			}
			if (enable < 0) {
				error = "请选择是否启用";
				return map;
			}

			returnId = 1;
			error = "验证通过！";

			return map;
		} catch (Exception e) {
			returnId = -1;
			return map;
		} finally {
			map.put("returnId", returnId);
			map.put("error", error);
		}
	}
	/**
	 * 更新导航菜单项信息
	 * @param id
	 * @param name
	 * @param parentId
	 * @param enable
	 * @param url
	 * @param type
	 * @param sortIndex
	 * @param mark
	 * @return
	 * @throws Exception
	 */
	public Map<String, Object> updateNavigationBar(long id, String name,
			long parentId,int enable, String url, int type, int sortIndex, String mark)
			throws Exception {
		Connection conn = null;

		long returnId = -1;
		String error = "修改失败";

		Map<String, Object> map = new HashMap<String, Object>();

		try {
			Map<String, Object> returnMap = checkNavigationBarMap(name,enable,
					type,sortIndex);
			returnId = ((Long) returnMap.get("returnId"));
			if (returnId <= 0) {
				error = (String) returnMap.get("error");
				return map;
			}
			conn = connectionManager.getConnection();
			returnId = navigationBarDao.updateNavigationBar(conn, id, name,
					parentId, enable, url, type, sortIndex, mark);

			error = "修改成功";
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			if (conn != null) {
				conn.close();
			}
			map.put("returnId", returnId);
			map.put("error", error);
		}
		return map;
	}
	
	/**
	 * 删除导航菜单项
	 * @param ids
	 * @return
	 * @throws Exception
	 */
	public long deleteNavigationBar(String ids) throws Exception {
		Connection conn = connectionManager.getConnection();

		long returnId = -1;
		try {
			returnId = navigationBarDao.deleteNavigationBar(conn, ids);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return returnId;
	}
	/**
	 * 根据id查询
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public Map<String, String> queryNavigationBarById(long id) throws Exception {
		Connection conn = connectionManager.getConnection();

		Map<String, String> map = new HashMap<String, String>();
		try {
			map = navigationBarDao.queryNavigationBarById(conn, id);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}
		return map;
	}
	/**
	 * 根据id 和 enable查询
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public Map<String, String> queryNavigationBarByIdAndEnable(long id,int enable) throws Exception {
		Connection conn = connectionManager.getConnection();

		Map<String, String> map = new HashMap<String, String>();
		try {
			map = navigationBarDao.queryNavigationBarByIdAndEnable(conn, id,enable);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}
		return map;
	}
	/**
	 * 根据parentId查询
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public Map<String, String> queryNavigationBarByParentId(long parentId) throws Exception {
		Connection conn = connectionManager.getConnection();

		Map<String, String> map = new HashMap<String, String>();
		try {
			map = navigationBarDao.queryNavigationBarByParentId(conn, parentId);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}
		return map;
	}
	/**
	 * 根据parentId 和 enable查询
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public Map<String, String> queryNavigationBarByParentIdAndEnable(long parentId,int enable) throws Exception {
		Connection conn = connectionManager.getConnection();

		Map<String, String> map = new HashMap<String, String>();
		try {
			map = navigationBarDao.queryNavigationBarByParentIdAndEnable(conn, parentId, enable);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}
		return map;
	}
	/**
	 * 根据条件查询
	 * @param fieldList
	 * @param condition
	 * @param order
	 * @return
	 * @throws Exception
	 */
	public List<Map<String, Object>> queryNavigationBarAll(String fieldList,
			String condition, String order) throws Exception {
		Connection conn = connectionManager.getConnection();

		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		try {
			list = navigationBarDao.queryNavigationBarAll(conn, fieldList, condition, order);
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
	 * 查询一级菜单项
	 * @param parentId
	 * @param enable
	 * @return
	 * @throws Exception
	 */
	public List<Map<String, Object>> queryNavigationBarList(long parentId,
			Integer enable) throws Exception {
		Connection conn = connectionManager.getConnection();

		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();

		StringBuffer condition = new StringBuffer();

		condition.append("1=1");

		if (parentId <= 0) {
			condition.append(" and parentId <= " + 0);
		}
		if (enable != null && enable == 1) {
			condition.append(" and enable = " + enable);
		}
		try {
			list = navigationBarDao.queryNavigationBarAll(conn, "*", condition.toString(),
					"sortIndex asc");
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
	 * 查询二级或多级菜单项
	 * @param parentId
	 * @param enable
	 * @return
	 * @throws Exception
	 */
	public List<Map<String, Object>> queryNavigationBarList(long id, long parentId,
			Integer enable) throws Exception {
		Connection conn = connectionManager.getConnection();

		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();

		StringBuffer condition = new StringBuffer();

		condition.append("1=1");

		if (id > 0) {
			condition.append(" and id = " + id);
		}
		
		if (parentId > 0) {
			condition.append(" and parentId = " + parentId);
		}
		if (enable != null && enable == 1) {
			condition.append(" and enable = " + enable);
		}
		try {
			list = navigationBarDao.queryNavigationBarAll(conn, "*", condition.toString(),
					"sortIndex asc");
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
	 * 查询页数据
	 * @param pageBean
	 * @param fieldList
	 * @param condition
	 * @param order
	 * @param table
	 * @throws Exception
	 */
	public void queryNavigationBarPage(PageBean<Map<String, Object>> pageBean,
			String fieldList, StringBuffer condition, String order, String table)
			throws Exception {
		Connection conn = connectionManager.getConnection();
		try {
			dataPage(conn, pageBean, table, fieldList, order, condition
					.toString());
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}
	}

	public void setNavigationBarDao(NavigationBarDao navigationBarDao) {
		this.navigationBarDao = navigationBarDao;
	}
}
