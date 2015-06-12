package com.zhl.testSpring.service;

import java.util.List;

import com.zhl.testSpring.dto.FaqDto;
import com.zhl.testSpring.model.Answer;
import com.zhl.testSpring.model.Channel;
import com.zhl.testSpring.model.Content;
import com.zhl.testSpring.model.Question;

public interface EryuanService {

	/**
	 * 查询置顶公告
	 * 
	 * @param count
	 * @return
	 */
	public List<Content> queryNoticeTop();

	/**
	 * 查询置顶医院动态
	 * 
	 * @return
	 */
	public List<Content> queryNewsTop();

	/**
	 * 查询焦点图片
	 * 
	 * @return
	 */
	public List<Content> queryNewsPicTop();

	/**
	 * 查询党建园地置顶
	 * 
	 * @return
	 */
	public List<Content> queryPartyTop();

	/**
	 * 查询健康科普置顶
	 * 
	 * @return
	 */
	public List<Content> queryHealthyTop();

	/**
	 * 查询视频置顶
	 * 
	 * @return
	 */
	public Content queryVideoTop();

	/**
	 * 根据频道id查询频道下内容
	 * 
	 * @return
	 */
	public List<Content> queryContentListByChannelId(int channelId);

	/**
	 * 根据频道id查询频道下内容 分页
	 * 
	 * @return
	 */
	public List<Content> queryContentListByChannelIdForPage(int channelId, int start, int maxResults);

	/**
	 * 根据频道id查询频道名称
	 * 
	 * @param channelId
	 * @return
	 */
	public String queryChannelNameById(int channelId);

	/**
	 * 根据频道id查询子节点
	 * 
	 * @param channelId
	 * @return
	 */
	public List<Channel> queryChildrenByParentId(int channelId);

	/**
	 * 添加问题
	 * 
	 * @param question
	 */
	public void insertQuestion(Question question);

	/**
	 * 查询所有问题(按时间倒叙)
	 * 
	 * @return
	 */
	public List<Question> queryQuestion(int maxRowCount, int rows);

	/**
	 * 查询问题总数
	 * 
	 * @return
	 */
	public int queryQuestionCount();

	/**
	 * 根据问题id查问题
	 * 
	 * @param id
	 * @return
	 */
	public Question queryQuestionById(int id);

	/**
	 * 根据问题id查回复
	 * 
	 * @param id
	 * @return
	 */
	public Answer queryAnswerByQuestionId(int id);

	/**
	 * 添加回复
	 * 
	 * @param answer
	 */
	public void insertAnswer(Answer answer);

	/**
	 * 编辑回复
	 * 
	 * @param answer
	 */
	public void updateAnswerById(Answer answer);

	/**
	 * 根据频道id查询频道下内容数
	 * 
	 * @return
	 */
	public int queryContentCountByChannelId(int channelId);

	/**
	 * FAQ 问题和回复 分页
	 * 
	 * @param maxRowCount
	 * @param rows
	 * @return
	 */
	public List<FaqDto> queryFaqDtoForPage(int start, int maxResults);

	/**
	 * 查询有效问题数
	 * 
	 * @return
	 */
	public int queryValidQuestionCount();

	/**
	 * FAQ 删除问题
	 * 
	 * @param contentId
	 */
	public void deleteFAQ(int contentId);

	/**
	 * FAQ 删除答案
	 * 
	 * @param contentId
	 */
	public void deleteAnswer(int contentId);

	/**
	 * FAQ 查询最后5条有效问题
	 * 
	 * @param maxRowCount
	 * @param rows
	 * @return
	 */
	public List<FaqDto> queryTop5ValidFaqDto();

	/**
	 * 查询工会置顶公告置顶
	 * 
	 * @param count
	 * @return
	 */
	public List<Content> queryLaborNoticeTop();

	/**
	 * 查询工会焦点图片置顶
	 * 
	 * @return
	 */
	public List<Content> queryLaborNewsPicTop();

	/**
	 * 根据频道id查询置顶内容 5条
	 * 
	 * @param channelId
	 * @return
	 */
	public List<Content> queryTopSix(int channelId);

	/**
	 * 根据频道id查询带图片的内容
	 * 
	 * @param channelId
	 * @return
	 */
	public List<Content> queryPicByChannelId(int channelId);

	/**
	 * 查询内容
	 * 
	 * @param id
	 * @return
	 */
	public Content queryContentPicById(int id);

	/**
	 * 查询工会精彩图片
	 * 
	 * @return
	 */
	public List<Content> queryLaborUnionWonderfulPicTop();

	/**
	 * 查询专家图片
	 * 
	 * @return
	 */
	public List<Content> queryExpertPicTop();

	/**
	 * 根据频道id查询子级频道数
	 * 
	 * @return
	 */
	public int queryParentCountByChannelId(int channelId);
}
