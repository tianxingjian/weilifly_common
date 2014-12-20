package com.weili.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

import com.shove.data.DataException;
import com.shove.data.DataSet;
import com.shove.util.BeanMapUtils;
import com.weili.database.Dao;
import com.weili.database.Dao.Tables;
import com.weili.database.Dao.Tables.t_download_category;
import com.weili.database.Dao.Tables.t_region;

public class WeiliDisplayDao {
	
	
	
	/**
	 * 添加最新动态
	 * */
	public long addNewest(Connection conn,String title,String source,Long views,String image,
			String content,Integer status,Integer isRecommended,Integer isIndex,
			Integer sortIndex,String seoTitle,String seoKeywords,String seoDescription,
			String addTime) throws SQLException{
		Dao.Tables.t_newest weiliDisplayes = new Dao().new Tables().new t_newest();
		
		weiliDisplayes.title.setValue(title);
		weiliDisplayes.source.setValue(source);
		weiliDisplayes.image.setValue(image);
		weiliDisplayes.content.setValue(content);
		weiliDisplayes.status.setValue(status);
		weiliDisplayes.isRecommended.setValue(isRecommended);
		weiliDisplayes.isIndex.setValue(isIndex);
		weiliDisplayes.sortIndex.setValue(sortIndex);
		weiliDisplayes.seoTitle.setValue(seoTitle);
		weiliDisplayes.seoKeywords.setValue(seoKeywords);
		weiliDisplayes.seoDescription.setValue(seoDescription);
		weiliDisplayes.addTime.setValue(addTime);
		
		return weiliDisplayes.insert(conn);
	}
	
	
	/**
	 * 添加微力展示内容
	 * */
	public long addDisplay(Connection conn,String title,String source,Long views,String image,
			String content,Integer status,Integer isRecommended,Integer isIndex,
			Integer sortIndex,String seoTitle,String seoKeywords,String seoDescription,
			String addTime,Integer typeId) throws SQLException{
		Dao.Tables.t_weili_display weiliDisplayes = new Dao().new Tables().new t_weili_display();
		
		weiliDisplayes.title.setValue(title);
		weiliDisplayes.source.setValue(source);
		weiliDisplayes.image.setValue(image);
		weiliDisplayes.content.setValue(content);
		weiliDisplayes.status.setValue(status);
		weiliDisplayes.isRecommended.setValue(isRecommended);
		weiliDisplayes.isIndex.setValue(isIndex);
		weiliDisplayes.sortIndex.setValue(sortIndex);
		weiliDisplayes.seoTitle.setValue(seoTitle);
		weiliDisplayes.seoKeywords.setValue(seoKeywords);
		weiliDisplayes.seoDescription.setValue(seoDescription);
		weiliDisplayes.addTime.setValue(addTime);
		weiliDisplayes.typeId.setValue(typeId);
		
		
		return weiliDisplayes.insert(conn);
	}
	
	//查询内容类型querySort
	@SuppressWarnings("unchecked")
	public List<Map<String,String>> queryTypeList(Connection conn) throws SQLException{
		Dao.Tables.t_navigationbar twd = new Dao().new Tables().new t_navigationbar();
		
		DataSet ds = twd.open(conn, " ", " ", "", -1, -1);
		ds.tables.get(0).rows.genRowsMap();
		
		return ds.tables.get(0).rows.rowsMap;
	}
	

	public long updateDisplay(Connection conn,long id,String title,String source,Long views,String image,String content,Integer status,Integer isRecommended,Integer isIndex,Integer sortIndex,String seoTitle,String seoKeywords,String seoDescription,String addTime) throws SQLException{
		Dao.Tables.t_weili_display weiliDisplay = new Dao().new Tables().new t_weili_display();
		
		if(StringUtils.isNotBlank(title)){
			weiliDisplay.title.setValue(title);
		}
		if(StringUtils.isNotBlank(source)){
			weiliDisplay.source.setValue(source);
		}
		if(StringUtils.isNotBlank(content)){
			weiliDisplay.content.setValue(content);
		}
		if(StringUtils.isNotBlank(image)){
			weiliDisplay.image.setValue(image);
		}
		if(views != null && views > 0){
			weiliDisplay.views.setValue(views);
		}
		if(isRecommended != null && isRecommended > 0){
			weiliDisplay.isRecommended.setValue(isRecommended);
		}
		if(isIndex != null && isIndex > 0){
			weiliDisplay.isIndex.setValue(isIndex);
		}
		if(status != null && status > 0){
			weiliDisplay.status.setValue(status);
		}
		if(sortIndex != null && sortIndex > 0){
			weiliDisplay.sortIndex.setValue(sortIndex);
		}
		if(StringUtils.isNotBlank(seoTitle)){
			weiliDisplay.seoTitle.setValue(seoTitle);
		}
		if(StringUtils.isNotBlank(seoKeywords)){
			weiliDisplay.seoKeywords.setValue(seoKeywords);
		}
		if(StringUtils.isNotBlank(seoDescription)){
			weiliDisplay.seoDescription.setValue(seoDescription);
		}
		if(StringUtils.isNotBlank(addTime)){
			weiliDisplay.addTime.setValue(addTime);
		}
		
		return weiliDisplay.update(conn, " id = "+id);
	}
	
	/**
	 * 获取展示内容分类列表 之数据处理
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> queryWeiliResearchType(
			Connection conn,String fieldList,String condition)throws SQLException, DataException {
		Dao.Tables.t_navigationbar productCategory = new Dao().new Tables().new t_navigationbar();
		
		DataSet ds = productCategory.open(conn, fieldList, condition,"", -1, -1);
		
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}
	
	public long deleteDisplay(Connection conn,String ids) throws SQLException{
		Dao.Tables.t_weili_display weiliDisplay = new Dao().new Tables().new t_weili_display();
		
		return weiliDisplay.delete(conn, " id in("+ids+") ");
	}
	//删除Newest
	public long deleteNewest(Connection conn,String ids) throws SQLException{
		Dao.Tables.t_newest t_newest = new Dao().new Tables().new t_newest();
		
		return t_newest.delete(conn, " id in("+ids+") ");
	}
	
	//通过类型Id查询微力前台展示内容类型Map
	public Map<String,String> queryDisplayTypeByTypeId(Connection conn,long id) throws SQLException, DataException{
		Dao.Tables.t_navigationbar weiliDisplay = new Dao().new Tables().new t_navigationbar();
				
		DataSet ds = weiliDisplay.open(conn, "*", " id = "+id, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}
	
	//通过类型Id查询微力前台展示内容 之数据库处理
	@SuppressWarnings("unchecked")
	public List<Map<String,String>> queryDisplayByTypeId(Connection conn,long typeId) throws SQLException, DataException{
		Dao.Views.v_t_weili_type_display weiliDisplay = new Dao().new Views().new v_t_weili_type_display();
		
		DataSet ds = weiliDisplay.open(conn, "*", " typeId = "+typeId,"", -1, -1);
		ds.tables.get(0).rows.genRowsMap();
		
		return ds.tables.get(0).rows.rowsMap;
	}
	
	//通过类型Id查询前台展示内容子模块内容详情 之数据库处理
		public Map<String,String> queryDisplayById(Connection conn,long id) throws SQLException, DataException{
			Dao.Tables.t_weili_display weiliDisplay = new Dao().new Tables().new t_weili_display();
			
			DataSet ds = weiliDisplay.open(conn, "*", " id = "+id, "", -1, -1);
			return BeanMapUtils.dataSetToMap(ds);
		}
		
		//通过类型Id查询前台展示最新动态三级目录内容详情 之数据库处理
		public Map<String,String> queryNewest(Connection conn,long id) throws SQLException, DataException{
			Dao.Tables.t_newest weiliDisplay = new Dao().new Tables().new t_newest();
					
			DataSet ds = weiliDisplay.open(conn, "*", " id = "+id, "", -1, -1);
			return BeanMapUtils.dataSetToMap(ds);
		}

	// 查询一个父id下的所有子目录文章
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> queryDisplayByStringId(Connection conn,StringBuffer condition)throws SQLException, DataException {
		Dao.Tables.t_weili_display demo = new Dao().new Tables().new t_weili_display();
		
		DataSet ds = demo.open(conn, "*", condition.toString()," addTime desc ", -1, -1);
		ds.tables.get(0).rows.genRowsMap();
			
		return ds.tables.get(0).rows.rowsMap;
	}
	/**
	 * 查询一个父id下的首页推荐的前5条记录
	 * */
	public List<Map<String, Object>> queryDisplayByRecommendId(Connection conn,StringBuffer condition)throws SQLException, DataException {
		Dao.Tables.t_weili_display demo = new Dao().new Tables().new t_weili_display();
		
		DataSet ds = demo.open(conn, "*", condition.toString()," addTime desc limit 0 ,4 ", -1, -1);
		ds.tables.get(0).rows.genRowsMap();
			
		return ds.tables.get(0).rows.rowsMap;
	}
	
	/**
	 * 查询一个标杆案例 父id下的首页推荐的前1条记录
	 * */
	public List<Map<String, Object>> queryDisplayByRecommendCase(Connection conn,StringBuffer condition)throws SQLException, DataException {
		Dao.Tables.t_weili_display demo = new Dao().new Tables().new t_weili_display();
		
		DataSet ds = demo.open(conn, "*", condition.toString()," addTime desc limit 0 ,1 ", -1, -1);
		ds.tables.get(0).rows.genRowsMap();
			
		return ds.tables.get(0).rows.rowsMap;
	}
	
	/**
	 * 查询一个 父id下的所有列表页面推荐的1条记录
	 * */
	public Map<String, String> queryDisplayRecommendById(Connection conn,StringBuffer condition)throws SQLException, DataException {
		Dao.Tables.t_weili_display demo = new Dao().new Tables().new t_weili_display();
		
		DataSet ds = demo.open(conn, "*", condition.toString()," addTime desc limit 0 ,1 ", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}
	
	public Map<String,String> queryBrandRecommendedNews(Connection conn,Integer isRecommended) throws SQLException, DataException{
		Dao.Tables.t_weili_display weiliDisplay = new Dao().new Tables().new t_weili_display();
		
		DataSet ds = weiliDisplay.open(conn, "  ", " isRecommended = "+isRecommended, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}
	
	/**
	 * 查询推荐展示内容
	 * */
	public Map<String,String> queryRecommendedDisplay(Connection conn,Integer isRecommended) throws SQLException, DataException{
		Dao.Tables.t_weili_display weiliDisplay = new Dao().new Tables().new t_weili_display();
		
		DataSet ds = weiliDisplay.open(conn, "  ", " isRecommended = "+isRecommended, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}
	/**
	 * 查询推荐最新动态
	 * */
	public Map<String,String> queryRecommendedNewest(Connection conn,Integer isRecommended) throws SQLException, DataException{
		Dao.Tables.t_newest weiliDisplay = new Dao().new Tables().new t_newest();
		
		DataSet ds = weiliDisplay.open(conn, "  ", " isRecommended = "+isRecommended, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}
	
	
	/**
	 * 根据TypeId查询推荐展示内容
	 * */
	public Map<String,String> queryRecommendedDisplayByTypeId(Connection conn,Integer isRecommended,Integer typeId) throws SQLException, DataException{
		Dao.Tables.t_weili_display weiliDisplay = new Dao().new Tables().new t_weili_display();
		
		DataSet ds = weiliDisplay.open(conn, "  ", " isRecommended = "+isRecommended+" and typeId = "+typeId, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}
	
	public List<Map<String, Object>> queryWeiliResearchAll(Connection conn,String fieldList,String condition,String order)throws SQLException, DataException {
		Dao.Tables.t_weili_display demo = new Dao().new Tables().new t_weili_display();
		
		DataSet ds = demo.open(conn, fieldList, condition,order, -1, -1);
		ds.tables.get(0).rows.genRowsMap();
		
		return ds.tables.get(0).rows.rowsMap;
	}
	/**
	 *首页展示最新动态
	 */
	public List<Map<String, Object>> queryNewestIndex(Connection conn,String fieldList,String condition,String order)throws SQLException, DataException {
		Dao.Tables.t_newest demo = new Dao().new Tables().new t_newest();
		
		DataSet ds = demo.open(conn, fieldList, condition,order, -1, -1);
		ds.tables.get(0).rows.genRowsMap();
		
		return ds.tables.get(0).rows.rowsMap;
	}
	
	
	
	/**
	 * 类型查询联动
	* @Title: queryDisplayTypeList
	* @Description: TODO
	* @param conn   数据库连接
	* @param   id
	* @param parentId 父ID
	* @param order_num  类型级别
	* @return
	* @throws SQLException
	* @throws DataException
	* @return List<Map<String,Object>>
	* @throws
	 */
	public List<Map<String, Object>> queryDisplayTypeList(Connection conn,  Long parentId) throws SQLException, DataException{
		Dao.Tables.t_navigationbar twdt = new Dao(). new Tables(). new t_navigationbar();
		StringBuffer condition = new StringBuffer();
		condition.append(" 1=1 ");
//		if (id != null && id > 0) {
//			condition.append(" AND order_num=" + id);
//		}
		if (parentId != null && parentId > 0) {
			condition.append(" AND parentId=" + parentId);
		}
		condition.append(" AND orderName=" + "'二级'");
		DataSet dataSet = twdt.open(conn, "id,name", condition.toString(), "", -1, -1);
		dataSet.tables.get(0).rows.genRowsMap();
		return dataSet.tables.get(0).rows.rowsMap;
	}
}
