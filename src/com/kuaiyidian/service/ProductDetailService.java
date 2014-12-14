package com.kuaiyidian.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.kuaiyidian.constants.IConstants;
import com.kuaiyidian.dao.ProductDetailDao;
import com.shove.base.BaseService;
import com.shove.data.dao.MySQL;
import com.shove.vo.PageBean;

public class ProductDetailService extends BaseService {
	
	public static Log log = LogFactory.getLog(ProductDetailService.class);
	
	private ProductDetailDao productDetailDao;

	public Map<String,Object> addProductDetail(String name,Long productId,String content,String introduction,String image,String images,Long parentId,Integer type,Integer sortIndex,Integer status,String backImage) throws Exception{
		Connection conn = null;
		
		long returnId = -1;
		String error = "添加失败";
		
		Map<String,Object> map = new HashMap<String, Object>();
		try{
			Map<String,Object> returnMap = checkProductDetail(name, productId, content, introduction, image, images, parentId, type, sortIndex, status,backImage);
			
			returnId = ((Long)returnMap.get("returnId")); 
			if(returnId <= 0){
				error = (String)returnMap.get("error");
				
				return map;
				
			}
			
			conn = MySQL.getConnection();
			
			returnId = productDetailDao.addProductDetail(conn, name, productId, content, introduction, image, images, parentId, type, sortIndex, status,backImage);
			
			if(returnId < 0){
				conn.rollback();
				return map;
			}
			
			conn.commit();
			error = "添加成功！";
		}catch (Exception e) {
			if(conn!=null){
				conn.rollback();
			}
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			if(conn != null){
				conn.close();
			}
			
			map.put("returnId", returnId);
			map.put("error", error);
		}
		
		return map;
	}
	
	public Map<String,Object> updateProductDetail(long id,String name,Long productId,String content,String introduction,String image,String images,Long parentId,Integer type,Integer sortIndex,Integer status,String backImage) throws Exception{
		Connection conn = null;
		
		long returnId = -1;
		String error = "修改失败";
		
		Map<String,Object> map = new HashMap<String, Object>();
		try{
			Map<String,Object> returnMap = checkProductDetail(name, productId, content, introduction, image, images, parentId, type, sortIndex, status,backImage);
			
			returnId = ((Long)returnMap.get("returnId")); 
			if(returnId <= 0){
				error = (String)returnMap.get("error");
				
				return map;
				
			}
			
			conn = MySQL.getConnection();
			
			returnId = productDetailDao.updateProductDetail(conn, id, name, productId, content, introduction, image, images, parentId, type, sortIndex, status,backImage);
			
			if(returnId < 0){
				conn.rollback();
				return map;
			}
			
			conn.commit();
			error = "修改成功！";
		}catch (Exception e) {
			if(conn!=null){
				conn.rollback();
			}
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			if(conn != null){
				conn.close();
			}
			
			map.put("returnId", returnId);
			map.put("error", error);
		}
		
		return map;
	}
	
	public Map<String,Object> checkProductDetail(String name,Long productId,String content,String introduction,String image,String images,Long parentId,Integer type,Integer sortIndex,Integer status,String backImage){
		Map<String,Object> map = new HashMap<String, Object>();
		long returnId = -1;
		String error = "验证失败！";
		
		try {
			/*if((parentId < 0||type == 8||type == 9||type == 12)&&(StringUtils.isBlank(name))){
				error = "名称不能为空";
				return map;
			}
			if(status < 0){
				error = "请选择是否显示";
				return map;
			}
			if(parentId < 0&&StringUtils.isBlank(backImage)){
				error = "请上传背景图片";
				return map;
			}
			if(type == IConstants.PRODUCT_DETAIL_TYPE_PHONE&&StringUtils.isBlank(introduction)){
				error = "简介不能为空";
				return map;
			}
			if(type == 3&&StringUtils.isBlank(images)){
				error = "请上传图集";
				return map;
			}
			if(type == 11&&StringUtils.isBlank(introduction)){
				error = "简介不能为空";
				return map;
			}
			if((type == 11||type == IConstants.PRODUCT_DETAIL_TYPE_PHONE||type==IConstants.PRODUCT_DETAIL_TYPE_IMAGESCHILD)&&(StringUtils.isBlank(image))){
				error = "请上传图片";
				return map;
			}
			if(type == 4&&StringUtils.isBlank(introduction)){
				error = "请上传视频";
				return map;
			}*/
			
//			if((type==1||type==3||type==4||type==IConstants.PRODUCT_DETAIL_TYPE_QUESTION||type==IConstants.PRODUCT_DETAIL_TYPE_ZHEN||type==IConstants.PRODUCT_DETAIL_TYPE_IMAGESCHILD)&&(StringUtils.isBlank(content))){
//				error = "内容不能为空";
//				return map;
//			}
			returnId = 1;
			error = "验证通过！";
			
			return map;
		} catch (Exception e) {
			returnId = -1;
			return map;
		}finally{
			map.put("returnId", returnId);
			map.put("error", error);
		}
	}
	
	public long deleteProductDetail(String ids) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		long returnId = -1;
		try{
			returnId = productDetailDao.deleteProductDetail(conn, ids);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return returnId;
	}
	
	public Map<String,String> queryProductDetailById(long id) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		Map<String,String> map = new HashMap<String, String>();
		try{
			map = productDetailDao.queryProductDetailById(conn, id);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return map;
	}
	
	public List<Map<String,Object>> queryProductDetailAll(Long productId,Long parentId) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		
		StringBuffer condition = new StringBuffer();
		
		condition.append("1=1");
		
		if(productId != null&&productId > 0){
			condition.append(" and productId = "+productId);
		}
		
		if(parentId != null){
			condition.append(" and parentId = "+parentId);
		}
		
		try{
			list = productDetailDao.queryProductDetailAll(conn, "*", condition.toString(), "");
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return list;
	}
	
	public List<Map<String,Object>> queryProductDetailList(Long productId) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		
		StringBuffer condition = new StringBuffer();
		
		condition.append("1=1");
		
		if(productId != null&&productId > 0){
			condition.append(" and productId = "+productId);
		}
		
		condition.append(" and status = "+IConstants.STATUS_ON);

		try{
			if(productId == null||productId < 0){
				return list;
			}
			list = productDetailDao.queryProductDetailAll(conn, "*", condition.toString(), "id asc");
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return list;
	}
	
	public void queryProductDetailPage(PageBean<Map<String,Object>> pageBean,String fieldList,String condition,String order,String table) throws Exception{
		Connection conn = connectionManager.getConnection();
		try{
			dataPage(conn, pageBean, table, fieldList, order, condition.toString());
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
	}

	public void setProductDetailDao(ProductDetailDao productDetailDao) {
		this.productDetailDao = productDetailDao;
	}
	
}
