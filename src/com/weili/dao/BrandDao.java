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

public class BrandDao {
	
	public long addBrand(Connection conn,String name,String content,Integer isLevel,Integer type,Long parentId,Integer sortIndex,Integer status,String seoTitle,String seoKeywords,String seoDescription) throws SQLException{
		Dao.Tables.t_brand brand = new Dao().new Tables().new t_brand();
		
		brand._name.setValue(name);
		brand.content.setValue(content);
		brand.isLevel.setValue(isLevel);
		brand.type.setValue(type);
		brand.parentId.setValue(parentId);
		brand.sortIndex.setValue(sortIndex);
		brand.status.setValue(status);
		brand.seoTitle.setValue(seoTitle);
		brand.seoKeywords.setValue(seoKeywords);
		brand.seoDescription.setValue(seoDescription);
		brand.addTime.setValue(new Date());
		
		return brand.insert(conn);
	}
	
	public long updateBrand(Connection conn,long id,String name,String content,Integer isLevel,Integer type,Long parentId,Integer sortIndex,Integer status,String seoTitle,String seoKeywords,String seoDescription) throws SQLException{
		Dao.Tables.t_brand brand = new Dao().new Tables().new t_brand();
		
		if(StringUtils.isNotBlank(name)){
			brand._name.setValue(name);
		}
		if(StringUtils.isNotBlank(content)){
			brand.content.setValue(content);
		}
		if(isLevel != null&&isLevel > 0){
			brand.isLevel.setValue(isLevel);
		}
		if(type != null){
			brand.type.setValue(type);
		}
		if(parentId != null){
			brand.parentId.setValue(parentId);
		}
		if(sortIndex != null&&sortIndex > 0){
			brand.sortIndex.setValue(sortIndex);
		}
		if(status != null&&status > 0){
			brand.status.setValue(status);
		}
		if(StringUtils.isNotBlank(seoTitle)){
			brand.seoTitle.setValue(seoTitle);
		}
		if(StringUtils.isNotBlank(seoKeywords)){
			brand.seoKeywords.setValue(seoKeywords);
		}
		if(StringUtils.isNotBlank(seoDescription)){
			brand.seoDescription.setValue(seoDescription);
		}
		
		return brand.update(conn, " id = "+id);
	}
	
	public long deleteBrand(Connection conn,String ids) throws SQLException{
		Dao.Tables.t_brand brand = new Dao().new Tables().new t_brand();
		
		return brand.delete(conn, " id in("+ids+") ");
	}
	
	public Map<String,String> queryBrandById(Connection conn,long id) throws SQLException, DataException{
		Dao.Tables.t_brand brand = new Dao().new Tables().new t_brand();
		
		DataSet ds = brand.open(conn, "  ", " id = "+id, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}
	
	public List<Map<String,Object>> queryBrandAll(Connection conn,String fieldList,String condition,String order) throws SQLException, DataException{
		Dao.Tables.t_brand brand = new Dao().new Tables().new t_brand();
		
		DataSet ds = brand.open(conn, fieldList, condition,order, -1, -1);
		
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}
}
