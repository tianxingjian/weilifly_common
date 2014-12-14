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

public class RecruitDao {
	
	
	/**
	 * 添加人才招聘
	 * @param conn
	 * @param name
	 * @param type
	 * @param content
	 * @param sort
	 * @param status
	 * @param seoTitle
	 * @param seoKeywords
	 * @param seoDescription
	 * @return
	 * @throws SQLException
	 */
	public long addRecruit(Connection conn,String name,int type,String content,int sort,int status,String seoTitle,String seoKeywords,String seoDescription) throws SQLException{
		Dao.Tables.t_recruit recruit = new Dao().new Tables().new t_recruit();
		recruit._name.setValue(name);
		recruit.type.setValue(type);
		recruit.content.setValue(content);
		recruit.sort.setValue(sort);
		recruit.status.setValue(status);
		recruit.seoTitle.setValue(seoTitle);
		recruit.seoKeywords.setValue(seoKeywords);
		recruit.seoDescription.setValue(seoDescription);
		recruit.addTime.setValue(new Date());
		return recruit.insert(conn);
	}
	
	/**
	 * 修改人才招聘
	 * @param conn
	 * @param id
	 * @param name
	 * @param type
	 * @param content
	 * @param sort
	 * @param status
	 * @param seoTitle
	 * @param seoKeywords
	 * @param seoDescription
	 * @return
	 * @throws SQLException
	 */
	public long updateRecruit(Connection conn,long id,String name,int type,String content,int sort,int status,String seoTitle,String seoKeywords,String seoDescription) throws SQLException{
		Dao.Tables.t_recruit recruit = new Dao().new Tables().new t_recruit();
		if(StringUtils.isNotBlank(name)){
			recruit._name.setValue(name);
		}
		if(type>0){
			recruit.type.setValue(type);
		}
		if(StringUtils.isNotBlank(content)){
			recruit.content.setValue(content);
		}
		if(sort>0){
			recruit.sort.setValue(sort);
		}
		if(status>0){
			recruit.status.setValue(status);
		}
		if(StringUtils.isNotBlank(seoTitle)){
			recruit.seoTitle.setValue(seoTitle);
		}
		if(StringUtils.isNotBlank(seoKeywords)){
			recruit.seoKeywords.setValue(seoKeywords);
		}
		if(StringUtils.isNotBlank(seoDescription)){
			recruit.seoDescription.setValue(seoDescription);
		}
		return recruit.update(conn, " id = "+id);
	}
	
	
	/**
	 * 删除人才招聘
	 * @param conn
	 * @param ids
	 * @return
	 * @throws SQLException
	 */
	public long deleteRecruit(Connection conn,String ids) throws SQLException{
		Dao.Tables.t_recruit recruit = new Dao().new Tables().new t_recruit();
		
		return recruit.delete(conn, " id in("+ids+") ");
	}
	
	/**
	 * 根据id查询
	 * @param conn
	 * @param id
	 * @return
	 * @throws SQLException
	 * @throws DataException
	 */
	public Map<String,String> queryRecruitById(Connection conn,long id) throws SQLException, DataException{
		Dao.Tables.t_recruit recruit = new Dao().new Tables().new t_recruit();
		
		DataSet ds = recruit.open(conn, "  ", " id = "+id, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}
	
	/**
	 * 根据type查询
	 * 
	 * @param conn
	 * @param id
	 * @return
	 * @throws SQLException
	 * @throws DataException
	 */
	public Map<String, String> queryRecruitByType(Connection conn, int type)
			throws SQLException, DataException {
		Dao.Tables.t_recruit recruit = new Dao().new Tables().new t_recruit();

		DataSet ds = recruit.open(conn, "  ", " type = " + type, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}
	
	
	
	
	
	
	/**
	 * 根据条件查询
	 * @param conn
	 * @param fieldList
	 * @param condition
	 * @param order
	 * @return
	 * @throws SQLException
	 * @throws DataException
	 */
	public List<Map<String, Object>> queryRecruitAll(Connection conn,String fieldList,String condition,String order)throws SQLException, DataException {
		Dao.Tables.t_recruit recruit = new Dao().new Tables().new t_recruit();
		DataSet ds = recruit.open(conn, fieldList, condition,order, -1, -1);
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}
	
}
