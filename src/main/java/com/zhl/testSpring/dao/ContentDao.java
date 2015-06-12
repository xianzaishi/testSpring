package com.zhl.testSpring.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.zhl.testSpring.model.Content;
import com.zhl.testSpring.model.FileUpload;
import com.zhl.testSpring.model.Images;

/**
 * 内容Dao
 * 
 * @author 张宏亮
 * 
 */
@Repository
public class ContentDao extends BaseDao{

	/**
	 * 添加内容
	 * 
	 * @param content
	 */
	public void addContent(Content content) {
		getSqlMapClientTemplate().insert("content.addContent", content);
	}

	/**
	 * 文件上传
	 * 
	 * @param fileUpload
	 */
	public void fileUpload(FileUpload fileUpload) {
		getSqlMapClientTemplate().insert("file.fileUpload", fileUpload);
	}

	/**
	 * ckeditor上传图片
	 * 
	 * @param images
	 */
	public void imagesUpload(Images images) {
		getSqlMapClientTemplate().insert("file.imagesUpload", images);
	}

	/**
	 * 根据上传路径查上传文件id
	 * 
	 * @param fileUpload
	 * @return
	 */
	public Integer queryIdByPath(FileUpload fileUpload) {
		return (Integer) getSqlMapClientTemplate().queryForObject("file.queryIdByPath", fileUpload);
	}

	/**
	 * 查询内容
	 * 
	 * @return
	 */
	public List<Content> queryContent(int maxRowCount, int rows) {
		return (List<Content>) getSqlMapClientTemplate().queryForList("content.queryContent", maxRowCount - rows, rows);
	}

	/**
	 * 查询内容条数
	 * 
	 * @return
	 */
	public Integer queryContentCount() {
		return (Integer) getSqlMapClientTemplate().queryForObject("content.queryContentCount");
	}

	/**
	 * 根据频道id查询内容
	 * 
	 * @param channelId
	 * @param maxRowCount
	 * @param rows
	 * @return
	 */
	public List<Content> queryContentByChannelId(int channelId, int maxRowCount, int rows) {
		return (List<Content>) getSqlMapClientTemplate().queryForList("content.queryContentByChannelId", channelId, maxRowCount - rows, rows);
	}

	/**
	 * 根据频道id查询文章数
	 * 
	 * @param channelId
	 * @return
	 */
	public Integer queryContentCountByChannelId(int channelId) {
		return (Integer) getSqlMapClientTemplate().queryForObject("content.queryContentCountByChannelId", channelId);
	}

	/**
	 * 删除内容
	 * 
	 * @param id
	 */
	public void deleteContentById(int id) {
		getSqlMapClientTemplate().delete("content.deleteContentById", id);
	}

	/**
	 * 根据id查内容
	 * 
	 * @param contentId
	 * @return
	 */
	public Content queryContentById(int contentId) {
		return (Content) getSqlMapClientTemplate().queryForObject("content.queryContentById", contentId);
	}

	/**
	 * 根据文件id查文件
	 * 
	 * @param fileId
	 * @return
	 */
	public FileUpload queryFileById(int fileId) {
		return (FileUpload) getSqlMapClientTemplate().queryForObject("content.queryFileById", fileId);
	}

	/**
	 * 编辑文章
	 * 
	 * @param content
	 */
	public void updateContentById(Content content) {
		getSqlMapClientTemplate().update("content.updateContentById", content);
	}

	/**
	 * 根据上传路径查图片id
	 * 
	 * @param images
	 * @return
	 */
	public Integer queryImagesIdByPath(Images images) {
		return (Integer) getSqlMapClientTemplate().queryForObject("file.queryImagesIdByPath", images);
	}

	/**
	 * 更新content表image字段
	 * 
	 * @param imageUrl
	 */
	public void updateContentImage(Content content) {
		getSqlMapClientTemplate().update("content.updateContentImage", content);
	}

	/**
	 * 根据file_id查询标题图片
	 * 
	 * @param id
	 * @return
	 */
	public String queryFilePathById(int id) {
		return (String) getSqlMapClientTemplate().queryForObject("file.queryFilePathById", id);
	}

	/**
	 * 置顶内容
	 * 
	 * @param id
	 */
	public void updateContentTop(int contentId) {
		getSqlMapClientTemplate().update("content.updateContentTop", contentId);
	}

	/**
	 * 取消置顶内容
	 * 
	 * @param id
	 */
	public void updateContentUntop(int contentId) {
		getSqlMapClientTemplate().update("content.updateContentUntop", contentId);
	}

}
