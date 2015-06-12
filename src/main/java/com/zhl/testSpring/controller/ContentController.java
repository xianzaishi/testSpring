package com.zhl.testSpring.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.zhl.testSpring.constant.Url;
import com.zhl.testSpring.constant.View;
import com.zhl.testSpring.dto.JqGridDto;
import com.zhl.testSpring.model.Content;
import com.zhl.testSpring.model.FileUpload;
import com.zhl.testSpring.model.Images;
import com.zhl.testSpring.service.ContentService;

/**
 * 内容控制器
 * 
 * @author 张宏亮
 * 
 */
@Controller
public class ContentController {
	@Autowired
	private ContentService contentService;
	
	/**
	 * 主页
	 */
	// @RequestMapping(value = Url.INDEX)
	// public String index(){
	// System.out.println("123123123");
	// return View.IndexView;
	// }

	@RequestMapping(value = Url.CMS_INDEX)
	public String cmsIndex() {
		return View.CmsIndexView;
	}

	/**
	 * 进入添加文章页面
	 * 
	 * @param channelId
	 * @return
	 */
	@RequestMapping(value = Url.CMS_CONTENT_ADD_PAGE)
	public String addContentPage(@PathVariable int channelId, ModelMap model) {
		Content content = new Content();
		content.setChannelId(channelId);
		model.addAttribute("content", content);
		return View.AddContentView;
	}

	/**
	 * 添加文章
	 * 
	 * @param content
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = Url.CMS_CONTENT_ADD, method = RequestMethod.POST)
	public void addContent(Content content) {
		content.setTitle(content.getTitle().trim());
		content.setBrief(content.getBrief().trim());
		content.setContent(content.getContent().trim());
		content.setCreator("creator");
		content.setCreateDate(new Date());
		content.setModifier("modifier");
		content.setModifyDate(new Date());
		content.setViewer("viewer");
		contentService.addContent(content);
		// return "redirect:" + Url.CMS_INDEX;
	}

	/**
	 * 标题图片上传
	 * 
	 * @param request
	 * @param response
	 * @param model
	 * @return
	 */
	@RequestMapping(value = Url.CMS_CONTENT_PIC_PREVIEW_UPLOAD)
	public void picPreviewUpload(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		SimpleDateFormat dateformat = new SimpleDateFormat("yyyy/MM/dd/HH/mm/ss/S");
		/** 构建图片保存的目录 **/
		String webRoot = request.getSession().getServletContext().getRealPath("");

		String pagePath = "/files/" + dateformat.format(new Date()); // 用于返回显示图片
		String logoPathDir = webRoot + pagePath;
		/** 得到图片保存目录的真实路径 **/
		String logoRealPathDir = request.getSession().getServletContext().getRealPath(logoPathDir);
		/** 根据真实路径创建目录 **/
		File logoSaveFile = new File(logoPathDir);
		if (!logoSaveFile.exists())
			logoSaveFile.mkdirs();
		/** 页面控件的文件流 **/
		MultipartFile multipartFile = multipartRequest.getFile("picPreviewFile");
		/** 获取文件的后缀 **/
		String suffix = multipartFile.getOriginalFilename().substring(multipartFile.getOriginalFilename().lastIndexOf("."));
		// /**使用UUID生成文件名称**/
		// String logImageName = UUID.randomUUID().toString()+ suffix;//构建文件名称
		String logImageName = multipartFile.getOriginalFilename();
		pagePath = pagePath + "/" + logImageName;
		/** 拼成完整的文件保存路径加文件 **/
		String fileName = logoPathDir + "/" + logImageName;
		File file = new File(fileName);

		try {
			multipartFile.transferTo(file);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		// fileName存入file_upload表
		FileUpload fileUpload = new FileUpload();
		fileUpload.setPath(pagePath);
		fileUpload.setRealPath(fileName);
		contentService.fileUpload(fileUpload);

		// 获得上传文件的id
		int id = contentService.queryIdByPath(fileUpload);

		// 返回json数据
		try {
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("id", id);
			jsonObject.put("imagePath", pagePath);
			response.setContentType("text/html");
			response.getWriter().println(jsonObject.toString());
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 文件上传
	 * 
	 * @param request
	 * @param response
	 * @param model
	 * @return
	 */
	@RequestMapping(value = Url.CMS_CONTENT_FILE_UPLOAD)
	public void fileUpload(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		SimpleDateFormat dateformat = new SimpleDateFormat("yyyy/MM/dd/HH/mm/ss/S");
		/** 构建图片保存的目录 **/
		String logoPathDir = "d:/files/" + dateformat.format(new Date());
		/** 得到图片保存目录的真实路径 **/
		String logoRealPathDir = request.getSession().getServletContext().getRealPath(logoPathDir);
		/** 根据真实路径创建目录 **/
		File logoSaveFile = new File(logoPathDir);
		if (!logoSaveFile.exists())
			logoSaveFile.mkdirs();
		/** 页面控件的文件流 **/
		MultipartFile multipartFile = multipartRequest.getFile("file");
		/** 获取文件的后缀 **/
		String suffix = multipartFile.getOriginalFilename().substring(multipartFile.getOriginalFilename().lastIndexOf("."));
		// /**使用UUID生成文件名称**/
		// String logImageName = UUID.randomUUID().toString()+ suffix;//构建文件名称
		String logImageName = multipartFile.getOriginalFilename();
		/** 拼成完整的文件保存路径加文件 **/
		String fileName = logoPathDir + "/" + logImageName;
		File file = new File(fileName);

		try {
			multipartFile.transferTo(file);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		// fileName存入file_upload表
		FileUpload fileUpload = new FileUpload();
		fileUpload.setPath(fileName);
		fileUpload.setRealPath(fileName);
		contentService.fileUpload(fileUpload);

		// 获得上传文件的id
		int id = contentService.queryIdByPath(fileUpload);

		// 返回json数据
		try {
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("id", id);
			response.setContentType("text/html");
			response.getWriter().println(jsonObject.toString());
		} catch (IOException e) {
			e.printStackTrace();
		}
		// model.addAttribute("data", id);
		// return id;
	}
	
	/**
	 * 文件下载
	 * 
	 * @param fileId
	 */
	@RequestMapping(value = Url.CMS_CONTENT_FILE_DOWNLOAD)
	public void fileDownload(@PathVariable int fileId, @PathVariable String fileName, HttpServletResponse response) {
		FileUpload fileUpload = new FileUpload();
		fileUpload = contentService.queryFileById(fileId);

		try {
			// File file = new
			// File(fileUpload.getPath().split("/")[fileUpload.getPath().split("/").length
			// - 1]);
			// System.out.println(file.getAbsolutePath());
			response.setContentType("application/force-download");
			response.setHeader("Content-Disposition", "attachement;");
			InputStream inputStream = new FileInputStream(fileUpload.getPath());
			OutputStream os = response.getOutputStream();
			byte[] b = new byte[1024];
			int length;
			while ((length = inputStream.read(b)) > 0) {
				os.write(b, 0, length);
			}
			inputStream.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 显示全部内容 按修改时间倒序(分页)
	 * 
	 * @param page
	 * @param rows
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = Url.CMS_CONTENT_PAGING)
	public JqGridDto contentPaging(int page, int rows) {
		// 总记录数
		int recordCount = 0;
		// 总页数
		int pageCount = 1;

		recordCount = contentService.queryContentCount();

		List<Content> content = new LinkedList<Content>();
		content = contentService.queryContent(page * rows, rows);

		if (recordCount % rows > 0) {
			pageCount = recordCount / rows + 1;
		} else {
			pageCount = recordCount / rows;
		}

		JqGridDto jqGridDto = new JqGridDto();
		jqGridDto.setPage(page);
		jqGridDto.setRecordsCount(recordCount);
		jqGridDto.setTotal(pageCount);
		jqGridDto.setRows(content);
		return jqGridDto;
	}

	/**
	 * 根据频道显示内容(分页)
	 * 
	 * @param channelId
	 * @param page
	 * @param rows
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = Url.CMS_CONTENT_PAGING_CHANNEL)
	public JqGridDto queryContentByChannelId(@PathVariable int channelId, int page, int rows) {
		// 总记录数
		int recordCount = 0;
		// 总页数
		int pageCount = 1;
		List<Content> contentList = new LinkedList<Content>();
		contentList = contentService.queryContentByChannelId(channelId, page * rows, rows);

		recordCount = contentService.queryContentCountByChannelId(channelId);
		if (recordCount % rows > 0) {
			pageCount = recordCount / rows + 1;
		} else {
			pageCount = recordCount / rows;
		}

		JqGridDto jqGridDto = new JqGridDto();
		jqGridDto.setPage(page);
		jqGridDto.setRecordsCount(recordCount);
		jqGridDto.setTotal(pageCount);
		jqGridDto.setRows(contentList);
		return jqGridDto;
	}

	/**
	 * 进入内容预览页面
	 * 
	 * @param title
	 * @param content
	 * @param model
	 * @return
	 */
	@RequestMapping(value = Url.CMS_CONTENT_PREVIEW)
	public String contentPreview(@PathVariable String title, @PathVariable String contentText, ModelMap model) {
		Content content = new Content();
		content.setTitle(title);
		content.setContent(contentText);
		content.setCreator("creator");
		content.setCreateDate(new Date());
		content.setModifier("modifier");
		content.setModifyDate(new Date());

		model.addAttribute("content", content);
		return View.ContentPreviewView;
	}

	/**
	 * 删除内容
	 * 
	 * @param contentId
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = Url.CMS_CONTENT_DELETE)
	public void contentDelete(@PathVariable int contentId) {
		contentService.deleteContentById(contentId);
	}

	/**
	 * 进入编辑文章页面
	 * 
	 * @param channelId
	 * @return
	 */
	@RequestMapping(value = Url.CMS_CONTENT_EDIT_PAGE)
	public String editContentPage(@PathVariable int contentId, ModelMap model) {
		Content content = new Content();
		content = contentService.queryContentById(contentId);

		// 根据fileId查上传文件
		boolean hasUploadFile = false;
		String fileName = null;
		FileUpload fileUpload = new FileUpload();
		if (content.getFileUpload() == null || "".equals(content.getFileUpload()) || content.getFileUpload().equals("")) {
			hasUploadFile = false;
		} else {
			fileUpload = contentService.queryFileById(Integer.parseInt(content.getFileUpload()));
			fileName = fileUpload.getPath().split("/")[fileUpload.getPath().split("/").length - 1];
			hasUploadFile = true;
		}

		// 获得标题图片地址
		String path = "/images/zwtp.jpg";
		if (!((content.getImage() == "" || "".equals(content.getImage())))) {
			path = contentService.queryFilePathById(Integer.parseInt(content.getImage()));
		}

		model.addAttribute("fileUpload", fileUpload);
		model.addAttribute("hasUploadFile", hasUploadFile);
		model.addAttribute("fileName", fileName);
		model.addAttribute("content", content);
		model.addAttribute("path", path);
		return View.EditContentView;
	}

	/**
	 * 编辑文章
	 * 
	 * @param content
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = Url.CMS_CONTENT_EDIT, method = RequestMethod.POST)
	public void editContent(Content content) {
		content.setTitle(content.getTitle().trim());
		content.setBrief(content.getBrief().trim());
		content.setContent(content.getContent().trim());
		content.setCreator("creator");
		content.setCreateDate(new Date());
		content.setModifier("modifier");
		content.setModifyDate(new Date());
		content.setViewer("viewer");
		contentService.updateContentById(content);
		// contentService.addContent(content);
		// return "redirect:" + Url.CMS_INDEX;
	}

	/**
	 * ckeditor上传图片
	 * 
	 * @param request
	 * @param response
	 * @param model
	 * @throws IOException
	 */
	@RequestMapping(value = Url.CMS_CONTENT_CKEDIOTR_IMAGE_UPLOAD)
	public void uploadImages(@PathVariable int contentId, HttpServletRequest request, HttpServletResponse response, ModelMap model) throws IOException {
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		SimpleDateFormat dateformat = new SimpleDateFormat("yyyy/MM/dd/HH/mm/ss/S");
		/** 构建图片保存的目录 **/
		String webRoot = request.getSession().getServletContext().getRealPath("");

		String pagePath = "/files/" + dateformat.format(new Date()); // 用于返回给ckeditor显示图片
		String logoPathDir = webRoot + pagePath;
		/** 得到图片保存目录的真实路径 **/
		String logoRealPathDir = request.getSession().getServletContext().getRealPath(logoPathDir);
		/** 根据真实路径创建目录 **/
		File logoSaveFile = new File(logoPathDir);
		if (!logoSaveFile.exists())
			logoSaveFile.mkdirs();
		/** 页面控件的文件流 **/
		MultipartFile multipartFile = multipartRequest.getFile("ckeditor-file");
		/** 获取文件的后缀 **/
		String suffix = multipartFile.getOriginalFilename().substring(multipartFile.getOriginalFilename().lastIndexOf("."));
		// /**使用UUID生成文件名称**/
		// String logImageName = UUID.randomUUID().toString()+ suffix;//构建文件名称
		String logImageName = multipartFile.getOriginalFilename();
		pagePath = pagePath + "/" + logImageName;
		/** 拼成完整的文件保存路径加文件 **/
		String fileName = logoPathDir + "/" + logImageName;
		File file = new File(fileName);

		try {
			multipartFile.transferTo(file);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		// fileName存入images表
		Images images = new Images();
		images.setPath(fileName);
		contentService.imagesUpload(images);

		String CKEditorFuncNum = request.getParameter("CKEditorFuncNum");
		// 获得上传文件的id
		int id = contentService.queryImagesIdByPath(images);

		// response.getWriter().write(
		// "<script type='text/javascript'>window.parent.CKEDITOR.tools.callFunction("
		// + CKEditorFuncNum + ", '" + fileName + "' , 'aa');</script>");
		// 返回json数据
		try {
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("id", id);
			jsonObject.put("url", pagePath);
			response.setContentType("text/html");
			response.getWriter().println(jsonObject.toString());

			// // 更新content表image字段
			// // contentId = 1 为新建内容 只需返回图片路径
//			if (contentId != -1) {
//				Content content = new Content();
//				content.setId(contentId);
//				content.setImage(pagePath);
//				contentService.updateContentImage(content);
//			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 置顶内容
	 * 
	 * @param contentId
	 */
	@ResponseBody
	@RequestMapping(value = Url.CMS_CONTENT_TOP)
	public void topContent(@PathVariable int contentId) {
		contentService.updateContentTop(contentId);
	}

	/**
	 * 取消置顶内容
	 * 
	 * @param contentId
	 */
	@ResponseBody
	@RequestMapping(value = Url.CMS_CONTENT_UNTOP)
	public void untopContent(@PathVariable int contentId) {
		contentService.updateContentUntop(contentId);
	}

}

