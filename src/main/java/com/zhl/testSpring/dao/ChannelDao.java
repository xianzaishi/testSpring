package com.zhl.testSpring.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.zhl.testSpring.model.Channel;
import com.zhl.testSpring.model.User;

/**
 * 频道Dao
 * 
 * @author 张宏亮
 * 
 */
@Repository
public class ChannelDao extends BaseDao{

	/**
	 * 查询频道
	 * 
	 * @return
	 */
	public List<Channel> queryChannel() {
		return (List<Channel>) getSqlMapClientTemplate().queryForList("channel.queryChannel");
	}

	/**
	 * 根据子节点id查询父节点
	 * 
	 * @param parentId
	 * @return
	 */
	public Channel queryParentChannelById(Integer parentId) {
		return (Channel) getSqlMapClientTemplate().queryForObject("channel.queryParentChannelById", parentId);
	}

	/**
	 * 添加频道
	 * 
	 * @param channel
	 */
	public void insertChannel(Channel channel) {
		getSqlMapClientTemplate().insert("channel.insertChannel", channel);
	}

	/**
	 * 根据id查父节点id
	 * 
	 * @param channelId
	 * @return
	 */
	public Channel queryParentIdById(int channelId) {
		return (Channel) getSqlMapClientTemplate().queryForObject("channel.queryParentIdById", channelId);
	}

	/**
	 * 查询所有频道
	 * 
	 * @return
	 */
	public List<Channel> queryForAllChannel() {
		return (List<Channel>) getSqlMapClientTemplate().queryForList("channel.queryForAllChannel");
	}

	/**
	 * 编辑频道
	 * 
	 * @param channel
	 */
	public void editChannel(Channel channel) {
		getSqlMapClientTemplate().update("channel.updateChannel", channel);
	}

	/**
	 * 删除频道
	 * 
	 * @param channel
	 */
	public void deleteChannel(Channel channel) {
		getSqlMapClientTemplate().delete("channel.deleteChannel", channel);
	}

	/**
	 * 查询子频道数
	 * 
	 * @param channel
	 * @return
	 */
	public int queryCountOfChildren(Channel channel) {
		return (Integer) getSqlMapClientTemplate().queryForObject("channel.queryCountOfChildren", channel);
	}

	/**
	 * 根据频道id查询文章数
	 * 
	 * @param channelId
	 * @return
	 */
	public int queryContentCountByChannelId(int channelId) {
		return (Integer) getSqlMapClientTemplate().queryForObject("channel.queryContentCountByChannelId", channelId);
	}

	/**
	 * 用户验证
	 * 
	 * @param user
	 * @return
	 */
	public User validateUser(User user) {
		return (User) getSqlMapClientTemplate().queryForObject("channel.validateUser", user);
	}

}
