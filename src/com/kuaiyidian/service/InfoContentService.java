package com.kuaiyidian.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.kuaiyidian.dao.InfoContentDao;
import com.shove.base.BaseService;
import com.shove.vo.PageBean;

public class InfoContentService extends BaseService {
	public static Log log = LogFactory.getLog(DemoService.class);

	private InfoContentDao infoContentDao;

	public Map<String, Object> addInfoContent(String title, int infoId,
			String content, String linkPath,String imgUrl, int sortIndex, int status)
			throws Exception {
		Connection conn = null;

		long returnId = -1;
		String error = "添加失败";

		Map<String, Object> map = new HashMap<String, Object>();

		try {
			Map<String, Object> returnMap = checkInfoContent(title, infoId,
					content, linkPath,imgUrl, sortIndex, status);
			returnId = ((Long) returnMap.get("returnId"));
			if (returnId <= 0) {
				error = (String) returnMap.get("error");

				return map;

			}
			conn = connectionManager.getConnection();
			returnId = infoContentDao.addInfoContent(conn, title, infoId,
					content, linkPath,imgUrl, sortIndex, status);

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

	private Map<String, Object> checkInfoContent(String title, int infoId,
			String content, String linkPath,String imgUrl, int sortIndex, int status) {
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
			if (infoId < 0) {
				error = "请选择类型";
				return map;
			}
			if (infoId == 2) {
				if (StringUtils.isBlank(linkPath)) {
					error = "链接地址不能为空";
					return map;
				}
			} else if (infoId == 3) {
				if (StringUtils.isBlank(imgUrl)) {
					error = "请上传小图片";
					return map;
				}
			} else {
				if (StringUtils.isBlank(content)) {
					error = "内容不能为空";
					return map;
				}
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

	public Map<String, Object> updateInfoContent(long id, String title,
			int infoId, String content, String linkPath,String imgUrl, int sortIndex,
			int status) throws Exception {
		Connection conn = null;

		long returnId = -1;
		String error = "修改失败";

		Map<String, Object> map = new HashMap<String, Object>();

		try {
			Map<String, Object> returnMap = checkInfoContent(title, infoId,
					content, linkPath,imgUrl, sortIndex, status);
			returnId = ((Long) returnMap.get("returnId"));
			if (returnId <= 0) {
				error = (String) returnMap.get("error");

				return map;

			}
			conn = connectionManager.getConnection();
			returnId = infoContentDao.updateInfoContent(conn, id, title,
					infoId, content, linkPath,imgUrl, sortIndex, status);

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

	
	
	public long deleteInfoContent(String ids) throws Exception {
		Connection conn = connectionManager.getConnection();

		long returnId = -1;
		try {
			returnId = infoContentDao.deleteInfoContent(conn, ids);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return returnId;
	}

	public Map<String, String> queryInfoContentById(long id) throws Exception {
		Connection conn = connectionManager.getConnection();

		Map<String, String> map = new HashMap<String, String>();
		try {
			map = infoContentDao.queryInfoContentById(conn, id);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return map;
	}

	public Map<String, String> queryInfoContentViewById(long id) throws Exception {
		Connection conn = connectionManager.getConnection();

		Map<String, String> map = new HashMap<String, String>();
		try {
			map = infoContentDao.queryInfoContentViewById(conn, id);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return map;
	}
	
	
	
	
	public List<Map<String, Object>> queryInfoContentAll(String fieldList,
			String condition, String order) throws Exception {
		Connection conn = connectionManager.getConnection();

		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		try {
			list = infoContentDao.queryInfoContentAll(conn, fieldList,
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

	

	
	
	public void queryInfoContentPage(PageBean<Map<String, Object>> pageBean,
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
	
	
	
	
	/**
	 * 搜索底部信息列表
	 * @param keywords
	 * @return
	 * @throws Exception
	 */
	public List<Map<String,Object>> queryInfoContentList(String keywords) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		
		StringBuffer condition = new StringBuffer();
		
		condition.append("1=1 and status = 1 and content is not null");
		
		if(StringUtils.isNotBlank(keywords)){
			condition.append(" and title like CONCAT('%','"+keywords+"','%')");
		}
		try{
			list = infoContentDao.queryInfoContentAll(conn, "*", condition.toString(), " addTime desc");
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		return list;
	}
	
	
	

	public void setInfoContentDao(InfoContentDao infoContentDao) {
		this.infoContentDao = infoContentDao;
	}
}
