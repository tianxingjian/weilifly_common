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

public class WebDistributeTypeDao {
	
	public long addWebDistributeType(Connection conn,String title,int sortIndex,int status) throws SQLException{
		Dao.Tables.t_web_distribute_type webDistributeType = new Dao().new Tables().new t_web_distribute_type();
		webDistributeType.title.setValue(title);
		webDistributeType.sortIndex.setValue(sortIndex);
		webDistributeType.status.setValue(status);
		webDistributeType.addTime.setValue(new Date());
		return webDistributeType.insert(conn);
	}
	
	public long updateWebDistributeType(Connection conn,long id,String title,int sortIndex,int status) throws SQLException{
		Dao.Tables.t_web_distribute_type webDistributeType = new Dao().new Tables().new t_web_distribute_type();
		if(StringUtils.isNotBlank(title)){
			webDistributeType.title.setValue(title);
		}
		if(sortIndex>0){
			webDistributeType.sortIndex.setValue(sortIndex);
		}
		if(status>0){
			webDistributeType.status.setValue(status);
		}
		return webDistributeType.update(conn, " id = "+id);
	}
	
	public long deleteWebDistributeType(Connection conn,String ids) throws SQLException{
		Dao.Tables.t_web_distribute_type webDistributeType = new Dao().new Tables().new t_web_distribute_type();
		return webDistributeType.delete(conn, " id in("+ids+") ");
	}
	
	public Map<String,String> queryWebDistributeTypeById(Connection conn,long id) throws SQLException, DataException{
		Dao.Tables.t_web_distribute_type webDistributeType = new Dao().new Tables().new t_web_distribute_type();
		DataSet ds = webDistributeType.open(conn, "  ", " id = "+id, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}
	
	public List<Map<String, Object>> queryWebDistributeTypeAll(Connection conn,String fieldList,String condition,String order)throws SQLException, DataException {
		Dao.Tables.t_web_distribute_type webDistributeType = new Dao().new Tables().new t_web_distribute_type();
		DataSet ds = webDistributeType.open(conn, fieldList, condition,order, -1, -1);
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}
	
}
