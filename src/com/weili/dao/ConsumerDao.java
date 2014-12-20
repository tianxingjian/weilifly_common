package com.weili.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

import com.shove.data.DataException;
import com.shove.data.DataSet;
import com.shove.util.BeanMapUtils;
import com.weili.database.Dao;
import com.weili.database.Dao.Tables;
import com.weili.database.Dao.Tables.t_banner;
import com.weili.database.Dao.Tables.t_brand;
import com.weili.database.Dao.Tables.t_user;
import com.weili.database.Dao.Tables.t_weili_display_type;

public class ConsumerDao {
	
	/**
	 * 录入潜在客户
	 * */
	public long addConsumers(Connection conn,String cName,String cTelephone,String address,String needContent,Integer needId){
			
		Dao.Tables.t_consumers t_con = new Dao().new Tables().new t_consumers();
		
		t_con.c_name.setValue(cName);
		t_con.c_telephone.setValue(cTelephone);
		t_con.address.setValue(address);
		t_con.need_content.setValue(needContent);
		t_con.needs_status.setValue(needId);
		
		return t_con.insert(conn);
		
	}
	
	/**
	 * 删除客户信息
	 * 
	 * @param conn
	 * @param ids
	 * @return
	 * @throws SQLException
	 */
	public long deleteConsumers(Connection conn, String ids) throws SQLException {
		Dao.Tables.t_consumers tc = new Dao().new Tables().new t_consumers();
		return tc.delete(conn, " id in(" + ids + ") ");
	}
	
	/**
	 * 根据id查询
	 * @param conn
	 * @param id
	 * @return
	 * @throws SQLException
	 * @throws DataException
	 */
	public Map<String, String> queryConsumerById(Connection conn, long id)
			throws SQLException, DataException {
		Dao.Tables.t_consumers banner = new Dao().new Tables().new t_consumers();
		DataSet ds = banner.open(conn, "  ", " id = " + id, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}
	
	/**
	 * 管理员填写备注
	 * @param conn
	 * @param id
	 * @return
	 * @throws SQLException
	 * @throws DataException
	 */
	public long addRemark(Connection conn,long id,String cName,String cTelephone,String address,String remark) throws SQLException{
		Dao.Tables.t_consumers tc = new Dao().new Tables().new t_consumers();
		
		if(StringUtils.isNotBlank(cName)){
			tc.c_name.setValue(cName);
		}
		if(StringUtils.isNotBlank(cTelephone)){
			tc.c_telephone.setValue(cTelephone);
		}
		if(StringUtils.isNotBlank(address)){
			tc.address.setValue(address);
		}
		if(StringUtils.isNotBlank(remark)){
			tc.remark.setValue(remark);
		}
		return tc.update(conn, " id = "+id);
	}

	/**
	 * 获取用户需求分类列表 之数据处理
	 * @return
	 */
	public List<Map<String, Object>> queryNeedsType(
			Connection conn,String fieldList,String condition)throws SQLException, DataException {
		Dao.Tables.t_needs tn = new Dao().new Tables().new t_needs();
		
		DataSet ds = tn.open(conn, fieldList, condition,"", -1, -1);
		
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}
}
