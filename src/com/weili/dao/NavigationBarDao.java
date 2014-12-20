package com.weili.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

import com.weili.database.Dao;
import com.weili.database.Dao.Tables;
import com.weili.database.Dao.Tables.t_navigationbar;
import com.weili.database.Dao.Tables.t_role;
import com.shove.data.DataException;
import com.shove.data.DataSet;
import com.shove.util.BeanMapUtils;

public class NavigationBarDao {
	
	/***
	 * 添加NavigationBar
	 * @param conn
	 * @param name
	 * @param parentId
	 * @param enable
	 * @param url
	 * @param type
	 * @param sortIndex
	 * @param mark
	 * @return
	 * @throws SQLException
	 */
	public long addNavigationBar(Connection conn, String name,String orderName, long parentId,int enable,String url,
			int type,int sortIndex,String mark)
			throws SQLException {
		Dao.Tables.t_navigationbar navigationBar = new Dao().new Tables().new t_navigationbar();

		navigationBar._name.setValue(name);
		navigationBar.orderName.setValue(orderName);
		navigationBar.parentId.setValue(parentId);
		navigationBar.enable.setValue(enable);
		navigationBar.url.setValue(url);
		navigationBar.type.setValue(type);
		navigationBar.sortIndex.setValue(sortIndex);
		navigationBar.addTime.setValue(new Date());
		navigationBar.mark.setValue(mark);

		return navigationBar.insert(conn);
	}

	/**
	 * 修改NavigationBar
	 * @param conn
	 * @param id
	 * @param name
	 * @param parentId
	 * @param enable
	 * @param url
	 * @param type
	 * @param sortIndex
	 * @param mark
	 * @return
	 * @throws SQLException
	 */
	public long updateNavigationBar(Connection conn, long id, String name,String orderName,
			long parentId,int enable, String url, int type, int sortIndex, String mark)
			throws SQLException {
		Dao.Tables.t_navigationbar navigationBar = new Dao().new Tables().new t_navigationbar();
		if (StringUtils.isNotBlank(name)) {
			navigationBar._name.setValue(name);
		}
		if (StringUtils.isNotBlank(orderName)) {
			navigationBar.orderName.setValue(orderName);
		}
		if (parentId>0) {
			navigationBar.parentId.setValue(parentId);
		}
		if (enable>0) {
			navigationBar.enable.setValue(enable);
		}
		if(StringUtils.isNotBlank(url)){
			navigationBar.url.setValue(url);
		}
		if (type > 0) {
			navigationBar.type.setValue(type);
		}
		if (sortIndex > 0) {
			navigationBar.sortIndex.setValue(sortIndex);
		}
		if(StringUtils.isNotBlank(mark)){
			navigationBar.mark.setValue(mark);
		}
		navigationBar.addTime.setValue(new Date());
		Long returnId = navigationBar.update(conn, " id = " + id);
		return returnId;
	}

	/**
	 * 删除
	 * @param conn
	 * @param ids
	 * @return
	 * @throws SQLException
	 */
	public long deleteNavigationBar(Connection conn, String ids) throws SQLException {
		Dao.Tables.t_navigationbar navigationBar = new Dao().new Tables().new t_navigationbar();

		return navigationBar.delete(conn, " id in(" + ids + ") ");
	}

	/**
	 * 根据id查询
	 * @param conn
	 * @param id
	 * @return
	 * @throws SQLException
	 * @throws DataException
	 */
	public Map<String, String> queryNavigationBarById(Connection conn, long id)
			throws SQLException, DataException {
		Dao.Tables.t_navigationbar navigationBar = new Dao().new Tables().new t_navigationbar();
		DataSet ds = navigationBar.open(conn, "  ", " id = " + id, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}
	/**
	 * 根据id 和 enable查询
	 * @param conn
	 * @param id
	 * @return
	 * @throws SQLException
	 * @throws DataException
	 */
	public Map<String, String> queryNavigationBarByIdAndEnable(Connection conn, long id,int enable)
			throws SQLException, DataException {
		Dao.Tables.t_navigationbar navigationBar = new Dao().new Tables().new t_navigationbar();
		DataSet ds = navigationBar.open(conn, "  ", " id = " + id + "and enable = " + enable, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}
	/**
	 * 根据parentId查询
	 * @param conn
	 * @param id
	 * @return
	 * @throws SQLException
	 * @throws DataException
	 */
	public Map<String, String> queryNavigationBarByParentId(Connection conn, long parentId)
			throws SQLException, DataException {
		Dao.Tables.t_navigationbar navigationBar = new Dao().new Tables().new t_navigationbar();
		DataSet ds = navigationBar.open(conn, "  ", " parentId = " + parentId, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}
	/**
	 * 根据parentId 和 enable查询
	 * @param conn
	 * @param id
	 * @return
	 * @throws SQLException
	 * @throws DataException
	 */
	public Map<String, String> queryNavigationBarByParentIdAndEnable(Connection conn, long parentId,int enable)
			throws SQLException, DataException {
		Dao.Tables.t_navigationbar navigationBar = new Dao().new Tables().new t_navigationbar();
		DataSet ds = navigationBar.open(conn, "  ", " parentId = " + parentId + "and enable = " + enable, "", -1, -1);
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
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> queryNavigationBarAll(Connection conn,
			String fieldList, String condition, String order)
			throws SQLException, DataException {
		Dao.Tables.t_navigationbar navigationBar = new Dao().new Tables().new t_navigationbar();
		DataSet ds = navigationBar.open(conn, fieldList, condition, order, -1, -1);
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}
	/**
	 * 按条件查询
	 * @param conn
	 * @param userName
	 * @param orderName
	 * @param enable
	 * @return
	 * @throws SQLException
	 * @throws DataException
	 */
	public List<Map<String,Object>> queryNavigationBarList(Connection conn,String userName,String orderName,Integer enable) throws SQLException, DataException{
		StringBuffer condition = new StringBuffer();
		List<Map<String,Object>> list = null;
		condition.append("1 = 1");
		if(StringUtils.isNotBlank(userName)){
			condition.append(" AND userName = '" + userName.trim()+"'");
		}
		if(StringUtils.isNotBlank(orderName)){
			condition.append(" AND orderName = '" + orderName.trim()+"'");
		}
		if(enable!=null&&enable>=0){
			condition.append(" AND enable = " + enable);
		}
		Dao.Tables.t_navigationbar t_navigationbar = new Dao().new Tables().new t_navigationbar();
		DataSet ds = t_navigationbar.open(conn, "", condition.toString(), " id DESC  ",-1,-1);
		ds.tables.get(0).rows.genRowsMap(); 
		list = ds.tables.get(0).rows.rowsMap;
		return list;
	}
	
	/**
	 * 查询一级菜单项集合
	 * @return
	 * @throws DataException 
	 * @throws SQLException 
	 */
	public List<Map<String,Object>> queryOrderList(Connection conn) throws SQLException, DataException{
		StringBuffer condition = new StringBuffer();
		condition.append("1 = 1");
		condition.append(" AND orderName = '一级'");
		condition.append(" AND enable = 1");
		Dao.Tables.t_navigationbar t_navigationbar = new Dao().new Tables().new t_navigationbar();
		DataSet dataSet = t_navigationbar.open(conn, "", condition.toString(), " id ASC", -1, -1);
		dataSet.tables.get(0).rows.genRowsMap();
		return dataSet.tables.get(0).rows.rowsMap;
	}
}
