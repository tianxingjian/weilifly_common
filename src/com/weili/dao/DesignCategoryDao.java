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

public class DesignCategoryDao {

	/**
	 * 添加设计素材分类
	 * 
	 * @param conn
	 * @param name
	 * @param author
	 * @param parentId
	 * @param status
	 * @param sortIndex
	 * @return
	 * @throws SQLException
	 */
	public long addDesignCategory(Connection conn, String name, int status,
			int sortIndex) throws SQLException {
		Dao.Tables.t_design_category dc = new Dao().new Tables().new t_design_category();
		dc._name.setValue(name);
		dc.status.setValue(status);
		dc.sortIndex.setValue(sortIndex);
		dc.addTime.setValue(new Date());
		return dc.insert(conn);
	}

	/**
	 * 修改设计素材分类
	 * 
	 * @param conn
	 * @param id
	 * @return
	 * @throws SQLException
	 */
	public long updateDesignCategory(Connection conn, long id, String name,
			int status, int sortIndex) throws SQLException {
		Dao.Tables.t_design_category dc = new Dao().new Tables().new t_design_category();
		if (StringUtils.isNotBlank(name)) {
			dc._name.setValue(name);
		}
		if (status > 0) {
			dc.status.setValue(status);
		}
		if (sortIndex > 0) {
			dc.sortIndex.setValue(sortIndex);
		}
		return dc.update(conn, " id = " + id);
	}

	/**
	 * 删除素材设计分类
	 * 
	 * @param conn
	 * @param ids
	 * @return
	 * @throws SQLException
	 */
	public long deleteDesignCategory(Connection conn, String ids)
			throws SQLException {
		Dao.Tables.t_design_category dc = new Dao().new Tables().new t_design_category();

		return dc.delete(conn, " id in(" + ids + ") ");
	}

	/**
	 * 根据id查询
	 * 
	 * @param conn
	 * @param id
	 * @return
	 * @throws SQLException
	 * @throws DataException
	 */
	public Map<String, String> queryDesignCategoryById(Connection conn, long id)
			throws SQLException, DataException {
		Dao.Tables.t_design_category dc = new Dao().new Tables().new t_design_category();

		DataSet ds = dc.open(conn, "  ", " id = " + id, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}

	/**
	 * 根据条件查询列表数据
	 * 
	 * @param conn
	 * @return
	 * @throws SQLException
	 * @throws DataException
	 */
	public List<Map<String, Object>> queryDesignCategoryAll(Connection conn,
			String fieldList, String condition, String order)
			throws SQLException, DataException {
		Dao.Tables.t_design_category dc = new Dao().new Tables().new t_design_category();
		DataSet ds = dc.open(conn, fieldList, condition, order, -1, -1);
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}

	/**
	 *迭代质检报告下的标题
	 */
	public List<Map<String, Object>> queryDesignCategoryList(Connection conn,
			Integer status) throws SQLException, DataException {
		Dao.Tables.t_design_category dca = new Dao().new Tables().new t_design_category();
		DataSet ds = dca.open(conn, "*", " status= " + status, "", -1, -1);
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}

	/**
	 *迭代设计素材图片
	 */
	public List<Map<String, Object>> queryImageList(Connection conn,
			Integer status) throws SQLException, DataException {
		Dao.Tables.t_img_list dca = new Dao().new Tables().new t_img_list();
		DataSet ds = dca.open(conn, "*", "status=" + status 
			, "", -1, -1);
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}

	public Map<String, String> queryDesignById(Connection conn, Integer status,Long tid)
			throws SQLException, DataException {
		Dao.Views.v_t_img_design dc = new Dao().new Views().new v_t_img_design();
		DataSet ds = dc.open(conn, "  ", " status=" +status+" AND tid = " + tid, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}

	public List<Map<String, Object>> queryImageByIds(Connection conn,
			int status, Long tid, String ids) throws SQLException,
			DataException {
		Dao.Tables.t_img_list dca = new Dao().new Tables().new t_img_list();
		DataSet ds = dca.open(conn, "*", "status=" + status + " AND tid=" + tid
				+ "  AND  id in  (" + ids + ") ", "", -1, -1);
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}
	public List<Map<String, Object>> queryImageIdsList(Connection conn,
			Integer status, Long tid) throws SQLException,
			DataException {
		Dao.Tables.t_img_list dca = new Dao().new Tables().new t_img_list();
		DataSet ds = dca.open(conn, "*", "status=" + status + " AND tid=" + tid
				, "", -1, -1);
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}

}