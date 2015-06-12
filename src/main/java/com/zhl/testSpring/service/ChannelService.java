package com.zhl.testSpring.service;

import java.util.List;

import com.zhl.testSpring.model.Channel;
import com.zhl.testSpring.model.User;

/**
 * 频道服务层接口
 * 
 * @author 张宏亮
 * 
 */
public interface ChannelService {
	/**
	 * 查询目录树
	 * 
	 * @return List<Channel>
	 */
	public List<Channel> queryChannel();

	/**
	 * 根据子节点id查询父节点
	 * 
	 * @param parentId
	 * @return
	 */
	public Channel queryParentChannelById(Integer parentId);
	
	/**
	 * 添加频道
	 * 
	 * @param channel
	 */
	public void insertChannel(Channel channel);

	/**
	 * 根据id查父节点id
	 * 
	 * @param channelId
	 * @return
	 */
	public Channel queryParentIdById(int channelId);
	
	/**
	 * 查询所有频道
	 * 
	 * @return
	 */
	public List<Channel> queryForAllChannel();

	/**
	 * 编辑频道
	 * 
	 * @param channel
	 */
	public void editChannel(Channel channel);
	
	/**
	 * 删除频道
	 * 
	 * @param channel
	 */
	public void deleteChannel(Channel channel);

	/**
	 * 查询子频道数
	 * 
	 * @param channel
	 * @return
	 */
	public int queryCountOfChildren(Channel channel);

	/**
	 * 根据频道id查询文章数
	 * 
	 * @param channelId
	 * @return
	 */
	public int queryContentCountByChannelId(int channelId);

	/**
	 * 用户验证
	 * 
	 * @param user
	 * @return
	 */
	public boolean validateUser(User user, String go);
}
