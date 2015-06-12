package com.zhl.testSpring.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.zhl.testSpring.model.Content;

@Repository
public class FrontDao extends BaseDao {

	/**
	 * 查询最新文章
	 * 
	 * @param count
	 *            查询的条数
	 * @return
	 */
	public List<Content> queryLatestContent(int count) {
		return (List<Content>) getSqlMapClientTemplate().queryForList("front.queryLatestContent", count);
	}
}
