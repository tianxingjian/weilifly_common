package com.kuaiyidian.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.kuaiyidian.database.Dao;
import com.kuaiyidian.database.Dao.Tables;
import com.shove.data.DataException;
import com.shove.data.DataSet;
import com.shove.util.BeanMapUtils;

public class DemoDao {
	
	public long addDemo(Connection conn) throws SQLException{
		Dao.Tables.t_demo demo = new Dao().new Tables().new t_demo();
		
		return demo.insert(conn);
	}
	
	public long updateDemo(Connection conn,long id) throws SQLException{
		Dao.Tables.t_demo demo = new Dao().new Tables().new t_demo();
		
		return demo.update(conn, " id = "+id);
	}
	
	public long deleteDemo(Connection conn,String ids) throws SQLException{
		Dao.Tables.t_demo demo = new Dao().new Tables().new t_demo();
		
		return demo.delete(conn, " id in("+ids+") ");
	}
	
	public Map<String,String> queryDemoById(Connection conn,long id) throws SQLException, DataException{
		Dao.Tables.t_demo demo = new Dao().new Tables().new t_demo();
		
		DataSet ds = demo.open(conn, "  ", " id = "+id, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}
	
	public List<Map<String, Object>> queryDemoAll(Connection conn,String fieldList,String condition,String order)throws SQLException, DataException {
		Dao.Tables.t_demo demo = new Dao().new Tables().new t_demo();
		DataSet ds = demo.open(conn, fieldList, condition,order, -1, -1);
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}
}
