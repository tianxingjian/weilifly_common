package com.weili.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.shove.Convert;
import com.shove.base.BaseService;
import com.shove.data.DataException;
import com.shove.data.DataSet;
import com.shove.data.dao.MySQL;
import com.shove.util.BeanMapUtils;
import com.shove.vo.PageBean;
import com.weili.constants.IConstants;
import com.weili.dao.WeiliDisplayDao;

public class WeiliDisplayService extends BaseService {
	
	public static Log log = LogFactory.getLog(WeiliDisplayService.class);
	
	private WeiliDisplayDao weiliDisplayDao;

	
	
	/**
	 * 类型查询联动
	* @Title: queryDisplayTypeList
	* @Description: TODO
	* @param id  
	* @param parentId  父ID
	* @param order_num  类型级别
	* @return
	* @throws Exception
	* @return List<Map<String,Object>>
	* @throws
	 */
	public List<Map<String, Object>> queryDisplayTypeList(Long parentId) throws Exception{
		Connection conn = connectionManager.getConnection();
		List<Map<String, Object>> listMap = null;
		try {
			listMap = weiliDisplayDao.queryDisplayTypeList(conn, parentId);
		} catch (SQLException e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} catch (DataException e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} catch(Exception e){
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally {
			conn.close();
		}
		return listMap;
	}
	
	/**
	 * 查询微力研究院内容属类表queryTypeList()
	 * 
	 * */
	public List<Map<String,String>> queryTypeList() throws Exception{
	Connection conn = null;
		
		List<Map<String,String>> map = new ArrayList<Map<String,String>>();
		try{
			conn = MySQL.getConnection();

			map = weiliDisplayDao.queryTypeList(conn);
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
	
	/**
	 * 添加最新动态
	 * */
	public Map<String,Object> addNewest(String title,String source,Long views,
			String image,String content,Integer status,Integer isRecommended,
			Integer isIndex,Integer sortIndex,String seoTitle,String seoKeywords,
			String seoDescription,String addTime) throws Exception{
		Connection conn = null;
		
		long returnId = -1;
		String error = "添加失败";
		
		Map<String,Object> map = new HashMap<String, Object>();
		try{
			Map<String,Object> returnMap = 
					checkWeiliResearches(title, source, views, 
					image,  content, status, isRecommended, isIndex, sortIndex,
					seoTitle, seoKeywords, seoDescription,addTime);
			returnId = ((Long)returnMap.get("returnId")); 
			if(returnId <= 0){
				error = (String)returnMap.get("error");
				
				return map;
				
			}
			conn = MySQL.getConnection();
			returnId = weiliDisplayDao.addNewest(conn, title, source, views, image,  content, status, isRecommended, 
					isIndex, sortIndex, seoTitle, seoKeywords, seoDescription,addTime);
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
	
	
	/**
	 * 添加微力研究院的内容
	 * */
	public Map<String,Object> addDisplay(String title,String source,Long views,
			String image,String content,Integer status,Integer isRecommended,
			Integer isIndex,Integer sortIndex,String seoTitle,String seoKeywords,
			String seoDescription,String addTime,Integer type) throws Exception{
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
			returnId = weiliDisplayDao.addDisplay(conn, title, source, views, image,  content, status, isRecommended, 
					isIndex, sortIndex, seoTitle, seoKeywords, seoDescription,addTime,type);
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
	
	
	
	public Map<String,Object> updateDisplay(long id,String title,String source,Long views,String image,String content,Integer status,Integer isRecommended,Integer isIndex,Integer sortIndex,String seoTitle,String seoKeywords,String seoDescription,String addTime) throws Exception{
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
			returnId = weiliDisplayDao.updateDisplay(conn, id, title, source, views, image,  content, status, isRecommended, isIndex, sortIndex, seoTitle, seoKeywords, seoDescription,addTime);
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
	
	/**
	 *  删除最新动态
	 * */
	public long deleteNewest(String ids) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		long returnId = -1;
		try{
			returnId = weiliDisplayDao.deleteNewest(conn, ids);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return returnId;
	}
	
	
	public long deleteDisplay(String ids) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		long returnId = -1;
		try{
			returnId = weiliDisplayDao.deleteDisplay(conn, ids);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return returnId;
	}
	
	
	/**
	 * 通过类型Id查询微力前台展示内容类型Map
	 * */
	public Map<String, String> queryDisplayTypeByTypeId(long id) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		Map<String, String> map = new HashMap<String, String>();
		try{
			map = weiliDisplayDao.queryDisplayTypeByTypeId(conn, id);
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
	 * 通过类型Id查询微力前台展示内容
	 * */
	public List<Map<String, String>> queryDisplayByTypeId(long id) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String, String>> list = new ArrayList<Map<String, String>>();
		try{
			list = weiliDisplayDao.queryDisplayByTypeId(conn, id);
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
	 * 前台展示内容子模块内容详情
	 * */
	public Map<String, String> queryDisplayById(long id) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		Map<String, String> map = new HashMap<String, String>();
		try{
			map = weiliDisplayDao.queryDisplayById(conn, id);
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
	 * 前台展示最新动态三级目录内容详情
	 * */
	public Map<String, String> queryNewest(long id) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		Map<String, String> map = new HashMap<String, String>();
		try{
			map = weiliDisplayDao.queryNewest(conn, id);
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
	 *详细内容页面之 上一篇和下一篇
	 * */
	public Map<String, String> queryWeiliResearchesNextId(Long id,Integer typeId) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		Map<String,String> map = new HashMap<String, String>();
		try{
			//
			DataSet ds = MySQL.executeQuery(conn, "select min(id) as preId from t_weili_display where id > "+id+" and typeId = "+typeId);
			Map<String,String> nMap = BeanMapUtils.dataSetToMap(ds);
			if(nMap != null&&!nMap.isEmpty()){
				Long preId = Convert.strToLong(nMap.get("preId"), -1);
				map.put("preId", preId+"");
				ds = MySQL.executeQuery(conn, "select title from t_weili_display where id = "+preId);
				Map<String,String> tMap = BeanMapUtils.dataSetToMap(ds);
				if(tMap != null&&!tMap.isEmpty()){
					map.put("preTitle", tMap.get("title"));
				}
			}
			ds = MySQL.executeQuery(conn, "select max(id) as nextId from t_weili_display where id < "+id+" and typeId = "+typeId);
			nMap = BeanMapUtils.dataSetToMap(ds);
			if(nMap != null&&!nMap.isEmpty()){
				Long nextId = Convert.strToLong(nMap.get("nextId"), -1);
				map.put("nextId", nextId+"");
				ds = MySQL.executeQuery(conn, "select title from t_weili_display where id = "+nextId);
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
	
	
	/**
	 * 增加浏览数
	 * 
	 * */
	public long updateDisplay(Long id) throws Exception{
		Connection conn = MySQL.getConnection();
		
		long returnId = -1;
		try{
			returnId = MySQL.executeNonQuery(conn, "update t_weili_display set views = views+1 where id = "+id);
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
	/**
	 * 增加最新动态浏览数
	 * 
	 * */
	public long updateNewest(Long id) throws Exception{
		Connection conn = MySQL.getConnection();
		
		long returnId = -1;
		try{
			returnId = MySQL.executeNonQuery(conn, "update t_newest set views = views+1 where id = "+id);
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
	
	/**
	 * 查询推荐最新动态
	 * */
	public Map<String,String> queryRecommendedNewest(Integer isRecommended) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		Map<String,String> map = new HashMap<String, String>();
		try{
			map = weiliDisplayDao.queryRecommendedNewest(conn, isRecommended);
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
	 * 查询推荐展示内容
	 * */
	public Map<String,String> queryRecommendedDisplay(Integer isRecommended) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		Map<String,String> map = new HashMap<String, String>();
		try{
			map = weiliDisplayDao.queryRecommendedDisplay(conn, isRecommended);
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
	 * 根据TypeId查询推荐展示内容
	 * */
	public Map<String,String> queryRecommendedDisplayByTypeId(Integer isRecommended,Integer typeId) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		Map<String,String> map = new HashMap<String, String>();
		try{
			map = weiliDisplayDao.queryRecommendedDisplayByTypeId(conn, isRecommended,typeId);
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
	 * 最新动态列表
	 * 
	 * */
	public List<Map<String,Object>> queryWeiliResearchAll(String fieldList,String condition,String order) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		try{
			list = weiliDisplayDao.queryWeiliResearchAll(conn, fieldList, condition, order);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return list;
	}

	
	public List<Map<String,Object>> queryWeiliResearchList(String keywords) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		
		StringBuffer condition = new StringBuffer();
		
		condition.append("1=1 and status = 1");
		
		if(StringUtils.isNotBlank(keywords)){
			condition.append(" and title like CONCAT('%','"+keywords+"','%') or content like CONCAT('%','"+keywords+"','%')");
		}
		
		try{
			list = weiliDisplayDao.queryWeiliResearchAll(conn, "*", condition.toString(), "addTime desc");
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
	 * 首页展示最新动态
	 * */

	public List<Map<String,Object>> queryNewestIndex() throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		
		StringBuffer condition = new StringBuffer();
		
		condition.append("1=1 and status = 1 and isIndex = 1 ");
		
		try{
			list = weiliDisplayDao.queryNewestIndex(conn, "*", condition.toString(), "addTime desc limit 0,4");
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
	 * 最新动态二级目录列表
	 * */

	public List<Map<String,Object>> queryNewest(PageBean<Map<String,Object>> pageBean) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		
		StringBuffer condition = new StringBuffer();
		
		condition.append(" and  status = 1 and isIndex = 1 ");
		
		try{
			dataPage(conn, pageBean, " t_newest ","*"," order by addTime desc ",condition.toString());
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
	 * 根据不同的类型ID查询子类型ID的Map类型
	 * */
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> queryDisplayIndex(Integer parentId) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		
		StringBuffer condition = new StringBuffer();
		condition.append("where 1=1");

		if(parentId!= null&&parentId > 0){
			condition.append(" and parentId="+parentId);
		}
		try{
			DataSet ds = MySQL.executeQuery(conn, "select * from t_navigationbar "+condition.toString());

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
	
	/**
	 * 查询一个父id下的所有子目录文章
	 * */
	public void queryDisplayByStringId(PageBean<Map<String,Object>> pageBean,StringBuffer sbid) throws Exception{
		Connection conn = connectionManager.getConnection();
		StringBuffer condition = new StringBuffer();
		try{
			if(sbid !=null ){
				condition.append(" and typeId in ("+sbid+") ");
			}
			dataPage(conn, pageBean, " t_weili_display ","*"," order by addTime desc ",condition.toString());
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		
//		Connection conn = connectionManager.getConnection();
//		
//		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
//		StringBuffer condition = new StringBuffer();
//		try{
//			if(sbid!=null){
//				condition.append("typeId in ("+sbid+")");
//			}
//			list = weiliDisplayDao.queryDisplayByStringId(conn, condition);
//		}catch (Exception e) {
//			log.error(e);
//			e.printStackTrace();
//			throw e;
//		}finally{
//			conn.close();
//		}
//		return list;
	}
	
	/**
	 * 查询一个父id下的首页推荐的前5条记录
	 * */
	public List<Map<String, Object>> queryDisplayByRecommendId(StringBuffer condition) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		StringBuffer sb = new StringBuffer();
		sb.append(" 1=1 and typeId in ("+condition+")  and isIndex = 1 ");
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		try{
			list = weiliDisplayDao.queryDisplayByRecommendId(conn, sb);
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
	 * 查询一个父id下的首页推荐的一条记录
	 * */
	public Map<String, String> queryDisplayRecommendById(StringBuffer condition) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		Map<String, String> map = new HashMap<String,String>();
		try{
			map = weiliDisplayDao.queryDisplayRecommendById(conn, condition);
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
	 * 查询一个标杆案例 父id下的首页推荐的前1条记录
	 * */
	public List<Map<String, Object>> queryDisplayByRecommendCase(StringBuffer condition) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		StringBuffer sb = new StringBuffer();
		sb.append(" 1=1 and typeId in ("+condition+")  and isIndex = 1 ");
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		try{
			list = weiliDisplayDao.queryDisplayByRecommendCase(conn, sb);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		return list;
	}
	
	
	public List<Map<String,Object>> queryWeiliResearchIndex(Integer isIndex) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		
		StringBuffer condition = new StringBuffer();
		
		condition.append("where 1=1");
		
		if(isIndex!= null&&isIndex > 0){
			condition.append(" and isIndex="+IConstants.STATUS_ON);
		}
		
		
		try{
			DataSet ds = MySQL.executeQuery(conn, "select * from t_weili_display "+condition.toString()+" ORDER BY addTime desc LIMIT 4");
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
	
	/**
	 * 分页查询前台最新动态
	 * */
	public void queryNewestPage(PageBean<Map<String,Object>> pageBean,String fieldList,StringBuffer condition,String order,String table) throws Exception{
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
	 * 分页查询前台展示内容
	 * */
	public void queryWeiliDisplayPage(PageBean<Map<String,Object>> pageBean,String fieldList,StringBuffer condition,String order,String table) throws Exception{
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
	 * 分页查询前台展示内容(状态是显示)
	 * */
	public void queryWeiliDisplayPageFront(PageBean<Map<String,Object>> pageBean,Integer status,Integer typeId) throws Exception{
		Connection conn = connectionManager.getConnection();
		StringBuffer condition = new StringBuffer();
		if(status != null&&status > 0){
			condition.append(" and `status` = "+status);
		}
		if(typeId != null&& typeId > 0){
			condition.append(" and `typeId` ="+typeId);
		}
		try{
			dataPage(conn, pageBean, "v_t_weili_type_display", "*", " order by addTime desc", condition.toString());
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
	}

	
	/**
	 * 获取展示内容分类列表 之业务处理
	 * @return
	 */
	public List<Map<String,Object>> queryWeiliResearchType(String fieldList,String condition) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		try{
			list = weiliDisplayDao.queryWeiliResearchType(conn, fieldList, condition);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		return list;
	}


	public void setWeiliDisplayDao(WeiliDisplayDao weiliDisplayDao) {
		this.weiliDisplayDao = weiliDisplayDao;
	}
	
}
