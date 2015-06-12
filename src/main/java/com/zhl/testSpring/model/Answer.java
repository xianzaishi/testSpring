package com.zhl.testSpring.model;

import java.io.Serializable;
import java.util.Date;

/**
 * FAQ答案实体类
 * 
 * @author 张宏亮
 * 
 */
public class Answer implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * id
	 */
	private int id;

	/**
	 * 问题id
	 */
	private int questionId;

	/**
	 * 答案
	 */
	private String content;

	/**
	 * 回答时间
	 */
	private Date createDate;

	/**
	 * 回答人
	 */
	private String creator;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getQuestionId() {
		return questionId;
	}

	public void setQuestionId(int questionId) {
		this.questionId = questionId;
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
