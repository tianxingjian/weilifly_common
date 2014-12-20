package com.weili.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

import com.shove.Convert;
import com.shove.data.DataException;
import com.shove.data.DataSet;
import com.shove.util.BeanMapUtils;
import com.weili.database.Dao;
import com.weili.database.Dao.Tables;
import com.weili.database.Dao.Tables.t_product_category;

public class DownloadDao {
	
	/**
	 * 上传‘下载资料’数据处理方法
	 * @param conn
	 * @param name
	 * @param image
	 * @param path
	 * @param categoryId
	 * @param sortIndex
	 * @param status
	 * @param isRecommend
	 * @param seoTitle
	 * @param seoKeywords
	 * @param seoDescription
	 * */
	public long addDownload(
			Connection conn,String name,String image,String path,Long categoryId,
			Integer sortIndex,Integer status,Integer isRecommend,String seoTitle,
			String seoKeywords,String seoDescription) throws SQLException{
		
		Dao.Tables.t_download td = new Dao().new Tables().new t_download();
		
		td._name.setValue(name);
		td.image.setValue(image);
		td.path.setValue(path);
		td.categoryId.setValue(categoryId);
		td.sortIndex.setValue(sortIndex);
		td.status.setValue(status);
		td.seoTitle.setValue(seoTitle);
		td.seoKeywords.setValue(seoKeywords);
		td.seoDescription.setValue(seoDescription);
		td.addTime.setValue(new Date());
		
		return td.insert(conn);
	}
	
	/**
	 * 修改下载资料 之数据处理 
	 * @return
	 */
	
	public long updateDownload(Connection conn,long id,String name,String image,String path,Long categoryId,Integer sortIndex,Integer status,String seoTitle,String seoKeywords,String seoDescription) throws SQLException{
		Dao.Tables.t_download td = new Dao().new Tables().new t_download();
		
		if(StringUtils.isNotBlank(name)){
			td._name.setValue(name);
		}
		if(StringUtils.isNotBlank(image)){
			td.image.setValue(image);
		}
		if(StringUtils.isNotBlank(path)){
			td.path.setValue(path);
		}
		if(categoryId != null&&categoryId > 0){
			td.categoryId.setValue(categoryId);
		}
		if(sortIndex != null&&sortIndex > 0){
			td.sortIndex.setValue(sortIndex);
		}
		if(status != null&&status > 0){
			td.status.setValue(status);
		}
		if(StringUtils.isNotBlank(seoTitle)){
			td.seoTitle.setValue(seoTitle);
		}
		if(StringUtils.isNotBlank(seoKeywords)){
			td.seoKeywords.setValue(seoKeywords);
		}
		if(StringUtils.isNotBlank(seoDescription)){
			td.seoDescription.setValue(seoDescription);
		}
		
		return td.update(conn, " id = "+id);
	}
	
	
	
	public long deleteDownload(Connection conn,String ids) throws SQLException{
		Dao.Tables.t_download td = new Dao().new Tables().new t_download();
		
		return td.delete(conn, " id in("+ids+") ");
	}
	
	public Map<String,String> queryCoursewareById(Connection conn,long id) throws SQLException, DataException{
		Dao.Tables.t_download courseware = new Dao().new Tables().new t_download();
		
		DataSet ds = courseware.open(conn, "  ", " id = "+id, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}
	
	//通过名字查询分类ID
	public long queryCoursewareByName(Connection conn,String name) throws SQLException, DataException{
		Dao.Tables.t_download_category courseware = new Dao().new Tables().new t_download_category();
		
		DataSet ds = courseware.open(conn, "id", " category_name like '"+name+"'", "", -1, -1);
		return Convert.strToLong(BeanMapUtils.dataSetToMap(ds).get("id"), -1L);
		
	}
	
	
	public List<Map<String, Object>> queryCoursewareAll(Connection conn,String fieldList,String condition,String order)throws SQLException, DataException {
		Dao.Tables.t_download courseware = new Dao().new Tables().new t_download();
		
		DataSet ds = courseware.open(conn, fieldList, condition,order, -1, -1);
		
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}
	
	
	/**
	 * 获取下载资料分类列表 之数据处理
	 * @return
	 */
	public List<Map<String, Object>> queryDownloadCategoryAll(
			Connection conn,String fieldList,String condition)throws SQLException, DataException {
		Dao.Tables.t_download_category productCategory = new Dao().new Tables().new t_download_category();
		
		DataSet ds = productCategory.open(conn, fieldList, condition,"", -1, -1);
		
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}
	
}
