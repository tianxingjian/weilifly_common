package com.kuaiyidian.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

import com.kuaiyidian.database.Dao;
import com.kuaiyidian.database.Dao.Tables;
import com.kuaiyidian.database.Dao.Tables.t_materials_attribute;
import com.shove.data.DataException;
import com.shove.data.DataSet;
import com.shove.util.BeanMapUtils;

public class MaterialsDao {
	
	public long addMaterials(Connection conn,String name,String number,Long productId,String path,String size,Integer sortIndex,Integer status,String seoTitle,String seoKeywords,String seoDescription) throws SQLException{
		Dao.Tables.t_materials materials = new Dao().new Tables().new t_materials();
		
		materials._name.setValue(name);
		materials.number.setValue(number);
		materials.productId.setValue(productId);
		materials.path.setValue(path);
		materials.size.setValue(size);
		materials.sortIndex.setValue(sortIndex);
		materials.status.setValue(status);
		materials.seoTitle.setValue(seoTitle);
		materials.seoKeywords.setValue(seoKeywords);
		materials.seoDescription.setValue(seoDescription);
		materials.addTime.setValue(new Date());
		
		return materials.insert(conn);
	}
	
	public long updateMaterials(Connection conn,long id,String name,String number,Long productId,String path,String size,Integer sortIndex,Integer status,String seoTitle,String seoKeywords,String seoDescription) throws SQLException{
		Dao.Tables.t_materials materials = new Dao().new Tables().new t_materials();
		
		if(StringUtils.isNotBlank(name)){
			materials._name.setValue(name);
		}
		if(StringUtils.isNotBlank(number)){
			materials.number.setValue(number);
		}
		if(productId != null&&productId > 0){
			materials.productId.setValue(productId);
		}
		if(StringUtils.isNotBlank(path)){
			materials.path.setValue(path);
		}
		if(StringUtils.isNotBlank(size)){
			materials.size.setValue(size);
		}
		if(sortIndex != null&&sortIndex > 0){
			materials.sortIndex.setValue(sortIndex);
		}
		if(status != null&&status > 0){
			materials.status.setValue(status);
		}
		if(StringUtils.isNotBlank(seoTitle)){
			materials.seoTitle.setValue(seoTitle);
		}
		if(StringUtils.isNotBlank(seoKeywords)){
			materials.seoKeywords.setValue(seoKeywords);
		}
		if(StringUtils.isNotBlank(seoDescription)){
			materials.seoDescription.setValue(seoDescription);
		}
		
		return materials.update(conn, " id = "+id);
	}
	
	public long deleteMaterials(Connection conn,String ids) throws SQLException{
		Dao.Tables.t_materials materials = new Dao().new Tables().new t_materials();
		
		return materials.delete(conn, " id in("+ids+") ");
	}
	
	public Map<String,String> queryMaterialsById(Connection conn,long id) throws SQLException, DataException{
		Dao.Tables.t_materials materials = new Dao().new Tables().new t_materials();
		DataSet ds = materials.open(conn, "  ", " id = "+id, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}
	public List<Map<String,Object>> queryMaterById(Connection conn,long materialsId) throws SQLException, DataException{
		Dao.Views.v_t_materials_attribute_dateils mate = new Dao().new Views().new v_t_materials_attribute_dateils();
		DataSet ds = mate.open(conn, "  ", " materialsId= "+materialsId, "", -1, -1);
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}
	
	public List<Map<String, Object>> queryMaterialsAll(Connection conn,String fieldList,String condition,String order)throws SQLException, DataException {
		Dao.Tables.t_materials materials = new Dao().new Tables().new t_materials();
		
		DataSet ds = materials.open(conn, fieldList, condition,order, -1, -1);
		
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	} 
	public List<Map<String, Object>> queryAdvertisementAll(Connection conn,String fieldList,String condition,String order)throws SQLException, DataException {
		Dao.Tables.t_advertisement t_advertisement = new Dao().new Tables().new t_advertisement();
		
		DataSet ds = t_advertisement.open(conn, fieldList, condition,order, -1, -1);
		
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	} 
}
