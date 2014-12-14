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

public class ProductParameterDao {
	
	public long addProductParameter(Connection conn,Long productId,long parameterId,String content) throws SQLException{
		Dao.Tables.t_product_parameter productParameter = new Dao().new Tables().new t_product_parameter();
		
		productParameter.productId.setValue(productId);
		productParameter.parameterId.setValue(parameterId);
		productParameter.content.setValue(content);
		
		return productParameter.insert(conn);
	}
	
	public long updateProductParameter(Connection conn,long id,Long productId,Long parameterId,String content) throws SQLException{
		Dao.Tables.t_product_parameter productParameter = new Dao().new Tables().new t_product_parameter();
		
		if(productId != null&&productId > 0){
			productParameter.productId.setValue(productId);
		}
		if(parameterId != null&&parameterId > 0){
			productParameter.parameterId.setValue(parameterId);
		}
		if(StringUtils.isNotBlank(content)){
			productParameter.content.setValue(content);
		}
		
		return productParameter.update(conn, " id = "+id);
	}
	
	public long deleteProductParameter(Connection conn,String ids) throws SQLException{
		Dao.Tables.t_product_parameter productParameter = new Dao().new Tables().new t_product_parameter();
		
		return productParameter.delete(conn, " id in("+ids+") ");
	}
	
	public Map<String,String> queryProductParameterById(Connection conn,long id) throws SQLException, DataException{
		Dao.Views.v_t_product_parameter productParameter = new Dao().new Views().new v_t_product_parameter();
		
		DataSet ds = productParameter.open(conn, "  ", " id = "+id, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}
	
	public List<Map<String,Object>> queryProductParameterAll(Connection conn,Long productId) throws SQLException, DataException{
		Dao.Views.v_t_product_parameter productParameter = new Dao().new Views().new v_t_product_parameter();
		
		DataSet ds = productParameter.open(conn, "  ", " productId = " + productId, "", -1, -1);
		
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}

	public List<Map<String,Object>> queryProductParameterList(Connection conn) throws SQLException, DataException{
		Dao.Tables.t_product_parameter productParameter = new Dao().new Tables().new t_product_parameter();
		
		DataSet ds = productParameter.open(conn, "  ", "", "", -1, -1);
		
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}
}
