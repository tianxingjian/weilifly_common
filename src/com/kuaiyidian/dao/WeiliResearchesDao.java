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

public class WeiliResearchesDao {
	
	public long addWeiliResearch(Connection conn,String title,String source,Long views,String image,
			String content,Integer status,Integer isRecommended,Integer isIndex,
			Integer sortIndex,String seoTitle,String seoKeywords,String seoDescription,
			String addTime,Integer type) throws SQLException{
		Dao.Tables.t_weili_research weiliResearches = new Dao().new Tables().new t_weili_research();
		
		weiliResearches.title.setValue(title);
		weiliResearches.source.setValue(source);
		weiliResearches.image.setValue(image);
		weiliResearches.content.setValue(content);
		weiliResearches.status.setValue(status);
		weiliResearches.isRecommended.setValue(isRecommended);
		weiliResearches.isIndex.setValue(isIndex);
		weiliResearches.sortIndex.setValue(sortIndex);
		weiliResearches.seoTitle.setValue(seoTitle);
		weiliResearches.seoKeywords.setValue(seoKeywords);
		weiliResearches.seoDescription.setValue(seoDescription);
		weiliResearches.addTime.setValue(addTime);
		weiliResearches.type.setValue(type);
		
		
		return weiliResearches.insert(conn);
	}
	
	//查询内容类型querySort
	public List<Map<String,String>> querySort(Connection conn) throws SQLException{
		Dao.Tables.t_weili_research_type twd = new Dao().new Tables().new t_weili_research_type();
		
		DataSet ds = twd.open(conn, " ", " ", "", -1, -1);
		ds.tables.get(0).rows.genRowsMap();
		
		return ds.tables.get(0).rows.rowsMap;
	}
	

	public long updateWeiliResearch(Connection conn,long id,String title,String source,Long views,String image,String content,Integer status,Integer isRecommended,Integer isIndex,Integer sortIndex,String seoTitle,String seoKeywords,String seoDescription,String addTime) throws SQLException{
		Dao.Tables.t_weili_research brandNews = new Dao().new Tables().new t_weili_research();
		
		if(StringUtils.isNotBlank(title)){
			brandNews.title.setValue(title);
		}
		if(StringUtils.isNotBlank(source)){
			brandNews.source.setValue(source);
		}
		if(StringUtils.isNotBlank(content)){
			brandNews.content.setValue(content);
		}
		if(StringUtils.isNotBlank(image)){
			brandNews.image.setValue(image);
		}
		if(views != null && views > 0){
			brandNews.views.setValue(views);
		}
		if(isRecommended != null && isRecommended > 0){
			brandNews.isRecommended.setValue(isRecommended);
		}
		if(isIndex != null && isIndex > 0){
			brandNews.isIndex.setValue(isIndex);
		}
		if(status != null && status > 0){
			brandNews.status.setValue(status);
		}
		if(sortIndex != null && sortIndex > 0){
			brandNews.sortIndex.setValue(sortIndex);
		}
		if(StringUtils.isNotBlank(seoTitle)){
			brandNews.seoTitle.setValue(seoTitle);
		}
		if(StringUtils.isNotBlank(seoKeywords)){
			brandNews.seoKeywords.setValue(seoKeywords);
		}
		if(StringUtils.isNotBlank(seoDescription)){
			brandNews.seoDescription.setValue(seoDescription);
		}
		if(StringUtils.isNotBlank(addTime)){
			brandNews.addTime.setValue(addTime);
		}
		
		return brandNews.update(conn, " id = "+id);
	}
	
	public long deleteWeiliResearch(Connection conn,String ids) throws SQLException{
		Dao.Tables.t_weili_research brandNews = new Dao().new Tables().new t_weili_research();
		
		return brandNews.delete(conn, " id in("+ids+") ");
	}
	
	public Map<String,String> queryBrandNewsById(Connection conn,long id) throws SQLException, DataException{
		Dao.Tables.t_weili_research brandNews = new Dao().new Tables().new t_weili_research();
		
		DataSet ds = brandNews.open(conn, "  ", " id = "+id, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}

	public Map<String,String> queryBrandRecommendedNews(Connection conn,Integer isRecommended) throws SQLException, DataException{
		Dao.Tables.t_weili_research brandNews = new Dao().new Tables().new t_weili_research();
		
		DataSet ds = brandNews.open(conn, "  ", " isRecommended = "+isRecommended, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}
	
	public List<Map<String, Object>> queryBrandNewsAll(Connection conn,String fieldList,String condition,String order)throws SQLException, DataException {
		Dao.Tables.t_weili_research demo = new Dao().new Tables().new t_weili_research();
		
		DataSet ds = demo.open(conn, fieldList, condition,order, -1, -1);
		ds.tables.get(0).rows.genRowsMap();
		
		return ds.tables.get(0).rows.rowsMap;
	}
}
