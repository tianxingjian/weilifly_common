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

public class ConfigDao {

	public long addConfig(Connection conn,Integer type,String name,Object var,String title,Integer status){
		Dao.Tables.bt_config bt_config = new Dao().new Tables().new bt_config();
		
		bt_config.type.setValue(type);
		bt_config._name.setValue(name);
		bt_config.var.setValue(var);
		bt_config.title.setValue(title);
		bt_config.status.setValue(status);
		
		return bt_config.insert(conn);
	}
	
	public List<Map<String,Object>> queryConfigByType(Connection conn,int type) throws SQLException, DataException{
		Dao.Tables.bt_config bt_config = new Dao().new Tables().new bt_config();
		DataSet dataSet = bt_config.open(conn, "*", "type = " + type, " id asc ", -1, -1);
		dataSet.tables.get(0).rows.genRowsMap();
		return dataSet.tables.get(0).rows.rowsMap;
	}

	public List<Map<String,Object>> queryProductConfigByType(Connection conn,int type) throws SQLException, DataException{
		Dao.Views.v_t_product_config bt_config = new Dao().new Views().new v_t_product_config();
		DataSet dataSet = bt_config.open(conn, "*", "type = " + type, " id asc ", -1, -1);
		dataSet.tables.get(0).rows.genRowsMap();
		return dataSet.tables.get(0).rows.rowsMap;
	}

	/**
	 * 查询app端关于朵唯信息
	 * @param conn
	 * @param type
	 * @return
	 * @throws SQLException
	 * @throws DataException
	 */
	public List<Map<String,Object>> queryConfigInfo(Connection conn,int type,Integer status) throws SQLException, DataException{
		Dao.Tables.bt_config bt_config = new Dao().new Tables().new bt_config();
		DataSet dataSet = bt_config.open(conn, " id,name ", "type = " + type +" and `status` = "+status, " id asc ", -1, -1);
		dataSet.tables.get(0).rows.genRowsMap();
		return dataSet.tables.get(0).rows.rowsMap;
	}
	
	public Map<String,String> queryConfigById(Connection conn,Long id) throws SQLException, DataException{
		Dao.Tables.bt_config bt_config = new Dao().new Tables().new bt_config();
		DataSet dataSet = bt_config.open(conn, "*", "id = " + id, "", -1, -1);
		return BeanMapUtils.dataSetToMap(dataSet);
	}

	public Map<String,String> queryProductConfigById(Connection conn,Long id) throws SQLException, DataException{
		Dao.Views.v_t_product_config bt_config = new Dao().new Views().new v_t_product_config();
		DataSet dataSet = bt_config.open(conn, "*", "id = " + id, "", -1, -1);
		return BeanMapUtils.dataSetToMap(dataSet);
	}
	
	public long updateConfigById(Connection conn, Long id,Integer type,String name,Object var,String title,Integer status) throws SQLException{
		StringBuffer condition = new StringBuffer();
		condition.append("id="+id);
		Dao.Tables.bt_config bt_config = new Dao().new Tables().new bt_config();
		
		if(type!=null&&type>0){
			bt_config.type.setValue(type);
		}
		if(StringUtils.isNotBlank(name)){
			bt_config._name.setValue(name.trim());
		}
		if(var!=null){
			bt_config.var.setValue(var);
		}
		if(StringUtils.isNotBlank(title)){
			bt_config.title.setValue(title);
		}
		if(status != null&&status > 0){
			bt_config.status.setValue(status);
		}
		long result = bt_config.update(conn, condition.toString());
		return result;
	}
	
	/**
	 * 根据ID查询儿童类应用隐私协议
	 * @param id 配置ID
	 * @return
	 * @throws SQLException
	 * @throws DataException
	 */
	public Map<String, String> queryConfigById(Connection conn,Integer type) throws SQLException, DataException{
		Dao.Tables.bt_config bt_config = new Dao().new Tables().new bt_config();
		DataSet dataSet = bt_config.open(conn, "*", " type = " + type, "", -1, -1);
		return BeanMapUtils.dataSetToMap(dataSet);
	}
	

	/**
	 * 修改配置信息
	 * @param conn
	 * @param id
	 * @param description
	 * @param content
	 * @return
	 * @throws SQLException 
	 */
	public Long updateConfigInfoById(Connection conn, long id, String name, String vars,String title,Integer status) throws SQLException {
		Dao.Tables.bt_config bt_config = new Dao().new Tables().new bt_config();
		if(StringUtils.isNotBlank(vars)){
			bt_config.var.setValue(vars);
		}
		if(StringUtils.isNotBlank(name)){
			bt_config._name.setValue(name);
		}
		if(StringUtils.isNotBlank(title)){
			bt_config.title.setValue(title);
		}
		if(status!=null&&status>0){
			bt_config.status.setValue(status);
		}
	
		
		return bt_config.update(conn, " id =" + id);
	}
	
}
