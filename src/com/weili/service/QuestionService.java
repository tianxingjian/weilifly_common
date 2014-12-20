package com.weili.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import com.shove.base.BaseService;
import com.shove.vo.PageBean;
import com.weili.dao.QuestionDao;


public class QuestionService extends BaseService{
public static Log log = LogFactory.getLog(QuestionService.class);
	
	private QuestionDao questionDao;

	public long addQuestion(String name,String solution,Long sortIndex,Long status,String addTime) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		long resultId = -1;
		
		try{
			resultId = questionDao.addQuestion(conn, name, solution, sortIndex,status,addTime);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		return resultId;
	}
	
	
	public long updateQuestion(long id,String name,String solution,int sortIndex,int status,String addTime) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		long returnId = -1;
		try{
			returnId = questionDao.updateQuestion(conn, id, name, solution, sortIndex,status,addTime);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return returnId;
	}
	
	
	
	public long deleteQuestion(String ids) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		long returnId = -1;
		try{
			returnId = questionDao.deleteQuestion(conn, ids);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return returnId;
	}
	
	
	
	public Map<String,String> queryQuestionById(long id) throws Exception{
		Connection conn = connectionManager.getConnection();		
		Map<String,String> map = new HashMap<String, String>();
		try{
			map = questionDao.queryQuestionById(conn, id);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}		
		return map;
	}
	
	
	
	public List<Map<String,Object>> queryQuestionAll(String fieldList,String condition,String order) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		try{
			list = questionDao.queryQuestionAll(conn, fieldList, condition, order);
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return list;
	}

	public List<Map<String,Object>> queryQuestionList(String keywords) throws Exception{
		Connection conn = connectionManager.getConnection();
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		
		StringBuffer condition = new StringBuffer();
		
		condition.append("1=1 and status = 1");
		
		if(StringUtils.isNotBlank(keywords)){
			condition.append(" and name like CONCAT('%','"+keywords+"','%') or solution like CONCAT('%','"+keywords+"','%')");
		}
		try{
			list = questionDao.queryQuestionAll(conn, "*", condition.toString(), " addTime desc");
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}
		
		return list;
	}
	
	
	public void queryQuestionPage(String name,Long status,PageBean<Map<String,Object>> pageBean) throws Exception{
		StringBuffer condition = new StringBuffer();
		if(StringUtils.isNotBlank(name)){
				condition.append(" AND name LIKE CONCAT('%','"+name.trim()+"','%')");	
		}
		if(status!=null&&status>0){
			condition.append(" AND status="+status);
		}
		Connection conn = connectionManager.getConnection();
		try{
			dataPage(conn, pageBean, " t_question_list ", " * ", "", condition.toString());
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}	
	}
	
	
	/***
	 * 列表分页
	 * @param pageBean
	 * @throws Exception
	 */
	public void queryQuestionPage(PageBean<Map<String,Object>> pageBean,String name) throws Exception{
		Connection conn = connectionManager.getConnection();
		StringBuffer condition = new StringBuffer();
		if(StringUtils.isNotBlank(name)){
				condition.append(" AND name LIKE CONCAT('%','"+name.trim()+"','%')");	
		}
		try{
			dataPage(conn, pageBean, " t_question_list ", " * ", " ORDER BY addTime desc",condition.toString());
		}catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		}finally{
			conn.close();
		}	
	}
	
	
	
	
	public  void setQuestionDao(QuestionDao questionDao) {
		this.questionDao=questionDao;
	}
	
	
}
