package com.zhl.testSpring.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhl.testSpring.dao.ChannelDao;
import com.zhl.testSpring.model.Channel;
import com.zhl.testSpring.model.User;
import com.zhl.testSpring.service.ChannelService;

/**
 * 频道服务层实现类
 * 
 * @author 张宏亮
 * 
 */
@Service
public class ChannelServiceImpl implements ChannelService {

	@Autowired
	private ChannelDao channelDao;

	/**
	 * 查询目录树
	 */
	public List<Channel> queryChannel() {
		return (List<Channel>) channelDao.queryChannel();
	}
	
	/**
	 * 根据父节点id查询父节点
	 * 
	 * @param parentId
	 * @return
	 */
	public Channel queryParentChannelById(Integer parentId) {
		return (Channel) channelDao.queryParentChannelById(parentId);
	}

	/**
	 * 添加频道
	 * 
	 * @param channel
	 */
	public void insertChannel(Channel channel) {
		channelDao.insertChannel(channel);
	}

	/**
	 * 根据id查父节点id
	 * 
	 * @param channelId
	 * @return
	 */
	public Channel queryParentIdById(int channelId) {
		return (Channel) channelDao.queryParentIdById(channelId);
	}
	
	/**
	 * 查询所有频道
	 * 
	 * @return
	 */
	public List<Channel> queryForAllChannel() {
		return channelDao.queryForAllChannel();
	}

	/**
	 * 编辑频道
	 * 
	 * @param channel
	 */
	public void editChannel(Channel channel) {
		channelDao.editChannel(channel);
	}
	
	/**
	 * 删除频道
	 * 
	 * @param channel
	 */
	public void deleteChannel(Channel channel) {
		channelDao.deleteChannel(channel);
	}

	/**
	 * 查询子频道数
	 * 
	 * @param channel
	 * @return
	 */
	public int queryCountOfChildren(Channel channel) {
		return channelDao.queryCountOfChildren(channel);
	}

	/**
	 * 根据频道id查询文章数
	 * 
	 * @param channelId
	 * @return
	 */
	public int queryContentCountByChannelId(int channelId) {
		return channelDao.queryContentCountByChannelId(channelId);
	}

	/**
	 * 用户验证
	 * 
	 * @param user
	 * @return
	 */
	public boolean validateUser(User user, String go) {
		boolean key = false;
		User returnedUser = channelDao.validateUser(user);
		if (returnedUser == null) {
			key = false;
		} else {
			if ((returnedUser.getEmail() == "工会主页" || "工会主页".equals(returnedUser.getEmail())) && (go == "GH" || "GH".equals(go))) {
				key = true;
			} else if ((returnedUser.getEmail() == "医院主页" || "医院主页".equals(returnedUser.getEmail())) && (go == "YY" || "YY".equals(go))) {
				key = true;
			} else {
				key = false;
			}
		}
		return key;
	}

}
