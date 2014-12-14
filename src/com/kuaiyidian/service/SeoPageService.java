package com.kuaiyidian.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import com.kuaiyidian.dao.SeoPageDao;
import com.shove.base.BaseService;
import com.shove.data.DataException;
import com.shove.vo.PageBean;


public class SeoPageService extends BaseService {
	
public static Log log = LogFactory.getLog(SeoPageService.class);
	
	private SeoPageDao seoPageDao;

	public long addSeoPage(String pageUrl,int columId, String seoTitle, String seoKeyWord,String seoDescription) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		long seoId = -1;
		try{
			seoId = seoPageDao.addSeoPage(conn,pageUrl,columId,seoTitle,seoKeyWord,seoDescription);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		return seoId;
	}
	
	public long updateSeoPage(long id,String seoTitle,String seoKeyWord, String seoDescription) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		long returnId = -1;
		try{
			returnId = seoPageDao.updateSeoPage(conn, id,seoTitle,seoKeyWord,seoDescription);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return returnId;
	}
	
	public long deleteSeoPage(String ids) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		long returnId = -1;
		try{
			returnId = seoPageDao.deleteSeoPage(conn, ids);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return returnId;
	}
	
	public Map<String,String> querySeoPageById(long id) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		Map<String,String> map = new HashMap<String, String>();
		try{
			map = seoPageDao.querySeoPageById(conn, id);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		return map;
	}
	
	public List<Map<String,Object>> querySeoPageAll(String fieldList,String condition,String order) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		try{
			list = seoPageDao.querySeoPageAll(conn, fieldList, condition, order);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return list;
	}
	
	public void querySeoPagePage(PageBean<Map<String,Object>> pageBean,String fieldList,String condition,String order,String table) throws Exception{
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
	

	public void querySeoPagePageList(String pageUrl,PageBean<Map<String,Object>> pageBean) throws Exception{
		Connection conn = connectionManager.getConnection();
		StringBuffer condition=new StringBuffer();
		//condition.append(" 1=1 ");
		if(StringUtils.isNotBlank(pageUrl)){
			condition.append(" and pageUrl like concat('%','"+pageUrl.trim()+"','%')");
		}
		try{
			dataPage(conn, pageBean, "t_seo_page", "*", "order by id asc", condition.toString());
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}		
	}
	/**
	 * 根据Url查询前台
	 * @throws Exception 
	 * @throws DataException 
	 */
	public Map<String,String>querySeoUrl(String pageUrl) throws Exception{
		Connection conn = connectionManager.getConnection();
		Map<String,String>map = new HashMap<String,String>();
		try {
			map = seoPageDao.querySeoUrl(conn, pageUrl);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		return map;
	}
	/**
	 * 添加Url
	 * @throws Exception 
	 */
	public Long addSeoUrl(String pageUrl) throws Exception{
		Connection conn = connectionManager.getConnection();
		Long returnId = -1l;
		try {
			returnId = seoPageDao.addSeoUrl(conn, pageUrl);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		return returnId;
	}

	public void setSeoPageDao(SeoPageDao seoPageDao) {
		this.seoPageDao = seoPageDao;
	}
	
}
