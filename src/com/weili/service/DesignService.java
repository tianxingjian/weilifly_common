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
import com.weili.dao.DesignDao;

public class DesignService extends BaseService {

	public static Log log = LogFactory.getLog(DesignService.class);

	private DesignDao designDao;

	public long addDesign(int categoryId, String title, String author,
			String imgUrl, int status, int sortIndex) throws Exception {
		Connection conn = connectionManager.getConnection();

		long designId = -1;
		try {
			designId = designDao.addDesign(conn, categoryId, title, author,
					imgUrl, status, sortIndex);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return designId;
	}
	
	
	

	private Map<String, Object> checkReportMap(int categoryId, String title,String author, String imgUrl, int status, int sortIndex) {
		Map<String, Object> map = new HashMap<String, Object>();
		long returnId = -1;
		String error = "验证失败！";
		try {
			if (sortIndex < 0) {
				error = "排序格式不正确";
				return map;
			}
			if (StringUtils.isBlank(title)) {
				error = "标题不能为空";
				return map;
			}
			if (StringUtils.isBlank(author)) {
				error = "作者不能为空";
				return map;
			}
			if (categoryId < 0) {
				error = "请选择类型";
				return map;
			}
			if (status < 0) {
				error = "请选择是否显示";
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
	
	
	
	
	public Map<String, Object> updateDesign(long id, int categoryId, String title,String author, String imgUrl, int status, int sortIndex) throws Exception {
		Connection conn = null;

		long returnId = -1;
		String error = "修改失败";

		Map<String, Object> map = new HashMap<String, Object>();

		try {
			Map<String, Object> returnMap = checkReportMap(categoryId, title, author, imgUrl, status, sortIndex);
			returnId = ((Long) returnMap.get("returnId"));
			if (returnId <= 0) {
				error = (String) returnMap.get("error");

				return map;

			}
			conn = connectionManager.getConnection();
			returnId = designDao.updateDesign(conn, id, categoryId, title,author, imgUrl, status, sortIndex);

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
	
	
	
	
	public long deleteDesign(String ids) throws Exception {
		Connection conn = connectionManager.getConnection();

		long returnId = -1;
		try {
			returnId = designDao.deleteDesign(conn, ids);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return returnId;
	}

	public Map<String, String> queryDesignById(long id) throws Exception {
		Connection conn = connectionManager.getConnection();

		Map<String, String> map = new HashMap<String, String>();
		try {
			map = designDao.queryDesignById(conn, id);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return map;
	}

	public List<Map<String, Object>> queryDesignAll(String fieldList,
			String condition, String order) throws Exception {
		Connection conn = connectionManager.getConnection();

		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		try {
			list = designDao.queryDesignAll(conn, fieldList, condition, order);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return list;
	}

	public void queryDesignPage(String title, int categoryId, int status,
			PageBean<Map<String, Object>> pageBean) throws Exception {
		StringBuffer condition = new StringBuffer();
		if (StringUtils.isNotBlank(title)) {
			condition.append(" AND title LIKE CONCAT('%','" + title + "','%')");
		}
		if (categoryId > 0) {
			condition.append(" AND categoryId=" + categoryId);
		}
		if (status > 0) {
			condition.append(" AND status=" + status);
		}
		Connection conn = connectionManager.getConnection();
		try {
			dataPage(conn, pageBean, " v_t_design_category ", " * ", "",
					condition.toString());
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}
	}	
	
	
	
	public void setDesignDao(DesignDao designDao) {
		this.designDao = designDao;
	}

}
