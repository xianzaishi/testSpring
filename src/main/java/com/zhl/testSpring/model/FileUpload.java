package com.zhl.testSpring.model;

/**
 * 上传文件实体类
 * 
 * @author 张宏亮
 * 
 */
public class FileUpload {
	private static final long serialVersionUID = 1L;

	/**
	 * id
	 */
	private int id;

	/**
	 * 路径
	 */
	private String path;

	/**
	 * 文件存储真实物理路径
	 */
	private String realPath;

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

	public String getRealPath() {
		return realPath;
	}

	public void setRealPath(String realPath) {
		this.realPath = realPath;
	}

}
