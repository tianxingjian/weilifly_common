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

public class QuestionDao {

	/**
	 * 添加常见问题
	 * 
	 * @param conn
	 * @param name
	 *            问题名
	 * @param solution
	 *            解决答案
	 * @param sortIndex
	 *            排序
	 * @return
	 * @throws SQLException
	 */
	public long addQuestion(Connection conn, String name, String solution,
			Long sortIndex, Long status,String addTime) throws SQLException {
		Dao.Tables.t_question_list question = new Dao().new Tables().new t_question_list();
		question._name.setValue(name);
		question.solution.setValue(solution);
		question.sortIndex.setValue(sortIndex);
		question.addTime.setValue(addTime);
		question.status.setValue(status);
		return question.insert(conn);
	}

	/**
	 * 修改常见问题
	 * 
	 * @param conn
	 * @param id
	 * @return
	 * @throws SQLException
	 */
	public long updateQuestion(Connection conn, long id, String name,
			String solution, int sortIndex, int status,String addTime) throws SQLException {
		Dao.Tables.t_question_list question = new Dao().new Tables().new t_question_list();
		if (StringUtils.isNotBlank(name)) {
			question._name.setValue(name);
		}
		if (StringUtils.isNotBlank(solution)) {
			question.solution.setValue(solution);
		}
		if (StringUtils.isNotBlank(addTime)) {
			question.addTime.setValue(addTime);
		}
		if (sortIndex > 0) {
			question.sortIndex.setValue(sortIndex);
		}
		if (status > 0) {
			question.status.setValue(status);
		}
		return question.update(conn, " id = " + id);
	}

	/**
	 * 删除常见问题
	 * 
	 * @param conn
	 * @param ids
	 * @return
	 * @throws SQLException
	 */
	public long deleteQuestion(Connection conn, String ids) throws SQLException {
		Dao.Tables.t_question_list question = new Dao().new Tables().new t_question_list();

		return question.delete(conn, " id in(" + ids + ") ");
	}

	/**
	 * 根据id查询问题
	 * 
	 * @param conn
	 * @param id
	 * @return
	 * @throws SQLException
	 * @throws DataException
	 */
	public Map<String, String> queryQuestionById(Connection conn, long id)
			throws SQLException, DataException {
		Dao.Tables.t_question_list question = new Dao().new Tables().new t_question_list();
		DataSet ds = question.open(conn, "  ", " id = " + id, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}

	/**
	 * 根据条件查询
	 * 
	 * @param conn
	 * @return
	 * @throws SQLException
	 * @throws DataException
	 */
	public List<Map<String, Object>> queryQuestionAll(Connection conn,
			String fieldList, String condition, String order)
			throws SQLException, DataException {
		Dao.Tables.t_question_list question = new Dao().new Tables().new t_question_list();
		DataSet ds = question.open(conn, fieldList, condition, order, -1, -1);
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}

}
