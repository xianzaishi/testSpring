package com.zhl.testSpring.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zhl.testSpring.constant.Url;
import com.zhl.testSpring.constant.View;
import com.zhl.testSpring.dto.FaqDto;
import com.zhl.testSpring.dto.JqGridDto;
import com.zhl.testSpring.model.Answer;
import com.zhl.testSpring.model.Channel;
import com.zhl.testSpring.model.Content;
import com.zhl.testSpring.model.Question;
import com.zhl.testSpring.service.ContentService;
import com.zhl.testSpring.service.EryuanService;

/**
 * 二院控制器
 * 
 * @author 张宏亮
 * 
 */
@Controller
public class EryuanController {
	@Autowired
	private EryuanService eryuanService;

	@Autowired
	private ContentService contentService;

	/**
	 * 首页
	 * 
	 * @return
	 */
	@RequestMapping(value = Url.ERYUAN_INDEX)
	public String index(ModelMap model) {
		// 查询置顶公告
		List<Content> noticeList = getNoticeList();

		// 查询置顶医院动态
		List<Content> newsList = new LinkedList<Content>();
		newsList = eryuanService.queryNewsTop();

		// 查询焦点图片
		List<Content> newsPicList = new LinkedList<Content>();
		newsPicList = eryuanService.queryNewsPicTop();

		// 查询党建园地
		List<Content> partyList = new LinkedList<Content>();
		partyList = eryuanService.queryPartyTop();

		// 查询健康科普
		List<Content> healthyList = new LinkedList<Content>();
		healthyList = eryuanService.queryHealthyTop();

		// 查询视频
		Content videoContent = new Content();
		videoContent = eryuanService.queryVideoTop();

		// 查询在线咨询
		List<FaqDto> faqDtoList = eryuanService.queryTop5ValidFaqDto();

		// 查询先进设备
		List<Content> deviceList = new LinkedList<Content>();
		deviceList = eryuanService.queryPicByChannelId(61);

		// 查询认证
		List<Content> brandList = new LinkedList<Content>();
		brandList = eryuanService.queryPicByChannelId(62);

		model.addAttribute("noticeList", noticeList);
		model.addAttribute("newsList", newsList);
		model.addAttribute("newsPicList", newsPicList);
		model.addAttribute("partyList", partyList);
		model.addAttribute("healthyList", healthyList);
		model.addAttribute("videoContent", videoContent);
		model.addAttribute("faqDtoList", faqDtoList);
		model.addAttribute("deviceList", deviceList);
		model.addAttribute("brandList", brandList);
		return View.EryuanIndexView;
	}

	/**
	 * 查询专家介绍
	 */
	@ResponseBody
	@RequestMapping(value = Url.EXPERT, method = RequestMethod.GET)
	public List<Content> getExpert() {
		List<Content> expertList = new LinkedList<Content>();
		expertList = eryuanService.queryExpertPicTop();

		return expertList;
	}

	/**
	 * 二级页面
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = Url.ERYUAN_CONTENT_LIST_FOR_PAGE)
	public String eryuanContentList(@PathVariable Integer channelId, @PathVariable int page, ModelMap model) {
		// 查询内容
		List<Content> contentList = new LinkedList<Content>();
		contentList = eryuanService.queryContentListByChannelIdForPage(channelId, (page - 1) * 20, 20);
		String channelName = getChannelName(channelId);

		// 查询内容数
		int count = eryuanService.queryContentCountByChannelId(channelId);

		// 查询置顶公告
		List<Content> noticeList = getNoticeList();

		// 查询在线咨询
		List<FaqDto> faqDtoList = eryuanService.queryTop5ValidFaqDto();

		model.addAttribute("contentList", contentList);
		model.addAttribute("channelName", channelName);
		model.addAttribute("count", count);
		model.addAttribute("page", page);
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("faqDtoList", faqDtoList);
		return View.EryuanContentListView;
	}

	/**
	 * 专家页面
	 * 
	 * @param channelId
	 * @param model
	 * @return
	 */
	@RequestMapping(value = Url.ERYUAN_SPECIAL_CONTENT_LIST)
	public String specialContentList(@PathVariable Integer channelId, @PathVariable int page, ModelMap model) {
		// 分类
		List<Channel> classlList = new LinkedList<Channel>();
		classlList = eryuanService.queryChildrenByParentId(channelId);


		String channelName = getChannelName(channelId);

		// 查询内容数
		// int count = eryuanService.queryParentCountByChannelId(channelId);

		// 查询置顶公告
		List<Content> noticeList = getNoticeList();

		// 查询在线咨询
		List<FaqDto> faqDtoList = eryuanService.queryTop5ValidFaqDto();

		model.addAttribute("classlList", classlList);
		model.addAttribute("channelName", channelName);
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("faqDtoList", faqDtoList);
		// model.addAttribute("count", count);
		model.addAttribute("page", page);
		return View.EryuanSpecialContentListView;
	}

	/**
	 * 科室特色页面
	 * 
	 * @param channelId
	 * @param model
	 * @return
	 */
	@RequestMapping(value = Url.ERYUAN_DEPT_CONTENT_LIST)
	public String deptContentList(@PathVariable Integer channelId, @PathVariable int page, ModelMap model) {
		// 分类
		List<Channel> classlList = new LinkedList<Channel>();
		classlList = eryuanService.queryChildrenByParentId(channelId);

		String channelName = getChannelName(channelId);

		// 查询内容数
		// int count = eryuanService.queryParentCountByChannelId(channelId);

		// 查询置顶公告
		List<Content> noticeList = getNoticeList();

		// 查询在线咨询
		List<FaqDto> faqDtoList = eryuanService.queryTop5ValidFaqDto();

		model.addAttribute("classlList", classlList);
		model.addAttribute("channelName", channelName);
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("faqDtoList", faqDtoList);
		// model.addAttribute("count", count);
		model.addAttribute("page", page);
		return View.eryuanDeptContentListView;
	}

	/**
	 * 科室特色分类
	 * 
	 * @param channelId
	 */
	@ResponseBody
	@RequestMapping(value = Url.ERYUAN_CHANNEL_LIST)
	public List<Channel> getChannelListByChannelId(@PathVariable int channelId, ModelMap model) {
		List<Channel> channelList = new LinkedList<Channel>();
		channelList = eryuanService.queryChildrenByParentId(channelId);

		return channelList;
	}

	private String getChannelName(Integer channelId) {
		String channelName = eryuanService.queryChannelNameById(channelId);
		return channelName;
	}

	/**
	 * 查询置顶公告
	 * 
	 * @return
	 */
	private List<Content> getNoticeList() {
		List<Content> noticeList = new LinkedList<Content>();
		noticeList = eryuanService.queryNoticeTop();
		return noticeList;
	}

	/**
	 * 详细内容
	 * 
	 * @param contentId
	 * @param model
	 * @return
	 */
	@RequestMapping(value = Url.ERYUAN_CONTENT_DETAIL)
	public String contentDetail(@PathVariable Integer contentId, ModelMap model) {
		// 查询置顶公告
		List<Content> noticeList = getNoticeList();

		// 查询详细内容
		Content content = new Content();
		content = contentService.queryContentById(contentId);

		String channelName = getChannelName(content.getChannelId());

		// 查询在线咨询
		List<FaqDto> faqDtoList = eryuanService.queryTop5ValidFaqDto();

		model.addAttribute("noticeList", noticeList);
		model.addAttribute("content", content);
		model.addAttribute("channelName", channelName);
		model.addAttribute("faqDtoList", faqDtoList);
		return View.EryuanContentDetailView;
	}

	/**
	 * FAQ前台首页
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = Url.ERYUAN_FAQ_INDEX)
	public String faqIndex(@PathVariable int page, ModelMap model) {
		// 查询置顶公告
		List<Content> noticeList = getNoticeList();

		// 查询问题和回复 分页
		List<FaqDto> faqDtoPageList = eryuanService.queryFaqDtoForPage((page - 1) * 20, 20);

		// 查询在线咨询-left
		List<FaqDto> faqDtoList = eryuanService.queryTop5ValidFaqDto();

		// 查询有效问题数
		int count = eryuanService.queryValidQuestionCount();

		model.addAttribute("noticeList", noticeList);
		model.addAttribute("faqDtoPageList", faqDtoPageList);
		model.addAttribute("faqDtoList", faqDtoList);
		model.addAttribute("count", count);
		model.addAttribute("page", page);

		FaqDto faqDto = new FaqDto();
		faqDto.setQuestionCreator("匿名用户");
		model.addAttribute("faqDto", faqDto);
		return View.EryuanFaqView;
	}

	/**
	 * FAQ提交问题
	 * 
	 * @param model
	 * @return
	 * @throws UnsupportedEncodingException
	 */
	@RequestMapping(value = Url.ERYUAN_FAQ_SUBMIT)
	public String faqSubmitQuestion(FaqDto faqDto, ModelMap model) throws UnsupportedEncodingException {
		Question question = new Question();
		question.setContent(faqDto.getQuestion());
		question.setCreateDate(new Date());
		question.setCreator(faqDto.getQuestionCreator());

		// 添加问题
		eryuanService.insertQuestion(question);

		// 查询置顶公告
		List<Content> noticeList = getNoticeList();

		// 查询在线咨询
		List<FaqDto> faqDtoList = eryuanService.queryTop5ValidFaqDto();

		model.addAttribute("noticeList", noticeList);
		model.addAttribute("faqDtoList", faqDtoList);
		return View.EryuanFaqAuditView;
	}

	/**
	 * faq后台管理
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = Url.FAQ_MANAGE)
	public String faqManage() {
		return View.FaqManageView;
	}

	/**
	 * faq 获得所有问题
	 */
	@ResponseBody
	@RequestMapping(value = Url.FAQ_GET_QUESTION)
	public JqGridDto faqGetQuestion(int page, int rows) {
		// 总记录数
		int recordCount = 0;
		// 总页数
		int pageCount = 1;

		List<Question> questionList = new LinkedList<Question>();
		questionList = eryuanService.queryQuestion(page * rows, rows);

		recordCount = eryuanService.queryQuestionCount();

		if (recordCount % rows > 0) {
			pageCount = recordCount / rows + 1;
		} else {
			pageCount = recordCount / rows;
		}

		JqGridDto jqGridDto = new JqGridDto();
		jqGridDto.setPage(page);
		jqGridDto.setRecordsCount(recordCount);
		jqGridDto.setTotal(pageCount);
		jqGridDto.setRows(questionList);
		return jqGridDto;
	}

	/**
	 * 回复问题页面
	 * 
	 * @param id
	 * @param model
	 */
	@RequestMapping(value = Url.FAQ_QUESTION_REPLY)
	public String replyQuestion(@PathVariable int id, ModelMap model) {
		Question question = eryuanService.queryQuestionById(id);
		Answer answer;
		if (eryuanService.queryAnswerByQuestionId(id) == null) {
			answer = new Answer();
			answer.setId(-1);
		} else {
			answer = eryuanService.queryAnswerByQuestionId(id);
		}

		model.addAttribute("question", question);
		model.addAttribute("answer", answer);
		return View.FaqReplyView;
	}

	/**
	 * 回复问题
	 * 
	 * @param answer
	 * @return
	 */
	@RequestMapping(value = Url.FAQ_QUESTION_REPLY_SUBMIT)
	public String submitReply(Answer answer) {
		answer.setCreateDate(new Date());
		answer.setCreator("admin");
		eryuanService.insertAnswer(answer);
		return View.FaqMessageView;
	}

	/**
	 * FAQ 删除问题
	 * 
	 * @param id
	 */
	@ResponseBody
	@RequestMapping(value = Url.FAQ_QUESTION_DELETE)
	public void deleteFAQ(@PathVariable int id) {
		eryuanService.deleteFAQ(id);
		if (eryuanService.queryAnswerByQuestionId(id) != null) {
			eryuanService.deleteAnswer(id);
		}
	}

	/**
	 * 编辑回复问题
	 * 
	 * @param id
	 * @param answer
	 * @return
	 */
	@RequestMapping(value = Url.FAQ_QUESTION_REPLY_EDIT)
	public String editReply(@PathVariable int id, Answer answer) {
		eryuanService.updateAnswerById(answer);
		return View.FaqMessageView;
	}

	/**
	 * 医院地图
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = Url.MAP)
	public String map(ModelMap model) {
		// 查询置顶公告
		List<Content> noticeList = getNoticeList();

		// 查询在线咨询
		List<FaqDto> faqDtoList = eryuanService.queryTop5ValidFaqDto();

		model.addAttribute("noticeList", noticeList);
		model.addAttribute("faqDtoList", faqDtoList);
		return View.EryuanMapView;
	}

	/**
	 * 工会首页
	 * 
	 * @return
	 */
	@RequestMapping(value = Url.LABOR_UNION_INDEX)
	public String laborUnionIndex(ModelMap model) {
		int i;
		// 查询工会置顶公告
		List<Content> laborNoticeList = getLaborNoticeTop();

		// 查询焦点图片
		List<Content> laborNewsPicList = new LinkedList<Content>();
		laborNewsPicList = eryuanService.queryLaborNewsPicTop();

		// 查询工会动态
		List<Content> dynamicLaborUnionList = new LinkedList<Content>();
		dynamicLaborUnionList = eryuanService.queryTopSix(54);

		// 查询先进表彰
		List<Content> praiseList = new LinkedList<Content>();
		praiseList = eryuanService.queryTopSix(55);

		// 查询员工发展与关怀
		List<Content> careList = new LinkedList<Content>();
		careList = eryuanService.queryTopSix(56);

		// 查询职工文化
		List<Content> knowledgeList = new LinkedList<Content>();
		knowledgeList = eryuanService.queryTopSix(57);

		// 查询法律法规
		List<Content> lawList = new LinkedList<Content>();
		lawList = eryuanService.queryTopSix(58);

		// 查询精彩图片
		List<Content> wonderfulPicList = new ArrayList<Content>();
		wonderfulPicList = eryuanService.queryLaborUnionWonderfulPicTop();
		if (wonderfulPicList.size() < 8 || wonderfulPicList.size() != 0) {
			for (i = 0; i <= 8 - wonderfulPicList.size(); i++) {
				wonderfulPicList.add(wonderfulPicList.get(1));
			}
		}
		
		//查询联系我们
		Content contactUs = new Content();
		contactUs = contentService.queryContentById(243);

		model.addAttribute("laborNoticeList", laborNoticeList);
		model.addAttribute("laborNewsPicList", laborNewsPicList);
		model.addAttribute("dynamicLaborUnionList", dynamicLaborUnionList);
		model.addAttribute("praiseList", praiseList);
		model.addAttribute("careList", careList);
		model.addAttribute("knowledgeList", knowledgeList);
		model.addAttribute("lawList", lawList);
		model.addAttribute("wonderfulPicList", wonderfulPicList);
		model.addAttribute("contactUs", contactUs);
		return View.EryuanLaborUnionIndexView;
	}

	/**
	 * 查询工会置顶公告
	 * 
	 * @return
	 */
	private List<Content> getLaborNoticeTop() {
		return eryuanService.queryLaborNoticeTop();
	}

	/**
	 * 工会二级页面
	 * 
	 * @param channelId
	 * @param page
	 * @param model
	 * @return
	 */
	@RequestMapping(value = Url.LABOR_UNION_CONTENT_LIST)
	public String laborUnionContentList(@PathVariable int channelId, @PathVariable int page, ModelMap model) {
		String channelName = getChannelName(channelId);

		// 查询工会置顶公告
		List<Content> laborNoticeList = getLaborNoticeTop();

		// 查询内容
		List<Content> contentList = new LinkedList<Content>();
		contentList = eryuanService.queryContentListByChannelIdForPage(channelId, (page - 1) * 20, 20);

		// 查询内容数
		int count = eryuanService.queryContentCountByChannelId(channelId);

		// 查询联系我们
		Content contactUs = new Content();
		contactUs = contentService.queryContentById(243);

		model.addAttribute("channelName", channelName);
		model.addAttribute("laborNoticeList", laborNoticeList);
		model.addAttribute("page", page);
		model.addAttribute("contentList", contentList);
		model.addAttribute("count", count);
		model.addAttribute("contactUs", contactUs);
		return View.EryuanLaborUnionContentListView;
	}

	/**
	 * 工会详细内容
	 * 
	 * @param contentId
	 * @param model
	 * @return
	 */
	@RequestMapping(value = Url.LABOR_UNION_CONTENT_DETAIL)
	public String laborUnionContentDetail(@PathVariable int contentId, ModelMap model) {
		// 查询详细内容
		Content content = new Content();
		content = contentService.queryContentById(contentId);

		// 查询工会置顶公告
		List<Content> laborNoticeList = getLaborNoticeTop();

		String channelName = getChannelName(content.getChannelId());

		// 查询联系我们
		Content contactUs = new Content();
		contactUs = contentService.queryContentById(243);

		model.addAttribute("content", content);
		model.addAttribute("laborNoticeList", laborNoticeList);
		model.addAttribute("channelName", channelName);
		model.addAttribute("contactUs", contactUs);
		return View.EryuanLaborUnionContentView;
	}

	/**
	 * 科室简介详细内容
	 * 
	 * @param channelId
	 * @return
	 */
	@RequestMapping(value = Url.ERYUAN_DEPT_CONTENT_DETAIL)
	public String detpContent(@PathVariable int channelId) {
		List<Content> contentList = eryuanService.queryContentListByChannelId(channelId);
		Content content = contentList.get(0);
		return "redirect:/content/detail/contentId/" + content.getId();
	}

}

