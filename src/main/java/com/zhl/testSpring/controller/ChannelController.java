package com.zhl.testSpring.controller;

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
import com.zhl.testSpring.dto.ChannelDto;
import com.zhl.testSpring.model.Channel;
import com.zhl.testSpring.model.User;
import com.zhl.testSpring.service.ChannelService;

/**
 * 频道控制器
 * 
 * @author 张宏亮
 * 
 */
@Controller
public class ChannelController {
	@Autowired
	private ChannelService channelService;

	/**
	 * 登陆页面
	 * 
	 * @return
	 */
	@RequestMapping(value = Url.LOGIN)
	public String login(ModelMap model) {
		model.addAttribute("error", "");
		return View.LoginView;
	}

	/**
	 * 登陆页面
	 * 
	 * @return
	 */
	@RequestMapping(value = Url.SECOND_LOGIN)
	public String secondLogin(ModelMap model) {
		model.addAttribute("error", "");
		return View.SecondLoginView;
	}

	/**
	 * 登陆认证
	 * 
	 * @return
	 */
	@RequestMapping(value = Url.SYSTEM_SECOND_LOGIN)
	public String systemSecondLogin(String username, String password, String go, ModelMap model) {
		boolean isValid = false;
		User user = new User();
		user.setUserName(username);
		user.setPassword(password);

		isValid = channelService.validateUser(user, go);
		if (isValid == false) {
			return View.SecondLoginView;
		}

		model.addAttribute("go", go);
		return View.CmsIndexView;
	}

	/**
	 * 登陆认证
	 * 
	 * @return
	 */
	/*
	 * @RequestMapping(value = Url.SYSTEM_LOGIN) public String
	 * systemLogin(@PathVariable String username, @PathVariable String password,
	 * ModelMap model) { boolean isValid = false; User user = new User();
	 * user.setUserName(username); user.setPassword(password);
	 * 
	 * isValid = channelService.validateUser(user); if (isValid == false) {
	 * model.addAttribute("error", "登陆失败"); return View.LoginView; // return
	 * View.ErrorView; } model.addAttribute("Authentication", true); return
	 * View.CmsIndexView; }
	 */

	/**
	 * 错误页面
	 * 
	 * @return
	 */
	@RequestMapping(value = Url.ERROR)
	public String error() {
		return View.ErrorView;
	}

	/**
	 * 展示频道树
	 * 
	 * @return channelList
	 */
	@ResponseBody
	@RequestMapping(value = Url.CMS_INDEX_LOAD_TREE, method = RequestMethod.GET)
	public List<Channel> queryChannel() {
		List<Channel> channelList = new LinkedList<Channel>();
		channelList = (List<Channel>) channelService.queryChannel();
		return channelList;
	}

	/**
	 * 进入添加频道页面
	 * 
	 * @param channelId
	 *            父节点id
	 * @return
	 */
	@RequestMapping(value = Url.CMS_CHANNEL_ADD_PAGE)
	public String addChannelPage(@PathVariable int channelId, ModelMap model) {
		Channel channel = new Channel();
		channel = (Channel) channelService.queryParentChannelById(channelId);

		ChannelDto channelDto = new ChannelDto();
		channelDto.setParentName(channel.getName());
		channelDto.setParentId(channelId);
		channelDto.setName("");

		model.addAttribute("channel", channelDto);
		return View.AddChannleView;
	}

	/**
	 * 添加频道
	 * 
	 * @param channel
	 */
	@ResponseBody
	@RequestMapping(value = Url.CMS_CHANNEL_ADD)
	public void insertChannel(ChannelDto channelDto) {
		Channel channel = new Channel();
		channel.setName(channelDto.getName());
		channel.setParent(channelDto.getParentId());

		channelService.insertChannel(channel);
		// return "redirect:" + Url.CMS_INDEX;
		// return View.CmsIndexView;
	}

	/**
	 * 进入编辑频道页面
	 * 
	 * @param channelId
	 * @param model
	 * @return
	 */
	@RequestMapping(value = Url.CMS_CHANNEL_EDIT_PAGE)
	public String editChannelPage(@PathVariable int channelId, ModelMap model) {
		ChannelDto channelDto = new ChannelDto();
		channelDto.setId(channelId);

		// 非根节点查询上层目录id
		if (channelId != 1) {
			// 根据id查上层目录
			Channel channel = new Channel();
			channel = channelService.queryParentIdById(channelId);

			channelDto.setParentId(channel.getParent());
			channelDto.setName(channel.getName());
		}

		model.addAttribute("channel", channelDto);
		model.addAttribute("channel1", new Channel());
		return View.EditChannleView;
	}

	/**
	 * ajax请求获得所有频道
	 * 
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = Url.CMS_CHANNEL_GET_ALL)
	public List<Channel> getAllChannel(ModelMap model) {
		List<Channel> allChannelList = new LinkedList<Channel>();
		allChannelList = channelService.queryForAllChannel();
		model.addAttribute("allChannelList", allChannelList);
		return allChannelList;
	}

	/**
	 * 编辑频道
	 * 
	 * @return
	 */
	@RequestMapping(value = Url.CMS_CHANNEL_EDIT, method = RequestMethod.POST)
	public String editChannel(Channel channel1) {
		// Channel channel = new Channel();
		// channel.setId(channelId);
		// channel.setName(channelName);
		//
		// channel.setParent(parentId);
		channelService.editChannel(channel1);
		return "redirect:" + Url.CMS_INDEX;
	}

	/**
	 * ajax请求 删除频道
	 * 
	 * @param channelId
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = Url.CMS_CHANNEL_DELETE)
	public String delChannel(@PathVariable int channelId, ModelMap model) {
		Channel channel = new Channel();
		channel.setId(channelId);

		// 检查是否存在子目录
		int count = channelService.queryCountOfChildren(channel);
		// TODO 检查是否存在文章
		int contentCount = channelService.queryContentCountByChannelId(channelId);

		if (count == 0 && contentCount == 0) {
			channelService.deleteChannel(channel);
			return "success";
		}else{
			return "fail";
		}
	}


}

