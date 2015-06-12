package com.zhl.testSpring.model;

import java.io.Serializable;
import java.util.Date;

/**
 * FAQ问题实体类
 * 
 * @author 张宏亮
 * 
 */
public class Question implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * id
	 */
	private int id;

	/**
	 * 问题
	 */
	private String content;

	/**
	 * 提问时间
	 */
	private Date createDate;

	/**
	 * 提问人
	 */
	private String creator;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getCreator() {
		return creator;
	}

	public void setCreator(String creator) {
		this.creator = creator;
	}
}
