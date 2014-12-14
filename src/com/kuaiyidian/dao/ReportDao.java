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
import com.shove.vo.PageBean;

public class ReportDao {

	/**
	 * 添加质检报告
	 * 
	 * @param conn
	 * @param categoryId
	 * @param title
	 * @param image
	 * @param path
	 * @param status
	 * @param sortIndex
	 * @param seoTitle
	 * @param seoKeywords
	 * @param seoDescription
	 * @return
	 * @throws SQLException
	 */
	public long addReport(Connection conn, int categoryId, String title,
			String author, String image, String path, int status,
			int sortIndex, String seoTitle, String seoKeywords,
			String seoDescription) throws SQLException {
		Dao.Tables.t_report report = new Dao().new Tables().new t_report();
		report.categoryId.setValue(categoryId);
		report.title.setValue(title);
		report.author.setValue(author);
		report.image.setValue(image);
		report.path.setValue(path);
		report.status.setValue(status);
		report.sortIndex.setValue(sortIndex);
		report.seoTitle.setValue(seoTitle);
		report.seoKeywords.setValue(seoKeywords);
		report.seoDescription.setValue(seoDescription);
		report.addTime.setValue(new Date());
		return report.insert(conn);
	}

	/***************************************************************************
	 * 修改质检报告
	 * 
	 * @param conn
	 * @param id
	 * @param categoryId
	 * @param title
	 * @param image
	 * @param path
	 * @param status
	 * @param sortIndex
	 * @param seoTitle
	 * @param seoKeywords
	 * @param seoDescription
	 * @return
	 * @throws SQLException
	 */
	public long updateReport(Connection conn, long id, int categoryId,
			String title, String author, String image, String path, int status,
			int sortIndex, String seoTitle, String seoKeywords,
			String seoDescription) throws SQLException {
		Dao.Tables.t_report report = new Dao().new Tables().new t_report();
		if (categoryId > 0) {
			report.categoryId.setValue(categoryId);
		}
		if (StringUtils.isNotBlank(title)) {
			report.title.setValue(title);
		}
		if (StringUtils.isNotBlank(author)) {
			report.author.setValue(author);
		}
		if (StringUtils.isNotBlank(image)) {
			report.image.setValue(image);
		}
		if (StringUtils.isNotBlank(path)) {
			report.path.setValue(path);
		}
		if (status > 0) {
			report.status.setValue(status);
		}
		if (sortIndex > 0) {
			report.sortIndex.setValue(sortIndex);
		}
		if (StringUtils.isNotBlank(seoTitle)) {
			report.seoTitle.setValue(seoTitle);
		}
		if (StringUtils.isNotBlank(seoKeywords)) {
			report.seoKeywords.setValue(seoKeywords);
		}
		if (StringUtils.isNotBlank(seoDescription)) {
			report.seoDescription.setValue(seoDescription);
		}
		return report.update(conn, " id = " + id);
	}

	/**
	 * 删除质检报告
	 * 
	 * @param conn
	 * @param ids
	 * @return
	 * @throws SQLException
	 */
	public long deleteReport(Connection conn, String ids) throws SQLException {
		Dao.Tables.t_report report = new Dao().new Tables().new t_report();

		return report.delete(conn, " id in(" + ids + ") ");
	}

	/***************************************************************************
	 * 根据id查询
	 * 
	 * @param conn
	 * @param id
	 * @return
	 * @throws SQLException
	 * @throws DataException
	 */
	public Map<String, String> queryReportById(Connection conn, long id)
			throws SQLException, DataException {
		Dao.Tables.t_report report = new Dao().new Tables().new t_report();

		DataSet ds = report.open(conn, "  ", " id = " + id, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}

	/**
	 * 根据条件查询
	 * 
	 * @param conn
	 * @param fieldList
	 * @param condition
	 * @param order
	 * @return
	 * @throws SQLException
	 * @throws DataException
	 */
	public List<Map<String, Object>> queryReportAll(Connection conn,
			String fieldList, String condition, String order)
			throws SQLException, DataException {
		Dao.Tables.t_report report = new Dao().new Tables().new t_report();
		DataSet ds = report.open(conn, fieldList, condition, order, -1, -1);
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}

	/**
	 * 查询前台升质检报告下载
	 */
	public Map<String, String> queryReprostsById(Connection conn, long id)
			throws SQLException, DataException {
		Dao.Tables.t_report t_report = new Dao().new Tables().new t_report();
		DataSet ds = t_report.open(conn, " * ", " id = " + id, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}

	/**
	 * 查询前台升质检报告按id查询
	 * 
	 * @param conn
	 * @param id
	 * @return
	 * @throws SQLException
	 * @throws DataException
	 */
	public List<Map<String, Object>>queryReportssList(Connection conn,Integer status)
			throws SQLException, DataException {
		Dao.Views.v_t_report_detail v_t_report_detail = new Dao().new Views().new v_t_report_detail();
		DataSet ds = v_t_report_detail.open(conn, "*", "status="+status, "", -1, -1);
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}
	/**
	 * 
	 * 前台质检报告查看详情
	 * @throws DataException 
	 */
	public Map<String,String>queryReportDetailId(Connection conn,Long id) throws DataException{
		//Dao.Views.v_t_report_detail  v_t_report_detail = new Dao().new Views().new v_t_report_detail();
		Dao.Views.v_t_report_category  v_t_report_detail = new Dao().new Views().new v_t_report_category();
		DataSet ds = v_t_report_detail.open(conn, "", "id="+id, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}

}
