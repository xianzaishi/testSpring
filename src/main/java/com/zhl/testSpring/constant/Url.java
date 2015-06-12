package com.zhl.testSpring.constant;

public class Url {
	public static final String CMS_BASE = "/cms";

	public static final String FRONT_BASE = "/front";

	public static final String INDEX = "/index";

	public static final String CMS_INDEX = CMS_BASE + "/index";
	
	public static final String CMS_INDEX_LOAD_TREE = CMS_BASE + "/index/loadTree";

	/**
	 * 后台登陆页面
	 */
	public static final String LOGIN = "/login";

	/**
	 * 后台登陆页面
	 */
	public static final String SECOND_LOGIN = CMS_BASE + "/login";

	/**
	 * 登陆
	 */
	public static final String SYSTEM_LOGIN = "/system/login/username/{username}/password/{password}";

	/**
	 * 登陆
	 */
	public static final String SYSTEM_SECOND_LOGIN = "/system/login"; // /username/{username}/password/{password}/go/{go}

	/**
	 * 进入添加频道页面
	 */
	public static final String CMS_CHANNEL_ADD_PAGE = CMS_BASE + "/channel/add/{channelId}";

	/**
	 * 进入编辑频道页面
	 */
	public static final String CMS_CHANNEL_EDIT_PAGE = CMS_BASE + "/channel/edit/{channelId}";

	/**
	 * 删除频道
	 */
	public static final String CMS_CHANNEL_DELETE = CMS_BASE + "/channel/delete/{channelId}";

	/**
	 * 编辑频道
	 */
	public static final String CMS_CHANNEL_EDIT = CMS_BASE + "/channel/edit";

	/**
	 * 添加频道
	 */
	public static final String CMS_CHANNEL_ADD = CMS_BASE + "/channel/add";

	/**
	 * ajax请求获得所有频道
	 */
	public static final String CMS_CHANNEL_GET_ALL = CMS_BASE + "/channel/get/all";

	/**
	 * 添加内容页面
	 */
	public static final String CMS_CONTENT_ADD_PAGE = CMS_BASE + "/content/add/{channelId}";

	/**
	 * 添加内容
	 */
	public static final String CMS_CONTENT_ADD = CMS_BASE + "/content/add";

	/**
	 * 文件上传
	 */
	public static final String CMS_CONTENT_FILE_UPLOAD = CMS_BASE + "/content/fileUpload";

	/**
	 * 标题图片上传
	 */
	public static final String CMS_CONTENT_PIC_PREVIEW_UPLOAD = CMS_BASE + "/content/picPreviewUpload";

	/**
	 * 内容分页
	 */
	public static final String CMS_CONTENT_PAGING = CMS_BASE + "/content/get";

	/**
	 * 根据频道查询分页内容
	 */
	public static final String CMS_CONTENT_PAGING_CHANNEL = CMS_BASE + "/content/get/channelId/{channelId}";

	/**
	 * 内容预览
	 */
	public static final String CMS_CONTENT_PREVIEW = CMS_BASE + "/content/preview/title/{title}/contentText/{contentText}";
	
	/**
	 * 删除内容
	 */
	public static final String CMS_CONTENT_DELETE = CMS_BASE + "/content/contentId/{contentId}/delete";

	/**
	 * 进入编辑内容页面
	 */
	public static final String CMS_CONTENT_EDIT_PAGE = CMS_BASE + "/content/edit/{contentId}";

	/**
	 * 编辑内容
	 */
	public static final String CMS_CONTENT_EDIT = CMS_BASE + "/content/edit";

	/**
	 * 置顶内容
	 */
	public static final String CMS_CONTENT_TOP = CMS_BASE + "/content/top/contentId/{contentId}";

	/**
	 * 取消置顶内容
	 */
	public static final String CMS_CONTENT_UNTOP = CMS_BASE + "/content/untop/contentId/{contentId}";

	/**
	 * 文件下载
	 */
	public static final String CMS_CONTENT_FILE_DOWNLOAD = CMS_BASE + "/content/fileDownLoad/{fileId}/fileName/{fileName}";

	/**
	 * ckeditor图片上传
	 */
	public static final String CMS_CONTENT_CKEDIOTR_IMAGE_UPLOAD = CMS_BASE + "/content/uploadImageUrl/{contentId}";

	/**
	 * 专家介绍
	 */
	public static final String EXPERT = "/expert/get";

	/**
	 * 前台首页
	 */
	public static final String FRONT_INDEX = FRONT_BASE + INDEX;

	/**
	 * 二院首页
	 */
	public static final String ERYUAN_INDEX = "/index";

	/**
	 * 二院二级页面
	 */
	public static final String ERYUAN_CONTENT = "/content";

	/**
	 * 二院二级页面
	 */
	public static final String ERYUAN_CONTENT_LIST = "/content/list/channelId/{channelId}";

	/**
	 * 科室分类
	 */
	public static final String ERYUAN_CHANNEL_LIST = "/channel/list/channelId/{channelId}";

	/**
	 * 二院二级页面 分页
	 */
	public static final String ERYUAN_CONTENT_LIST_FOR_PAGE = "/content/list/channelId/{channelId}/page/{page}";

	/**
	 * 二院专家页面
	 */
	public static final String ERYUAN_SPECIAL_CONTENT_LIST = "/content/list/special/channelId/{channelId}/page/{page}";

	/**
	 * 二院科室特色页面
	 */
	public static final String ERYUAN_DEPT_CONTENT_LIST = "/content/list/dept/channelId/{channelId}/page/{page}";

	/**
	 * 二院详细内容页面
	 */
	public static final String ERYUAN_CONTENT_DETAIL = "/content/detail/contentId/{contentId}";

	/**
	 * FAQ前台页面
	 */
	public static final String ERYUAN_FAQ_INDEX = "/faq/page/{page}";

	/**
	 * FAQ提交问题
	 */
	public static final String ERYUAN_FAQ_SUBMIT = "/faq/submit";

	/**
	 * FAQ后台管理首页
	 */
	public static final String FAQ_MANAGE = "/backend/faq/index";

	/**
	 * FAQ 获得所有问题
	 */
	public static final String FAQ_GET_QUESTION = "/faq/question/get";

	/**
	 * 删除问题
	 */
	public static final String FAQ_QUESTION_DELETE = "/faq/question/id/{id}/delete";

	/**
	 * 回复问题页面
	 */
	public static final String FAQ_QUESTION_REPLY = "/faq/reply/question/id/{id}";

	/**
	 * 回复问题提交
	 */
	public static final String FAQ_QUESTION_REPLY_SUBMIT = "/faq/answer/submit";

	/**
	 * 编辑问题回复
	 */
	public static final String FAQ_QUESTION_REPLY_EDIT = "/faq/answer/edit/id/{id}";

	/**
	 * 医院地图
	 */
	public static final String MAP = "/map";

	/**
	 * 工会首页
	 */
	public static final String LABOR_UNION_INDEX = "/laborUnion/index";

	/**
	 * 工会二级页面
	 */
	public static final String LABOR_UNION_CONTENT_LIST = "/labor/union/content/list/channelId/{channelId}/page/{page}";

	/**
	 * 工会详细内容页面
	 */
	public static final String LABOR_UNION_CONTENT_DETAIL = "/labor/union/content/detail/contentId/{contentId}";

	/**
	 * 错误页面
	 */
	public static final String ERROR = "/error";

	/**
	 * 科室简介
	 */
	public static final String ERYUAN_DEPT_CONTENT_DETAIL = "/dept/content/list/channelId/{channelId}";

}
