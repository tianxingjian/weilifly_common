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

import com.kuaiyidian.constants.IConstants;
import com.kuaiyidian.dao.WeiliResearchesDao;
import com.shove.Convert;
import com.shove.base.BaseService;
import com.shove.data.DataSet;
import com.shove.data.dao.MySQL;
import com.shove.util.BeanMapUtils;
import com.shove.vo.PageBean;

public class WeiliResearchesService extends BaseService {
	
	public static Log log = LogFactory.getLog(WeiliResearchesService.class);
	
	private WeiliResearchesDao weiliResearchesDao;

	
	//查询微力研究院内容属类表querySort()
	public List<Map<String,String>> querySort() throws Exception{
	Connection conn = null;
		
		List<Map<String,String>> map = new ArrayList<Map<String,String>>();
		try{
			conn = MySQL.getConnection();

			map = weiliResearchesDao.querySort(conn);
			conn.commit();
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
		}
		
		return map;
	}
	
	
	//添加微力研究院的内容
	public Map<String,Object> addWeiliResearch(String title,String source,Long views,
			String image,String content,Integer status,Integer isRecommended,
			Integer isIndex,Integer sortIndex,String seoTitle,String seoKeywords,
			String seoDescription,String addTime,Integer sort) throws Exception{
		Connection conn = null;
		
		long returnId = -1;
		String error = "添加失败";
		
		Map<String,Object> map = new HashMap<String, Object>();
		try{
			Map<String,Object> returnMap = checkWeiliResearches(title, source, views, image,  content, status, isRecommended, isIndex, sortIndex, seoTitle, seoKeywords, seoDescription,addTime);
			returnId = ((Long)returnMap.get("returnId")); 
			if(returnId <= 0){
				error = (String)returnMap.get("error");
				
				return map;
				
			}
			conn = MySQL.getConnection();
			returnId = weiliResearchesDao.addWeiliResearch(conn, title, source, views, image,  content, status, isRecommended, 
					isIndex, sortIndex, seoTitle, seoKeywords, seoDescription,addTime,sort);
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
	
	private Map<String,Object> checkWeiliResearches(String title,String source,Long views,String image,String content,Integer status,Integer isRecommended,Integer isIndex,Integer sortIndex,String seoTitle,String seoKeywords,String seoDescription,String addTime){
		Map<String,Object> map = new HashMap<String, Object>();
		long returnId = -1;
		String error = "验证失败！";
		
		try {
			if(StringUtils.isBlank(title)){
				error = "标题不能为空";
				return map;
			}
			if(sortIndex==null||sortIndex<0){
				error = "请选择排序";
			}
			/*if(StringUtils.isBlank(source)){
				error = "来源不能为空";
				return map;
			}*/
			if(status == null||status < 0){
				error = "请选择是否显示";
				return map;
			}
			if(isRecommended == null||isRecommended < 0){
				error = "请选择是否推荐";
				return map;
			}
			if(isIndex == null||isIndex < 0){
				error = "请选择是否首页推荐";
				return map;
			}
			/*if(StringUtils.isBlank(image)){
				error = "请上传图片";
				return map;
			}*/
			if(StringUtils.isBlank(content)){
				error = "请输入内容";
				return map;
			}
			if(StringUtils.isBlank(addTime)){
				error = "添加时间不能为空";
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
	
	public Map<String,Object> updateWeiliResearch(long id,String title,String source,Long views,String image,String content,Integer status,Integer isRecommended,Integer isIndex,Integer sortIndex,String seoTitle,String seoKeywords,String seoDescription,String addTime) throws Exception{
		Connection conn = null;
		
		long returnId = -1;
		String error = "修改失败";
		
		Map<String,Object> map = new HashMap<String, Object>();
		try{
			Map<String,Object> returnMap = checkWeiliResearches(title, source, views, image,  content, status, isRecommended, isIndex, sortIndex, seoTitle, seoKeywords, seoDescription,addTime);
			returnId = ((Long)returnMap.get("returnId")); 
			if(returnId <= 0){
				error = (String)returnMap.get("error");
				
				return map;
				
			}
			conn = MySQL.getConnection();
			returnId = weiliResearchesDao.updateWeiliResearch(conn, id, title, source, views, image,  content, status, isRecommended, isIndex, sortIndex, seoTitle, seoKeywords, seoDescription,addTime);
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
	
	public long deleteWeiliResearch(String ids) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		long returnId = -1;
		try{
			returnId = weiliResearchesDao.deleteWeiliResearch(conn, ids);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return returnId;
	}
	
	public Map<String,String> queryWeiliResearchesById(long id) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		Map<String,String> map = new HashMap<String, String>();
		try{
			map = weiliResearchesDao.queryBrandNewsById(conn, id);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return map;
	}
	
	public Map<String, String> queryWeiliResearchesNextId(Long id) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		Map<String,String> map = new HashMap<String, String>();
		try{
			DataSet ds = MySQL.executeQuery(conn, "select min(id) as preId from t_weili_research where id > "+id);
			Map<String,String> nMap = BeanMapUtils.dataSetToMap(ds);
			if(nMap != null&&!nMap.isEmpty()){
				Long preId = Convert.strToLong(nMap.get("preId"), -1);
				map.put("preId", preId+"");
				ds = MySQL.executeQuery(conn, "select title from t_weili_research where id = "+preId);
				Map<String,String> tMap = BeanMapUtils.dataSetToMap(ds);
				if(tMap != null&&!tMap.isEmpty()){
					map.put("preTitle", tMap.get("title"));
				}
			}
			ds = MySQL.executeQuery(conn, "select max(id) as nextId from t_weili_research where id < "+id);
			nMap = BeanMapUtils.dataSetToMap(ds);
			if(nMap != null&&!nMap.isEmpty()){
				Long nextId = Convert.strToLong(nMap.get("nextId"), -1);
				map.put("nextId", nextId+"");
				ds = MySQL.executeQuery(conn, "select title from t_weili_research where id = "+nextId);
				Map<String,String> tMap = BeanMapUtils.dataSetToMap(ds);
				if(tMap != null&&!tMap.isEmpty()){
					map.put("nextTitle", tMap.get("title"));
				}
			}
			
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return map;
	}
	
	public long updateNewsViews(Long id) throws Exception{
		Connection conn = MySQL.getConnection();
		
		long returnId = -1;
		try{
			returnId = MySQL.executeNonQuery(conn, "update t_weili_research set views = views+1 where id = "+id);
			if(returnId < 0){
				conn.rollback();
				return returnId;
			}
			
			conn.commit();
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return returnId;
	}

	public Map<String,String> queryBrandRecommendedNews(Integer isRecommended) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		Map<String,String> map = new HashMap<String, String>();
		try{
			map = weiliResearchesDao.queryBrandRecommendedNews(conn, isRecommended);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return map;
	}
	
	public List<Map<String,Object>> queryBrandNewsAll(String fieldList,String condition,String order) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		try{
			list = weiliResearchesDao.queryBrandNewsAll(conn, fieldList, condition, order);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return list;
	}

	
	public List<Map<String,Object>> queryBrandNewsList(String keywords) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		
		StringBuffer condition = new StringBuffer();
		
		condition.append("1=1 and status = 1");
		
		if(StringUtils.isNotBlank(keywords)){
			condition.append(" and title like CONCAT('%','"+keywords+"','%') or content like CONCAT('%','"+keywords+"','%')");
		}
		
		try{
			list = weiliResearchesDao.queryBrandNewsAll(conn, "*", condition.toString(), "addTime desc");
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return list;
	}

	
	
	
	public List<Map<String,Object>> queryBrandNewsIndex(Integer isIndex) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		
		StringBuffer condition = new StringBuffer();
		
		condition.append("where 1=1");
		
		if(isIndex!= null&&isIndex > 0){
			condition.append(" and isIndex="+IConstants.STATUS_ON);
		}
		
		
		try{
			DataSet ds = MySQL.executeQuery(conn, "select * from t_weili_research "+condition.toString()+" ORDER BY addTime desc LIMIT 4");
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
	
	public void queryBrandNewsPage(PageBean<Map<String,Object>> pageBean,String fieldList,StringBuffer condition,String order,String table) throws Exception{
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

	public void queryBrandNewsPageFront(PageBean<Map<String,Object>> pageBean,Integer status) throws Exception{
		Connection conn = connectionManager.getConnection();
		StringBuffer condition = new StringBuffer();
		if(status != null&&status > 0){
			condition.append(" and `status` = "+status);
		}
		try{
			dataPage(conn, pageBean, "t_weili_research", "*", " order by addTime desc", condition.toString());
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
	}

	public void setWeiliResearchesDao(WeiliResearchesDao weiliResearchesDao) {
		this.weiliResearchesDao = weiliResearchesDao;
	}
	

}
