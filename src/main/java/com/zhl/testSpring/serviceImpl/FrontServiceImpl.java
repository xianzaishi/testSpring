package com.zhl.testSpring.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhl.testSpring.dao.FrontDao;
import com.zhl.testSpring.model.Content;
import com.zhl.testSpring.service.FrontService;

@Service
public class FrontServiceImpl implements FrontService {

	@Autowired
	private FrontDao frontDao;

	/**
	 * 查询最新文章
	 * 
	 * @param count
	 *            查询的条数
	 * @return
	 */
	public List<Content> queryLatestContent(int count) {
		return frontDao.queryLatestContent(count);
	}

}
