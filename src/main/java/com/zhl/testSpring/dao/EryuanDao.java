package com.zhl.testSpring.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.zhl.testSpring.dto.FaqDto;
import com.zhl.testSpring.model.Answer;
import com.zhl.testSpring.model.Channel;
import com.zhl.testSpring.model.Content;
import com.zhl.testSpring.model.Question;

@Repository
public class EryuanDao extends BaseDao {

	/**
	 * 查询置顶公告置顶
	 * 
	 * @param count
	 * @return
	 */
	public List<Content> queryNoticeTop() {
		return (List<Content>) getSqlMapClientTemplate().queryForList("eryuan.queryNoticeTop");
	}

	/**
	 * 查询工会置顶公告置顶
	 * 
	 * @param count
	 * @return
	 */
	public List<Content> queryLaborNoticeTop() {
		return (List<Content>) getSqlMapClientTemplate().queryForList("eryuan.queryLaborNoticeTop");
	}

	/**
	 * 查询置顶医院动态置顶
	 * 
	 * @return
	 */
	public List<Content> queryNewsTop() {
		return (List<Content>) getSqlMapClientTemplate().queryForList("eryuan.queryNewsTop");
	}

	/**
	 * 查询焦点图片置顶
	 * 
	 * @return
	 */
	public List<Content> queryNewsPicTop() {
		return (List<Content>) getSqlMapClientTemplate().queryForList("eryuan.queryNewsPicTop");
	}

	/**
	 * 查询工会焦点图片置顶
	 * 
	 * @return
	 */
	public List<Content> queryLaborNewsPicTop() {
		return (List<Content>) getSqlMapClientTemplate().queryForList("eryuan.queryLaborNewsPicTop");
	}

	/**
	 * 查询党建园地置顶
	 * 
	 * @return
	 */
	public List<Content> queryPartyTop() {
		return (List<Content>) getSqlMapClientTemplate().queryForList("eryuan.queryPartyTop");
	}

	/**
	 * 查询健康科普置顶
	 * 
	 * @return
	 */
	public List<Content> queryHealthyTop() {
		return (List<Content>) getSqlMapClientTemplate().queryForList("eryuan.queryHealthyTop");
	}

	/**
	 * 查询视频置顶
	 * 
	 * @return
	 */
	public Content queryVideoTop() {
		return (Content) getSqlMapClientTemplate().queryForObject("eryuan.queryVideoTop");
	}

	/**
	 * 根据频道id查询频道下内容
	 * 
	 * @return
	 */
	public List<Content> queryContentListByChannelId(int channelId) {
		return (List<Content>) getSqlMapClientTemplate().queryForList("eryuan.queryContentListByChannelId", channelId);
	}

	/**
	 * 根据频道id查询频道下内容 分页
	 * 
	 * @return
	 */
	public List<Content> queryContentListByChannelIdForPage(int channelId, int start, int maxResults) {
		return (List<Content>) getSqlMapClientTemplate().queryForList("eryuan.queryContentListByChannelId", channelId, start, maxResults);
	}

	/**
	 * 根据频道id查询频道下内容数
	 * 
	 * @return
	 */
	public int queryContentCountByChannelId(int channelId) {
		return (Integer) getSqlMapClientTemplate().queryForObject("eryuan.queryContentCountByChannelId", channelId);
	}

	/**
	 * 根据频道id查询子级频道数
	 * 
	 * @return
	 */
	public int queryParentCountByChannelId(int channelId) {
		return (Integer) getSqlMapClientTemplate().queryForObject("eryuan.queryParentCountByChannelId", channelId);
	}

	/**
	 * 根据频道id查询频道名称
	 * 
	 * @param channelId
	 * @return
	 */
	public String queryChannelNameById(int channelId) {
		return (String) getSqlMapClientTemplate().queryForObject("eryuan.queryChannelNameById", channelId);
	}

	/**
	 * 根据频道id查询子节点
	 * 
	 * @param channelId
	 * @return
	 */
	public List<Channel> queryChildrenByParentId(int channelId) {
		return (List<Channel>) getSqlMapClientTemplate().queryForList("channel.queryChildrenByParentId", channelId);
	}

	/**
	 * 添加问题
	 * 
	 * @param question
	 */
	public void insertQuestion(Question question) {
		getSqlMapClientTemplate().insert("faq.insertQuestion", question);
	}

	/**
	 * 查询所有问题(按时间倒叙)
	 * 
	 * @return
	 */
	public List<Question> queryQuestion(int maxRowCount, int rows) {
		return (List<Question>) getSqlMapClientTemplate().queryForList("faq.queryQuestion", maxRowCount - rows, rows);
	}

	/**
	 * 查询问题总数
	 * 
	 * @return
	 */
	public int queryQuestionCount() {
		return (Integer) getSqlMapClientTemplate().queryForObject("faq.queryQuestionCount");
	}

	/**
	 * 根据问题id查问题
	 * 
	 * @param id
	 * @return
	 */
	public Question queryQuestionById(int id) {
		return (Question) getSqlMapClientTemplate().queryForObject("faq.queryQuestionById", id);
	}

	/**
	 * 根据问题id查回复
	 * 
	 * @param id
	 * @return
	 */
	public Answer queryAnswerByQuestionId(int id) {
		return (Answer) getSqlMapClientTemplate().queryForObject("faq.queryAnswerByQuestionId", id);
	}

	/**
	 * 添加回复
	 * 
	 * @param answer
	 */
	public void insertAnswer(Answer answer) {
		getSqlMapClientTemplate().insert("faq.insertAnswer", answer);
	}

	/**
	 * 编辑回复
	 * 
	 * @param answer
	 */
	public void updateAnswerById(Answer answer) {
		getSqlMapClientTemplate().update("faq.updateAnswerById", answer);
	}

	/**
	 * FAQ 问题和回复 分页
	 * 
	 * @param maxRowCount
	 * @param rows
	 * @return
	 */
	public List<FaqDto> queryFaqDtoForPage(int start, int maxResults) {
		return (List<FaqDto>) getSqlMapClientTemplate().queryForList("faq.queryFaqDtoForPage", start, maxResults);
	}

	/**
	 * 查询有效问题数
	 * 
	 * @return
	 */
	public int queryValidQuestionCount() {
		return (Integer) getSqlMapClientTemplate().queryForObject("faq.queryValidQuestionCount");
	}

	/**
	 * FAQ 查询最后5条有效问题
	 * 
	 * @param maxRowCount
	 * @param rows
	 * @return
	 */
	public List<FaqDto> queryTop5ValidFaqDto() {
		return (List<FaqDto>) getSqlMapClientTemplate().queryForList("faq.queryFaqDtoForPage", 0, 5);
	}

	/**
	 * 根据频道id查询置顶内容 5条
	 * 
	 * @param channelId
	 * @return
	 */
	public List<Content> queryTopSix(int channelId) {
		return (List<Content>) getSqlMapClientTemplate().queryForList("eryuan.queryTopSix", channelId);
	}

	/**
	 * FAQ 删除问题
	 * 
	 * @param contentId
	 */
	public void deteleFAQ(int contentId) {
		getSqlMapClientTemplate().delete("faq.deleteFAQ", contentId);
	}

	/**
	 * FAQ 删除答案
	 * 
	 * @param contentId
	 */
	public void deleteAnswer(int contentId) {
		getSqlMapClientTemplate().delete("faq.deleteAnswer", contentId);
	}

	/**
	 * 根据频道id查询带图片的内容
	 * 
	 * @param channelId
	 * @return
	 */
	public List<Content> queryPicByChannelId(int channelId) {
		return (List<Content>) getSqlMapClientTemplate().queryForList("eryuan.queryPicByChannelId", channelId);
	}

	/**
	 * 查询内容
	 * 
	 * @param id
	 * @return
	 */
	public Content queryContentPicById(int id) {
		return (Content) getSqlMapClientTemplate().queryForObject("eryuan.queryContentPicById", id);
	}

	/**
	 * 查询工会精彩图片
	 * 
	 * @return
	 */
	public List<Content> queryLaborUnionWonderfulPicTop() {
		return (List<Content>) getSqlMapClientTemplate().queryForList("eryuan.queryLaborUnionWonderfulPicTop");
	}

	/**
	 * 查询专家图片
	 * 
	 * @return
	 */
	public List<Content> queryExpertPicTop() {
		return (List<Content>) getSqlMapClientTemplate().queryForList("eryuan.queryExpertPicTop");
	}
}
