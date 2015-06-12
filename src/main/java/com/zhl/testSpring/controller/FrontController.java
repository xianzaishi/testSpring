package com.zhl.testSpring.controller;

import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zhl.testSpring.constant.Url;
import com.zhl.testSpring.constant.View;
import com.zhl.testSpring.model.Content;
import com.zhl.testSpring.service.FrontService;

@Controller
public class FrontController {

	@Autowired
	private FrontService frontService;

	/**
	 * 主页
	 */
	@RequestMapping(value = Url.FRONT_INDEX)
	public String frontIndex(ModelMap model) {
		// 查询最新文章
		List<Content> latestContentList = new LinkedList<Content>();
		latestContentList = frontService.queryLatestContent(6);
		model.addAttribute("latestContenList", latestContentList);

		return View.FrontIndexView;
	}

}
