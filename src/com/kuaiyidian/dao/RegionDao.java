package com.kuaiyidian.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringEscapeUtils;
import org.apache.commons.lang.StringUtils;

import com.kuaiyidian.database.Dao;
import com.shove.data.DataException;
import com.shove.data.DataSet;
import com.shove.util.BeanMapUtils;

public class RegionDao {

	/**
	 * 查询省市区信息
	* @Title: queryRegionList
	* @Description: TODO
	* @param conn   数据库连接
	* @param regionId  地区ID
	* @param parentId 地区父ID
	* @param regionType  地区类型
	* @return
	* @throws SQLException
	* @throws DataException
	* @return List<Map<String,Object>>
	* @throws
	 */
	public List<Map<String, Object>> queryRegionList(Connection conn, Long regionId, Long parentId, Integer regionType) throws SQLException, DataException{
		Dao.Tables.t_region region = new Dao(). new Tables(). new t_region();
		StringBuffer condition = new StringBuffer();
		condition.append(" 1=1 ");
		if (regionId != null && regionId > 0) {
			condition.append(" AND regionId=" + regionId);
		}
		if (parentId != null && parentId > 0) {
			condition.append(" AND parentId=" + parentId);
		}
		if (regionType != null && regionType > 0) {
			condition.append(" AND regionType=" + regionType);
		}
		DataSet dataSet = region.open(conn, "*", condition.toString(), "", -1, -1);
		dataSet.tables.get(0).rows.genRowsMap();
		return dataSet.tables.get(0).rows.rowsMap;
	}
	
	/**
	 * 根据获取到的名字查询省市关联
	 * @param conn  数据库连接
	 * @param name  地区名
	 * @return
	 * @throws SQLException
	 * @throws DataException
	 */
	public Map<String,String> queryMap(Connection conn,String name,Long parentId,Integer regionType) throws SQLException, DataException{
		Dao.Tables.t_region region = new Dao(). new Tables(). new t_region();
		StringBuffer condition = new StringBuffer();
		condition.append(" 1=1");
		if (StringUtils.isNotBlank(name)) {
			condition.append(" AND regionName like '" +name.trim()+"'");
		}if (parentId !=null && parentId >0) {
			condition.append(" AND parentId ="+parentId);
		}
		if (regionType !=null && regionType >=0) {
			condition.append(" AND regionType ="+regionType);
		}
		DataSet ds = region.open(conn, "",condition.toString(), " ",-1,-1);
		return BeanMapUtils.dataSetToMap(ds);
	}
	
	
	/**
	 * 通过名称得到id
	 * @param conn
	 * @param name
	 * @return
	 * @throws DataException
	 */
	public Map<String, String> queryAddId(Connection conn,String name) throws DataException {
		Dao.Tables.t_region region = new Dao(). new Tables(). new t_region();
		StringBuffer condition = new StringBuffer();
		condition.append(" 1=1");
		if (StringUtils.isNotBlank(name)) {
			condition.append(" AND regionName like '" +name.trim()+"'");
		}
		DataSet ds = region.open(conn, "",condition.toString(), " ",-1,-1);
		return BeanMapUtils.dataSetToMap(ds);
	}
	
	
	
	/**
	* 根据id查询该id的所有父级并按顺序返回
	* @param id
	* @return List<Map<String,Object>>
	 * @throws DataException 
	 * @throws SQLException 
	* @throws
	*/
	public List<Map<String, Object>> queryAllParentList(Connection conn,Long id) throws DataException, SQLException{
		DataSet ds = new DataSet();
		List<Object> outParameterValues = new ArrayList<Object>();
		Dao.Procedures.p_region(conn, ds, outParameterValues, id);
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}
	
	public Map<String,String> queryRegionById(Connection conn,long id) throws DataException{
		Dao.Tables.t_region region = new Dao().new Tables().new t_region();
		DataSet ds = region.open(conn, "  ", " id = "+id, " ", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}
}
