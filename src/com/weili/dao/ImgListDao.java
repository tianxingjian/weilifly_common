package com.weili.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

import com.shove.data.DataException;
import com.shove.data.DataSet;
import com.shove.util.BeanMapUtils;
import com.weili.database.Dao;

public class ImgListDao {
	
	/**
	 * 添加图片列表
	 * @param conn
	 * @param tid
	 * @param imgUrl
	 * @param downUrl
	 * @param status
	 * @param sortIndex
	 * @return
	 * @throws SQLException
	 */
	public long addImgList(Connection conn, int tid, String imgUrl,
			String downUrl, int status, int sortIndex) throws SQLException {
		Dao.Tables.t_img_list imgList = new Dao().new Tables().new t_img_list();
		imgList.tid.setValue(tid);
		imgList.imgUrl.setValue(imgUrl);
		imgList.downUrl.setValue(downUrl);
		imgList.status.setValue(status);
		imgList.sortIndex.setValue(sortIndex);
		return imgList.insert(conn);
	}
	
	/**
	 * 修改图片列表
	 * @param conn
	 * @param id
	 * @param tid
	 * @param imgUrl
	 * @param downUrl
	 * @param status
	 * @param sortIndex
	 * @return
	 * @throws SQLException
	 */
	public long updateImgList(Connection conn, long id,int tid,String imgUrl,String downUrl,int status,int sortIndex) throws SQLException {
		Dao.Tables.t_img_list imgList = new Dao().new Tables().new t_img_list();
		if(tid>0){
			imgList.tid.setValue(tid);
		}
		if(StringUtils.isNotBlank(imgUrl)){
			imgList.imgUrl.setValue(imgUrl);
		}
		if(StringUtils.isNotBlank(downUrl)){
			imgList.downUrl.setValue(downUrl);
		}
		if(status>0){
			imgList.status.setValue(status);
		}
		if(sortIndex>0){
			imgList.sortIndex.setValue(sortIndex);
		}
		return imgList.update(conn, " id = " + id);
	}

	
	
	public long deleteImgList(Connection conn, String ids) throws SQLException {
		Dao.Tables.t_img_list imgList = new Dao().new Tables().new t_img_list();

		return imgList.delete(conn, " id in(" + ids + ") ");
	}

	public Map<String, String> queryImgListById(Connection conn, long id)
			throws SQLException, DataException {
		Dao.Views.v_t_img_design imgList = new Dao().new Views().new v_t_img_design();

		DataSet ds = imgList.open(conn, "  ", " id = " + id, "", -1, -1);
		return BeanMapUtils.dataSetToMap(ds);
	}

	public List<Map<String, Object>> queryImgListAll(Connection conn,
			String fieldList, String condition, String order)
			throws SQLException, DataException {
		Dao.Tables.t_img_list imgList = new Dao().new Tables().new t_img_list();
		DataSet ds = imgList.open(conn, fieldList, condition, order, -1, -1);
		ds.tables.get(0).rows.genRowsMap();
		return ds.tables.get(0).rows.rowsMap;
	}
}
