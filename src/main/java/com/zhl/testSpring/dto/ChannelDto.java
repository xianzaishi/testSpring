package com.zhl.testSpring.dto;

/**
 * 频道数据传输对象
 * 
 * @author 张宏亮
 * 
 */
public class ChannelDto {
	private static final long serialVersionUID = 1L;

	/**
	 * 频道id
	 */
	private int id;

	/**
	 * 当前频道名
	 */
	private String name;

	/**
	 * 上级频道名
	 */
	private String parentName;


	/**
	 * 上级频道id
	 */
	private int parentId;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getParentName() {
		return parentName;
	}

	public void setParentName(String parentName) {
		this.parentName = parentName;
	}

	public int getParentId() {
		return parentId;
	}

	public void setParentId(int parentId) {
		this.parentId = parentId;
	}

}
