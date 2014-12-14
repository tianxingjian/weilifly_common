package com.kuaiyidian.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringEscapeUtils;
import org.apache.commons.lang.StringUtils;

import com.shove.data.DataException;
import com.shove.data.DataSet;
import com.shove.util.BeanMapUtils;
import com.kuaiyidian.constants.IConstants;
import com.kuaiyidian.database.Dao;

/**
 * 管理员
 *
 */
public class AdminDao {
	
	/**
	 * 添加管理员
	 * @param conn
	 * @param adminName管理员名称
	 * @param adminPassword管理员密码
	 * @param enable是否禁用
	 * @return
	 * @throws SQLException
	 */
	public Long addAdmin(Connection conn,String userName,String password,int enable,long roleId) throws SQLException{
		Dao.Tables.t_admin t_admin = new Dao().new Tables().new t_admin();
		if(StringUtils.isNotBlank(userName)){
			t_admin.userName.setValue(userName.trim());
		}
		if(StringUtils.isNotBlank(password)){
			password = com.shove.security.Encrypt.encryptSES(com.shove.security.Encrypt.MD5(password.trim()),IConstants.MD5_KEY);
			t_admin.password.setValue(password.trim());
		}
		
		t_admin.roleId.setValue(roleId);
		t_admin.enable.setValue(enable);
		return t_admin.insert(conn);
	}
	
	/**
	 * 修改管理员
	 * @param conn数据库连接
	 * @param adminId管理员编号
	 * @param password密码
	 * @param enable状态
	 * @param lastIP最后登录时间
	 * @return
	 * @throws SQLException
	 */
	public Long updateAdmin(Connection conn,long adminId,String password,Integer enable,String lastIP,Long roleId) throws SQLException{
		Dao.Tables.t_admin admin = new Dao().new Tables().new t_admin();
			if(enable!=null&&enable>=0){//状态值满足，如果不为空，并且大于等于0则对此属性进行修改
				admin.enable.setValue(enable);
			}
			if(StringUtils.isNotBlank(password)){//密码不为空
				password = com.shove.security.Encrypt.encryptSES(com.shove.security.Encrypt.MD5(password.trim()),IConstants.MD5_KEY);//对密码进行转码
				admin.password.setValue(password);
			}
			if(StringUtils.isNotBlank(lastIP)){//最后登录IP不为空
				admin.lastIP.setValue(lastIP);
				admin.lastTime.setValue(new Date());
			}
			if(roleId!=null){
				admin.roleId.setValue(roleId);
			}
		Long returnId = admin.update(conn, " id ="+adminId);
		return returnId;
	}
	
	/**
	 * 删除管理员
	 * @param adminIds管理员编号拼接起来的字符串
	 * @return
	 * @throws SQLException
	 */
	public void deleteAdmins(Connection conn,String adminIds) throws SQLException{
		Dao.Tables.t_admin t_admin = new Dao().new Tables().new t_admin();
		t_admin.delete(conn, " id in ("+adminIds+")");//对管理员进行删除，删除条数返回到returnId上面
	}
	
	/**
	 * 按条件查询管理员
	 * @param conn
	 * @param adminId管理员编号
	 * @param userName用户名
	 * @param enable状态
	 * @return
	 * @throws SQLException
	 * @throws DataException
	 */
	public List<Map<String,Object>> queryAdminList(Connection conn,String userName,Integer enable) throws SQLException, DataException{
		StringBuffer condition = new StringBuffer();
		List<Map<String,Object>> list = null;
		condition.append("1 = 1");
		if(StringUtils.isNotBlank(userName)){
			condition.append(" AND userName = '" + userName.trim()+"'");
		}
		if(enable!=null&&enable>=0){
			condition.append(" AND enable = " + enable);
		}
		Dao.Tables.t_admin t_admin = new Dao().new Tables().new t_admin();
		DataSet ds = t_admin.open(conn, "", condition.toString(), " id DESC  ",-1,-1);
		ds.tables.get(0).rows.genRowsMap(); 
		list = ds.tables.get(0).rows.rowsMap;
		return list;
	}
	
	/**
	 * 根据用户名和密码查询管理员
	 * @param conn
	 * @param userName用户名
	 * @param password密码
	 * @return
	 * @throws SQLException
	 * @throws DataException
	 */
	public Map<String, String> queryAdminByNamePass(Connection conn,String userName,String password) throws SQLException, DataException{
		StringBuffer condition = new StringBuffer();
		condition.append(" userName = '" + userName.trim()+"'");
		condition.append(" AND password = '" + com.shove.security.Encrypt.encryptSES(com.shove.security.Encrypt.MD5(password.trim()),IConstants.MD5_KEY)+"'");
		Dao.Tables.t_admin t_admin = new Dao().new Tables().new t_admin();
		DataSet ds = t_admin.open(conn, "", condition.toString(), " ",-1,-1);
		return BeanMapUtils.dataSetToMap(ds);
	}
	
	/**
	 * 根据Id查询管理员
	 * @param conn
	 * @param adminId管理员编号
	 * @return
	 * @throws SQLException
	 * @throws DataException
	 */
	public Map<String,String> queryAdminById(Connection conn,long adminId) throws SQLException, DataException{
		List<Map<String,Object>> list = null;//用来装载返回结果
		Dao.Tables.t_admin t_admin = new Dao().new Tables().new t_admin();//获得管理员对象
		DataSet ds = t_admin.open(conn, "", " id = "+adminId, "",-1,-1);//对数据库进行访问，查询数据，DateSet装载数据结果
		return BeanMapUtils.dataSetToMap(ds);
		
	}
}
