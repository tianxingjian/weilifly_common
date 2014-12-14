package com.kuaiyidian.dao;

import java.sql.Connection;
import java.util.Date;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang.StringUtils;
import com.kuaiyidian.database.Dao;
import com.shove.data.DataException;
import com.shove.data.DataSet;
import com.shove.util.BeanMapUtils;


public class WebDistributeDao {
	
	/**
	 * 添加网点分布
	 * @param conn
	 * @param type
	 * @param provinceId
	 * @param cityId
	 * @param areaId
	 * @param address
	 * @param storeName
	 * @param phone
	 * @param ip
	 * @param sortIndex
	 * @param status
	 * @return
	 * @throws SQLException
	 */
	public long addWebDistribute(Connection conn,Long type,int provinceId,int cityId,int areaId,String address,String storeName,String phone,String longitude,String latitude,int sortIndex,int status) throws SQLException{
		Dao.Tables.t_web_distribute webDistribute = new Dao().new Tables().new t_web_distribute();
		webDistribute.type.setValue(type);
		webDistribute.provinceId.setValue(provinceId);
		webDistribute.cityId.setValue(cityId);
		webDistribute.areaId.setValue(areaId);
		webDistribute.address.setValue(address);
		webDistribute.storeName.setValue(storeName);
		webDistribute.phone.setValue(phone);
		webDistribute.longitude.setValue(longitude);//经度
		webDistribute.latitude.setValue(latitude);  //纬度	
		webDistribute.sortIndex.setValue(sortIndex);
		webDistribute.status.setValue(status);
		webDistribute.addTime.setValue(new Date());
		return webDistribute.insert(conn);
	}
	
	/**
	 * 修改网点分布
	 * @param conn
	 * @param id
	 * @param type
	 * @param provinceId
	 * @param cityId
	 * @param areaId
	 * @param address
	 * @param storeName
	 * @param phone
	 * @param ip
	 * @param sortIndex
	 * @param status
	 * @return
	 * @throws SQLException
	 */
	public long updateWebDistribute(Connection conn,long id,Long type,int provinceId,int cityId,int areaId,String address,String storeName,String phone,String longitude,String latitude,int sortIndex,int status) throws SQLException{
		Dao.Tables.t_web_distribute webDistribute = new Dao().new Tables().new t_web_distribute();
		if(type!=null && type>0){
			webDistribute.type.setValue(type);
		}
		if(provinceId>0){
			webDistribute.provinceId.setValue(provinceId);
		}
		if(cityId>0){
			webDistribute.cityId.setValue(cityId);
		}
		if(areaId>0){
			webDistribute.areaId.setValue(areaId);
		}
		if(StringUtils.isNotBlank(address)){
			webDistribute.address.setValue(address);
		}
		if(StringUtils.isNotBlank(storeName)){
			webDistribute.storeName.setValue(storeName);
		}
		if(StringUtils.isNotBlank(phone)){
			webDistribute.phone.setValue(phone);
		}
		if(StringUtils.isNotBlank(longitude)){
			webDistribute.longitude.setValue(longitude);
		}
		if(StringUtils.isNotBlank(latitude)){
			webDistribute.latitude.setValue(latitude);
		}
		if(sortIndex>0){
			webDistribute.sortIndex.setValue(sortIndex);
		}
		if(status>0){
			webDistribute.status.setValue(status);
		}
		return webDistribute.update(conn, " id = "+id);
	}
	
	/**
	 * 删除网点分布
	 * @param conn
	 * @param ids
	 * @return
	 * @throws SQLException
	 */
	public long deleteWebDistribute(Connection conn,String ids) throws SQLException{
		Dao.Tables.t_web_distribute webDistribute = new Dao().new Tables().new t_web_distribute();
		
		return webDistribute.delete(conn, " id in("+ids+") ");
	}
	
	
	/**
	 * 根据ID查询
	 * @param conn
	 * @param id
	 * @return
	 * @throws SQLException
	 * @throws DataException
	 */
	public Map<String,String> queryWebDistributeById(Connection conn,long id) throws SQLException, DataException{
		Dao.Tables.t_web_distribute webDistribute = new Dao().new Tables().new t_web_distribute();
		
		DataSet ds = webDistribute.open(conn, "  ", " id = "+id, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}
	
	
	
	/**
	 * 根据条件查询
	 * @param conn
	 * @return
	 * @throws SQLException
	 * @throws DataException
	 */
	public List<Map<String,Object>> queryWebDistributeAll(Connection conn,String fieldList,String condition,String order) throws SQLException, DataException{
		Dao.Tables.t_web_distribute webDistribute = new Dao().new Tables().new t_web_distribute();		
		DataSet ds = webDistribute.open(conn, fieldList,condition, order, -1, -1);		
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}
	
	
	
	/**
	 * 根据条件查询
	 * @param conn
	 * @return
	 * @throws SQLException
	 * @throws DataException
	 */
	public List<Map<String,Object>> queryWebDistributeAll2(Connection conn,String fieldList,String condition,String order) throws SQLException, DataException{
		Dao.Views.v_t_web_distribute webDistribute = new Dao().new Views().new v_t_web_distribute();		
		DataSet ds = webDistribute.open(conn, fieldList,condition, order, -1, -1);		
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}
	
	
}
