<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" type="text/css" href="${contextPath}/css/ajaxfileupload.css" />
<link rel="stylesheet" type="text/css" href="${contextPath}/css/jquery-ui-1.8.21.custom.css" />
<script language="javascript" type="text/javascript" src="${contextPath}/script/jquery-1.7.2.min.js" ></script>
<script language="javascript" type="text/javascript" src="${contextPath}/script/ckeditor/ckeditor.js" ></script> 
<script language="javascript" type="text/javascript" src="${contextPath}/script/ajaxfileupload.js" ></script> 
<script language="javascript" type="text/javascript" src="${contextPath}/script/lhgdialog/lhgcore.lhgdialog.min.js" ></script>
<script language="javascript" type="text/javascript" src="${contextPath}/script/check-file-size.js" ></script>
<center><br/>
<!-- 标题图片上传 start -->
<div id="picPreview"><img id="picPreviewImg" src="${contextPath}/images/zwtp.jpg" alt="" height="150" width="150"></img></div>
<form id="picPreviewUploadForm" ENCTYPE="multipart/form-data" action="${contextPath }/cms/content/picPreviewUpload" method="post">
上传文件：<input type="file" value="上传" id="picPreviewFile" name="picPreviewFile"/>
		<input id="picPreviewFileButton" type="button" value="上传" />
		<img id="picLoading" src="${contextPath }/images/loading.gif" style="display:none;" />
		<font id="picPreviewUploadFont" color="red">上传成功</font>
</form>
<!-- 标题图片上传 end -->
<form:form id="addContentForm" commandName="content" method="POST">
<table>
	<tr>
		<td>标题：</td>
		<td>&nbsp;<form:input id="title" path="title" style="width:700px;"/><font size="2" color="red">&nbsp;*</font>
				<form:hidden id="channelId" path="channelId" />
	  			<form:hidden id="fileUploadId" path="fileUpload" />
				<form:hidden id="image" path="image" />
		</td>
	</tr>
	<tr>
		<td>摘要：</td>
		<td>&nbsp;<form:input id="brief" path="brief" style="width:700px;"/><font size="2" color="red">&nbsp;*</font></td>
	</tr>
	<tr>
		<td>内容：</td>
		<td><form:textarea id="contentText" path="content" style="width:500px; height:200px;"></form:textarea><font style="float:right;" size="2" color="red">&nbsp;*</font></td>
	</tr>
	<tr>
		<td>是否置顶：</td>
		<td>
			<form:radiobutton path="top" value="1" ></form:radiobutton>置顶
			<form:radiobutton path="top" value="0" ></form:radiobutton>不置顶
			<font style="float:right;" size="2" color="red">&nbsp;*</font>
		</td>
	</tr>
</table>
</form:form>
<!-- 附件上传 start -->
<center>
<form id="fileUploadForm" ENCTYPE="multipart/form-data" action="${contextPath }/cms/content/fileUpload" method="post">
上传文件：<input type="file" value="上传" id="file" name="file"/>
		<input id="uploadFileButton" type="button" value="上传" />
		<img id="loading" src="${contextPath }/images/loading.gif" style="display:none;" />
		<font id="fileUploadFont" color="red">上传成功</font>
</form>
</center><br/>
<!-- 附件上传 end -->
<div style="text-align:center">
	<!-- <a class="ui-state-default ui-corner-all" id="previewButton" href="javascript:void(0)">预览</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
	<a class="ui-state-default ui-corner-all" id="addContentButton" href="javascript:void(0)">确定</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a class="ui-state-default ui-corner-all" id="canle" href="javascript:void(0)">取消</a>
</div>
</center>

<!-- ckeditor 图片上传 -->
<center>
<div id="ckeditor-upload-images" class="flow-div flow-menu" style="display:none;">
	<div style="float:right; position:absolute; width:260px; height:100px; top:190px; left:265px; right:18px; border:2px solid #03c; background-color:#F2F2F2;">
		<form id="ckeditor-fileUploadForm" ENCTYPE="multipart/form-data" action="${contextPath }/cms/content/fileUpload" method="post">
			上传图片：<input type="file" value="上传" id="ckeditor-file" name="ckeditor-file"/><br/>
			<input type="radio" id="image-size" name="image-size" value="original" checked/>原始大小
			<input type="radio" id="image-size" name="image-size" value="small" />缩放<br/>
			<input id="ckeditor-uploadFileButton" type="button" value="上传" />
			<input id="ckeditor-uploadFileButton-cancel" type="button" value="取消" />
		</form>
	</div>
	<div style="clear:both;"></div>
</div>
<center>
<script type="text/javascript">

//ckeditor图片上传
function ckeditorImageUpload(){
	$('#ckeditor-upload-images').show();
}

$(function(){
	var ckeditor = CKEDITOR.replace( 'contentText' );
	$("#fileUploadFont").hide();
	$("#picPreviewUploadFont").hide();
	
	//预览
	$("#previewButton").click(function(){
		var url = "${contextPath }/cms/content/preview/title/" + $("#title").val() + "/contentText/" + $("#contentText").val();
		window.open(url);
	});
	
	//添加
	$("#addContentButton").click(function(){
		async = true;
		// 表单验证
		if($.trim($("#title").val()) == ""){
			alert("标题不能为空");
			return 0;
		}else if($.trim($("#brief").val()) == ""){
			alert("摘要不能为空");
			return 0;
		}else if(ckeditor.getData() == ""){
			alert("内容不能为空");
			return 0;
		}
		var url = "${contextPath }/cms/content/add";
		$("#addContentForm").attr("action", url);
		$("#addContentForm").submit();
	});
	
	//文件上传
	$("#uploadFileButton").click(function(){
		$("#loading")
		.ajaxStart(function(){
			$(this).show();
		})
		.ajaxComplete(function(){
			$(this).hide();
		});
		
		var url = "${contextPath }/cms/content/fileUpload";
		//ajax文件上传
		$.ajaxFileUpload({
			url:url,//服务器端程序
			secureuri:false,
			fileElementId:'file',//input框的ID
			dataType: 'json',//返回数据类型
			success: function (data, status){//上传成功
			  	$("#fileUploadId").val(data.id);
			  	$("#fileUploadFont").show();
			},
			error: function (data, status, e){
				alert(e);
			}
		});
	});
	
	//标题图片上传
	$("#picPreviewFileButton").click(function(){
		if(checkfile("picPreviewFile") != true){
			return 0;
		}
		$("#picLoading")
		.ajaxStart(function(){
			$(this).show();
		})
		.ajaxComplete(function(){
			$(this).hide();
		});
		
		var url = "${contextPath }/cms/content/picPreviewUpload";
		//ajax文件上传
		$.ajaxFileUpload({
			url:url,//服务器端程序
			secureuri:false,
			fileElementId:'picPreviewFile',//input框的ID
			dataType: 'json',//返回数据类型
			success: function (data, status){//上传成功
			  	$("#image").val(data.id);
			  	$("#picPreviewImg").attr("src", "${contextPath}" + data.imagePath);
			  	$("#picPreviewUploadFont").show();
			},
			error: function (data, status, e){
				alert(e);
			}
		});
	});
	
	//ckeditor图片上传
	$("#ckeditor-uploadFileButton").click(function(){
		if(checkfile("ckeditor-file") != true){
			return 0;
		}
		var url = "${contextPath }/cms/content/uploadImageUrl/-1";
		var id;
		var imageUrl;
		//ajax文件上传
		$.ajaxFileUpload({
			url:url,//服务器端程序
			secureuri:false,
			fileElementId:'ckeditor-file',//input框的ID
			dataType: 'json',//返回数据类型
			success: function (data, status){//上传成功
				var size = $('input[name=image-size]:checked').val();
				var originalData = ckeditor.getData();
				id = data.id;
				imageUrl = "${contextPath }" + data.url;
				
				if(size == "original"){
					ckeditor.setData(originalData + "<div align='center'><img src='" + imageUrl + "' /></div>");
				}else if(size == "small"){
					ckeditor.setData(originalData + "<div align='center'><img src='" + imageUrl + "' style='width: 220px; height: 220px;' /></div>");
				}
				
				$('#ckeditor-upload-images').hide();
			},
			error: function (data, status, e){
				alert(e);
			}
		});
	});
	
	$('#ckeditor-uploadFileButton-cancel').click(function(){
		$('#ckeditor-upload-images').hide();
	});
	
	$("#canle").click(function(){
		window.close();
	});
	
	$(window).unload(function(){
		window.close();
	});
});
</script>
