package com.weili.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

import com.weili.database.Dao;
import com.weili.database.Dao.Tables;
import com.weili.database.Dao.Tables.t_navigationbar;
import com.shove.data.DataException;
import com.shove.data.DataSet;
import com.shove.util.BeanMapUtils;

public class ModuleDao {
	
	/**
	 * 往bt_rights表中插入数据
	 * @param conn
	 * @param summary
	 * @param action
	 * @param parentId
	 * @param isQuery
	 * @param isIntercept
	 * @param indexs
	 * @param isLog
	 * @param description
	 * @return
	 * @throws SQLException
	 */
	public long addModule(Connection conn, String summary, String action,long parentId,int isQuery,int isIntercept,int indexs,
			int isLog,String description)
			throws SQLException {
		Dao.Tables.bt_rights module = new Dao().new Tables().new bt_rights();

		module.summary.setValue(summary);
		module.action.setValue(action);
		module.parentId.setValue(parentId);
		module.isQuery.setValue(isQuery);
		module.isIntercept.setValue(isIntercept);
		module.indexs.setValue(indexs);
		module.isLog.setValue(isLog);
		module.description.setValue(description);

		return module.insert(conn);
	}

	/**
	 * 更新模块内容
	 * @param conn
	 * @param id
	 * @param summary
	 * @param action
	 * @param parentId
	 * @param isQuery
	 * @param isIntercept
	 * @param indexs
	 * @param isLog
	 * @param description
	 * @return
	 * @throws SQLException
	 */
	public long updateModule(Connection conn, long id, String summary,String action,
			long parentId,int isQuery, int isIntercept,int indexs, int isLog, String description)
			throws SQLException {
		Dao.Tables.bt_rights module = new Dao().new Tables().new bt_rights();
		
		if (StringUtils.isNotBlank(summary)) {
			module.summary.setValue(summary);
		}
		if (StringUtils.isNotBlank(action)) {
			module.action.setValue(action);
		}
		if (parentId>0) {
			module.parentId.setValue(parentId);
		}
		if (isQuery>0) {
			module.isQuery.setValue(isQuery);
		}
		if(isIntercept>0){
			module.isIntercept.setValue(isIntercept);
		}
		if (indexs > 0) {
			module.indexs.setValue(indexs);
		}
		if (isLog > 0) {
			module.isLog.setValue(isLog);
		}
		if(StringUtils.isNotBlank(description)){
			module.description.setValue(description);
		}
		
		Long returnId = module.update(conn, " id = " + id);
		return returnId;
	}

	/**
	 * 删除
	 * @param conn
	 * @param ids
	 * @return
	 * @throws SQLException
	 */
	public long deleteModule(Connection conn, String ids) throws SQLException {
		Dao.Tables.bt_rights module = new Dao().new Tables().new bt_rights();
		return module.delete(conn, " id in(" + ids + ") ");
	}

	/**
	 * 根据id查询
	 * @param conn
	 * @param id
	 * @return
	 * @throws SQLException
	 * @throws DataException
	 */
	public Map<String, String> queryModuleById(Connection conn, long id)
			throws SQLException, DataException {
		Dao.Tables.bt_rights module = new Dao().new Tables().new bt_rights();
		DataSet ds = module.open(conn, "  ", " id = " + id, "", -1, -1);
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
	public List<Map<String, Object>> queryModuleAll(Connection conn,
			String fieldList, String condition, String order)
			throws SQLException, DataException {
		Dao.Tables.bt_rights module = new Dao().new Tables().new bt_rights();
		DataSet ds = module.open(conn, fieldList, condition, order, -1, -1);
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}
	
	/**
	 * 查询父模块集合
	 * @return
	 * @throws DataException 
	 * @throws SQLException 
	 */
	public List<Map<String,Object>> queryModuleList(Connection conn) throws SQLException, DataException{
		StringBuffer condition = new StringBuffer();
		condition.append("1 = 1");
		condition.append(" AND (parentId is null or parentId <0 )");
		condition.append(" AND isIntercept=1");
		condition.append(" AND isQuery=1");
		
		Dao.Tables.bt_rights module = new Dao().new Tables().new bt_rights();
		DataSet dataSet = module.open(conn, "", condition.toString(), " indexs ASC", -1, -1);//
		dataSet.tables.get(0).rows.genRowsMap();
		return dataSet.tables.get(0).rows.rowsMap;
	}
}
