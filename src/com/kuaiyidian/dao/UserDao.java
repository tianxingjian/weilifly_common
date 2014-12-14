package com.kuaiyidian.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import com.kuaiyidian.constants.IConstants;
import com.kuaiyidian.database.Dao;
import com.kuaiyidian.database.Dao.Tables;
import com.kuaiyidian.database.Dao.Tables.t_admin;
import com.shove.data.DataException;
import com.shove.data.DataSet;
import com.shove.util.BeanMapUtils;

public class UserDao {

	/**
	 * 添加代理商
	 * 
	 * @param conn
	 * @param username
	 * @param password
	 * @param realName
	 * @param isDisable
	 * @param sortIndex
	 * @return
	 * @throws SQLException
	 */
	public long addUser(Connection conn, String username, String password,
			String realName, String phone, int isDisable, int sortIndex)
			throws SQLException {
		Dao.Tables.t_user user = new Dao().new Tables().new t_user();
		if (StringUtils.isNotBlank(username)) {
			user.username.setValue(username.trim());
		}
		if (StringUtils.isNotBlank(password)) {
			password = com.shove.security.Encrypt.encryptSES(
					com.shove.security.Encrypt.MD5(password.trim()),
					IConstants.MD5_KEY);
			user.password.setValue(password.trim());
		}
		user.realName.setValue(realName);
		user.phone.setValue(phone);
		user.isDisable.setValue(isDisable);
		user.sortIndex.setValue(sortIndex);
		user.addTime.setValue(new Date());
		return user.insert(conn);
	}

	/**
	 * 修改代理商
	 * 
	 * @param conn
	 * @param id
	 * @param password
	 * @param realName
	 * @param isDisable
	 * @param sortIndex
	 * @return
	 * @throws SQLException
	 */
	public long updateUser(Connection conn, long id, String password,
			String realName, String phone, int isDisable, int sortIndex)
			throws SQLException {
		Dao.Tables.t_user user = new Dao().new Tables().new t_user();
		if (StringUtils.isNotBlank(password)) {
			password = com.shove.security.Encrypt.encryptSES(
					com.shove.security.Encrypt.MD5(password.trim()),
					IConstants.MD5_KEY);
			user.password.setValue(password.trim());
		}
		if (StringUtils.isNotBlank(phone)) {
			user.phone.setValue(phone);
		}
		if (StringUtils.isNotBlank(realName)) {
			user.realName.setValue(realName);
		}
		if (isDisable > 0) {
			user.isDisable.setValue(isDisable);
		}
		if (sortIndex > 0) {
			user.sortIndex.setValue(sortIndex);
		}
		return user.update(conn, " id = " + id);
	}

	/**
	 * 删除代理商
	 * 
	 * @param conn
	 * @param ids
	 * @return
	 * @throws SQLException
	 */
	public long deleteUser(Connection conn, String ids) throws SQLException {
		Dao.Tables.t_user user = new Dao().new Tables().new t_user();
		return user.delete(conn, " id in(" + ids + ") ");
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
	public Map<String, String> queryUserById(Connection conn, long id)
			throws SQLException, DataException {
		Dao.Tables.t_user user = new Dao().new Tables().new t_user();
		DataSet ds = user.open(conn, "  ", " id = " + id, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}

	
	/**
	 * 根据用户名和密码
	 * @param conn
	 * @param username
	 * @param password
	 * @return
	 * @throws DataException
	 */
	public Map<String, String> queryUserByLogin(Connection conn,
			String username, String password) throws DataException {
		StringBuffer condition=new StringBuffer();
		condition.append(" username = '" + username.trim()+"'");
		condition.append(" AND password = '" + com.shove.security.Encrypt.encryptSES(com.shove.security.Encrypt.MD5(password.trim()),IConstants.MD5_KEY)+"'");
		Dao.Tables.t_user user = new Dao().new Tables().new t_user();
		DataSet ds = user.open(conn, "", condition.toString(), " ",-1,-1);
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
	public List<Map<String, Object>> queryUserAll(Connection conn,
			String fieldList, String condition, String order)
			throws SQLException, DataException {
		Dao.Tables.t_user user = new Dao().new Tables().new t_user();

		DataSet ds = user.open(conn, fieldList, condition, order, -1, -1);

		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}
	
}
