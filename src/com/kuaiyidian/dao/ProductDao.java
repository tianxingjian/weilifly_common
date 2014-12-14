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

public class ProductDao {
	
	public long addProduct(Connection conn,String name,long categoryId,String image,String url,String wapUrl,String details,int sortIndex,int status,String seoTitle,String seoKeywords,String seoDescription,String content,int isShow) throws SQLException{
		Dao.Tables.t_product product = new Dao().new Tables().new t_product();
		
		product._name.setValue(name);
		product.categoryId.setValue(categoryId);
		product.image.setValue(image);
		product.url.setValue(url);
		product.wapUrl.setValue(wapUrl);
		product.details.setValue(details);
		product.sortIndex.setValue(sortIndex);
		product.status.setValue(status);
		product.seoTitle.setValue(seoTitle);
		product.seoKeywords.setValue(seoKeywords);
		product.seoDescription.setValue(seoDescription);
		product.content.setValue(content);
		product.addTime.setValue(new Date());
		product.isShow.setValue(isShow);
		
		return product.insert(conn);
	}
	
	public long updateProduct(Connection conn,long id,String name,long categoryId,String image,String url,String wapUrl,String details,int sortIndex,int status,String seoTitle,String seoKeywords,String seoDescription,String content,int isShow) throws SQLException{
		Dao.Tables.t_product product = new Dao().new Tables().new t_product();
		
		if(StringUtils.isNotBlank(name)){
			product._name.setValue(name);
		}
		if(categoryId > 0){
			product.categoryId.setValue(categoryId);
		}
		if(StringUtils.isNotBlank(image)){
			product.image.setValue(image);
		}
		if(StringUtils.isNotBlank(url)){
			product.url.setValue(url);
		}
		if(StringUtils.isNotBlank(wapUrl)){
			product.wapUrl.setValue(wapUrl);
		}
		if(StringUtils.isNotBlank(details)){
			product.details.setValue(details);
		}
		if(sortIndex > 0){
			product.sortIndex.setValue(sortIndex);
		}
		if(status > 0){
			product.status.setValue(status);
		}
		if(StringUtils.isNotBlank(seoTitle)){
			product.seoTitle.setValue(seoTitle);
		}
		if(StringUtils.isNotBlank(seoKeywords)){
			product.seoKeywords.setValue(seoKeywords);
		}
		if(StringUtils.isNotBlank(seoDescription)){
			product.seoDescription.setValue(seoDescription);
		}
		if(StringUtils.isNotBlank(content)){
			product.content.setValue(content);
		}
		if(isShow>0){
			product.isShow.setValue(isShow);
		}
		
		return product.update(conn, " id = "+id);
	}
	
	public long deleteProduct(Connection conn,String ids) throws SQLException{
		Dao.Tables.t_product product = new Dao().new Tables().new t_product();
		
		return product.delete(conn, " id in("+ids+") ");
	}
	
	public Map<String,String> queryProductById(Connection conn,long id) throws SQLException, DataException{
		Dao.Tables.t_product product = new Dao().new Tables().new t_product();
		
		DataSet ds = product.open(conn, "  ", " id = "+id, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}

	public Map<String,String> queryProductCategoryById(Connection conn,long id) throws SQLException, DataException{
		Dao.Views.v_t_product_category product = new Dao().new Views().new v_t_product_category();
		
		DataSet ds = product.open(conn, "  ", " id = "+id, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}
	
	public List<Map<String, Object>> queryProductAll(Connection conn,String fieldList,String condition,String order)throws SQLException, DataException {
		Dao.Tables.t_product product = new Dao().new Tables().new t_product();
		
		DataSet ds = product.open(conn, fieldList, condition,order, -1, -1);
		
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}

	public List<Map<String, Object>> queryProductList(Connection conn,String fieldList,String condition,String order)throws SQLException, DataException {
		Dao.Views.v_t_product_category product = new Dao().new Views().new v_t_product_category();
		
		DataSet ds = product.open(conn, fieldList, condition,order, -1, -1);
		
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}
}
