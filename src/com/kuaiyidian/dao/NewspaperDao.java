package com.kuaiyidian.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

import com.kuaiyidian.database.Dao;
import com.shove.data.DataException;
import com.shove.data.DataSet;
import com.shove.util.BeanMapUtils;

public class NewspaperDao {
	
	public long addNewspaper(Connection conn,String name,String image,String path,Integer status,Integer sortIndex,String seoTitle,String seoKeywords,String seoDescription,String addTime) throws SQLException{
		Dao.Tables.t_newspaper newspaper = new Dao().new Tables().new t_newspaper();
		
		newspaper._name.setValue(name);
		newspaper.image.setValue(image);
		newspaper.path.setValue(path);
		newspaper.status.setValue(status);
		newspaper.sortIndex.setValue(sortIndex);
		newspaper.seoTitle.setValue(seoTitle);
		newspaper.seoKeywords.setValue(seoKeywords);
		newspaper.seoDescription.setValue(seoDescription);
		newspaper.addTime.setValue(addTime);
		
		return newspaper.insert(conn);
	}
	
	public long updateNewspaper(Connection conn,long id,String name,String image,String path,Integer status,Integer sortIndex,String seoTitle,String seoKeywords,String seoDescription,String addTime) throws SQLException{
		Dao.Tables.t_newspaper newspaper = new Dao().new Tables().new t_newspaper();
		
		if(StringUtils.isNotBlank(name)){
			newspaper._name.setValue(name);
		}
		if(StringUtils.isNotBlank(image)){
			newspaper.image.setValue(image);
		}
		if(StringUtils.isNotBlank(path)){
			newspaper.path.setValue(path);
		}
		if(status != null&&status > 0){
			newspaper.status.setValue(status);
		}
		if(sortIndex != null&&sortIndex > 0){
			newspaper.sortIndex.setValue(sortIndex);
		}
		if(StringUtils.isNotBlank(seoTitle)){
			newspaper.seoTitle.setValue(seoTitle);
		}
		if(StringUtils.isNotBlank(seoKeywords)){
			newspaper.seoKeywords.setValue(seoKeywords);
		}
		if(StringUtils.isNotBlank(seoDescription)){
			newspaper.seoDescription.setValue(seoDescription);
		}
		if(StringUtils.isNotBlank(addTime)){
			newspaper.addTime.setValue(addTime);
		}
		
		return newspaper.update(conn, " id = "+id);
	}
	
	public long deleteNewspaper(Connection conn,String ids) throws SQLException{
		Dao.Tables.t_newspaper newspaper = new Dao().new Tables().new t_newspaper();
		
		return newspaper.delete(conn, " id in("+ids+") ");
	}
	
	public Map<String,String> queryNewspaperById(Connection conn,long id) throws SQLException, DataException{
		Dao.Tables.t_newspaper newspaper = new Dao().new Tables().new t_newspaper();
		
		DataSet ds = newspaper.open(conn, "  ", " id = "+id, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}
	
	public List<Map<String, Object>> queryNewspaperAll(Connection conn,String fieldList,String condition,String order)throws SQLException, DataException {
		Dao.Tables.t_newspaper newspaper = new Dao().new Tables().new t_newspaper();
		
		DataSet ds = newspaper.open(conn, fieldList, condition,order, -1, -1);
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}
}
