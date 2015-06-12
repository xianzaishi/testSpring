package com.zhl.testSpring.service;

import java.util.List;

import com.zhl.testSpring.model.Content;

public interface FrontService {

	/**
	 * 查询最新文章
	 * 
	 * @param count
	 *            查询的条数
	 * @return
	 */
	public List<Content> queryLatestContent(int count);
}
