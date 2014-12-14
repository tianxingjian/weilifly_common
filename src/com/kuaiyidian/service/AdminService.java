package com.kuaiyidian.service;

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
import org.apache.struts2.ServletActionContext;

import com.kuaiyidian.constants.IConstants;
import com.kuaiyidian.dao.AdminDao;
import com.kuaiyidian.database.Dao;
import com.kuaiyidian.entity.Admin;
import com.shove.base.BaseService;
import com.shove.data.DataException;
import com.shove.data.DataRow;
import com.shove.data.DataSet;
import com.shove.data.dao.MySQL;
import com.shove.vo.PageBean;

public class AdminService extends BaseService {
	
	public static Log log = LogFactory.getLog(AdminService.class);
	
	private AdminDao adminDao;
	
	/**
	 * 添加管理员
	 * @param userName 用户名
	 * @param password 密码
	 * @param enable 状态
	 * @return
	 * @throws SQLException
	 * @throws DataException 
	 */
	public Long addAdmin(String userName,String password,int enable,long roleId) throws SQLException, DataException{
		Connection conn = connectionManager.getConnection();
		List<Map<String, Object>> list = adminDao.queryAdminList(conn, userName, null);
		if(list!=null&&list.size()>0){
			return -2L;
		}
		Long adminId = -1L;
		try {
			adminId = adminDao.addAdmin(conn, userName,password, enable,roleId);
		} catch (SQLException e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		return adminId;
	}
	
	/**
	 * 修改管理员
	 * @param adminId 管理员编号
	 * @param password 密码
	 * @param enable 状态
	 * @param lastIP 最后登录IP
	 * @return	Long
	 * @throws SQLException
	 * @throws DataException 
	 */
	public Long updateAdmin(long adminId,String password,Integer enable,String lastIP,Long roleId) throws SQLException, DataException{
		Connection conn = connectionManager.getConnection();
		Long returnId = -1L;
		try {
			returnId = adminDao.updateAdmin(conn, adminId, password, enable, lastIP,roleId);
		} catch (SQLException e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		return returnId;
	}
	
	/**
	 * 删除管理员
	 * @param adminIds 管理员编号拼接成的字符串
	 * @throws SQLException
	 */
	public void deleteAdmin(String adminIds) throws SQLException{
		Connection conn = connectionManager.getConnection();
		try {
			adminDao.deleteAdmins(conn, adminIds);
		} catch (SQLException e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
	}
	
	/**
	 * 根据管理员编号查询管理员信息
	 * @param id 管理员编号
	 * @return	Map<String,String>
	 * @throws SQLException 
	 * @throws DataException
	 */
	public Map<String,String> queryAdminById(long id) throws SQLException, DataException{
		Connection conn = connectionManager.getConnection();
		Map<String, String> map = new HashMap<String, String>();
		try {
			map = adminDao.queryAdminById(conn, id);
		} catch (SQLException e) {
			log.error(e);
			e.printStackTrace();
			throw e;
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
	 * 根据用户名，密码进行查询（登录功能）
	 * @param userName 用户名
	 * @param password 密码
	 * @return	Map<String,String>
	 * @throws SQLException 
	 * @throws DataException
	 */
	public Map<String,String> queryAdminByNamePass(String userName,String password) throws SQLException, DataException{
		Connection conn = connectionManager.getConnection();
		Map<String, String> map = new HashMap<String, String>();
		try {
			map = adminDao.queryAdminByNamePass(conn, userName, password);
		} catch (SQLException e) {
			log.error(e);
			e.printStackTrace();
			throw e;
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
	 * 根据条件查询管理员信息
	 * @param userName 用户名
	 * @param enable 状态
	 * @return	List<Map<String,Object>>
	 * @throws SQLException 
	 * @throws DataException
	 */
	public List<Map<String,Object>> queryAdminList(String userName,Integer enable) throws SQLException, DataException{
		Connection conn = connectionManager.getConnection();
		List<Map<String, Object>> list = new ArrayList<Map<String,Object>>();
		try {
			list = adminDao.queryAdminList(conn, userName, enable);
		} catch (SQLException e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} catch (DataException e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		return list;
	}
	
	/**
	 * 根据条件分页查询管理员信息
	 * @param userName 用户名
	 * @param enable 状态
	 * @param pageBean
	 * @throws SQLException 
	 * @throws DataException
	 */
	public void queryAdminPage(String userName,Integer enable,Long roleId,PageBean<Map<String,Object>> pageBean) throws SQLException, DataException{
		Connection conn = connectionManager.getConnection();
		try {
			StringBuffer condition = new StringBuffer();
			if(StringUtils.isNotBlank(userName)){
				condition.append(" AND userName LIKE CONCAT('%','"+userName.trim()+"','%')");
			}
			if(enable!=null&&enable>=0){
				condition.append(" AND enable = " + enable);
			}
			if(roleId!=null&&roleId>-2){
				condition.append(" AND roleId = " + roleId);
			}
			dataPage(conn, pageBean, " v_t_admin", " * ", "", condition.toString());
		} catch (SQLException e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} catch (DataException e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
	}
	
	/**
	 * 管理员登陆
	 * @param userName 用户名
	 * @param password 密码
	 * @param IP
	 * @return	Admin
	 * @throws Exception 
	 */
	public Admin adminLogin(String userName,String password,String IP) throws Exception{
		Connection conn =  connectionManager.getConnection();
		Admin admin = null;
		try {
			password = password.trim();
			Dao.Tables.t_admin t_admin = new Dao().new Tables().new t_admin();
			DataSet ds = t_admin.open(conn, "", " userName ='"+userName.trim()+"' and password = '"+com.shove.security.Encrypt.encryptSES(com.shove.security.Encrypt.MD5(password.trim()),IConstants.MD5_KEY)+"'", "", -1, -1);
			int returnId = ds.tables.get(0).rows.getCount();
			if(returnId<=0){
				conn.close();
				return null;
			}else{
				admin = new Admin();
				DataRow dr = ds.tables.get(0).rows.get(0);
				admin.setId((Long)dr.get("id"));
				admin.setUserName(dr.get("userName")+"");
				admin.setPassword(dr.get("password")+"");
				admin.setLastIP(dr.get("lastIP")+"");
				admin.setLastTime((Date)dr.get("lastTime"));
				admin.setEnable(Integer.parseInt(dr.get("enable")+""));
				admin.setRoleId(Long.parseLong(dr.get("roleId")+""));
			}
			if(StringUtils.isNotBlank(IP)){
				t_admin.lastTime.setValue(new Date());
				t_admin.lastIP.setValue(IP);
				t_admin.update(conn, " id=" + admin.getId());
			}
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		return admin;
	}
	
	public void updatePassword() throws SQLException{
		//修改管理员密码
		Connection conn = MySQL.getConnection();
		try{
			List<Map<String,Object>> list = adminDao.queryAdminList(conn, null, null);
	
			for (Map<String, Object> map : list) {
	//			adminDao.updateAdmin(conn, Long.parseLong(map.get("id")+""), com.shove.security.Encrypt.encryptSES(map.get("password")+"", IConstants.MD5_KEY), null, null,null);
				MySQL.executeNonQuery(conn, "update t_admin set password = '"+com.shove.security.Encrypt.encryptSES(map.get("password")+"", IConstants.MD5_KEY)+"' where id = "+map.get("id"));
			}
			
			conn.commit();
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
		}finally{
			conn.close();
		}
	}

	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}

}
