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

import com.shove.base.BaseService;
import com.shove.data.DataException;
import com.shove.vo.PageBean;
import com.weili.dao.ModuleDao;

public class ModuleService extends BaseService {
	public static Log log = LogFactory.getLog(ModuleService.class);

	private ModuleDao moduleDao;
	
	/**
	 * 添加模块信息
	 * @param summary
	 * @param action
	 * @param parentId
	 * @param isQuery
	 * @param isIntercept
	 * @param indexs
	 * @param isLog
	 * @param description
	 * @return
	 * @throws SQLException
	 * @throws DataException
	 */
	public long addModule(String summary, String action,long parentId,int isQuery,int isIntercept,int indexs,
			int isLog,String description) throws  SQLException, DataException{
		Connection conn = connectionManager.getConnection();
		
		long moduleId = -1;
		try {
			moduleId = moduleDao.addModule(conn, summary,action,parentId,isQuery,isIntercept,indexs,isLog,description);
		} catch (SQLException e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}
		return moduleId;
	}
	
	/**
	 * 检查信息完整程度
	 * @param name
	 * @param enable
	 * @param type
	 * @param sortIndex
	 * @return
	 */
	private Map<String, Object> checkModuleMap(String summary, String action,long parentId,int isQuery,int isIntercept,int indexs,
			int isLog,String description) {
		Map<String, Object> map = new HashMap<String, Object>();
		long returnId = -1;
		String error = "验证失败！";

		try {
			if (indexs < 0) {
				error = "排序格式不正确";
				return map;
			}
			if (StringUtils.isBlank(summary)) {
				error = "模块名称不能为空";
				return map;
			}
			if (isIntercept < 0) {
				error = "请选择是否支持权限分配";
				return map;
			}
			if (isQuery < 0) {
				error = "请选择是否启用";
				return map;
			}
			if (StringUtils.isBlank(description)) {
				error = "模块描述不能为空";
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
	 * 更新模块操作
	 * @param id
	 * @param summary
	 * @param action
	 * @param parentId
	 * @param isQuery
	 * @param isIntercept
	 * @param indexs
	 * @param isLog
	 * @param description
	 * @return
	 * @throws Exception
	 */
	public Map<String, Object> updateModule(long id, String summary,String action,
			long parentId,int isQuery, int isIntercept,int indexs, int isLog, String description)
			throws Exception {
		Connection conn = null;

		long returnId = -1;
		String error = "修改失败";

		Map<String, Object> map = new HashMap<String, Object>();

		try {
			Map<String, Object> returnMap = checkModuleMap(summary,action,parentId,isQuery,isIntercept,indexs,isLog,description);
			returnId = ((Long) returnMap.get("returnId"));
			if (returnId <= 0) {
				error = (String) returnMap.get("error");
				return map;
			}
			conn = connectionManager.getConnection();
			returnId = moduleDao.updateModule(conn, id, summary,action,parentId,isQuery,isIntercept,indexs,isLog,description);

			error = "修改成功";
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
	 * 删除模块
	 * @param ids
	 * @return
	 * @throws Exception
	 */
	public long deleteModule(String ids) throws  DataException, SQLException {
		Connection conn = connectionManager.getConnection();

		long returnId = -1;
		try {
			returnId = moduleDao.deleteModule(conn, ids);
		} catch (SQLException e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}
		return returnId;
	}
	
	/**
	 * 根据id查询
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public Map<String, String> queryModuleById(long id) throws SQLException, DataException {
		Connection conn = connectionManager.getConnection();

		Map<String, String> map = new HashMap<String, String>();
		try {
			map = moduleDao.queryModuleById(conn, id);
		} catch (SQLException e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}
		return map;
	}
	
	/**
	 * 根据条件查询
	 * @param fieldList
	 * @param condition
	 * @param order
	 * @return
	 * @throws Exception
	 */
	public List<Map<String, Object>> queryModuleAll(String fieldList,
			String condition, String order) throws Exception {
		Connection conn = connectionManager.getConnection();

		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		try {
			list = moduleDao.queryModuleAll(conn, fieldList, condition, order);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}
		return list;
	}
	
	/**
	 * 查询页数据
	 * @param pageBean
	 * @param fieldList
	 * @param condition
	 * @param order
	 * @param table
	 * @throws Exception
	 */
	public void queryModulePage(String summary,Integer isIntercept,PageBean<Map<String,Object>> pageBean)
			throws SQLException, DataException {
		Connection conn = connectionManager.getConnection();
		try {
			StringBuffer condition = new StringBuffer();
			if(StringUtils.isNotBlank(summary)){
				condition.append(" AND summary LIKE CONCAT('%','"+summary.trim()+"','%')");
			}
			if(isIntercept!=null&&isIntercept>=0){
				condition.append(" AND isIntercept = " + isIntercept);
			}
			dataPage(conn, pageBean, " v_bt_rights", " * ", "", condition.toString());
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
	 * 查询父模块集合
	 * @return
	 * @throws SQLException 
	 * @throws DataException 
	 */
	public List<Map<String,Object>> queryModuleList() throws SQLException, DataException{
		Connection conn = connectionManager.getConnection();
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		try {
			list = moduleDao.queryModuleList(conn);
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
		return list;
	}
	
	public void setModuleDao(ModuleDao moduleDao) {
		this.moduleDao = moduleDao;
	}
}
