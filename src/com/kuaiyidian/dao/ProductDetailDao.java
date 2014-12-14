package com.kuaiyidian.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

import com.kuaiyidian.database.Dao;
import com.shove.data.DataException;
import com.shove.data.DataSet;
import com.shove.util.BeanMapUtils;

public class ProductDetailDao {
	
	public long addProductDetail(Connection conn,String name,Long productId,String content,String introduction,String image,String images,Long parentId,Integer type,Integer sortIndex,Integer status,String backImage) throws SQLException{
		Dao.Tables.t_product_detail productDetail = new Dao().new Tables().new t_product_detail();
		
		productDetail._name.setValue(name);
		productDetail.productId.setValue(productId);
		productDetail.content.setValue(content);
		productDetail.introduction.setValue(introduction);
		productDetail.image.setValue(image);
		productDetail.images.setValue(images);
		productDetail.parentId.setValue(parentId);
		productDetail.type.setValue(type);
		productDetail.sortIndex.setValue(sortIndex);
		productDetail.status.setValue(status);
		productDetail.backImage.setValue(backImage);
		
		return productDetail.insert(conn);
	}
	
	public long updateProductDetail(Connection conn,long id,String name,Long productId,String content,String introduction,String imageStr,String images,Long parentId,Integer type,Integer sortIndex,Integer status,String backImage) throws SQLException{
		Dao.Tables.t_product_detail productDetail = new Dao().new Tables().new t_product_detail();
		
		if(StringUtils.isNotBlank(name)){
			productDetail._name.setValue(name);
		}
		if(productId != null&&productId > 0){
			productDetail.productId.setValue(productId);
		}
		if(StringUtils.isNotBlank(content)){
			productDetail.content.setValue(content);
		}
		if(StringUtils.isNotBlank(introduction)){
			productDetail.introduction.setValue(introduction);
		}
		if(StringUtils.isNotBlank(images)){
			productDetail.images.setValue(images);
		}
		if(StringUtils.isNotBlank(imageStr)){
			productDetail.image.setValue(imageStr);
		}
		if(StringUtils.isNotBlank(backImage)){
			productDetail.backImage.setValue(backImage);
		}
		if(parentId != null){
			productDetail.parentId.setValue(parentId);
		}
		if(type != null&&type > 0){
			productDetail.type.setValue(type);
		}
		if(sortIndex != null&&sortIndex > 0){
			productDetail.sortIndex.setValue(sortIndex);
		}
		if(status != null&&status > 0){
			productDetail.status.setValue(status);
		}
		
		return productDetail.update(conn, " id = "+id);
	}
	
	public long deleteProductDetail(Connection conn,String ids) throws SQLException{
		Dao.Tables.t_product_detail productDetail = new Dao().new Tables().new t_product_detail();
		
		return productDetail.delete(conn, " id in("+ids+") ");
	}
	
	public Map<String,String> queryProductDetailById(Connection conn,long id) throws SQLException, DataException{
		Dao.Tables.t_product_detail productDetail = new Dao().new Tables().new t_product_detail();
		
		DataSet ds = productDetail.open(conn, "  ", " id = "+id, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}
	
	public List<Map<String, Object>> queryProductDetailAll(Connection conn,String fieldList,String condition,String order)throws SQLException, DataException {
		Dao.Tables.t_product_detail productDetail = new Dao().new Tables().new t_product_detail();
		DataSet ds = productDetail.open(conn, fieldList, condition,order, -1, -1);
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}
}
