package com.zhl.testSpring.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhl.testSpring.dao.ContentDao;
import com.zhl.testSpring.model.Content;
import com.zhl.testSpring.model.FileUpload;
import com.zhl.testSpring.model.Images;
import com.zhl.testSpring.service.ContentService;

/**
 * 内容服务层实现类
 * 
 * @author 张宏亮
 * 
 */
@Service
public class ContentServiceImpl implements ContentService {
	
	@Autowired
	private ContentDao contentDao;

	/**
	 * 添加内容
	 * 
	 * @param content
	 */
	public void addContent(Content content) {
		contentDao.addContent(content);
	}

	/**
	 * 文件上传
	 * 
	 * @param fileUpload
	 */
	public void fileUpload(FileUpload fileUpload) {
		contentDao.fileUpload(fileUpload);
	}

	/**
	 * 根据上传路径查上传文件id
	 * 
	 * @param fileUpload
	 * @return
	 */
	public Integer queryIdByPath(FileUpload fileUpload) {
		return contentDao.queryIdByPath(fileUpload);
	}

	/**
	 * 查询内容
	 * 
	 * @return
	 */
	public List<Content> queryContent(int maxRowCount, int rows) {
		return contentDao.queryContent(maxRowCount, rows);
	}

	/**
	 * 查询内容条数
	 * 
	 * @return
	 */
	public Integer queryContentCount() {
		return contentDao.queryContentCount();
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
		return contentDao.queryContentByChannelId(channelId, maxRowCount, rows);
	}

	/**
	 * 根据频道id查询文章数
	 * 
	 * @param channelId
	 * @return
	 */
	public int queryContentCountByChannelId(int channelId) {
		return contentDao.queryContentCountByChannelId(channelId);
	}

	/**
	 * 删除内容
	 * 
	 * @param id
	 */
	public void deleteContentById(int id) {
		contentDao.deleteContentById(id);
	}

	/**
	 * 根据id查内容
	 * 
	 * @param contentId
	 * @return
	 */
	public Content queryContentById(int contentId) {
		return contentDao.queryContentById(contentId);
	}

	/**
	 * 根据文件id查文件
	 * 
	 * @param fileId
	 * @return
	 */
	public FileUpload queryFileById(int fileId) {
		return contentDao.queryFileById(fileId);
	}

	/**
	 * 编辑文章
	 * 
	 * @param content
	 */
	public void updateContentById(Content content) {
		contentDao.updateContentById(content);
	}

	/**
	 * ckeditor上传图片
	 * 
	 * @param images
	 */
	public void imagesUpload(Images images) {
		contentDao.imagesUpload(images);
	}

	/**
	 * 根据上传路径查图片id
	 * 
	 * @param images
	 * @return
	 */
	public Integer queryImagesIdByPath(Images images) {
		return contentDao.queryImagesIdByPath(images);
	}

	/**
	 * 更新content表image字段
	 * 
	 * @param imageUrl
	 */
	public void updateContentImage(Content content) {
		contentDao.updateContentImage(content);
	}

	/**
	 * 根据file_id查询标题图片
	 * 
	 * @param id
	 * @return
	 */
	public String queryFilePathById(int id) {
		return contentDao.queryFilePathById(id);
	}

	/**
	 * 置顶内容
	 * 
	 * @param id
	 */
	public void updateContentTop(int contentId) {
		contentDao.updateContentTop(contentId);
	}

	/**
	 * 取消置顶内容
	 * 
	 * @param id
	 */
	public void updateContentUntop(int contentId) {
		contentDao.updateContentUntop(contentId);
	}
}
