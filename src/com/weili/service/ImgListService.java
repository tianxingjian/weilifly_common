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
import com.weili.dao.ImgListDao;

public class ImgListService extends BaseService {
	public static Log log = LogFactory.getLog(ImgListService.class);

	private ImgListDao imgListDao;

	public Map<String, Object> addImgList(int tid, String imgUrl, String downUrl, int status,
			int sortIndex) throws Exception {
		Connection conn = null;

		long returnId = -1;
		String error = "添加失败";

		Map<String, Object> map = new HashMap<String, Object>();

		try {
			Map<String, Object> returnMap = checkImgListMap(tid, imgUrl, downUrl, status, sortIndex);
			returnId = ((Long) returnMap.get("returnId"));
			if (returnId <= 0) {
				error = (String) returnMap.get("error");
				return map;
			}
			conn = connectionManager.getConnection();
			returnId = imgListDao.addImgList(conn, tid, imgUrl, downUrl, status, sortIndex);

			error = "添加成功";
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
	
	
	private Map<String, Object> checkImgListMap(int tid, String imgUrl, String downUrl, int status,int sortIndex) {
		Map<String, Object> map = new HashMap<String, Object>();
		long returnId = -1;
		String error = "验证失败！";

		try {

			if (sortIndex < 0) {
				error = "排序格式不正确";
				return map;
			}
			if (tid < 0) {
				error = "请选择设计素材";
				return map;
			}
			if (StringUtils.isBlank(imgUrl)&&StringUtils.isBlank(downUrl)) {
				error = "图片不能为空";
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
	
	

	public Map<String, Object> updateImgList(long id, int tid, String imgUrl, String downUrl,
			int status, int sortIndex) throws Exception {
		Connection conn = null;

		long returnId = -1;
		String error = "修改失败";

		Map<String, Object> map = new HashMap<String, Object>();

		try {
			Map<String, Object> returnMap = checkImgListMap(tid, imgUrl, downUrl, status, sortIndex);
			returnId = ((Long) returnMap.get("returnId"));
			if (returnId <= 0) {
				error = (String) returnMap.get("error");
				return map;
			}
			conn = connectionManager.getConnection();
			returnId = imgListDao.updateImgList(conn, id, tid, imgUrl, downUrl, status, sortIndex);

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
	

	public long deleteImgList(String ids) throws Exception {
		Connection conn = connectionManager.getConnection();

		long returnId = -1;
		try {
			returnId = imgListDao.deleteImgList(conn, ids);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return returnId;
	}

	public Map<String, String> queryImgListById(long id) throws Exception {
		Connection conn = connectionManager.getConnection();

		Map<String, String> map = new HashMap<String, String>();
		try {
			map = imgListDao.queryImgListById(conn, id);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return map;
	}

	public List<Map<String, Object>> queryImgListAll(String fieldList,
			String condition, String order) throws Exception {
		Connection conn = connectionManager.getConnection();

		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		try {
			list = imgListDao
					.queryImgListAll(conn, fieldList, condition, order);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return list;
	}

	public void queryImgListPage(PageBean<Map<String, Object>> pageBean,
			String fieldList, StringBuffer condition, String order, String table)
			throws Exception {
		Connection conn = connectionManager.getConnection();
		try {
			dataPage(conn, pageBean, table, fieldList, order, condition.toString());
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

	}


	public void setImgListDao(ImgListDao imgListDao) {
		this.imgListDao = imgListDao;
	}
}
