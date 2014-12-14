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

public class DevelopmentDao {
	
	public long addDevelopment(Connection conn,String title,String content,Integer status,Integer sortIndex,String seoTitle,String seoKeywords,String seoDescription) throws SQLException{
		Dao.Tables.t_development development = new Dao().new Tables().new t_development();
		
		development.title.setValue(title);
		development.content.setValue(content);
		development.status.setValue(status);
		development.sortIndex.setValue(sortIndex);
		development.seoTitle.setValue(seoTitle);
		development.seoKeywords.setValue(seoKeywords);
		development.seoDescription.setValue(seoDescription);
		development.addTime.setValue(new Date());
		
		return development.insert(conn);
	}
	
	public long updateDevelopment(Connection conn,long id,String title,String content,Integer status,Integer sortIndex,String seoTitle,String seoKeywords,String seoDescription) throws SQLException{
		Dao.Tables.t_development development = new Dao().new Tables().new t_development();
		
		if(StringUtils.isNotBlank(title)){
			development.title.setValue(title);
		}
		if(StringUtils.isNotBlank(title)){
			development.content.setValue(content);
		}
		if(status != null&&status > 0){
			development.status.setValue(status);
		}
		if(sortIndex != null&& sortIndex > 0){
			development.sortIndex.setValue(sortIndex);
		}
		if(StringUtils.isNotBlank(seoTitle)){
			development.seoTitle.setValue(seoTitle);
		}
		if(StringUtils.isNotBlank(seoKeywords)){
			development.seoKeywords.setValue(seoKeywords);
		}
		if(StringUtils.isNotBlank(seoDescription)){
			development.seoDescription.setValue(seoDescription);
		}
		
		return development.update(conn, " id = "+id);
	}
	
	public long deleteDevelopment(Connection conn,String ids) throws SQLException{
		Dao.Tables.t_development development = new Dao().new Tables().new t_development();
		
		return development.delete(conn, " id in("+ids+") ");
	}
	
	public Map<String,String> queryDevelopmentById(Connection conn,long id) throws SQLException, DataException{
		Dao.Tables.t_development development = new Dao().new Tables().new t_development();
		
		DataSet ds = development.open(conn, "  ", " id = "+id, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}
	
	public List<Map<String, Object>> queryDevelopmentAll(Connection conn,String fieldList,String condition,String order)throws SQLException, DataException {
		Dao.Tables.t_development development = new Dao().new Tables().new t_development();
		DataSet ds = development.open(conn, fieldList, condition,order, -1, -1);
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}
}
