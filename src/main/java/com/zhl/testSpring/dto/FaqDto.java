package com.zhl.testSpring.dto;

import java.util.Date;

/**
 * FAQ数据传输对象
 * 
 * @author 张宏亮
 * 
 */
public class FaqDto {
	private static final long serialVersionUID = 1L;

	/**
	 * id
	 */
	private int id;

	/**
	 * 问题
	 */
	private String question;

	/**
	 * 答案
	 */
	private String answer;

	/**
	 * 问题创建时间
	 */
	private Date questionCreateDate;
	
	/**
	 * 问题创建人
	 */
	private String questionCreator;

	/**
	 * 答案创建时间
	 */
	private Date answerCreateDate;
	
	/**
	 * 答案创建人
	 */
	private String answerCreator;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public Date getQuestionCreateDate() {
		return questionCreateDate;
	}

	public void setQuestionCreateDate(Date questionCreateDate) {
		this.questionCreateDate = questionCreateDate;
	}

	public String getQuestionCreator() {
		return questionCreator;
	}

	public void setQuestionCreator(String questionCreator) {
		this.questionCreator = questionCreator;
	}

	public Date getAnswerCreateDate() {
		return answerCreateDate;
	}

	public void setAnswerCreateDate(Date answerCreateDate) {
		this.answerCreateDate = answerCreateDate;
	}

	public String getAnswerCreator() {
		return answerCreator;
	}

	public void setAnswerCreator(String answerCreator) {
		this.answerCreator = answerCreator;
	}
}
