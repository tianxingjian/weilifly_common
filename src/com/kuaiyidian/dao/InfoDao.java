package com.kuaiyidian.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

import com.kuaiyidian.database.Dao;
import com.shove.data.DataException;
import com.shove.data.DataSet;
import com.shove.util.BeanMapUtils;

public class InfoDao {
	
	/**
	 * 添加底部信息
	 * @param conn
	 * @param name
	 * @param sortIndex
	 * @param status
	 * @return
	 * @throws SQLException
	 */
	public long addInfo(Connection conn,String name,int sortIndex,int status) throws SQLException{
		Dao.Tables.t_info info = new Dao().new Tables().new t_info();
		info._name.setValue(name);
		info.sortIndex.setValue(sortIndex);
		info.status.setValue(status);
		info.addTime.setValue(new Date());
		return info.insert(conn);
	}
	
	
	
	/**
	 * 修改底部信息
	 * @param conn
	 * @param id
	 * @param name	
	 * @param sortIndex
	 * @param status
	 * @return
	 * @throws SQLException
	 */
	public long updateInfo(Connection conn,long id,String name,int sortIndex,int status) throws SQLException{
		Dao.Tables.t_info info = new Dao().new Tables().new t_info();
		if(StringUtils.isNotBlank(name)){
			info._name.setValue(name);
		}
		if(sortIndex>0){
			info.sortIndex.setValue(sortIndex);
		}
		if(status>0){
			info.status.setValue(status);
		}
		return info.update(conn, " id = "+id);
	}
	
	
	
	/**
	 * 删除底部信息
	 * @param conn
	 * @param ids
	 * @return
	 * @throws SQLException
	 */
	public long deleteInfo(Connection conn,String ids) throws SQLException{
		Dao.Tables.t_info info = new Dao().new Tables().new t_info();
		
		return info.delete(conn, " id in("+ids+") ");
	}
	
	/**
	 * 根据id查询
	 * @param conn
	 * @param id
	 * @return
	 * @throws SQLException
	 * @throws DataException
	 */
	public Map<String,String> queryInfoById(Connection conn,long id) throws SQLException, DataException{
		Dao.Tables.t_info info = new Dao().new Tables().new t_info();
		
		DataSet ds = info.open(conn, "  ", " id = "+id, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}
	
	
	/**
	 * 根据条件查询
	 * @param conn
	 * @param fieldList
	 * @param condition
	 * @param order
	 * @return
	 * @throws SQLException
	 * @throws DataException
	 */
	public List<Map<String, Object>> queryInfoAll(Connection conn,String fieldList,String condition,String order)throws SQLException, DataException {
		Dao.Tables.t_info info = new Dao().new Tables().new t_info();
		DataSet ds = info.open(conn, fieldList, condition,order, -1, -1);
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}
}
