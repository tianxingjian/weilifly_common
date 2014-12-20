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
import com.weili.dao.BannerDao;

public class BannerService extends BaseService {
	public static Log log = LogFactory.getLog(BannerService.class);

	private BannerDao bannerDao;

	public long addBanner(String title, String imgPath, String imgUrl,
			String imgFont, String url, String urlTwo, int sortIndex, int type,
			int status) throws Exception {
		Connection conn = connectionManager.getConnection();

		long bannerId = -1;
		try {
			bannerId = bannerDao.addBanner(conn, title, imgPath, imgUrl,
					imgFont, url, urlTwo, sortIndex, type, status);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return bannerId;
	}

	private Map<String, Object> checkBannerMap(String title, String imgPath,
			String imgUrl, String imgFont, String url, String urlTwo,
			int sortIndex, int type, int status) {
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
			if (type < 0) {
				error = "请选择类型";
				return map;
			}
			if (StringUtils.isBlank(imgPath)) {
				error = "请上传图片";
				return map;
			}
			if (StringUtils.isBlank(imgUrl)) {
				error = "请上传小图片";
				return map;
			}
			if (StringUtils.isBlank(imgFont)) {
				error = "请上传右下角小图片";
				return map;
			}
			if (StringUtils.isBlank(url)) {
				error = "请输入大图片链接地址";
				return map;
			}
			if (StringUtils.isBlank(urlTwo)) {
				error = "请输入右下角图片链接地址";
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

	public Map<String, Object> updateBanner(long id, String title,
			String imgPath, String imgUrl, String imgFont, String url,
			String urlTwo, int sortIndex, int type, int status)
			throws Exception {
		Connection conn = null;

		long returnId = -1;
		String error = "修改失败";

		Map<String, Object> map = new HashMap<String, Object>();

		try {
			Map<String, Object> returnMap = checkBannerMap(title, imgPath,
					imgUrl, imgFont, url, urlTwo, sortIndex, type, status);
			returnId = ((Long) returnMap.get("returnId"));
			if (returnId <= 0) {
				error = (String) returnMap.get("error");
				return map;
			}
			conn = connectionManager.getConnection();
			returnId = bannerDao.updateBanner(conn, id, title, imgPath, imgUrl,
					imgFont, url, urlTwo, sortIndex, type, status);

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

	public long deleteBanner(String ids) throws Exception {
		Connection conn = connectionManager.getConnection();

		long returnId = -1;
		try {
			returnId = bannerDao.deleteBanner(conn, ids);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return returnId;
	}

	public Map<String, String> queryBannerById(long id) throws Exception {
		Connection conn = connectionManager.getConnection();

		Map<String, String> map = new HashMap<String, String>();
		try {
			map = bannerDao.queryBannerById(conn, id);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return map;
	}

	public List<Map<String, Object>> queryBannerAll(String fieldList,
			String condition, String order) throws Exception {
		Connection conn = connectionManager.getConnection();

		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		try {
			list = bannerDao.queryBannerAll(conn, fieldList, condition, order);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return list;
	}

	public List<Map<String, Object>> queryBannerList(Integer status,
			Integer type) throws Exception {
		Connection conn = connectionManager.getConnection();

		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();

		StringBuffer condition = new StringBuffer();

		condition.append("1=1");

		if (status != null && status > 0) {
			condition.append(" and status = " + status);
		}
		if (type != null && type > 0) {
			condition.append(" and type = " + type);
		}
		try {
			list = bannerDao.queryBannerAll(conn, "*", condition.toString(),
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

	public void queryBannerPage(PageBean<Map<String, Object>> pageBean,
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

	public void setBannerDao(BannerDao bannerDao) {
		this.bannerDao = bannerDao;
	}
}
