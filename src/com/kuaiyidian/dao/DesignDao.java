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

public class DesignDao {

	/*****
	 * 添加设计素材
	 * 
	 * @param conn
	 * @param categoryId
	 * @param title
	 * @param author
	 * @param imgUrl
	 * @param status
	 * @param sortIndex
	 * @return
	 * @throws SQLException
	 */
	public long addDesign(Connection conn, int categoryId, String title,
			String author, String imgUrl, int status, int sortIndex)
			throws SQLException {
		Dao.Tables.t_design design = new Dao().new Tables().new t_design();
		design.categoryId.setValue(categoryId);
		design.title.setValue(title);
		design.author.setValue(author);
		design.imgUrl.setValue(imgUrl);
		design.status.setValue(status);
		design.sortIndex.setValue(sortIndex);
		design.addTime.setValue(new Date());
		return design.insert(conn);
	}

	/***修改设计素材
	 * 
	 * @param conn
	 * @param id
	 * @return
	 * @throws SQLException
	 */
	public long updateDesign(Connection conn, long id, int categoryId,
			String title, String author, String imgUrl, int status,
			int sortIndex) throws SQLException {
		Dao.Tables.t_design design = new Dao().new Tables().new t_design();
		if (categoryId > 0) {
			design.categoryId.setValue(categoryId);
		}
		if (StringUtils.isNotBlank(title)) {
			design.title.setValue(title);
		}
		if (StringUtils.isNotBlank(author)) {
			design.author.setValue(author);
		}
		if (StringUtils.isNotBlank(imgUrl)) {
			design.imgUrl.setValue(imgUrl);
		}
		if (status > 0) {
			design.status.setValue(status);
		}
		if (sortIndex > 0) {
			design.sortIndex.setValue(sortIndex);
		}
		return design.update(conn, " id = " + id);
	}

	/**
	 * 删除设计素材
	 * @param conn
	 * @param ids
	 * @return
	 * @throws SQLException
	 */
	public long deleteDesign(Connection conn, String ids) throws SQLException {
		Dao.Tables.t_design design = new Dao().new Tables().new t_design();

		return design.delete(conn, " id in(" + ids + ") ");
	}

	/**
	 * 根据id查询
	 * @param conn
	 * @param id
	 * @return
	 * @throws SQLException
	 * @throws DataException
	 */
	public Map<String, String> queryDesignById(Connection conn, long id)
			throws SQLException, DataException {
		Dao.Tables.t_design design = new Dao().new Tables().new t_design();

		DataSet ds = design.open(conn, "  ", " id = " + id, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}

	/***
	 * 根据条件查询
	 * @param conn
	 * @return
	 * @throws SQLException
	 * @throws DataException
	 */
	public List<Map<String, Object>> queryDesignAll(Connection conn,String fieldList,String condition,String order)
			throws SQLException, DataException {
		Dao.Tables.t_design design = new Dao().new Tables().new t_design();
		DataSet ds = design.open(conn,fieldList,condition,order, -1, -1);
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}
	
}
