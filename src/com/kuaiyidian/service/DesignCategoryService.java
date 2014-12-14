package com.kuaiyidian.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import com.kuaiyidian.dao.DesignCategoryDao;
import com.shove.base.BaseService;
import com.shove.vo.PageBean;

public class DesignCategoryService extends BaseService {
	public static Log log = LogFactory.getLog(DemoService.class);

	private DesignCategoryDao designCategoryDao;

	public long addDesignCategory(String name, int status, int sortIndex)
			throws Exception {
		Connection conn = connectionManager.getConnection();

		long demoId = -1;
		try {
			demoId = designCategoryDao.addDesignCategory(conn, name, status,
					sortIndex);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return demoId;
	}

	public long updateDesignCategory(long id, String name, int status,
			int sortIndex) throws Exception {
		Connection conn = connectionManager.getConnection();

		long returnId = -1;
		try {
			returnId = designCategoryDao.updateDesignCategory(conn, id, name,
					status, sortIndex);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return returnId;
	}

	public long deleteDesignCategory(String ids) throws Exception {
		Connection conn = connectionManager.getConnection();

		long returnId = -1;
		try {
			returnId = designCategoryDao.deleteDesignCategory(conn, ids);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return returnId;
	}

	public Map<String, String> queryDesignCategoryById(long id)
			throws Exception {
		Connection conn = connectionManager.getConnection();

		Map<String, String> map = new HashMap<String, String>();
		try {
			map = designCategoryDao.queryDesignCategoryById(conn, id);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return map;
	}

	public List<Map<String, Object>> queryDesignCategoryAll(String fieldList,
			String condition, String order) throws Exception {
		Connection conn = connectionManager.getConnection();
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		try {
			list = designCategoryDao.queryDesignCategoryAll(conn, fieldList,
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

	public void queryDesignCategoryPage(PageBean<Map<String, Object>> pageBean)
			throws Exception {
		StringBuffer condition = new StringBuffer();

		Connection conn = connectionManager.getConnection();
		try {
			dataPage(conn, pageBean, " t_design_category ", " * ", "",
					condition.toString());
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

	}

	/**
	 * 前台设计素材分页
	 * 
	 * @throws Exception
	 */
	public void queryFrontDesignCategory(PageBean<Map<String, Object>> pageBean)
			throws Exception {
		StringBuffer condition = new StringBuffer();
		Connection conn = connectionManager.getConnection();
		try {
			dataPage(conn, pageBean, "v_t_design_category", "*", "",
					" AND status=1");
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

	}

	/**
	 * 前台设计素材下的名称分页
	 * 
	 * @throws Exception
	 */
	public void queryFrontDesignPage(PageBean<Map<String, Object>> pageBean,
			Long categoryId) throws Exception {
		StringBuffer condition = new StringBuffer();
		Connection conn = connectionManager.getConnection();
		try {
			dataPage(conn, pageBean, "t_design", "*", "",
					" AND status=1  AND categoryId=" + categoryId + " ");
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

	}

	/**
	 *前台迭代设计素材下的分类名称
	 */
	public List<Map<String, Object>> queryDesignCategoryList(Integer status)
			throws Exception {
		Connection conn = connectionManager.getConnection();
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		try {
			list = designCategoryDao.queryDesignCategoryList(conn, status);
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
	 *前台迭代设计素材下的图片
	 */
	public List<Map<String, Object>> queryImageList(Integer status)
			throws Exception {
		Connection conn = connectionManager.getConnection();
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		try {
			list = designCategoryDao.queryImageList(conn, status);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return list;
	}

	public void setDesignCategoryDao(DesignCategoryDao designCategoryDao) {
		this.designCategoryDao = designCategoryDao;
	}

	public Map<String, String> queryDesignById(Integer status,Long tid) throws Exception {
		Connection conn = connectionManager.getConnection();
		Map<String, String> map = new HashMap<String, String>();
		try {
			map = designCategoryDao.queryDesignById(conn,status, tid);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return map;
	}

	public List<Map<String, Object>> queryImageByIds(int status, Long tid,
			String ids) throws Exception {
		Connection conn = connectionManager.getConnection();
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		try {
			list = designCategoryDao.queryImageByIds(conn, status, tid, ids);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return list;
	}

	public List<Map<String, Object>> queryImageIdsList(Integer status, Long tid) throws Exception {
		Connection conn = connectionManager.getConnection();
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		try {
			list = designCategoryDao.queryImageIdsList(conn, status, tid);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return list;
	}

}
