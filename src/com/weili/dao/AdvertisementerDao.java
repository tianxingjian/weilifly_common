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

public class AdvertisementerDao {
	
	public long addAdvertisement(Connection conn,String name,String image,String androidPath,Integer isRecommended,Integer sortIndex,Integer status,String seoTitle,String seoKeywords,String seoDescription,String iosPath) throws SQLException{
		Dao.Tables.t_appadv advertisement = new Dao().new Tables().new t_appadv();
		
		advertisement._name.setValue(name);
		advertisement.image.setValue(image);
//		advertisement.androidPath.setValue(androidPath);
		advertisement.isRecommended.setValue(isRecommended);
		advertisement.sortIndex.setValue(sortIndex);
		advertisement.status.setValue(status);
		advertisement.seoTitle.setValue(seoTitle);
		advertisement.seoKeywords.setValue(seoKeywords);
		advertisement.seoDescription.setValue(seoDescription);
		advertisement.addTime.setValue(new Date());
//		advertisement.iosPath.setValue(iosPath);
		
		return advertisement.insert(conn);
	}
	
	public long updateAdvertisement(Connection conn,long id,String name,String image,String androidPath,Integer isRecommended,Integer sortIndex,Integer status,String seoTitle,String seoKeywords,String seoDescription,String iosPath) throws SQLException{
		Dao.Tables.t_appadv advertisement = new Dao().new Tables().new t_appadv();
		
		if(StringUtils.isNotBlank(name)){
			advertisement._name.setValue(name);
		}
		if(StringUtils.isNotBlank(image)){
			advertisement.image.setValue(image);
		}
//		if(StringUtils.isNotBlank(androidPath)){
//			advertisement.androidPath.setValue(androidPath);
//		}
		if(isRecommended != null&&isRecommended > 0){
			advertisement.isRecommended.setValue(isRecommended);
		}
		if(sortIndex != null&&sortIndex > 0){
			advertisement.sortIndex.setValue(sortIndex);
		}
		if(status != null&&status > 0){
			advertisement.status.setValue(status);
		}
		if(StringUtils.isNotBlank(seoTitle)){
			advertisement.seoTitle.setValue(seoTitle);
		}
		if(StringUtils.isNotBlank(seoKeywords)){
			advertisement.seoKeywords.setValue(seoKeywords);
		}
		if(StringUtils.isNotBlank(seoDescription)){
			advertisement.seoDescription.setValue(seoDescription);
		}
		
//		if(StringUtils.isNotBlank(iosPath)){
//			advertisement.iosPath.setValue(iosPath);
//		}
		
		return advertisement.update(conn, " id = "+id);
	}
	
	public long deleteAdvertisement(Connection conn,String ids) throws SQLException{
		Dao.Tables.t_appadv advertisement = new Dao().new Tables().new t_appadv();
		
		return advertisement.delete(conn, " id in("+ids+") ");
	}
	
	public Map<String,String> queryAdvertisementById(Connection conn,long id) throws SQLException, DataException{
		Dao.Tables.t_appadv advertisement = new Dao().new Tables().new t_appadv();
		
		DataSet ds = advertisement.open(conn, "  ", " id = "+id, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}
	
	public List<Map<String, Object>> queryAdvertisementAll(Connection conn,String fieldList,String condition,String order)throws SQLException, DataException {
		Dao.Tables.t_appadv advertisement = new Dao().new Tables().new t_appadv();
		
		DataSet ds = advertisement.open(conn, fieldList, condition,order, -1, -1);
		
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}
}
