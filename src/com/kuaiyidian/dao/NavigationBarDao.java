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
	public long addNavigationBar(Connection conn, String name, long parentId,int enable,String url,
			int type,int sortIndex,String mark)
			throws SQLException {
		Dao.Tables.t_navigationbar navigationBar = new Dao().new Tables().new t_navigationbar();

		navigationBar._name.setValue(name);
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
	public long updateNavigationBar(Connection conn, long id, String name,
			long parentId,int enable, String url, int type, int sortIndex, String mark)
			throws SQLException {
		Dao.Tables.t_navigationbar navigationBar = new Dao().new Tables().new t_navigationbar();
		if (StringUtils.isNotBlank(name)) {
			navigationBar._name.setValue(name);
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
		return navigationBar.update(conn, " id = " + id);
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
}
