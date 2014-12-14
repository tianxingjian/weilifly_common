package com.kuaiyidian.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import com.kuaiyidian.dao.RecruitTypeDao;
import com.shove.base.BaseService;
import com.shove.vo.PageBean;

public class RecruitTypeService extends BaseService {

	public static Log log = LogFactory.getLog(RecruitTypeService.class);

	private RecruitTypeDao recruitTypeDao;

	public long addRecruitType(String title, int sortIndex, int status,
			String imgUrl) throws Exception {
		Connection conn = connectionManager.getConnection();
		long recruitTypeId = -1;
		try {
			recruitTypeId = recruitTypeDao.addRecruitType(conn, title,
					sortIndex, status, imgUrl);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return recruitTypeId;
	}

	private Map<String, Object> checkReTypeMap(String title, String imgUrl,
			int sortIndex, int status) {
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
			if (StringUtils.isBlank(imgUrl)) {
				error = "请上传图片";
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

	
	
	public Map<String, Object> updateRecruitType(long id, String title,
			int sortIndex, int status, String imgUrl) throws Exception {
		Connection conn = null;

		long returnId = -1;
		String error = "修改失败";
		Map<String, Object> map = new HashMap<String, Object>();

		try {
			Map<String, Object> returnMap = checkReTypeMap(title, imgUrl,
					sortIndex, status);
			returnId = ((Long) returnMap.get("returnId"));
			if (returnId <= 0) {
				error = (String) returnMap.get("error");
				return map;
			}
			conn = connectionManager.getConnection();
			returnId = recruitTypeDao.updateRecruitType(conn, id, title,
					sortIndex, status, imgUrl);

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

	
	
	public long deleteRecruitType(String ids) throws Exception {
		Connection conn = connectionManager.getConnection();

		long returnId = -1;
		try {
			returnId = recruitTypeDao.deleteRecruitType(conn, ids);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return returnId;
	}

	public Map<String, String> queryRecruitTypeById(long id) throws Exception {
		Connection conn = connectionManager.getConnection();

		Map<String, String> map = new HashMap<String, String>();
		try {
			map = recruitTypeDao.queryRecruitTypeById(conn, id);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return map;
	}

	public List<Map<String, Object>> queryRecruitTypeAll(String fieldList,
			String condition, String order) throws Exception {
		Connection conn = connectionManager.getConnection();

		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		try {
			list = recruitTypeDao.queryRecruitTypeAll(conn, fieldList,
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

	public void queryRecruitTypePage(PageBean<Map<String, Object>> pageBean,
			String fieldList, String condition, String order, String table)
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

	public void setRecruitTypeDao(RecruitTypeDao recruitTypeDao) {
		this.recruitTypeDao = recruitTypeDao;
	}

}
