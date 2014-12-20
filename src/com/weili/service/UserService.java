package com.weili.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.shove.base.BaseService;
import com.shove.data.DataException;
import com.shove.data.DataRow;
import com.shove.data.DataSet;
import com.shove.vo.PageBean;
import com.weili.constants.IConstants;
import com.weili.dao.UserDao;
import com.weili.database.Dao;
import com.weili.entity.User;

public class UserService extends BaseService {
	public static Log log = LogFactory.getLog(UserService.class);

	private UserDao userDao;

	public long addUser(String username, String password, String realName,String phone,
			int isDisable, int sortIndex) throws Exception {
		Connection conn = connectionManager.getConnection();
		long userId = -1;
		try {
			userId = userDao.addUser(conn, username, password, realName,phone,
					isDisable, sortIndex);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return userId;
	}

	public long updateUser(long id, String password, String realName,String phone,
			int isDisable, int sortIndex) throws Exception {
		Connection conn = connectionManager.getConnection();

		long returnId = -1;
		try {
			returnId = userDao.updateUser(conn, id, password, realName,phone,
					isDisable, sortIndex);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return returnId;
	}

	public long deleteUser(String ids) throws Exception {
		Connection conn = connectionManager.getConnection();

		long returnId = -1;
		try {
			returnId = userDao.deleteUser(conn, ids);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return returnId;
	}

	public Map<String, String> queryUserById(long id) throws Exception {
		Connection conn = connectionManager.getConnection();

		Map<String, String> map = new HashMap<String, String>();
		try {
			map = userDao.queryUserById(conn, id);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return map;
	}
	
	
	
	public Map<String, String> queryUserByLogin(String username,String password) throws DataException, SQLException {
		Connection conn=connectionManager.getConnection();
		Map<String, String> map=new HashMap<String, String>();
		try {
			map=userDao.queryUserByLogin(conn, username, password);
		} catch (DataException e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		return map;
	}
	
	
	
	
	
	/**
	 * 代理商登录
	 * @param userName 用户名
	 * @param password 密码
	 * @param ip
	 * @return	User
	 * @throws Exception 
	 */
	public User userLogin(String username,String password,String ip) throws Exception{
		Connection conn =  connectionManager.getConnection();
		User user = null;
		try {
			password = password.trim();
			Dao.Tables.t_user t_user = new Dao().new Tables().new t_user();
			DataSet ds = t_user.open(conn, "", " username ='"+username.trim()+"' and password = '"+com.shove.security.Encrypt.encryptSES(com.shove.security.Encrypt.MD5(password.trim()),IConstants.MD5_KEY)+"'", "", -1, -1);
			int returnId = ds.tables.get(0).rows.getCount();
			if(returnId<=0){
				conn.close();
				return null;
			}else{
				user = new User();
				DataRow dr = ds.tables.get(0).rows.get(0);
				user.setId((Long)dr.get("id"));
				user.setUsername(dr.get("username")+"");
				user.setPassword(dr.get("password")+"");
				user.setLoginEndIP(dr.get("loginEndIP")+"");
				user.setLoginEndTime((Date)dr.get("loginEndTime"));
				user.setIsDisable(Integer.parseInt(dr.get("isDisable")+""));
			}
			if(StringUtils.isNotBlank(ip)){
				t_user.loginEndTime.setValue(new Date());
				t_user.loginEndIP.setValue(ip);
				t_user.update(conn, " id=" + user.getId());
			}
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		return user;
	}
	
	

	public List<Map<String, Object>> queryUserAll(String fieldList,
			String condition, String order) throws Exception {
		Connection conn = connectionManager.getConnection();

		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		try {
			list = userDao.queryUserAll(conn, fieldList, condition, order);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return list;
	}

	public void queryUserPage(String username, String realName, int isDisable,
			PageBean<Map<String, Object>> pageBean) throws Exception {
		StringBuffer condition = new StringBuffer();
		if (StringUtils.isNotBlank(username)) {
			condition.append(" AND username LIKE CONCAT('%','"
					+ username.trim() + "','%')");
		}
		if (StringUtils.isNotBlank(realName)) {
			condition.append(" AND realName LIKE CONCAT('%','"
					+ realName.trim() + "','%')");
		}
		if (isDisable > 0) {
			condition.append(" AND isDisable =" + isDisable);
		}
		Connection conn = connectionManager.getConnection();
		try {
			dataPage(conn, pageBean, " t_user ", " * ", "", condition
					.toString());
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}
	}
	
	//发送给微力的准客户
	public long addConsumers(String cName, String cTelephone, String email,String address,String needContent,Integer needs_status) throws Exception{
		Connection conn = connectionManager.getConnection();
		long consumerId = -1;
		try {
			consumerId = userDao.addConsumers(conn, cName, cTelephone, email,address,
					needContent,needs_status);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return consumerId;
	}
	
	
	
	
//--------------------------set and get------------------------------------------------
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

}
