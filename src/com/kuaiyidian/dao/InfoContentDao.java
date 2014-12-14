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

public class InfoContentDao {

	/***************************************************************************
	 * 添加底部信息
	 * 
	 * @param conn
	 * @param title
	 * @param infoId
	 * @param content
	 * @param linkPath
	 * @param sortIndex
	 * @param status
	 * @return
	 * @throws SQLException
	 */
	public long addInfoContent(Connection conn, String title, int infoId,
			String content, String linkPath,String imgUrl, int sortIndex, int status)
			throws SQLException {
		Dao.Tables.t_info_content ic = new Dao().new Tables().new t_info_content();
		ic.title.setValue(title);
		ic.infoId.setValue(infoId);
		ic.content.setValue(content);
		ic.linkPath.setValue(linkPath);
		ic.imgUrl.setValue(imgUrl);
		ic.sortIndex.setValue(sortIndex);
		ic.status.setValue(status);
		ic.addTime.setValue(new Date());
		return ic.insert(conn);
	}

	/**
	 * 修改底部信息
	 * 
	 * @param conn
	 * @param id
	 * @param title
	 * @param infoId
	 * @param content
	 * @param linkPath
	 * @param sortIndex
	 * @param status
	 * @return
	 * @throws SQLException
	 */
	public long updateInfoContent(Connection conn, long id, String title,
			int infoId, String content, String linkPath,String imgUrl, int sortIndex,
			int status) throws SQLException {
		Dao.Tables.t_info_content ic = new Dao().new Tables().new t_info_content();
		if (StringUtils.isNotBlank(title)) {
			ic.title.setValue(title);
		}
		if (infoId > 0) {
			ic.infoId.setValue(infoId);
		}
		if (StringUtils.isNotBlank(content)) {
			ic.content.setValue(content);
		}
		if (StringUtils.isNotBlank(linkPath)) {
			ic.linkPath.setValue(linkPath);
		}
		if(StringUtils.isNotBlank(imgUrl)){
			ic.imgUrl.setValue(imgUrl);
		}
		if (sortIndex > 0) {
			ic.sortIndex.setValue(sortIndex);
		}
		if (status > 0) {
			ic.status.setValue(status);
		}

		return ic.update(conn, " id = " + id);
	}

	/**
	 * 删除底部信息
	 * 
	 * @param conn
	 * @param ids
	 * @return
	 * @throws SQLException
	 */
	public long deleteInfoContent(Connection conn, String ids)
			throws SQLException {
		Dao.Tables.t_info_content ic = new Dao().new Tables().new t_info_content();

		return ic.delete(conn, " id in(" + ids + ") ");
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
	public Map<String, String> queryInfoContentById(Connection conn, long id)
			throws SQLException, DataException {
		Dao.Tables.t_info_content ic = new Dao().new Tables().new t_info_content();

		DataSet ds = ic.open(conn, "  ", " id = " + id, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}
	
	/**
	 * 根据id查询视图
	 * 
	 * @param conn
	 * @param id
	 * @return
	 * @throws SQLException
	 * @throws DataException
	 */
	public Map<String, String> queryInfoContentViewById(Connection conn, long id)
			throws SQLException, DataException {
		Dao.Views.v_t_info_content ic = new Dao().new Views().new v_t_info_content();

		DataSet ds = ic.open(conn, "  ", " id = " + id, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}
	
	
	

	/**
	 * 根据条件查询
	 */
	public List<Map<String, Object>> queryInfoContentAll(Connection conn,
			String fieldList, String condition, String order)
			throws SQLException, DataException {
		Dao.Tables.t_info_content ic = new Dao().new Tables().new t_info_content();
		DataSet ds = ic.open(conn, fieldList, condition, order, -1, -1);
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}
	
	

	
	

}
