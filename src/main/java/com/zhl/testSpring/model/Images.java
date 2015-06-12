package com.zhl.testSpring.model;

/**
 * ckeditor上传图片实体类
 * 
 * @author 张宏亮
 * 
 */
public class Images {
	private static final long serialVersionUID = 1L;

	/**
	 * id
	 */
	private int id;

	/**
	 * 路径
	 */
	private String path;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

}
