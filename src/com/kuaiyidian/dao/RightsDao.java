package com.kuaiyidian.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringEscapeUtils;
import org.apache.commons.lang.StringUtils;

import com.kuaiyidian.constants.IConstants;
import com.kuaiyidian.database.Dao;
import com.shove.data.DataException;
import com.shove.data.DataSet;
import com.shove.vo.PageBean;

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
		/* Dao.Tables.bt_rights bt_rights = new Dao().new Tables().new bt_rights();
		 Long returnIdLong =-1L;
		 for (int i = 0; i < data.length; i++) {
			 bt_rights._name.setValue(data[i][0].toString().trim());
			 bt_rights.action.setValue(data[i][1].toString().trim());
			 bt_rights.description.setValue(data[i][2].toString().trim());
			 Long menuId=null;
			 if (StringUtils.isNotBlank(data[i][3].toString().trim())) {
				 menuId = Long.parseLong(data[i][3].toString().trim());
				 bt_rights.menuId.setValue(menuId);
			}else {
				bt_rights.menuId.setValue(menuId);
			}
		 returnIdLong =  bt_rights.insert(conn);
		}
		return returnIdLong;*/
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
		DataSet dataSet = rights.open(conn, "", " isIntercept = 1  ", " indexs ASC", -1, -1);
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
		DataSet dataSet = rights.open(conn, "", " id<0 or parentId<0  ", "", -1, -1);
		dataSet.tables.get(0).rows.genRowsMap();
		return dataSet.tables.get(0).rows.rowsMap;
	}

}
