package com.kuaiyidian.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

import com.kuaiyidian.database.Dao;
import com.shove.data.DataException;
import com.shove.data.DataSet;
import com.shove.util.BeanMapUtils;

public class MaterialsAttributeDao {
	
	public long addMaterialsAttribute(Connection conn,Long attributeId,Long materialsId) throws SQLException{
		Dao.Tables.t_materials_attribute materialsAttribute = new Dao().new Tables().new t_materials_attribute();
		
		materialsAttribute.attributeId.setValue(attributeId);
		materialsAttribute.materialsId.setValue(materialsId);
		
		return materialsAttribute.insert(conn);
	}
	
	public long deleteAttributeId(Connection conn,Long materialsId) throws SQLException{
		Dao.Tables.t_materials_attribute materialsAttribute = new Dao().new Tables().new t_materials_attribute();
		
		return materialsAttribute.delete(conn, " materialsId  ="+materialsId+" ");
	}
	
	public long upateMaterialsAttribute(Connection conn,Long id,Long attributeId,Long materialsId) throws SQLException{
		Dao.Tables.t_materials_attribute materialsAttribute = new Dao().new Tables().new t_materials_attribute();
		
		materialsAttribute.attributeId.setValue(attributeId);
		materialsAttribute.materialsId.setValue(materialsId);
		
		return materialsAttribute.update(conn, " id="+id);
	}
	
	public long updateMaterialsAttribute(Connection conn,long id,Long attributeId,Long materialsId) throws SQLException{
		Dao.Tables.t_materials_attribute materialsAttribute = new Dao().new Tables().new t_materials_attribute();
		
		if(attributeId != null&& attributeId > 0){
			materialsAttribute.attributeId.setValue(attributeId);
		}
		if(materialsId != null&&materialsId > 0){
			materialsAttribute.materialsId.setValue(materialsId);
		}
		
		return materialsAttribute.update(conn, " id = "+id);
	}
	
	public long deleteMaterialsAttribute(Connection conn,String ids) throws SQLException{
		Dao.Tables.t_materials_attribute materialsAttribute = new Dao().new Tables().new t_materials_attribute();
		
		return materialsAttribute.delete(conn, " id in("+ids+") ");
	}
	
	public Map<String,String> queryMaterialsAttributeById(Connection conn,long id) throws SQLException, DataException{
		Dao.Views.v_t_materials_attribute materialsAttribute = new Dao().new Views().new v_t_materials_attribute();
		
		DataSet ds = materialsAttribute.open(conn, "  ", " id = "+id, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}
	
	public List<Map<String,Object>> queryMaterialsAttributeAll(Connection conn,Long materialsId) throws SQLException, DataException{
		Dao.Views.v_t_materials_attribute materialsAttribute = new Dao().new Views().new v_t_materials_attribute();
		
		DataSet ds = materialsAttribute.open(conn, "  ", "materialsId = "+materialsId, "", -1, -1);
		
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}
}
