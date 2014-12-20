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
import com.weili.constants.IConstants;
import com.weili.database.Dao;
import com.weili.database.Dao.Tables;
import com.weili.database.Dao.Tables.t_admin;

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
	
	
	public long addConsumers(Connection conn,String  cName,String cTelephone,
			String  email,String address,String needContent,Integer needs_status){
		Dao.Tables.t_consumers tc = new Dao().new Tables().new t_consumers();

		tc.c_name.setValue(cName);
		tc.c_telephone.setValue(cTelephone);
		tc.c_email.setValue(email);
		tc.address.setValue(address);
		if(needs_status > 0){
			tc.needs_status.setValue(needs_status);
		}
		tc.need_content.setValue(needContent);
		tc.addTime.setValue(new Date());
		return tc.insert(conn);
	}
}
