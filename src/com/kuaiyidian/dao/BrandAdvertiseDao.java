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

public class BrandAdvertiseDao {
	
	public long addBrandAdvertise(Connection conn,String title,Long views,String image,String path,Integer status,Integer sortIndex,String seoTitle,String seoKeywords,String seoDescription) throws SQLException{
		Dao.Tables.t_brand_advertise brandAdvertise = new Dao().new Tables().new t_brand_advertise();
		
		brandAdvertise.title.setValue(title);
		brandAdvertise.image.setValue(image);
		brandAdvertise.path.setValue(path);
		brandAdvertise.status.setValue(status);
		brandAdvertise.sortIndex.setValue(sortIndex);
		brandAdvertise.seoTitle.setValue(seoTitle);
		brandAdvertise.seoKeywords.setValue(seoKeywords);
		brandAdvertise.seoDescription.setValue(seoDescription);
		brandAdvertise.addTime.setValue(new Date());
		
		return brandAdvertise.insert(conn);
	}
	
	public long updateBrandAdvertise(Connection conn,long id,String title,Long views,String image,String path,Integer status,Integer sortIndex,String seoTitle,String seoKeywords,String seoDescription) throws SQLException{
		Dao.Tables.t_brand_advertise brandAdvertise = new Dao().new Tables().new t_brand_advertise();
		
		if(StringUtils.isNotBlank(title)){
			brandAdvertise.title.setValue(title);
		}
		if(StringUtils.isNotBlank(image)){
			brandAdvertise.image.setValue(image);
		}
		if(StringUtils.isNotBlank(path)){
			brandAdvertise.path.setValue(path);
		}
		if(views != null && views > 0){
			brandAdvertise.views.setValue(views);
		}
		if(status != null && status > 0){
			brandAdvertise.status.setValue(status);
		}
		if(sortIndex != null && sortIndex > 0){
			brandAdvertise.sortIndex.setValue(sortIndex);
		}
		if(StringUtils.isNotBlank(seoTitle)){
			brandAdvertise.seoTitle.setValue(seoTitle);
		}
		if(StringUtils.isNotBlank(seoKeywords)){
			brandAdvertise.seoKeywords.setValue(seoKeywords);
		}
		if(StringUtils.isNotBlank(seoDescription)){
			brandAdvertise.seoDescription.setValue(seoDescription);
		}
		
		return brandAdvertise.update(conn, " id = "+id);
	}
	
	public long deleteBrandAdvertise(Connection conn,String ids) throws SQLException{
		Dao.Tables.t_brand_advertise brandAdvertise = new Dao().new Tables().new t_brand_advertise();
		
		return brandAdvertise.delete(conn, " id in("+ids+") ");
	}
	
	public Map<String,String> queryBrandAdvertiseById(Connection conn,long id) throws SQLException, DataException{
		Dao.Tables.t_brand_advertise brandAdvertise = new Dao().new Tables().new t_brand_advertise();
		
		DataSet ds = brandAdvertise.open(conn, "  ", " id = "+id, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}
	
	public List<Map<String, Object>> queryBrandAdvertiseAll(Connection conn,String fieldList,String condition,String order)throws SQLException, DataException {
		Dao.Tables.t_brand_advertise demo = new Dao().new Tables().new t_brand_advertise();
		
		DataSet ds = demo.open(conn, fieldList, condition,order, -1, -1);
		ds.tables.get(0).rows.genRowsMap();
		
		return ds.tables.get(0).rows.rowsMap;
	}
}
