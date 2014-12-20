package com.weili.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringEscapeUtils;
import org.apache.commons.lang.StringUtils;

import com.shove.data.DataException;
import com.shove.data.DataSet;
import com.shove.vo.PageBean;
import com.weili.constants.IConstants;
import com.weili.database.Dao;

public class RightsDao {
	
	/**
	 * 添加数据至bt_rights表中
	 * @param conn
	 * @param data
	 * @return
	 * @throws SQLException
	 */
	public Long importRights(Connection conn,String [][] data) throws SQLException
	{
		return 1L;
	}
	

	
	/**
	 * 查询所有需要进行权限控制的路径
	 * @param conn
	 * @return
	 * @throws SQLException
	 * @throws DataException
	 */
	public List<Map<String,Object>> queryRightsList(Connection conn) throws SQLException, DataException{
		Dao.Tables.bt_rights rights = new Dao().new Tables().new bt_rights();
		DataSet dataSet = rights.open(conn, "", " isIntercept = 1 and isQuery = 1 ", " indexs ASC", -1, -1);
		dataSet.tables.get(0).rows.genRowsMap();
		return dataSet.tables.get(0).rows.rowsMap;
	}
	
	/**
	 * 查询所有栏目
	 * @param conn
	 * @return
	 * @throws SQLException
	 * @throws DataException
	 */
	public List<Map<String,Object>> queryRightsMenuList(Connection conn) throws SQLException, DataException{
		Dao.Tables.bt_rights rights = new Dao().new Tables().new bt_rights();
		DataSet dataSet = rights.open(conn, "", " isQuery==1 ", "", -1, -1);
		dataSet.tables.get(0).rows.genRowsMap();
		return dataSet.tables.get(0).rows.rowsMap;
	}

}
