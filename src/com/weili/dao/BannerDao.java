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

public class BannerDao {
	
	/***
	 * 添加Banner
	 * @param conn
	 * @param title
	 * @param imgPath
	 * @param url
	 * @param sortIndex
	 * @param type
	 * @param status
	 * @return
	 * @throws SQLException
	 */
	public long addBanner(Connection conn, String title, String imgPath,String imgUrl,String imgFont,
			String url,String urlTwo, int sortIndex, int type, int status)
			throws SQLException {
		Dao.Tables.t_banner banner = new Dao().new Tables().new t_banner();

		banner.title.setValue(title);
		banner.imgPath.setValue(imgPath);
		banner.imgUrl.setValue(imgUrl);
		banner.imgFont.setValue(imgFont);
		banner.url.setValue(url);
		banner.urlTwo.setValue(urlTwo);
		banner.sortIndex.setValue(sortIndex);
		banner.type.setValue(type);
		banner.status.setValue(status);
		banner.addTime.setValue(new Date());

		return banner.insert(conn);
	}

	/**
	 * 修改Banner
	 * @param conn
	 * @param id
	 * @param title
	 * @param imgPath
	 * @param url
	 * @param sortIndex
	 * @param type
	 * @param status
	 * @return
	 * @throws SQLException
	 */
	public long updateBanner(Connection conn, long id, String title,
			String imgPath,String imgUrl,String imgFont, String url,String urlTwo, int sortIndex, int type, int status)
			throws SQLException {
		Dao.Tables.t_banner banner = new Dao().new Tables().new t_banner();
		if (StringUtils.isNotBlank(title)) {
			banner.title.setValue(title);
		}
		if (StringUtils.isNotBlank(imgPath)) {
			banner.imgPath.setValue(imgPath);
		}
		if(StringUtils.isNotBlank(imgUrl)){
			banner.imgUrl.setValue(imgUrl);
		}
		if(StringUtils.isNotBlank(imgFont)){
			banner.imgFont.setValue(imgFont);
		}
		if (StringUtils.isNotBlank(url)) {
			banner.url.setValue(url);
		}
		if(StringUtils.isNotBlank(urlTwo)){
			banner.urlTwo.setValue(urlTwo);
		}
		if (sortIndex > 0) {
			banner.sortIndex.setValue(sortIndex);
		}
		if (type > 0) {
			banner.type.setValue(type);
		}
		if (status > 0) {
			banner.status.setValue(status);
		}
		return banner.update(conn, " id = " + id);
	}

	
	/**
	 * 删除
	 * @param conn
	 * @param ids
	 * @return
	 * @throws SQLException
	 */
	public long deleteBanner(Connection conn, String ids) throws SQLException {
		Dao.Tables.t_banner banner = new Dao().new Tables().new t_banner();

		return banner.delete(conn, " id in(" + ids + ") ");
	}

	/**
	 * 根据id查询
	 * @param conn
	 * @param id
	 * @return
	 * @throws SQLException
	 * @throws DataException
	 */
	public Map<String, String> queryBannerById(Connection conn, long id)
			throws SQLException, DataException {
		Dao.Tables.t_banner banner = new Dao().new Tables().new t_banner();
		DataSet ds = banner.open(conn, "  ", " id = " + id, "", -1, -1);
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
	public List<Map<String, Object>> queryBannerAll(Connection conn,
			String fieldList, String condition, String order)
			throws SQLException, DataException {
		Dao.Tables.t_banner banner = new Dao().new Tables().new t_banner();
		DataSet ds = banner.open(conn, fieldList, condition, order, -1, -1);
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}
}
