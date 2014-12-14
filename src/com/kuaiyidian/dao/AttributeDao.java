package com.kuaiyidian.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

import com.kuaiyidian.database.Dao;
import com.shove.data.DataException;
import com.shove.data.DataSet;
import com.shove.util.BeanMapUtils;

public class AttributeDao {
	
	public long addAttribute(Connection conn,String name,Long parentId,Integer sortIndex,Integer status,String productIds) throws SQLException{
		Dao.Tables.t_attribute attribute = new Dao().new Tables().new t_attribute();
		
		attribute._name.setValue(name);
		attribute.parentId.setValue(parentId);
		attribute.sortIndex.setValue(sortIndex);
		attribute.status.setValue(status);
		attribute.addTime.setValue(new Date());
		attribute.productIds.setValue(productIds);
		
		return attribute.insert(conn);
	}
	
	public long updateAttribute(Connection conn,long id,String name,Long parentId,Integer sortIndex,Integer status,String productIds) throws SQLException{
		Dao.Tables.t_attribute attribute = new Dao().new Tables().new t_attribute();
		
		if(StringUtils.isNotBlank(name)){
			attribute._name.setValue(name);
		}

		if(StringUtils.isNotBlank(productIds)){
			attribute.productIds.setValue(productIds);
		}
		
		if(parentId != null){
			attribute.parentId.setValue(parentId);
		}
		if(sortIndex != null&&sortIndex > 0){
			attribute.sortIndex.setValue(sortIndex);
		}
		if(status != null&&status > 0){
			attribute.status.setValue(status);
		}
		
		return attribute.update(conn, " id = "+id);
	}
	
	public long deleteAttribute(Connection conn,String ids) throws SQLException{
		Dao.Tables.t_attribute attribute = new Dao().new Tables().new t_attribute();
		
		return attribute.delete(conn, " id in("+ids+") ");
	}
	
	public Map<String,String> queryAttributeById(Connection conn,long id) throws SQLException, DataException{
		Dao.Tables.t_attribute attribute = new Dao().new Tables().new t_attribute();
		
		DataSet ds = attribute.open(conn, "  ", " id = "+id, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}
	
	public List<Map<String, Object>> queryAttributeAll(Connection conn,String fieldList,String condition,String order)throws SQLException, DataException {
		Dao.Tables.t_attribute attribute = new Dao().new Tables().new t_attribute();
		
		DataSet ds = attribute.open(conn, fieldList, condition,order, -1, -1);
		
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}

	public List<Map<String,Object>> queryAttributeChild(Connection conn,String materialsIds,Integer status) throws Exception{
		
		Dao.Views.v_t_attribute_materials attribute = new Dao().new Views().new v_t_attribute_materials();
		
		StringBuffer condition = new StringBuffer();
		
		condition.append("1=1");
		
		if(StringUtils.isNotBlank(materialsIds)){
			condition.append(" and materialsId in("+materialsIds+")");
		}
		if(status != null&&status > 0){
			condition.append(" and childStatus = "+status);
		}
		
		DataSet ds = attribute.open(conn, "materialsId,attributeId,childName,parentId", condition.toString(), "childIndex asc", -1, -1);
		
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
		
	}

	public List<Map<String,Object>> queryAttributeParent(Connection conn,String materialsIds,Integer status) throws Exception{
		
		Dao.Views.v_t_attribute_materials attribute = new Dao().new Views().new v_t_attribute_materials();
		
		StringBuffer condition = new StringBuffer();
		
		condition.append("1=1");
		
		if(StringUtils.isNotBlank(materialsIds)){
			condition.append(" and materialsId in("+materialsIds+")");
		}
		if(status != null&&status > 0){
			condition.append(" and parentStatus = "+status);
		}
		
		DataSet ds = attribute.open(conn, "materialsId,apId,parentName", condition.toString(), "parentIndex asc", -1, -1);
		
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}
	
	public List<Map<String,Object>> queryMaterialsAttributes(Connection conn,String ids) throws SQLException, DataException{
		Dao.Tables.t_attribute attribute = new Dao().new Tables().new t_attribute();
		
		DataSet ds = attribute.open(conn, "  ", " id not in("+ids+")", "sortIndex asc", -1, -1);
		
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}

	public List<Map<String,Object>> queryAttributes(Connection conn,String ids) throws SQLException, DataException{
		Dao.Tables.t_attribute attribute = new Dao().new Tables().new t_attribute();
		
		DataSet ds = attribute.open(conn, "  ", " id in("+ids+")", "sortIndex asc", -1, -1);
		
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}

	public List<Map<String,Object>> queryAttributesByParentId(Connection conn,String ids) throws SQLException, DataException{
		Dao.Tables.t_attribute attribute = new Dao().new Tables().new t_attribute();
		
		DataSet ds = attribute.open(conn, "  ", " (id in("+ids+")) or (parentId in ("+ids+"))", "", -1, -1);
		
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}
}
