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
import com.shove.data.DataSet;
import com.shove.data.dao.MySQL;
import com.shove.vo.PageBean;
import com.weili.constants.IConstants;
import com.weili.dao.DownloadHelpDao;

public class DownloadHelpService extends BaseService {
	
	public static Log log = LogFactory.getLog(DownloadHelpService.class);
	
	private DownloadHelpDao downloadHelpDao;

	public void setDownloadHelpDao(DownloadHelpDao downloadHelpDao) {
		this.downloadHelpDao = downloadHelpDao;
	}

	public Map<String,Object> addDownloadHelp(String title,String content,String fit,Integer sortIndex,Integer status,String seoTitle,String seoKeywords,String seoDescription,String image) throws Exception{
		Connection conn = null;
		
		long returnId = -1;
		String error = "添加失败";
		
		Map<String,Object> map = new HashMap<String, Object>();
		try{
			Map<String,Object> returnMap = checkDownloadHelp(title, content,fit, sortIndex, status, seoTitle, seoKeywords, seoDescription,image);
			returnId = ((Long)returnMap.get("returnId")); 
			if(returnId <= 0){
				error = (String)returnMap.get("error");
				
				return map;
				
			}
			conn = MySQL.getConnection();
			returnId = downloadHelpDao.addDownloadHelp(conn, title, content,fit,sortIndex, status, seoTitle, seoKeywords, seoDescription,image);
			if(returnId <= 0){
				conn.rollback();
				return map;
			}
			
			conn.commit();
			error = "添加成功";
		}catch (Exception e) {
			if(conn != null){
				conn.close();
			}
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			if(conn != null){
				conn.close();
			}
			
			map.put("returnId", returnId);
			map.put("error", error);
		}
		
		return map;
	}
	
	private Map<String,Object> checkDownloadHelp(String title,String content,String fit,Integer sortIndex,Integer status,String seoTitle,String seoKeywords,String seoDescription,String image){
		Map<String,Object> map = new HashMap<String, Object>();
		long returnId = -1;
		String error = "验证失败！";
		
		try {
			if(StringUtils.isBlank(title)){
				error = "标题不能为空";
				return map;
			}
			if(sortIndex == null||sortIndex < 0){
				error = "排序格式不正确";
				return map;
			}
			if(StringUtils.isBlank(fit)){
				error = "适用机型不能为空";
				return map;
			}
			if(status == null||status < 0){
				error = "请选择是否显示";
				return map;
			}
			if(StringUtils.isBlank(content)){
				error = "请输入内容";
				return map;
			}
			if(StringUtils.isBlank(image)){
				error="请上传图片";
				return map;
			}
			returnId = 1;
			error = "验证通过！";
			
			return map;
		} catch (Exception e) {
			returnId = -1;
			return map;
		}finally{
			map.put("returnId", returnId);
			map.put("error", error);
		}
	}
	
	public Map<String,Object> updateDownloadHelp(long id,String title,String content,String fit,Integer sortIndex,Integer status,String seoTitle,String seoKeywords,String seoDescription,String image) throws Exception{
		Connection conn = null;
		
		long returnId = -1;
		String error = "修改失败";
		
		Map<String,Object> map = new HashMap<String, Object>();
		try{
			Map<String,Object> returnMap = checkDownloadHelp(title, content,fit, sortIndex, status, seoTitle, seoKeywords, seoDescription,image);
			returnId = ((Long)returnMap.get("returnId")); 
			if(returnId <= 0){
				error = (String)returnMap.get("error");
				
				return map;
				
			}
			conn = MySQL.getConnection();
			returnId = downloadHelpDao.updateDownloadHelp(conn, id, title, content,fit, sortIndex, status, seoTitle, seoKeywords, seoDescription,image);
			if(returnId <= 0){
				conn.rollback();
				return map;
			}
			
			conn.commit();
			error = "修改成功";
		}catch (Exception e) {
			if(conn != null){
				conn.close();
			}
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			if(conn != null){
				conn.close();
			}
			
			map.put("returnId", returnId);
			map.put("error", error);
		}
		
		return map;
	}
	
	public long deleteDownloadHelp(String ids) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		long returnId = -1;
		try{
			returnId = downloadHelpDao.deleteDownloadHelp(conn, ids);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return returnId;
	}
	
	public Map<String,String> queryDownloadHelpById(long id) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		Map<String,String> map = new HashMap<String, String>();
		try{
			map = downloadHelpDao.queryDownloadHelpById(conn, id);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return map;
	}
	
	public List<Map<String,Object>> queryDownloadHelpAll(String fieldList,String condition,String order) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		try{
			list = downloadHelpDao.queryDownloadHelpAll(conn, fieldList, condition, order);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return list;
	}

	public List<Map<String,Object>> queryDownloadHelpFour(Integer status) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		
		StringBuffer condition = new StringBuffer();
		
		condition.append("where 1=1");
		
		if(status!= null&&status > 0){
			condition.append(" and status="+status);
		}
		
		
		try{
			DataSet ds = MySQL.executeQuery(conn, "select * from t_download_help "+condition.toString()+" ORDER BY sortIndex asc LIMIT 4");
			ds.tables.get(0).rows.genRowsMap();
			
			list =  ds.tables.get(0).rows.rowsMap;
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return list;
	}
	
	public void queryDownloadHelpPage(PageBean<Map<String,Object>> pageBean,String fieldList,StringBuffer condition,String order,String table) throws Exception{
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
   /**
    * 查询前台下载帮助
 * @throws Exception 
    */
	public void queryDownloandHelp(PageBean<Map<String,Object>>pageBean,Integer status,String title,String content) throws Exception{
		Connection conn = connectionManager.getConnection();
		StringBuffer condition = new StringBuffer();
		if (null != status && status > 0) {
			condition.append(" and status = " + status.longValue());
		}
		if (StringUtils.isNotBlank(title)) {
			condition.append("AND title LIKE CONCAT('%"+title.trim()+"%')");
		}
		if (StringUtils.isNotBlank(content)) {
			condition.append("AND content LIKE CONCAT('%"+content.trim()+"%')");
		}
		try {
			dataPage(conn, pageBean, "t_download_help", "*", "", condition.toString());
			
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}

		
	}
	/**
	 * 查询前台下载帮助迭代标题
	 * @param downloadHelpDao
	 */
	public List<Map<String,Object>> queryDownloadHelpsList(Integer status) throws Exception{
		Connection conn = connectionManager.getConnection();		
		 List<Map<String,Object>>list = new ArrayList<Map<String,Object>>();
		try{
			list = downloadHelpDao.queryDownloadHelpsList(conn, status);
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
	 * 查询前台升级程序下载
	 */
	public Map<String,String> queryCoursewareById(long id) throws Exception{
		Connection conn = connectionManager.getConnection();		
		Map<String,String> map = new HashMap<String, String>();
		try{
			map = downloadHelpDao.queryCoursewareById(conn, id);
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
	 * 查询前台下载帮助的升级程序
	 * @param downloadHelpDao
	 */
	public List<Map<String, Object>> queryqueryDownloadHelpIdList(String  name,String image,String path) throws Exception{
        List<Map<String,Object>>list = new ArrayList<Map<String,Object>>();
        Connection conn = connectionManager.getConnection();
		try {
			list = downloadHelpDao.queryDouwnloadList(conn, name,image,path);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		return list;
	}
	/**
	 * 查询前台下载帮助的广告
	 * @param downloadHelpDao
	 */
	public List<Map<String, Object>> queryAdvertList(String name,String image) throws Exception{
		List<Map<String,Object>>list = new ArrayList<Map<String,Object>>();
		Connection conn = connectionManager.getConnection();
		try {
			list = downloadHelpDao.queryAdvertList(conn,name,image);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		return list;
	}
	

	
	/**
	 * 搜索下载帮助列表
	 * @param keywords
	 * @return
	 * @throws Exception
	 */
	public List<Map<String,Object>> queryDownloadHelpList(String keywords) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		
		StringBuffer condition = new StringBuffer();
		
		condition.append("1=1 and status = 1");
		
		if(StringUtils.isNotBlank(keywords)){
			condition.append(" and title like CONCAT('%','"+keywords+"','%') or content like CONCAT('%','"+keywords+"','%')");
		}
		try{
			list = downloadHelpDao.queryDownloadHelpAll(conn, "*", condition.toString(), " addTime desc");
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		return list;
	}
	
	
}
