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

public class RecruitTypeDao {
	
	public long addRecruitType(Connection conn,String title,int sortIndex,int status,String imgUrl) throws SQLException{
		Dao.Tables.t_recruit_type recruitType = new Dao().new Tables().new t_recruit_type();
		recruitType.title.setValue(title);
		recruitType.sortIndex.setValue(sortIndex);
		recruitType.status.setValue(status);
		recruitType.imgUrl.setValue(imgUrl);
		recruitType.addTime.setValue(new Date());
		return recruitType.insert(conn);
	}
	
	public long updateRecruitType(Connection conn,long id,String title,int sortIndex,int status,String imgUrl) throws SQLException{
		Dao.Tables.t_recruit_type recruitType = new Dao().new Tables().new t_recruit_type();
		if(StringUtils.isNotBlank(title)){
			recruitType.title.setValue(title);
		}
		if(sortIndex>0){
			recruitType.sortIndex.setValue(sortIndex);
		}
		if(status>0){
			recruitType.status.setValue(status);
		}
		if(StringUtils.isNotBlank(imgUrl)){
			recruitType.imgUrl.setValue(imgUrl);
		}
		return recruitType.update(conn, " id = "+id);
	}
	
	public long deleteRecruitType(Connection conn,String ids) throws SQLException{
		Dao.Tables.t_recruit_type recruitType = new Dao().new Tables().new t_recruit_type();
		return recruitType.delete(conn, " id in("+ids+") ");
	}
	
	public Map<String,String> queryRecruitTypeById(Connection conn,long id) throws SQLException, DataException{
		Dao.Tables.t_recruit_type recruitType = new Dao().new Tables().new t_recruit_type();
		DataSet ds = recruitType.open(conn, "  ", " id = "+id, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}
	
	public List<Map<String, Object>> queryRecruitTypeAll(Connection conn,String fieldList,String condition,String order)throws SQLException, DataException {
		Dao.Tables.t_recruit_type recruitType = new Dao().new Tables().new t_recruit_type();
		DataSet ds = recruitType.open(conn, fieldList, condition,order, -1, -1);
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}
	
}
