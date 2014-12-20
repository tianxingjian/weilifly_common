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
import com.shove.data.dao.MySQL;
import com.shove.vo.PageBean;
import com.weili.dao.DownloadDao;

public class DownloadService extends BaseService {
	
	public static Log log = LogFactory.getLog(DownloadService.class);
	
	private DownloadDao downloadDao;

	/**
	 * action添加下载资料详细化之service业务处理
	 * @return
	 */
	public Map<String,Object> addDownload(String name,String image,String path,Long categoryId,
			Integer sortIndex,Integer status,Integer isRecommend,
			String seoTitle,String seoKeywords,String seoDescription) throws Exception{
		
		Connection conn = null;
		
		long returnId = -1;
		String error = "添加失败";
		
		Map<String,Object> map = new HashMap<String, Object>();
		try{
			//添加资料的验证程序,验证关键内容是否为空或是违规
			Map<String,Object> returnMap = checkCourseware(name, image, path, categoryId,  sortIndex,
														   status, isRecommend, seoTitle, seoKeywords, seoDescription);
			
			returnId = ((Long)returnMap.get("returnId")); 
			if(returnId <= 0){
				error = (String)returnMap.get("error");
				return map;
			}
			
			conn = MySQL.getConnection();
			returnId = downloadDao.addDownload(conn, name, image, path, categoryId, sortIndex, 
											   status, isRecommend,seoTitle, seoKeywords, seoDescription);
			if(returnId < 0){
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
	
	/**
	 * 上传‘下载资料’时候的验证程序
	 * */
	private Map<String,Object> checkCourseware(
			String name,String image,String path,Long categoryId,
			Integer sortIndex,Integer status,Integer isRecommend,
			String seoTitle,String seoKeywords,String seoDescription){
		
		Map<String,Object> map = new HashMap<String, Object>();
		long returnId = -1;
		String error = "验证失败！";
		
		try {
			if(StringUtils.isBlank(name)){
				error = "名称不能为空";
				return map;
			}
			if(categoryId == null||categoryId < 0){
				error = "请选择系列";
				return map;
			}
			if(isRecommend == null||isRecommend < 0){
				error = "请选择是否推荐";
				return map;
			}
			if(status == null||status < 0){
				error = "请选择是否显示";
				return map;
			}
			if(StringUtils.isBlank(path)){
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
	
	/**
	 * 修改下载资料 之业务处理
	 * @return
	 */
	public Map<String,Object> updateDownload(
			long id , String name , String image , String path,
			Long categoryId , Integer sortIndex , Integer status , String seoTitle,
			String seoKeywords,String seoDescription) throws Exception{
		
		Connection conn = null;
		
		long returnId = -1;
		String error = "修改失败";
		
		Map<String,Object> map = new HashMap<String, Object>();
		try{
			//Map<String,Object> returnMap = checkCourseware(name, image, path, categoryId, sortIndex, status, seoTitle, seoKeywords, seoDescription);
//			returnId = ((Long)returnMap.get("returnId")); 
//			if(returnId <= 0){
//				error = (String)returnMap.get("error");
//				
//				return map;
//				
//			}
			conn = MySQL.getConnection();
			returnId = downloadDao.updateDownload(conn,id, name, image, path, categoryId,  sortIndex, status, seoTitle, seoKeywords, seoDescription);
			if(returnId < 0){
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
	
	/**
	 * 删除下载资料之 业务处理
	 * @return
	 */
	public long deleteDownload(String ids) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		long returnId = -1;
		try{
			returnId = downloadDao.deleteDownload(conn, ids);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return returnId;
	}
	
	public Map<String,String> queryCoursewareById(long id) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		Map<String,String> map = new HashMap<String, String>();
		try{
			map = downloadDao.queryCoursewareById(conn, id);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return map;
	}
	
	//通过名字查找分类ID
	public long queryCoursewareByName(String name) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		long  returnId = -1;
		try{
			returnId = downloadDao.queryCoursewareByName(conn, name);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return returnId;
	}
	
	public List<Map<String,Object>> queryCoursewareAll(String fieldList,String condition,String order) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		try{
			list = downloadDao.queryCoursewareAll(conn, fieldList, condition, order);
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
	 * action查询下载资料详细化之service业务处理和数据处理(直接调用父类分页查询的存储过程)
	 * @return
	 */
	public void queryDownloadPage(PageBean<Map<String,Object>> pageBean,String fieldList,StringBuffer condition,String order,String table) throws Exception{
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

	public void queryPreDownload(PageBean<Map<String,Object>> pageBean,Integer status,Long categoryId) throws Exception{
		Connection conn = connectionManager.getConnection();
		StringBuffer condition = new StringBuffer();
		if(status != null&&status > 0){
			condition.append(" and `status` = "+status);
		}
		if(categoryId != null&&categoryId > 0){
			condition.append(" and `categoryId` = "+categoryId);
		}
		try{
			dataPage(conn, pageBean, "t_download", "*", "order by addTime desc", condition.toString());
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
	}

	/**
	 * 搜索前台下载资料列表
	 * @param keywords
	 * @return
	 * @throws Exception
	 */
	public List<Map<String,Object>> queryCoursewareList(String keywords) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		
		StringBuffer condition = new StringBuffer();
		
		condition.append("1=1 and status = 1");
		
		if(StringUtils.isNotBlank(keywords)){
			condition.append(" and name like CONCAT('%','"+keywords+"','%')");
		}
		try{
			list = downloadDao.queryCoursewareAll(conn, "*", condition.toString(), " addTime desc");
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		return list;
	}
	
	
	
	public void setDownloadDao(DownloadDao downloadDao) {
		this.downloadDao = downloadDao;
	}
	
	
	
	/**
	 * 获取下载资料分类列表 之业务处理
	 * @return
	 */
	public List<Map<String,Object>> queryDownloadCategoryAll(String fieldList,String condition) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		try{
			list = downloadDao.queryDownloadCategoryAll(conn, fieldList, condition);
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
	 * 增加下载量
	 * @throws Exception 
	 * */
	public void updateDownNum(Integer id) throws Exception{
		Connection conn = MySQL.getConnection();
		try{
			MySQL.executeNonQuery(conn, "update t_download set down_num = down_num+1 where id = "+id); 
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
	}
}
