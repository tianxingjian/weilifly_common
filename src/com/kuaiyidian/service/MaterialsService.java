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
import com.kuaiyidian.dao.AttributeDao;
import com.kuaiyidian.dao.MaterialsAttributeDao;
import com.kuaiyidian.dao.MaterialsDao;
import com.shove.Convert;
import com.shove.base.BaseService;
import com.shove.data.DataSet;
import com.shove.data.dao.MySQL;
import com.shove.util.ExportUtils;
import com.shove.util.FindWebPath;
import com.shove.util.StringCommon;
import com.shove.vo.PageBean;

public class MaterialsService extends BaseService {

	public static Log log = LogFactory.getLog(MaterialsService.class);

	private MaterialsDao materialsDao;
	private MaterialsAttributeDao materialsAttributeDao;
	private AttributeDao attributeDao;

	public Map<String, Object> addMaterials(String name, String number,
			String productIds, String path, String size, Integer sortIndex,
			Integer status, String seoTitle, String seoKeywords,
			String seoDescription, String attributeIds) throws Exception {
		    Connection conn = null;

		long returnId = -1;
		String error = "添加失败";

		Map<String, Object> map = new HashMap<String, Object>();

		// 资料属性
		List<Map<String, Object>> materialsAttitudeList = new ArrayList<Map<String, Object>>();

		try {

			/*
			 * int i = StringCommon.checkIds(productIds); if(i < 0){ error =
			 * "所属产品信息错误";
			 * 
			 * return map; }
			 */

			// boolCis:是否开启校验资料属性信息
			Map<String, Object> returnMap = checkMaterials(name, number, null,
					path, size, sortIndex, status, seoTitle, seoKeywords,
					seoDescription, attributeIds, materialsAttitudeList, true);

			returnId = ((Long) returnMap.get("returnId"));
			if (returnId <= 0) {
				error = (String) returnMap.get("error");

				return map;

			}
			conn = MySQL.getConnection();

			// long[] pids = StringCommon.checkTurnIds(productIds);
			// for(long productId:pids){
			long materialsId = materialsDao.addMaterials(conn, name, number,
					null, path, size, sortIndex, status, seoTitle, seoKeywords,
					seoDescription);
			if (materialsId < 0) {
				conn.rollback();
				returnId = -1;
				return map;
			}
			
			for (Map<String, Object> mMap : materialsAttitudeList) {
				returnId = materialsAttributeDao.addMaterialsAttribute(conn,
						(Long) mMap.get("attributeId"), materialsId);
				if (returnId < 0) {
					conn.rollback();
					return map;
				}
			}
			// }

			conn.commit();
			error = "添加成功！";
		} catch (Exception e) {
			if (conn != null) {
				conn.rollback();
			}
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

	private Map<String, Object> checkMaterials(String name, String number,
			Long productId, String path, String size, Integer sortIndex,
			Integer status, String seoTitle, String seoKeywords,
			String seoDescription, String attributeIds,
			List<Map<String, Object>> materialsAttitudeList, boolean boolCis) {
		Map<String, Object> map = new HashMap<String, Object>();
		long returnId = -1;
		String error = "验证失败！";

		int i = 0;
		long attributeId;

		Map<String, Object> attributeMap;

		try {
			if (StringUtils.isBlank(number)) {
				error = "条形码不能为空";
				return map;
			}
			if (number.length() > 100) {
				error = "条形码长度不能大于100";
				return map;
			}
			/*
			 * if(StringUtils.isBlank(name)){ error = "名称不能为空"; return map; }
			 */
			if (name.length() > 200) {
				error = "名称长度不能大于200";
				return map;
			}
			/*
			 * if(!boolCis){ if(productId == null||productId < 0){ error =
			 * "请选择所属产品"; return map; } }
			 */

			if (StringUtils.isBlank(path)) {
				error = "请上传资料";
				return map;
			}
			/*
			 * if(StringUtils.isBlank(size)){ error = "请输入资料大小"; return map; }
			 */
			if (status == null || status < 0) {
				error = "请选择是否显示";
				return map;
			}
			if (boolCis) {
				if (StringUtils.isBlank(attributeIds)) {
					error = "请选择资料属性";
					return map;
				}
				long[] attributes = StringCommon.checkTurnIds(attributeIds);
				if (attributes == null || attributes.length <= 0) {
					error = "请选择资料属性";
					return map;
				}
				int attributeLength = attributes.length;
				for (; i < attributeLength; i++) {
					attributeId = attributes[i];
					attributeMap = new HashMap<String, Object>();
					attributeMap.put("attributeId", attributeId);
					materialsAttitudeList.add(attributeMap);
				}
			}
			returnId = 1;
			error = "验证通过！";

			return map;
		} catch (Exception e) {
			returnId = -1;
			log.error(e);
			e.printStackTrace();
			return map;
		} finally {
			map.put("returnId", returnId);
			map.put("error", error);
		}
	}



	public Map<String, Object> updateMaterials(long id, String name,
			String number, Long productId, String path, String size,
			Integer sortIndex, Integer status, String seoTitle,
			String seoKeywords, String seoDescription,String attributeIds) throws Exception {
		Connection conn = null;

		long returnId = -1;
		String error = "修改失败";

		Map<String, Object> map = new HashMap<String, Object>();
		// 资料属性
		List<Map<String, Object>> materialsAttitudeList = new ArrayList<Map<String, Object>>();
		try {
			// boolCis:是否开启校验产品颜色库存信息
			Map<String, Object> returnMap = checkMaterials(name, number,
					productId, path, size, sortIndex, status, seoTitle,
					seoKeywords, seoDescription, attributeIds, materialsAttitudeList, true);

			returnId = ((Long) returnMap.get("returnId"));
			if (returnId <= 0) {
				error = (String) returnMap.get("error");
				returnId = -1;
				return map;

			}
			conn = MySQL.getConnection();
			long materialsId = materialsDao.updateMaterials(conn, id, name, number,
					productId, path, size, sortIndex, status, seoTitle,
					seoKeywords, seoDescription);
			if (materialsId < 0) {
				conn.rollback();
				returnId = -1;
				return map;
			}
			materialsId = id;
			Long rid = materialsAttributeDao.deleteAttributeId(conn, materialsId);
			if(rid==null||rid<=0){
				conn.rollback();
				returnId = -1;
				return map;
			}
			for (Map<String, Object> mMap : materialsAttitudeList) {
				returnId = materialsAttributeDao.addMaterialsAttribute(conn,
						(Long) mMap.get("attributeId"), materialsId);
				if (returnId < 0) {
					conn.rollback();
					return map;
				}
			}
			conn.commit();
			error = "修改成功";

		} catch (Exception e) {
			if (conn != null) {
				conn.rollback();
			}
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

	public long deleteMaterials(String ids) throws Exception {
		Connection conn = MySQL.getConnection();

		long returnId = -1;
		try {
			returnId = materialsDao.deleteMaterials(conn, ids);
			if (returnId < 0) {
				conn.rollback();
				return returnId;
			}
			returnId = MySQL.executeNonQuery(conn,
					"delete from t_materials_attribute where materialsId in("
							+ ids + ")");
			if (returnId < 0) {
				conn.rollback();
				return returnId;
			}

			conn.commit();
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return returnId;
	}

	public Map<String, String> queryMaterialsById(long id) throws Exception {
		Connection conn = connectionManager.getConnection();

		Map<String, String> map = new HashMap<String, String>();
		try {
			map = materialsDao.queryMaterialsById(conn, id);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return map;
	}
	//查询 资料id
	public List<Map<String, Object>> queryMaterById(long id) throws Exception {
		Connection conn = connectionManager.getConnection();
		
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		try {
			list = materialsDao.queryMaterById(conn, id);
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}
		
		return list;
	}

	public List<Map<String, Object>> queryMaterialsAll() throws Exception {
		Connection conn = connectionManager.getConnection();

		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();

		StringBuffer condition = new StringBuffer();
		try {
			list = materialsDao.queryMaterialsAll(conn, "*", condition
					.toString(), "");
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return list;
	}

	
	public String createMaterialsBtachFile(String ids) throws Exception {
		Connection conn = connectionManager.getConnection();

		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();

		String filePath = "";

		List<String> fileList = new ArrayList<String>();

		StringBuffer condition = new StringBuffer();

		condition.append("1=1");
		if (StringUtils.isNotBlank(ids)) {
			condition.append(" and id in(" + ids.trim() + ")");
		}

		try {
			list = materialsDao.queryMaterialsAll(conn, "*", condition
					.toString(), "");
			for (Map<String, Object> map : list) {
				fileList.add(map.get("path") + "");
			}
			filePath = ExportUtils.createBtachFile(fileList, FindWebPath
					.getWebRootPath(), "", "materials.zip");
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return filePath;
	}

	// Android
	public String createMaterialsAndroidBtachFile(String ids) throws Exception {
		Connection conn = connectionManager.getConnection();

		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();

		String filePath = "";

		List<String> fileList = new ArrayList<String>();

		StringBuffer condition = new StringBuffer();

		condition.append("1=1");
		if (StringUtils.isNotBlank(ids)) {
			condition.append(" and id in(" + ids.trim() + ")");
		}

		try {
			list = materialsDao.queryAdvertisementAll(conn, "*", condition
					.toString(), "");
			for (Map<String, Object> map : list) {
				fileList.add(map.get("androidPath") + "");
			}
			filePath = ExportUtils.createBtachFile(fileList, FindWebPath
					.getWebRootPath(), "", "materials.zip");
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return filePath;
	}
	// IOS
	public String createMaterialsIosBtachFile(String ids) throws Exception {
		Connection conn = connectionManager.getConnection();
		
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		
		String filePath = "";
		
		List<String> fileList = new ArrayList<String>();
		
		StringBuffer condition = new StringBuffer();
		
		condition.append("1=1");
		if (StringUtils.isNotBlank(ids)) {
			condition.append(" and id in(" + ids.trim() + ")");
		}
		
		try {
			list = materialsDao.queryAdvertisementAll(conn, "*", condition
					.toString(), "");
			for (Map<String, Object> map : list) {
				fileList.add(map.get("iosPath") + "");
			}
			filePath = ExportUtils.createBtachFile(fileList, FindWebPath
					.getWebRootPath(), "", "materials.zip");
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}
		
		return filePath;
	}

	public void queryMaterialsPage(PageBean<Map<String, Object>> pageBean,
			String number, String name, Long productId, Long aId,
			Integer status, String startDate, String endDate) throws Exception {
		StringBuffer condition = new StringBuffer();

		Connection conn = connectionManager.getConnection();

		condition.append("select * from v_t_materials_product where 1=1");

		if (StringUtils.isNotBlank(number)) {
			condition.append(" and `number` LIKE CONCAT('%','" + number.trim()
					+ "','%')");
		}
		if (StringUtils.isNotBlank(name)) {
			condition.append(" and `name` LIKE CONCAT('%','" + name.trim()
					+ "','%')");
		}
		if (productId != null && productId > 0) {
			condition.append(" and productId = " + productId);
		}
		if (aId != null && aId > 0) {
			condition.append(" and attributeId=" + aId);
		}
		if (status != null && status > 0) {
			condition.append(" and `status` = " + status);
		}
		if (StringUtils.isNotBlank(startDate)) {
			condition.append(" and date_format(addTime,'%Y-%m-%d') >= '"
					+ startDate + "'");
		}
		if (StringUtils.isNotBlank(endDate)) {
			condition.append(" and date_format(addTime,'%Y-%m-%d') <= '"
					+ endDate + "'");
		}

		condition.append(" group by id");

		try {
			DataSet ds = MySQL.executeQuery(conn, condition.toString());
			ds.tables.get(0).rows.genRowsMap();
			long count = ds.tables.get(0).rows.rowsMap.size();
			boolean result = pageBean.setTotalNum(count);
			if (result) {
				condition.append(" limit " + pageBean.getStartOfPage() + ","
						+ pageBean.getPageSize());
				ds = MySQL.executeQuery(conn, condition.toString());
				ds.tables.get(0).rows.genRowsMap();
				pageBean.setPage(ds.tables.get(0).rows.rowsMap);
			}
			// dataPage(conn, pageBean, "v_t_materials_product", " * ",
			// "order by addTime desc", condition.toString());
		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

	}

	/**
	 * 资料下载查询
	 * 
	 * @param pageBean
	 * @param productId
	 * @param keywords
	 * @param attributeIds
	 * @return
	 * @throws Exception
	 */
	public long queryMaterials(PageBean<Map<String, Object>> pageBean,
			Long productId, String keywords, String attributeIds,
			String pattributeIds) throws Exception {
		StringBuffer condition = new StringBuffer();

		Connection conn = connectionManager.getConnection();

		condition.append("select * from v_t_materials_product where 1=1");

		if (StringUtils.isNotBlank(keywords)) {
			condition.append(" and ((`number` LIKE CONCAT('%','"
					+ keywords.trim() + "','%')) or (`name` LIKE CONCAT('%','"
					+ keywords.trim() + "','%')))");
		}

		condition.append(" and `status` = " + IConstants.STATUS_ON);

		if (StringUtils.isNotBlank(attributeIds)) {
			condition
					.append(" and attributeId in(" + attributeIds.trim() + ")");
		}

		if (StringUtils.isNotBlank(pattributeIds)) {
			condition.append(" and attributeId in(" + pattributeIds.trim()
					+ ")");
		} else {
			condition.append(" and attributeId = -1");
		}

		condition.append(" group by id");

		long count = 0;

		/*
		 * try{ DataSet ds = MySQL.executeQuery(conn,
		 * "select materialsId from t_materials_attribute where 1=1" +
		 * buffer.toString());//查询资料属性得到资料ID集合
		 * ds.tables.get(0).rows.genRowsMap(); List<Map<String,Object>> list =
		 * ds.tables.get(0).rows.rowsMap; List<Long> materialsIdList = new
		 * ArrayList<Long>(); for(Map<String,Object> map:list){ Long materialsId
		 * = (Long) map.get("materialsId"); materialsIdList.add(materialsId); }
		 * String materialsIds = StringUtils.join(materialsIdList, ",");
		 * 
		 * StringCommon.getNotRepeatedId(materialsIds,
		 * materialsIdList);//获得资料ID，以逗号隔开 materialsIds =
		 * StringUtils.join(materialsIdList, ",");
		 * if(StringUtils.isNotBlank(materialsIds)){
		 * condition.append(" and id in("+materialsIds+")"); } if(list ==
		 * null||list.size() <= 0){ condition.append(" and id in("+-1+")"); }
		 * 
		 * dataPage(conn, pageBean, "t_materials", " * ",
		 * "order by addTime desc", condition.toString());
		 * 
		 * List<Map<String,Object>> materialsList = pageBean.getPage();//资料
		 * String[] materials = null; if(materialsList !=
		 * null&&materialsList.size() > 0){ int size = materialsList.size();
		 * materials = new String[size]; for(int i = 0;i<size;i++){ materials[i]
		 * = materialsList.get(i).get("id") + ""; } } String materialIds =
		 * StringUtils.join(materials, ",");
		 * 
		 * List<Map<String,Object>> parentList =
		 * attributeDao.queryAttributeParent(conn,materialIds,
		 * IConstants.STATUS_ON);//查询父属性 List<Map<String,Object>> childList =
		 * attributeDao.queryAttributeChild(conn,materialIds,
		 * IConstants.STATUS_ON);//查询子属性
		 * 
		 * if(materialsList != null&&materialsList.size() > 0){
		 * for(Map<String,Object> map:materialsList){ map.put("parentList",
		 * parentList); map.put("childList", childList); } }
		 * 
		 * ds = MySQL.executeQuery(conn,
		 * "select count(*) as count from t_materials where 1=1"
		 * +condition.toString()); Map<String,String> map =
		 * BeanMapUtils.dataSetToMap(ds); count =
		 * Convert.strToLong(map.get("count"), 0); }catch (Exception e) {
		 * log.error(e); e.printStackTrace(); throw e; }finally{ conn.close(); }
		 */

		try {
			DataSet ds = MySQL.executeQuery(conn, condition.toString());
			ds.tables.get(0).rows.genRowsMap();
			count = ds.tables.get(0).rows.rowsMap.size();// 总条数
			boolean result = pageBean.setTotalNum(count);
			if (result) {
				condition.append(" limit " + pageBean.getStartOfPage() + ","
						+ pageBean.getPageSize());
				ds = MySQL.executeQuery(conn, condition.toString());
				ds.tables.get(0).rows.genRowsMap();
				pageBean.setPage(ds.tables.get(0).rows.rowsMap);
			}

			List<Map<String, Object>> materialsList = pageBean.getPage();// 资料
			String[] materials = null;
			if (materialsList != null && materialsList.size() > 0) {
				int size = materialsList.size();
				materials = new String[size];
				for (int i = 0; i < size; i++) {
					materials[i] = materialsList.get(i).get("id") + "";
				}
			}
			String materialIds = StringUtils.join(materials, ",");

			List<Map<String, Object>> parentList = attributeDao
					.queryAttributeParent(conn, materialIds,
							IConstants.STATUS_ON);// 查询父属性
			List<Map<String, Object>> childList = attributeDao
					.queryAttributeChild(conn, materialIds,
							IConstants.STATUS_ON);// 查询子属性

			if (materialsList != null && materialsList.size() > 0) {
				for (Map<String, Object> map : materialsList) {
					map.put("parentList", parentList);
					map.put("childList", childList);
				}
			}

		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return count;
	}

	public String queryProductAttributes(String id) throws Exception {
		Connection conn = connectionManager.getConnection();

		String attributeIds = "";

		StringBuffer condition = new StringBuffer();

		if (StringUtils.isNotBlank(id)) {
			condition.append(" and productIds LIKE CONCAT('%','" + id.trim()
					+ "','%')");
		}

		try {
			DataSet ds = MySQL.executeQuery(conn,
					"select id from t_attribute where 1=1"
							+ condition.toString());// 查询资料属性得到资料ID集合
			ds.tables.get(0).rows.genRowsMap();
			List<Map<String, Object>> list = ds.tables.get(0).rows.rowsMap;
			List<Long> materialsIdList = new ArrayList<Long>();
			for (Map<String, Object> map : list) {
				Long aid = (Long) map.get("id");
				materialsIdList.add(aid);
			}
			attributeIds = StringUtils.join(materialsIdList, ",");

		} catch (Exception e) {
			log.error(e);
			e.printStackTrace();
			throw e;
		} finally {
			conn.close();
		}

		return attributeIds;
	}

	/**
	 * 批量导入资料
	 * 
	 * @author <a href="mailto:xuzhangchu@eims.com.cn">xzc</a>
	 * @class com.fs.service
	 * @since 2014-7-4
	 * @edit 2014-7-4
	 * @version 1.0
	 * @param result
	 * @return
	 * @throws Exception
	 */
	public Map<String, Object> importProductBatch(String[][] result,
			Long adminid, String number, Long productId, String size,
			Integer sortIndex, Integer status, String seoTitle,
			String seoKeywords, String seoDescription, String attributeIds)
			throws Exception {
		Connection conn = MySQL.getConnection();
		Map<String, Object> map = new HashMap<String, Object>();
		long returnId = -1;
		String error = "添加失败";
		try {
			// 资料属性
			List<Map<String, Long>> attrList = new ArrayList<Map<String, Long>>();
			attrList = getAttributeList(attributeIds);
			if (attrList == null) {
				error = "请选择资料属性";
				map.put("returnId", returnId);
				map.put("error", error);
				return map;
			}
			if (result != null && result.length > 0) {
				String name = "" ,path = "";
				for (int i = 0; i < result.length; i++) {
					name = result[i][0].trim();
					path = result[i][1].trim();
					long materialsId = materialsDao.addMaterials(conn, name,number, productId, path, size, sortIndex, status,seoTitle, seoKeywords, seoDescription);
					if (materialsId < 0) {
						conn.rollback();
						error = "添加失败";
						map.put("returnId", materialsId);
						map.put("error", error);
						return map;
					}
					for (int j = 0; j < attrList.size(); j++) {
						returnId = materialsAttributeDao.addMaterialsAttribute(conn,(Long) attrList.get(j).get("attributeId"),materialsId);
						if (returnId < 0) {
							conn.rollback();
							error = "添加失败";
							map.put("returnId", returnId);
							map.put("error", error);
							return map;
						}
					}

				}

			}
			conn.commit();
			error = "添加成功！";
		} catch (Exception e) {
			if (conn != null) {
				conn.rollback();
			}
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

	public List<Map<String, Long>> getAttributeList(String attributeIds) {
		if (StringUtils.isBlank(attributeIds)) {
			return null;
		}
		long[] attributes = StringCommon.checkTurnIds(attributeIds);
		if (attributes == null || attributes.length <= 0) {
			return null;
		}
		List<Map<String, Long>> attrList = new ArrayList<Map<String, Long>>();
		int attributeLength = attributes.length;
		for (int i = 0; i < attributeLength; i++) {
			Map<String, Long> reMap = new HashMap<String, Long>();
			reMap.put("attributeId", attributes[i]);
			attrList.add(reMap);
		}
		return attrList;
	}

	public void setMaterialsDao(MaterialsDao materialsDao) {
		this.materialsDao = materialsDao;
	}

	public void setMaterialsAttributeDao(
			MaterialsAttributeDao materialsAttributeDao) {
		this.materialsAttributeDao = materialsAttributeDao;
	}

	public void setAttributeDao(AttributeDao attributeDao) {
		this.attributeDao = attributeDao;
	}

}
