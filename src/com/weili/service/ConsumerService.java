package com.weili.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.shove.Convert;
import com.shove.base.BaseService;
import com.shove.data.DataException;
import com.shove.data.dao.MySQL;
import com.shove.vo.PageBean;
import com.weili.dao.ConsumerDao;

public class ConsumerService extends BaseService {

	public static Log log = LogFactory.getLog(ConsumerService.class);
	
	private ConsumerDao consumerDao;
	
	
	public void setConsumerDao(ConsumerDao consumerDao) {
		this.consumerDao = consumerDao;
	}

	/**
	 * 潜在用户信息收集
	 * @param cName 用户名
	 * @param cTelephone 
	 * @param address
	 * @param needContent
	 * @param needId
	 * @throws SQLException 
	 * @throws DataException
	 */
	public Map<String, Object> addConsumers(String cName,String cTelephone,String address,String needContent,int needId) throws Exception{
		Connection conn = null;

		long returnId = -1;
		String error = "发送失败";

		Map<String, Object> map = new HashMap<String, Object>();

		try {
			Map<String, Object> returnMap = checkConsumersMap(cName,cTelephone,address,needId);
			returnId = ((Long) returnMap.get("returnId"));
			if (returnId <= 0) {
				error = (String) returnMap.get("error");
				return map;
			}
			
			conn = connectionManager.getConnection();
			returnId = consumerDao.addConsumers(conn, cName,cTelephone,address,needContent,needId);

			if(returnId>0)
			error = "发送成功";
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			if (conn != null) {
				conn.close();
			}
			map.put("returnId", returnId);
			map.put("error", error);
		}
		return map;
		
	}
	/**
	 * 检查信息完整程度
	 * @param name
	 * @param enable
	 * @param type
	 * @param sortIndex
	 * @return
	 */
	private Map<String, Object> checkConsumersMap(String cName,String cTelephone,String address,int needId) {
		Map<String, Object> map = new HashMap<String, Object>();
		long returnId = -1;
		String error = "验证失败！";

		try {
			if (StringUtils.isBlank(cName)) {
				error = "姓名/公司名不能为空";
				return map;
			}
			if (StringUtils.isBlank(cTelephone)) {
				error = "手机号不能为空";
				return map;
			}
			if (StringUtils.isBlank(address)) {
				error = "地址不能为空";
				return map;
			}
			if (needId < 0) {
				error = "请选择需求类型";
				return map;
			}
			returnId = 1;
			error = "验证通过！";

			return map;
		} catch (Exception e) {
			returnId = -1;
			return map;
		} finally {
			map.put("returnId", returnId);
			map.put("error", error);
		}
	}
	/**
	 * 根据条件分页查询潜在用户
	 * @param userName 用户名
	 * @param enable 状态
	 * @param pageBean
	 * @throws SQLException 
	 * @throws DataException
	 */
	public void queryConsumersPage(PageBean<Map<String,Object>> pageBean,StringBuffer condition, String table, String order,String fieldList ) throws SQLException, DataException{
		Connection conn = connectionManager.getConnection();
		try {
			dataPage(conn, pageBean, table, fieldList, order, condition.toString());
		} catch (SQLException e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} catch (DataException e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
	}
	/**
	 * 删除潜在用户
	 */
	public long deleteConsumers(String ids) throws Exception {
		Connection conn = connectionManager.getConnection();

		long returnId = -1;
		try {
			returnId = consumerDao.deleteConsumers(conn, ids);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return returnId;
	}
	
	/**
	 * 根据id  潜在用户
	 * @throws SQLException 
	 * @throws DataException
	 */
	public Map<String, String> queryConsumerById(long id) throws Exception {
		Connection conn = connectionManager.getConnection();

		Map<String, String> map = new HashMap<String, String>();
		try {
			map = consumerDao.queryConsumerById(conn, id);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return map;
	}
	
	
	public Map<String,Object> addRemark(long id,String cName,String cTelephone,String address,String remark) throws Exception{
		Connection conn = null;
		
		long returnId = -1;
		String error = "备注失败";
		
		Map<String,Object> map = new HashMap<String, Object>();
		try{
			conn = MySQL.getConnection();
			returnId = consumerDao.addRemark(conn, id, cName, cTelephone, address, remark);
			if(returnId <= 0){
				conn.rollback();
				return map;
			}
			conn.commit();
			error = "备注成功";
		}catch (Exception e) {
			if(conn != null){
				conn.close();
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
	
	
	/**
	 * 获取用户需求分类列表 之业务处理
	 * @return
	 */
	public List<Map<String,Object>> queryNeedsType(String fieldList,String condition) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		try{
			list = consumerDao.queryNeedsType(conn, fieldList, condition);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		return list;
	}
	//待用1
	public Map<String,Object> updateConsumer(long id,String title,String source,Long views,String image,String content,Integer status,Integer isRecommended,Integer isIndex,Integer sortIndex,String seoTitle,String seoKeywords,String seoDescription,String addTime) throws Exception{
		Connection conn = null;
		
		long returnId = -1;
		String error = "修改失败";
		
		Map<String,Object> map = new HashMap<String, Object>();
		try{
			conn = MySQL.getConnection();
		//	returnId = consumerDao.update(conn, id, title, source, views, image,  content, status, isRecommended, isIndex, sortIndex, seoTitle, seoKeywords, seoDescription,addTime);
			if(returnId <= 0){
				conn.rollback();
				return map;
			}
			
			conn.commit();
			error = "修改成功";
		}catch (Exception e) {
			if(conn != null){
				conn.close();
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
}
