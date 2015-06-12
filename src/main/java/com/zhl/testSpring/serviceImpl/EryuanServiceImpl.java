package com.zhl.testSpring.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhl.testSpring.dao.EryuanDao;
import com.zhl.testSpring.dto.FaqDto;
import com.zhl.testSpring.model.Answer;
import com.zhl.testSpring.model.Channel;
import com.zhl.testSpring.model.Content;
import com.zhl.testSpring.model.Question;
import com.zhl.testSpring.service.EryuanService;

@Service
public class EryuanServiceImpl implements EryuanService {

	@Autowired
	private EryuanDao eryuanDao;

	/**
	 * 查询置顶公告
	 * 
	 * @param count
	 * @return
	 */
	public List<Content> queryNoticeTop() {
		return eryuanDao.queryNoticeTop();
	}
	
	/**
	 * 查询置顶医院动态
	 * 
	 * @return
	 */
	public List<Content> queryNewsTop() {
		return eryuanDao.queryNewsTop();
	}

	/**
	 * 查询焦点图片
	 * 
	 * @return
	 */
	public List<Content> queryNewsPicTop() {
		return eryuanDao.queryNewsPicTop();
	}

	/**
	 * 查询党建园地置顶
	 * 
	 * @return
	 */
	public List<Content> queryPartyTop() {
		return eryuanDao.queryPartyTop();
	}

	/**
	 * 查询健康科普置顶
	 * 
	 * @return
	 */
	public List<Content> queryHealthyTop() {
		return eryuanDao.queryHealthyTop();
	}

	/**
	 * 查询视频置顶
	 * 
	 * @return
	 */
	public Content queryVideoTop() {
		return eryuanDao.queryVideoTop();
	}

	/**
	 * 根据频道id查询频道下内容
	 * 
	 * @return
	 */
	public List<Content> queryContentListByChannelId(int channelId) {
		return eryuanDao.queryContentListByChannelId(channelId);
	}

	/**
	 * 根据频道id查询频道下内容 分页
	 * 
	 * @return
	 */
	public List<Content> queryContentListByChannelIdForPage(int channelId, int start, int maxResults) {
		return eryuanDao.queryContentListByChannelIdForPage(channelId, start, maxResults);
	}

	/**
	 * 根据频道id查询频道名称
	 * 
	 * @param channelId
	 * @return
	 */
	public String queryChannelNameById(int channelId) {
		return eryuanDao.queryChannelNameById(channelId);
	}

	/**
	 * 根据频道id查询子节点
	 * 
	 * @param channelId
	 * @return
	 */
	public List<Channel> queryChildrenByParentId(int channelId) {
		return eryuanDao.queryChildrenByParentId(channelId);
	}

	/**
	 * 添加问题
	 * 
	 * @param question
	 */
	public void insertQuestion(Question question) {
		eryuanDao.insertQuestion(question);
	}

	/**
	 * 查询所有问题(按时间倒叙)
	 * 
	 * @return
	 */
	public List<Question> queryQuestion(int maxRowCount, int rows) {
		return eryuanDao.queryQuestion(maxRowCount, rows);
	}

	/**
	 * 查询问题总数
	 * 
	 * @return
	 */
	public int queryQuestionCount() {
		return eryuanDao.queryQuestionCount();
	}

	/**
	 * 根据问题id查问题
	 * 
	 * @param id
	 * @return
	 */
	public Question queryQuestionById(int id) {
		return eryuanDao.queryQuestionById(id);
	}

	/**
	 * 根据问题id查回复
	 * 
	 * @param id
	 * @return
	 */
	public Answer queryAnswerByQuestionId(int id) {
		return eryuanDao.queryAnswerByQuestionId(id);
	}

	/**
	 * 添加回复
	 * 
	 * @param answer
	 */
	public void insertAnswer(Answer answer) {
		eryuanDao.insertAnswer(answer);
	}

	/**
	 * 编辑回复
	 * 
	 * @param answer
	 */
	public void updateAnswerById(Answer answer) {
		eryuanDao.updateAnswerById(answer);
	}

	/**
	 * 根据频道id查询频道下内容数
	 * 
	 * @return
	 */
	public int queryContentCountByChannelId(int channelId) {
		return eryuanDao.queryContentCountByChannelId(channelId);
	}

	/**
	 * FAQ 问题和回复 分页
	 * 
	 * @param maxRowCount
	 * @param rows
	 * @return
	 */
	public List<FaqDto> queryFaqDtoForPage(int start, int maxResults) {
		return eryuanDao.queryFaqDtoForPage(start, maxResults);
	}

	/**
	 * 查询有效问题数
	 * 
	 * @return
	 */
	public int queryValidQuestionCount() {
		return eryuanDao.queryValidQuestionCount();
	}

	/**
	 * FAQ 查询最后5条有效问题
	 * 
	 * @param maxRowCount
	 * @param rows
	 * @return
	 */
	public List<FaqDto> queryTop5ValidFaqDto() {
		return eryuanDao.queryTop5ValidFaqDto();
	}

	/**
	 * FAQ 删除问题
	 * 
	 * @param contentId
	 */
	public void deleteFAQ(int contentId) {
		eryuanDao.deteleFAQ(contentId);
	}

	/**
	 * FAQ 删除答案
	 * 
	 * @param contentId
	 */
	public void deleteAnswer(int contentId) {
		eryuanDao.deleteAnswer(contentId);
	}

	/**
	 * 查询工会置顶公告置顶
	 * 
	 * @param count
	 * @return
	 */
	public List<Content> queryLaborNoticeTop() {
		return eryuanDao.queryLaborNoticeTop();
	}

	/**
	 * 查询工会焦点图片置顶
	 * 
	 * @return
	 */
	public List<Content> queryLaborNewsPicTop() {
		return eryuanDao.queryLaborNewsPicTop();
	}

	/**
	 * 根据频道id查询置顶内容 5条
	 * 
	 * @param channelId
	 * @return
	 */
	public List<Content> queryTopSix(int channelId) {
		return eryuanDao.queryTopSix(channelId);
	}

	/**
	 * 根据频道id查询带图片的内容
	 * 
	 * @param channelId
	 * @return
	 */
	public List<Content> queryPicByChannelId(int channelId) {
		return eryuanDao.queryPicByChannelId(channelId);
	}

	/**
	 * 查询内容
	 * 
	 * @param id
	 * @return
	 */
	public Content queryContentPicById(int id) {
		return eryuanDao.queryContentPicById(id);
	}

	/**
	 * 查询工会精彩图片
	 * 
	 * @return
	 */
	public List<Content> queryLaborUnionWonderfulPicTop() {
		return eryuanDao.queryLaborUnionWonderfulPicTop();
	}

	/**
	 * 查询专家图片
	 * 
	 * @return
	 */
	public List<Content> queryExpertPicTop() {
		return eryuanDao.queryExpertPicTop();
	}

	/**
	 * 根据频道id查询子级频道数
	 * 
	 * @return
	 */
	public int queryParentCountByChannelId(int channelId) {
		return eryuanDao.queryParentCountByChannelId(channelId);
	}

}
