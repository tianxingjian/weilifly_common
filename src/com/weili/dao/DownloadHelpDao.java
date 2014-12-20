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
import com.sun.xml.internal.ws.wsdl.writer.document.OpenAtts;
import com.weili.database.Dao;
import com.weili.database.Dao.Tables;
import com.weili.database.Dao.Tables.t_question_list;

public class DownloadHelpDao {

	public long addDownloadHelp(Connection conn, String title, String content,
			String fit, Integer sortIndex, Integer status, String seoTitle,
			String seoKeywords, String seoDescription,String image) throws SQLException {
		Dao.Tables.t_download_help downloadHelp = new Dao().new Tables().new t_download_help();

		downloadHelp.title.setValue(title);
		downloadHelp.content.setValue(content);
		downloadHelp.fit.setValue(fit);
		downloadHelp.sortIndex.setValue(sortIndex);
		downloadHelp.status.setValue(status);
		downloadHelp.seoTitle.setValue(seoTitle);
		downloadHelp.seoKeywords.setValue(seoKeywords);
		downloadHelp.seoDescription.setValue(seoDescription);
		downloadHelp.image.setValue(image);
		downloadHelp.addTime.setValue(new Date());

		return downloadHelp.insert(conn);
	}

	public long updateDownloadHelp(Connection conn, long id, String title,
			String content, String fit, Integer sortIndex, Integer status,
			String seoTitle, String seoKeywords, String seoDescription,String image)
			throws SQLException {
		Dao.Tables.t_download_help downloadHelp = new Dao().new Tables().new t_download_help();

		if (StringUtils.isNotBlank(title)) {
			downloadHelp.title.setValue(title);
		}
		if (StringUtils.isNotBlank(content)) {
			downloadHelp.content.setValue(content);
		}
		if (StringUtils.isNotBlank(fit)) {
			downloadHelp.fit.setValue(fit);
		}
		if (sortIndex != null && sortIndex > 0) {
			downloadHelp.sortIndex.setValue(sortIndex);
		}
		if (status != null && status > 0) {
			downloadHelp.status.setValue(status);
		}
		if (StringUtils.isNotBlank(seoTitle)) {
			downloadHelp.seoTitle.setValue(seoTitle);
		}
		if (StringUtils.isNotBlank(seoKeywords)) {
			downloadHelp.seoKeywords.setValue(seoKeywords);
		}
		if (StringUtils.isNotBlank(seoDescription)) {
			downloadHelp.seoDescription.setValue(seoDescription);
		}
		if(StringUtils.isNotBlank(image)){
			downloadHelp.image.setValue(image);
		}
		
		return downloadHelp.update(conn, " id = " + id);
	}

	public long deleteDownloadHelp(Connection conn, String ids)
			throws SQLException {
		Dao.Tables.t_download_help downloadHelp = new Dao().new Tables().new t_download_help();

		return downloadHelp.delete(conn, " id in(" + ids + ") ");
	}

	public Map<String, String> queryDownloadHelpById(Connection conn, long id)
			throws SQLException, DataException {
		Dao.Tables.t_download_help downloadHelp = new Dao().new Tables().new t_download_help();

		DataSet ds = downloadHelp.open(conn, "  ", " id = " + id, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}

	public List<Map<String, Object>> queryDownloadHelpAll(Connection conn,
			String fieldList, String condition, String order)
			throws SQLException, DataException {
		Dao.Tables.t_download_help downloadHelp = new Dao().new Tables().new t_download_help();

		DataSet ds = downloadHelp.open(conn, fieldList, condition, order, -1,
				-1);

		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}
	/**
	 * 查询前台下载帮助迭代标题
	 */
	public List<Map<String, Object>> queryDownloadHelpsList(Connection conn,
			Integer status) {
		Dao.Tables.t_download_help t_download_help = new Dao().new Tables().new t_download_help();
		DataSet ds = t_download_help.open(conn, " * ", "status="+status, "sortIndex , addTime desc ", -1, -1);
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}
	

	/**
	 * 查询前台下载帮助的升级程序
	 */
	public List<Map<String, Object>> queryDouwnloadList(Connection conn,
			String name, String image, String path) {
		Dao.Tables.t_update_program t_update_program = new Dao().new Tables().new t_update_program();
		DataSet ds = t_update_program.open(conn, " * ", "status=1", "addTime desc ", -1, -1);
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;

	}

	/**
	 * 查询前台升级程序下载
	 */
	public Map<String, String> queryCoursewareById(Connection conn, long id)
			throws SQLException, DataException {
		Dao.Tables.t_update_program t_update_program = new Dao().new Tables().new t_update_program();
		DataSet ds = t_update_program.open(conn, " * ", " id = " + id, "", -1,
				-1);
		return BeanMapUtils.dataSetToMap(ds);
	}
	/**
	 * 查询前台下载帮助的广告
	 */
	public List<Map<String, Object>> queryAdvertList(Connection conn,String advertName,String advertImage
			 ) {
		Dao.Tables.t_appadv t_appadv = new Dao().new Tables().new t_appadv();
		DataSet ds = t_appadv.open(conn, "*", " isRecommended=1 ", "addTime desc", -1, -1);
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;

	}
}
