package com.zhl.testSpring.model;

import java.io.Serializable;
import java.util.Date;

/**
 * 文章实体类
 * 
 * @author 张宏亮
 * 
 */
public class Content implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * id
	 */
	private int id;

	/**
	 * 频道id
	 */
	private int channelId;

	/**
	 * 标题
	 */
	private String title;

	/**
	 * 摘要
	 */
	private String brief;

	/**
	 * 内容
	 */
	private String content;

	/**
	 * 创建人
	 */
	private String creator;

	/**
	 * 最后修改人
	 */
	private String modifier;

	/**
	 * 创建时间
	 */
	private Date createDate;

	/**
	 * 最后修改时间
	 */
	private Date modifyDate;

	/**
	 * 上传文件路径
	 */
	private String fileUpload;

	/**
	 * 上传图片路径
	 */
	private String image;

	/**
	 * 查看人 用分号分隔
	 */
	private String viewer;

	/**
	 * 置顶内容
	 */
	private int top;

	public int getTop() {
		return top;
	}

	public void setTop(int top) {
		this.top = top;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getChannelId() {
		return channelId;
	}

	public void setChannelId(int channelId) {
		this.channelId = channelId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getBrief() {
		return brief;
	}

	public void setBrief(String brief) {
		this.brief = brief;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getCreator() {
		return creator;
	}

	public void setCreator(String creator) {
		this.creator = creator;
	}

	public String getModifier() {
		return modifier;
	}

	public void setModifier(String modifier) {
		this.modifier = modifier;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}

	public String getFileUpload() {
		return fileUpload;
	}

	public void setFileUpload(String fileUpload) {
		this.fileUpload = fileUpload;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getViewer() {
		return viewer;
	}

	public void setViewer(String viewer) {
		this.viewer = viewer;
	}

}
