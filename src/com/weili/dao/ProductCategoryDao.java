package com.weili.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

import com.shove.data.DataException;
import com.shove.data.DataSet;
import com.shove.util.BeanMapUtils;
import com.weili.database.Dao;
import com.weili.database.Dao.Tables;

public class ProductCategoryDao {
	
	public long addProductCategory(Connection conn,String name,String image,String introduction,String backImage,String url,int status,int sortIndex,int isShow,String seoTitle,String seoKeywords,String seoDescription) throws SQLException{
		Dao.Tables.t_product_category productCategory = new Dao().new Tables().new t_product_category();
		
		productCategory._name.setValue(name);
		productCategory.image.setValue(image);
		productCategory.introduction.setValue(introduction);
		productCategory.backImage.setValue(backImage);
		productCategory.url.setValue(url);
		productCategory.status.setValue(status);
		productCategory.sortIndex.setValue(sortIndex);
		productCategory.isShow.setValue(isShow);
		productCategory.seoTitle.setValue(seoTitle);
		productCategory.seoKeywords.setValue(seoKeywords);
		productCategory.seoDescription.setValue(seoDescription);
		productCategory.addTime.setValue(new Date());
		
		return productCategory.insert(conn);
	}
	
	public long updateProductCategory(Connection conn,long id,String name,String image,String introduction,String backImage,String url,Integer status,Integer sortIndex,int isShow,String seoTitle,String seoKeywords,String seoDescription) throws SQLException{
		Dao.Tables.t_product_category productCategory = new Dao().new Tables().new t_product_category();
		
		if(StringUtils.isNotBlank(name)){
			productCategory._name.setValue(name);
		}
		if(StringUtils.isNotBlank(image)){
			productCategory.image.setValue(image);
		}
		if(StringUtils.isNotBlank(introduction)){
			productCategory.introduction.setValue(introduction);
		}
		if(StringUtils.isNotBlank(backImage)){
			productCategory.backImage.setValue(backImage);
		}
		if(StringUtils.isNotBlank(url)){
			productCategory.url.setValue(url);
		}
		if(status != null&&status > 0){
			productCategory.status.setValue(status);
		}
		if(sortIndex != null&&sortIndex > 0){
			productCategory.sortIndex.setValue(sortIndex);
		}
		if(isShow>0){
			productCategory.isShow.setValue(isShow);
		}
		if(StringUtils.isNotBlank(seoTitle)){
			productCategory.seoTitle.setValue(seoTitle);
		}
		if(StringUtils.isNotBlank(seoKeywords)){
			productCategory.seoKeywords.setValue(seoKeywords);
		}
		if(StringUtils.isNotBlank(seoDescription)){
			productCategory.seoDescription.setValue(seoDescription);
		}
		
		return productCategory.update(conn, " id = "+id);
	}
	
	public long deleteProductCategory(Connection conn,String ids) throws SQLException{
		Dao.Tables.t_product_category productCategory = new Dao().new Tables().new t_product_category();
		
		return productCategory.delete(conn, " id in("+ids+") ");
	}
	
	public Map<String,String> queryProductCategoryById(Connection conn,long id) throws SQLException, DataException{
		Dao.Tables.t_product_category productCategory = new Dao().new Tables().new t_product_category();
		
		DataSet ds = productCategory.open(conn, "  ", " id = "+id, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}
	
	public List<Map<String, Object>> queryProductCategoryAll(Connection conn,String fieldList,String condition,String order)throws SQLException, DataException {
		Dao.Tables.t_product_category productCategory = new Dao().new Tables().new t_product_category();
		
		DataSet ds = productCategory.open(conn, fieldList, condition,order, -1, -1);
		
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}
}
