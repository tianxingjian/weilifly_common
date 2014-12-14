package com.kuaiyidian.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

import com.kuaiyidian.database.Dao;
import com.kuaiyidian.database.Dao.Tables;
import com.shove.data.DataException;
import com.shove.data.DataSet;
import com.shove.util.BeanMapUtils;

public class UpdateProgramDao {
	
	public long addUpdateProgram(Connection conn,String name,String image,String path,Long categoryId,Long productId,Integer sortIndex,Integer status,String seoTitle,String seoKeywords,String seoDescription) throws SQLException{
		Dao.Tables.t_update_program updateProgram = new Dao().new Tables().new t_update_program();
		
		updateProgram._name.setValue(name);
		updateProgram.image.setValue(image);
		updateProgram.path.setValue(path);
		updateProgram.categoryId.setValue(categoryId);
		updateProgram.productId.setValue(productId);
		updateProgram.sortIndex.setValue(sortIndex);
		updateProgram.status.setValue(status);
		updateProgram.seoTitle.setValue(seoTitle);
		updateProgram.seoKeywords.setValue(seoKeywords);
		updateProgram.seoDescription.setValue(seoDescription);
		updateProgram.addTime.setValue(new Date());
		
		return updateProgram.insert(conn);
	}
	
	public long updateUpdateProgram(Connection conn,long id,String name,String image,String path,Long categoryId,Long productId,Integer sortIndex,Integer status,String seoTitle,String seoKeywords,String seoDescription) throws SQLException{
		Dao.Tables.t_update_program updateProgram = new Dao().new Tables().new t_update_program();
		
		if(StringUtils.isNotBlank(name)){
			updateProgram._name.setValue(name);
		}
		if(StringUtils.isNotBlank(image)){
			updateProgram.image.setValue(image);
		}
		if(StringUtils.isNotBlank(path)){
			updateProgram.path.setValue(path);
		}
		if(categoryId != null&&categoryId > 0){
			updateProgram.categoryId.setValue(categoryId);
		}
		if(productId != null&&productId > 0){//关联产品型号，预留
			updateProgram.productId.setValue(productId);
		}
		if(sortIndex != null&&sortIndex > 0){
			updateProgram.sortIndex.setValue(sortIndex);
		}
		if(status != null&&status > 0){
			updateProgram.status.setValue(status);
		}
		if(StringUtils.isNotBlank(seoTitle)){
			updateProgram.seoTitle.setValue(seoTitle);
		}
		if(StringUtils.isNotBlank(seoKeywords)){
			updateProgram.seoKeywords.setValue(seoKeywords);
		}
		if(StringUtils.isNotBlank(seoDescription)){
			updateProgram.seoDescription.setValue(seoDescription);
		}
		
		return updateProgram.update(conn, " id = "+id);
	}
	
	public long deleteUpdateProgram(Connection conn,String ids) throws SQLException{
		Dao.Tables.t_update_program updateProgram = new Dao().new Tables().new t_update_program();
		
		return updateProgram.delete(conn, " id in("+ids+") ");
	}
	
	public Map<String,String> queryUpdateProgramById(Connection conn,long id) throws SQLException, DataException{
		Dao.Tables.t_update_program updateProgram = new Dao().new Tables().new t_update_program();
		
		DataSet ds = updateProgram.open(conn, "  ", " id = "+id, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}
	
	public List<Map<String, Object>> queryUpdateProgramAll(Connection conn,String fieldList,String condition,String order)throws SQLException, DataException {
		Dao.Tables.t_update_program updateProgram = new Dao().new Tables().new t_update_program();
		
		DataSet ds = updateProgram.open(conn, fieldList, condition,order, -1, -1);
		
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}
}
