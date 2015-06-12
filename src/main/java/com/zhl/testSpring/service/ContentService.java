package com.zhl.testSpring.service;

import java.util.List;

import com.zhl.testSpring.model.Content;
import com.zhl.testSpring.model.FileUpload;
import com.zhl.testSpring.model.Images;

/**
 * 内容服务层接口
 * 
 * @author 张宏亮
 * 
 */
public interface ContentService {
	/**
	 * 添加内容
	 * 
	 * @param content
	 */
	public void addContent(Content content);
	
	/**
	 * 文件上传
	 * 
	 * @param fileUpload
	 */
	public void fileUpload(FileUpload fileUpload);

	/**
	 * 根据上传路径查上传文件id
	 * 
	 * @param fileUpload
	 * @return
	 */
	public Integer queryIdByPath(FileUpload fileUpload);

	/**
	 * 查询内容
	 * 
	 * @param maxRowCount
	 *            查询范围最大值
	 * @param rows
	 *            每页条数
	 * @author 查询范围 : maxRowCount - rows 到 maxRowCount
	 * @return
	 */
	public List<Content> queryContent(int maxRowCount, int rows);

	/**
	 * 查询内容条数
	 * 
	 * @return
	 */
	public Integer queryContentCount();

	/**
	 * 根据频道id查询内容
	 * 
	 * @param channelId
	 * @param maxRowCount
	 * @param rows
	 * @return
	 */
	public List<Content> queryContentByChannelId(int channelId, int maxRowCount, int rows);

	/**
	 * 根据频道id查询文章数
	 * 
	 * @param channelId
	 * @return
	 */
	public int queryContentCountByChannelId(int channelId);

	/**
	 * 删除内容
	 * 
	 * @param id
	 */
	public void deleteContentById(int id);

	/**
	 * 根据id查内容
	 * 
	 * @param contentId
	 * @return
	 */
	public Content queryContentById(int contentId);

	/**
	 * 根据文件id查文件
	 * 
	 * @param fileId
	 * @return
	 */
	public FileUpload queryFileById(int fileId);

	/**
	 * 编辑文章
	 * 
	 * @param content
	 */
	public void updateContentById(Content content);

	/**
	 * ckeditor上传图片
	 * 
	 * @param images
	 */
	public void imagesUpload(Images images);
	
	/**
	 * 根据上传路径查图片id
	 * 
	 * @param images
	 * @return
	 */
	public Integer queryImagesIdByPath(Images images);

	/**
	 * 更新content表image字段
	 * 
	 * @param imageUrl
	 */
	public void updateContentImage(Content content);

	/**
	 * 根据file_id查询标题图片
	 * 
	 * @param id
	 * @return
	 */
	public String queryFilePathById(int id);

	/**
	 * 置顶内容
	 * 
	 * @param id
	 */
	public void updateContentTop(int contentId);

	/**
	 * 取消置顶内容
	 * 
	 * @param id
	 */
	public void updateContentUntop(int contentId);
}
