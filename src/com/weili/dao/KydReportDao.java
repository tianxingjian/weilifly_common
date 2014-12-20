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

public class KydReportDao {
	
	public long addKydReport(Connection conn,String title,String source,Long views,String image,String path,String content,Integer status,Integer sortIndex,String seoTitle,String seoKeywords,String seoDescription,String addTime) throws SQLException{
		Dao.Tables.t_kyd_report kydReport = new Dao().new Tables().new t_kyd_report();
		
		kydReport.title.setValue(title);
		kydReport.source.setValue(source);
		kydReport.image.setValue(image);
		kydReport.path.setValue(path);
		kydReport.content.setValue(content);
		kydReport.status.setValue(status);
		kydReport.sortIndex.setValue(sortIndex);
		kydReport.seoTitle.setValue(seoTitle);
		kydReport.seoKeywords.setValue(seoKeywords);
		kydReport.seoDescription.setValue(seoDescription);
		kydReport.addTime.setValue(addTime);
		
		return kydReport.insert(conn);
	}
	
	public long updateKydReport(Connection conn,long id,String title,String source,Long views,String image,String path,String content,Integer status,Integer sortIndex,String seoTitle,String seoKeywords,String seoDescription,String addTime) throws SQLException{
		Dao.Tables.t_kyd_report kydReport = new Dao().new Tables().new t_kyd_report();
		
		if(StringUtils.isNotBlank(title)){
			kydReport.title.setValue(title);
		}
		if(StringUtils.isNotBlank(source)){
			kydReport.source.setValue(source);
		}
		if(StringUtils.isNotBlank(content)){
			kydReport.content.setValue(content);
		}
		if(StringUtils.isNotBlank(image)){
			kydReport.image.setValue(image);
		}
		if(StringUtils.isNotBlank(path)){
			kydReport.path.setValue(path);
		}
		if(views != null && views > 0){
			kydReport.views.setValue(views);
		}
		if(status != null && status > 0){
			kydReport.status.setValue(status);
		}
		if(sortIndex != null && sortIndex > 0){
			kydReport.sortIndex.setValue(sortIndex);
		}
		if(StringUtils.isNotBlank(seoTitle)){
			kydReport.seoTitle.setValue(seoTitle);
		}
		if(StringUtils.isNotBlank(seoKeywords)){
			kydReport.seoKeywords.setValue(seoKeywords);
		}
		if(StringUtils.isNotBlank(seoDescription)){
			kydReport.seoDescription.setValue(seoDescription);
		}
		if(StringUtils.isNotBlank(addTime)){
			kydReport.addTime.setValue(addTime);
		}
		
		return kydReport.update(conn, " id = "+id);
	}
	
	public long deleteKydReport(Connection conn,String ids) throws SQLException{
		Dao.Tables.t_kyd_report kydReport = new Dao().new Tables().new t_kyd_report();
		
		return kydReport.delete(conn, " id in("+ids+") ");
	}
	
	public Map<String,String> queryKydReportById(Connection conn,long id) throws SQLException, DataException{
		Dao.Tables.t_kyd_report kydReport = new Dao().new Tables().new t_kyd_report();
		
		DataSet ds = kydReport.open(conn, "  ", " id = "+id, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}
	
	public List<Map<String, Object>> queryKydReportAll(Connection conn,String fieldList,String condition,String order)throws SQLException, DataException {
		Dao.Tables.t_kyd_report demo = new Dao().new Tables().new t_kyd_report();
		
		DataSet ds = demo.open(conn, fieldList, condition,order, -1, -1);
		ds.tables.get(0).rows.genRowsMap();
		
		return ds.tables.get(0).rows.rowsMap;
	}
}
