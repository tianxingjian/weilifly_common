package com.shove.base;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.shove.data.ConnectionManager;
import com.shove.data.DataException;
import com.shove.data.DataSet;
import com.shove.vo.PageBean;
import com.weili.database.Dao.Procedures;

/**
 * 基类
 *
 */
public class BaseService {
	
	public ConnectionManager connectionManager;

	/**
	 * 分页存储过程
	 * @param pageBean
	 * @param table 表名
	 * @param field 字段名
	 * @param order 排序
	 * @param where 条件
	 * @throws DataException 
	 * @throws SQLException 
	 */
	public void dataPage(Connection conn, PageBean<Map<String, Object>> pageBean, String table, String field, String order, String condition) throws SQLException, DataException{
		DataSet ds = new DataSet();
		List<Object> outParameterValues = new ArrayList<Object>();
		long curPage =  pageBean.getPageNum();
		Procedures.pr_pager(conn, ds, outParameterValues, table, field, pageBean.getPageSize(), curPage, order, condition, 0);
		long count = (Long) outParameterValues.get(0);
		boolean result = pageBean.setTotalNum(count);
		if(result){
			ds.tables.get(0).rows.genRowsMap();
			pageBean.setPage(ds.tables.get(0).rows.rowsMap);
		}
	}
	
	public ConnectionManager getConnectionManager() {
		return connectionManager;
	}

	public void setConnectionManager(ConnectionManager connectionManager) {
		this.connectionManager = connectionManager;
	}
}
