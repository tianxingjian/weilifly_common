package com.kuaiyidian.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.kuaiyidian.dao.ReportDao;
import com.shove.base.BaseService;
import com.shove.vo.PageBean;

public class ReportService  extends BaseService{
public static Log log = LogFactory.getLog(DemoService.class);
	
	private ReportDao reportDao;

	public long addReport(int categoryId,String title,String author, String image,String path,int status,int sortIndex,String seoTitle,String seoKeywords,String seoDescription) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		long reportId = -1;
		try{
			reportId = reportDao.addReport(conn, categoryId, title,author, image, path, status, sortIndex, seoTitle, seoKeywords, seoDescription);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return reportId;
	}
	
	
	private Map<String, Object> checkReportMap(int categoryId,String title,String author, String image,int status,int sortIndex) {
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
			if (StringUtils.isBlank(image)) {
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
	
	
	
	
	public Map<String, Object> updateReport(long id,int categoryId,String title,String author, String image,String path,int status,int sortIndex,String seoTitle,String seoKeywords,String seoDescription) throws Exception {
		Connection conn = null;

		long returnId = -1;
		String error = "修改失败";

		Map<String, Object> map = new HashMap<String, Object>();

		try {
			Map<String, Object> returnMap = checkReportMap(categoryId, title, author, image, status, sortIndex);
			returnId = ((Long) returnMap.get("returnId"));
			if (returnId <= 0) {
				error = (String) returnMap.get("error");

				return map;

			}
			conn = connectionManager.getConnection();
			returnId =  reportDao.updateReport(conn, id, categoryId, title,author, image, path, status, sortIndex, seoTitle, seoKeywords, seoDescription);

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
	
	
	
	
	public long deleteReport(String ids) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		long returnId = -1;
		try{
			returnId = reportDao.deleteReport(conn, ids);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return returnId;
	}
	
	public Map<String,String> queryReportById(long id) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		Map<String,String> map = new HashMap<String, String>();
		try{
			map = reportDao.queryReportById(conn, id);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return map;
	}
	
	public List<Map<String,Object>> queryReportAll(String fieldList,String condition,String order) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		try{
			list = reportDao.queryReportAll(conn, fieldList, condition, order);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return list;
	}
	
	public void queryReportPage(PageBean<Map<String,Object>> pageBean,String fieldList,String condition,String order,String table) throws Exception{
		Connection conn = connectionManager.getConnection();
		try{
			dataPage(conn, pageBean, table, fieldList, order, condition.toString());
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}		
	}

	public void setReportDao(ReportDao reportDao) {
		this.reportDao = reportDao;
	}
	/**
	 * 前台质检报告
	 * @throws Exception 
	*/
	public void queryFrontReport(PageBean<Map<String, Object>> pageBean,String title,String author,Integer status,Long categoryId) throws Exception{
		Connection conn = connectionManager.getConnection();
		try {
			dataPage(conn, pageBean, "v_t_report_detail", " *  ", ""," AND status=1  AND categoryId="+categoryId+" ");
		} catch (Exception e) {                                                                 
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
	} 
	
	

	/**
	 * 前台质报告下载
	 * @throws Exception 
	 */

	public Map<String,String> queryReportsById(long id) throws Exception{
		Connection conn = connectionManager.getConnection();		
		Map<String,String> map = new HashMap<String, String>();
		try{
			map = reportDao.queryReprostsById(conn, id);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}		
		return map;
	}
	/**
	 * 查询前台升质检报告按id查询
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public List<Map<String,Object>> queryReportssList(Integer status) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		try{
			list = reportDao.queryReportssList(conn, status);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return list;
	}
	
	/**
	 * 前台质检报告查询详情
	 * @throws Exception 
	 */
	public Map<String,String>queryReportDetailId(Long id) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		Map<String,String> map= new HashMap<String,String>();
		try {
			map = reportDao.queryReportDetailId(conn, id);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		return map;
	}
}

