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
import com.weili.database.Dao.Views;
import com.weili.database.Dao.Views.v_t_product_parameter;

public class ParameterDao {
	public long addParameter(Connection conn,String name,int sortIndex,int status) throws SQLException{
		Dao.Tables.t_parameter parameter = new Dao().new Tables().new t_parameter();
		
		parameter._name.setValue(name.trim());
		parameter.sortIndex.setValue(sortIndex);
		parameter.status.setValue(status);
		parameter.addTime.setValue(new Date());
		
		return parameter.insert(conn);
	}
	
	public long updateParameter(Connection conn,long id,String name,Integer sortIndex,Integer status) throws SQLException{
		Dao.Tables.t_parameter parameter = new Dao().new Tables().new t_parameter();
		
		if(StringUtils.isNotBlank(name)){
			parameter._name.setValue(name.trim());
		}
		if(sortIndex!=null&&sortIndex>0){
			parameter.sortIndex.setValue(sortIndex);
		}
		if(status!=null&&status>0){
			parameter.status.setValue(status);
		}
		
		return parameter.update(conn, " id = "+id);
	}
	
	public long deleteParameter(Connection conn,String ids) throws SQLException{
		Dao.Tables.t_parameter parameter = new Dao().new Tables().new t_parameter();
		
		return parameter.delete(conn, " id in("+ids+") ");
	}
	
	public Map<String,String> queryParameterById(Connection conn,long id) throws SQLException, DataException{
		Dao.Tables.t_parameter parameter = new Dao().new Tables().new t_parameter();
		
		DataSet ds = parameter.open(conn, "  ", " id = "+id, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}
	
	public List<Map<String, Object>> queryParameterAll(Connection conn,String fieldList,String condition,String order)throws SQLException, DataException {
		Dao.Tables.t_parameter parameter = new Dao().new Tables().new t_parameter();
		
		DataSet ds = parameter.open(conn, fieldList, condition,order, -1, -1);
		
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}
	

	public List<Map<String,Object>> queryProductParameters(Connection conn,String ids) throws SQLException, DataException{
		Dao.Tables.t_parameter parameter = new Dao().new Tables().new t_parameter();
		
		DataSet ds = parameter.open(conn, "  ", " id not in(" + ids+")", "", -1, -1);
		
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}
	
}
