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

public class ServiceTypeDao {
	/**
	 * 添加服务类型
	 * @param conn
	 * @param name
	 * @param sortIndex
	 * @param status
	 * @return
	 * @throws SQLException
	 */
	public long addServiceType(Connection conn,String title,String linkPath,int sortIndex,int status) throws SQLException{
		Dao.Tables.t_service_type serviceType = new Dao().new Tables().new t_service_type();
		serviceType.title.setValue(title);
		serviceType.linkPath.setValue(linkPath);
		serviceType.sortIndex.setValue(sortIndex);
		serviceType.status.setValue(status);
		serviceType.addTime.setValue(new Date());
		return serviceType.insert(conn);
	}
	
	
	
	/**
	 * 修改服务类型
	 * @param conn
	 * @param id
	 * @param name	
	 * @param sortIndex
	 * @param status
	 * @return
	 * @throws SQLException
	 */
	public long updateServiceType(Connection conn,long id,String title,String linkPath, int sortIndex,int status) throws SQLException{
		Dao.Tables.t_service_type serviceType = new Dao().new Tables().new t_service_type();
		if(StringUtils.isNotBlank(title)){
			serviceType.title.setValue(title);
		}
		if(StringUtils.isNotBlank(linkPath)){
			serviceType.linkPath.setValue(linkPath);
		}
		if(sortIndex>0){
			serviceType.sortIndex.setValue(sortIndex);
		}
		if(status>0){
			serviceType.status.setValue(status);
		}
		return serviceType.update(conn, " id = "+id);
	}
	
	
	
	/**
	 * 删除服务类型
	 * @param conn
	 * @param ids
	 * @return
	 * @throws SQLException
	 */
	public long deleteServiceType(Connection conn,String ids) throws SQLException{
		Dao.Tables.t_service_type serviceType = new Dao().new Tables().new t_service_type();
		
		return serviceType.delete(conn, " id in("+ids+") ");
	}
	
	/**
	 * 根据id查询
	 * @param conn
	 * @param id
	 * @return
	 * @throws SQLException
	 * @throws DataException
	 */
	public Map<String,String> queryServiceTypeById(Connection conn,long id) throws SQLException, DataException{
		Dao.Tables.t_service_type serviceType = new Dao().new Tables().new t_service_type();
		
		DataSet ds = serviceType.open(conn, "  ", " id = "+id, "", -1, -1);
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
	public List<Map<String, Object>> queryServiceTypeAll(Connection conn,String fieldList,String condition,String order)throws SQLException, DataException {
		Dao.Tables.t_service_type serviceType = new Dao().new Tables().new t_service_type();
		DataSet ds = serviceType.open(conn, fieldList, condition,order, -1, -1);
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}
	
}
