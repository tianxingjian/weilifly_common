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
import com.weili.dao.AdvertisementerDao;

public class AdvertisementService extends BaseService {
	
	public static Log log = LogFactory.getLog(AdvertisementService.class);
	
	private AdvertisementerDao advertisementerDao;

	public Map<String,Object> addAdvertisement(String name,String image,String androidPath,Integer isRecommended,Integer sortIndex,Integer status,String seoTitle,String seoKeywords,String seoDescription,String iosPath) throws Exception{
		Connection conn = null;
		
		long returnId = -1;
		String error = "添加失败";
		
		Map<String,Object> map = new HashMap<String, Object>();
		try{
			Map<String,Object> returnMap = checkAdvertisement(name, image, androidPath, isRecommended, sortIndex, status, seoTitle, seoKeywords, seoDescription,iosPath);
			returnId = ((Long)returnMap.get("returnId")); 
			if(returnId <= 0){
				error = (String)returnMap.get("error");
				
				return map;
				
			}
			conn = MySQL.getConnection();
			returnId = advertisementerDao.addAdvertisement(conn, name, image, androidPath, isRecommended, sortIndex, status, seoTitle, seoKeywords, seoDescription,iosPath);
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
	
	private Map<String,Object> checkAdvertisement(String name,String image,String path,Integer isRecommended,Integer sortIndex,Integer status,String seoTitle,String seoKeywords,String seoDescription,String iosPath){
		Map<String,Object> map = new HashMap<String, Object>();
		long returnId = -1;
		String error = "验证失败！";
		
		try {
			if(StringUtils.isBlank(name)){
				error = "广告名称不能为空";
				return map;
			}
			if(status == null||status < 0){
				error = "请选择是否显示";
				return map;
			}
			if(isRecommended == null||isRecommended < 0){
				error = "请选择是否推荐";
				return map;
			}
			if(StringUtils.isBlank(path)){
				error = "请上传资料";
				return map;
			}
			if(StringUtils.isBlank(iosPath)){
				error = "请上传资料";
				return map;
			}
			if(StringUtils.isBlank(image)){
				error = "请上传图片";
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
	
	public Map<String,Object> updateAdvertisement(long id,String name,String image,String androidPath,Integer isRecommended,Integer sortIndex,Integer status,String seoTitle,String seoKeywords,String seoDescription,String iosPath) throws Exception{
		Connection conn = null;
		
		long returnId = -1;
		String error = "修改失败";
		
		Map<String,Object> map = new HashMap<String, Object>();
		try{
			Map<String,Object> returnMap = checkAdvertisement(name, image, androidPath, isRecommended, sortIndex, status, seoTitle, seoKeywords, seoDescription,iosPath);
			returnId = ((Long)returnMap.get("returnId")); 
			if(returnId <= 0){
				error = (String)returnMap.get("error");
				
				return map;
				
			}
			conn = MySQL.getConnection();
			returnId = advertisementerDao.updateAdvertisement(conn, id, name, image, androidPath, isRecommended, sortIndex, status, seoTitle, seoKeywords, seoDescription,iosPath);
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
	
	public long deleteAdvertisement(String ids) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		long returnId = -1;
		try{
			returnId = advertisementerDao.deleteAdvertisement(conn, ids);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return returnId;
	}
	
	public Map<String,String> queryAdvertisementById(long id) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		Map<String,String> map = new HashMap<String, String>();
		try{
			map = advertisementerDao.queryAdvertisementById(conn, id);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return map;
	}
	
	public List<Map<String,Object>> queryAdvertisementerAll(String fieldList,String condition,String order) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		try{
			list = advertisementerDao.queryAdvertisementAll(conn, fieldList, condition, order);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return list;
	}

	public List<Map<String,Object>> queryAdvertisementerList() throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		
		StringBuffer condition = new StringBuffer();
		
		condition.append("where 1=1 and status = "+IConstants.STATUS_ON);
		
		condition.append(" and isRecommended = "+IConstants.RECOMMEND_ON);
		
		
		try{
			DataSet ds = MySQL.executeQuery(conn, "select * from t_appadv "+condition.toString()+" ORDER BY addTime desc LIMIT 2");
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
	
	public void queryAdvertisementerPage(PageBean<Map<String,Object>> pageBean,String fieldList,StringBuffer condition,String order,String table) throws Exception{
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
	
	public void queryAdvertisementer(PageBean<Map<String,Object>> pageBean,Integer status) throws Exception{
		Connection conn = connectionManager.getConnection();
		StringBuffer condition = new StringBuffer();
		if(status != null&&status > 0){
			condition.append(" and `status` = "+status);
		}
		try{
			dataPage(conn, pageBean, "t_appadv", "*", "order by addTime desc", condition.toString());
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
	}
	
	
	/**
	 * 搜索广告片列表
	 * @param keywords
	 * @return
	 * @throws Exception
	 */
	public List<Map<String,Object>> queryAdvertisementerList(String keywords) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		
		StringBuffer condition = new StringBuffer();
		
		condition.append("1=1 and status = 1");
		
		if(StringUtils.isNotBlank(keywords)){
			condition.append(" and name like CONCAT('%','"+keywords+"','%')");
		}
		try{
			list = advertisementerDao.queryAdvertisementAll(conn, "*", condition.toString(), " addTime desc");
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		return list;
	}
	
	
	

	public void setAdvertisementerDao(AdvertisementerDao advertisementerDao) {
		this.advertisementerDao = advertisementerDao;
	}
	
}
