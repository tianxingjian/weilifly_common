package com.weili.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.persistence.Column;

import org.apache.commons.lang.StringUtils;
import com.shove.data.DataException;
import com.shove.data.DataSet;
import com.shove.util.BeanMapUtils;
import com.weili.database.Dao;

public class SeoPageDao {

	public long addSeoPage(Connection conn,  String pageUrl,
			int columId, String seoTitle, String seoKeyWord,
			String seoDescription) throws SQLException {
		Dao.Tables.t_seo_page seo = new Dao().new Tables().new t_seo_page();
		seo.pageUrl.setValue(pageUrl);
		seo.columId.setValue(columId);
		seo.seoTitle.setValue(seoTitle);
		seo.seoKeyWord.setValue(seoKeyWord);
		seo.seoDescription.setValue(seoDescription);
		return seo.insert(conn);
	}

	public long updateSeoPage(Connection conn, long id, String seoTitle,
			String seoKeyWord, String seoDescription) throws SQLException {
		Dao.Tables.t_seo_page seo = new Dao().new Tables().new t_seo_page();
		if (StringUtils.isNotBlank(seoTitle)) {
			seo.seoTitle.setValue(seoTitle);
		}
		if (StringUtils.isNotBlank(seoKeyWord)) {
			seo.seoKeyWord.setValue(seoKeyWord);
		}
		if (StringUtils.isNotBlank(seoDescription)) {
			seo.seoDescription.setValue(seoDescription);
		}
		return seo.update(conn, " id = " + id);
	}

	public long deleteSeoPage(Connection conn, String ids) throws SQLException {
		Dao.Tables.t_seo_page seo = new Dao().new Tables().new t_seo_page();

		return seo.delete(conn, " id in(" + ids + ") ");
	}

	public Map<String, String> querySeoPageById(Connection conn, long id)
			throws SQLException, DataException {
		Dao.Tables.t_seo_page seo = new Dao().new Tables().new t_seo_page();

		DataSet ds = seo.open(conn, "  ", " id = " + id, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}

	public List<Map<String, Object>> querySeoPageAll(Connection conn,
			String fieldList, String condition, String order)
			throws SQLException, DataException {
		Dao.Tables.t_seo_page seo = new Dao().new Tables().new t_seo_page();
		DataSet ds = seo.open(conn, fieldList, condition, order, -1, -1);
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}
	
	
	/**
	 * 根据Url查询前台
	 * @throws DataException 
	 */
	
	public Map<String,String>querySeoUrl(Connection conn,String pageUrl) throws DataException{
		Dao.Tables.t_seo_page se = new Dao().new Tables().new t_seo_page();
		DataSet ds  = se.open(conn, "*", "pageUrl = '"+pageUrl+"'", "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	} 
	/**
	 * 添加Url
	 */
	public Long addSeoUrl(Connection conn,String pageUrl){
		Dao.Tables.t_seo_page ses = new Dao().new Tables().new t_seo_page();
	    ses.pageUrl.setValue(pageUrl);
	    ses.seoTitle.setValue("微力科技");
	    return ses.insert(conn);
	}
}
